package com.isaigu.gymapp.fragment;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.AppCompatCheckBox;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.isaigu.gymapp.BaseFragment;
import com.isaigu.gymapp.R;
import com.isaigu.gymapp.bean.TrainUser;
import com.isaigu.gymapp.bean.UserData;
import com.isaigu.gymapp.bean.dto.LoginDTO;
import com.isaigu.gymapp.bean.vo.ResponseData;
import com.isaigu.gymapp.message.MessageDispatcher;
import com.isaigu.gymapp.mgr.ApiMgr;
import com.isaigu.gymapp.mgr.CommonUtils;
import com.isaigu.gymapp.mgr.Constants;
import com.isaigu.gymapp.mgr.DataMgr;
import com.isaigu.gymapp.utils.FileUtils;
import com.isaigu.gymapp.utils.Logger;
import com.isaigu.gymapp.utils.MD5Utils;
import com.isaigu.gymapp.utils.NetworkUtils;
import com.isaigu.gymapp.utils.OKHttpUtils;
import com.isaigu.gymapp.widget.MyButton;
import com.isaigu.gymapp.widget.NoDoubleClickListener;

/* loaded from: /workspace/classes2.dex */
public class LoginFragment extends BaseFragment {
    private AppCompatCheckBox autoLogin;
    private MyButton login;
    private EditText password;
    private AppCompatCheckBox rememberPassword;
    private EditText userName;

    @Override // com.isaigu.gymapp.BaseFragment
    protected int viewId() {
        return R.layout.login_fragment_layout;
    }

    @Override // com.isaigu.gymapp.BaseFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = super.onCreateView(inflater, container, savedInstanceState);
        this.userName = (EditText) view.findViewById(R.id.username);
        this.password = (EditText) view.findViewById(R.id.password);
        if (this.password != null) {
            this.password.setVisibility(View.GONE);
        }
        View passwordRow = view.findViewById(0x7f090203);
        if (passwordRow != null) {
            passwordRow.setVisibility(View.GONE);
        }
        this.autoLogin = (AppCompatCheckBox) view.findViewById(R.id.autologin);
        this.rememberPassword = (AppCompatCheckBox) view.findViewById(R.id.rememberpassword);
        if (this.rememberPassword != null) {
            this.rememberPassword.setVisibility(View.GONE);
        }
        this.login = (MyButton) view.findViewById(R.id.login);
        ImageView logoImage = (ImageView) view.findViewById(R.id.logoImage);
        if (!TextUtils.isEmpty(UserData.getInstance().logoPath)) {
            Glide.with((FragmentActivity) getParentActivity()).load(UserData.getInstance().logoPath).into(logoImage);
        }
        this.login.setOnClickListener(new AnonymousClass1());
        this.autoLogin.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.isaigu.gymapp.fragment.LoginFragment.2
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean b) {
                UserData.getInstance().autoLogin = b;
            }
        });
        this.rememberPassword.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.isaigu.gymapp.fragment.LoginFragment.3
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean b) {
                UserData.getInstance().rememberPassword = b;
            }
        });
        initView();
        return view;
    }

    /* renamed from: com.isaigu.gymapp.fragment.LoginFragment$1, reason: invalid class name */
    class AnonymousClass1 extends NoDoubleClickListener {
        AnonymousClass1() {
        }

        @Override // com.isaigu.gymapp.widget.NoDoubleClickListener
        public void onNoDoubleClick(View v) {
            BaseFragment fragment;
            final String username = LoginFragment.this.userName.getText().toString();
            final String pwd = username;
            if (TextUtils.isEmpty(username)) {
                LoginFragment.this.getParentActivity().showTips(LoginFragment.this.getString(R.string.usernamenull));
                return;
            }
            if (!NetworkUtils.isNetworkConnected(LoginFragment.this.getParentActivity()) && !username.equals(UserData.getInstance().userName)) {
                LoginFragment.this.getParentActivity().showTips(LoginFragment.this.getString(R.string.network_error));
                return;
            }
            MessageDispatcher.dispatchEventMessage((short) 103);
            if (!NetworkUtils.isNetworkConnected(LoginFragment.this.getParentActivity())) {
                if (username.equals(UserData.getInstance().userName)) {
                    DataMgr.singleMode = true;
                    DataMgr.getInstance().loginUser = (TrainUser) FileUtils.getData(Constants.file_name_login_user, TrainUser.class);
                    UserData.getInstance().useTime = DataMgr.getInstance().loginUser.useTime;
                    if (Constants.role_coach.equals(UserData.getInstance().roleName)) {
                        DataMgr.singleMode = false;
                        fragment = new MainFragment();
                    } else {
                        fragment = new StartFragment();
                    }
                    final BaseFragment fragment1 = fragment;
                    LoginFragment.this.getParentActivity().runDelay(new Runnable() { // from class: com.isaigu.gymapp.fragment.LoginFragment.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            MessageDispatcher.dispatchEventMessage((short) 104);
                            LoginFragment.this.getParentActivity().replace(R.id.frameContainer, fragment1);
                        }
                    }, 1600L);
                    return;
                }
                MessageDispatcher.dispatchEventMessage((short) 104);
                LoginFragment.this.getParentActivity().showTips(LoginFragment.this.getString(R.string.username_password_error));
                return;
            }
            LoginDTO dto = new LoginDTO();
            dto.username = username;
            dto.password = MD5Utils.getMD5(pwd);
            dto.md5Password = MD5Utils.getMD5(dto.password + ApiMgr.Password_Salt);
            ApiMgr.login(dto, new OKHttpUtils.HttpResponseCallback<ResponseData<TrainUser>>() { // from class: com.isaigu.gymapp.fragment.LoginFragment.1.2
                @Override // com.isaigu.gymapp.utils.OKHttpUtils.HttpResponseCallback
                public void httpResponse(boolean httpSuccess, String message, ResponseData<TrainUser> result) {
                    BaseFragment fragment2;
                    if (httpSuccess && result.getCode() == 0) {
                        DataMgr.getInstance().loginUser = result.getData();
                        if (!TextUtils.isEmpty(result.getData().appLogoUrl)) {
                            UserData.getInstance().logoPath = result.getData().appLogoUrl;
                        }
                        UserData.getInstance().useTime = DataMgr.getInstance().loginUser.useTime;
                        UserData.getInstance().userName = username;
                        UserData.getInstance().password = pwd;
                        UserData.getInstance().roleName = DataMgr.getInstance().loginUser.roleName;
                        FileUtils.saveData(Constants.file_name_login_user, DataMgr.getInstance().loginUser);
                        FileUtils.saveData(UserData.getInstance());
                        DataMgr.singleMode = true;
                        ApiMgr.token = result.getData().token;
                        if (DataMgr.getInstance().loginUser.roleName.equals(Constants.role_coach)) {
                            DataMgr.singleMode = false;
                            fragment2 = new MainFragment();
                        } else {
                            fragment2 = new StartFragment();
                        }
                        final BaseFragment fragment3 = fragment2;
                        LoginFragment.this.getParentActivity().runOnUiThread(new Runnable() { // from class: com.isaigu.gymapp.fragment.LoginFragment.1.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                LoginFragment.this.getParentActivity().replace(R.id.frameContainer, fragment3);
                                MessageDispatcher.dispatchEventMessage((short) 104);
                            }
                        });
                        return;
                    }
                    Logger.logConsole("code : " + httpSuccess + "  result: " + result);
                    CommonUtils.showErrorTips(LoginFragment.this.getParentActivity(), message, result);
                    UserData.getInstance().autoLogin = false;
                    UserData.getInstance().rememberPassword = false;
                    MessageDispatcher.dispatchEventMessage((short) 104);
                }
            });
        }
    }

    private void initView() {
        UserData userData = UserData.getInstance();
        if (userData.rememberPassword) {
            this.userName.setText(userData.userName);
            this.password.setText(userData.password);
        }
        this.rememberPassword.setChecked(userData.rememberPassword);
        this.autoLogin.setChecked(userData.autoLogin);
    }
}
