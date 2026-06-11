package com.isaigu.gymapp.utils;

import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.bean.TrainProgram;
import com.isaigu.gymapp.bean.UserData;

public final class PulseModeUtil {
    public static final int PHASE_MUSCLE = 0;
    public static final int PHASE_AEROBIC = 1;

    private PulseModeUtil() {
    }

    public static boolean isAlternateImpulseMode(TrainProgram trainProgram) {
        if (trainProgram == null) {
            return false;
        }
        ProgramDataBean primary = trainProgram.programDataBean;
        if (primary != null && primary.alternateImpulseMode) {
            return true;
        }
        return UserData.getInstance().alternateImpulseMode;
    }

    public static ProgramDataBean getActivePhaseBean(TrainProgram trainProgram, boolean phaseA) {
        ProgramDataBean primary = trainProgram.programDataBean;
        if (phaseA || !isAlternateImpulseMode(trainProgram)) {
            return primary;
        }
        ProgramDataBean secondary = resolveSecondaryBean(trainProgram);
        return secondary != null ? secondary : primary;
    }

    public static int getPhaseDurationSeconds(TrainProgram trainProgram, boolean phaseA) {
        ProgramDataBean primary = trainProgram.programDataBean;
        if (primary == null) {
            return 0;
        }
        if (!isAlternateImpulseMode(trainProgram)) {
            return phaseA ? primary.pulseContinue : primary.pulsePause;
        }
        if (phaseA) {
            return primary.pulseContinue > 0 ? primary.pulseContinue : UserData.getInstance().defaultPulseContinue;
        }
        ProgramDataBean secondary = resolveSecondaryBean(trainProgram);
        if (secondary != null && secondary.pulseContinue > 0) {
            return secondary.pulseContinue;
        }
        return primary.pulsePause > 0 ? primary.pulsePause : UserData.getInstance().defaultPulsePause;
    }

    public static void applyProgramDefaults(ProgramDataBean bean) {
        if (bean == null) {
            return;
        }
        UserData data = UserData.getInstance();
        if (bean.pulseContinue <= 0) {
            bean.pulseContinue = data.defaultPulseContinue;
        }
        if (bean.pulsePause <= 0) {
            bean.pulsePause = data.defaultPulsePause;
        }
        if (bean.pulseWidth <= 0) {
            bean.pulseWidth = 350;
        }
        StrengthAdjustUtil.migrate(bean);
    }

    public static void applyTrainProgramDefaults(TrainProgram trainProgram) {
        if (trainProgram == null) {
            return;
        }
        applyProgramDefaults(trainProgram.programDataBean);
        applyProgramDefaults(trainProgram.muscleTrainingProgramDataBean);
        applyProgramDefaults(trainProgram.aerobicTrainingProgramDataBean);
        applyProgramDefaults(trainProgram.massageModeProgramDataBean);
        if (trainProgram.programDataBean != null && trainProgram.programDataBean.alternateImpulseMode) {
            return;
        }
        if (UserData.getInstance().alternateImpulseMode && trainProgram.programDataBean != null) {
            trainProgram.programDataBean.alternateImpulseMode = true;
        }
    }

    private static ProgramDataBean resolveSecondaryBean(TrainProgram trainProgram) {
        if (UserData.getInstance().alternatePhaseType == PHASE_AEROBIC) {
            return trainProgram.aerobicTrainingProgramDataBean;
        }
        return trainProgram.muscleTrainingProgramDataBean;
    }
}
