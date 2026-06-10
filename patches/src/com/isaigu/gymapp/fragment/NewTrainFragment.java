package com.isaigu.gymapp.fragment;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.isaigu.gymapp.BaseActivity;
import com.isaigu.gymapp.R;
import com.isaigu.gymapp.bean.TrainUserProgramDataWrapper;
import com.isaigu.gymapp.bean.UserData;
import com.isaigu.gymapp.databinding.NewTrainFragmentLayoutBinding;
import com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment;
import com.isaigu.gymapp.mgr.DataMgr;
import com.isaigu.gymapp.train.TrainAdapter;
import com.isaigu.gymapp.train.TrainItemManager;
import com.isaigu.gymapp.train.ble.BleDeviceManager;
import com.isaigu.gymapp.train.events.ApplicationExitEvent;
import com.isaigu.gymapp.train.events.DeviceDisConnectedEvent;
import com.isaigu.gymapp.train.events.TrainUserSelectedEvent;
import com.isaigu.gymapp.train.listener.OnTrainListListener;
import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.train.utils.OperationUtil;
import com.isaigu.gymapp.train.utils.TrainRecordManager;
import com.yanzhenjie.recyclerview.swipe.SwipeMenu;
import com.yanzhenjie.recyclerview.swipe.SwipeMenuBridge;
import com.yanzhenjie.recyclerview.swipe.SwipeMenuCreator;
import com.yanzhenjie.recyclerview.swipe.SwipeMenuItem;
import com.yanzhenjie.recyclerview.swipe.SwipeMenuItemClickListener;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /workspace/classes2.dex */
public class NewTrainFragment extends Fragment {
    private static final String ARG_PARAM1 = "param1";
    private TrainAdapter adapter;
    NewTrainFragmentLayoutBinding binding;
    private String mParam1;
    TrainItemManager manager;
    private boolean[] partsControl;
    private boolean[] partsDisabled;
    private boolean selecting;
    private boolean allStart = false;
    RecyclerView.SimpleOnItemTouchListener itemTouchListener = new RecyclerView.SimpleOnItemTouchListener() { // from class: com.isaigu.gymapp.fragment.NewTrainFragment.1
        @Override // android.support.v7.widget.RecyclerView.SimpleOnItemTouchListener, android.support.v7.widget.RecyclerView.OnItemTouchListener
        public boolean onInterceptTouchEvent(RecyclerView rv, MotionEvent e) {
            if ((e.getAction() == 0 || e.getAction() == 2) && !NewTrainFragment.this.selecting) {
                NewTrainFragment.this.selecting = true;
                NewTrainFragment.this.adapter.notifyDataSetChanged();
                return false;
            }
            return false;
        }

        @Override // android.support.v7.widget.RecyclerView.SimpleOnItemTouchListener, android.support.v7.widget.RecyclerView.OnItemTouchListener
        public void onTouchEvent(RecyclerView rv, MotionEvent e) {
            if ((e.getAction() == 1 || e.getAction() == 3) && NewTrainFragment.this.selecting) {
                NewTrainFragment.this.selecting = false;
                NewTrainFragment.this.adapter.notifyDataSetChanged();
            }
        }

        @Override // android.support.v7.widget.RecyclerView.SimpleOnItemTouchListener, android.support.v7.widget.RecyclerView.OnItemTouchListener
        public void onRequestDisallowInterceptTouchEvent(boolean disallowIntercept) {
        }
    };
    OnTrainListListener trainListListener = new OnTrainListListener() { // from class: com.isaigu.gymapp.fragment.NewTrainFragment.2
        @Override // com.isaigu.gymapp.train.listener.OnTrainListListener
        public void onEmptyItemClick(TrainItem item) {
            NewTrainFragment.this.getBaseActivity().showDialogFragment(new NewUserProgramDeviceConnectDialogFragment());
        }

        @Override // com.isaigu.gymapp.train.listener.OnTrainListListener
        public void onItemClick(TrainItem item) {
            if (NewTrainFragment.this.selecting) {
                item.setSelected(!item.isSelected());
                NewTrainFragment.this.adapter.notifyDataSetChanged();
            }
        }

        @Override // com.isaigu.gymapp.train.listener.OnTrainListListener
        public void onDeleteButtonClick(TrainItem item) {
            NewTrainFragment.this.adapter.notifyDataSetChanged();
        }

        @Override // com.isaigu.gymapp.train.listener.OnTrainListListener
        public void onItemChange(TrainItem item) {
            NewTrainFragment.this.adapter.notifyDataSetChanged();
        }
    };
    private SwipeMenuCreator swipeMenuCreator = new SwipeMenuCreator() { // from class: com.isaigu.gymapp.fragment.NewTrainFragment.3
        @Override // com.yanzhenjie.recyclerview.swipe.SwipeMenuCreator
        public void onCreateMenu(SwipeMenu swipeLeftMenu, SwipeMenu swipeRightMenu, int viewType) {
            SwipeMenuItem deleteItem = new SwipeMenuItem(NewTrainFragment.this.getBaseActivity()).setBackgroundColor(NewTrainFragment.this.getBaseActivity().getColor(R.color.red)).setText(NewTrainFragment.this.getString(R.string.delete)).setTextColor(-1).setTextSize(16).setWidth(100).setHeight(-1);
            swipeRightMenu.addMenuItem(deleteItem);
        }
    };
    private SwipeMenuItemClickListener mMenuItemClickListener = new SwipeMenuItemClickListener() { // from class: com.isaigu.gymapp.fragment.NewTrainFragment.4
        @Override // com.yanzhenjie.recyclerview.swipe.SwipeMenuItemClickListener
        public void onItemClick(SwipeMenuBridge menuBridge) {
            menuBridge.closeMenu();
            int position = menuBridge.getAdapterPosition();
            TrainItem item = NewTrainFragment.this.manager.getItemList().get(position);
            NewTrainFragment.this.manager.removeTrainItem(item);
            NewTrainFragment.this.adapter.notifyDataSetChanged();
            DataMgr.getInstance().removeTrainingUser(item.data.macAddress);
        }
    };
    TrainRecordManager recordManager = new TrainRecordManager(getBaseActivity());

    public NewTrainFragment() {
        boolean[] zArr = new boolean[10];
        this.partsDisabled = zArr;
        boolean[] zArr2 = new boolean[10];
        this.partsControl = zArr2;
        this.manager = new TrainItemManager(zArr, zArr2);
    }

    public static NewTrainFragment newInstance(String param1) {
        NewTrainFragment fragment = new NewTrainFragment();
        Bundle args = new Bundle();
        args.putString(ARG_PARAM1, param1);
        fragment.setArguments(args);
        return fragment;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onDeviceConnected(TrainUserSelectedEvent event) {
        event.getTrainItem().setRecordManager(this.recordManager);
        this.manager.addTrainItem(event.getTrainItem());
        this.adapter.notifyDataSetChanged();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onDeviceDisConnected(DeviceDisConnectedEvent event) {
        this.manager.disConnected(event.getDevice().getMac());
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (getArguments() != null) {
            this.mParam1 = getArguments().getString(ARG_PARAM1);
        }
        BleDeviceManager.init(getActivity().getApplication());
        EventBus.getDefault().register(this);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        NewTrainFragmentLayoutBinding inflate = NewTrainFragmentLayoutBinding.inflate(inflater);
        this.binding = inflate;
        View view = inflate.getRoot();
        this.binding.allStartPause.setOnClickListener(new View.OnClickListener() { // from class: com.isaigu.gymapp.fragment.-$$Lambda$NewTrainFragment$OQWilcYq6RdiTla_3_sr4TTqpsU
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                NewTrainFragment.this.lambda$onCreateView$0$NewTrainFragment(view2);
            }
        });
        this.binding.allStop.setOnClickListener(new View.OnClickListener() { // from class: com.isaigu.gymapp.fragment.-$$Lambda$NewTrainFragment$J1UXeZLrJ3RsU-3xcWYfrmcMKMU
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                NewTrainFragment.this.lambda$onCreateView$1$NewTrainFragment(view2);
            }
        });
        this.binding.allAdd.setOnClickListener(new View.OnClickListener() { // from class: com.isaigu.gymapp.fragment.-$$Lambda$NewTrainFragment$UPI3iawMxk-F4wkSj1YULA0mNNU
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                NewTrainFragment.this.lambda$onCreateView$2$NewTrainFragment(view2);
            }
        });
        this.binding.allminus.setOnClickListener(new View.OnClickListener() { // from class: com.isaigu.gymapp.fragment.-$$Lambda$NewTrainFragment$p9DKAYhY7Mu9CyUdje4XJq_UkJg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                NewTrainFragment.this.lambda$onCreateView$3$NewTrainFragment(view2);
            }
        });
        this.binding.allPerson.setOnClickListener(new View.OnClickListener() { // from class: com.isaigu.gymapp.fragment.-$$Lambda$NewTrainFragment$TmwMnAo_bWUIZz7SvT7b3k1bLqM
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                NewTrainFragment.this.lambda$onCreateView$4$NewTrainFragment(view2);
            }
        });
        this.binding.buwei1.setOnClickListener(new View.OnClickListener() { // from class: com.isaigu.gymapp.fragment.-$$Lambda$NewTrainFragment$l3gn-YOZdKR1b3Ga5i73kWOxLX0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                NewTrainFragment.this.lambda$onCreateView$5$NewTrainFragment(view2);
            }
        });
        this.binding.buwei2.setOnClickListener(new View.OnClickListener() { // from class: com.isaigu.gymapp.fragment.-$$Lambda$NewTrainFragment$fYDVVutn7gmb6wZ118UhJ0MeTOY
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                NewTrainFragment.this.lambda$onCreateView$6$NewTrainFragment(view2);
            }
        });
        this.binding.buwei3.setOnClickListener(new View.OnClickListener() { // from class: com.isaigu.gymapp.fragment.-$$Lambda$NewTrainFragment$zU4exJ7kQkUHtZqoo_Up0GMysj0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                NewTrainFragment.this.lambda$onCreateView$7$NewTrainFragment(view2);
            }
        });
        this.binding.buwei4.setOnClickListener(new View.OnClickListener() { // from class: com.isaigu.gymapp.fragment.-$$Lambda$NewTrainFragment$wxvyfcsnAoZug_-4M7b5ln37z5E
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                NewTrainFragment.this.lambda$onCreateView$8$NewTrainFragment(view2);
            }
        });
        this.binding.buwei5.setOnClickListener(new View.OnClickListener() { // from class: com.isaigu.gymapp.fragment.-$$Lambda$NewTrainFragment$DA9uUpaR3U_RQHvq_4NMqAvUA5I
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                NewTrainFragment.this.lambda$onCreateView$9$NewTrainFragment(view2);
            }
        });
        this.binding.buwei6.setOnClickListener(new View.OnClickListener() { // from class: com.isaigu.gymapp.fragment.-$$Lambda$NewTrainFragment$dKezIF8dUyPpB0rmli8RxIyk_6g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                NewTrainFragment.this.lambda$onCreateView$10$NewTrainFragment(view2);
            }
        });
        this.binding.buwei7.setOnClickListener(new View.OnClickListener() { // from class: com.isaigu.gymapp.fragment.-$$Lambda$NewTrainFragment$hsgXDsMjGwhJX92Y-TVSmR3mBv4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                NewTrainFragment.this.lambda$onCreateView$11$NewTrainFragment(view2);
            }
        });
        this.binding.buwei8.setOnClickListener(new View.OnClickListener() { // from class: com.isaigu.gymapp.fragment.-$$Lambda$NewTrainFragment$qZFbtIkPFRuDnd4U_f-yj1zMZpM
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                NewTrainFragment.this.lambda$onCreateView$12$NewTrainFragment(view2);
            }
        });
        this.binding.buwei9.setOnClickListener(new View.OnClickListener() { // from class: com.isaigu.gymapp.fragment.-$$Lambda$NewTrainFragment$VPgT6odXYEwF5Cz7xRUXHVUwP5s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                NewTrainFragment.this.lambda$onCreateView$13$NewTrainFragment(view2);
            }
        });
        this.binding.buwei10.setOnClickListener(new View.OnClickListener() { // from class: com.isaigu.gymapp.fragment.-$$Lambda$NewTrainFragment$VM_GWjD7nE-VZhM1A7Ax35wko1w
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                NewTrainFragment.this.lambda$onCreateView$14$NewTrainFragment(view2);
            }
        });
        this.binding.recyclerView.setSwipeMenuCreator(this.swipeMenuCreator);
        this.binding.recyclerView.setSwipeMenuItemClickListener(this.mMenuItemClickListener);
        this.adapter = new TrainAdapter(this.manager.getItemList(), this, this.trainListListener);
        this.binding.recyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 1, false));
        this.binding.recyclerView.setAdapter(this.adapter);
        this.binding.recyclerView.addOnItemTouchListener(this.itemTouchListener);
        startScan();
        OperationUtil.requestPermission(getBaseActivity());
        return view;
    }

    public /* synthetic */ void lambda$onCreateView$0$NewTrainFragment(View l) {
        startOrStopAll();
    }

    public /* synthetic */ void lambda$onCreateView$1$NewTrainFragment(View l) {
        this.manager.resetAll();
        this.allStart = false;
        this.binding.allStartPause.setBackgroundResource(R.mipmap.start);
    }

    public /* synthetic */ void lambda$onCreateView$2$NewTrainFragment(View l) {
        this.manager.addAllPartValue(UserData.getInstance().currentIncreaseStep);
    }

    public /* synthetic */ void lambda$onCreateView$3$NewTrainFragment(View l) {
        this.manager.addAllPartValue(-UserData.getInstance().currentDecreaseStep);
    }

    public /* synthetic */ void lambda$onCreateView$4$NewTrainFragment(View l) {
        settingAllUser();
    }

    public /* synthetic */ void lambda$onCreateView$5$NewTrainFragment(View l) {
        changePartControl(0);
    }

    public /* synthetic */ void lambda$onCreateView$6$NewTrainFragment(View l) {
        changePartControl(1);
    }

    public /* synthetic */ void lambda$onCreateView$7$NewTrainFragment(View l) {
        changePartControl(2);
    }

    public /* synthetic */ void lambda$onCreateView$8$NewTrainFragment(View l) {
        changePartControl(3);
    }

    public /* synthetic */ void lambda$onCreateView$9$NewTrainFragment(View l) {
        changePartControl(4);
    }

    public /* synthetic */ void lambda$onCreateView$10$NewTrainFragment(View l) {
        changePartControl(5);
    }

    public /* synthetic */ void lambda$onCreateView$11$NewTrainFragment(View l) {
        changePartControl(6);
    }

    public /* synthetic */ void lambda$onCreateView$12$NewTrainFragment(View l) {
        changePartControl(7);
    }

    public /* synthetic */ void lambda$onCreateView$13$NewTrainFragment(View l) {
        changePartControl(8);
    }

    public /* synthetic */ void lambda$onCreateView$14$NewTrainFragment(View l) {
        changePartControl(9);
    }

    private void changePartControl(int index) {
        this.partsControl[index] = !r0[index];
        this.adapter.notifyDataSetChanged();
    }

    private void changePartDisabled(int index) {
        this.partsDisabled[index] = !r0[index];
        this.adapter.notifyDataSetChanged();
    }

    private void settingAllUser() {
        final ArrayList<TrainUserProgramDataWrapper> wrappers = new ArrayList<>();
        final List<TrainItem> items = new ArrayList<>();
        this.manager.notEmptyItems().forEach(new Consumer() { // from class: com.isaigu.gymapp.fragment.-$$Lambda$NewTrainFragment$KMZi3lztyuzd4mudgGf1YCOcs4U
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                NewTrainFragment.lambda$settingAllUser$15(wrappers, items, (TrainItem) obj);
            }
        });
        OperationUtil.settingAllUser(getBaseActivity(), wrappers, new Runnable() { // from class: com.isaigu.gymapp.fragment.-$$Lambda$NewTrainFragment$4IA_AlIkH-9P4P6cXtPY26RerNE
            @Override // java.lang.Runnable
            public final void run() {
                items.stream().forEach(new Consumer() { // from class: com.isaigu.gymapp.fragment.-$$Lambda$NewTrainFragment$wxLu4AU3T57mrv1ByelxDPKUDEk
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        r1.setTrainProgram(((TrainItem) obj).getTrainProgram());
                    }
                });
            }
        });
    }

    static /* synthetic */ void lambda$settingAllUser$15(ArrayList wrappers, List items, TrainItem i) {
        wrappers.add(i.data);
        items.add(i);
    }

    public BaseActivity getBaseActivity() {
        return (BaseActivity) getActivity();
    }

    public void startScan() {
    }

    @Override // android.support.v4.app.Fragment
    public void onDetach() {
        super.onDetach();
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void applicationExit(ApplicationExitEvent event) {
        this.manager.closeAll();
    }

    public void startOrStopAll() {
        this.allStart = !this.allStart;
        this.binding.allStartPause.setBackgroundResource(this.allStart ? R.mipmap.stop2 : R.mipmap.start);
        if (this.allStart) {
            this.manager.startAll();
        } else {
            this.manager.stopAll();
        }
    }
}
