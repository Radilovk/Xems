package com.isaigu.gymapp.utils;

import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.bean.UserData;

public final class ChannelPulseUtil {
    private ChannelPulseUtil() {
    }

    public static int getEffectivePulseWidthUs(ProgramDataBean bean, int channelIndex) {
        int base = bean != null && bean.pulseWidth > 0 ? bean.pulseWidth : 350;
        if (channelIndex < 0 || channelIndex >= 10) {
            return base;
        }
        UserData.ensureChannelPulseWidths(UserData.getInstance());
        int override = UserData.getInstance().channelPulseWidthUs[channelIndex];
        return override > 0 ? override : base;
    }

    /** BLE work-params PDU uses one pulse-width byte; send the minimum active override. */
    public static int resolveGlobalPulseWidthForBle(ProgramDataBean bean) {
        int pulseWidth = bean != null && bean.pulseWidth > 0 ? bean.pulseWidth : 350;
        UserData.ensureChannelPulseWidths(UserData.getInstance());
        int minOverride = 0;
        for (int override : UserData.getInstance().channelPulseWidthUs) {
            if (override > 0 && (minOverride == 0 || override < minOverride)) {
                minOverride = override;
            }
        }
        return minOverride > 0 ? minOverride : pulseWidth;
    }
}
