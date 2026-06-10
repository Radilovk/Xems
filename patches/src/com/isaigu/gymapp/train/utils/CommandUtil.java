package com.isaigu.gymapp.train.utils;

import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.utils.StrengthAdjustUtil;

public class CommandUtil {
    public static final byte CMD_BATTERY = 5;
    public static final byte CMD_CHANGE = -63;
    public static final byte CMD_CLOSE = -16;
    public static final byte CMD_RUN = 3;
    public static final byte CMD_SETTING = 1;
    public static final byte CMD_START = -15;
    public static final byte CMD_STOP = -14;
    public static final byte RSP_BATTERY = 6;

    public static byte[] getPartsParamsPdu(ProgramDataBean programDataBean, boolean[] partsDisabled) {
        StrengthAdjustUtil.migrate(programDataBean);
        byte[] pdu = new byte[11];
        pdu[0] = 0;
        for (int i = 0; i < 10; i++) {
            pdu[i + 1] = getPartPduValue(programDataBean, partsDisabled, i);
        }
        return pdu;
    }

    private static byte getPartPduValue(ProgramDataBean programDataBean, boolean[] partsDisabled, int index) {
        if (partsDisabled[index]) {
            return 0;
        }
        return (byte) Math.round(StrengthAdjustUtil.getChannelMa(programDataBean, index));
    }

    public static byte[] getWorkParamsPdu(ProgramDataBean programDataBean, int workLength, boolean running) {
        byte[] pdu = new byte[11];
        pdu[0] = 0;
        long length = workLength;
        if (length > 0 && length <= 5) {
            length = 5;
        }
        pdu[1] = (byte) (length / 256);
        pdu[2] = (byte) (length % 256);
        pdu[3] = (byte) programDataBean.hz;
        pdu[4] = (byte) (StrengthAdjustUtil.resolveGlobalPulseWidthForBle(programDataBean) / 50);
        pdu[5] = (byte) programDataBean.pulseContinue;
        if (length != 0) {
            pdu[6] = (byte) programDataBean.pulsePause;
        } else {
            pdu[6] = 1;
        }
        pdu[7] = (byte) programDataBean.inputRamp;
        pdu[8] = (byte) programDataBean.outputRamp;
        pdu[9] = (byte) programDataBean.massageCycle;
        pdu[10] = running ? (byte) 1 : (byte) 0;
        return pdu;
    }
}
