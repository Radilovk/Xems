package com.isaigu.gymapp.train;

import android.content.Context;
import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.alibaba.fastjson.JSON;
import com.bumptech.glide.Glide;
import com.isaigu.gymapp.BaseActivity;
import com.isaigu.gymapp.R;
import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.bean.TrainProgram;
import com.isaigu.gymapp.bean.TrainUserProgramDataWrapper;
import com.isaigu.gymapp.databinding.NewUserTrainControlItemLayoutBinding;
import com.isaigu.gymapp.databinding.TrainEmptyItemLayoutBinding;
import com.isaigu.gymapp.dialog.EditUserProgramDataDialog;
import com.isaigu.gymapp.fragment.NewTrainFragment;
import com.isaigu.gymapp.mgr.CommonUtils;
import com.isaigu.gymapp.train.listener.OnTrainItemListener;
import com.isaigu.gymapp.train.listener.OnTrainListListener;
import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.train.utils.OperationUtil;
import com.isaigu.gymapp.utils.PulseModeUtil;
import com.isaigu.gymapp.utils.StrengthAdjustUtil;
import com.isaigu.gymapp.widget.AmountView2;
import com.isaigu.gymapp.widget.CircleSeekBar;
import com.isaigu.gymapp.widget.GlideCircleTransform;
import com.isaigu.gymapp.widget.NoDoubleClickListener;
import com.isaigu.gymapp.widget.VerticalColorSeekBar;
import java.util.List;

public class TrainViewHolder extends RecyclerView.ViewHolder {
    private VerticalColorSeekBar[] bars;
    private NewUserTrainControlItemLayoutBinding binding;
    CircleSeekBar.OnSeekBarChangeListener circleSeekBarListener;
    private Context context;
    private TrainEmptyItemLayoutBinding eBinding;
    private NewTrainFragment fragment;
    private final boolean isEmpty;
    TrainItem item;
    OnTrainListListener listener;
    private TextView[] texts;

    public TrainUserProgramDataWrapper getData() {
        return this.item.data;
    }

    public TrainViewHolder(boolean isEmpty, View view, NewTrainFragment fragment) {
        super(view);
        this.circleSeekBarListener = new CircleSeekBar.OnSeekBarChangeListener() {
            @Override
            public void onChanged(CircleSeekBar seekbar, int curValue) {
                float ma = (curValue / 75.0f) * 100.0f;
                TrainViewHolder.this.binding.ma.setText(String.format(
                        TrainViewHolder.this.context.getString(R.string.maValue),
                        StrengthAdjustUtil.formatMa(ma)));
            }

            @Override
            public void onChangedEnd(CircleSeekBar seekbar, int curValue) {
                ProgramDataBean program = TrainViewHolder.this.getEditableProgram();
                StrengthAdjustUtil.migrate(program);
                int strenth = (curValue * 100) / 75;
                int oldStrenth = program.strenth;
                if (strenth - oldStrenth > 20) {
                    strenth = oldStrenth + 20;
                }
                program.strenth = strenth;
                program.strenthTenths = strenth * 10;
                TrainViewHolder.this.lambda$bindNotEmpty$9$TrainViewHolder();
                TrainViewHolder.this.onItemChange();
            }
        };
        this.context = view.getContext();
        this.isEmpty = isEmpty;
        this.fragment = fragment;
        if (isEmpty) {
            this.eBinding = TrainEmptyItemLayoutBinding.bind(view);
            bindEmptyListener();
        } else {
            this.binding = NewUserTrainControlItemLayoutBinding.bind(view);
            init();
            bindListener();
        }
        ViewGroup.LayoutParams params = this.itemView.getLayoutParams();
        params.width = -1;
        params.height = this.itemView.getResources().getDisplayMetrics().heightPixels / 4;
        this.itemView.setLayoutParams(params);
    }

    private void init() {
        this.texts = new TextView[]{this.binding.textview1, this.binding.textview2, this.binding.textview3, this.binding.textview4, this.binding.textview5, this.binding.textview6, this.binding.textview7, this.binding.textview8, this.binding.textview9, this.binding.textview10};
        this.bars = new VerticalColorSeekBar[]{this.binding.vpbBrightness1, this.binding.vpbBrightness2, this.binding.vpbBrightness3, this.binding.vpbBrightness4, this.binding.vpbBrightness5, this.binding.vpbBrightness6, this.binding.vpbBrightness7, this.binding.vpbBrightness8, this.binding.vpbBrightness9, this.binding.vpbBrightness10};
        Glide.with(this.context).load(Integer.valueOf(R.mipmap.icon_sample)).centerCrop().transform(new GlideCircleTransform(this.context)).into(this.binding.userIcon);
    }

    private void bindListener() {
        this.binding.strenthExist.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                TrainViewHolder.this.item.setUserType(1);
            }
        });
        this.binding.youyangyundong.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                TrainViewHolder.this.item.setUserType(2);
            }
        });
        this.binding.anmo.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                TrainViewHolder.this.item.setUserType(3);
            }
        });
        this.binding.stop.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                TrainViewHolder.this.item.reset();
                TrainViewHolder.this.lambda$bindNotEmpty$9$TrainViewHolder();
            }
        });
        this.binding.startpaulse.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if (getData().start) {
                    TrainViewHolder.this.item.stop();
                } else {
                    TrainViewHolder.this.item.start();
                }
                TrainViewHolder.this.lambda$bindNotEmpty$9$TrainViewHolder();
            }
        });
        this.binding.paulsecontinue.setOnAmountChangeListener(new AmountView2.OnAmountChangeListener() {
            @Override
            public void onAmountChange(View view, int amount) {
                getData().trainProgram.programDataBean.pulseContinue = amount;
                TrainViewHolder.this.lambda$bindNotEmpty$9$TrainViewHolder();
                TrainViewHolder.this.onItemChange();
            }
        });
        this.binding.paulsestop.setOnAmountChangeListener(new AmountView2.OnAmountChangeListener() {
            @Override
            public void onAmountChange(View view, int amount) {
                TrainProgram trainProgram = getData().trainProgram;
                if (PulseModeUtil.isAlternateImpulseMode(trainProgram)) {
                    ProgramDataBean secondary = PulseModeUtil.getActivePhaseBean(trainProgram, false);
                    if (secondary != null) {
                        secondary.pulseContinue = amount;
                    }
                } else {
                    trainProgram.matchProgram().pulsePause = amount;
                }
                TrainViewHolder.this.lambda$bindNotEmpty$9$TrainViewHolder();
                TrainViewHolder.this.onItemChange();
            }
        });
        this.binding.circleSeekBar.setOnSeekBarChangeListener(this.circleSeekBarListener);
        for (int i = 0; i < this.bars.length; i++) {
            setBarsListener(i);
        }
        this.binding.setting.setOnClickListener(new AnonymousClass1());
        this.binding.save.setOnClickListener(new NoDoubleClickListener() {
            @Override
            public void onNoDoubleClick(View v) {
                Log.i("wwww", JSON.toJSONString(TrainViewHolder.this.getData().trainProgram));
                OperationUtil.save(TrainViewHolder.this.getParentActivity(), TrainViewHolder.this.getData().trainProgram);
            }
        });
        this.binding.ma.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                TrainViewHolder.this.item.setMaSelected(!TrainViewHolder.this.item.isMaSelected());
                TrainViewHolder.this.lambda$bindNotEmpty$9$TrainViewHolder();
            }
        });
    }

    class AnonymousClass1 extends NoDoubleClickListener {
        AnonymousClass1() {
        }

        @Override
        public void onNoDoubleClick(View v) {
            if (!TrainViewHolder.this.getData().start) {
                EditUserProgramDataDialog programDataDialog = new EditUserProgramDataDialog();
                Bundle bundle = new Bundle();
                bundle.putBoolean("editProgram", false);
                bundle.putSerializable("data", TrainViewHolder.this.getData());
                programDataDialog.setArguments(bundle);
                programDataDialog.setSaveProgramListener(new EditUserProgramDataDialog.SaveProgramListener() {
                    @Override
                    public void onSaveProgram(TrainProgram trainProgram, List list) {
                        TrainViewHolder.this.fragment.getBaseActivity().runOnUiThread(new Runnable() {
                            @Override
                            public void run() {
                                TrainViewHolder.this.item.setTrainProgram(trainProgram);
                                TrainViewHolder.this.lambda$bindNotEmpty$9$TrainViewHolder();
                                TrainViewHolder.this.onItemChange();
                            }
                        });
                    }
                });
                TrainViewHolder.this.fragment.getBaseActivity().showDialogFragment(programDataDialog);
            }
        }
    }

    private void bindEmptyListener() {
        this.itemView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View l) {
                TrainViewHolder.this.listener.onEmptyItemClick(TrainViewHolder.this.item);
            }
        });
    }

    public void bind(TrainItem item, OnTrainListListener listener) {
        this.item = item;
        this.listener = listener;
        if (!this.isEmpty) {
            bindNotEmpty();
        }
    }

    private void bindNotEmpty() {
        lambda$bindNotEmpty$9$TrainViewHolder();
        this.item.setTrainItemListener(new OnTrainItemListener() {
            @Override
            public void onTrainItemChange() {
                TrainViewHolder.this.lambda$bindNotEmpty$9$TrainViewHolder();
            }
        });
        this.item.isSelected();
    }

    public void lambda$bindNotEmpty$9$TrainViewHolder() {
        TrainProgram trainProgram = getData().trainProgram;
        ProgramDataBean programDataBean = getEditableProgram();
        StrengthAdjustUtil.migrate(programDataBean);
        this.binding.circleSeekBar.setCurProcess((programDataBean.strenth * 75) / 100);
        this.binding.ma.setText(String.format(this.context.getString(R.string.maValue), StrengthAdjustUtil.formatMa(StrengthAdjustUtil.getStrengthMa(programDataBean))));
        for (int i = 0; i < programDataBean.strenthBean.buwei.length; i++) {
            int value = programDataBean.strenthBean.buwei[i];
            this.bars[i].setProgress(value);
            this.texts[i].setText(String.format(this.context.getString(R.string.maValue), StrengthAdjustUtil.formatMa(StrengthAdjustUtil.getChannelMa(programDataBean, i))));
            if (this.item.partsControl[i]) {
                this.texts[i].setTextColor(getParentActivity().getColor(R.color.green_color_font));
                this.texts[i].getPaint().setFakeBoldText(true);
            } else {
                this.texts[i].setTextColor(getParentActivity().getColor(R.color.black_color));
                this.texts[i].getPaint().setFakeBoldText(false);
            }
        }
        if (getData().start) {
            this.binding.startpaulse.setBackgroundResource(R.mipmap.stop1);
        } else {
            this.binding.startpaulse.setBackgroundResource(R.mipmap.start1);
        }
        this.binding.name.setText(getData().trainUser.name);
        this.binding.address.setText(getData().deviceName);
        this.binding.strenthExist.setBackgroundResource(R.drawable.round_corner_drawable_r10_gray);
        this.binding.youyangyundong.setBackgroundResource(R.drawable.round_corner_drawable_r10_gray);
        this.binding.anmo.setBackgroundResource(R.drawable.round_corner_drawable_r10_gray);
        if (getData().trainProgram.useType == 1) {
            this.binding.strenthExist.setBackgroundResource(R.drawable.round_corner_drawable_r10_red);
        } else if (getData().trainProgram.useType == 2) {
            this.binding.youyangyundong.setBackgroundResource(R.drawable.round_corner_drawable_r10_orange);
        } else if (getData().trainProgram.useType == 3) {
            this.binding.anmo.setBackgroundResource(R.drawable.round_corner_drawable_r10_blue);
        }
        this.binding.paulsecontinue.setAmountUnit(" s");
        this.binding.paulsecontinue.setMinValue(1);
        this.binding.paulsecontinue.setGoods_storage(60);
        ProgramDataBean primary = trainProgram.programDataBean;
        this.binding.paulsecontinue.setAmount(primary != null ? primary.pulseContinue : 0);
        this.binding.paulsecontinue.setAmountColor(this.context.getColor(R.color.wave_color_green));
        this.binding.paulsestop.setAmountUnit(" s");
        this.binding.paulsestop.setMinValue(0);
        this.binding.paulsestop.setGoods_storage(60);
        if (PulseModeUtil.isAlternateImpulseMode(trainProgram)) {
            ProgramDataBean secondary = PulseModeUtil.getActivePhaseBean(trainProgram, false);
            this.binding.paulsestop.setAmount(secondary != null ? secondary.pulseContinue : 0);
        } else {
            this.binding.paulsestop.setAmount(primary != null ? primary.pulsePause : 0);
        }
        this.binding.paulsestop.setAmountColor(this.context.getColor(R.color.wave_color_red));
        this.binding.MyBatterView.setProgress(getData().batteryValue);
        this.binding.batteryValueTextView.setText(getData().batteryValue + "");
        if (!getData().connected) {
            this.binding.signalImage.setBackgroundResource(R.mipmap.signal2);
        } else {
            this.binding.signalImage.setBackgroundResource(R.mipmap.signal);
        }
        if (this.item.isMaSelected()) {
            this.binding.ma.setBackgroundResource(R.drawable.light_green_button_drawable_r30);
        } else {
            this.binding.ma.setBackgroundResource(R.drawable.light_black_button_drawable_r30);
        }
        if (TextUtils.isEmpty(getData().trainUser.iconUrl) || getData().trainUser.iconUrl.equals("sample")) {
            Glide.with(this.context).load(Integer.valueOf(R.mipmap.icon_sample)).centerCrop().transform(new GlideCircleTransform(this.context)).into(this.binding.userIcon);
        } else {
            Glide.with(this.context).load(getData().trainUser.iconUrl).centerCrop().transform(new GlideCircleTransform(this.context)).into(this.binding.userIcon);
        }
        updateTime();
    }

    private void updateTime() {
        int waveColor;
        TrainProgram trainProgram = getData().trainProgram;
        int phaseDuration = PulseModeUtil.getPhaseDurationSeconds(trainProgram, getData().inStart);
        int waveValue = getData().secondValue + 1;
        int waveProgress = 0;
        if (getData().inStart) {
            waveColor = this.context.getResources().getColor(R.color.wave_color_green);
        } else {
            waveColor = this.context.getResources().getColor(R.color.wave_color_red);
        }
        if (phaseDuration > 0) {
            waveProgress = (waveValue * 30) / phaseDuration;
        }
        this.binding.waveBallProgressValue.setText(String.valueOf(waveValue));
        this.binding.waveBallProgressValue.setTextColor(waveColor);
        this.binding.waveBallProgressActView.setVisibility(0);
        this.binding.waveBallProgressActView.setWaveColor(waveColor);
        this.binding.waveBallProgressActView.setProgress(waveProgress);
        this.binding.time.setText(CommonUtils.formatTime(this.item.workLength));
    }

    private void setBarsListener(final int index) {
        this.bars[index].setColorArray(getParentActivity().getColor(R.color.light_green_color), getParentActivity().getColor(R.color.light_green_color), getParentActivity().getColor(R.color.dark_green_color));
        this.bars[index].setOnStateChangeListener(new VerticalColorSeekBar.OnStateChangeListener() {
            @Override
            public void OnStateChangeListener(View view, float p) {
                ProgramDataBean programDataBean = TrainViewHolder.this.getEditableProgram();
                StrengthAdjustUtil.migrate(programDataBean);
                TrainViewHolder.this.texts[index].setText(String.format(
                        TrainViewHolder.this.context.getString(R.string.maValue),
                        StrengthAdjustUtil.formatMa((p / 100.0f) * StrengthAdjustUtil.getStrengthMa(programDataBean))));
            }

            @Override
            public void onStopTrackingTouch(View view, float p) {
                ProgramDataBean programDataBean = TrainViewHolder.this.getEditableProgram();
                programDataBean.strenthBean.buwei[index] = (int) p;
                programDataBean.strenthBean.buweiFloat[index] = p;
                TrainViewHolder.this.lambda$bindNotEmpty$9$TrainViewHolder();
                TrainViewHolder.this.onItemChange();
            }
        });
    }

    private ProgramDataBean getEditableProgram() {
        return PulseModeUtil.getEditableBean(getData().trainProgram, getData().inStart);
    }

    private BaseActivity getParentActivity() {
        return this.fragment.getBaseActivity();
    }

    private void onItemChange() {
        this.item.onParamsChange();
        this.listener.onItemChange(this.item);
    }
}
