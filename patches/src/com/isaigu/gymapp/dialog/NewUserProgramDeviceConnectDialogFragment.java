package com.isaigu.gymapp.dialog;

import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.PointerIconCompat;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.bumptech.glide.Glide;
import com.isaigu.gymapp.BaseActivity;
import com.isaigu.gymapp.BaseFullScreenDialogFragment;
import com.isaigu.gymapp.bean.DeviceBean;
import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.bean.TrainProgram;
import com.isaigu.gymapp.bean.TrainUser;
import com.isaigu.gymapp.bean.TrainUserProgramDataWrapper;
import com.isaigu.gymapp.bean.UserData;
import com.isaigu.gymapp.bean.vo.ResponseData;
import com.isaigu.gymapp.ble.BleInterface;
import com.isaigu.gymapp.dialog.EditUserProgramDataDialog;
import com.isaigu.gymapp.message.DataBundle;
import com.isaigu.gymapp.message.MessageDispatcher;
import com.isaigu.gymapp.mgr.ApiMgr;
import com.isaigu.gymapp.mgr.BleMgr;
import com.isaigu.gymapp.mgr.Constants;
import com.isaigu.gymapp.mgr.DataMgr;
import com.isaigu.gymapp.mgr.EventMessage;
import com.isaigu.gymapp.train.ble.BleDeviceManager;
import com.isaigu.gymapp.train.events.DeviceConnectFailEvent;
import com.isaigu.gymapp.train.events.DeviceConnectedEvent;
import com.isaigu.gymapp.train.events.TrainUserSelectedEvent;
import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.utils.BeanUtils;
import com.isaigu.gymapp.utils.FileUtils;
import com.isaigu.gymapp.utils.Logger;
import com.isaigu.gymapp.utils.NetworkUtils;
import com.isaigu.gymapp.utils.OKHttpUtils;
import com.isaigu.gymapp.utils.TimerUtils;
import com.isaigu.gymapp.widget.GlideCircleTransform;
import com.isaigu.gymapp.widget.MyButton;
import com.isaigu.gymapp.widget.NoDoubleClickListener;
import com.isaigu.gymapp.widget.SpacesItemDecoration;
import com.isaigu.gymapp.R;
import com.yanzhenjie.recyclerview.swipe.SwipeMenu;
import com.yanzhenjie.recyclerview.swipe.SwipeMenuBridge;
import com.yanzhenjie.recyclerview.swipe.SwipeMenuCreator;
import com.yanzhenjie.recyclerview.swipe.SwipeMenuItem;
import com.yanzhenjie.recyclerview.swipe.SwipeMenuItemClickListener;
import com.yanzhenjie.recyclerview.swipe.SwipeMenuRecyclerView;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.concurrent.ConcurrentHashMap;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: classes2.dex */
public class NewUserProgramDeviceConnectDialogFragment extends BaseFullScreenDialogFragment {
    private Button addProgram;
    private boolean addTrainUser;
    private TextView agevalue;
    private MyButton back;
    private String connectingAddress;
    private Timer delayTimer1;
    private Timer delayTimer2;
    private Timer delayTimer3;
    private Timer delayTimer4;
    private DeviceAdapter deviceAdapter;
    private List<DeviceBean> deviceBeans;
    private RecyclerView deviceListView;
    private TextView devicename;
    private TextView devicevalue;
    private Button editbutton;
    private TextView heightvalue;
    private ImageView logoImage;
    private Button ok;
    private ProgramAdapter programAdapter;
    private List<TrainProgram> programDatas;
    private SwipeMenuRecyclerView programListView;
    private TextView programname;
    private TextView programvalue;
    private EditText searchdeviceEdittext;
    private EditText searchprogramEdittext;
    private EditText searchuserEdittext;
    private TrainProgram selectedDataBean;
    private DeviceBean selectedDeviceBean;
    private TrainUser selectedUser;
    private List<TrainUser> trainUsers;
    private UserAdapter userAdapter;
    private RecyclerView userListView;
    private ImageView usericon;
    private TextView username;
    private TextView weightvalue;
    private TrainUserProgramDataWrapper wrapper;
    private SwipeMenuCreator swipeMenuCreator = new SwipeMenuCreator() { // from class: com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment.2
        @Override // com.yanzhenjie.recyclerview.swipe.SwipeMenuCreator
        public void onCreateMenu(SwipeMenu swipeLeftMenu, SwipeMenu swipeRightMenu, int viewType) {
            SwipeMenuItem deleteItem = new SwipeMenuItem(NewUserProgramDeviceConnectDialogFragment.this.getParentActivity()).setBackgroundColor(NewUserProgramDeviceConnectDialogFragment.this.getResources().getColor(R.color.red)).setText(NewUserProgramDeviceConnectDialogFragment.this.getString(R.string.delete)).setTextColor(-1).setTextSize(16).setWidth(100).setHeight(-1);
            swipeRightMenu.addMenuItem(deleteItem);
        }
    };
    private SwipeMenuItemClickListener mMenuItemClickListener = new SwipeMenuItemClickListener() { // from class: com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment.3
        @Override // com.yanzhenjie.recyclerview.swipe.SwipeMenuItemClickListener
        public void onItemClick(final SwipeMenuBridge menuBridge) {
            menuBridge.closeMenu();
            NewUserProgramDeviceConnectDialogFragment.this.getParentActivity().showMessageDialog(NewUserProgramDeviceConnectDialogFragment.this.getString(R.string.suredeletetrainprogram), new Runnable() { // from class: com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment.3.1
                @Override // java.lang.Runnable
                public void run() {
                    int position = menuBridge.getAdapterPosition();
                    TrainProgram trainProgram = DataMgr.getInstance().trainData.remove(position);
                    if (NetworkUtils.isNetworkConnected(NewUserProgramDeviceConnectDialogFragment.this.getParentActivity())) {
                        ApiMgr.deleteProgramTrainData(DataMgr.getInstance().loginUser.id, trainProgram.id.longValue(), new OKHttpUtils.HttpResponseCallback<ResponseData<TrainProgram>>() { // from class: com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment.3.1.1
                            @Override // com.isaigu.gymapp.utils.OKHttpUtils.HttpResponseCallback
                            public void httpResponse(boolean httpSuccess, String message, ResponseData<TrainProgram> result) {
                                if (!httpSuccess || result == null) {
                                    return;
                                }
                                result.getCode();
                            }
                        });
                    } else if (trainProgram.id.longValue() == 0) {
                        List<TrainProgram> trainPrograms = (List) FileUtils.getDataList(Constants.file_name_offline_train_program_data, TrainProgram.class);
                        for (int i = trainPrograms.size() - 1; i >= 0; i--) {
                            if (trainPrograms.get(i).name != null && trainPrograms.get(i).name.equals(trainProgram.name)) {
                                trainPrograms.remove(i);
                            }
                        }
                        FileUtils.saveListData(Constants.file_name_offline_train_program_data, TrainProgram.class, trainPrograms);
                    } else {
                        List<TrainProgram> trainPrograms2 = (List) FileUtils.getDataList(Constants.file_name_offline_delete_train_program_data, TrainProgram.class);
                        trainPrograms2.add(trainProgram);
                        FileUtils.saveListData(Constants.file_name_offline_delete_train_program_data, TrainProgram.class, trainPrograms2);
                    }
                    FileUtils.saveListData(Constants.file_name_train_data, TrainProgram.class, DataMgr.getInstance().trainData);
                    NewUserProgramDeviceConnectDialogFragment.this.programDatas = BeanUtils.cloneArray(DataMgr.getInstance().trainData, TrainProgram.class);
                    NewUserProgramDeviceConnectDialogFragment.this.programAdapter.updateDataBean(NewUserProgramDeviceConnectDialogFragment.this.programDatas);
                }
            });
        }
    };
    private int reconnectCount = 1;

    @Override // com.isaigu.gymapp.BaseDialogFragment
    public int getViewIid() {
        return R.layout.user_device_program_connect_layout;
    }

    @Override // com.isaigu.gymapp.BaseDialogFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = super.onCreateView(inflater, container, savedInstanceState);
        initView(view);
        this.trainUsers = BeanUtils.cloneArray(DataMgr.getInstance().trainUsers, TrainUser.class);
        this.programDatas = BeanUtils.cloneArray(DataMgr.getInstance().trainData, TrainProgram.class);
        this.deviceBeans = BeanUtils.cloneArray(DataMgr.getInstance().deviceBeanList, DeviceBean.class);
        initData();
        initListener();
        if (getArguments() != null) {
            boolean z = getArguments().getBoolean("add");
            this.addTrainUser = z;
            if (!z) {
                this.wrapper = (TrainUserProgramDataWrapper) getArguments().getSerializable("data");
            }
        }
        if (!this.addTrainUser && this.wrapper != null) {
            int selectUserIndex = 0;
            int selectProgramIndex = 0;
            int selectDeviceIndex = 0;
            int i = 0;
            while (true) {
                if (i >= this.trainUsers.size()) {
                    break;
                }
                if (this.trainUsers.get(i).id != this.wrapper.trainUser.id) {
                    i++;
                } else {
                    selectUserIndex = i;
                    break;
                }
            }
            int i2 = 0;
            while (true) {
                if (i2 >= this.programDatas.size()) {
                    break;
                }
                if (!this.programDatas.get(i2).name.equals(this.wrapper.trainProgram.name)) {
                    i2++;
                } else {
                    selectProgramIndex = i2;
                    break;
                }
            }
            int i3 = 0;
            while (true) {
                if (i3 >= this.deviceBeans.size()) {
                    break;
                }
                if (!this.deviceBeans.get(i3).macAddress.equals(this.wrapper.macAddress)) {
                    i3++;
                } else {
                    selectDeviceIndex = i3;
                    break;
                }
            }
            this.userAdapter.setUserSelected(selectUserIndex, true);
            this.programAdapter.setTrainProgramSelected(selectProgramIndex, true);
            this.deviceAdapter.setDeviceSelected(selectDeviceIndex, true);
        }
        MessageDispatcher.attachEventListener(EventMessage.event_device_connected, this);
        MessageDispatcher.attachEventListener(EventMessage.event_device_disconnected, this);
        MessageDispatcher.attachEventListener(EventMessage.event_discover_device, this);
        MessageDispatcher.attachEventListener(EventMessage.event_discover_device_update, this);
        MessageDispatcher.attachEventListener((short) 105, this);
        MessageDispatcher.attachEventListener((short) 106, this);
        startScan();
        EventBus eventBus = EventBus.getDefault();
        if (!eventBus.isRegistered(this)) {
            eventBus.register(this);
        }
        return view;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startScan() {
        BaseActivity parentActivity = getParentActivity();
        if (parentActivity != null) {
            parentActivity.runDelay(new Runnable() { // from class: com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment.1
                @Override // java.lang.Runnable
                public void run() {
                    if (NewUserProgramDeviceConnectDialogFragment.this.isAdded() && !BleMgr.getController().startScan() && NewUserProgramDeviceConnectDialogFragment.this.getParentActivity() != null) {
                        NewUserProgramDeviceConnectDialogFragment.this.startScan();
                    }
                }
            }, 500L);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onDeviceConnected(DeviceConnectedEvent event) {
        Log.e("www", "连接回调");
        TrainUserProgramDataWrapper wrapper = new TrainUserProgramDataWrapper();
        wrapper.trainProgram = this.selectedDataBean;
        wrapper.trainUser = this.selectedUser;
        wrapper.macAddress = event.getDevice().getMac();
        wrapper.deviceName = this.selectedDeviceBean.name;
        wrapper.connected = true;
        TrainItem trainItem = new TrainItem(false);
        trainItem.setDevice(event.getDevice());
        trainItem.data = wrapper;
        EventBus.getDefault().post(new TrainUserSelectedEvent(trainItem));
        DataMgr.getInstance().addTrainingUser(wrapper);
        dismiss();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onDeviceConnected(DeviceConnectFailEvent event) {
        BaseActivity activity = getParentActivity();
        if (activity != null) {
            activity.showTips(getString(R.string.bluetooth_connect_failed));
        }
        MessageDispatcher.dispatchEventMessage((short) 104);
    }

    @Override // android.support.v4.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialog) {
        super.onDismiss(dialog);
        EventBus eventBus = EventBus.getDefault();
        if (eventBus.isRegistered(this)) {
            eventBus.unregister(this);
        }
    }

    private void initView(View view) {
        this.editbutton = (Button) view.findViewById(R.id.editprogramdata);
        this.addProgram = (Button) view.findViewById(R.id.addprogram);
        this.back = (MyButton) view.findViewById(R.id.back);
        this.userListView = (RecyclerView) view.findViewById(R.id.userlistview);
        this.programListView = (SwipeMenuRecyclerView) view.findViewById(R.id.programlistview);
        this.deviceListView = (RecyclerView) view.findViewById(R.id.devicelistview);
        this.searchuserEdittext = (EditText) view.findViewById(R.id.searchuserEdittext);
        this.searchprogramEdittext = (EditText) view.findViewById(R.id.searchprogramEdittext);
        this.searchdeviceEdittext = (EditText) view.findViewById(R.id.searchdeviceEdittext);
        this.ok = (Button) view.findViewById(R.id.ok);
        this.usericon = (ImageView) view.findViewById(R.id.usericon);
        this.username = (TextView) view.findViewById(R.id.username);
        this.agevalue = (TextView) view.findViewById(R.id.agevalue);
        this.heightvalue = (TextView) view.findViewById(R.id.heightvalue);
        this.weightvalue = (TextView) view.findViewById(R.id.heightvalue);
        this.weightvalue = (TextView) view.findViewById(R.id.weightvalue);
        this.programname = (TextView) view.findViewById(R.id.programname);
        this.programvalue = (TextView) view.findViewById(R.id.programvalue);
        this.devicename = (TextView) view.findViewById(R.id.devicename);
        this.devicevalue = (TextView) view.findViewById(R.id.devicevalue);
        ImageView logoImage = (ImageView) view.findViewById(R.id.logoImage);
        if (logoImage != null && !TextUtils.isEmpty(UserData.getInstance().logoPath) && getContext() != null) {
            Glide.with(getContext()).load(UserData.getInstance().logoPath).into(logoImage);
        }
    }

    private void initData() {
        if (getParentActivity() != null) {
            this.userListView.setLayoutManager(new LinearLayoutManager(getParentActivity()));
            if (this.userListView.getRecycledViewPool() != null) {
                this.userListView.getRecycledViewPool().setMaxRecycledViews(0, 100);
            }
            this.userListView.addItemDecoration(new SpacesItemDecoration(4));
            UserAdapter userAdapter = new UserAdapter(this.trainUsers);
            this.userAdapter = userAdapter;
            this.userListView.setAdapter(userAdapter);
            this.programListView.setSwipeMenuCreator(this.swipeMenuCreator);
            this.programListView.setSwipeMenuItemClickListener(this.mMenuItemClickListener);
            this.programListView.addItemDecoration(new SpacesItemDecoration(4));
            this.programListView.setLayoutManager(new LinearLayoutManager(getParentActivity()));
            if (this.programListView.getRecycledViewPool() != null) {
                this.programListView.getRecycledViewPool().setMaxRecycledViews(0, 100);
            }
            ProgramAdapter programAdapter = new ProgramAdapter(this.programDatas);
            this.programAdapter = programAdapter;
            this.programListView.setAdapter(programAdapter);
            this.deviceListView.setLayoutManager(new LinearLayoutManager(getParentActivity()));
            if (this.deviceListView.getRecycledViewPool() != null) {
                this.deviceListView.getRecycledViewPool().setMaxRecycledViews(0, 100);
            }
            this.deviceListView.addItemDecoration(new SpacesItemDecoration(4));
            DeviceAdapter deviceAdapter = new DeviceAdapter(this.deviceBeans);
            this.deviceAdapter = deviceAdapter;
            this.deviceListView.setAdapter(deviceAdapter);
            this.ok.setVisibility(4);
            if (this.wrapper != null) {
                this.ok.setVisibility(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment$4, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class AnonymousClass4 extends NoDoubleClickListener {
        AnonymousClass4() {
        }

        @Override // com.isaigu.gymapp.widget.NoDoubleClickListener
        public void onNoDoubleClick(View v) {
            MessageDispatcher.dispatchEventMessage(new DataBundle((short) 103, (Object) true));
            TimerUtils.stopTimer(NewUserProgramDeviceConnectDialogFragment.this.delayTimer1);
            NewUserProgramDeviceConnectDialogFragment.this.delayTimer1 = null;
            TimerUtils.stopTimer(NewUserProgramDeviceConnectDialogFragment.this.delayTimer2);
            NewUserProgramDeviceConnectDialogFragment.this.delayTimer2 = null;
            TimerUtils.stopTimer(NewUserProgramDeviceConnectDialogFragment.this.delayTimer3);
            NewUserProgramDeviceConnectDialogFragment.this.delayTimer3 = null;
            TimerUtils.stopTimer(NewUserProgramDeviceConnectDialogFragment.this.delayTimer4);
            NewUserProgramDeviceConnectDialogFragment.this.delayTimer4 = null;
            if (!NewUserProgramDeviceConnectDialogFragment.this.addTrainUser) {
                if (NewUserProgramDeviceConnectDialogFragment.this.selectedDeviceBean != null && !BleMgr.getController().isConnected(NewUserProgramDeviceConnectDialogFragment.this.selectedDeviceBean.macAddress)) {
                    TimerUtils.delayCallback(new Runnable() { // from class: com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment.4.2
                        @Override // java.lang.Runnable
                        public void run() {
                            NewUserProgramDeviceConnectDialogFragment.this.connectingAddress = NewUserProgramDeviceConnectDialogFragment.this.selectedDeviceBean.macAddress;
                            BleMgr.getController().stopScan();
                            NewUserProgramDeviceConnectDialogFragment.this.getParentActivity().runDelay(new Runnable() { // from class: com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment.4.2.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    BleDeviceManager.connect(NewUserProgramDeviceConnectDialogFragment.this.selectedDeviceBean.macAddress);
                                }
                            }, 100L);
                        }
                    }, 500L);
                    return;
                }
                return;
            }
            TimerUtils.delayCallback(new Runnable() { // from class: com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment.4.1
                @Override // java.lang.Runnable
                public void run() {
                    NewUserProgramDeviceConnectDialogFragment.this.connectingAddress = NewUserProgramDeviceConnectDialogFragment.this.selectedDeviceBean.macAddress;
                    BleMgr.getController().stopScan();
                    NewUserProgramDeviceConnectDialogFragment.this.getParentActivity().runDelay(new Runnable() { // from class: com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment.4.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            BleDeviceManager.connect(NewUserProgramDeviceConnectDialogFragment.this.selectedDeviceBean.macAddress);
                        }
                    }, 100L);
                }
            }, 500L);
        }
    }

    private void initListener() {
        if (this.ok == null || this.back == null) {
            return;
        }
        this.ok.setOnClickListener(new AnonymousClass4());
        this.back.setOnClickListener(new NoDoubleClickListener() { // from class: com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment.5
            @Override // com.isaigu.gymapp.widget.NoDoubleClickListener
            public void onNoDoubleClick(View v) {
                NewUserProgramDeviceConnectDialogFragment.this.getParentActivity().closeDialogFragment(NewUserProgramDeviceConnectDialogFragment.this);
            }
        });
        this.editbutton.setOnClickListener(new NoDoubleClickListener() { // from class: com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment.6
            @Override // com.isaigu.gymapp.widget.NoDoubleClickListener
            public void onNoDoubleClick(View v) {
                if (NewUserProgramDeviceConnectDialogFragment.this.selectedDataBean != null) {
                    EditUserProgramDataDialog dialog = new EditUserProgramDataDialog();
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("editProgram", true);
                    bundle.putSerializable("data", NewUserProgramDeviceConnectDialogFragment.this.selectedDataBean);
                    dialog.setArguments(bundle);
                    NewUserProgramDeviceConnectDialogFragment.this.getParentActivity().showDialogFragment(dialog);
                    dialog.setSaveProgramListener(new AnonymousClass1());
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment$6$1, reason: invalid class name */
            /* loaded from: classes2.dex */
            public class AnonymousClass1 implements EditUserProgramDataDialog.SaveProgramListener {
                AnonymousClass1() {
                }

                @Override // com.isaigu.gymapp.dialog.EditUserProgramDataDialog.SaveProgramListener
                public void onSaveProgram(TrainProgram trainProgram, List<Integer> checks) {
                    BaseActivity activity = NewUserProgramDeviceConnectDialogFragment.this.getParentActivity();
                    if (activity != null) {
                        activity.runOnUiThread(new Runnable() {
                            @Override
                            public void run() {
                                if (NewUserProgramDeviceConnectDialogFragment.this.programAdapter != null) {
                                    NewUserProgramDeviceConnectDialogFragment.this.programAdapter.updateDataBean(DataMgr.getInstance().trainData);
                                }
                            }
                        });
                    }
                }
            }
        });
        this.addProgram.setOnClickListener(new AnonymousClass7());
        this.searchuserEdittext.addTextChangedListener(new TextWatcher() { // from class: com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment.8
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i1, int i2) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i1, int i2) {
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                List arrayList;
                String text = editable.toString();
                if (TextUtils.isEmpty(text)) {
                    arrayList = NewUserProgramDeviceConnectDialogFragment.this.trainUsers;
                } else {
                    arrayList = new ArrayList();
                    for (int i = 0; i < NewUserProgramDeviceConnectDialogFragment.this.trainUsers.size(); i++) {
                        if (((TrainUser) NewUserProgramDeviceConnectDialogFragment.this.trainUsers.get(i)).name.contains(text)) {
                            arrayList.add(NewUserProgramDeviceConnectDialogFragment.this.trainUsers.get(i));
                        }
                    }
                }
                NewUserProgramDeviceConnectDialogFragment.this.userAdapter.updateData(arrayList);
            }
        });
        this.searchprogramEdittext.addTextChangedListener(new TextWatcher() { // from class: com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment.9
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i1, int i2) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i1, int i2) {
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                List arrayList;
                String text = editable.toString();
                if (TextUtils.isEmpty(text)) {
                    arrayList = NewUserProgramDeviceConnectDialogFragment.this.programDatas;
                } else {
                    arrayList = new ArrayList();
                    for (int i = 0; i < NewUserProgramDeviceConnectDialogFragment.this.programDatas.size(); i++) {
                        if (((TrainProgram) NewUserProgramDeviceConnectDialogFragment.this.programDatas.get(i)).name.contains(text)) {
                            arrayList.add(NewUserProgramDeviceConnectDialogFragment.this.programDatas.get(i));
                        }
                    }
                }
                NewUserProgramDeviceConnectDialogFragment.this.programAdapter.updateDataBean(arrayList);
            }
        });
        this.searchdeviceEdittext.addTextChangedListener(new TextWatcher() { // from class: com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment.10
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i1, int i2) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i1, int i2) {
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                List arrayList;
                String text = editable.toString();
                if (TextUtils.isEmpty(text)) {
                    arrayList = NewUserProgramDeviceConnectDialogFragment.this.deviceBeans;
                } else {
                    arrayList = new ArrayList();
                    for (int i = 0; i < NewUserProgramDeviceConnectDialogFragment.this.deviceBeans.size(); i++) {
                        if (((DeviceBean) NewUserProgramDeviceConnectDialogFragment.this.deviceBeans.get(i)).name.contains(text)) {
                            arrayList.add(NewUserProgramDeviceConnectDialogFragment.this.deviceBeans.get(i));
                        }
                    }
                }
                NewUserProgramDeviceConnectDialogFragment.this.deviceAdapter.updateData(arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment$7, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class AnonymousClass7 extends NoDoubleClickListener {
        AnonymousClass7() {
        }

        @Override // com.isaigu.gymapp.widget.NoDoubleClickListener
        public void onNoDoubleClick(View v) {
            EditUserProgramDataDialog dialog = new EditUserProgramDataDialog();
            dialog.setSaveProgramListener(new EditUserProgramDataDialog.SaveProgramListener() { // from class: com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment.7.1
                @Override // com.isaigu.gymapp.dialog.EditUserProgramDataDialog.SaveProgramListener
                public void onSaveProgram(TrainProgram trainProgram, List<Integer> checks) {
                    NewUserProgramDeviceConnectDialogFragment.this.getParentActivity().runOnUiThread(new Runnable() { // from class: com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment.7.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            NewUserProgramDeviceConnectDialogFragment.this.programAdapter.updateDataBean(DataMgr.getInstance().trainData);
                        }
                    });
                }
            });
            NewUserProgramDeviceConnectDialogFragment.this.getParentActivity().showDialogFragment(dialog);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSelectedUser(TrainUser user) {
        this.selectedUser = user;
        if (user == null) {
            this.usericon.setImageBitmap(null);
            this.username.setText("");
            this.agevalue.setText("");
            this.heightvalue.setText("");
            this.weightvalue.setText("");
            return;
        }
        if (TextUtils.isEmpty(user.iconUrl) || "sample".equals(user.iconUrl)) {
            Glide.with((FragmentActivity) getParentActivity()).load(Integer.valueOf(R.mipmap.icon_sample)).centerCrop().transform(new GlideCircleTransform(getParentActivity())).into(this.usericon);
        } else {
            Glide.with((FragmentActivity) getParentActivity()).load(user.iconUrl).centerCrop().transform(new GlideCircleTransform(getParentActivity())).into(this.usericon);
        }
        this.username.setText(user.name);
        Date date = new Date();
        this.agevalue.setText(String.valueOf(user.birtyday == null ? 0 : date.getYear() - user.birtyday.getYear()));
        this.heightvalue.setText(String.format(getString(R.string.heightValue), Integer.valueOf(user.height)));
        this.weightvalue.setText(String.format(getString(R.string.weightValue), Float.valueOf(user.weight)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSelectedProgram(TrainProgram dataBean) {
        this.selectedDataBean = dataBean;
        if (dataBean == null) {
            this.programname.setText("");
            this.programvalue.setText("");
        } else {
            ProgramDataBean programDataBean = dataBean.programDataBean;
            this.programname.setText(dataBean.name);
            this.programvalue.setText(String.format(getString(R.string.trainValue), Integer.valueOf(programDataBean.workLength / 60), Integer.valueOf(programDataBean.pulseContinue), Integer.valueOf(programDataBean.pulsePause), Integer.valueOf(programDataBean.hz)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSelectedDevice(DeviceBean deviceBean) {
        this.selectedDeviceBean = deviceBean;
        if (deviceBean == null) {
            this.devicename.setText("");
            this.devicevalue.setText("");
        } else {
            this.devicename.setText(deviceBean.name);
            this.devicevalue.setText(deviceBean.macAddress);
        }
    }

    @Override // com.isaigu.gymapp.BaseDialogFragment, com.isaigu.gymapp.message.EventListener
    public void handleEvent(DataBundle bundle) {
        short event = bundle.getEvent();
        if (event == 105) {
            this.trainUsers = BeanUtils.cloneArray(DataMgr.getInstance().trainUsers, TrainUser.class);
            getParentActivity().runOnUiThread(new Runnable() { // from class: com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment.11
                @Override // java.lang.Runnable
                public void run() {
                    NewUserProgramDeviceConnectDialogFragment.this.userAdapter.updateData(NewUserProgramDeviceConnectDialogFragment.this.trainUsers);
                }
            });
            return;
        }
        if (event != 106) {
            if (event != 1004) {
                switch (event) {
                    case PointerIconCompat.TYPE_CROSSHAIR /* 1007 */:
                        break;
                    case PointerIconCompat.TYPE_TEXT /* 1008 */:
                        handleDeviceDisconnected(bundle);
                        return;
                    case PointerIconCompat.TYPE_VERTICAL_TEXT /* 1009 */:
                        handleDeviceConnected(bundle);
                        return;
                    default:
                        return;
                }
            }
            handleDeviceDiscover(bundle);
            return;
        }
        this.programDatas = BeanUtils.cloneArray(DataMgr.getInstance().trainData, TrainProgram.class);
        getParentActivity().runOnUiThread(new Runnable() { // from class: com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment.12
            @Override // java.lang.Runnable
            public void run() {
                NewUserProgramDeviceConnectDialogFragment.this.programAdapter.updateDataBean(NewUserProgramDeviceConnectDialogFragment.this.programDatas);
            }
        });
    }

    private void handleDeviceConnected(DataBundle bundle) {
        BleInterface.BluetoothDeviceModel model = (BleInterface.BluetoothDeviceModel) bundle.getContent();
        Logger.logConsole(getClass().getSimpleName() + " model  " + model);
        if (model != null && this.selectedDataBean != null && this.selectedUser != null && this.selectedDeviceBean != null) {
            Logger.logConsole("handleDeviceConnected: " + model.address + "   " + model.name);
            TrainUserProgramDataWrapper wrapper = new TrainUserProgramDataWrapper();
            wrapper.trainProgram = this.selectedDataBean;
            wrapper.trainUser = this.selectedUser;
            wrapper.macAddress = model.address;
            wrapper.deviceName = this.selectedDeviceBean.name;
            wrapper.connected = true;
            MessageDispatcher.dispatchEventMessage(new DataBundle((short) 102, (Object) wrapper));
            getParentActivity().runDelay(new Runnable() { // from class: com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment.13
                @Override // java.lang.Runnable
                public void run() {
                    NewUserProgramDeviceConnectDialogFragment.this.getParentActivity().closeDialogFragment(NewUserProgramDeviceConnectDialogFragment.this);
                    MessageDispatcher.dispatchEventMessage((short) 104);
                }
            }, 500L);
            return;
        }
        if (model != null) {
            BleMgr.getController().disconnectByAddress(model.address);
            getParentActivity().closeDialogFragment(this);
            getParentActivity().runOnUiThread(new Runnable() { // from class: com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment.14
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        NewUserProgramDeviceConnectDialogFragment.this.getParentActivity().showTips(NewUserProgramDeviceConnectDialogFragment.this.getString(R.string.connect_failed));
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleDeviceDisconnected(final DataBundle bundle) {
        int i = this.reconnectCount;
        if (i < 3) {
            this.reconnectCount = i + 1;
            DeviceBean deviceBean = this.selectedDeviceBean;
            if (deviceBean != null) {
                this.connectingAddress = deviceBean.macAddress;
                BleMgr.getController().stopScan();
                boolean success = BleMgr.getController().connectByAddress(this.selectedDeviceBean.macAddress);
                if (!success) {
                    TimerUtils.delayCallback(new Runnable() { // from class: com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment.15
                        @Override // java.lang.Runnable
                        public void run() {
                            NewUserProgramDeviceConnectDialogFragment.this.handleDeviceDisconnected(bundle);
                        }
                    }, 2000L);
                    return;
                }
                return;
            }
            this.reconnectCount = 0;
            getParentActivity().runOnUiThread(new Runnable() { // from class: com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment.16
                @Override // java.lang.Runnable
                public void run() {
                    MessageDispatcher.dispatchEventMessage((short) 104);
                    try {
                        NewUserProgramDeviceConnectDialogFragment.this.getParentActivity().showTips(NewUserProgramDeviceConnectDialogFragment.this.getString(R.string.connect_failed));
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            });
            startScan();
            return;
        }
        this.reconnectCount = 0;
        getParentActivity().runOnUiThread(new Runnable() { // from class: com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment.17
            @Override // java.lang.Runnable
            public void run() {
                MessageDispatcher.dispatchEventMessage((short) 104);
                try {
                    NewUserProgramDeviceConnectDialogFragment.this.getParentActivity().showTips(NewUserProgramDeviceConnectDialogFragment.this.getString(R.string.connect_failed));
                } catch (Exception e) {
                }
            }
        });
        startScan();
    }

    private synchronized void handleDeviceDiscover(DataBundle bundle) {
        BleInterface.BluetoothDeviceModel model = (BleInterface.BluetoothDeviceModel) bundle.get("model");
        if (model != null) {
            this.deviceAdapter.discoverDevice(model.address, model.address);
        }
    }

    @Override // com.isaigu.gymapp.BaseDialogFragment, android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        MessageDispatcher.dispatchEventMessage((short) 104);
        DeviceAdapter deviceAdapter = this.deviceAdapter;
        if (deviceAdapter != null) {
            deviceAdapter.stop_all_timer();
        }
        TimerUtils.stopTimer(this.delayTimer1);
        this.delayTimer1 = null;
        TimerUtils.stopTimer(this.delayTimer2);
        this.delayTimer2 = null;
        TimerUtils.stopTimer(this.delayTimer3);
        this.delayTimer3 = null;
        TimerUtils.stopTimer(this.delayTimer4);
        this.delayTimer4 = null;
        BleMgr.getController().stopScan();
        EventBus eventBus = EventBus.getDefault();
        if (eventBus.isRegistered(this)) {
            eventBus.unregister(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class UserAdapter extends RecyclerView.Adapter {
        private List<Boolean> selects;
        private List<TrainUser> trainUsers;

        public UserAdapter(List<TrainUser> trainUsers) {
            updateData(trainUsers);
        }

        public void updateData(List<TrainUser> trainUsers) {
            if (trainUsers != null) {
                this.trainUsers = trainUsers;
                this.selects = new ArrayList();
                for (int i = 0; i < this.trainUsers.size(); i++) {
                    this.selects.add(false);
                }
                notifyDataSetChanged();
            }
        }

        public void setUserSelected(int index, boolean selected) {
            List<Boolean> list = this.selects;
            if (list == null || list.size() < index - 1) {
                return;
            }
            this.selects.set(index, Boolean.valueOf(selected));
            notifyDataSetChanged();
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
            UserHolder holder = new UserHolder(LayoutInflater.from(NewUserProgramDeviceConnectDialogFragment.this.getParentActivity()).inflate(R.layout.connect_user_item_layout, parent, false));
            return holder;
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0095  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x00c8  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x00a8  */
        @Override // android.support.v7.widget.RecyclerView.Adapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onBindViewHolder(android.support.v7.widget.RecyclerView.ViewHolder r8, final int r9) {
            /*
                r7 = this;
                r0 = r8
                com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment$UserAdapter$UserHolder r0 = (com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment.UserAdapter.UserHolder) r0
                java.util.List<com.isaigu.gymapp.bean.TrainUser> r1 = r7.trainUsers
                java.lang.Object r1 = r1.get(r9)
                com.isaigu.gymapp.bean.TrainUser r1 = (com.isaigu.gymapp.bean.TrainUser) r1
                android.widget.TextView r2 = r0.username
                java.lang.String r3 = r1.name
                r2.setText(r3)
                java.lang.String r2 = r1.iconUrl     // Catch: java.lang.Exception -> L86
                boolean r2 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Exception -> L86
                r3 = 0
                r4 = 1
                if (r2 != 0) goto L54
                java.lang.String r2 = "sample"
                java.lang.String r5 = r1.iconUrl     // Catch: java.lang.Exception -> L86
                boolean r2 = r2.equals(r5)     // Catch: java.lang.Exception -> L86
                if (r2 == 0) goto L27
                goto L54
            L27:
                com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment r2 = com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment.this     // Catch: java.lang.Exception -> L86
                com.isaigu.gymapp.BaseActivity r2 = r2.getParentActivity()     // Catch: java.lang.Exception -> L86
                com.bumptech.glide.RequestManager r2 = com.bumptech.glide.Glide.with(r2)     // Catch: java.lang.Exception -> L86
                java.lang.String r5 = r1.iconUrl     // Catch: java.lang.Exception -> L86
                com.bumptech.glide.DrawableTypeRequest r2 = r2.load(r5)     // Catch: java.lang.Exception -> L86
                com.bumptech.glide.DrawableRequestBuilder r2 = r2.centerCrop()     // Catch: java.lang.Exception -> L86
                com.bumptech.glide.load.resource.bitmap.BitmapTransformation[] r4 = new com.bumptech.glide.load.resource.bitmap.BitmapTransformation[r4]     // Catch: java.lang.Exception -> L86
                com.isaigu.gymapp.widget.GlideCircleTransform r5 = new com.isaigu.gymapp.widget.GlideCircleTransform     // Catch: java.lang.Exception -> L86
                com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment r6 = com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment.this     // Catch: java.lang.Exception -> L86
                com.isaigu.gymapp.BaseActivity r6 = r6.getParentActivity()     // Catch: java.lang.Exception -> L86
                r5.<init>(r6)     // Catch: java.lang.Exception -> L86
                r4[r3] = r5     // Catch: java.lang.Exception -> L86
                com.bumptech.glide.DrawableRequestBuilder r2 = r2.transform(r4)     // Catch: java.lang.Exception -> L86
                android.widget.ImageView r3 = r0.usericon     // Catch: java.lang.Exception -> L86
                r2.into(r3)     // Catch: java.lang.Exception -> L86
                goto L85
            L54:
                com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment r2 = com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment.this     // Catch: java.lang.Exception -> L86
                com.isaigu.gymapp.BaseActivity r2 = r2.getParentActivity()     // Catch: java.lang.Exception -> L86
                com.bumptech.glide.RequestManager r2 = com.bumptech.glide.Glide.with(r2)     // Catch: java.lang.Exception -> L86
                r5 = 2131492896(0x7f0c0020, float:1.8609257E38)
                java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch: java.lang.Exception -> L86
                com.bumptech.glide.DrawableTypeRequest r2 = r2.load(r5)     // Catch: java.lang.Exception -> L86
                com.bumptech.glide.DrawableRequestBuilder r2 = r2.centerCrop()     // Catch: java.lang.Exception -> L86
                com.bumptech.glide.load.resource.bitmap.BitmapTransformation[] r4 = new com.bumptech.glide.load.resource.bitmap.BitmapTransformation[r4]     // Catch: java.lang.Exception -> L86
                com.isaigu.gymapp.widget.GlideCircleTransform r5 = new com.isaigu.gymapp.widget.GlideCircleTransform     // Catch: java.lang.Exception -> L86
                com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment r6 = com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment.this     // Catch: java.lang.Exception -> L86
                com.isaigu.gymapp.BaseActivity r6 = r6.getParentActivity()     // Catch: java.lang.Exception -> L86
                r5.<init>(r6)     // Catch: java.lang.Exception -> L86
                r4[r3] = r5     // Catch: java.lang.Exception -> L86
                com.bumptech.glide.DrawableRequestBuilder r2 = r2.transform(r4)     // Catch: java.lang.Exception -> L86
                android.widget.ImageView r3 = r0.usericon     // Catch: java.lang.Exception -> L86
                r2.into(r3)     // Catch: java.lang.Exception -> L86
            L85:
                goto L87
            L86:
                r2 = move-exception
            L87:
                java.util.List<java.lang.Boolean> r2 = r7.selects
                java.lang.Object r2 = r2.get(r9)
                java.lang.Boolean r2 = (java.lang.Boolean) r2
                boolean r2 = r2.booleanValue()
                if (r2 == 0) goto La8
                android.view.View r2 = r0.itemView
                com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment r3 = com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment.this
                android.content.res.Resources r3 = r3.getResources()
                r4 = 2131099821(0x7f0600ad, float:1.7812006E38)
                int r3 = r3.getColor(r4)
                r2.setBackgroundColor(r3)
                goto Lba
            La8:
                android.view.View r2 = r0.itemView
                com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment r3 = com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment.this
                android.content.res.Resources r3 = r3.getResources()
                r4 = 2131099838(0x7f0600be, float:1.781204E38)
                int r3 = r3.getColor(r4)
                r2.setBackgroundColor(r3)
            Lba:
                java.util.List<com.isaigu.gymapp.bean.TrainUser> r2 = r7.trainUsers
                java.lang.Object r2 = r2.get(r9)
                com.isaigu.gymapp.bean.TrainUser r2 = (com.isaigu.gymapp.bean.TrainUser) r2
                boolean r2 = r7.isUserTraining(r2)
                if (r2 == 0) goto Lda
                android.view.View r2 = r0.itemView
                com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment r3 = com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment.this
                android.content.res.Resources r3 = r3.getResources()
                r4 = 2131099747(0x7f060063, float:1.7811856E38)
                int r3 = r3.getColor(r4)
                r2.setBackgroundColor(r3)
            Lda:
                android.view.View r2 = r0.itemView
                com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment$UserAdapter$1 r3 = new com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment$UserAdapter$1
                r3.<init>()
                r2.setOnClickListener(r3)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment.UserAdapter.onBindViewHolder(android.support.v7.widget.RecyclerView$ViewHolder, int):void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isUserTraining(TrainUser trainUser) {
            if (DataMgr.getInstance().trainingUsers != null && DataMgr.getInstance().trainingUsers.size() > 0) {
                for (int i = 0; i < DataMgr.getInstance().trainingUsers.size(); i++) {
                    if (DataMgr.getInstance().trainingUsers.get(i) != null && DataMgr.getInstance().trainingUsers.get(i).trainUser != null && DataMgr.getInstance().trainingUsers.get(i).trainUser.equals(trainUser)) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            List<TrainUser> list = this.trainUsers;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        /* loaded from: classes2.dex */
        class UserHolder extends RecyclerView.ViewHolder {
            public ImageView usericon;
            public TextView username;

            public UserHolder(View itemView) {
                super(itemView);
                this.usericon = (ImageView) itemView.findViewById(R.id.usericon);
                this.username = (TextView) itemView.findViewById(R.id.username);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class ProgramAdapter extends RecyclerView.Adapter {
        private List<TrainProgram> dataBeen;
        private List<Boolean> selects;

        public ProgramAdapter(List<TrainProgram> dataBeen) {
            updateDataBean(dataBeen);
        }

        public void updateDataBean(List<TrainProgram> dataBeen) {
            if (dataBeen != null) {
                this.dataBeen = dataBeen;
                this.selects = new ArrayList();
                for (int i = 0; i < this.dataBeen.size(); i++) {
                    this.selects.add(false);
                }
                notifyDataSetChanged();
            }
        }

        public void setTrainProgramSelected(int index, boolean selected) {
            List<Boolean> list = this.selects;
            if (list == null || list.size() < index - 1) {
                return;
            }
            this.selects.set(index, Boolean.valueOf(selected));
            notifyDataSetChanged();
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
            return new ProgramHolder(LayoutInflater.from(NewUserProgramDeviceConnectDialogFragment.this.getParentActivity()).inflate(R.layout.program_data_item_layout, parent, false));
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, final int position) {
            TrainProgram data = this.dataBeen.get(position);
            ProgramDataBean programDataBean = data.programDataBean;
            ProgramHolder programHolder = (ProgramHolder) holder;
            programHolder.programname.setText(data.name);
            programHolder.programvalue.setText(String.format(NewUserProgramDeviceConnectDialogFragment.this.getString(R.string.trainValue), Integer.valueOf(programDataBean.workLength / 60), Integer.valueOf(programDataBean.pulseContinue), Integer.valueOf(programDataBean.pulsePause), Integer.valueOf(programDataBean.hz)));
            if (this.selects.size() > position && this.selects.get(position).booleanValue()) {
                programHolder.itemView.setPressed(true);
            } else {
                programHolder.itemView.setPressed(false);
            }
            programHolder.itemView.setOnClickListener(new NoDoubleClickListener() { // from class: com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment.ProgramAdapter.1
                @Override // com.isaigu.gymapp.widget.NoDoubleClickListener
                public void onNoDoubleClick(View v) {
                    boolean select = ((Boolean) ProgramAdapter.this.selects.get(position)).booleanValue();
                    for (int i = 0; i < ProgramAdapter.this.selects.size(); i++) {
                        ProgramAdapter.this.selects.set(i, false);
                    }
                    ProgramAdapter.this.selects.set(position, Boolean.valueOf(!select));
                    NewUserProgramDeviceConnectDialogFragment.this.updateSelectedProgram(((Boolean) ProgramAdapter.this.selects.get(position)).booleanValue() ? (TrainProgram) ProgramAdapter.this.dataBeen.get(position) : null);
                    NewUserProgramDeviceConnectDialogFragment.this.handleSelectedItems();
                    ProgramAdapter.this.notifyDataSetChanged();
                }
            });
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            List<TrainProgram> list = this.dataBeen;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        /* loaded from: classes2.dex */
        class ProgramHolder extends RecyclerView.ViewHolder {
            public TextView programname;
            public TextView programvalue;

            public ProgramHolder(View itemView) {
                super(itemView);
                this.programname = (TextView) itemView.findViewById(R.id.programname);
                this.programvalue = (TextView) itemView.findViewById(R.id.programvalue);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class DeviceAdapter extends RecyclerView.Adapter {
        private ConcurrentHashMap<String, Timer> addressTimer = new ConcurrentHashMap<>();
        private List<DeviceBean> list;
        private List<Boolean> selects;

        public DeviceAdapter(List<DeviceBean> deviceBeen) {
            updateData(deviceBeen);
        }

        public void updateData(List<DeviceBean> list) {
            if (list != null) {
                this.list = list;
                this.selects = new ArrayList();
                for (int i = 0; i < this.list.size(); i++) {
                    this.selects.add(false);
                    start_mac_address_timer(list.get(i).macAddress);
                }
                notifyDataSetChanged();
            }
        }

        public void setDeviceSelected(int index, boolean selected) {
            List<Boolean> list = this.selects;
            if (list == null || list.size() < index - 1) {
                return;
            }
            this.selects.set(index, Boolean.valueOf(selected));
            notifyDataSetChanged();
        }

        public void stop_all_timer() {
            if (this.addressTimer.size() > 0) {
                for (Map.Entry<String, Timer> entry : this.addressTimer.entrySet()) {
                    TimerUtils.stopTimer(entry.getValue());
                }
            }
            this.addressTimer.clear();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void stop_mac_address_timer(String address) {
            if (!TextUtils.isEmpty(address) && this.addressTimer.containsKey(address)) {
                Timer timer = this.addressTimer.remove(address);
                TimerUtils.stopTimer(timer);
            }
        }

        private void start_mac_address_timer(final String address) {
            if (TextUtils.isEmpty(address)) {
                return;
            }
            stop_mac_address_timer(address);
            Timer timer = TimerUtils.delayCallback(new Runnable() { // from class: com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment.DeviceAdapter.1
                @Override // java.lang.Runnable
                public void run() {
                    if (DeviceAdapter.this.list != null) {
                        synchronized (DeviceAdapter.this.list) {
                            int i = 0;
                            while (true) {
                                if (i >= DeviceAdapter.this.list.size()) {
                                    break;
                                }
                                if (((DeviceBean) DeviceAdapter.this.list.get(i)).macAddress.equals(address)) {
                                    ((DeviceBean) DeviceAdapter.this.list.get(i)).connectedSign = null;
                                    NewUserProgramDeviceConnectDialogFragment.this.getParentActivity().runOnUiThread(new Runnable() { // from class: com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment.DeviceAdapter.1.1
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            DeviceAdapter.this.notifyDataSetChanged();
                                        }
                                    });
                                    break;
                                }
                                i++;
                            }
                        }
                    }
                    DeviceAdapter.this.stop_mac_address_timer(address);
                }
            }, 3000L);
            this.addressTimer.put(address, timer);
        }

        public synchronized void discoverDevice(String macAddress, String connectedSign) {
            if (!TextUtils.isEmpty(macAddress) && !TextUtils.isEmpty(connectedSign)) {
                int i = 0;
                while (true) {
                    if (i >= this.list.size()) {
                        break;
                    }
                    if (!this.list.get(i).macAddress.equals(macAddress)) {
                        i++;
                    } else if (!connectedSign.equals(this.list.get(i).connectedSign)) {
                        this.list.get(i).connectedSign = connectedSign;
                        start_mac_address_timer(macAddress);
                        notifyDataSetChanged();
                    } else {
                        start_mac_address_timer(macAddress);
                    }
                }
            }
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
            return new DeviceHolder(LayoutInflater.from(NewUserProgramDeviceConnectDialogFragment.this.getParentActivity()).inflate(R.layout.device_item_layout, parent, false));
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, final int position) {
            DeviceHolder deviceHolder = (DeviceHolder) holder;
            DeviceBean deviceBean = this.list.get(position);
            deviceHolder.deviceName.setText(deviceBean.name);
            deviceHolder.address.setText(deviceBean.macAddress);
            if (TextUtils.isEmpty(this.list.get(position).connectedSign)) {
                deviceHolder.address.setTextColor(NewUserProgramDeviceConnectDialogFragment.this.getResources().getColor(R.color.cpb_red2));
                deviceHolder.deviceName.setTextColor(NewUserProgramDeviceConnectDialogFragment.this.getResources().getColor(R.color.cpb_red2));
            } else {
                deviceHolder.address.setTextColor(NewUserProgramDeviceConnectDialogFragment.this.getResources().getColor(R.color.green_color_font));
                deviceHolder.deviceName.setTextColor(NewUserProgramDeviceConnectDialogFragment.this.getResources().getColor(R.color.green_color_font));
            }
            if (this.selects.get(position).booleanValue()) {
                deviceHolder.itemView.setBackgroundColor(NewUserProgramDeviceConnectDialogFragment.this.getResources().getColor(R.color.select_color_user_device_program));
            } else {
                deviceHolder.itemView.setBackgroundColor(NewUserProgramDeviceConnectDialogFragment.this.getResources().getColor(R.color.white_color));
            }
            if (isDeviceConnected(this.list.get(position).macAddress)) {
                deviceHolder.address.setTextColor(NewUserProgramDeviceConnectDialogFragment.this.getResources().getColor(R.color.light_blue_exister));
                deviceHolder.deviceName.setTextColor(NewUserProgramDeviceConnectDialogFragment.this.getResources().getColor(R.color.light_blue_exister));
            }
            deviceHolder.itemView.setOnClickListener(new NoDoubleClickListener() { // from class: com.isaigu.gymapp.dialog.NewUserProgramDeviceConnectDialogFragment.DeviceAdapter.2
                @Override // com.isaigu.gymapp.widget.NoDoubleClickListener
                public void onNoDoubleClick(View v) {
                    DeviceAdapter deviceAdapter = DeviceAdapter.this;
                    if (!deviceAdapter.isDeviceConnected(((DeviceBean) deviceAdapter.list.get(position)).macAddress) && ((DeviceBean) DeviceAdapter.this.list.get(position)).connectedSign != null) {
                        boolean select = ((Boolean) DeviceAdapter.this.selects.get(position)).booleanValue();
                        for (int i = 0; i < DeviceAdapter.this.selects.size(); i++) {
                            DeviceAdapter.this.selects.set(i, false);
                        }
                        DeviceAdapter.this.selects.set(position, Boolean.valueOf(!select));
                        NewUserProgramDeviceConnectDialogFragment.this.updateSelectedDevice(((Boolean) DeviceAdapter.this.selects.get(position)).booleanValue() ? (DeviceBean) DeviceAdapter.this.list.get(position) : null);
                        NewUserProgramDeviceConnectDialogFragment.this.handleSelectedItems();
                        DeviceAdapter.this.notifyDataSetChanged();
                    }
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isDeviceConnected(String macAddress) {
            for (int i = 0; i < DataMgr.getInstance().trainingUsers.size(); i++) {
                if (DataMgr.getInstance().trainingUsers.get(i) != null && DataMgr.getInstance().trainingUsers.get(i).macAddress.equals(macAddress)) {
                    return true;
                }
            }
            return false;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            List<DeviceBean> list = this.list;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        /* loaded from: classes2.dex */
        class DeviceHolder extends RecyclerView.ViewHolder {
            private TextView address;
            private TextView deviceName;

            public DeviceHolder(View itemView) {
                super(itemView);
                this.deviceName = (TextView) itemView.findViewById(R.id.devicename);
                this.address = (TextView) itemView.findViewById(R.id.deviceaddress);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSelectedItems() {
        if (this.selectedUser != null && this.selectedDataBean != null && this.selectedDeviceBean != null) {
            this.ok.setVisibility(0);
        } else {
            this.ok.setVisibility(8);
        }
    }
}
