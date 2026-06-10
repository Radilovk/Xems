package com.isaigu.gymapp.fragment;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.math.MathUtils;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bumptech.glide.Glide;
import com.isaigu.gymapp.BaseFragment;
import com.isaigu.gymapp.R;
import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.bean.TrainProgram;
import com.isaigu.gymapp.bean.TrainUser;
import com.isaigu.gymapp.bean.TrainUserProgramDataWrapper;
import com.isaigu.gymapp.bean.UserData;
import com.isaigu.gymapp.bean.dto.TrainRecordDTO;
import com.isaigu.gymapp.bean.vo.ResponseData;
import com.isaigu.gymapp.ble.BleInterface;
import com.isaigu.gymapp.ble.ProtocolController;
import com.isaigu.gymapp.dialog.EditUserProgramDataDialog;
import com.isaigu.gymapp.dialog.SaveProgramDialog;
import com.isaigu.gymapp.dialog.UserProgramDeviceConnectDialogFragment;
import com.isaigu.gymapp.message.DataBundle;
import com.isaigu.gymapp.message.MessageDispatcher;
import com.isaigu.gymapp.mgr.ApiMgr;
import com.isaigu.gymapp.mgr.BleMgr;
import com.isaigu.gymapp.mgr.CommonUtils;
import com.isaigu.gymapp.mgr.Constants;
import com.isaigu.gymapp.mgr.DataMgr;
import com.isaigu.gymapp.mgr.EventMessage;
import com.isaigu.gymapp.utils.AndroidUtils;
import com.isaigu.gymapp.utils.BeanUtils;
import com.isaigu.gymapp.utils.FileUtils;
import com.isaigu.gymapp.utils.Logger;
import com.isaigu.gymapp.utils.NetworkUtils;
import com.isaigu.gymapp.utils.OKHttpUtils;
import com.isaigu.gymapp.utils.ReflectUtils;
import com.isaigu.gymapp.utils.TimerUtils;
import com.isaigu.gymapp.widget.AmountView2;
import com.isaigu.gymapp.widget.BatterView;
import com.isaigu.gymapp.widget.CircleSeekBar;
import com.isaigu.gymapp.widget.GlideCircleTransform;
import com.isaigu.gymapp.widget.MyButton;
import com.isaigu.gymapp.widget.NoDoubleClickListener;
import com.isaigu.gymapp.widget.SpacesItemDecoration;
import com.isaigu.gymapp.widget.VerticalColorSeekBar;
import com.isaigu.gymapp.widget.WaveBallProgress;
import com.sun.mail.imap.IMAPStore;
import com.yanzhenjie.recyclerview.swipe.SwipeMenu;
import com.yanzhenjie.recyclerview.swipe.SwipeMenuBridge;
import com.yanzhenjie.recyclerview.swipe.SwipeMenuCreator;
import com.yanzhenjie.recyclerview.swipe.SwipeMenuItem;
import com.yanzhenjie.recyclerview.swipe.SwipeMenuItemClickListener;
import com.yanzhenjie.recyclerview.swipe.SwipeMenuRecyclerView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import me.weyye.hipermission.HiPermission;
import me.weyye.hipermission.PermissionCallback;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.time.DateUtils;

/* loaded from: /workspace/classes2.dex */
public class TrainFragment extends BaseFragment {
    private MyButton allAdd;
    private MyButton allMinus;
    private MyButton allStartPause;
    private MyButton allStop;
    private MyButton allUsers;
    private Timer batteryGetTimer;
    private LinearLayout[] buwei;
    private Timer clearSelectTimer;
    private LinearLayout leftLayout;
    private ImageView logoImage;
    private LinearLayout rightLayout;
    private SwipeMenuRecyclerView trainUserlistview;
    private UserTrainAdapter userTrainAdapter;
    private HashMap<String, Integer> reconnectMap = new HashMap<>();
    private HashMap<String, Timer> reconnectTimer = new HashMap<>();
    private HashMap<String, TrainRecordDTO> trainRecordMap = new HashMap<>();
    private SwipeMenuCreator swipeMenuCreator = new SwipeMenuCreator() { // from class: com.isaigu.gymapp.fragment.TrainFragment.14
        @Override // com.yanzhenjie.recyclerview.swipe.SwipeMenuCreator
        public void onCreateMenu(SwipeMenu swipeLeftMenu, SwipeMenu swipeRightMenu, int viewType) {
            SwipeMenuItem deleteItem = new SwipeMenuItem(TrainFragment.this.getParentActivity()).setBackgroundColor(TrainFragment.this.getColor(R.color.red)).setText(TrainFragment.this.getString(R.string.delete)).setTextColor(-1).setTextSize(16).setWidth(100).setHeight(-1);
            swipeRightMenu.addMenuItem(deleteItem);
        }
    };
    private SwipeMenuItemClickListener mMenuItemClickListener = new SwipeMenuItemClickListener() { // from class: com.isaigu.gymapp.fragment.TrainFragment.15
        @Override // com.yanzhenjie.recyclerview.swipe.SwipeMenuItemClickListener
        public void onItemClick(SwipeMenuBridge menuBridge) {
            menuBridge.closeMenu();
            TrainFragment.this.userTrainAdapter.removeUser(menuBridge.getAdapterPosition());
        }
    };

    @Override // com.isaigu.gymapp.BaseFragment
    protected int viewId() {
        return R.layout.train_fragment_layout;
    }

    @Override // com.isaigu.gymapp.BaseFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = super.onCreateView(inflater, container, savedInstanceState);
        this.leftLayout = (LinearLayout) view.findViewById(R.id.leftLayout);
        this.rightLayout = (LinearLayout) view.findViewById(R.id.rightLayout);
        initView(view);
        initListener();
        MessageDispatcher.attachEventListener((short) 6, this);
        MessageDispatcher.attachEventListener((short) 1, this);
        MessageDispatcher.attachEventListener((short) 102, this);
        MessageDispatcher.attachEventListener((short) 101, this);
        MessageDispatcher.attachEventListener(EventMessage.event_device_disconnected, this);
        MessageDispatcher.attachEventListener(EventMessage.event_device_connected, this);
        MessageDispatcher.attachEventListener((short) 107, this);
        HiPermission.create(getParentActivity()).checkSinglePermission("android.permission.ACCESS_FINE_LOCATION", new PermissionCallback() { // from class: com.isaigu.gymapp.fragment.TrainFragment.1
            @Override // me.weyye.hipermission.PermissionCallback
            public void onClose() {
                Logger.logConsole("onClose");
            }

            @Override // me.weyye.hipermission.PermissionCallback
            public void onFinish() {
                Logger.logConsole("onFinish");
            }

            @Override // me.weyye.hipermission.PermissionCallback
            public void onDeny(String permisson, int position) {
                Logger.logConsole("onDeny: " + permisson + "  " + position);
                TrainFragment.this.getParentActivity().showTips(TrainFragment.this.getString(R.string.location_permission_error));
            }

            @Override // me.weyye.hipermission.PermissionCallback
            public void onGuarantee(String permisson, int position) {
                Logger.logConsole("onGuarantee: " + permisson + "  " + position);
            }
        });
        return view;
    }

    @Override // android.support.v4.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (!hidden) {
            if (!TextUtils.isEmpty(UserData.getInstance().logoPath)) {
                Glide.with((FragmentActivity) getParentActivity()).load(UserData.getInstance().logoPath).into(this.logoImage);
            } else {
                Glide.with((FragmentActivity) getParentActivity()).load(Integer.valueOf(R.mipmap.logo2)).into(this.logoImage);
            }
        }
    }

    private void initView(View view) {
        LinearLayout[] linearLayoutArr = new LinearLayout[10];
        this.buwei = linearLayoutArr;
        linearLayoutArr[0] = (LinearLayout) view.findViewById(R.id.buwei1);
        this.buwei[1] = (LinearLayout) view.findViewById(R.id.buwei2);
        this.buwei[2] = (LinearLayout) view.findViewById(R.id.buwei3);
        this.buwei[3] = (LinearLayout) view.findViewById(R.id.buwei4);
        this.buwei[4] = (LinearLayout) view.findViewById(R.id.buwei5);
        this.buwei[5] = (LinearLayout) view.findViewById(R.id.buwei6);
        this.buwei[6] = (LinearLayout) view.findViewById(R.id.buwei7);
        this.buwei[7] = (LinearLayout) view.findViewById(R.id.buwei8);
        this.buwei[8] = (LinearLayout) view.findViewById(R.id.buwei9);
        this.buwei[9] = (LinearLayout) view.findViewById(R.id.buwei10);
        this.allStop = (MyButton) view.findViewById(R.id.allStop);
        this.allStartPause = (MyButton) view.findViewById(R.id.allStartPause);
        this.allUsers = (MyButton) view.findViewById(R.id.allPerson);
        this.allAdd = (MyButton) view.findViewById(R.id.allAdd);
        this.allMinus = (MyButton) view.findViewById(R.id.allminus);
        this.logoImage = (ImageView) view.findViewById(R.id.logoImage);
        if (!TextUtils.isEmpty(UserData.getInstance().logoPath)) {
            Glide.with((FragmentActivity) getParentActivity()).load(UserData.getInstance().logoPath).into(this.logoImage);
        }
        SwipeMenuRecyclerView swipeMenuRecyclerView = (SwipeMenuRecyclerView) view.findViewById(R.id.trainUserlistview);
        this.trainUserlistview = swipeMenuRecyclerView;
        swipeMenuRecyclerView.setSwipeMenuCreator(this.swipeMenuCreator);
        this.trainUserlistview.setSwipeMenuItemClickListener(this.mMenuItemClickListener);
        this.trainUserlistview.setLayoutManager(new LinearLayoutManager(getParentActivity()));
        this.trainUserlistview.addItemDecoration(new SpacesItemDecoration(8));
        UserTrainAdapter userTrainAdapter = new UserTrainAdapter(null);
        this.userTrainAdapter = userTrainAdapter;
        this.trainUserlistview.setAdapter(userTrainAdapter);
    }

    private void initListener() {
        int i = 0;
        while (true) {
            LinearLayout[] linearLayoutArr = this.buwei;
            if (i < linearLayoutArr.length) {
                final int fi = i;
                linearLayoutArr[i].setOnClickListener(new NoDoubleClickListener() { // from class: com.isaigu.gymapp.fragment.TrainFragment.2
                    @Override // com.isaigu.gymapp.widget.NoDoubleClickListener
                    public void onNoDoubleClick(View v) {
                        TrainFragment.this.userTrainAdapter.clearAllMASelect();
                        TrainFragment.this.userTrainAdapter.handleColumnOperation(fi);
                        TrainFragment.this.startClearSelectedTimer();
                    }
                });
                i++;
            } else {
                this.allMinus.setOnClickListener(new NoDoubleClickListener() { // from class: com.isaigu.gymapp.fragment.TrainFragment.3
                    @Override // com.isaigu.gymapp.widget.NoDoubleClickListener
                    public void onNoDoubleClick(View v) {
                        TrainFragment.this.userTrainAdapter.handleStrenthChange(-UserData.getInstance().currentDecreaseStep);
                        TrainFragment.this.startClearSelectedTimer();
                    }
                });
                this.allAdd.setOnClickListener(new NoDoubleClickListener() { // from class: com.isaigu.gymapp.fragment.TrainFragment.4
                    @Override // com.isaigu.gymapp.widget.NoDoubleClickListener
                    public void onNoDoubleClick(View v) {
                        TrainFragment.this.userTrainAdapter.handleStrenthChange(UserData.getInstance().currentIncreaseStep);
                        TrainFragment.this.startClearSelectedTimer();
                    }
                });
                this.allUsers.setOnClickListener(new NoDoubleClickListener() { // from class: com.isaigu.gymapp.fragment.TrainFragment.5
                    @Override // com.isaigu.gymapp.widget.NoDoubleClickListener
                    public void onNoDoubleClick(View v) {
                        boolean containUser = false;
                        int i2 = 0;
                        while (true) {
                            if (i2 >= TrainFragment.this.userTrainAdapter.getmData().size()) {
                                break;
                            }
                            if (TrainFragment.this.userTrainAdapter.getmData().get(i2).type != 0) {
                                i2++;
                            } else {
                                containUser = true;
                                break;
                            }
                        }
                        if (!containUser) {
                            TrainFragment.this.getParentActivity().showTips(TrainFragment.this.getString(R.string.adduser));
                            return;
                        }
                        EditUserProgramDataDialog editUserProgramDataDialog = new EditUserProgramDataDialog();
                        Bundle bundle = new Bundle();
                        bundle.putBoolean("editProgram", false);
                        bundle.putBoolean("multiEdit", true);
                        ArrayList<TrainUserProgramDataWrapper> wrapperArrayList = new ArrayList<>();
                        for (int i3 = 0; i3 < TrainFragment.this.userTrainAdapter.getmData().size(); i3++) {
                            if (TrainFragment.this.userTrainAdapter.getmData().get(i3).type == 0) {
                                wrapperArrayList.add(TrainFragment.this.userTrainAdapter.getmData().get(i3));
                            }
                        }
                        bundle.putSerializable("data", wrapperArrayList);
                        editUserProgramDataDialog.setArguments(bundle);
                        editUserProgramDataDialog.setSaveProgramListener(new EditUserProgramDataDialog.SaveProgramListener() { // from class: com.isaigu.gymapp.fragment.TrainFragment.5.1
                            @Override // com.isaigu.gymapp.dialog.EditUserProgramDataDialog.SaveProgramListener
                            public void onSaveProgram(TrainProgram trainProgram, List<Integer> checks) {
                                for (int i4 = 0; i4 < checks.size(); i4++) {
                                    if (checks.get(i4).intValue() < TrainFragment.this.userTrainAdapter.getmData().size()) {
                                        TrainUserProgramDataWrapper wrapper = TrainFragment.this.userTrainAdapter.getmData().get(checks.get(i4).intValue());
                                        int useType = wrapper.trainProgram.useType;
                                        TrainProgram cloneProgram = (TrainProgram) BeanUtils.cloneObject(trainProgram);
                                        TrainProgram originalProgram = wrapper.trainProgram;
                                        wrapper.trainProgram = cloneProgram;
                                        wrapper.trainProgram.name = originalProgram.name;
                                        wrapper.trainProgram.userId = originalProgram.userId;
                                        wrapper.trainProgram.id = originalProgram.id;
                                        wrapper.trainProgram.useType = useType;
                                        TrainFragment.this.userTrainAdapter.updateUI(TrainFragment.this.userTrainAdapter.userTrainControlHolders.get(String.valueOf(i4)), wrapper, checks.get(i4).intValue());
                                    }
                                }
                            }
                        });
                        TrainFragment.this.getParentActivity().showDialogFragment(editUserProgramDataDialog);
                    }
                });
                this.allStartPause.setOnClickListener(new NoDoubleClickListener() { // from class: com.isaigu.gymapp.fragment.TrainFragment.6
                    @Override // com.isaigu.gymapp.widget.NoDoubleClickListener
                    public void onNoDoubleClick(View v) {
                        if (TrainFragment.this.userTrainAdapter.isSomeoneStart()) {
                            Logger.logConsole("按了开始/暂停所有设备按钮1");
                            TrainFragment.this.userTrainAdapter.handleStartPauseAllUser(false);
                        } else {
                            Logger.logConsole("按了开始/暂停所有设备按钮2");
                            TrainFragment.this.userTrainAdapter.handleStartPauseAllUser();
                        }
                        TrainFragment trainFragment = TrainFragment.this;
                        trainFragment.updateAllStartPauseUI(trainFragment.userTrainAdapter.isSomeoneStart());
                    }
                });
                this.allStop.setOnClickListener(new NoDoubleClickListener() { // from class: com.isaigu.gymapp.fragment.TrainFragment.7
                    @Override // com.isaigu.gymapp.widget.NoDoubleClickListener
                    public void onNoDoubleClick(View v) {
                        Logger.logConsole("按了停止所有设备按钮");
                        TrainFragment.this.userTrainAdapter.handleStopAllUser();
                        TrainFragment trainFragment = TrainFragment.this;
                        trainFragment.updateAllStartPauseUI(trainFragment.userTrainAdapter.isSomeoneStart());
                    }
                });
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAllStartPauseUI(boolean startPause) {
        this.allStartPause.setBackgroundResource(startPause ? R.mipmap.stop2 : R.mipmap.start);
    }

    @Override // android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        changeLayoutPosition();
    }

    @Override // com.isaigu.gymapp.BaseFragment, android.support.v4.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        stopGetBatteryTimer();
    }

    @Override // com.isaigu.gymapp.BaseFragment, com.isaigu.gymapp.message.EventListener
    public void handleEvent(DataBundle bundle) {
        short event = bundle.getEvent();
        if (event == 1) {
            changeLayoutPosition();
            return;
        }
        if (event == 6) {
            handleGetBattery(bundle);
            return;
        }
        if (event == 107) {
            this.userTrainAdapter.handleStopAllUser();
            return;
        }
        if (event == 101) {
            handleRefreshTrainUser(bundle);
            return;
        }
        if (event == 102) {
            handleDeviceConnectedRefreshUI(bundle);
        } else if (event == 1008) {
            handleDeviceDisConnected(bundle);
        } else if (event == 1009) {
            handleDeviceConnected(bundle);
        }
    }

    private void changeLayoutPosition() {
        if (UserData.getInstance().leftMode) {
            LinearLayout layout = (LinearLayout) getView();
            layout.bringChildToFront(this.leftLayout);
        } else {
            LinearLayout layout2 = (LinearLayout) getView();
            layout2.bringChildToFront(this.rightLayout);
        }
    }

    private void handleDeviceConnectedRefreshUI(DataBundle bundle) {
        final TrainUserProgramDataWrapper wrapper = (TrainUserProgramDataWrapper) bundle.getContent();
        if (wrapper == null) {
            Logger.logConsole("传递过来 wrapper为空===========================");
            return;
        }
        boolean success = DataMgr.getInstance().addTrainingUser(wrapper);
        Logger.logConsole("addTrainingUser   sucess ============================ " + wrapper + "   成功：" + success);
        if (success) {
            TimerUtils.delayCallback(new Runnable() { // from class: com.isaigu.gymapp.fragment.TrainFragment.8
                @Override // java.lang.Runnable
                public void run() {
                    TrainFragment.this.startGetBatteryTimer();
                }
            }, 1000L);
            getParentActivity().runOnUiThread(new Runnable() { // from class: com.isaigu.gymapp.fragment.TrainFragment.9
                @Override // java.lang.Runnable
                public void run() {
                    TrainFragment.this.userTrainAdapter.addUser(wrapper);
                }
            });
        }
    }

    public void startGetBatteryTimer() {
        stopGetBatteryTimer();
        this.batteryGetTimer = TimerUtils.scheduleTimer(new Runnable() { // from class: com.isaigu.gymapp.fragment.TrainFragment.10
            @Override // java.lang.Runnable
            public void run() {
                List<TrainUserProgramDataWrapper> dataWrapperList = TrainFragment.this.userTrainAdapter.getmData();
                if (dataWrapperList != null) {
                    synchronized (dataWrapperList) {
                        if (dataWrapperList != null) {
                            if (dataWrapperList.size() > 0) {
                                for (TrainUserProgramDataWrapper wrapper : dataWrapperList) {
                                    if (wrapper.connected) {
                                        ProtocolController.request_get_battery(wrapper.macAddress);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }, 0L, DateUtils.MILLIS_PER_MINUTE);
    }

    private void stopGetBatteryTimer() {
        TimerUtils.stopTimer(this.batteryGetTimer);
        this.batteryGetTimer = null;
    }

    private synchronized void handleDeviceConnected(DataBundle bundle) {
        if (getParentActivity().isFragmentShow(UserProgramDeviceConnectDialogFragment.class)) {
            MessageDispatcher.dispatchEventMessage((short) 104);
            Logger.logConsole("连接界面打开着，不理会蓝牙设备连接成功");
            return;
        }
        BleInterface.BluetoothDeviceModel model = (BleInterface.BluetoothDeviceModel) bundle.getContent();
        if (model != null) {
            this.userTrainAdapter.handleConnectionStatusChange(model.address, true);
            this.reconnectMap.remove(model.address);
            if (model != null && !StringUtils.isEmpty(model.address)) {
                TimerUtils.stopTimer(this.reconnectTimer.remove(model.address));
            }
            int i = 0;
            while (true) {
                if (i < this.userTrainAdapter.getmData().size()) {
                    TrainUserProgramDataWrapper wrapper = this.userTrainAdapter.getmData().get(i);
                    if (wrapper == null || wrapper.macAddress == null || !wrapper.macAddress.equals(model.address)) {
                        i++;
                    } else {
                        DataMgr.getInstance().addTrainingUser(wrapper);
                        break;
                    }
                } else {
                    break;
                }
            }
            MessageDispatcher.dispatchEventMessage((short) 104);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void handleDeviceDisConnected(final DataBundle bundle) {
        if (getParentActivity().isFragmentShow(LoginFragment.class)) {
            Logger.logConsole("控制界面没打开，不理会蓝牙设备连接断开");
            return;
        }
        final BleInterface.BluetoothDeviceModel model = (BleInterface.BluetoothDeviceModel) bundle.getContent();
        Logger.logConsole("设备断开： " + model);
        if (model != null) {
            DataMgr.getInstance().removeTrainingUser(model.address);
            List<TrainUserProgramDataWrapper> dataWrapperList = this.userTrainAdapter.getmData();
            if (dataWrapperList != null && dataWrapperList.size() > 0) {
                boolean reconnect = false;
                int i = 0;
                while (true) {
                    if (i >= dataWrapperList.size()) {
                        break;
                    }
                    if (!model.address.equals(dataWrapperList.get(i).macAddress)) {
                        i++;
                    } else {
                        reconnect = true;
                        TrainUserProgramDataWrapper wrapper = dataWrapperList.get(i);
                        this.userTrainAdapter.handleConnectionStatusChange(wrapper.macAddress, false);
                        break;
                    }
                }
                Logger.logConsole("reconnect: " + reconnect);
                if (reconnect) {
                    int count = this.reconnectMap.containsKey(model.address) ? this.reconnectMap.get(model.address).intValue() : 0;
                    if (count < 3) {
                        this.reconnectMap.put(model.address, Integer.valueOf(count + 1));
                        getParentActivity().runDelay(new Runnable() { // from class: com.isaigu.gymapp.fragment.TrainFragment.11
                            @Override // java.lang.Runnable
                            public void run() {
                                boolean success = BleMgr.getController().connectByAddress(model.address);
                                Logger.logConsole("reconnect status : " + success);
                                if (!success) {
                                    TrainFragment.this.handleDeviceDisConnected(bundle);
                                }
                            }
                        }, 3000L);
                    } else {
                        this.reconnectMap.remove(model.address);
                        Timer timer = TimerUtils.delayCallback(new Runnable() { // from class: com.isaigu.gymapp.fragment.TrainFragment.12
                            @Override // java.lang.Runnable
                            public void run() {
                                BleInterface.BluetoothDeviceModel bluetoothDeviceModel = model;
                                if (bluetoothDeviceModel != null && !StringUtils.isEmpty(bluetoothDeviceModel.address)) {
                                    TimerUtils.stopTimer((Timer) TrainFragment.this.reconnectTimer.remove(model.address));
                                }
                                TrainFragment.this.handleDeviceDisConnected(bundle);
                            }
                        }, 8000L);
                        TimerUtils.stopTimer(this.reconnectTimer.remove(model.address));
                        this.reconnectTimer.put(model.address, timer);
                    }
                }
            }
        }
    }

    private void handleRefreshTrainUser(DataBundle bundle) {
        List<TrainUserProgramDataWrapper> mdata = this.userTrainAdapter.getmData();
        for (TrainUserProgramDataWrapper wrapper : mdata) {
            if (wrapper.type == 0) {
                wrapper.trainUser = (TrainUser) BeanUtils.cloneObject(DataMgr.getInstance().getTrainUser(wrapper.trainUser.id));
                wrapper.trainProgram = (TrainProgram) BeanUtils.cloneObject(DataMgr.getInstance().getProgramData(wrapper.trainUser.trainName));
            }
        }
        this.userTrainAdapter.notifyDataSetChanged();
    }

    private void handleGetBattery(DataBundle bundle) {
        final byte[] content = (byte[]) bundle.getContent();
        final String address = (String) bundle.get(IMAPStore.ID_ADDRESS);
        runOnUiThread(new Runnable() { // from class: com.isaigu.gymapp.fragment.TrainFragment.13
            @Override // java.lang.Runnable
            public void run() {
                TrainFragment.this.userTrainAdapter.handleGetBattery(address, content[0]);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopClearSelectedTimer() {
        TimerUtils.stopTimer(this.clearSelectTimer);
        this.clearSelectTimer = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startClearSelectedTimer() {
        stopClearSelectedTimer();
        this.clearSelectTimer = TimerUtils.delayCallback(new Runnable() { // from class: com.isaigu.gymapp.fragment.TrainFragment.16
            @Override // java.lang.Runnable
            public void run() {
                TrainFragment.this.getParentActivity().runOnUiThread(new Runnable() { // from class: com.isaigu.gymapp.fragment.TrainFragment.16.1
                    @Override // java.lang.Runnable
                    public void run() {
                        TrainFragment.this.userTrainAdapter.clearAllPartSelect();
                        TrainFragment.this.userTrainAdapter.clearAllMASelect();
                    }
                });
            }
        }, 4000L);
    }

    public class UserTrainAdapter extends RecyclerView.Adapter {
        private int[][] colorArray;
        private int[] maButtonBackgroundArray = {R.drawable.light_green_button_drawable_r30, R.drawable.light_purple_button_drawable_r30, R.drawable.green_button_drawable_r30, R.drawable.light_green_button_drawable_r30, R.drawable.light_purple_button_drawable_r30, R.drawable.green_button_drawable_r30};
        private List<TrainUserProgramDataWrapper> mData = new LinkedList();
        private List<boolean[]> buweiSelected = new LinkedList();
        private List<Boolean> maSelected = new LinkedList();
        public Map<String, UserTrainControlHolder> userTrainControlHolders = new HashMap();
        private HashMap<String, Timer> timerMap = new HashMap<>();

        public UserTrainAdapter(ArrayList<TrainUserProgramDataWrapper> data) {
            this.colorArray = new int[][]{new int[]{TrainFragment.this.getColor(R.color.light_green_color), TrainFragment.this.getColor(R.color.light_green_color), TrainFragment.this.getColor(R.color.dark_green_color)}, new int[]{TrainFragment.this.getColor(R.color.light_purple_color), TrainFragment.this.getColor(R.color.dark_purple_color), TrainFragment.this.getColor(R.color.dark_purple_color)}, new int[]{TrainFragment.this.getColor(R.color.yellow_color), TrainFragment.this.getColor(R.color.yellow_color), TrainFragment.this.getColor(R.color.green_color)}, new int[]{TrainFragment.this.getColor(R.color.light_green_color), TrainFragment.this.getColor(R.color.light_green_color), TrainFragment.this.getColor(R.color.dark_green_color)}, new int[]{TrainFragment.this.getColor(R.color.light_purple_color), TrainFragment.this.getColor(R.color.dark_purple_color), TrainFragment.this.getColor(R.color.dark_purple_color)}, new int[]{TrainFragment.this.getColor(R.color.yellow_color), TrainFragment.this.getColor(R.color.yellow_color), TrainFragment.this.getColor(R.color.green_color)}};
            updateAdapter(data);
        }

        public void updateAdapter(ArrayList<TrainUserProgramDataWrapper> data) {
            this.mData = data;
            if (data == null) {
                this.mData = new ArrayList();
            }
            for (int i = 0; i < this.mData.size(); i++) {
                this.buweiSelected.add(new boolean[]{false, false, false, false, false, false, false, false, false, false});
                this.maSelected.add(false);
            }
            this.userTrainControlHolders.clear();
            emptyItemCheck();
            notifyDataSetChanged();
        }

        public List<TrainUserProgramDataWrapper> getmData() {
            return this.mData;
        }

        private void emptyItemCheck() {
            if (DataMgr.singleMode && this.mData.size() < 1) {
                TrainUserProgramDataWrapper wrapper = new TrainUserProgramDataWrapper();
                wrapper.type = 1;
                this.mData.add(wrapper);
            }
            if (!DataMgr.singleMode) {
                if (this.mData.size() < 3) {
                    int size = this.mData.size();
                    for (int i = 0; i < 3 - size; i++) {
                        TrainUserProgramDataWrapper wrapper2 = new TrainUserProgramDataWrapper();
                        wrapper2.type = 1;
                        this.mData.add(wrapper2);
                    }
                } else {
                    boolean allItem = true;
                    for (int i2 = 0; i2 < this.mData.size(); i2++) {
                        if (this.mData.get(i2).type == 1) {
                            allItem = false;
                        }
                    }
                    if (allItem && this.mData.size() < 6) {
                        TrainUserProgramDataWrapper wrapper3 = new TrainUserProgramDataWrapper();
                        wrapper3.type = 1;
                        this.mData.add(wrapper3);
                    }
                }
                int itemCount = 0;
                int emptyCount = 0;
                for (int i3 = 0; i3 < this.mData.size(); i3++) {
                    if (this.mData.get(i3).type == 1) {
                        emptyCount++;
                    } else if (this.mData.get(i3).type == 0) {
                        itemCount++;
                    }
                }
                int i4 = itemCount + emptyCount;
                if (i4 > 3 && emptyCount > 1) {
                    List<TrainUserProgramDataWrapper> list = this.mData;
                    list.remove(list.size() - 1);
                }
            }
        }

        public synchronized void addUser(TrainUserProgramDataWrapper data) {
            if (data == null) {
                Logger.logConsole("synchronized  addUser data = " + data);
                return;
            }
            Logger.logConsole("当前模式 ： " + DataMgr.singleMode + "   " + this.mData.size() + "   " + this.mData);
            if (DataMgr.singleMode) {
                if (this.mData.size() >= 1 && this.mData.get(0).type == 1) {
                    boolean containEmpty = false;
                    int i = 0;
                    while (true) {
                        if (i >= this.mData.size()) {
                            break;
                        }
                        if (this.mData.get(i).type != 1) {
                            i++;
                        } else {
                            this.mData.set(i, data);
                            containEmpty = true;
                            break;
                        }
                    }
                    if (!containEmpty && this.mData.size() < 6) {
                        this.mData.add(data);
                    }
                    if (containEmpty) {
                        this.buweiSelected.add(new boolean[]{false, false, false, false, false, false, false, false, false, false});
                        this.maSelected.add(false);
                        this.userTrainControlHolders.clear();
                    }
                }
            } else if (this.mData.size() <= 6) {
                boolean containEmpty2 = false;
                int i2 = 0;
                while (true) {
                    if (i2 >= this.mData.size()) {
                        break;
                    }
                    if (this.mData.get(i2).type != 1) {
                        i2++;
                    } else {
                        this.mData.set(i2, data);
                        containEmpty2 = true;
                        break;
                    }
                }
                if (!containEmpty2 && this.mData.size() < 6) {
                    this.mData.add(data);
                }
                if (containEmpty2) {
                    this.buweiSelected.add(new boolean[]{false, false, false, false, false, false, false, false, false, false});
                    this.maSelected.add(false);
                    this.userTrainControlHolders.clear();
                }
            }
            emptyItemCheck();
            notifyDataSetChanged();
        }

        public synchronized void removeUser(int index) {
            if (this.mData != null && this.mData.size() >= index - 1 && !this.mData.get(index).start && this.mData.get(index).type != 1) {
                TrainUserProgramDataWrapper wrapper = this.mData.remove(index);
                DataMgr.getInstance().removeTrainingUser(wrapper.macAddress);
                BleMgr.getController().disconnectByAddress(wrapper.macAddress);
                this.buweiSelected.remove(index);
                this.maSelected.remove(index);
                this.userTrainControlHolders.remove(Integer.valueOf(index));
                TrainFragment.this.reconnectMap.remove(wrapper.macAddress);
                TrainFragment.this.reconnectTimer.remove(wrapper.macAddress);
                emptyItemCheck();
                notifyDataSetChanged();
            }
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
            if (viewType == 0) {
                View view = View.inflate(parent.getContext(), R.layout.user_train_control_item_layout, null);
                LinearLayout.LayoutParams params = (LinearLayout.LayoutParams) view.getLayoutParams();
                if (params == null) {
                    params = new LinearLayout.LayoutParams(0, 0);
                }
                params.width = -1;
                params.height = TrainFragment.this.getResources().getDisplayMetrics().heightPixels / 4;
                view.setLayoutParams(params);
                return new UserTrainControlHolder(view);
            }
            View view2 = View.inflate(parent.getContext(), R.layout.train_empty_item_layout, null);
            LinearLayout.LayoutParams params2 = (LinearLayout.LayoutParams) view2.getLayoutParams();
            if (params2 == null) {
                params2 = new LinearLayout.LayoutParams(0, 0);
            }
            params2.width = -1;
            params2.height = TrainFragment.this.getResources().getDisplayMetrics().heightPixels / 4;
            view2.setLayoutParams(params2);
            return new EmptyViewHolder(view2);
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int position) {
            if (getItemViewType(position) == 0) {
                UserTrainControlHolder userHolder = (UserTrainControlHolder) holder;
                this.userTrainControlHolders.put(String.valueOf(position), userHolder);
                Logger.logConsole("holder position : " + position);
                TrainUserProgramDataWrapper wrapper = this.mData.get(position);
                if (wrapper == null || wrapper.trainUser == null || TextUtils.isEmpty(wrapper.trainUser.iconUrl) || wrapper.trainUser.iconUrl.equals("sample")) {
                    Glide.with((FragmentActivity) TrainFragment.this.getParentActivity()).load(Integer.valueOf(R.mipmap.icon_sample)).centerCrop().transform(new GlideCircleTransform(TrainFragment.this.getParentActivity())).into(userHolder.userIcon);
                } else {
                    Glide.with((FragmentActivity) TrainFragment.this.getParentActivity()).load(wrapper.trainUser.iconUrl).centerCrop().transform(new GlideCircleTransform(TrainFragment.this.getParentActivity())).into(userHolder.userIcon);
                }
                TrainProgram trainProgram = wrapper.trainProgram;
                if (trainProgram == null || wrapper.trainUser == null) {
                    Logger.logConsole("data bean null : " + wrapper);
                    return;
                }
                addListener(userHolder, wrapper, position);
                updateUI(userHolder, wrapper, position);
                updateTime(userHolder, position);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void handleGetBattery(String address, byte battery) {
            try {
                if (this.mData != null) {
                    synchronized (this.mData) {
                        if (this.mData.size() > 0) {
                            for (int i = 0; i < this.mData.size(); i++) {
                                try {
                                    if (this.mData.size() > i) {
                                        TrainUserProgramDataWrapper wrapper = this.mData.get(i);
                                        UserTrainControlHolder holder = this.userTrainControlHolders.get(String.valueOf(i));
                                        if (holder != null && wrapper != null && wrapper.macAddress.equals(address)) {
                                            wrapper.batteryValue = battery;
                                            holder.batterView.setProgress(battery);
                                            holder.batteryValueTextView.setText(this.mData.get(i).batteryValue + "");
                                            break;
                                        }
                                    } else {
                                        continue;
                                    }
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                            }
                        }
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        public boolean isSomeoneStart() {
            for (int i = 0; i < this.mData.size(); i++) {
                TrainUserProgramDataWrapper wrapper = this.mData.get(i);
                if (wrapper != null && wrapper.type == 0 && wrapper.start) {
                    return true;
                }
            }
            return false;
        }

        public void handleStartPauseAllUser() {
            UserTrainControlHolder userTrainControlHolder;
            for (int i = 0; i < this.mData.size(); i++) {
                try {
                    TrainUserProgramDataWrapper wrapper = this.mData.get(i);
                    if (wrapper.type == 0 && (userTrainControlHolder = this.userTrainControlHolders.get(String.valueOf(i))) != null) {
                        wrapper.inStart = false;
                        wrapper.secondValue = 0;
                        if (!wrapper.start) {
                            wrapper.start = true;
                            firstUpdatePulseContinue(userTrainControlHolder, wrapper);
                        } else {
                            wrapper.start = false;
                        }
                        if (wrapper.start) {
                            ProtocolController.request_set_start(wrapper.macAddress);
                        }
                        set_mode_10_part_parameter(wrapper.macAddress, wrapper.trainProgram.useType, wrapper.trainProgram.matchProgram());
                        set_mode_other_10_part_parameter(wrapper.macAddress, wrapper.trainProgram.useType, wrapper.trainProgram.matchProgram(), wrapper.start);
                        if (!wrapper.start) {
                            ProtocolController.request_set_stop(wrapper.macAddress);
                        }
                        updateUI(userTrainControlHolder, this.mData.get(i), i);
                        updateTime(userTrainControlHolder, i);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            }
        }

        public void handleStartPauseAllUser(boolean start) {
            UserTrainControlHolder userTrainControlHolder;
            for (int i = 0; i < this.mData.size(); i++) {
                try {
                    TrainUserProgramDataWrapper wrapper = this.mData.get(i);
                    if (wrapper.type == 0 && (userTrainControlHolder = this.userTrainControlHolders.get(String.valueOf(i))) != null) {
                        wrapper.inStart = false;
                        wrapper.secondValue = 0;
                        wrapper.start = start;
                        if (wrapper.start) {
                            firstUpdatePulseContinue(userTrainControlHolder, wrapper);
                        }
                        if (wrapper.start) {
                            ProtocolController.request_set_start(wrapper.macAddress);
                        }
                        set_mode_10_part_parameter(wrapper.macAddress, wrapper.trainProgram.useType, wrapper.trainProgram.matchProgram());
                        set_mode_other_10_part_parameter(wrapper.macAddress, wrapper.trainProgram.useType, wrapper.trainProgram.matchProgram(), wrapper.start);
                        if (!wrapper.start) {
                            ProtocolController.request_set_stop(wrapper.macAddress);
                        }
                        updateUI(userTrainControlHolder, this.mData.get(i), i);
                        updateTime(userTrainControlHolder, i);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            }
        }

        public void handleStopAllUser() {
            for (int i = 0; i < this.mData.size(); i++) {
                TrainUserProgramDataWrapper wrapper = this.mData.get(i);
                if (wrapper.start && wrapper.type == 0) {
                    UserTrainControlHolder holder = this.userTrainControlHolders.get(String.valueOf(i));
                    stopUser(holder, wrapper, i);
                    ProtocolController.request_set_stop(wrapper.macAddress);
                }
            }
        }

        public void handleRowAndIndexOperation(int row, int index) {
            if (row < 0 || row > this.mData.size() - 1 || index < 0 || index > 9) {
                return;
            }
            this.buweiSelected.get(row)[index] = !this.buweiSelected.get(row)[index];
            updateUI(this.userTrainControlHolders.get(String.valueOf(row)), this.mData.get(row), row);
        }

        public void handleRowOperation(int index) {
            if (index < 0 || index > this.maSelected.size() - 1) {
                return;
            }
            this.maSelected.set(index, Boolean.valueOf(!r0.get(index).booleanValue()));
            UserTrainControlHolder holder = this.userTrainControlHolders.get(String.valueOf(index));
            if (!this.maSelected.get(index).booleanValue()) {
                TrainFragment.this.stopClearSelectedTimer();
                holder.ma.setBackgroundResource(R.drawable.light_black_button_drawable_r30);
            } else {
                holder.ma.setBackgroundResource(this.maButtonBackgroundArray[index]);
                TrainFragment.this.startClearSelectedTimer();
            }
            updateUI(holder, this.mData.get(index), index);
        }

        public void handleColumnOperation(int index) {
            if (index < 0 || index > 9) {
                return;
            }
            boolean allSelect = true;
            int i = 0;
            while (true) {
                if (i >= this.buweiSelected.size()) {
                    break;
                }
                if (this.buweiSelected.get(i)[index]) {
                    i++;
                } else {
                    allSelect = false;
                    break;
                }
            }
            boolean value = false;
            if (!allSelect) {
                value = true;
            }
            for (int i2 = 0; i2 < this.buweiSelected.size(); i2++) {
                this.buweiSelected.get(i2)[index] = value;
                UserTrainControlHolder holder = this.userTrainControlHolders.get(String.valueOf(i2));
                updateUI(holder, this.mData.get(i2), i2);
            }
        }

        public void clearAllPartSelect() {
            for (int i = 0; i < this.buweiSelected.size(); i++) {
                for (int j = 0; j < this.buweiSelected.get(i).length; j++) {
                    this.buweiSelected.get(i)[j] = false;
                }
                UserTrainControlHolder holder = this.userTrainControlHolders.get(String.valueOf(i));
                updateUI(holder, this.mData.get(i), i);
            }
        }

        public void clearAllMASelect() {
            for (int i = 0; i < this.maSelected.size(); i++) {
                this.maSelected.set(i, false);
                UserTrainControlHolder holder = this.userTrainControlHolders.get(String.valueOf(i));
                updateUI(holder, this.mData.get(i), i);
            }
        }

        private boolean isPartSelected() {
            boolean select = false;
            for (int i = 0; i < this.buweiSelected.size(); i++) {
                int j = 0;
                while (true) {
                    if (j >= this.buweiSelected.get(i).length) {
                        break;
                    }
                    if (!this.buweiSelected.get(i)[j]) {
                        j++;
                    } else {
                        select = true;
                        break;
                    }
                }
                if (select) {
                    break;
                }
            }
            return select;
        }

        private boolean isRowSelected() {
            for (int i = 0; i < this.maSelected.size(); i++) {
                if (this.maSelected.get(i).booleanValue()) {
                    return true;
                }
            }
            return false;
        }

        public void handleStrenthChange(int value) {
            if (isPartSelected()) {
                for (int i = 0; i < this.buweiSelected.size(); i++) {
                    TrainUserProgramDataWrapper wrapper = this.mData.get(i);
                    if (wrapper.type == 0) {
                        ProgramDataBean dataBean = wrapper.trainProgram.matchProgram();
                        if (wrapper.start) {
                            boolean contain = false;
                            for (int j = 0; j < this.buweiSelected.get(i).length; j++) {
                                if (this.buweiSelected.get(i)[j]) {
                                    contain = true;
                                    int strenth = dataBean.strenth;
                                    if (strenth > 0) {
                                        int vStrenth = MathUtils.clamp(Math.round((dataBean.strenthBean.buwei[j] / 100.0f) * strenth) + value, 0, strenth);
                                        if (value > 0) {
                                            dataBean.strenthBean.buwei[j] = Math.round((vStrenth * 100.0f) / strenth);
                                        } else {
                                            dataBean.strenthBean.buwei[j] = Math.round((vStrenth * 100.0f) / strenth);
                                        }
                                    }
                                }
                            }
                            if (contain) {
                                set_mode_10_part_parameter(wrapper.macAddress, wrapper.trainProgram.useType, dataBean);
                            }
                        }
                        UserTrainControlHolder holder = this.userTrainControlHolders.get(String.valueOf(i));
                        updateUI(holder, this.mData.get(i), i);
                    }
                }
                return;
            }
            if (isRowSelected()) {
                for (int i2 = 0; i2 < this.maSelected.size(); i2++) {
                    TrainUserProgramDataWrapper wrapper2 = this.mData.get(i2);
                    if (this.maSelected.get(i2).booleanValue() && wrapper2.type == 0) {
                        ProgramDataBean dataBean2 = wrapper2.trainProgram.matchProgram();
                        if (wrapper2.start) {
                            dataBean2.strenth += value;
                            if (dataBean2.strenth > 100) {
                                dataBean2.strenth = 100;
                            }
                            if (dataBean2.strenth < 0) {
                                dataBean2.strenth = 0;
                            }
                            set_mode_10_part_parameter(wrapper2.macAddress, wrapper2.trainProgram.useType, dataBean2);
                        }
                        UserTrainControlHolder holder2 = this.userTrainControlHolders.get(String.valueOf(i2));
                        updateUI(holder2, this.mData.get(i2), i2);
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateTime(UserTrainControlHolder userHolder, int position) {
            if (userHolder == null || position < 0 || position > this.mData.size() - 1) {
                return;
            }
            TrainUserProgramDataWrapper wrapper = this.mData.get(position);
            if (wrapper.start) {
                startTimer(wrapper, userHolder, position);
            } else {
                stopTimer(wrapper, userHolder, position);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized void stopTimer(TrainUserProgramDataWrapper wrapper, final UserTrainControlHolder userHolder, int position) {
            if (wrapper == null || userHolder == null) {
                return;
            }
            if (this.timerMap.containsKey(wrapper.macAddress)) {
                TimerUtils.stopTimer(this.timerMap.remove(wrapper.macAddress));
                TrainFragment.this.getParentActivity().runOnUiThread(new Runnable() { // from class: com.isaigu.gymapp.fragment.TrainFragment.UserTrainAdapter.1
                    @Override // java.lang.Runnable
                    public void run() {
                        userHolder.waveBllTextView.setVisibility(4);
                        userHolder.waveBllTextView.setText(String.valueOf(0));
                        userHolder.waveBallProgress.setVisibility(4);
                    }
                });
            }
        }

        private synchronized void startTimer(TrainUserProgramDataWrapper wrapper, UserTrainControlHolder userHolder, int position) {
            if (wrapper == null || userHolder == null) {
                return;
            }
            stopTimer(wrapper, userHolder, position);
            Timer timer = TimerUtils.scheduleTimer(new AnonymousClass2(wrapper, userHolder, position), 1000L, 1000L);
            this.timerMap.put(wrapper.macAddress, timer);
        }

        /* renamed from: com.isaigu.gymapp.fragment.TrainFragment$UserTrainAdapter$2, reason: invalid class name */
        class AnonymousClass2 implements Runnable {
            final /* synthetic */ int val$position;
            final /* synthetic */ UserTrainControlHolder val$userHolder;
            final /* synthetic */ TrainUserProgramDataWrapper val$wrapper;

            AnonymousClass2(TrainUserProgramDataWrapper trainUserProgramDataWrapper, UserTrainControlHolder userTrainControlHolder, int i) {
                this.val$wrapper = trainUserProgramDataWrapper;
                this.val$userHolder = userTrainControlHolder;
                this.val$position = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                final ProgramDataBean bean = this.val$wrapper.trainProgram.matchProgram();
                bean.workLength--;
                TrainFragment.this.getParentActivity().runOnUiThread(new Runnable() { // from class: com.isaigu.gymapp.fragment.TrainFragment.UserTrainAdapter.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AnonymousClass2.this.val$userHolder.time.setText(CommonUtils.formatTime(bean.workLength));
                    }
                });
                if (bean.workLength <= 0) {
                    bean.workLength--;
                    TrainFragment.this.getParentActivity().runOnUiThread(new Runnable() { // from class: com.isaigu.gymapp.fragment.TrainFragment.UserTrainAdapter.2.2
                        @Override // java.lang.Runnable
                        public void run() {
                            UserTrainAdapter.this.stopUser(AnonymousClass2.this.val$userHolder, AnonymousClass2.this.val$wrapper, AnonymousClass2.this.val$position);
                        }
                    });
                    UserTrainAdapter.this.stopTimer(this.val$wrapper, this.val$userHolder, this.val$position);
                    ProtocolController.request_set_stop(this.val$wrapper.macAddress);
                    TrainRecordDTO trainRecordDTO = (TrainRecordDTO) TrainFragment.this.trainRecordMap.get(this.val$wrapper.macAddress);
                    if (trainRecordDTO != null) {
                        if (NetworkUtils.isNetworkConnected(TrainFragment.this.getParentActivity())) {
                            ApiMgr.addTrainRecord(trainRecordDTO, new OKHttpUtils.HttpResponseCallback<ResponseData<Object>>() { // from class: com.isaigu.gymapp.fragment.TrainFragment.UserTrainAdapter.2.3
                                @Override // com.isaigu.gymapp.utils.OKHttpUtils.HttpResponseCallback
                                public /* bridge */ /* synthetic */ void httpResponse(boolean z, String str, ResponseData<Object> responseData) {
                                    httpResponse2(z, str, (ResponseData) responseData);
                                }

                                /* renamed from: httpResponse, reason: avoid collision after fix types in other method */
                                public void httpResponse2(boolean httpSuccess, String message, ResponseData result) {
                                    if (httpSuccess && result != null && result.isSuccess()) {
                                        ApiMgr.getUserCustomers(DataMgr.getInstance().loginUser.id, new OKHttpUtils.HttpResponseCallback<ResponseData<List<TrainUser>>>() { // from class: com.isaigu.gymapp.fragment.TrainFragment.UserTrainAdapter.2.3.1
                                            @Override // com.isaigu.gymapp.utils.OKHttpUtils.HttpResponseCallback
                                            public void httpResponse(boolean httpSuccess2, String message2, ResponseData<List<TrainUser>> result2) {
                                                if (httpSuccess2 && result2.getCode() == 0) {
                                                    DataMgr.getInstance().trainUsers = result2.getData();
                                                    FileUtils.saveListData(Constants.file_name_user_data, TrainUser.class, DataMgr.getInstance().trainUsers);
                                                }
                                                MessageDispatcher.dispatchEventMessage((short) 105);
                                            }
                                        });
                                    }
                                }
                            });
                            return;
                        }
                        List<TrainRecordDTO> offlineData = (List) FileUtils.getDataList(Constants.file_name_offline_train_record_data, TrainRecordDTO.class);
                        offlineData.add(trainRecordDTO);
                        FileUtils.saveListData(Constants.file_name_offline_train_record_data, TrainRecordDTO.class, offlineData);
                        return;
                    }
                    return;
                }
                if (!this.val$wrapper.inStart) {
                    this.val$wrapper.secondValue++;
                    TrainFragment.this.getParentActivity().runOnUiThread(new Runnable() { // from class: com.isaigu.gymapp.fragment.TrainFragment.UserTrainAdapter.2.4
                        @Override // java.lang.Runnable
                        public void run() {
                            int progress = 0;
                            if (bean.pulseContinue != 0) {
                                progress = (int) (((AnonymousClass2.this.val$wrapper.secondValue * 1.0f) / bean.pulseContinue) * 30.0f);
                            }
                            AnonymousClass2.this.val$userHolder.waveBallProgress.setVisibility(0);
                            AnonymousClass2.this.val$userHolder.waveBallProgress.setProgress(progress);
                            AnonymousClass2.this.val$userHolder.waveBallProgress.setWaveColor(TrainFragment.this.getColor(R.color.wave_color_green));
                            AnonymousClass2.this.val$userHolder.waveBllTextView.setVisibility(0);
                            int value = bean.pulseContinue - AnonymousClass2.this.val$wrapper.secondValue >= 0 ? bean.pulseContinue - AnonymousClass2.this.val$wrapper.secondValue : 0;
                            AnonymousClass2.this.val$userHolder.waveBllTextView.setText(String.valueOf(value));
                            AnonymousClass2.this.val$userHolder.waveBllTextView.setTextColor(TrainFragment.this.getColor(R.color.wave_color_green));
                            if (bean.pulseContinue - AnonymousClass2.this.val$wrapper.secondValue <= 0) {
                                if (bean.pulsePause <= 0) {
                                    UserTrainAdapter.this.set_mode_other_10_part_parameter(AnonymousClass2.this.val$wrapper.macAddress, AnonymousClass2.this.val$wrapper.trainProgram.useType, bean, AnonymousClass2.this.val$wrapper.start);
                                }
                                TrainFragment.this.getParentActivity().runDelay(new Runnable() { // from class: com.isaigu.gymapp.fragment.TrainFragment.UserTrainAdapter.2.4.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        if (bean.pulsePause > 0) {
                                            AnonymousClass2.this.val$wrapper.secondValue = 0;
                                            AnonymousClass2.this.val$wrapper.inStart = true;
                                            int progress2 = 0;
                                            if (bean.pulsePause != 0) {
                                                progress2 = (int) (((AnonymousClass2.this.val$wrapper.secondValue * 1.0f) / bean.pulsePause) * 30.0f);
                                            }
                                            AnonymousClass2.this.val$userHolder.waveBallProgress.setVisibility(0);
                                            AnonymousClass2.this.val$userHolder.waveBallProgress.setProgress(progress2);
                                            AnonymousClass2.this.val$userHolder.waveBallProgress.setWaveColor(TrainFragment.this.getColor(R.color.wave_color_red));
                                            AnonymousClass2.this.val$userHolder.waveBllTextView.setVisibility(0);
                                            int value2 = bean.pulsePause - AnonymousClass2.this.val$wrapper.secondValue >= 0 ? bean.pulsePause - AnonymousClass2.this.val$wrapper.secondValue : 0;
                                            AnonymousClass2.this.val$userHolder.waveBllTextView.setText(String.valueOf(value2));
                                            AnonymousClass2.this.val$userHolder.waveBllTextView.setTextColor(TrainFragment.this.getColor(R.color.wave_color_red));
                                            return;
                                        }
                                        AnonymousClass2.this.val$wrapper.secondValue = 0;
                                        AnonymousClass2.this.val$wrapper.inStart = false;
                                        int progress3 = 0;
                                        if (bean.pulseContinue != 0) {
                                            progress3 = (int) (((AnonymousClass2.this.val$wrapper.secondValue * 1.0f) / bean.pulseContinue) * 30.0f);
                                        }
                                        AnonymousClass2.this.val$userHolder.waveBallProgress.setVisibility(0);
                                        AnonymousClass2.this.val$userHolder.waveBallProgress.setProgress(progress3);
                                        AnonymousClass2.this.val$userHolder.waveBallProgress.setWaveColor(TrainFragment.this.getColor(R.color.wave_color_green));
                                        AnonymousClass2.this.val$userHolder.waveBllTextView.setVisibility(0);
                                        int value3 = bean.pulseContinue - AnonymousClass2.this.val$wrapper.secondValue >= 0 ? bean.pulseContinue - AnonymousClass2.this.val$wrapper.secondValue : 0;
                                        AnonymousClass2.this.val$userHolder.waveBllTextView.setText(String.valueOf(value3));
                                        AnonymousClass2.this.val$userHolder.waveBllTextView.setTextColor(TrainFragment.this.getColor(R.color.wave_color_green));
                                    }
                                }, 200L);
                            }
                        }
                    });
                } else {
                    this.val$wrapper.secondValue++;
                    TrainFragment.this.getParentActivity().runOnUiThread(new Runnable() { // from class: com.isaigu.gymapp.fragment.TrainFragment.UserTrainAdapter.2.5
                        @Override // java.lang.Runnable
                        public void run() {
                            int progress = 0;
                            if (bean.pulsePause != 0) {
                                progress = (int) (((AnonymousClass2.this.val$wrapper.secondValue * 1.0f) / bean.pulsePause) * 30.0f);
                            }
                            AnonymousClass2.this.val$userHolder.waveBallProgress.setVisibility(0);
                            AnonymousClass2.this.val$userHolder.waveBallProgress.setProgress(progress);
                            AnonymousClass2.this.val$userHolder.waveBallProgress.setWaveColor(TrainFragment.this.getColor(R.color.wave_color_red));
                            AnonymousClass2.this.val$userHolder.waveBllTextView.setVisibility(0);
                            int value = bean.pulsePause - AnonymousClass2.this.val$wrapper.secondValue >= 0 ? bean.pulsePause - AnonymousClass2.this.val$wrapper.secondValue : 0;
                            AnonymousClass2.this.val$userHolder.waveBllTextView.setText(String.valueOf(value));
                            AnonymousClass2.this.val$userHolder.waveBllTextView.setTextColor(TrainFragment.this.getColor(R.color.wave_color_red));
                            if (bean.pulsePause - AnonymousClass2.this.val$wrapper.secondValue <= 0) {
                                UserTrainAdapter.this.set_mode_other_10_part_parameter(AnonymousClass2.this.val$wrapper.macAddress, AnonymousClass2.this.val$wrapper.trainProgram.useType, bean, AnonymousClass2.this.val$wrapper.start);
                                TrainFragment.this.getParentActivity().runDelay(new Runnable() { // from class: com.isaigu.gymapp.fragment.TrainFragment.UserTrainAdapter.2.5.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        if (bean.pulseContinue > 0) {
                                            AnonymousClass2.this.val$wrapper.secondValue = 0;
                                            AnonymousClass2.this.val$wrapper.inStart = false;
                                            int progress2 = 0;
                                            if (bean.pulseContinue != 0) {
                                                progress2 = (int) (((AnonymousClass2.this.val$wrapper.secondValue * 1.0f) / bean.pulseContinue) * 30.0f);
                                            }
                                            AnonymousClass2.this.val$userHolder.waveBallProgress.setVisibility(0);
                                            AnonymousClass2.this.val$userHolder.waveBallProgress.setProgress(progress2);
                                            AnonymousClass2.this.val$userHolder.waveBallProgress.setWaveColor(TrainFragment.this.getColor(R.color.wave_color_green));
                                            AnonymousClass2.this.val$userHolder.waveBllTextView.setVisibility(0);
                                            int value2 = bean.pulseContinue - AnonymousClass2.this.val$wrapper.secondValue >= 0 ? bean.pulseContinue - AnonymousClass2.this.val$wrapper.secondValue : 0;
                                            AnonymousClass2.this.val$userHolder.waveBllTextView.setText(String.valueOf(value2));
                                            AnonymousClass2.this.val$userHolder.waveBllTextView.setTextColor(TrainFragment.this.getColor(R.color.wave_color_green));
                                            return;
                                        }
                                        AnonymousClass2.this.val$wrapper.secondValue = 0;
                                        AnonymousClass2.this.val$wrapper.inStart = true;
                                        int progress3 = 0;
                                        if (bean.pulsePause != 0) {
                                            progress3 = (int) (((AnonymousClass2.this.val$wrapper.secondValue * 1.0f) / bean.pulsePause) * 30.0f);
                                        }
                                        AnonymousClass2.this.val$userHolder.waveBallProgress.setVisibility(0);
                                        AnonymousClass2.this.val$userHolder.waveBallProgress.setProgress(progress3);
                                        AnonymousClass2.this.val$userHolder.waveBallProgress.setWaveColor(TrainFragment.this.getColor(R.color.wave_color_red));
                                        AnonymousClass2.this.val$userHolder.waveBllTextView.setVisibility(0);
                                        int value3 = bean.pulsePause - AnonymousClass2.this.val$wrapper.secondValue >= 0 ? bean.pulsePause - AnonymousClass2.this.val$wrapper.secondValue : 0;
                                        AnonymousClass2.this.val$userHolder.waveBllTextView.setText(String.valueOf(value3));
                                        AnonymousClass2.this.val$userHolder.waveBllTextView.setTextColor(TrainFragment.this.getColor(R.color.wave_color_red));
                                    }
                                }, 200L);
                            }
                        }
                    });
                }
            }
        }

        public synchronized void handleConnectionStatusChange(final String macAddress, final boolean connected) {
            TrainFragment.this.runOnUiThread(new Runnable() { // from class: com.isaigu.gymapp.fragment.TrainFragment.UserTrainAdapter.3
                @Override // java.lang.Runnable
                public void run() {
                    for (int i = 0; i < UserTrainAdapter.this.mData.size(); i++) {
                        int fi = i;
                        TrainUserProgramDataWrapper wrapper = (TrainUserProgramDataWrapper) UserTrainAdapter.this.mData.get(i);
                        UserTrainControlHolder holder = UserTrainAdapter.this.userTrainControlHolders.get(String.valueOf(i));
                        if (holder != null && wrapper.macAddress != null && wrapper.macAddress.equals(macAddress)) {
                            wrapper.connected = connected;
                            if (!connected) {
                                UserTrainAdapter.this.removeTrainRecord(macAddress);
                            }
                            wrapper.inStart = false;
                            wrapper.start = false;
                            wrapper.secondValue = 0;
                            holder.waveBllTextView.setVisibility(4);
                            holder.waveBllTextView.setText(String.valueOf(0));
                            holder.waveBallProgress.setVisibility(4);
                            holder.waveBallProgress.setProgress(0);
                            UserTrainAdapter.this.updateUI(holder, wrapper, fi);
                            UserTrainAdapter.this.updateTime(holder, fi);
                            return;
                        }
                    }
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateUI(UserTrainControlHolder userHolder, TrainUserProgramDataWrapper wrapper, int position) {
            if (wrapper == null || wrapper.trainUser == null || userHolder == null || wrapper.trainProgram == null || position < 0 || TrainFragment.this.getActivity() == null) {
                return;
            }
            TrainProgram program = wrapper.trainProgram;
            TrainUser trainUser = wrapper.trainUser;
            if (!this.mData.get(position).connected) {
                userHolder.signalImage.setBackgroundResource(R.mipmap.signal2);
            } else {
                userHolder.signalImage.setBackgroundResource(R.mipmap.signal);
            }
            userHolder.batterView.setProgress(this.mData.get(position).batteryValue);
            userHolder.batteryValueTextView.setText(this.mData.get(position).batteryValue + "");
            ProgramDataBean programDataBean = program.matchProgram();
            for (int i = 0; i < 10; i++) {
                VerticalColorSeekBar verticalColorSeekBar = userHolder.verticalColorSeekBars[i];
                int[][] iArr = this.colorArray;
                verticalColorSeekBar.setColorArray(iArr[position][2], iArr[position][1], iArr[position][0]);
                userHolder.verticalColorSeekBars[i].setProgress(programDataBean.strenthBean.buwei[i]);
                userHolder.textViews[i].setText(String.format(TrainFragment.this.getString(R.string.maValue), Integer.valueOf(Math.round((programDataBean.strenthBean.buwei[i] / 100.0f) * programDataBean.strenth))));
                userHolder.textViews[i].setTextColor(TrainFragment.this.getColor(R.color.light_black_color));
                if (this.buweiSelected.get(position)[i]) {
                    userHolder.textViews[i].setTextColor(this.colorArray[position][0]);
                }
            }
            CircleSeekBar circleSeekBar = userHolder.seekBar;
            int[][] iArr2 = this.colorArray;
            circleSeekBar.setSectionColors(iArr2[position][0], iArr2[position][1], iArr2[position][2]);
            userHolder.ma.setText(String.format(TrainFragment.this.getString(R.string.maValue), Integer.valueOf(programDataBean.strenth)));
            if (this.maSelected.get(position).booleanValue()) {
                userHolder.ma.setBackgroundResource(this.maButtonBackgroundArray[position]);
            } else {
                userHolder.ma.setBackgroundResource(R.drawable.light_black_button_drawable_r30);
            }
            userHolder.strenth.setBackgroundResource(R.drawable.round_corner_drawable_r10_gray);
            userHolder.youyang.setBackgroundResource(R.drawable.round_corner_drawable_r10_gray);
            userHolder.anmo.setBackgroundResource(R.drawable.round_corner_drawable_r10_gray);
            if (program.useType == 1) {
                userHolder.strenth.setBackgroundResource(R.drawable.round_corner_drawable_r10_red);
            } else if (program.useType == 2) {
                userHolder.youyang.setBackgroundResource(R.drawable.round_corner_drawable_r10_orange);
            } else if (program.useType == 3) {
                userHolder.anmo.setBackgroundResource(R.drawable.round_corner_drawable_r10_blue);
            }
            userHolder.seekBar.setCurProcess((int) ((programDataBean.strenth * 75.0f) / 100.0f));
            userHolder.paulseduration.setAmountUnit(" s");
            userHolder.paulsePause.setAmountUnit(" s");
            userHolder.paulseduration.setGoods_storage(60);
            userHolder.paulsePause.setGoods_storage(60);
            userHolder.paulseduration.setAmount(programDataBean.pulseContinue);
            userHolder.paulsePause.setAmount(programDataBean.pulsePause);
            userHolder.name.setText(trainUser.name);
            userHolder.address.setText(wrapper.deviceName);
            userHolder.time.setText(CommonUtils.formatTime(programDataBean.workLength));
            if (this.mData.get(position).start) {
                userHolder.startpause.setBackgroundResource(R.mipmap.stop1);
            } else {
                userHolder.startpause.setBackgroundResource(R.mipmap.start1);
            }
        }

        private void addListener(final UserTrainControlHolder userHolder, final TrainUserProgramDataWrapper wrapper, final int position) {
            if (userHolder == null || wrapper == null) {
                return;
            }
            userHolder.paulseduration.setOnAmountChangeListener(new AmountView2.OnAmountChangeListener() { // from class: com.isaigu.gymapp.fragment.TrainFragment.UserTrainAdapter.4
                @Override // com.isaigu.gymapp.widget.AmountView2.OnAmountChangeListener
                public void onAmountChange(View view, int amount) {
                    wrapper.inStart = false;
                    wrapper.secondValue = 0;
                    userHolder.waveBallProgress.setProgress(0);
                    UserTrainAdapter.this.updateTime(userHolder, position);
                    if (wrapper.start) {
                        UserTrainAdapter.this.firstUpdatePulseContinue(userHolder, wrapper);
                    }
                    ProgramDataBean programDataBean = wrapper.trainProgram.matchProgram();
                    programDataBean.pulseContinue = amount;
                    UserTrainAdapter.this.set_mode_other_10_part_parameter(wrapper.macAddress, wrapper.trainProgram.useType, programDataBean, wrapper.start);
                }
            });
            userHolder.paulsePause.setOnAmountChangeListener(new AmountView2.OnAmountChangeListener() { // from class: com.isaigu.gymapp.fragment.TrainFragment.UserTrainAdapter.5
                @Override // com.isaigu.gymapp.widget.AmountView2.OnAmountChangeListener
                public void onAmountChange(View view, int amount) {
                    wrapper.inStart = false;
                    wrapper.secondValue = 0;
                    userHolder.waveBallProgress.setProgress(0);
                    UserTrainAdapter.this.updateTime(userHolder, position);
                    if (wrapper.start) {
                        UserTrainAdapter.this.firstUpdatePulseContinue(userHolder, wrapper);
                    }
                    ProgramDataBean programDataBean = wrapper.trainProgram.matchProgram();
                    programDataBean.pulsePause = amount;
                    UserTrainAdapter.this.set_mode_other_10_part_parameter(wrapper.macAddress, wrapper.trainProgram.useType, programDataBean, wrapper.start);
                }
            });
            userHolder.setting.setOnClickListener(new AnonymousClass6(wrapper, userHolder, position));
            userHolder.seekBar.setOnSeekBarChangeListener(new CircleSeekBar.OnSeekBarChangeListener() { // from class: com.isaigu.gymapp.fragment.TrainFragment.UserTrainAdapter.7
                @Override // com.isaigu.gymapp.widget.CircleSeekBar.OnSeekBarChangeListener
                public void onChanged(CircleSeekBar seekbar, int curValue) {
                    wrapper.trainProgram.matchProgram();
                    int strenthValue = (int) ((curValue / 75.0f) * 100.0f);
                    userHolder.ma.setText(String.format(TrainFragment.this.getString(R.string.maValue), Integer.valueOf(strenthValue)));
                }

                @Override // com.isaigu.gymapp.widget.CircleSeekBar.OnSeekBarChangeListener
                public void onChangedEnd(CircleSeekBar seekbar, int curValue) {
                    ProgramDataBean programDataBean = wrapper.trainProgram.matchProgram();
                    int strenthValue = (int) ((curValue / 75.0f) * 100.0f);
                    System.out.println("strenth Value : " + strenthValue);
                    if (programDataBean.strenth < 70) {
                        programDataBean.strenth = strenthValue;
                        if (strenthValue >= 70) {
                            programDataBean.strenth = 70;
                        }
                    } else if (strenthValue >= 70) {
                        int gap = strenthValue - programDataBean.strenth;
                        if (gap > 10) {
                            programDataBean.strenth += 10;
                        } else {
                            programDataBean.strenth = strenthValue;
                        }
                    } else {
                        programDataBean.strenth = strenthValue;
                    }
                    UserTrainAdapter.this.updateUI(userHolder, wrapper, position);
                    UserTrainAdapter.this.set_mode_10_part_parameter(wrapper.macAddress, wrapper.trainProgram.useType, programDataBean);
                    UserTrainAdapter.this.updateTrainRecordValue(wrapper.macAddress, "maxBodyStrenth", Float.valueOf((programDataBean.strenthBean.getMaxBodyStrenth() / 100.0f) * programDataBean.strenth));
                    UserTrainAdapter.this.updateTrainRecordValue(wrapper.macAddress, "minBodyStrenth", Float.valueOf((programDataBean.strenthBean.getMinBodyStrenth() / 100.0f) * programDataBean.strenth));
                }
            });
            for (int i = 0; i < userHolder.verticalColorSeekBars.length; i++) {
                final int fi = i;
                userHolder.verticalColorSeekBars[i].setOnStateChangeListener(new VerticalColorSeekBar.OnStateChangeListener() { // from class: com.isaigu.gymapp.fragment.TrainFragment.UserTrainAdapter.8
                    @Override // com.isaigu.gymapp.widget.VerticalColorSeekBar.OnStateChangeListener
                    public void OnStateChangeListener(View view, float progress) {
                        ProgramDataBean programDataBean = wrapper.trainProgram.matchProgram();
                        int p = (int) progress;
                        userHolder.textViews[fi].setText(String.format(TrainFragment.this.getString(R.string.maValue), Integer.valueOf((int) ((p / 100.0f) * programDataBean.strenth))));
                    }

                    @Override // com.isaigu.gymapp.widget.VerticalColorSeekBar.OnStateChangeListener
                    public void onStopTrackingTouch(View view, float progress) {
                        int currentValue;
                        ProgramDataBean programDataBean = wrapper.trainProgram.matchProgram();
                        if (programDataBean.strenth >= 85) {
                            int currentValue2 = (int) ((programDataBean.strenthBean.buwei[fi] / 100.0f) * programDataBean.strenth);
                            int targetValue = (int) ((progress / 100.0f) * programDataBean.strenth);
                            if (70 - currentValue2 > 5) {
                                if (targetValue >= 70) {
                                    currentValue = 70;
                                } else {
                                    currentValue = targetValue;
                                }
                            } else if (targetValue - currentValue2 > 10) {
                                currentValue = currentValue2 + 10;
                            } else {
                                currentValue = targetValue;
                            }
                            programDataBean.strenthBean.buwei[fi] = Math.round((currentValue * 100.0f) / programDataBean.strenth);
                        } else {
                            programDataBean.strenthBean.buwei[fi] = (int) progress;
                        }
                        UserTrainAdapter.this.updateTrainRecordValue(wrapper.macAddress, "maxBodyStrenth", Float.valueOf((programDataBean.strenthBean.getMaxBodyStrenth() / 100.0f) * programDataBean.strenth));
                        UserTrainAdapter.this.updateTrainRecordValue(wrapper.macAddress, "minBodyStrenth", Float.valueOf((programDataBean.strenthBean.getMinBodyStrenth() / 100.0f) * programDataBean.strenth));
                        userHolder.verticalColorSeekBars[fi].setProgress(programDataBean.strenthBean.buwei[fi]);
                        userHolder.textViews[fi].setText(String.format(TrainFragment.this.getString(R.string.maValue), Integer.valueOf((int) ((programDataBean.strenthBean.buwei[fi] / 100.0f) * programDataBean.strenth))));
                        UserTrainAdapter.this.set_mode_10_part_parameter(wrapper.macAddress, wrapper.trainProgram.useType, programDataBean);
                    }
                });
                userHolder.textViews[i].setOnClickListener(new NoDoubleClickListener() { // from class: com.isaigu.gymapp.fragment.TrainFragment.UserTrainAdapter.9
                    @Override // com.isaigu.gymapp.widget.NoDoubleClickListener
                    public void onNoDoubleClick(View v) {
                        UserTrainAdapter.this.clearAllMASelect();
                        UserTrainAdapter.this.handleRowAndIndexOperation(position, fi);
                        TrainFragment.this.startClearSelectedTimer();
                    }
                });
            }
            userHolder.ma.setOnClickListener(new View.OnClickListener() { // from class: com.isaigu.gymapp.fragment.TrainFragment.UserTrainAdapter.10
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    UserTrainAdapter.this.clearAllPartSelect();
                    UserTrainAdapter.this.handleRowOperation(position);
                }
            });
            userHolder.save.setOnClickListener(new AnonymousClass11(wrapper));
            userHolder.strenth.setOnClickListener(new NoDoubleClickListener() { // from class: com.isaigu.gymapp.fragment.TrainFragment.UserTrainAdapter.12
                @Override // com.isaigu.gymapp.widget.NoDoubleClickListener
                public void onNoDoubleClick(View v) {
                    UserTrainAdapter.this.changeTrainType(userHolder, wrapper, 1, position);
                }
            });
            userHolder.youyang.setOnClickListener(new NoDoubleClickListener() { // from class: com.isaigu.gymapp.fragment.TrainFragment.UserTrainAdapter.13
                @Override // com.isaigu.gymapp.widget.NoDoubleClickListener
                public void onNoDoubleClick(View v) {
                    UserTrainAdapter.this.changeTrainType(userHolder, wrapper, 2, position);
                }
            });
            userHolder.anmo.setOnClickListener(new NoDoubleClickListener() { // from class: com.isaigu.gymapp.fragment.TrainFragment.UserTrainAdapter.14
                @Override // com.isaigu.gymapp.widget.NoDoubleClickListener
                public void onNoDoubleClick(View v) {
                    UserTrainAdapter.this.changeTrainType(userHolder, wrapper, 3, position);
                }
            });
            userHolder.startpause.setOnClickListener(new NoDoubleClickListener() { // from class: com.isaigu.gymapp.fragment.TrainFragment.UserTrainAdapter.15
                @Override // com.isaigu.gymapp.widget.NoDoubleClickListener
                public void onNoDoubleClick(View v) {
                    ProgramDataBean programDataBean = wrapper.trainProgram.matchProgram();
                    wrapper.secondValue = 0;
                    wrapper.inStart = false;
                    if (wrapper.start) {
                        wrapper.start = false;
                    } else {
                        wrapper.start = true;
                        UserTrainAdapter.this.firstUpdatePulseContinue(userHolder, wrapper);
                        UserTrainAdapter.this.addTrainRecord(wrapper);
                    }
                    Logger.logConsole("按了startpause按钮：" + wrapper.start + "  " + position);
                    TrainFragment.this.updateAllStartPauseUI(UserTrainAdapter.this.isSomeoneStart());
                    UserTrainAdapter.this.updateUI(userHolder, wrapper, position);
                    UserTrainAdapter.this.updateTime(userHolder, position);
                    if (wrapper.start) {
                        ProtocolController.request_set_start(wrapper.macAddress);
                    }
                    UserTrainAdapter.this.set_mode_10_part_parameter(wrapper.macAddress, wrapper.trainProgram.useType, programDataBean);
                    UserTrainAdapter.this.set_mode_other_10_part_parameter(wrapper.macAddress, wrapper.trainProgram.useType, programDataBean, wrapper.start);
                    if (!wrapper.start) {
                        ProtocolController.request_set_stop(wrapper.macAddress);
                    }
                }
            });
            userHolder.stop.setOnClickListener(new NoDoubleClickListener() { // from class: com.isaigu.gymapp.fragment.TrainFragment.UserTrainAdapter.16
                @Override // com.isaigu.gymapp.widget.NoDoubleClickListener
                public void onNoDoubleClick(View v) {
                    Logger.logConsole("按了stop按钮：" + wrapper.start + "  " + position);
                    UserTrainAdapter.this.stopUser(userHolder, wrapper, position);
                    TrainFragment.this.updateAllStartPauseUI(UserTrainAdapter.this.isSomeoneStart());
                    UserTrainAdapter.this.removeTrainRecord(wrapper.macAddress);
                    ProtocolController.request_set_stop(wrapper.macAddress);
                }
            });
        }

        /* renamed from: com.isaigu.gymapp.fragment.TrainFragment$UserTrainAdapter$6, reason: invalid class name */
        class AnonymousClass6 extends NoDoubleClickListener {
            final /* synthetic */ int val$position;
            final /* synthetic */ UserTrainControlHolder val$userHolder;
            final /* synthetic */ TrainUserProgramDataWrapper val$wrapper;

            AnonymousClass6(TrainUserProgramDataWrapper trainUserProgramDataWrapper, UserTrainControlHolder userTrainControlHolder, int i) {
                this.val$wrapper = trainUserProgramDataWrapper;
                this.val$userHolder = userTrainControlHolder;
                this.val$position = i;
            }

            @Override // com.isaigu.gymapp.widget.NoDoubleClickListener
            public void onNoDoubleClick(View v) {
                if (!this.val$wrapper.start) {
                    EditUserProgramDataDialog programDataDialog = new EditUserProgramDataDialog();
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("editProgram", false);
                    bundle.putSerializable("data", this.val$wrapper);
                    programDataDialog.setArguments(bundle);
                    programDataDialog.setSaveProgramListener(new EditUserProgramDataDialog.SaveProgramListener() { // from class: com.isaigu.gymapp.fragment.TrainFragment.UserTrainAdapter.6.1
                        @Override // com.isaigu.gymapp.dialog.EditUserProgramDataDialog.SaveProgramListener
                        public void onSaveProgram(TrainProgram trainProgram, List<Integer> checks) {
                            AnonymousClass6.this.val$wrapper.trainProgram = (TrainProgram) BeanUtils.cloneObject(trainProgram);
                            TrainFragment.this.getParentActivity().runOnUiThread(new Runnable() { // from class: com.isaigu.gymapp.fragment.TrainFragment.UserTrainAdapter.6.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    UserTrainAdapter.this.updateUI(AnonymousClass6.this.val$userHolder, AnonymousClass6.this.val$wrapper, AnonymousClass6.this.val$position);
                                }
                            });
                        }
                    });
                    TrainFragment.this.getParentActivity().showDialogFragment(programDataDialog);
                }
            }
        }

        /* renamed from: com.isaigu.gymapp.fragment.TrainFragment$UserTrainAdapter$11, reason: invalid class name */
        class AnonymousClass11 extends NoDoubleClickListener {
            final /* synthetic */ TrainUserProgramDataWrapper val$wrapper;

            AnonymousClass11(TrainUserProgramDataWrapper trainUserProgramDataWrapper) {
                this.val$wrapper = trainUserProgramDataWrapper;
            }

            @Override // com.isaigu.gymapp.widget.NoDoubleClickListener
            public void onNoDoubleClick(View v) {
                SaveProgramDialog dialog = new SaveProgramDialog();
                Bundle bundle = new Bundle();
                bundle.putString(IMAPStore.ID_NAME, this.val$wrapper.trainProgram.name);
                dialog.setArguments(bundle);
                dialog.setListener(new AnonymousClass1(dialog));
                TrainFragment.this.getParentActivity().showDialogFragment(dialog);
            }

            /* renamed from: com.isaigu.gymapp.fragment.TrainFragment$UserTrainAdapter$11$1, reason: invalid class name */
            class AnonymousClass1 implements SaveProgramDialog.SaveProgramListener {
                final /* synthetic */ SaveProgramDialog val$dialog;

                AnonymousClass1(SaveProgramDialog saveProgramDialog) {
                    this.val$dialog = saveProgramDialog;
                }

                @Override // com.isaigu.gymapp.dialog.SaveProgramDialog.SaveProgramListener
                public void onSaveProgram(String name) {
                    if (TextUtils.isEmpty(name)) {
                        TrainFragment.this.getParentActivity().showTips(TrainFragment.this.getString(R.string.namecannotempty));
                        return;
                    }
                    TrainProgram trainProgram = (TrainProgram) BeanUtils.cloneObject(AnonymousClass11.this.val$wrapper.trainProgram);
                    trainProgram.userId = Long.valueOf(DataMgr.getInstance().loginUser.id);
                    if (NetworkUtils.isNetworkConnected(TrainFragment.this.getParentActivity())) {
                        boolean update = true;
                        if (!trainProgram.name.equals(name)) {
                            trainProgram.name = name;
                            update = false;
                        }
                        DataMgr.getInstance().addOrUpdateTrainProgram(trainProgram);
                        if (update) {
                            ApiMgr.updateProgramTrainData(trainProgram, new OKHttpUtils.HttpResponseCallback<ResponseData<TrainProgram>>() { // from class: com.isaigu.gymapp.fragment.TrainFragment.UserTrainAdapter.11.1.1
                                @Override // com.isaigu.gymapp.utils.OKHttpUtils.HttpResponseCallback
                                public void httpResponse(boolean httpSuccess, String message, ResponseData<TrainProgram> result) {
                                    if (httpSuccess && result != null && result.getCode() == 0) {
                                        ApiMgr.getUserProgramTrainDataList(DataMgr.getInstance().loginUser.id, new OKHttpUtils.HttpResponseCallback<ResponseData<List<TrainProgram>>>() { // from class: com.isaigu.gymapp.fragment.TrainFragment.UserTrainAdapter.11.1.1.1
                                            @Override // com.isaigu.gymapp.utils.OKHttpUtils.HttpResponseCallback
                                            public void httpResponse(boolean httpSuccess2, String message2, ResponseData<List<TrainProgram>> result2) {
                                                if (httpSuccess2 && result2 != null && result2.getCode() == 0) {
                                                    DataMgr.getInstance().trainData = result2.getData();
                                                    FileUtils.saveListData(Constants.file_name_train_data, TrainProgram.class, DataMgr.getInstance().trainData);
                                                    TrainFragment.this.getParentActivity().showTips(TrainFragment.this.getString(R.string.savesuccess));
                                                } else {
                                                    TrainFragment.this.getParentActivity().showTips(TrainFragment.this.getString(R.string.savefailed));
                                                }
                                                TrainFragment.this.getParentActivity().closeDialogFragment(AnonymousClass1.this.val$dialog);
                                            }
                                        });
                                    } else {
                                        CommonUtils.showErrorTips(TrainFragment.this.getParentActivity(), message, result);
                                    }
                                }
                            });
                            return;
                        } else {
                            trainProgram.id = null;
                            ApiMgr.addProgramTrainData(trainProgram, new OKHttpUtils.HttpResponseCallback<ResponseData<TrainProgram>>() { // from class: com.isaigu.gymapp.fragment.TrainFragment.UserTrainAdapter.11.1.2
                                @Override // com.isaigu.gymapp.utils.OKHttpUtils.HttpResponseCallback
                                public void httpResponse(boolean httpSuccess, String message, ResponseData<TrainProgram> result) {
                                    if (httpSuccess && result != null && result.getCode() == 0) {
                                        ApiMgr.getUserProgramTrainDataList(DataMgr.getInstance().loginUser.id, new OKHttpUtils.HttpResponseCallback<ResponseData<List<TrainProgram>>>() { // from class: com.isaigu.gymapp.fragment.TrainFragment.UserTrainAdapter.11.1.2.1
                                            @Override // com.isaigu.gymapp.utils.OKHttpUtils.HttpResponseCallback
                                            public void httpResponse(boolean httpSuccess2, String message2, ResponseData<List<TrainProgram>> result2) {
                                                if (httpSuccess2 && result2 != null && result2.getCode() == 0) {
                                                    DataMgr.getInstance().trainData = result2.getData();
                                                    FileUtils.saveListData(Constants.file_name_train_data, TrainProgram.class, DataMgr.getInstance().trainData);
                                                    TrainFragment.this.getParentActivity().showTips(TrainFragment.this.getString(R.string.savesuccess));
                                                } else {
                                                    TrainFragment.this.getParentActivity().showTips(TrainFragment.this.getString(R.string.savefailed));
                                                }
                                                TrainFragment.this.getParentActivity().closeDialogFragment(AnonymousClass1.this.val$dialog);
                                            }
                                        });
                                    } else {
                                        CommonUtils.showErrorTips(TrainFragment.this.getParentActivity(), message, result);
                                    }
                                }
                            });
                            return;
                        }
                    }
                    boolean update2 = true;
                    if (!trainProgram.name.equals(name)) {
                        trainProgram.name = name;
                        update2 = false;
                    }
                    if (update2) {
                        List<TrainProgram> offlineData = (List) FileUtils.getDataList(Constants.file_name_offline_update_train_program_data, TrainProgram.class);
                        boolean contain = false;
                        for (int i = 0; i < offlineData.size(); i++) {
                            if (offlineData.get(i).name != null && offlineData.get(i).name.equals(trainProgram.name)) {
                                contain = true;
                                offlineData.set(i, trainProgram);
                            }
                        }
                        if (!contain) {
                            offlineData.add(trainProgram);
                        }
                        FileUtils.saveListData(Constants.file_name_offline_update_train_program_data, TrainProgram.class, offlineData);
                    } else {
                        trainProgram.id = null;
                        List<TrainProgram> offlineData2 = (List) FileUtils.getDataList(Constants.file_name_offline_train_program_data, TrainProgram.class);
                        boolean contain2 = false;
                        for (int i2 = 0; i2 < offlineData2.size(); i2++) {
                            if (offlineData2.get(i2).name != null && offlineData2.get(i2).name.equals(trainProgram.name)) {
                                contain2 = true;
                                offlineData2.set(i2, trainProgram);
                            }
                        }
                        if (!contain2) {
                            offlineData2.add(trainProgram);
                        }
                        FileUtils.saveListData(Constants.file_name_offline_train_program_data, TrainProgram.class, offlineData2);
                    }
                    DataMgr.getInstance().addOrUpdateTrainProgram(trainProgram);
                    FileUtils.saveListData(Constants.file_name_train_data, TrainProgram.class, DataMgr.getInstance().trainData);
                    TrainFragment.this.getParentActivity().showTips(TrainFragment.this.getString(R.string.savesuccess));
                    TrainFragment.this.getParentActivity().closeDialogFragment(this.val$dialog);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addTrainRecord(TrainUserProgramDataWrapper wrapper) {
            if (wrapper != null && wrapper.start && !TrainFragment.this.trainRecordMap.containsKey(wrapper.macAddress)) {
                TrainRecordDTO recordDTO = new TrainRecordDTO();
                recordDTO.userId = Long.valueOf(wrapper.trainUser.id);
                recordDTO.useType = wrapper.trainProgram.useType;
                ProgramDataBean program = wrapper.trainProgram.matchProgram();
                recordDTO.pulseContinue = program.pulseContinue;
                recordDTO.pulseWidth = program.pulseWidth;
                recordDTO.pulsePause = program.pulsePause;
                recordDTO.workLength = program.workLength;
                recordDTO.hz = program.hz;
                recordDTO.trainName = wrapper.trainProgram.name;
                recordDTO.strenth = program.strenth;
                recordDTO.inputRamp = program.inputRamp;
                recordDTO.outputRamp = program.outputRamp;
                recordDTO.maxBodyStrenth = program.strenth;
                recordDTO.minBodyStrenth = 0;
                TrainFragment.this.trainRecordMap.put(wrapper.macAddress, recordDTO);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateTrainRecordValue(String macAddress, String name, Object value) {
            if (!StringUtils.isEmpty(macAddress) && !StringUtils.isEmpty(name) && value != null && TrainFragment.this.trainRecordMap.containsKey(macAddress)) {
                TrainRecordDTO recordDTO = (TrainRecordDTO) TrainFragment.this.trainRecordMap.get(macAddress);
                if (name.equals("maxBodyStrenth")) {
                    float integer = ((Float) value).floatValue();
                    if (recordDTO.maxBodyStrenth < integer) {
                        recordDTO.maxBodyStrenth = (int) integer;
                        recordDTO.strenth = (int) integer;
                        return;
                    }
                    return;
                }
                if (name.equals("minBodyStrenth")) {
                    float integer2 = ((Float) value).floatValue();
                    if (recordDTO.minBodyStrenth > integer2) {
                        recordDTO.minBodyStrenth = (int) integer2;
                        return;
                    }
                    return;
                }
                ReflectUtils.setObjectFieldValue(recordDTO, name, value);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeTrainRecord(String macAddress) {
            if (TrainFragment.this.trainRecordMap.containsKey(macAddress)) {
                TrainFragment.this.trainRecordMap.remove(macAddress);
            }
        }

        public void firstUpdatePulseContinue(UserTrainControlHolder userHolder, TrainUserProgramDataWrapper wrapper) {
            if (userHolder == null || wrapper == null) {
                return;
            }
            ProgramDataBean programDataBean = wrapper.trainProgram.matchProgram();
            if (programDataBean.pulseContinue > 0) {
                wrapper.inStart = false;
                int progress = (int) (((wrapper.secondValue * 1.0f) / programDataBean.pulseContinue) * 30.0f);
                userHolder.waveBallProgress.setVisibility(0);
                userHolder.waveBallProgress.setProgress(progress);
                userHolder.waveBallProgress.setWaveColor(TrainFragment.this.getColor(R.color.wave_color_green));
                userHolder.waveBllTextView.setVisibility(0);
                userHolder.waveBllTextView.setText(String.valueOf(programDataBean.pulseContinue - wrapper.secondValue));
                userHolder.waveBllTextView.setTextColor(TrainFragment.this.getColor(R.color.wave_color_green));
                return;
            }
            if (programDataBean.pulsePause > 0) {
                wrapper.inStart = true;
                int progress2 = (int) (((wrapper.secondValue * 1.0f) / programDataBean.pulsePause) * 30.0f);
                userHolder.waveBallProgress.setVisibility(0);
                userHolder.waveBallProgress.setProgress(progress2);
                userHolder.waveBallProgress.setWaveColor(TrainFragment.this.getColor(R.color.wave_color_red));
                userHolder.waveBllTextView.setVisibility(0);
                userHolder.waveBllTextView.setText(String.valueOf(programDataBean.pulsePause - wrapper.secondValue));
                userHolder.waveBllTextView.setTextColor(TrainFragment.this.getColor(R.color.wave_color_red));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void changeTrainType(UserTrainControlHolder userHolder, TrainUserProgramDataWrapper wrapper, int oriType, int position) {
            if (userHolder == null || wrapper == null) {
                return;
            }
            removeTrainRecord(wrapper.macAddress);
            int type = wrapper.trainProgram.useType != oriType ? oriType : 0;
            wrapper.trainProgram.useType = type;
            wrapper.start = false;
            wrapper.inStart = false;
            wrapper.secondValue = 0;
            userHolder.waveBallProgress.setProgress(0);
            ProgramDataBean programDataBean = wrapper.trainProgram.matchProgram();
            programDataBean.strenth = 0;
            set_mode_10_part_parameter(wrapper.macAddress, wrapper.trainProgram.useType, programDataBean);
            set_mode_other_10_part_parameter(wrapper.macAddress, wrapper.trainProgram.useType, programDataBean, wrapper.start);
            updateUI(userHolder, wrapper, position);
            updateTime(userHolder, position);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized void stopUser(UserTrainControlHolder holder, TrainUserProgramDataWrapper wrapper, int position) {
            if (holder == null || wrapper == null) {
                return;
            }
            TrainProgram train = DataMgr.getInstance().getProgramData(wrapper.trainProgram.name);
            if (train == null) {
                train = new TrainProgram();
            }
            TrainProgram trainProgram = (TrainProgram) BeanUtils.cloneObject(train);
            TrainProgram oldTrainProgram = wrapper.trainProgram;
            wrapper.trainProgram = trainProgram;
            wrapper.trainProgram.useType = oldTrainProgram.useType;
            ProgramDataBean programDataBean = wrapper.trainProgram.matchProgram();
            programDataBean.strenth = oldTrainProgram.programDataBean.strenth;
            Log.e("www", "强度：" + programDataBean.strenth);
            wrapper.start = false;
            wrapper.inStart = false;
            wrapper.secondValue = 0;
            holder.waveBallProgress.setProgress(0);
            updateUI(holder, wrapper, position);
            updateTime(holder, position);
            set_mode_other_10_part_parameter(wrapper.macAddress, wrapper.trainProgram.useType, programDataBean, wrapper.start);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void set_mode_10_part_parameter(String macAddress, int useType, ProgramDataBean programDataBean) {
            ProtocolController.request_set_mode_10_part_parameter(macAddress, useType, (int) ((programDataBean.strenthBean.buwei[0] / 100.0f) * programDataBean.strenth), (int) ((programDataBean.strenthBean.buwei[1] / 100.0f) * programDataBean.strenth), (int) ((programDataBean.strenthBean.buwei[2] / 100.0f) * programDataBean.strenth), (int) ((programDataBean.strenthBean.buwei[3] / 100.0f) * programDataBean.strenth), (int) ((programDataBean.strenthBean.buwei[4] / 100.0f) * programDataBean.strenth), (int) ((programDataBean.strenthBean.buwei[5] / 100.0f) * programDataBean.strenth), (int) ((programDataBean.strenthBean.buwei[6] / 100.0f) * programDataBean.strenth), (int) ((programDataBean.strenthBean.buwei[7] / 100.0f) * programDataBean.strenth), (int) ((programDataBean.strenthBean.buwei[8] / 100.0f) * programDataBean.strenth), (int) ((programDataBean.strenthBean.buwei[9] / 100.0f) * programDataBean.strenth));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void set_mode_other_10_part_parameter(String macAddress, int useType, ProgramDataBean programDataBean, boolean start) {
            ProtocolController.request_set_mode_other_parameter(macAddress, useType, programDataBean.workLength, programDataBean.hz, programDataBean.pulseWidth, programDataBean.pulseContinue, programDataBean.pulsePause, programDataBean.inputRamp, programDataBean.outputRamp, programDataBean.massageCycle, start);
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            List<TrainUserProgramDataWrapper> list = this.mData;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemViewType(int position) {
            TrainUserProgramDataWrapper user = this.mData.get(position);
            return user.type;
        }

        class UserTrainControlHolder extends RecyclerView.ViewHolder {
            TextView address;
            Button anmo;
            BatterView batterView;
            TextView batteryValueTextView;
            TextView ma;
            TextView name;
            AmountView2 paulsePause;
            AmountView2 paulseduration;
            Button save;
            CircleSeekBar seekBar;
            Button setting;
            ImageView signalImage;
            Button startpause;
            Button stop;
            Button strenth;
            TextView[] textViews;
            TextView time;
            ImageView userIcon;
            VerticalColorSeekBar[] verticalColorSeekBars;
            WaveBallProgress waveBallProgress;
            TextView waveBllTextView;
            Button youyang;

            public UserTrainControlHolder(View itemView) {
                super(itemView);
                this.strenth = (Button) itemView.findViewById(R.id.strenthExist);
                this.youyang = (Button) itemView.findViewById(R.id.youyangyundong);
                this.anmo = (Button) itemView.findViewById(R.id.anmo);
                VerticalColorSeekBar[] verticalColorSeekBarArr = new VerticalColorSeekBar[10];
                this.verticalColorSeekBars = verticalColorSeekBarArr;
                verticalColorSeekBarArr[0] = (VerticalColorSeekBar) itemView.findViewById(R.id.vpb_brightness1);
                this.verticalColorSeekBars[1] = (VerticalColorSeekBar) itemView.findViewById(R.id.vpb_brightness2);
                this.verticalColorSeekBars[2] = (VerticalColorSeekBar) itemView.findViewById(R.id.vpb_brightness3);
                this.verticalColorSeekBars[3] = (VerticalColorSeekBar) itemView.findViewById(R.id.vpb_brightness4);
                this.verticalColorSeekBars[4] = (VerticalColorSeekBar) itemView.findViewById(R.id.vpb_brightness5);
                this.verticalColorSeekBars[5] = (VerticalColorSeekBar) itemView.findViewById(R.id.vpb_brightness6);
                this.verticalColorSeekBars[6] = (VerticalColorSeekBar) itemView.findViewById(R.id.vpb_brightness7);
                this.verticalColorSeekBars[7] = (VerticalColorSeekBar) itemView.findViewById(R.id.vpb_brightness8);
                this.verticalColorSeekBars[8] = (VerticalColorSeekBar) itemView.findViewById(R.id.vpb_brightness9);
                this.verticalColorSeekBars[9] = (VerticalColorSeekBar) itemView.findViewById(R.id.vpb_brightness10);
                TextView[] textViewArr = new TextView[10];
                this.textViews = textViewArr;
                textViewArr[0] = (TextView) itemView.findViewById(R.id.textview1);
                this.textViews[1] = (TextView) itemView.findViewById(R.id.textview2);
                this.textViews[2] = (TextView) itemView.findViewById(R.id.textview3);
                this.textViews[3] = (TextView) itemView.findViewById(R.id.textview4);
                this.textViews[4] = (TextView) itemView.findViewById(R.id.textview5);
                this.textViews[5] = (TextView) itemView.findViewById(R.id.textview6);
                this.textViews[6] = (TextView) itemView.findViewById(R.id.textview7);
                this.textViews[7] = (TextView) itemView.findViewById(R.id.textview8);
                this.textViews[8] = (TextView) itemView.findViewById(R.id.textview9);
                this.textViews[9] = (TextView) itemView.findViewById(R.id.textview10);
                this.userIcon = (ImageView) itemView.findViewById(R.id.userIcon);
                this.setting = (Button) itemView.findViewById(R.id.setting);
                this.ma = (TextView) itemView.findViewById(R.id.ma);
                this.seekBar = (CircleSeekBar) itemView.findViewById(R.id.circleSeekBar);
                this.stop = (Button) itemView.findViewById(R.id.stop);
                this.startpause = (Button) itemView.findViewById(R.id.startpaulse);
                this.save = (Button) itemView.findViewById(R.id.save);
                this.paulseduration = (AmountView2) itemView.findViewById(R.id.paulsecontinue);
                this.paulsePause = (AmountView2) itemView.findViewById(R.id.paulsestop);
                this.name = (TextView) itemView.findViewById(2131296519);
                this.address = (TextView) itemView.findViewById(R.id.address);
                this.time = (TextView) itemView.findViewById(2131296682);
                this.waveBallProgress = (WaveBallProgress) itemView.findViewById(R.id.wave_ball_progress_act_view);
                this.paulsePause.setAmountTextPaddingTop(AndroidUtils.dp2px(TrainFragment.this.getParentActivity(), 18.0f));
                this.paulseduration.setAmountTextPaddingTop(AndroidUtils.dp2px(TrainFragment.this.getParentActivity(), 18.0f));
                this.waveBllTextView = (TextView) itemView.findViewById(R.id.wave_ball_progress_value);
                this.paulseduration.setAmountColor(TrainFragment.this.getResources().getColor(R.color.green_color));
                this.paulsePause.setAmountColor(TrainFragment.this.getResources().getColor(R.color.wave_color_red));
                this.paulseduration.setMinValue(1);
                this.signalImage = (ImageView) itemView.findViewById(R.id.signalImage);
                this.batterView = (BatterView) itemView.findViewById(R.id.MyBatterView);
                this.batteryValueTextView = (TextView) itemView.findViewById(R.id.batteryValueTextView);
            }
        }

        class EmptyViewHolder extends RecyclerView.ViewHolder {
            public EmptyViewHolder(View itemView) {
                super(itemView);
                itemView.setOnClickListener(new NoDoubleClickListener() { // from class: com.isaigu.gymapp.fragment.TrainFragment.UserTrainAdapter.EmptyViewHolder.1
                    @Override // com.isaigu.gymapp.widget.NoDoubleClickListener
                    public void onNoDoubleClick(View v) {
                        UserProgramDeviceConnectDialogFragment fragment = new UserProgramDeviceConnectDialogFragment();
                        TrainFragment.this.showDialogFragment(fragment);
                    }
                });
            }
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        this.userTrainAdapter.handleStopAllUser();
        updateAllStartPauseUI(this.userTrainAdapter.isSomeoneStart());
        super.onDestroy();
    }
}
