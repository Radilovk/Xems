package com.isaigu.gymapp.fragment;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentTransaction;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.alibaba.fastjson.JSON;
import com.isaigu.gymapp.BaseFragment;
import com.isaigu.gymapp.R;
import com.isaigu.gymapp.bean.DeviceBean;
import com.isaigu.gymapp.bean.TrainProgram;
import com.isaigu.gymapp.bean.TrainUser;
import com.isaigu.gymapp.bean.UserData;
import com.isaigu.gymapp.bean.dto.SubmitUserDataDTO;
import com.isaigu.gymapp.bean.dto.TrainRecordDTO;
import com.isaigu.gymapp.bean.dto.UpdateUserDataDTO;
import com.isaigu.gymapp.bean.vo.RegisterProtocolVO;
import com.isaigu.gymapp.bean.vo.ResponseData;
import com.isaigu.gymapp.message.MessageDispatcher;
import com.isaigu.gymapp.mgr.ApiMgr;
import com.isaigu.gymapp.mgr.CommonUtils;
import com.isaigu.gymapp.mgr.Constants;
import com.isaigu.gymapp.mgr.DataMgr;
import com.isaigu.gymapp.utils.FileUtils;
import com.isaigu.gymapp.utils.NetworkUtils;
import com.isaigu.gymapp.utils.OKHttpUtils;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /workspace/classes2.dex */
public class MainFragment extends BaseFragment implements View.OnClickListener {
    FrameLayout frameLayout;
    ImageView iv1;
    ImageView iv2;
    ImageView iv3;
    ImageView iv4;
    ImageView iv5;
    private List<ImageView> iv_list;
    LinearLayout li1;
    LinearLayout li2;
    LinearLayout li3;
    LinearLayout li4;
    LinearLayout li5;
    private List<LinearLayout> ll_list;
    NewTrainFragment newTrainFragment;
    SettingFragment settingFragment;
    TrainFragment trainFragment;
    TextView tv1;
    TextView tv2;
    TextView tv3;
    TextView tv4;
    TextView tv5;
    private List<TextView> tv_list;
    UserFragment userFragment;
    VideoListFragment videoListFragment;
    private Fragment fragment_now = null;
    final int[] imageSelected = {R.mipmap.selectplan, R.mipmap.users, R.mipmap.setting2, R.mipmap.video2, R.mipmap.selectprogran};
    final int[] imageUnselect = {R.mipmap.unselectexister, R.mipmap.unselectuser, R.mipmap.programset, R.mipmap.video1, R.mipmap.progranplan};
    final String[] title = new String[4];

    @Override // com.isaigu.gymapp.BaseFragment
    protected int viewId() {
        return R.layout.main_fragment_layout;
    }

    @Override // com.isaigu.gymapp.BaseFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = super.onCreateView(inflater, container, savedInstanceState);
        initView(view);
        initData();
        changePageFragment(R.id.ll_tab1);
        return view;
    }

    @Override // com.isaigu.gymapp.BaseFragment, android.support.v4.app.Fragment
    public void onDestroyView() {
        try {
            FragmentTransaction transaction = getParentActivity().getSupportFragmentManager().beginTransaction();
            if (this.settingFragment != null) {
                transaction.remove(this.settingFragment);
            }
            if (this.trainFragment != null) {
                transaction.remove(this.trainFragment);
            }
            if (this.userFragment != null) {
                transaction.remove(this.userFragment);
            }
            if (this.videoListFragment != null) {
                transaction.remove(this.videoListFragment);
            }
            if (this.newTrainFragment != null) {
                transaction.remove(this.newTrainFragment);
            }
            transaction.commitAllowingStateLoss();
        } catch (Exception e) {
            e.printStackTrace();
        }
        super.onDestroyView();
    }

    private void initView(View view) {
        this.frameLayout = (FrameLayout) view.findViewById(R.id.fl_fragment);
        this.iv1 = (ImageView) view.findViewById(R.id.iv1);
        this.iv2 = (ImageView) view.findViewById(R.id.iv2);
        this.iv3 = (ImageView) view.findViewById(R.id.iv3);
        this.iv4 = (ImageView) view.findViewById(R.id.iv4);
        this.iv5 = (ImageView) view.findViewById(R.id.iv5);
        this.tv1 = (TextView) view.findViewById(R.id.tv1);
        this.tv2 = (TextView) view.findViewById(R.id.tv2);
        this.tv3 = (TextView) view.findViewById(R.id.tv3);
        this.tv4 = (TextView) view.findViewById(R.id.tv4);
        this.tv5 = (TextView) view.findViewById(R.id.tv5);
        this.li1 = (LinearLayout) view.findViewById(R.id.ll_tab1);
        this.li2 = (LinearLayout) view.findViewById(R.id.ll_tab2);
        this.li3 = (LinearLayout) view.findViewById(R.id.ll_tab3);
        this.li4 = (LinearLayout) view.findViewById(R.id.ll_tab4);
        this.li5 = (LinearLayout) view.findViewById(R.id.ll_tab5);
        this.li1.setOnClickListener(this);
        this.li2.setOnClickListener(this);
        this.li3.setOnClickListener(this);
        this.li4.setOnClickListener(this);
        this.li5.setOnClickListener(this);
        ArrayList arrayList = new ArrayList();
        this.iv_list = arrayList;
        arrayList.add(this.iv1);
        this.iv_list.add(this.iv2);
        this.iv_list.add(this.iv3);
        this.iv_list.add(this.iv4);
        this.iv_list.add(this.iv5);
        ArrayList arrayList2 = new ArrayList();
        this.tv_list = arrayList2;
        arrayList2.add(this.tv1);
        this.tv_list.add(this.tv2);
        this.tv_list.add(this.tv3);
        this.tv_list.add(this.tv4);
        this.tv_list.add(this.tv5);
        ArrayList arrayList3 = new ArrayList();
        this.ll_list = arrayList3;
        arrayList3.add(this.li1);
        this.ll_list.add(this.li2);
        this.ll_list.add(this.li3);
        this.ll_list.add(this.li4);
        this.ll_list.add(this.li5);
    }

    private void initData() {
        this.title[0] = getString(R.string.train);
        this.title[1] = getString(R.string.user);
        this.title[2] = getString(R.string.setting);
        this.title[3] = getString(R.string.video);
        if (this.li5 != null) {
            this.li5.setVisibility(View.GONE);
        }
        if (!NetworkUtils.isNetworkConnected(getParentActivity())) {
            DataMgr.getInstance().deviceBeanList = (List) FileUtils.getDataList(Constants.file_name_device_data, DeviceBean.class);
            if (DataMgr.getInstance().deviceBeanList == null) {
                DataMgr.getInstance().deviceBeanList = new ArrayList();
            }
            DataMgr.getInstance().trainUsers = (List) FileUtils.getDataList(Constants.file_name_user_data, TrainUser.class);
            if (DataMgr.getInstance().trainUsers == null) {
                DataMgr.getInstance().trainUsers = new ArrayList();
            }
            List<TrainUser> offlineUsers = (List) FileUtils.getDataList(Constants.file_name_offline_user_data, TrainUser.class);
            if (offlineUsers != null && offlineUsers.size() > 0) {
                DataMgr.getInstance().trainUsers.addAll(offlineUsers);
            }
            DataMgr.getInstance().trainData = (List) FileUtils.getDataList(Constants.file_name_train_data, TrainProgram.class);
            if (DataMgr.getInstance().trainData == null) {
                DataMgr.getInstance().trainData = new ArrayList();
            }
            DataMgr.getInstance().registerProtocolVO = (RegisterProtocolVO) FileUtils.getData(Constants.file_name_register_protocol_data, RegisterProtocolVO.class);
            return;
        }
        ApiMgr.getUserBindMachine(DataMgr.getInstance().loginUser.id, new OKHttpUtils.HttpResponseCallback<ResponseData<List<DeviceBean>>>() { // from class: com.isaigu.gymapp.fragment.MainFragment.1
            @Override // com.isaigu.gymapp.utils.OKHttpUtils.HttpResponseCallback
            public void httpResponse(boolean httpSuccess, String message, ResponseData<List<DeviceBean>> result) {
                if (httpSuccess && result.getCode() == 0) {
                    Log.i("nnnnnn", JSON.toJSONString(result));
                    DataMgr.getInstance().deviceBeanList = result.getData();
                    FileUtils.saveListData(Constants.file_name_device_data, DeviceBean.class, DataMgr.getInstance().deviceBeanList);
                    return;
                }
                CommonUtils.showErrorTips(MainFragment.this.getParentActivity(), message, result);
                DataMgr.getInstance().deviceBeanList = (List) FileUtils.getDataList(Constants.file_name_device_data, DeviceBean.class);
            }
        });
        ApiMgr.getCurrentProtocol(UserData.getInstance().language, new OKHttpUtils.HttpResponseCallback<ResponseData<RegisterProtocolVO>>() { // from class: com.isaigu.gymapp.fragment.MainFragment.2
            @Override // com.isaigu.gymapp.utils.OKHttpUtils.HttpResponseCallback
            public void httpResponse(boolean httpSuccess, String message, ResponseData<RegisterProtocolVO> result) {
                if (httpSuccess && result.getCode() == 0) {
                    DataMgr.getInstance().registerProtocolVO = result.getData();
                    FileUtils.saveData(Constants.file_name_register_protocol_data, DataMgr.getInstance().registerProtocolVO);
                } else {
                    CommonUtils.showErrorTips(MainFragment.this.getParentActivity(), message, result);
                    DataMgr.getInstance().registerProtocolVO = (RegisterProtocolVO) FileUtils.getData(Constants.file_name_register_protocol_data, RegisterProtocolVO.class);
                }
            }
        });
        initOfflineAddUser();
        initOfflineDeleteTrainProgram();
        initOfflineAddTrainRecord();
    }

    private void initOfflineAddUser() {
        List<TrainUser> offlineUsers = (List) FileUtils.getDataList(Constants.file_name_offline_user_data, TrainUser.class);
        if (offlineUsers != null && offlineUsers.size() > 0) {
            List<SubmitUserDataDTO> list = new ArrayList<>();
            for (int i = 0; i < offlineUsers.size(); i++) {
                list.add(DataMgr.getInstance().getSubmitUserData(offlineUsers.get(i)));
            }
            ApiMgr.submitUserDataList(list, new OKHttpUtils.HttpResponseCallback<ResponseData<TrainUser>>() { // from class: com.isaigu.gymapp.fragment.MainFragment.3
                @Override // com.isaigu.gymapp.utils.OKHttpUtils.HttpResponseCallback
                public void httpResponse(boolean httpSuccess, String message, ResponseData<TrainUser> result) {
                    if (httpSuccess && result != null && result.getCode() == 0) {
                        FileUtils.removeData(Constants.file_name_offline_user_data, TrainUser.class);
                        MainFragment.this.initOfflineUpdateUsers();
                    }
                }
            });
            return;
        }
        initOfflineUpdateUsers();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initOfflineUpdateUsers() {
        List<TrainUser> offlineUpdateUsers = (List) FileUtils.getDataList(Constants.file_name_offline_update_user_data, TrainUser.class);
        if (offlineUpdateUsers != null && offlineUpdateUsers.size() > 0) {
            List<UpdateUserDataDTO> list1 = new ArrayList<>();
            for (TrainUser trainUser : offlineUpdateUsers) {
                list1.add(DataMgr.getInstance().getUpdateUserData(trainUser));
            }
            ApiMgr.updateUserDataList(list1, new OKHttpUtils.HttpResponseCallback<ResponseData<TrainUser>>() { // from class: com.isaigu.gymapp.fragment.MainFragment.4
                @Override // com.isaigu.gymapp.utils.OKHttpUtils.HttpResponseCallback
                public void httpResponse(boolean httpSuccess, String message, ResponseData<TrainUser> result) {
                    if (httpSuccess && result != null && result.getCode() == 0) {
                        FileUtils.removeData(Constants.file_name_offline_update_user_data, TrainUser.class);
                    }
                    MainFragment.this.initUsers();
                }
            });
            return;
        }
        initUsers();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initUsers() {
        ApiMgr.getUserCustomers(DataMgr.getInstance().loginUser.id, new OKHttpUtils.HttpResponseCallback<ResponseData<List<TrainUser>>>() { // from class: com.isaigu.gymapp.fragment.MainFragment.5
            @Override // com.isaigu.gymapp.utils.OKHttpUtils.HttpResponseCallback
            public void httpResponse(boolean httpSuccess, String message, ResponseData<List<TrainUser>> result) {
                if (httpSuccess && result.getCode() == 0) {
                    DataMgr.getInstance().trainUsers = result.getData();
                    FileUtils.saveListData(Constants.file_name_user_data, TrainUser.class, DataMgr.getInstance().trainUsers);
                } else {
                    CommonUtils.showErrorTips(MainFragment.this.getParentActivity(), message, result);
                    DataMgr.getInstance().trainUsers = (List) FileUtils.getDataList(Constants.file_name_user_data, TrainUser.class);
                }
                MessageDispatcher.dispatchEventMessage((short) 105);
            }
        });
    }

    private void initOfflineDeleteTrainProgram() {
        List<TrainProgram> offlineDeleteTrainProgram = (List) FileUtils.getDataList(Constants.file_name_offline_delete_train_program_data, TrainProgram.class);
        if (offlineDeleteTrainProgram != null && offlineDeleteTrainProgram.size() > 0) {
            List<Long> ids = new ArrayList<>();
            for (TrainProgram program : offlineDeleteTrainProgram) {
                ids.add(program.id);
            }
            ApiMgr.deleteProgramTrainDataList(DataMgr.getInstance().loginUser.id, ids, new OKHttpUtils.HttpResponseCallback<ResponseData<TrainProgram>>() { // from class: com.isaigu.gymapp.fragment.MainFragment.6
                @Override // com.isaigu.gymapp.utils.OKHttpUtils.HttpResponseCallback
                public void httpResponse(boolean httpSuccess, String message, ResponseData<TrainProgram> result) {
                    if (httpSuccess && result != null && result.getCode() == 0) {
                        FileUtils.removeData(Constants.file_name_offline_delete_train_program_data, TrainProgram.class);
                    }
                    MainFragment.this.initOfflineAddTrainPrograms();
                }
            });
            return;
        }
        initOfflineAddTrainPrograms();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initOfflineAddTrainPrograms() {
        List<TrainProgram> offlineTrainProgram = (List) FileUtils.getDataList(Constants.file_name_offline_train_program_data, TrainProgram.class);
        if (offlineTrainProgram != null && offlineTrainProgram.size() > 0) {
            for (TrainProgram program : offlineTrainProgram) {
                program.userId = Long.valueOf(DataMgr.getInstance().loginUser.id);
            }
            ApiMgr.addProgramTrainDataList(DataMgr.getInstance().loginUser.id, offlineTrainProgram, new OKHttpUtils.HttpResponseCallback<ResponseData<TrainProgram>>() { // from class: com.isaigu.gymapp.fragment.MainFragment.7
                @Override // com.isaigu.gymapp.utils.OKHttpUtils.HttpResponseCallback
                public void httpResponse(boolean httpSuccess, String message, ResponseData<TrainProgram> result) {
                    if (httpSuccess && result != null && result.getCode() == 0) {
                        FileUtils.removeData(Constants.file_name_offline_train_program_data, TrainProgram.class);
                    }
                    MainFragment.this.initOfflineUpdateTrainPrograms();
                }
            });
            return;
        }
        initOfflineUpdateTrainPrograms();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initOfflineUpdateTrainPrograms() {
        List<TrainProgram> offlineUpdateTrainProgram = (List) FileUtils.getDataList(Constants.file_name_offline_update_train_program_data, TrainProgram.class);
        if (offlineUpdateTrainProgram != null && offlineUpdateTrainProgram.size() > 0) {
            for (TrainProgram trainProgram : offlineUpdateTrainProgram) {
                trainProgram.userId = Long.valueOf(DataMgr.getInstance().loginUser.id);
            }
            ApiMgr.updateProgramTrainDataList(DataMgr.getInstance().loginUser.id, offlineUpdateTrainProgram, new OKHttpUtils.HttpResponseCallback<ResponseData<TrainProgram>>() { // from class: com.isaigu.gymapp.fragment.MainFragment.8
                @Override // com.isaigu.gymapp.utils.OKHttpUtils.HttpResponseCallback
                public void httpResponse(boolean httpSuccess, String message, ResponseData<TrainProgram> result) {
                    if (httpSuccess && result != null && result.getCode() == 0) {
                        FileUtils.removeData(Constants.file_name_offline_update_train_program_data, TrainProgram.class);
                    }
                    MainFragment.this.initTrainPrograms();
                }
            });
            return;
        }
        initTrainPrograms();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initTrainPrograms() {
        ApiMgr.getUserProgramTrainDataList(DataMgr.getInstance().loginUser.id, new OKHttpUtils.HttpResponseCallback<ResponseData<List<TrainProgram>>>() { // from class: com.isaigu.gymapp.fragment.MainFragment.9
            @Override // com.isaigu.gymapp.utils.OKHttpUtils.HttpResponseCallback
            public void httpResponse(boolean httpSuccess, String message, ResponseData<List<TrainProgram>> result) {
                if (httpSuccess && result.getCode() == 0) {
                    DataMgr.getInstance().trainData = result.getData();
                    FileUtils.saveListData(Constants.file_name_train_data, TrainProgram.class, DataMgr.getInstance().trainData);
                } else {
                    CommonUtils.showErrorTips(MainFragment.this.getParentActivity(), message, result);
                    DataMgr.getInstance().trainData = (List) FileUtils.getDataList(Constants.file_name_train_data, TrainProgram.class);
                }
                MessageDispatcher.dispatchEventMessage((short) 106);
            }
        });
    }

    private void initOfflineAddTrainRecord() {
        List<TrainRecordDTO> trainRecordDTOList = (List) FileUtils.getDataList(Constants.file_name_offline_train_record_data, TrainRecordDTO.class);
        if (trainRecordDTOList != null && trainRecordDTOList.size() > 0) {
            ApiMgr.addTrainRecordList(trainRecordDTOList, new OKHttpUtils.HttpResponseCallback<ResponseData<Object>>() { // from class: com.isaigu.gymapp.fragment.MainFragment.10
                @Override // com.isaigu.gymapp.utils.OKHttpUtils.HttpResponseCallback
                public /* bridge */ /* synthetic */ void httpResponse(boolean z, String str, ResponseData<Object> responseData) {
                    httpResponse2(z, str, (ResponseData) responseData);
                }

                /* renamed from: httpResponse, reason: avoid collision after fix types in other method */
                public void httpResponse2(boolean httpSuccess, String message, ResponseData result) {
                    if (httpSuccess && result != null && result.isSuccess()) {
                        FileUtils.removeData(Constants.file_name_offline_train_record_data, TrainRecordDTO.class);
                    }
                }
            });
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.ll_tab1 /* 2131296492 */:
            case R.id.ll_tab2 /* 2131296493 */:
            case R.id.ll_tab3 /* 2131296494 */:
            case R.id.ll_tab4 /* 2131296495 */:
            case R.id.ll_tab5 /* 2131296496 */:
                changePageFragment(view.getId());
                break;
        }
    }

    public void changePageFragment(int id) {
        switch (id) {
            case R.id.ll_tab1 /* 2131296492 */:
                if (this.newTrainFragment == null) {
                    this.newTrainFragment = new NewTrainFragment();
                }
                changePageSelect(0);
                switchFragment(this.fragment_now, this.newTrainFragment);
                break;
            case R.id.ll_tab2 /* 2131296493 */:
                if (this.userFragment == null) {
                    this.userFragment = new UserFragment();
                }
                changePageSelect(1);
                switchFragment(this.fragment_now, this.userFragment);
                break;
            case R.id.ll_tab3 /* 2131296494 */:
                if (this.settingFragment == null) {
                    this.settingFragment = new SettingFragment();
                }
                changePageSelect(2);
                switchFragment(this.fragment_now, this.settingFragment);
                break;
            case R.id.ll_tab4 /* 2131296495 */:
                if (this.videoListFragment == null) {
                    this.videoListFragment = new VideoListFragment();
                }
                changePageSelect(3);
                switchFragment(this.fragment_now, this.videoListFragment);
                break;
        }
    }

    public void switchFragment(Fragment from, Fragment to) {
        if (to == null) {
            return;
        }
        FragmentTransaction transaction = getParentActivity().getSupportFragmentManager().beginTransaction();
        if (to.isAdded()) {
            transaction.hide(from).show(to).commitAllowingStateLoss();
        } else if (from != null) {
            transaction.hide(from).add(R.id.fl_fragment, to).show(to).commitAllowingStateLoss();
        } else {
            transaction.add(R.id.fl_fragment, to).show(to).commitAllowingStateLoss();
        }
        this.fragment_now = to;
    }

    public void changePageSelect(int index) {
        for (int i = 0; i < this.iv_list.size(); i++) {
            if (index == i) {
                this.ll_list.get(i).setEnabled(false);
                this.ll_list.get(i).setBackgroundResource(R.drawable.round_circle_drawable_r20_red);
                this.iv_list.get(i).setBackgroundResource(this.imageSelected[i]);
                this.tv_list.get(i).setTextColor(getResources().getColor(R.color.white_color));
            } else {
                this.ll_list.get(i).setEnabled(true);
                this.ll_list.get(i).setBackgroundResource(R.drawable.round_circle_drawable_r20_white);
                this.iv_list.get(i).setBackgroundResource(this.imageUnselect[i]);
                this.tv_list.get(i).setTextColor(getResources().getColor(R.color.light_black_color));
            }
        }
    }
}
