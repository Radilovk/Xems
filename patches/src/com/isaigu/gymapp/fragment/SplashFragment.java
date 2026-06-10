package com.isaigu.gymapp.fragment;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.isaigu.gymapp.BaseFragment;
import com.isaigu.gymapp.R;
import com.isaigu.gymapp.bean.TrainUser;
import com.isaigu.gymapp.bean.UserData;
import com.isaigu.gymapp.bean.dto.LoginDTO;
import com.isaigu.gymapp.bean.vo.ResponseData;
import com.isaigu.gymapp.bean.vo.SplashScreenVO;
import com.isaigu.gymapp.message.MessageDispatcher;
import com.isaigu.gymapp.mgr.ApiMgr;
import com.isaigu.gymapp.mgr.CommonUtils;
import com.isaigu.gymapp.mgr.Constants;
import com.isaigu.gymapp.mgr.DataMgr;
import com.isaigu.gymapp.utils.AndroidUtils;
import com.isaigu.gymapp.utils.FileUtils;
import com.isaigu.gymapp.utils.Logger;
import com.isaigu.gymapp.utils.MD5Utils;
import com.isaigu.gymapp.utils.NetworkUtils;
import com.isaigu.gymapp.utils.OKHttpUtils;
import com.isaigu.gymapp.utils.TimerUtils;

/* loaded from: /workspace/classes2.dex */
public class SplashFragment extends BaseFragment {
    private ImageView logoImage;
    private ImageView splashImage;
    private TextView verText;

    @Override // com.isaigu.gymapp.BaseFragment
    protected int viewId() {
        return R.layout.splash_fragment_layout;
    }

    @Override // com.isaigu.gymapp.BaseFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = super.onCreateView(inflater, container, savedInstanceState);
        this.verText = (TextView) view.findViewById(R.id.verText);
        this.splashImage = (ImageView) view.findViewById(R.id.splashImage);
        this.logoImage = (ImageView) view.findViewById(R.id.logoImage);
        if (!TextUtils.isEmpty(UserData.getInstance().splashPath)) {
            this.logoImage.setVisibility(4);
            this.splashImage.setVisibility(0);
            Glide.with((FragmentActivity) getParentActivity()).load(UserData.getInstance().splashPath).diskCacheStrategy(DiskCacheStrategy.SOURCE).into(this.splashImage);
        } else if (!TextUtils.isEmpty(UserData.getInstance().logoPath)) {
            this.logoImage.setVisibility(0);
            Glide.with((FragmentActivity) getParentActivity()).load(UserData.getInstance().logoPath).into(this.logoImage);
        }
        this.verText.setText(AndroidUtils.getVersionName(getParentActivity()));
        TimerUtils.delayCallback(new AnonymousClass1(), 5000);
        ApiMgr.getSplashScreen(new OKHttpUtils.HttpResponseCallback<ResponseData<SplashScreenVO>>() { // from class: com.isaigu.gymapp.fragment.SplashFragment.2
            @Override // com.isaigu.gymapp.utils.OKHttpUtils.HttpResponseCallback
            public void httpResponse(boolean httpSuccess, String message, ResponseData<SplashScreenVO> result) {
                final SplashScreenVO splashScreenVO;
                if (httpSuccess && result != null && result.isSuccess() && (splashScreenVO = result.getData()) != null && !TextUtils.isEmpty(splashScreenVO.imageUrl)) {
                    SplashFragment.this.runOnUiThread(new Runnable() { // from class: com.isaigu.gymapp.fragment.SplashFragment.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            SplashFragment.this.logoImage.setVisibility(4);
                            SplashFragment.this.splashImage.setVisibility(0);
                            Glide.with((FragmentActivity) SplashFragment.this.getParentActivity()).load(splashScreenVO.imageUrl).diskCacheStrategy(DiskCacheStrategy.SOURCE).into(SplashFragment.this.splashImage);
                        }
                    });
                }
            }
        });
        return view;
    }

    /* renamed from: com.isaigu.gymapp.fragment.SplashFragment$1, reason: invalid class name */
    class AnonymousClass1 implements Runnable {
        AnonymousClass1() {
        }

        /* renamed from: com.isaigu.gymapp.fragment.SplashFragment$1$1, reason: invalid class name and collision with other inner class name */
        class RunnableC00231 implements Runnable {
            RunnableC00231() {
            }

            @Override // java.lang.Runnable
            public void run() {
                BaseFragment fragment;
                if (UserData.getInstance().isLogin()) {
                    MessageDispatcher.dispatchEventMessage((short) 103);
                    if (!NetworkUtils.isNetworkConnected(SplashFragment.this.getParentActivity())) {
                        if (!TextUtils.isEmpty(UserData.getInstance().userName)) {
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
                            SplashFragment.this.getParentActivity().runDelay(new Runnable() { // from class: com.isaigu.gymapp.fragment.SplashFragment.1.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    MessageDispatcher.dispatchEventMessage((short) 104);
                                    SplashFragment.this.getParentActivity().replace(R.id.frameContainer, fragment1);
                                }
                            }, 1600L);
                            return;
                        }
                        MessageDispatcher.dispatchEventMessage((short) 104);
                        SplashFragment.this.getParentActivity().replace(R.id.frameContainer, new LoginFragment());
                        return;
                    }
                    LoginDTO dto = new LoginDTO();
                    dto.username = UserData.getInstance().userName;
                    dto.password = MD5Utils.getMD5(UserData.getInstance().userName);
                    dto.md5Password = MD5Utils.getMD5(dto.password + ApiMgr.Password_Salt);
                    ApiMgr.login(dto, new OKHttpUtils.HttpResponseCallback<ResponseData<TrainUser>>() { // from class: com.isaigu.gymapp.fragment.SplashFragment.1.1.2
                        @Override // com.isaigu.gymapp.utils.OKHttpUtils.HttpResponseCallback
                        public void httpResponse(final boolean httpSuccess, final String message, final ResponseData<TrainUser> result) {
                            SplashFragment.this.getParentActivity().runOnUiThread(new Runnable() { // from class: com.isaigu.gymapp.fragment.SplashFragment.1.1.2.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (httpSuccess && result.getCode() == 0) {
                                        DataMgr.getInstance().loginUser = (TrainUser) result.getData();
                                        if (!TextUtils.isEmpty(((TrainUser) result.getData()).appLogoUrl)) {
                                            UserData.getInstance().logoPath = ((TrainUser) result.getData()).appLogoUrl;
                                        }
                                        UserData.getInstance().useTime = DataMgr.getInstance().loginUser.useTime;
                                        FileUtils.saveData(UserData.getInstance());
                                        DataMgr.singleMode = true;
                                        ApiMgr.token = ((TrainUser) result.getData()).token;
                                        if (Constants.role_coach.equals(UserData.getInstance().roleName)) {
                                            DataMgr.singleMode = false;
                                            MessageDispatcher.dispatchEventMessage((short) 104);
                                            SplashFragment.this.getParentActivity().replace(R.id.frameContainer, new MainFragment());
                                            return;
                                        } else {
                                            MessageDispatcher.dispatchEventMessage((short) 104);
                                            SplashFragment.this.getParentActivity().replace(R.id.frameContainer, new StartFragment());
                                            return;
                                        }
                                    }
                                    Logger.logConsole("code : " + httpSuccess + "  result: " + result);
                                    CommonUtils.showErrorTips(SplashFragment.this.getParentActivity(), message, result);
                                    UserData.getInstance().autoLogin = false;
                                    UserData.getInstance().rememberPassword = false;
                                    SplashFragment.this.getParentActivity().replace(R.id.frameContainer, new LoginFragment());
                                }
                            });
                        }
                    });
                    return;
                }
                SplashFragment.this.getParentActivity().replace(R.id.frameContainer, new LoginFragment());
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            SplashFragment.this.runOnUiThread(new RunnableC00231());
        }
    }
}
