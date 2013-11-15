.class final Lcom/android/camera/Util$2;
.super Landroid/os/CountDownTimer;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(JJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1024
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1034
    invoke-static {v1}, Lcom/android/camera/Util;->access$002(Z)Z

    .line 1036
    invoke-static {}, Lcom/android/camera/Util;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1037
    invoke-static {v1, v2}, Lcom/android/camera/Util;->enableSpeechRecognition(ZLcom/android/camera/PhotoModule;)V

    .line 1038
    const/4 v0, 0x1

    invoke-static {v0, v2}, Lcom/android/camera/Util;->enableSpeechRecognition(ZLcom/android/camera/PhotoModule;)V

    .line 1040
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .parameter "millisUntilFinished"

    .prologue
    .line 1029
    return-void
.end method
