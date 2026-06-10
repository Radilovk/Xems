package com.isaigu.gymapp.bean;

import com.isaigu.gymapp.utils.StrengthAdjustUtil;
import java.io.Serializable;

public class ProgramDataBean implements Serializable {
    public int hz;
    public int inputRamp;
    public int massageCycle;
    public int outputRamp;
    public int pulseContinue;
    public int pulsePause;
    public int pulseWidth;
    public int strenth;
    public int strenthTenths;
    public PartStrenthBean strenthBean = new PartStrenthBean();
    public int workLength;

    public void reset() {
        this.strenth = 0;
        this.strenthTenths = 0;
    }

    public void syncStrengthFields() {
        StrengthAdjustUtil.migrate(this);
    }
}
