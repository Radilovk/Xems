.class Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5$1;
.super Ljava/lang/Object;
.source "TrainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;)V
    .registers 2

    .prologue
    .line 1164
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const v6, 0x7f0600bc

    const v5, 0x7f0600bb

    const/high16 v4, 0x41f00000    # 30.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1167
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;->val$bean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    if-lez v0, :cond_bf

    .line 1168
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iput v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 1169
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iput-boolean v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    .line 1171
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;->val$bean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    if-eqz v0, :cond_170

    .line 1172
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    int-to-float v0, v0

    mul-float/2addr v0, v3

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;->val$bean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v2, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 1174
    :goto_3f
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setVisibility(I)V

    .line 1175
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    invoke-virtual {v2, v0}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setProgress(I)V

    .line 1176
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v2, v5}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setWaveColor(I)V

    .line 1177
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBllTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1178
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;->val$bean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    sub-int/2addr v0, v2

    if-ltz v0, :cond_98

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;->val$bean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    sub-int v1, v0, v1

    .line 1179
    :cond_98
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBllTextView:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1180
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBllTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v1, v5}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1196
    :goto_be
    return-void

    .line 1183
    :cond_bf
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iput v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 1184
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    .line 1186
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;->val$bean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    if-eqz v0, :cond_16d

    .line 1187
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    int-to-float v0, v0

    mul-float/2addr v0, v3

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;->val$bean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v2, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 1189
    :goto_ec
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setVisibility(I)V

    .line 1190
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    invoke-virtual {v2, v0}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setProgress(I)V

    .line 1191
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v2, v6}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setWaveColor(I)V

    .line 1192
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBllTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1193
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;->val$bean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    sub-int/2addr v0, v2

    if-ltz v0, :cond_145

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;->val$bean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    sub-int v1, v0, v1

    .line 1194
    :cond_145
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBllTextView:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1195
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBllTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$AnonymousClass2;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v1, v6}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_be

    :cond_16d
    move v0, v1

    goto/16 :goto_ec

    :cond_170
    move v0, v1

    goto/16 :goto_3f
.end method
