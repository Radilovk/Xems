package com.isaigu.gymapp.utils;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.LocaleList;
import android.util.DisplayMetrics;
import android.util.Log;
import com.isaigu.gymapp.bean.UserData;
import java.util.Locale;

/* loaded from: /workspace/classes2.dex */
public class LanguageUtils {
    public static void setLang(Activity context, String language) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("setting_share", 0);
        SharedPreferences.Editor editor = sharedPreferences.edit();
        editor.putString("language", language);
        editor.commit();
    }

    public static String getLang(Activity context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("setting_share", 0);
        String lanAtr = sharedPreferences.getString("language", UserData.english);
        return lanAtr;
    }

    public static void changeLanguage(Activity context, String language) {
        UserData.getInstance().language = language;
        FileUtils.saveData(UserData.getInstance());
        applyChange(context);
    }

    public static Locale getLocale(String language) {
        Log.i("lllll", language);
        if (UserData.chinese.equals(language)) {
            return Locale.CHINA;
        }
        if (UserData.espanol.equals(language)) {
            return new Locale(UserData.espanol, "ES");
        }
        if (UserData.russia.equals(language)) {
            return new Locale(UserData.russia, "RU");
        }
        if (UserData.portugus.equals(language)) {
            return new Locale(UserData.portugus, "PT");
        }
        if (UserData.french.equals(language)) {
            return new Locale(UserData.french, "FR");
        }
        if (UserData.poland.equals(language)) {
            return new Locale(UserData.poland, "PL");
        }
        if (UserData.german.equals(language)) {
            return new Locale(UserData.german, "DE");
        }
        if (UserData.italian.equals(language)) {
            return Locale.ITALY;
        }
        if (UserData.turk.equals(language)) {
            return new Locale(UserData.turk, UserData.turk);
        }
        if (UserData.bulgarian.equals(language)) {
            return new Locale("bg", "BG");
        }
        return Locale.ENGLISH;
    }

    public static Context wrapContext(Context context) {
        Locale newLocale = getLocale(UserData.getInstance().language);
        Resources res = context.getResources();
        Configuration configuration = res.getConfiguration();
        if (Build.VERSION.SDK_INT >= 24) {
            configuration.setLocale(newLocale);
            LocaleList localeList = new LocaleList(newLocale);
            LocaleList.setDefault(localeList);
            configuration.setLocales(localeList);
            return context.createConfigurationContext(configuration);
        }
        if (Build.VERSION.SDK_INT >= 19) {
            configuration.setLocale(newLocale);
            return context.createConfigurationContext(configuration);
        }
        return context;
    }

    public static void applyChange(Activity context) {
        changeAppLanguage(context);
        context.recreate();
    }

    public static void changeAppLanguage(Activity context) {
        Resources resources = context.getResources();
        Configuration configuration = resources.getConfiguration();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        configuration.locale = getLocale(getLang(context));
        Log.i("lllll", configuration.locale.getLanguage());
        resources.updateConfiguration(configuration, displayMetrics);
    }

    public static void applyChangeWithoutRestart(Activity context) {
        changeAppLanguage(context);
    }
}
