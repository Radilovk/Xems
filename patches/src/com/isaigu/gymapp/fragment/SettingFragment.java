package com.isaigu.gymapp.fragment;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.provider.Settings;
import android.support.v4.app.FragmentActivity;
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
import com.isaigu.gymapp.BuildConfig;
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
import com.isaigu.gymapp.train.events.ApplicationExitEvent;
import com.isaigu.gymapp.utils.AndroidUtils;
import com.isaigu.gymapp.utils.FileUtils;
import com.isaigu.gymapp.utils.IOUtil;
import com.isaigu.gymapp.utils.ImageUtils;
import com.isaigu.gymapp.utils.LanguageUtils;
import com.isaigu.gymapp.utils.Logger;
import com.isaigu.gymapp.utils.NetworkUtils;
import com.isaigu.gymapp.utils.OKHttpUtils;
import com.isaigu.gymapp.utils.StrengthAdjustUtil;
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
import org.apache.commons.lang3.time.DateUtils;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /workspace/classes2.dex */
public class SettingFragment extends BaseFragment {
    private static final int REQUEST_CODE_WRITE_SETTINGS = 2;
    private static final int REQUEST_CODE_PICK_ICON = 1004;
    private static final int REQUEST_CODE_PICK_SPLASH = 1005;
    private Button bulgarian;
    private Button changeIcon;
    private Button changeLogo;
    private Button changeSplash;
    private Button chinese;
    private RangeSeekBar currentDecreaseSeekBar;
    private TextView currentDecreaseValue;
    private RangeSeekBar currentIncreaseSeekBar;
    private TextView currentIncreaseValue;
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
    private ImageView iconPreview;
    private Button logout;
    private File originalFile;
    private RangeSeekBar pulseContinueSeekBar;
    private TextView pulseContinueValue;
    private RangeSeekBar pulsePauseSeekBar;
    private TextView pulsePauseValue;
    private ImageView splashPreview;
    private LinearLayout channelCalibrationContainer;
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

    @Override // com.isaigu.gymapp.BaseFragment, android.support.v4.app.Fragment
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
        this.bulgarian = (Button) view.findViewById(R.id.bulgarian);
        hideLegacyLanguageButtons();
        this.changeLogo = (Button) view.findViewById(R.id.changeLogo);
        this.changeIcon = (Button) view.findViewById(R.id.changeIcon);
        this.changeSplash = (Button) view.findViewById(R.id.changeSplash);
        this.logoImage = (ImageView) view.findViewById(R.id.logoImage);
        this.logoImage2 = (ImageView) view.findViewById(R.id.logoImage2);
        this.iconPreview = (ImageView) view.findViewById(R.id.iconPreview);
        this.splashPreview = (ImageView) view.findViewById(R.id.splashPreview);
        this.currentIncreaseSeekBar = (RangeSeekBar) view.findViewById(R.id.currentIncreaseSeekBar);
        this.currentDecreaseSeekBar = (RangeSeekBar) view.findViewById(R.id.currentDecreaseSeekBar);
        this.currentIncreaseValue = (TextView) view.findViewById(R.id.currentIncreaseValue);
        this.currentDecreaseValue = (TextView) view.findViewById(R.id.currentDecreaseValue);
        this.pulseContinueSeekBar = (RangeSeekBar) view.findViewById(R.id.pulseContinueSeekBar);
        this.pulsePauseSeekBar = (RangeSeekBar) view.findViewById(R.id.pulsePauseSeekBar);
        this.pulseContinueValue = (TextView) view.findViewById(R.id.pulseContinueValue);
        this.pulsePauseValue = (TextView) view.findViewById(R.id.pulsePauseValue);
        this.channelCalibrationContainer = (LinearLayout) view.findViewById(R.id.channelCalibrationContainer);
        if (!TextUtils.isEmpty(UserData.getInstance().logoPath)) {
            Glide.with((FragmentActivity) getParentActivity()).load(UserData.getInstance().logoPath).into(this.logoImage);
            Glide.with((FragmentActivity) getParentActivity()).load(UserData.getInstance().logoPath).into(this.logoImage2);
        }
        if (!TextUtils.isEmpty(UserData.getInstance().iconPath) && this.iconPreview != null) {
            Glide.with((FragmentActivity) getParentActivity()).load(UserData.getInstance().iconPath).into(this.iconPreview);
        }
        if (!TextUtils.isEmpty(UserData.getInstance().splashPath) && this.splashPreview != null) {
            Glide.with((FragmentActivity) getParentActivity()).load(UserData.getInstance().splashPath).into(this.splashPreview);
        }
        TextView textView = (TextView) view.findViewById(R.id.softwareVersion);
        this.softwareVersion = textView;
        textView.setText(AndroidUtils.getVersionName(getParentActivity()));
        this.time = (TextView) view.findViewById(2131296682);
        this.timelength = (TextView) view.findViewById(R.id.timelength);
        this.switchButton = (SwitchButton) view.findViewById(R.id.switch_button);
        this.logout = (Button) view.findViewById(R.id.logout);
        this.defaultLogo = (Button) view.findViewById(R.id.defaultLogo);
        requestWriteSettings();
        MessageDispatcher.attachEventListener((short) 10, this);
        MessageDispatcher.attachEventListener((short) 8, this);
        return view;
    }

    @Override // android.support.v4.app.Fragment
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

    private void hideLegacyLanguageButtons() {
        Button[] legacyButtons = {this.chinese, this.espanol, this.rassia, this.portugues, this.french, this.poland, this.german, this.italian, this.turk};
        for (Button button : legacyButtons) {
            if (button != null) {
                button.setVisibility(View.GONE);
            }
        }
    }

    private void initTrainingPreferenceSeekBars() {
        ensureTrainingDefaults();
        if (this.currentIncreaseSeekBar != null) {
            this.currentIncreaseSeekBar.setRange(1.0f, 50.0f);
            this.currentIncreaseSeekBar.setValue(UserData.getInstance().currentIncreaseStepTenths);
            this.currentIncreaseValue.setText(formatStepMa(UserData.getInstance().currentIncreaseStepTenths));
            this.currentIncreaseSeekBar.setOnRangeChangedListener(new OnRangeChangedListener() {
                @Override
                public void onRangeChanged(RangeSeekBar view, float leftValue, float rightValue, boolean isFromUser) {
                    int value = Math.max(1, Math.round(leftValue));
                    UserData.getInstance().currentIncreaseStepTenths = value;
                    SettingFragment.this.currentIncreaseValue.setText(SettingFragment.this.formatStepMa(value));
                }

                @Override
                public void onStartTrackingTouch(RangeSeekBar view, boolean isLeft) {
                }

                @Override
                public void onStopTrackingTouch(RangeSeekBar view, boolean isLeft) {
                    FileUtils.saveData(UserData.getInstance());
                }
            });
        }
        if (this.currentDecreaseSeekBar != null) {
            this.currentDecreaseSeekBar.setRange(1.0f, 50.0f);
            this.currentDecreaseSeekBar.setValue(UserData.getInstance().currentDecreaseStepTenths);
            this.currentDecreaseValue.setText(formatStepMa(UserData.getInstance().currentDecreaseStepTenths));
            this.currentDecreaseSeekBar.setOnRangeChangedListener(new OnRangeChangedListener() {
                @Override
                public void onRangeChanged(RangeSeekBar view, float leftValue, float rightValue, boolean isFromUser) {
                    int value = Math.max(1, Math.round(leftValue));
                    UserData.getInstance().currentDecreaseStepTenths = value;
                    SettingFragment.this.currentDecreaseValue.setText(SettingFragment.this.formatStepMa(value));
                }

                @Override
                public void onStartTrackingTouch(RangeSeekBar view, boolean isLeft) {
                }

                @Override
                public void onStopTrackingTouch(RangeSeekBar view, boolean isLeft) {
                    FileUtils.saveData(UserData.getInstance());
                }
            });
        }
        initChannelCalibrationRows();
        if (this.pulseContinueSeekBar != null) {
            this.pulseContinueSeekBar.setRange(1.0f, 60.0f);
            this.pulseContinueSeekBar.setValue(UserData.getInstance().defaultPulseContinue);
            this.pulseContinueValue.setText(UserData.getInstance().defaultPulseContinue + " s");
            this.pulseContinueSeekBar.setOnRangeChangedListener(new OnRangeChangedListener() {
                @Override
                public void onRangeChanged(RangeSeekBar view, float leftValue, float rightValue, boolean isFromUser) {
                    int value = Math.max(1, Math.round(leftValue));
                    UserData.getInstance().defaultPulseContinue = value;
                    SettingFragment.this.pulseContinueValue.setText(value + " s");
                }

                @Override
                public void onStartTrackingTouch(RangeSeekBar view, boolean isLeft) {
                }

                @Override
                public void onStopTrackingTouch(RangeSeekBar view, boolean isLeft) {
                    FileUtils.saveData(UserData.getInstance());
                }
            });
        }
        if (this.pulsePauseSeekBar != null) {
            this.pulsePauseSeekBar.setRange(1.0f, 60.0f);
            this.pulsePauseSeekBar.setValue(UserData.getInstance().defaultPulsePause);
            this.pulsePauseValue.setText(UserData.getInstance().defaultPulsePause + " s");
            this.pulsePauseSeekBar.setOnRangeChangedListener(new OnRangeChangedListener() {
                @Override
                public void onRangeChanged(RangeSeekBar view, float leftValue, float rightValue, boolean isFromUser) {
                    int value = Math.max(1, Math.round(leftValue));
                    UserData.getInstance().defaultPulsePause = value;
                    SettingFragment.this.pulsePauseValue.setText(value + " s");
                }

                @Override
                public void onStartTrackingTouch(RangeSeekBar view, boolean isLeft) {
                }

                @Override
                public void onStopTrackingTouch(RangeSeekBar view, boolean isLeft) {
                    FileUtils.saveData(UserData.getInstance());
                }
            });
        }
    }

    private String formatStepMa(int tenths) {
        return StrengthAdjustUtil.formatMa(tenths / 10.0f) + " mA";
    }

    private void initChannelCalibrationRows() {
        if (this.channelCalibrationContainer == null) {
            return;
        }
        this.channelCalibrationContainer.removeAllViews();
        final String[] labels = getChannelLabels();
        for (int i = 0; i < labels.length; i++) {
            final int channelIndex = i;
            LinearLayout row = new LinearLayout(getParentActivity());
            row.setOrientation(LinearLayout.HORIZONTAL);
            row.setGravity(android.view.Gravity.CENTER_VERTICAL);
            row.setPadding(20, 8, 20, 8);
            TextView label = new TextView(getParentActivity());
            label.setText(labels[i]);
            label.setTextSize(18.0f);
            label.setLayoutParams(new LinearLayout.LayoutParams(220, LinearLayout.LayoutParams.WRAP_CONTENT));
            final TextView multiplierValue = new TextView(getParentActivity());
            multiplierValue.setText(String.format(java.util.Locale.US, "%.1fx", UserData.getInstance().channelStepMultiplier[channelIndex]));
            multiplierValue.setTextSize(18.0f);
            multiplierValue.setLayoutParams(new LinearLayout.LayoutParams(70, LinearLayout.LayoutParams.WRAP_CONTENT));
            RangeSeekBar multiplierSeekBar = new RangeSeekBar(getParentActivity());
            LinearLayout.LayoutParams seekParams = new LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1.0f);
            seekParams.rightMargin = 16;
            multiplierSeekBar.setLayoutParams(seekParams);
            multiplierSeekBar.setRange(1.0f, 20.0f);
            multiplierSeekBar.setValue(UserData.getInstance().channelStepMultiplier[channelIndex] * 10.0f);
            multiplierSeekBar.setOnRangeChangedListener(new OnRangeChangedListener() {
                @Override
                public void onRangeChanged(RangeSeekBar view, float leftValue, float rightValue, boolean isFromUser) {
                    float value = Math.max(0.1f, Math.round(leftValue) / 10.0f);
                    UserData.getInstance().channelStepMultiplier[channelIndex] = value;
                    multiplierValue.setText(String.format(java.util.Locale.US, "%.1fx", value));
                }

                @Override
                public void onStartTrackingTouch(RangeSeekBar view, boolean isLeft) {
                }

                @Override
                public void onStopTrackingTouch(RangeSeekBar view, boolean isLeft) {
                    FileUtils.saveData(UserData.getInstance());
                }
            });
            final TextView pulseValue = new TextView(getParentActivity());
            int pulse = UserData.getInstance().channelPulseWidthUs[channelIndex];
            pulseValue.setText(pulse > 0 ? pulse + " us" : getString(0x7f0d0105));
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
                    pulseValue.setText(value > 0 ? value + " us" : getString(0x7f0d0105));
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
            row.addView(multiplierValue);
            row.addView(multiplierSeekBar);
            row.addView(pulseValue);
            row.addView(pulseSeekBar);
            this.channelCalibrationContainer.addView(row);
        }
    }

    private String[] getChannelLabels() {
        return new String[]{
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
    }

    private void ensureTrainingDefaults() {
        StrengthAdjustUtil.ensureDefaults();
        if (UserData.getInstance().defaultPulseContinue <= 0) {
            UserData.getInstance().defaultPulseContinue = 4;
        }
        if (UserData.getInstance().defaultPulsePause <= 0) {
            UserData.getInstance().defaultPulsePause = 3;
        }
    }

    private void initSet() {
        initTrainingPreferenceSeekBars();
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
        this.useTimer = TimerUtils.scheduleTimer(new AnonymousClass5(), DateUtils.MILLIS_PER_MINUTE, DateUtils.MILLIS_PER_MINUTE);
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
        if (!UserData.english.equals(language) && !UserData.bulgarian.equals(language)) {
            language = UserData.bulgarian;
        }
        updateLanguageSelection(language);
        this.english.setOnClickListener(new NoDoubleClickListener() {
            @Override
            public void onNoDoubleClick(View v) {
                SettingFragment.this.switchToLanguage(UserData.english, true);
            }
        });
        if (this.bulgarian != null) {
            this.bulgarian.setOnClickListener(new NoDoubleClickListener() {
                @Override
                public void onNoDoubleClick(View v) {
                    SettingFragment.this.switchToLanguage(UserData.bulgarian, true);
                }
            });
        }
        if (this.changeIcon != null) {
            this.changeIcon.setOnClickListener(new NoDoubleClickListener() {
                @Override
                public void onNoDoubleClick(View v) {
                    try {
                        SettingFragment.this.originalFile = SettingFragment.this.createOriImageFile(SettingFragment.this.getParentActivity());
                        SettingFragment.this.imageUri = AndroidUtils.selectImageFromGallery(SettingFragment.this, REQUEST_CODE_PICK_ICON, SettingFragment.this.originalFile);
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            });
        }
        if (this.changeSplash != null) {
            this.changeSplash.setOnClickListener(new NoDoubleClickListener() {
                @Override
                public void onNoDoubleClick(View v) {
                    try {
                        SettingFragment.this.originalFile = SettingFragment.this.createOriImageFile(SettingFragment.this.getParentActivity());
                        SettingFragment.this.imageUri = AndroidUtils.selectImageFromGallery(SettingFragment.this, REQUEST_CODE_PICK_SPLASH, SettingFragment.this.originalFile);
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            });
        }
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
                MessageDispatcher.dispatchEventMessage((short) 103);
                TimerUtils.delayCallback(new Runnable() { // from class: com.isaigu.gymapp.fragment.SettingFragment.18.1
                    @Override // java.lang.Runnable
                    public void run() {
                        BleMgr.getController().disconnectAll();
                        DataMgr.getInstance().removeAllTrainingUser();
                        MessageDispatcher.dispatchEventMessage((short) 104);
                    }
                }, 2000L);
            }
        });
        this.defaultLogo.setOnClickListener(new AnonymousClass19());
    }

    /* renamed from: com.isaigu.gymapp.fragment.SettingFragment$5, reason: invalid class name */
    class AnonymousClass5 implements Runnable {
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

    /* renamed from: com.isaigu.gymapp.fragment.SettingFragment$19, reason: invalid class name */
    class AnonymousClass19 extends NoDoubleClickListener {
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

        /* renamed from: com.isaigu.gymapp.fragment.SettingFragment$19$1, reason: invalid class name */
        class AnonymousClass1 extends OKHttpUtils.HttpResponseCallback<ResponseData<UploadFileVO>> {
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
                                        Glide.with((FragmentActivity) SettingFragment.this.getParentActivity()).load(UserData.getInstance().logoPath).into(SettingFragment.this.logoImage);
                                        Glide.with((FragmentActivity) SettingFragment.this.getParentActivity()).load(UserData.getInstance().logoPath).into(SettingFragment.this.logoImage2);
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
    private void updateLanguageSelection(String language) {
        if (this.english != null) {
            this.english.setBackgroundResource(UserData.english.equals(language) ? R.mipmap.english : R.mipmap.english1);
        }
        if (this.bulgarian != null) {
            this.bulgarian.setBackgroundResource(UserData.bulgarian.equals(language) ? R.drawable.round_circle_drawable_r20_red : R.drawable.round_circle_drawable_r20_white);
            this.bulgarian.setTextColor(getResources().getColor(UserData.bulgarian.equals(language) ? R.color.white_color : R.color.light_black_color));
        }
    }

    public void switchToLanguage(String language, boolean restart) {
        if (!UserData.english.equals(language) && !UserData.bulgarian.equals(language)) {
            language = UserData.bulgarian;
        }
        updateLanguageSelection(language);
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
        File pictureDirCrop = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/" + BuildConfig.APPLICATION_ID + "/CropPicture");
        if (!pictureDirCrop.exists()) {
            pictureDirCrop.mkdirs();
        }
        File image = File.createTempFile(imgNameCrop, ".png", pictureDirCrop);
        Logger.logConsole("temp image exist : " + image.exists());
        return image;
    }

    @Override // android.support.v4.app.Fragment
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (resultCode == -1) {
            if (requestCode == 1003 || requestCode == REQUEST_CODE_PICK_ICON || requestCode == REQUEST_CODE_PICK_SPLASH) {
                File file = ImageUtils.getFileFromUri(data.getData(), getParentActivity());
                if (file != null) {
                    try {
                        if (requestCode == REQUEST_CODE_PICK_ICON) {
                            UserData.getInstance().iconPath = file.getAbsolutePath();
                            FileUtils.saveData(UserData.getInstance());
                            if (this.iconPreview != null) {
                                Glide.with((FragmentActivity) getParentActivity()).load(UserData.getInstance().iconPath).into(this.iconPreview);
                            }
                            return;
                        }
                        if (requestCode == REQUEST_CODE_PICK_SPLASH) {
                            UserData.getInstance().splashPath = file.getAbsolutePath();
                            FileUtils.saveData(UserData.getInstance());
                            if (this.splashPreview != null) {
                                Glide.with((FragmentActivity) getParentActivity()).load(UserData.getInstance().splashPath).into(this.splashPreview);
                            }
                            return;
                        }
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
                            Glide.with((FragmentActivity) SettingFragment.this.getParentActivity()).load(UserData.getInstance().logoPath).into(SettingFragment.this.logoImage);
                            Glide.with((FragmentActivity) SettingFragment.this.getParentActivity()).load(UserData.getInstance().logoPath).into(SettingFragment.this.logoImage2);
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

    /* renamed from: com.isaigu.gymapp.fragment.SettingFragment$20, reason: invalid class name */
    class AnonymousClass20 extends OKHttpUtils.HttpResponseCallback<ResponseData<UploadFileVO>> {
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
                                    Glide.with((FragmentActivity) SettingFragment.this.getParentActivity()).load(UserData.getInstance().logoPath).into(SettingFragment.this.logoImage);
                                    Glide.with((FragmentActivity) SettingFragment.this.getParentActivity()).load(UserData.getInstance().logoPath).into(SettingFragment.this.logoImage2);
                                }
                            });
                        }
                    }
                });
            }
        }
    }

    @Override // com.isaigu.gymapp.BaseFragment, android.support.v4.app.Fragment
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
