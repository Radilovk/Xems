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
    public int currentIncreaseStep = 1;
    public int currentDecreaseStep = 1;
    public int defaultPulseContinue = 4;
    public int defaultPulsePause = 3;

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
        }
        return instance;
    }

    public boolean isLogin() {
        return this.autoLogin;
    }
}
