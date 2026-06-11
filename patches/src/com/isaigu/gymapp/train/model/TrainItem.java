package com.isaigu.gymapp.train.model;

import android.os.CountDownTimer;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.clj.fastble.data.BleDevice;
import com.isaigu.gymapp.bean.TrainProgram;
import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.bean.TrainUserProgramDataWrapper;
import com.isaigu.gymapp.train.ble.BleDeviceManager;
import com.isaigu.gymapp.train.listener.OnReceiveCommandListener;
import com.isaigu.gymapp.train.listener.OnTrainItemListener;
import com.isaigu.gymapp.train.utils.TrainRecordManager;

/* loaded from: /workspace/classes2.dex */
public class TrainItem {
    public TrainUserProgramDataWrapper data;
    BleDevice device;
    private boolean isEmpty;
    public boolean[] partsControl;
    public boolean[] partsDisabled;
    CountDownTimer pulseCountDown;
    CommandReceiver receiver;
    TrainRecordManager recordManager;
    CommandSender sender;
    private OnTrainItemListener trainItemListener;
    CountDownTimer workCountDown;
    private Handler handler = new Handler(Looper.getMainLooper());
    private boolean maSelected = false;
    public int workLength = 0;
    OnReceiveCommandListener commandListener = new OnReceiveCommandListener() { // from class: com.isaigu.gymapp.train.model.-$$Lambda$TrainItem$pHZLHK-EZShsuUNsWimNlakhxAo
        @Override // com.isaigu.gymapp.train.listener.OnReceiveCommandListener
        public final void onReceiveBattery(int i) {
            TrainItem.this.lambda$new$0$TrainItem(i);
        }
    };
    private boolean selected = false;

    public TrainItem(boolean isEmpty) {
        this.isEmpty = isEmpty;
    }

    public TrainProgram getTrainProgram() {
        return this.data.trainProgram;
    }

    public void setRecordManager(TrainRecordManager recordManager) {
        this.recordManager = recordManager;
    }

    public void init(boolean[] partsDisabled, boolean[] partsControl) {
        this.partsDisabled = partsDisabled;
        this.partsControl = partsControl;
        CommandSender commandSender = new CommandSender(this.device);
        this.sender = commandSender;
        this.receiver = new CommandReceiver(this.device, commandSender, this.commandListener);
        this.sender.sendStop();
        reset();
    }

    public void reset() {
        stop();
        this.workLength = getTrainProgram().matchProgram().workLength;
        this.data.inStart = false;
        this.data.secondValue = 0;
        this.data.trainProgram.useType = 0;
        onTrainItemChange();
    }

    public /* synthetic */ void lambda$new$0$TrainItem(int batteryValue) {
        this.data.batteryValue = batteryValue;
        onTrainItemChange();
    }

    public void start() {
        if (!this.data.connected || this.data.start) {
            return;
        }
        this.data.start = true;
        CountDownTimer countDownTimer = new CountDownTimer(this.workLength * 1000, 100L) { // from class: com.isaigu.gymapp.train.model.TrainItem.1
            @Override // android.os.CountDownTimer
            public void onTick(long millisUntilFinished) {
                TrainItem.this.workLength = (int) (millisUntilFinished / 1000);
                TrainItem.this.onTrainItemChange();
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
                Log.i("www", "工作结束");
                TrainItem.this.recordManager.saveTrainRecord(TrainItem.this.data.macAddress);
                TrainItem.this.reset();
            }
        };
        this.workCountDown = countDownTimer;
        countDownTimer.start();
        this.sender.sendStart();
        startPulse();
        this.recordManager.addTrainRecord(this.data);
        onTrainItemChange();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void startPulse() {
        com.isaigu.gymapp.utils.PulseModeUtil.applyTrainProgramDefaults(getTrainProgram());
        if (this.data.secondValue > 0) {
            sendPulse();
        }
        this.pulseCountDown = new CountDownTimer(this.data.secondValue * 1000, 100L) { // from class: com.isaigu.gymapp.train.model.TrainItem.2
            @Override // android.os.CountDownTimer
            public void onTick(long millisUntilFinished) {
                TrainItem.this.data.secondValue = ((int) millisUntilFinished) / 1000;
                TrainItem.this.onTrainItemChange();
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
                TrainItem.this.onTrainItemChange();
                TrainItem.this.data.inStart = !TrainItem.this.data.inStart;
                TrainItem.this.data.secondValue = TrainItem.this.resolveNextPhaseDuration();
                TrainItem.this.startPulse();
            }
        };
        if (!hasActivePulseCycle()) {
            return;
        }
        this.pulseCountDown.start();
    }

    private boolean hasActivePulseCycle() {
        TrainProgram program = getTrainProgram();
        if (com.isaigu.gymapp.utils.PulseModeUtil.isAlternateImpulseMode(program)) {
            return com.isaigu.gymapp.utils.PulseModeUtil.getPhaseDurationSeconds(program, true) > 0
                    && com.isaigu.gymapp.utils.PulseModeUtil.getPhaseDurationSeconds(program, false) > 0;
        }
        ProgramDataBean active = program.matchProgram();
        return active.pulseContinue > 0 || active.pulsePause > 0;
    }

    private int resolveNextPhaseDuration() {
        return com.isaigu.gymapp.utils.PulseModeUtil.getPhaseDurationSeconds(getTrainProgram(), this.data.inStart);
    }

    public void onParamsChange() {
        sendPulse();
        this.recordManager.updateRecordValue(this.data);
    }

    private void sendPulse() {
        if (!this.data.connected) {
            return;
        }
        TrainProgram trainProgram = getTrainProgram();
        ProgramDataBean activeBean = com.isaigu.gymapp.utils.PulseModeUtil.getActivePhaseBean(trainProgram, this.data.inStart);
        if (this.data.inStart || com.isaigu.gymapp.utils.PulseModeUtil.isAlternateImpulseMode(trainProgram)) {
            this.sender.sendDuration(activeBean, this.partsDisabled, this.workLength);
        } else {
            this.sender.sendPause(activeBean, this.workLength);
        }
    }

    public void setUserType(int userType) {
        getTrainProgram().useType = userType;
        stop();
        this.workLength = getTrainProgram().matchProgram().workLength;
        onTrainItemChange();
    }

    public synchronized void stop() {
        if (this.data.connected && this.data.start) {
            this.data.start = false;
            this.workCountDown.cancel();
            this.pulseCountDown.cancel();
            this.sender.sendPause(
                    com.isaigu.gymapp.utils.PulseModeUtil.getActivePhaseBean(getTrainProgram(), this.data.inStart),
                    this.workLength);
            this.sender.sendStop();
            onTrainItemChange();
        }
    }

    public void close() {
        if (!this.data.connected) {
            return;
        }
        stop();
        this.receiver.close();
        this.data.connected = false;
        new Handler().postDelayed(new Runnable() { // from class: com.isaigu.gymapp.train.model.-$$Lambda$TrainItem$jyFjnZtUdFj7kY3DVWn4aFNTzCs
            @Override // java.lang.Runnable
            public final void run() {
                TrainItem.this.lambda$close$1$TrainItem();
            }
        }, 1000L);
        onTrainItemChange();
        this.recordManager.removeTrainRecord(this.data.macAddress);
    }

    public /* synthetic */ void lambda$close$1$TrainItem() {
        BleDeviceManager.disconnect(this.device);
    }

    public void addAllPartValue(int deltaTenths) {
        addAllPartValue(deltaTenths, false);
    }

    public void addAllPartValue(int deltaTenths, boolean ignoreControl) {
        ProgramDataBean program = com.isaigu.gymapp.utils.PulseModeUtil.getEditableBean(
                getTrainProgram(), this.data.inStart);
        for (int i = 0; i < program.strenthBean.buwei.length; i++) {
            if (ignoreControl || this.partsControl[i]) {
                com.isaigu.gymapp.utils.StrengthAdjustUtil.adjustChannelMa(program, i, deltaTenths);
            }
        }
        sendPulse();
        onTrainItemChange();
    }

    public void addStrenth(int deltaTenths) {
        ProgramDataBean program = com.isaigu.gymapp.utils.PulseModeUtil.getEditableBean(
                getTrainProgram(), this.data.inStart);
        com.isaigu.gymapp.utils.StrengthAdjustUtil.adjustOverallMa(program, deltaTenths);
        sendPulse();
        onTrainItemChange();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onTrainItemChange() {
        OnTrainItemListener onTrainItemListener = this.trainItemListener;
        if (onTrainItemListener != null) {
            onTrainItemListener.onTrainItemChange();
        }
    }

    public void setTrainItemListener(OnTrainItemListener trainItemListener) {
        this.trainItemListener = trainItemListener;
    }

    public boolean isEmpty() {
        return this.isEmpty;
    }

    public boolean isSelected() {
        return this.selected;
    }

    public void setSelected(boolean selected) {
        this.selected = selected;
    }

    public boolean isMaSelected() {
        return this.maSelected;
    }

    public void setMaSelected(boolean maSelected) {
        this.maSelected = maSelected;
    }

    public void setDevice(BleDevice device) {
        this.device = device;
    }

    public void setTrainProgram(TrainProgram trainProgram) {
        this.data.trainProgram = trainProgram;
        reset();
    }
}
