package com.isaigu.gymapp.bean;

import android.text.TextUtils;
import com.isaigu.gymapp.utils.FileUtils;
import java.util.Locale;

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
    public boolean autoLogin;
    public String language;
    public boolean leftMode;
    public int light;
    public String logoPath;
    public String password;
    public boolean rememberPassword;
    public String roleName;
    public long useTime;
    public String userName;
    /** Per-channel pulse depth override in μs; 0 = use program global pulseWidth. */
    public int[] channelPulseWidthUs;

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
            ensureChannelPulseWidths(instance);
        }
        return instance;
    }

    public static void ensureChannelPulseWidths(UserData data) {
        if (data.channelPulseWidthUs == null || data.channelPulseWidthUs.length != 10) {
            data.channelPulseWidthUs = new int[10];
        }
    }

    public boolean isLogin() {
        return this.autoLogin;
    }
}
