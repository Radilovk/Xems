.class final Lcom/isaigu/gymapp/utils/TimerUtils$2;
.super Ljava/util/TimerTask;
.source "TimerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/utils/TimerUtils;->scheduleTimer(Ljava/lang/Runnable;JJ)Ljava/util/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/isaigu/gymapp/utils/TimerUtils$2;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/isaigu/gymapp/utils/TimerUtils$2;->val$runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    .line 44
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 46
    :cond_7
    return-void
.end method
