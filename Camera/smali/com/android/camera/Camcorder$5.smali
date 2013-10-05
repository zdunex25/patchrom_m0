.class Lcom/android/camera/Camcorder$5;
.super Ljava/lang/Object;
.source "Camcorder.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camcorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camcorder;


# direct methods
.method constructor <init>(Lcom/android/camera/Camcorder;)V
    .locals 0
    .parameter

    .prologue
    .line 598
    iput-object p1, p0, Lcom/android/camera/Camcorder$5;->this$0:Lcom/android/camera/Camcorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 4
    .parameter "focusChange"

    .prologue
    const/4 v3, 0x1

    .line 600
    const-string v0, "Camcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioFocusChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    packed-switch p1, :pswitch_data_0

    .line 616
    const-string v0, "Camcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown audio focus change code,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :goto_0
    return-void

    .line 604
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/Camcorder$5;->this$0:Lcom/android/camera/Camcorder;

    #getter for: Lcom/android/camera/Camcorder;->mCamcorderEngine:Lcom/android/camera/CamcorderEngine;
    invoke-static {v0}, Lcom/android/camera/Camcorder;->access$600(Lcom/android/camera/Camcorder;)Lcom/android/camera/CamcorderEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/android/camera/AbstractCeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camcorder$5;->this$0:Lcom/android/camera/Camcorder;

    #getter for: Lcom/android/camera/Camcorder;->mIsCallStateRinging:Z
    invoke-static {v0}, Lcom/android/camera/Camcorder;->access$1900(Lcom/android/camera/Camcorder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/android/camera/Camcorder$5;->this$0:Lcom/android/camera/Camcorder;

    #getter for: Lcom/android/camera/Camcorder;->mCamcorderEngine:Lcom/android/camera/CamcorderEngine;
    invoke-static {v0}, Lcom/android/camera/Camcorder;->access$600(Lcom/android/camera/Camcorder;)Lcom/android/camera/CamcorderEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v0

    if-ge v0, v3, :cond_1

    .line 606
    iget-object v0, p0, Lcom/android/camera/Camcorder$5;->this$0:Lcom/android/camera/Camcorder;

    #getter for: Lcom/android/camera/Camcorder;->mCamcorderEngine:Lcom/android/camera/CamcorderEngine;
    invoke-static {v0}, Lcom/android/camera/Camcorder;->access$600(Lcom/android/camera/Camcorder;)Lcom/android/camera/CamcorderEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CamcorderEngine;->doCancelVideoRecordingSync()V

    .line 611
    :goto_1
    iget-object v0, p0, Lcom/android/camera/Camcorder$5;->this$0:Lcom/android/camera/Camcorder;

    #getter for: Lcom/android/camera/Camcorder;->mCamcorderEngine:Lcom/android/camera/CamcorderEngine;
    invoke-static {v0}, Lcom/android/camera/Camcorder;->access$600(Lcom/android/camera/Camcorder;)Lcom/android/camera/CamcorderEngine;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/CamcorderEngine;->changeEngineState(I)V

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camcorder$5;->this$0:Lcom/android/camera/Camcorder;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/Camcorder;->mIsCallStateRinging:Z
    invoke-static {v0, v1}, Lcom/android/camera/Camcorder;->access$1902(Lcom/android/camera/Camcorder;Z)Z

    goto :goto_0

    .line 608
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camcorder$5;->this$0:Lcom/android/camera/Camcorder;

    #setter for: Lcom/android/camera/Camcorder;->mIsReocrdingStoppedForcely:Z
    invoke-static {v0, v3}, Lcom/android/camera/Camcorder;->access$1802(Lcom/android/camera/Camcorder;Z)Z

    .line 609
    iget-object v0, p0, Lcom/android/camera/Camcorder$5;->this$0:Lcom/android/camera/Camcorder;

    #getter for: Lcom/android/camera/Camcorder;->mCamcorderEngine:Lcom/android/camera/CamcorderEngine;
    invoke-static {v0}, Lcom/android/camera/Camcorder;->access$600(Lcom/android/camera/Camcorder;)Lcom/android/camera/CamcorderEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CamcorderEngine;->doStopVideoRecordingSync()V

    goto :goto_1

    .line 601
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
