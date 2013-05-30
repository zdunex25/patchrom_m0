.class Lcom/sec/android/app/fm/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/MainActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 918
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/16 v2, 0xc

    .line 922
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 923
    sparse-switch v0, :sswitch_data_0

    .line 1041
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #calls: Lcom/sec/android/app/fm/MainActivity;->getFavBtnIndex(I)I
    invoke-static {v1, v0}, Lcom/sec/android/app/fm/MainActivity;->access$4100(Lcom/sec/android/app/fm/MainActivity;I)I

    move-result v0

    .line 1043
    if-ltz v0, :cond_0

    if-ge v0, v2, :cond_0

    .line 1044
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1045
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v2, 0xc8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1053
    :cond_0
    :goto_0
    return-void

    .line 927
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-boolean v0, v0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v0, :cond_1

    .line 928
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0xa

    invoke-static {}, Lcom/sec/android/app/fm/MainActivity;->access$2800()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 931
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mSeekBarParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 932
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/MainActivity;->showVolumeBar()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1050
    :catch_0
    move-exception v0

    .line 1051
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto :goto_0

    .line 934
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/MainActivity;->hideVolumeBar()V

    goto :goto_0

    .line 938
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-wide v0, v0, Lcom/sec/android/app/fm/MainActivity;->mCurrentchannel:J

    const-wide/16 v2, 0x222e

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 940
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mWorkerThread:Lcom/sec/android/app/fm/WorkerThread;
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$2100(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/android/app/fm/WorkerThread;->mBusy:Z

    if-eqz v0, :cond_3

    .line 941
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "Worker thread is buys ignore it"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 944
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "[onClick - Control Prev]"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 945
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 946
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mSeeking:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$3300(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 947
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mRdsPanel:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$3400(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 948
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mWorkerThread:Lcom/sec/android/app/fm/WorkerThread;
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$2100(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mWorkerThread:Lcom/sec/android/app/fm/WorkerThread;
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$2100(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/fm/WorkerThread;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 949
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "WorkerThread died, new WorkerThread created"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 950
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {}, Lcom/sec/android/app/fm/WorkerThread;->getInstance()Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v1

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mWorkerThread:Lcom/sec/android/app/fm/WorkerThread;
    invoke-static {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->access$2102(Lcom/sec/android/app/fm/MainActivity;Lcom/sec/android/app/fm/WorkerThread;)Lcom/sec/android/app/fm/WorkerThread;

    .line 953
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mWorkerThread:Lcom/sec/android/app/fm/WorkerThread;
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$2100(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v0

    const/4 v1, 0x3

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/fm/WorkerThread;->doOperation(IJLandroid/view/View;I)V

    goto/16 :goto_0

    .line 957
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/MainActivity;->toastOn()V

    goto/16 :goto_0

    .line 962
    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "[onClick - Control Play/pause]"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 963
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 964
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0xb

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 968
    :sswitch_3
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mWorkerThread:Lcom/sec/android/app/fm/WorkerThread;
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$2100(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/android/app/fm/WorkerThread;->mBusy:Z

    if-eqz v0, :cond_7

    .line 969
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "Worker thread is buys ignore it"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 972
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "[onClick - Control Next]"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 973
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 974
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-wide v0, v0, Lcom/sec/android/app/fm/MainActivity;->mCurrentchannel:J

    const-wide/16 v2, 0x2a30

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 976
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mSeeking:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$3300(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 977
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mRdsPanel:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$3400(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 978
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mWorkerThread:Lcom/sec/android/app/fm/WorkerThread;
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$2100(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mWorkerThread:Lcom/sec/android/app/fm/WorkerThread;
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$2100(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/fm/WorkerThread;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 979
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "WorkerThread died, new WorkerThread created"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 980
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {}, Lcom/sec/android/app/fm/WorkerThread;->getInstance()Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v1

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mWorkerThread:Lcom/sec/android/app/fm/WorkerThread;
    invoke-static {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->access$2102(Lcom/sec/android/app/fm/MainActivity;Lcom/sec/android/app/fm/WorkerThread;)Lcom/sec/android/app/fm/WorkerThread;

    .line 983
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mWorkerThread:Lcom/sec/android/app/fm/WorkerThread;
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$2100(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/fm/WorkerThread;->doOperation(IJLandroid/view/View;I)V

    goto/16 :goto_0

    .line 987
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/MainActivity;->toastOn()V

    goto/16 :goto_0

    .line 991
    :sswitch_4
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 992
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 996
    :sswitch_5
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #calls: Lcom/sec/android/app/fm/MainActivity;->stopFMRecording()V
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$1200(Lcom/sec/android/app/fm/MainActivity;)V

    goto/16 :goto_0

    .line 1000
    :sswitch_6
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-boolean v0, v0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mIsRecordingPause:Z
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$3500(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1002
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #calls: Lcom/sec/android/app/fm/MainActivity;->resumeFMRecording()V
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$3600(Lcom/sec/android/app/fm/MainActivity;)V

    goto/16 :goto_0

    .line 1004
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #calls: Lcom/sec/android/app/fm/MainActivity;->pauseFMRecording()V
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$3700(Lcom/sec/android/app/fm/MainActivity;)V

    goto/16 :goto_0

    .line 1010
    :sswitch_7
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 1015
    :sswitch_8
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 1019
    :sswitch_9
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const v2, 0x7f070046

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    #calls: Lcom/sec/android/app/fm/MainActivity;->showCustomOptionMenu(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->access$3800(Lcom/sec/android/app/fm/MainActivity;Landroid/view/View;)V

    goto/16 :goto_0

    .line 1024
    :sswitch_a
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTagsAvailable:Z
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$3900(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1026
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-class v3, Lcom/sec/android/app/fm/TagsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1029
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$4000(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_d

    .line 1030
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const v2, 0x7f0a00c5

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->access$4002(Lcom/sec/android/app/fm/MainActivity;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 1035
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$4000(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1032
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$4000(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/Toast;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 1033
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$4000(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/Toast;

    move-result-object v0

    const v1, 0x7f0a00c5

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 923
    :sswitch_data_0
    .sparse-switch
        0x7f070032 -> :sswitch_4
        0x7f070039 -> :sswitch_0
        0x7f07003b -> :sswitch_8
        0x7f070047 -> :sswitch_9
        0x7f07004b -> :sswitch_2
        0x7f07004f -> :sswitch_1
        0x7f070050 -> :sswitch_3
        0x7f070051 -> :sswitch_a
        0x7f07006e -> :sswitch_5
        0x7f07006f -> :sswitch_6
        0x7f070070 -> :sswitch_7
    .end sparse-switch
.end method
