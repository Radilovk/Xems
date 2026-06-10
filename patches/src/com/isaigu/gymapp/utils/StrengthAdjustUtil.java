package com.isaigu.gymapp.utils;

import com.isaigu.gymapp.bean.PartStrenthBean;
import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.bean.UserData;

public final class StrengthAdjustUtil {
    public static final int MIN_STEP_TENTHS = 1;
    public static final int MAX_STEP_TENTHS = 50;
    public static final int MAX_STRENGTH_TENTHS = 1000;

    private StrengthAdjustUtil() {
    }

    public static int getIncreaseStepTenths() {
        ensureDefaults();
        return UserData.getInstance().currentIncreaseStepTenths;
    }

    public static int getDecreaseStepTenths() {
        ensureDefaults();
        return UserData.getInstance().currentDecreaseStepTenths;
    }

    public static void ensureDefaults() {
        UserData data = UserData.getInstance();
        if (data.currentIncreaseStepTenths <= 0) {
            data.currentIncreaseStepTenths = 1;
        }
        if (data.currentDecreaseStepTenths <= 0) {
            data.currentDecreaseStepTenths = 1;
        }
        if (data.channelStepMultiplier == null || data.channelStepMultiplier.length != 10) {
            data.channelStepMultiplier = new float[]{1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.5f, 1.0f, 1.0f, 1.0f, 1.0f};
        }
        if (data.channelPulseWidthUs == null || data.channelPulseWidthUs.length != 10) {
            data.channelPulseWidthUs = new int[10];
        }
    }

    public static int getStrengthTenths(ProgramDataBean bean) {
        return Math.max(0, bean.strenthTenths);
    }

    public static float getStrengthMa(ProgramDataBean bean) {
        return getStrengthTenths(bean) / 10.0f;
    }

    public static void setStrengthMa(ProgramDataBean bean, float ma) {
        bean.strenthTenths = clamp(Math.round(ma * 10.0f), 0, MAX_STRENGTH_TENTHS);
        bean.strenth = Math.round(bean.strenthTenths / 10.0f);
    }

    public static float getChannelMa(ProgramDataBean bean, int channelIndex) {
        int totalTenths = getStrengthTenths(bean);
        if (totalTenths <= 0) {
            return 0.0f;
        }
        float ratio = getChannelRatio(bean.strenthBean, channelIndex);
        return (totalTenths * ratio) / 10.0f;
    }

    public static void adjustOverallMa(ProgramDataBean bean, int deltaTenths) {
        migrate(bean);
        int next = clamp(getStrengthTenths(bean) + deltaTenths, 0, MAX_STRENGTH_TENTHS);
        bean.strenthTenths = next;
        bean.strenth = Math.round(next / 10.0f);
    }

    public static void adjustChannelMa(ProgramDataBean bean, int channelIndex, int signedDeltaTenths) {
        migrate(bean);
        int totalTenths = getStrengthTenths(bean);
        if (totalTenths <= 0 || channelIndex < 0 || channelIndex >= 10) {
            return;
        }
        float multiplier = UserData.getInstance().channelStepMultiplier[channelIndex];
        if (multiplier <= 0.0f) {
            multiplier = 1.0f;
        }
        int delta = Math.round(signedDeltaTenths * multiplier);
        if (delta == 0 && signedDeltaTenths != 0) {
            delta = signedDeltaTenths > 0 ? 1 : -1;
        }
        float ratio = getChannelRatio(bean.strenthBean, channelIndex);
        int channelTenths = Math.round(totalTenths * ratio) + delta;
        channelTenths = clamp(channelTenths, 0, totalTenths);
        setChannelRatio(bean.strenthBean, channelIndex, channelTenths / (float) totalTenths);
    }

    public static int getEffectivePulseWidthUs(ProgramDataBean bean, int channelIndex) {
        ensureDefaults();
        int base = bean.pulseWidth > 0 ? bean.pulseWidth : 350;
        if (channelIndex < 0 || channelIndex >= 10) {
            return base;
        }
        int override = UserData.getInstance().channelPulseWidthUs[channelIndex];
        return override > 0 ? override : base;
    }

    public static int getPulseWidthForBle(ProgramDataBean bean, int channelIndex) {
        return getEffectivePulseWidthUs(bean, channelIndex);
    }

    public static int resolveGlobalPulseWidthForBle(ProgramDataBean bean) {
        int pulseWidth = bean.pulseWidth > 0 ? bean.pulseWidth : 350;
        ensureDefaults();
        int minOverride = 0;
        for (int override : UserData.getInstance().channelPulseWidthUs) {
            if (override > 0 && (minOverride == 0 || override < minOverride)) {
                minOverride = override;
            }
        }
        return minOverride > 0 ? minOverride : pulseWidth;
    }

    public static void migrate(ProgramDataBean bean) {
        if (bean.strenthTenths <= 0 && bean.strenth > 0) {
            bean.strenthTenths = bean.strenth * 10;
        }
        if (bean.strenthBean == null) {
            bean.strenthBean = new PartStrenthBean();
        }
        bean.strenthBean.migrateIfNeeded();
    }

    public static String formatMa(float ma) {
        float rounded = Math.round(ma * 10.0f) / 10.0f;
        if (Math.abs(rounded - Math.round(rounded)) < 0.05f) {
            return String.valueOf(Math.round(rounded));
        }
        return String.format(java.util.Locale.US, "%.1f", rounded);
    }

    private static float getChannelRatio(PartStrenthBean bean, int channelIndex) {
        bean.migrateIfNeeded();
        return bean.buweiFloat[channelIndex] / 100.0f;
    }

    private static void setChannelRatio(PartStrenthBean bean, int channelIndex, float ratio) {
        bean.migrateIfNeeded();
        bean.buweiFloat[channelIndex] = clamp(ratio * 100.0f, 0.0f, 100.0f);
        bean.buwei[channelIndex] = Math.round(bean.buweiFloat[channelIndex]);
    }

    private static int clamp(int value, int min, int max) {
        return Math.max(min, Math.min(max, value));
    }

    private static float clamp(float value, float min, float max) {
        return Math.max(min, Math.min(max, value));
    }
}
