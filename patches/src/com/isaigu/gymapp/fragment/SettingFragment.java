package com.isaigu.gymapp.fragment;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.provider.Settings;
import android.support.v4.content.FileProvider;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bumptech.glide.Glide;
import com.isaigu.gymapp.BaseActivity;
import com.isaigu.gymapp.BaseFragment;
import com.isaigu.gymapp.R;
import com.isaigu.gymapp.bean.TrainUser;
import com.isaigu.gymapp.bean.UserData;
import com.isaigu.gymapp.bean.dto.UploadUserUseTimeDTO;
import com.isaigu.gymapp.bean.vo.ResponseData;
import com.isaigu.gymapp.bean.vo.UploadFileVO;
import com.isaigu.gymapp.message.DataBundle;
import com.isaigu.gymapp.message.MessageDispatcher;
import com.isaigu.gymapp.mgr.ApiMgr;
import com.isaigu.gymapp.mgr.BleMgr;
import com.isaigu.gymapp.mgr.CommonUtils;
import com.isaigu.gymapp.mgr.Constants;
import com.isaigu.gymapp.mgr.DataMgr;
import com.isaigu.gymapp.mgr.EventMessage;
import com.isaigu.gymapp.train.events.ApplicationExitEvent;
import com.isaigu.gymapp.utils.AndroidUtils;
import com.isaigu.gymapp.utils.FileUtils;
import com.isaigu.gymapp.utils.IOUtil;
import com.isaigu.gymapp.utils.ImageUtils;
import com.isaigu.gymapp.utils.LanguageUtils;
import com.isaigu.gymapp.utils.Logger;
import com.isaigu.gymapp.utils.NetworkUtils;
import com.isaigu.gymapp.utils.OKHttpUtils;
import com.isaigu.gymapp.utils.TimerUtils;
import com.isaigu.gymapp.widget.NoDoubleClickListener;
import com.isaigu.gymapp.widget.OnRangeChangedListener;
import com.isaigu.gymapp.widget.RangeSeekBar;
import com.isaigu.gymapp.widget.SwitchButton;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Timer;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /tmp/original-classes2.dex */
public class SettingFragment extends BaseFragment {
    private static final int REQUEST_CODE_WRITE_SETTINGS = 2;
    private LinearLayout channelCalibrationContainer;
    private Button changeLogo;
    private Button chinese;
    private Uri cropImageUri;
    private Button defaultLogo;
    private Button english;
    private Button espanol;
    private Button french;
    private Button german;
    private Uri imageUri;
    private Button italian;
    private RangeSeekBar lightSeekBar;
    private ImageView logoImage;
    private ImageView logoImage2;
    private Button logout;
    private File originalFile;
    private Button poland;
    private Button portugues;
    private TextView range;
    private Button rassia;
    private TextView softwareVersion;
    private SwitchButton switchButton;
    private TextView time;
    private TextView timelength;
    private Timer timer;
    private Button turk;
    private Timer useTimer;

    @Override // com.isaigu.gymapp.BaseFragment
    protected int viewId() {
        return R.layout.setting_fragment_layout;
    }

    @Override // com.isaigu.gymapp.BaseFragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = super.onCreateView(inflater, container, savedInstanceState);
        this.lightSeekBar = (RangeSeekBar) view.findViewById(R.id.seekBar1);
        this.range = (TextView) view.findViewById(R.id.percent);
        this.chinese = (Button) view.findViewById(R.id.chinese);
        this.english = (Button) view.findViewById(R.id.english);
        this.espanol = (Button) view.findViewById(R.id.espanol);
        this.rassia = (Button) view.findViewById(R.id.russia);
        this.portugues = (Button) view.findViewById(R.id.portugues);
        this.french = (Button) view.findViewById(R.id.french);
        this.poland = (Button) view.findViewById(R.id.poland);
        this.german = (Button) view.findViewById(R.id.german);
        this.italian = (Button) view.findViewById(R.id.italian);
        this.turk = (Button) view.findViewById(R.id.turk);
        this.changeLogo = (Button) view.findViewById(R.id.changeLogo);
        this.logoImage = (ImageView) view.findViewById(R.id.logoImage);
        this.logoImage2 = (ImageView) view.findViewById(R.id.logoImage2);
        if (!TextUtils.isEmpty(UserData.getInstance().logoPath)) {
            Glide.with(getParentActivity()).load(UserData.getInstance().logoPath).into(this.logoImage);
            Glide.with(getParentActivity()).load(UserData.getInstance().logoPath).into(this.logoImage2);
        }
        TextView textView = (TextView) view.findViewById(R.id.softwareVersion);
        this.softwareVersion = textView;
        textView.setText(AndroidUtils.getVersionName(getParentActivity()));
        this.time = (TextView) view.findViewById(R.id.time);
        this.timelength = (TextView) view.findViewById(R.id.timelength);
        this.switchButton = (SwitchButton) view.findViewById(R.id.switch_button);
        this.logout = (Button) view.findViewById(R.id.logout);
        this.defaultLogo = (Button) view.findViewById(R.id.defaultLogo);
        this.channelCalibrationContainer = (LinearLayout) view.findViewById(R.id.channelCalibrationContainer);
        initChannelPulseRows();
        requestWriteSettings();
        MessageDispatcher.attachEventListener((short) 10, this);
        MessageDispatcher.attachEventListener((short) 8, this);
        return view;
    }

    public void onStart() {
        super.onStart();
        initSet();
    }

    @Override // com.isaigu.gymapp.BaseFragment, com.isaigu.gymapp.message.EventListener
    public void handleEvent(DataBundle bundle) {
        super.handleEvent(bundle);
        short event = bundle.getEvent();
        if (event == 8) {
            handleGetFirmwareVersion(bundle);
        } else if (event == 10) {
            handleGetHardwareVersion(bundle);
        }
    }

    private void handleGetFirmwareVersion(DataBundle bundle) {
        byte[] content = (byte[]) bundle.getContent();
        StringBuffer buffer = new StringBuffer();
        for (int i = 0; i < content.length; i++) {
            buffer.append((int) content[i]);
            if (i < content.length - 1) {
                buffer.append(".");
            }
        }
        runOnUiThread(new Runnable() { // from class: com.isaigu.gymapp.fragment.SettingFragment.1
            @Override // java.lang.Runnable
            public void run() {
            }
        });
    }

    private void handleGetHardwareVersion(DataBundle bundle) {
        byte[] content = (byte[]) bundle.getContent();
        StringBuffer buffer = new StringBuffer();
        for (int i = 0; i < content.length; i++) {
            buffer.append((int) content[i]);
            if (i < content.length - 1) {
                buffer.append(".");
            }
        }
        runOnUiThread(new Runnable() { // from class: com.isaigu.gymapp.fragment.SettingFragment.2
            @Override // java.lang.Runnable
            public void run() {
            }
        });
    }

    private void initChannelPulseRows() {
        if (this.channelCalibrationContainer == null) {
            return;
        }
        UserData.ensureChannelPulseWidths(UserData.getInstance());
        this.channelCalibrationContainer.removeAllViews();
        String[] labels = new String[]{
                getString(R.string.xiongbu),
                getString(R.string.fubu),
                getString(R.string.beibu),
                getString(R.string.yaobu),
                getString(R.string.bibu),
                getString(R.string.shoubi),
                getString(R.string.tuiquji),
                getString(R.string.xiaotui),
                getString(R.string.houxiefangji),
                getString(R.string.xiazhishenji)
        };
        for (int i = 0; i < labels.length; i++) {
            final int channelIndex = i;
            LinearLayout row = new LinearLayout(getParentActivity());
            row.setOrientation(LinearLayout.HORIZONTAL);
            row.setGravity(android.view.Gravity.CENTER_VERTICAL);
            row.setPadding(20, 6, 20, 6);
            TextView label = new TextView(getParentActivity());
            label.setText(labels[i]);
            label.setTextSize(18.0f);
            label.setLayoutParams(new LinearLayout.LayoutParams(220, LinearLayout.LayoutParams.WRAP_CONTENT));
            final TextView pulseValue = new TextView(getParentActivity());
            int pulse = UserData.getInstance().channelPulseWidthUs[channelIndex];
            pulseValue.setText(pulse > 0 ? pulse + " μs" : getString(R.string.channelPulseGlobal));
            pulseValue.setTextSize(16.0f);
            pulseValue.setLayoutParams(new LinearLayout.LayoutParams(100, LinearLayout.LayoutParams.WRAP_CONTENT));
            RangeSeekBar pulseSeekBar = new RangeSeekBar(getParentActivity());
            pulseSeekBar.setLayoutParams(new LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1.0f));
            pulseSeekBar.setRange(0.0f, 400.0f);
            pulseSeekBar.setValue(pulse > 0 ? pulse : 350.0f);
            pulseSeekBar.setOnRangeChangedListener(new OnRangeChangedListener() {
                @Override
                public void onRangeChanged(RangeSeekBar view, float leftValue, float rightValue, boolean isFromUser) {
                    int value = Math.round(leftValue);
                    UserData.getInstance().channelPulseWidthUs[channelIndex] = value;
                    pulseValue.setText(value > 0 ? value + " μs" : getString(R.string.channelPulseGlobal));
                }

                @Override
                public void onStartTrackingTouch(RangeSeekBar view, boolean isLeft) {
                }

                @Override
                public void onStopTrackingTouch(RangeSeekBar view, boolean isLeft) {
                    FileUtils.saveData(UserData.getInstance());
                }
            });
            row.addView(label);
            row.addView(pulseValue);
            row.addView(pulseSeekBar);
            this.channelCalibrationContainer.addView(row);
        }
    }

    private void initSet() {
        try {
            if (UserData.getInstance().light == 0) {
                int value = Settings.System.getInt(getParentActivity().getContentResolver(), "screen_brightness", 0);
                int progress = (int) (((value - 40) / 215.0f) * 100.0f);
                UserData.getInstance().light = progress;
                if (UserData.getInstance().light < 0) {
                    UserData.getInstance().light = 0;
                }
                this.lightSeekBar.setValue(UserData.getInstance().light);
                this.range.setText(String.format(getString(R.string.lightValue), Integer.valueOf(UserData.getInstance().light)) + "%");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.lightSeekBar.setValue(UserData.getInstance().light);
        this.range.setText(String.format(getString(R.string.lightValue), Integer.valueOf(UserData.getInstance().light)) + "%");
        this.lightSeekBar.setOnRangeChangedListener(new OnRangeChangedListener() { // from class: com.isaigu.gymapp.fragment.SettingFragment.3
            @Override // com.isaigu.gymapp.widget.OnRangeChangedListener
            public void onRangeChanged(RangeSeekBar view, float leftValue, float rightValue, boolean isFromUser) {
                try {
                    int seekValue = (int) view.getRangeSeekBarState()[0].value;
                    int value2 = (int) (((seekValue / 100.0f) * 215.0f) + 40.0f);
                    Settings.System.putInt(SettingFragment.this.getParentActivity().getContentResolver(), "screen_brightness_mode", 0);
                    Settings.System.putInt(SettingFragment.this.getParentActivity().getContentResolver(), "screen_brightness", value2);
                    UserData.getInstance().light = seekValue;
                    if (UserData.getInstance().light < 0) {
                        UserData.getInstance().light = 0;
                    }
                    SettingFragment.this.range.setText(String.format(SettingFragment.this.getString(R.string.lightValue), Integer.valueOf(UserData.getInstance().light)) + "%");
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }

            @Override // com.isaigu.gymapp.widget.OnRangeChangedListener
            public void onStartTrackingTouch(RangeSeekBar view, boolean isLeft) {
            }

            @Override // com.isaigu.gymapp.widget.OnRangeChangedListener
            public void onStopTrackingTouch(RangeSeekBar view, boolean isLeft) {
                try {
                    int seekValue = (int) view.getRangeSeekBarState()[0].value;
                    int value2 = (int) (((seekValue / 100.0f) * 215.0f) + 40.0f);
                    Settings.System.putInt(SettingFragment.this.getParentActivity().getContentResolver(), "screen_brightness_mode", 0);
                    Settings.System.putInt(SettingFragment.this.getParentActivity().getContentResolver(), "screen_brightness", value2);
                    Uri uri = Settings.System.getUriFor("screen_brightness");
                    SettingFragment.this.getParentActivity().getContentResolver().notifyChange(uri, null);
                    Logger.logConsole("value : " + value2);
                    SettingFragment.this.getParentActivity();
                    BaseActivity.setActivityBrightness((float) value2, SettingFragment.this.getParentActivity());
                    UserData.getInstance().light = seekValue;
                    if (UserData.getInstance().light < 0) {
                        UserData.getInstance().light = 0;
                    }
                    SettingFragment.this.range.setText(String.format(SettingFragment.this.getString(R.string.lightValue), Integer.valueOf(UserData.getInstance().light)) + "%");
                    FileUtils.saveData(UserData.getInstance());
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        });
        final SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        TimerUtils.stopTimer(this.timer);
        this.timer = TimerUtils.scheduleTimer(new Runnable() { // from class: com.isaigu.gymapp.fragment.SettingFragment.4
            @Override // java.lang.Runnable
            public void run() {
                SettingFragment.this.getParentActivity().runOnUiThread(new Runnable() { // from class: com.isaigu.gymapp.fragment.SettingFragment.4.1
                    @Override // java.lang.Runnable
                    public void run() {
                        SettingFragment.this.time.setText(dateFormat.format(new Date()));
                    }
                });
            }
        }, 0L, 1000L);
        TimerUtils.stopTimer(this.useTimer);
        this.useTimer = TimerUtils.scheduleTimer(new AnonymousClass5(), 60000L, 60000L);
        this.timelength.setText(String.format(CommonUtils.formatTime2(UserData.getInstance().useTime), getString(R.string.day), getString(R.string.hour), getString(R.string.minute)));
        this.switchButton.setCheck(UserData.getInstance().leftMode);
        this.switchButton.setOnCheckedChangeListener(new SwitchButton.OnCheckedChangeListener() { // from class: com.isaigu.gymapp.fragment.SettingFragment.6
            @Override // com.isaigu.gymapp.widget.SwitchButton.OnCheckedChangeListener
            public void onCheckedChanged(SwitchButton buttonView, boolean isChecked) {
                UserData.getInstance().leftMode = isChecked;
                FileUtils.saveData(UserData.getInstance());
                MessageDispatcher.dispatchEventMessage(new DataBundle((short) 1, (Object) Boolean.valueOf(isChecked)));
            }
        });
        String language = LanguageUtils.getLang(getParentActivity());
        this.chinese.setBackgroundResource(R.mipmap.chinese1);
        this.english.setBackgroundResource(R.mipmap.english1);
        this.espanol.setBackgroundResource(R.mipmap.espanol1);
        this.rassia.setBackgroundResource(R.mipmap.russia1);
        this.portugues.setBackgroundResource(R.mipmap.portugues1);
        this.french.setBackgroundResource(R.mipmap.french1);
        this.poland.setBackgroundResource(R.mipmap.poland1);
        this.german.setBackgroundResource(R.mipmap.german1);
        this.italian.setBackgroundResource(R.mipmap.italian1);
        this.turk.setBackgroundResource(R.mipmap.turk1);
        if (UserData.chinese.equals(language)) {
            this.chinese.setBackgroundResource(R.mipmap.chinese);
        } else if (UserData.english.equals(language)) {
            this.english.setBackgroundResource(R.mipmap.english);
        } else if (UserData.espanol.equals(language)) {
            this.espanol.setBackgroundResource(R.mipmap.espanol);
        } else if (UserData.russia.equals(language)) {
            this.rassia.setBackgroundResource(R.mipmap.russia);
        } else if (UserData.portugus.equals(language)) {
            this.portugues.setBackgroundResource(R.mipmap.portugues);
        } else if (UserData.french.equals(language)) {
            this.french.setBackgroundResource(R.mipmap.french);
        } else if (UserData.poland.equals(language)) {
            this.poland.setBackgroundResource(R.mipmap.poland);
        } else if (UserData.german.equals(language)) {
            this.german.setBackgroundResource(R.mipmap.german);
        } else if (UserData.italian.equals(language)) {
            this.italian.setBackgroundResource(R.mipmap.italian);
        } else if (UserData.turk.equals(language)) {
            this.turk.setBackgroundResource(R.mipmap.turk);
        }
        this.chinese.setOnClickListener(new NoDoubleClickListener() { // from class: com.isaigu.gymapp.fragment.SettingFragment.7
            @Override // com.isaigu.gymapp.widget.NoDoubleClickListener
            public void onNoDoubleClick(View v) {
                SettingFragment.this.switchToLanguage(UserData.chinese, true);
            }
        });
        this.english.setOnClickListener(new NoDoubleClickListener() { // from class: com.isaigu.gymapp.fragment.SettingFragment.8
            @Override // com.isaigu.gymapp.widget.NoDoubleClickListener
            public void onNoDoubleClick(View v) {
                SettingFragment.this.switchToLanguage(UserData.english, true);
            }
        });
        this.espanol.setOnClickListener(new NoDoubleClickListener() { // from class: com.isaigu.gymapp.fragment.SettingFragment.9
            @Override // com.isaigu.gymapp.widget.NoDoubleClickListener
            public void onNoDoubleClick(View v) {
                SettingFragment.this.switchToLanguage(UserData.espanol, true);
            }
        });
        this.rassia.setOnClickListener(new NoDoubleClickListener() { // from class: com.isaigu.gymapp.fragment.SettingFragment.10
            @Override // com.isaigu.gymapp.widget.NoDoubleClickListener
            public void onNoDoubleClick(View v) {
                SettingFragment.this.switchToLanguage(UserData.russia, true);
            }
        });
        this.portugues.setOnClickListener(new NoDoubleClickListener() { // from class: com.isaigu.gymapp.fragment.SettingFragment.11
            @Override // com.isaigu.gymapp.widget.NoDoubleClickListener
            public void onNoDoubleClick(View v) {
                SettingFragment.this.switchToLanguage(UserData.portugus, true);
            }
        });
        this.french.setOnClickListener(new NoDoubleClickListener() { // from class: com.isaigu.gymapp.fragment.SettingFragment.12
            @Override // com.isaigu.gymapp.widget.NoDoubleClickListener
            public void onNoDoubleClick(View v) {
                SettingFragment.this.switchToLanguage(UserData.french, true);
            }
        });
        this.poland.setOnClickListener(new NoDoubleClickListener() { // from class: com.isaigu.gymapp.fragment.SettingFragment.13
            @Override // com.isaigu.gymapp.widget.NoDoubleClickListener
            public void onNoDoubleClick(View v) {
                SettingFragment.this.switchToLanguage(UserData.poland, true);
            }
        });
        this.german.setOnClickListener(new NoDoubleClickListener() { // from class: com.isaigu.gymapp.fragment.SettingFragment.14
            @Override // com.isaigu.gymapp.widget.NoDoubleClickListener
            public void onNoDoubleClick(View v) {
                SettingFragment.this.switchToLanguage(UserData.german, true);
            }
        });
        this.italian.setOnClickListener(new NoDoubleClickListener() { // from class: com.isaigu.gymapp.fragment.SettingFragment.15
            @Override // com.isaigu.gymapp.widget.NoDoubleClickListener
            public void onNoDoubleClick(View v) {
                SettingFragment.this.switchToLanguage(UserData.italian, true);
            }
        });
        this.turk.setOnClickListener(new NoDoubleClickListener() { // from class: com.isaigu.gymapp.fragment.SettingFragment.16
            @Override // com.isaigu.gymapp.widget.NoDoubleClickListener
            public void onNoDoubleClick(View v) {
                SettingFragment.this.switchToLanguage(UserData.turk, true);
            }
        });
        this.changeLogo.setOnClickListener(new NoDoubleClickListener() { // from class: com.isaigu.gymapp.fragment.SettingFragment.17
            @Override // com.isaigu.gymapp.widget.NoDoubleClickListener
            public void onNoDoubleClick(View v) {
                try {
                    SettingFragment.this.originalFile = SettingFragment.this.createOriImageFile(SettingFragment.this.getParentActivity());
                    SettingFragment.this.imageUri = AndroidUtils.selectImageFromGallery(SettingFragment.this, 1003, SettingFragment.this.originalFile);
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
            }
        });
        this.logout.setOnClickListener(new NoDoubleClickListener() { // from class: com.isaigu.gymapp.fragment.SettingFragment.18
            @Override // com.isaigu.gymapp.widget.NoDoubleClickListener
            public void onNoDoubleClick(View v) {
                EventBus.getDefault().post(new ApplicationExitEvent());
                SettingFragment.this.getParentActivity().replace(R.id.frameContainer, new LoginFragment());
                MessageDispatcher.dispatchEventMessage(EventMessage.event_show_loading_ui);
                TimerUtils.delayCallback(new Runnable() { // from class: com.isaigu.gymapp.fragment.SettingFragment.18.1
                    @Override // java.lang.Runnable
                    public void run() {
                        BleMgr.getController().disconnectAll();
                        DataMgr.getInstance().removeAllTrainingUser();
                        MessageDispatcher.dispatchEventMessage(EventMessage.event_hide_loading_ui);
                    }
                }, 2000L);
            }
        });
        this.defaultLogo.setOnClickListener(new AnonymousClass19());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.isaigu.gymapp.fragment.SettingFragment$5, reason: invalid class name */
    /* loaded from: /tmp/original-classes2.dex */
    public class AnonymousClass5 implements Runnable {
        AnonymousClass5() {
        }

        @Override // java.lang.Runnable
        public void run() {
            UserData.getInstance().useTime += 60;
            if (NetworkUtils.isNetworkConnected(SettingFragment.this.getParentActivity())) {
                UploadUserUseTimeDTO dto = new UploadUserUseTimeDTO();
                dto.time = UserData.getInstance().useTime;
                dto.userId = DataMgr.getInstance().loginUser.id;
                ApiMgr.uploadUseTime(dto, new OKHttpUtils.HttpResponseCallback<ResponseData<Object>>() { // from class: com.isaigu.gymapp.fragment.SettingFragment.5.1
                    @Override // com.isaigu.gymapp.utils.OKHttpUtils.HttpResponseCallback
                    public /* bridge */ /* synthetic */ void httpResponse(boolean z, String str, ResponseData<Object> responseData) {
                        httpResponse2(z, str, (ResponseData) responseData);
                    }

                    /* renamed from: httpResponse, reason: avoid collision after fix types in other method */
                    public void httpResponse2(boolean httpSuccess, String message, ResponseData result) {
                        if (httpSuccess && result != null) {
                            try {
                                if (result.getCode() == 0) {
                                    DataMgr.getInstance().loginUser.useTime = UserData.getInstance().useTime;
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                                return;
                            }
                        }
                        SettingFragment.this.getParentActivity().runOnUiThread(new Runnable() { // from class: com.isaigu.gymapp.fragment.SettingFragment.5.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                SettingFragment.this.timelength.setText(String.format(CommonUtils.formatTime2(UserData.getInstance().useTime), SettingFragment.this.getString(R.string.day), SettingFragment.this.getString(R.string.hour), SettingFragment.this.getString(R.string.minute)));
                            }
                        });
                    }
                });
            }
            FileUtils.saveData(UserData.getInstance());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.isaigu.gymapp.fragment.SettingFragment$19, reason: invalid class name */
    /* loaded from: /tmp/original-classes2.dex */
    public class AnonymousClass19 extends NoDoubleClickListener {
        AnonymousClass19() {
        }

        @Override // com.isaigu.gymapp.widget.NoDoubleClickListener
        public void onNoDoubleClick(View v) {
            try {
                File file = SettingFragment.this.createCropImageFile(SettingFragment.this.getContext());
                if (!file.exists()) {
                    file.createNewFile();
                }
                InputStream inputStream = SettingFragment.this.getParentActivity().getAssets().open("logo2.png");
                byte[] datas = new byte[inputStream.available()];
                inputStream.read(datas);
                inputStream.close();
                IOUtil.writeFile(file, datas);
                ApiMgr.uploadFile(file, new AnonymousClass1());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.isaigu.gymapp.fragment.SettingFragment$19$1, reason: invalid class name */
        /* loaded from: /tmp/original-classes2.dex */
        public class AnonymousClass1 extends OKHttpUtils.HttpResponseCallback<ResponseData<UploadFileVO>> {
            AnonymousClass1() {
            }

            @Override // com.isaigu.gymapp.utils.OKHttpUtils.HttpResponseCallback
            public void httpResponse(boolean httpSuccess, String message, ResponseData<UploadFileVO> result) {
                if (httpSuccess && result != null && result.getData() != null && result.isSuccess()) {
                    UserData.getInstance().logoPath = result.getData().fileUrl;
                    DataMgr.getInstance().loginUser.appLogoUrl = result.getData().fileUrl;
                    ApiMgr.updateAppLogo(Long.valueOf(DataMgr.getInstance().loginUser.id), result.getData().fileUrl, new OKHttpUtils.HttpResponseCallback<ResponseData<TrainUser>>() { // from class: com.isaigu.gymapp.fragment.SettingFragment.19.1.1
                        @Override // com.isaigu.gymapp.utils.OKHttpUtils.HttpResponseCallback
                        public void httpResponse(boolean httpSuccess2, String message2, ResponseData<TrainUser> result2) {
                            if (httpSuccess2 && result2 != null && result2.getData() != null && result2.isSuccess()) {
                                DataMgr.getInstance().loginUser = result2.getData();
                                FileUtils.saveData(UserData.getInstance());
                                FileUtils.saveData(Constants.file_name_login_user, DataMgr.getInstance().loginUser);
                                SettingFragment.this.getParentActivity().runOnUiThread(new Runnable() { // from class: com.isaigu.gymapp.fragment.SettingFragment.19.1.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        Glide.with(SettingFragment.this.getParentActivity()).load(UserData.getInstance().logoPath).into(SettingFragment.this.logoImage);
                                        Glide.with(SettingFragment.this.getParentActivity()).load(UserData.getInstance().logoPath).into(SettingFragment.this.logoImage2);
                                    }
                                });
                            }
                        }
                    });
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void switchToLanguage(String language, boolean restart) {
        this.chinese.setBackgroundResource(R.mipmap.chinese1);
        this.english.setBackgroundResource(R.mipmap.english1);
        this.espanol.setBackgroundResource(R.mipmap.espanol1);
        this.rassia.setBackgroundResource(R.mipmap.russia1);
        this.portugues.setBackgroundResource(R.mipmap.portugues1);
        this.french.setBackgroundResource(R.mipmap.french1);
        this.poland.setBackgroundResource(R.mipmap.poland1);
        this.german.setBackgroundResource(R.mipmap.german1);
        this.italian.setBackgroundResource(R.mipmap.italian1);
        this.turk.setBackgroundResource(R.mipmap.turk1);
        if (UserData.chinese.equals(language)) {
            this.chinese.setBackgroundResource(R.mipmap.chinese);
        } else if (UserData.english.equals(language)) {
            this.english.setBackgroundResource(R.mipmap.english);
        } else if (UserData.espanol.equals(language)) {
            this.espanol.setBackgroundResource(R.mipmap.espanol);
        } else if (UserData.russia.equals(language)) {
            this.rassia.setBackgroundResource(R.mipmap.russia);
        } else if (UserData.portugus.equals(language)) {
            this.portugues.setBackgroundResource(R.mipmap.portugues);
        } else if (UserData.french.equals(language)) {
            this.french.setBackgroundResource(R.mipmap.french);
        } else if (UserData.poland.equals(language)) {
            this.poland.setBackgroundResource(R.mipmap.poland);
        } else if (UserData.german.equals(language)) {
            this.german.setBackgroundResource(R.mipmap.german);
        } else if (UserData.italian.equals(language)) {
            this.italian.setBackgroundResource(R.mipmap.italian);
        } else if (UserData.turk.equals(language)) {
            this.turk.setBackgroundResource(R.mipmap.turk);
        }
        LanguageUtils.setLang(getParentActivity(), language);
        UserData.getInstance().language = language;
        FileUtils.saveData(UserData.getInstance());
        EventBus.getDefault().post(new ApplicationExitEvent());
        DataMgr.getInstance().trainingUsers.clear();
        LanguageUtils.applyChange(getParentActivity());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File createOriImageFile(Context context) throws IOException {
        String imgNameOri = "LogoPic_" + new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date());
        File pictureDirOri = new File(context.getExternalFilesDir(Environment.DIRECTORY_PICTURES).getAbsolutePath() + "/OriPicture");
        if (!pictureDirOri.exists()) {
            pictureDirOri.mkdirs();
        }
        File image = File.createTempFile(imgNameOri, ".png", pictureDirOri);
        return image;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File createCropImageFile(Context context) throws IOException {
        String imgNameCrop = "LogoPic_" + new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date());
        File pictureDirCrop = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/" + "com.isaigu.gymapp25" + "/CropPicture");
        if (!pictureDirCrop.exists()) {
            pictureDirCrop.mkdirs();
        }
        File image = File.createTempFile(imgNameCrop, ".png", pictureDirCrop);
        Logger.logConsole("temp image exist : " + image.exists());
        return image;
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (resultCode == -1) {
            if (requestCode == 1003) {
                File file = ImageUtils.getFileFromUri(data.getData(), getParentActivity());
                if (file != null) {
                    try {
                        File cropPhotoFile = createCropImageFile(getParentActivity());
                        this.cropImageUri = Uri.fromFile(cropPhotoFile);
                        if (Build.VERSION.SDK_INT >= 24) {
                            FileProvider.getUriForFile(getContext(), "com.isaigu.gymapp25.provider", file);
                        } else {
                            Uri.fromFile(file);
                        }
                        UserData.getInstance().logoPath = file.getAbsolutePath();
                        ApiMgr.uploadFile(file, new AnonymousClass20());
                        return;
                    } catch (Exception e) {
                        e.printStackTrace();
                        return;
                    }
                }
                return;
            }
            if (requestCode == 1002) {
                try {
                    Uri bundle = data.getData();
                    if (bundle == null) {
                        Bitmap face = (Bitmap) data.getExtras().getParcelable("data");
                        FileOutputStream fileOutputStream = new FileOutputStream(new File(this.cropImageUri.getPath()));
                        face.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                        fileOutputStream.flush();
                        fileOutputStream.close();
                        UserData.getInstance().logoPath = this.cropImageUri.getPath();
                    } else {
                        UserData.getInstance().logoPath = bundle.getPath();
                    }
                    FileUtils.saveData(UserData.getInstance());
                    getParentActivity().runOnUiThread(new Runnable() { // from class: com.isaigu.gymapp.fragment.SettingFragment.21
                        @Override // java.lang.Runnable
                        public void run() {
                            Glide.with(SettingFragment.this.getParentActivity()).load(UserData.getInstance().logoPath).into(SettingFragment.this.logoImage);
                            Glide.with(SettingFragment.this.getParentActivity()).load(UserData.getInstance().logoPath).into(SettingFragment.this.logoImage2);
                        }
                    });
                    return;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return;
                }
            }
            if (requestCode == 2) {
                try {
                    if (!Settings.System.canWrite(getParentActivity())) {
                        getParentActivity().showTips(getString(R.string.denyWriteSetting));
                    }
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.isaigu.gymapp.fragment.SettingFragment$20, reason: invalid class name */
    /* loaded from: /tmp/original-classes2.dex */
    public class AnonymousClass20 extends OKHttpUtils.HttpResponseCallback<ResponseData<UploadFileVO>> {
        AnonymousClass20() {
        }

        @Override // com.isaigu.gymapp.utils.OKHttpUtils.HttpResponseCallback
        public void httpResponse(boolean httpSuccess, String message, ResponseData<UploadFileVO> result) {
            if (httpSuccess && result != null && result.getData() != null && result.isSuccess()) {
                UserData.getInstance().logoPath = result.getData().fileUrl;
                DataMgr.getInstance().loginUser.appLogoUrl = result.getData().fileUrl;
                ApiMgr.updateAppLogo(Long.valueOf(DataMgr.getInstance().loginUser.id), result.getData().fileUrl, new OKHttpUtils.HttpResponseCallback<ResponseData<TrainUser>>() { // from class: com.isaigu.gymapp.fragment.SettingFragment.20.1
                    @Override // com.isaigu.gymapp.utils.OKHttpUtils.HttpResponseCallback
                    public void httpResponse(boolean httpSuccess2, String message2, ResponseData<TrainUser> result2) {
                        if (httpSuccess2 && result2 != null && result2.getData() != null && result2.isSuccess()) {
                            DataMgr.getInstance().loginUser = result2.getData();
                            FileUtils.saveData(UserData.getInstance());
                            FileUtils.saveData(Constants.file_name_login_user, DataMgr.getInstance().loginUser);
                            SettingFragment.this.getParentActivity().runOnUiThread(new Runnable() { // from class: com.isaigu.gymapp.fragment.SettingFragment.20.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    Glide.with(SettingFragment.this.getParentActivity()).load(UserData.getInstance().logoPath).into(SettingFragment.this.logoImage);
                                    Glide.with(SettingFragment.this.getParentActivity()).load(UserData.getInstance().logoPath).into(SettingFragment.this.logoImage2);
                                }
                            });
                        }
                    }
                });
            }
        }
    }

    @Override // com.isaigu.gymapp.BaseFragment
    public void onDestroyView() {
        super.onDestroyView();
        TimerUtils.stopTimer(this.timer);
        TimerUtils.stopTimer(this.useTimer);
    }

    private void requestWriteSettings() {
        try {
            if (Build.VERSION.SDK_INT >= 23 && !Settings.System.canWrite(getParentActivity())) {
                Intent intent = new Intent("android.settings.action.MANAGE_WRITE_SETTINGS");
                intent.setData(Uri.parse("package:" + getParentActivity().getPackageName()));
                startActivityForResult(intent, 2);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
