package com.isaigu.gymapp.bean;

import android.text.TextUtils;
import com.isaigu.gymapp.utils.FileUtils;
import java.util.Locale;

/* loaded from: /workspace/classes2.dex */
public class UserData {
    public static final String chinese = "zh";
    public static final String english = "en";
    public static final String espanol = "es";
    public static final String french = "fr";
    public static final String german = "de";
    private static UserData instance = null;
    public static final String italian = "it";
    public static final String poland = "pl";
    public static final String portugus = "pt";
    public static final String russia = "ru";
    public static final String turk = "tu";
    public static final String bulgarian = "bg";
    public boolean autoLogin;
    public String language;
    public boolean leftMode;
    public int light;
    public String logoPath;
    public String iconPath;
    public String splashPath;
    public String password;
    public boolean rememberPassword;
    public String roleName;
    public long useTime;
    public String userName;
    public int currentIncreaseStepTenths = 1;
    public int currentDecreaseStepTenths = 1;
    @Deprecated
    public int currentIncreaseStep;
    @Deprecated
    public int currentDecreaseStep;
    public float[] channelStepMultiplier;
    public int[] channelPulseWidthUs;
    public int defaultPulseContinue = 4;
    public int defaultPulsePause = 3;
    public boolean alternateImpulseMode;
    public int alternatePhaseType;

    public static UserData getInstance() {
        if (instance == null) {
            UserData userData = (UserData) FileUtils.getData(UserData.class);
            instance = userData;
            if (userData == null) {
                UserData userData2 = new UserData();
                instance = userData2;
                FileUtils.saveData(userData2);
            }
            if (TextUtils.isEmpty(instance.language)) {
                instance.language = Locale.getDefault().getLanguage();
            }
            migrateLegacyTrainingSettings(instance);
        }
        return instance;
    }

    private static void migrateLegacyTrainingSettings(UserData data) {
        if (data.currentIncreaseStepTenths <= 0 && data.currentIncreaseStep > 0) {
            data.currentIncreaseStepTenths = data.currentIncreaseStep * 10;
        }
        if (data.currentDecreaseStepTenths <= 0 && data.currentDecreaseStep > 0) {
            data.currentDecreaseStepTenths = data.currentDecreaseStep * 10;
        }
        if (data.currentIncreaseStepTenths <= 0) {
            data.currentIncreaseStepTenths = 1;
        }
        if (data.currentDecreaseStepTenths <= 0) {
            data.currentDecreaseStepTenths = 1;
        }
        com.isaigu.gymapp.utils.StrengthAdjustUtil.ensureDefaults();
    }

    public boolean isLogin() {
        return this.autoLogin;
    }
}
