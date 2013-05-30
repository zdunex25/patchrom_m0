.class Lcom/android/internal/policy/impl/PenDetachmentAlert$2;
.super Landroid/os/CountDownTimer;
.source "PenDetachmentAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PenDetachmentAlert;->setTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PenDetachmentAlert;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$2;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$2;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #getter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mIsDialogShowing:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$100(Lcom/android/internal/policy/impl/PenDetachmentAlert;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const-string v0, "PenDetachmentAlert"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play alert sound "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$2;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #getter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mAlertCount:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$200(Lcom/android/internal/policy/impl/PenDetachmentAlert;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " times"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$2;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->playSoundOrVibration()V

    .line 182
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$2;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #calls: Lcom/android/internal/policy/impl/PenDetachmentAlert;->resetTimer()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$300(Lcom/android/internal/policy/impl/PenDetachmentAlert;)V

    .line 184
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .parameter "millisUntilFinished"

    .prologue
    .line 176
    return-void
.end method
