.class Lcom/sec/android/app/fm/MainActivity$7;
.super Lcom/samsung/media/fmradio/FMEventListener;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mPowerManager:Landroid/os/PowerManager;

.field private offCode:I

.field final synthetic this$0:Lcom/sec/android/app/fm/MainActivity;

.field toastAF:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1065
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMEventListener;-><init>()V

    return-void
.end method

.method private scanningOver()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1746
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v4, v4, Lcom/sec/android/app/fm/MainActivity;->count:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1747
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mIsUpdateUI:Z
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4800(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1780
    :goto_0
    return-void

    .line 1750
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mAlertDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4900(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1751
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mAlertDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4900(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->dismiss()V

    .line 1753
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/fm/MainActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1755
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mIsActive:Z
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$6100(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1760
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mScanFinishedDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$6200(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1761
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v2, v2, Lcom/sec/android/app/fm/MainActivity;->count:I

    if-le v2, v7, :cond_5

    .line 1762
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mScanFinishedDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$6200(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const v4, 0x7f0a0015

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v6, v6, Lcom/sec/android/app/fm/MainActivity;->count:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1772
    :cond_3
    :goto_2
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1773
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x7

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1774
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mScanFinishedDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;
    invoke-static {v3}, Lcom/sec/android/app/fm/MainActivity;->access$6200(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;

    move-result-object v3

    aput-object v3, v2, v8

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/sec/android/app/fm/MainActivity;->access$6300(Lcom/sec/android/app/fm/MainActivity;)Ljava/lang/Runnable;

    move-result-object v3

    aput-object v3, v2, v7

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1776
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mIsActive:Z
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$6100(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1777
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v2, v2, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const-wide/16 v3, 0xfa0

    invoke-virtual {v2, v1, v3, v4}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1779
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v2, v2, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v3, 0x9

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1757
    .end local v1           #msg:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 1758
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scanningOver  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1764
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v2, v2, Lcom/sec/android/app/fm/MainActivity;->count:I

    if-ne v2, v7, :cond_6

    .line 1765
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mScanFinishedDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$6200(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const v4, 0x7f0a0016

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v6, v6, Lcom/sec/android/app/fm/MainActivity;->count:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1767
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v2, v2, Lcom/sec/android/app/fm/MainActivity;->count:I

    if-nez v2, :cond_3

    .line 1768
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mScanFinishedDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$6200(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const v4, 0x7f0a0061

    invoke-virtual {v3, v4}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public earPhoneConnected()V
    .locals 3

    .prologue
    .line 1133
    invoke-super {p0}, Lcom/samsung/media/fmradio/FMEventListener;->earPhoneConnected()V

    .line 1135
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #calls: Lcom/sec/android/app/fm/MainActivity;->refreshVolumeIcon()V
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4200(Lcom/sec/android/app/fm/MainActivity;)V

    .line 1138
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4300(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1139
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4300(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1140
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1141
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4300(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/MainActivity$Callback;

    invoke-virtual {v2}, Lcom/sec/android/app/fm/MainActivity$Callback;->earPhoneConnected()V

    .line 1140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1143
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_0
    return-void
.end method

.method public earPhoneDisconnected()V
    .locals 3

    .prologue
    .line 1096
    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->offCode:I

    .line 1098
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #calls: Lcom/sec/android/app/fm/MainActivity;->refreshVolumeIcon()V
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4200(Lcom/sec/android/app/fm/MainActivity;)V

    .line 1101
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4300(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1102
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4300(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1103
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1104
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4300(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/MainActivity$Callback;

    invoke-virtual {v2}, Lcom/sec/android/app/fm/MainActivity$Callback;->earPhoneDisconnected()V

    .line 1103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1106
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_0
    return-void
.end method

.method public declared-synchronized onAFReceived(J)V
    .locals 8
    .parameter "freq"

    .prologue
    const/high16 v6, 0x447a

    const/high16 v5, 0x4120

    .line 1172
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v3, "onAFReceived"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1173
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAFReceived : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 1174
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-eqz v2, :cond_1

    .line 1175
    long-to-float v2, p1

    div-float/2addr v2, v6

    float-to-int v1, v2

    .line 1176
    .local v1, freqInt:I
    long-to-float v2, p1

    div-float/2addr v2, v6

    mul-float/2addr v2, v5

    rem-float/2addr v2, v5

    float-to-int v0, v2

    .line 1177
    .local v0, freqDec:I
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->toastAF:Landroid/widget/Toast;

    if-nez v2, :cond_0

    .line 1178
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->toastAF:Landroid/widget/Toast;

    .line 1180
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->toastAF:Landroid/widget/Toast;

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const v4, 0x7f0a005e

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 1182
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->toastAF:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1184
    .end local v0           #freqDec:I
    .end local v1           #freqInt:I
    :cond_1
    monitor-exit p0

    return-void

    .line 1172
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onAFStarted()V
    .locals 2

    .prologue
    .line 1187
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "onAFStarted"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1188
    monitor-exit p0

    return-void

    .line 1187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onChannelFound(J)V
    .locals 12
    .parameter "frequency"

    .prologue
    .line 1196
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v7, "Event [onChannelFound]"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1197
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Event [onChannelFound] freq:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "count :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v8, v8, Lcom/sec/android/app/fm/MainActivity;->count:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 1200
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mScanFinished:Z
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$4600(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1240
    :cond_0
    return-void

    .line 1203
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v7, v6, Lcom/sec/android/app/fm/MainActivity;->count:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/sec/android/app/fm/MainActivity;->count:I

    .line 1204
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v6, v6, Lcom/sec/android/app/fm/MainActivity;->firstScannedChannel:F

    const/high16 v7, -0x4080

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v6, v6, Lcom/sec/android/app/fm/MainActivity;->firstScannedChannel:F

    const/high16 v7, 0x447a

    mul-float/2addr v6, v7

    long-to-float v7, p1

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    .line 1206
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    long-to-float v7, p1

    const/high16 v8, 0x447a

    div-float/2addr v7, v8

    iput v7, v6, Lcom/sec/android/app/fm/MainActivity;->firstScannedChannel:F

    .line 1209
    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    long-to-float v7, p1

    const/high16 v8, 0x447a

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/sec/android/app/fm/MainActivity;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v6

    if-nez v6, :cond_4

    .line 1210
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v7, Lcom/sec/android/app/fm/data/Channel;

    long-to-float v8, p1

    const/high16 v9, 0x447a

    div-float/2addr v8, v9

    const-string v9, ""

    invoke-direct {v7, v8, v9}, Lcom/sec/android/app/fm/data/Channel;-><init>(FLjava/lang/String;)V

    #calls: Lcom/sec/android/app/fm/MainActivity;->addChannel(Lcom/sec/android/app/fm/data/Channel;)V
    invoke-static {v6, v7}, Lcom/sec/android/app/fm/MainActivity;->access$4700(Lcom/sec/android/app/fm/MainActivity;Lcom/sec/android/app/fm/data/Channel;)V

    .line 1211
    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mIsUpdateUI:Z
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$4800(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mAlertDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$4900(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 1212
    invoke-static {}, Lcom/sec/android/app/fm/FMRadioFeature;->GetFrequencySpace()I

    move-result v6

    const/16 v7, 0x32

    if-ne v6, v7, :cond_7

    .line 1213
    long-to-float v6, p1

    const/high16 v7, 0x447a

    div-float v0, v6, v7

    .line 1214
    .local v0, freq:F
    const-string v6, "%.2f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1215
    .local v3, freqText:Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v6, v6, Lcom/sec/android/app/fm/MainActivity;->count:I

    const/4 v7, 0x1

    if-le v6, v7, :cond_6

    .line 1216
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mAlertDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$4900(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const v8, 0x7f0a0013

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    sget-object v11, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget v11, v11, Lcom/sec/android/app/fm/MainActivity;->count:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1235
    .end local v0           #freq:F
    .end local v3           #freqText:Ljava/lang/String;
    :cond_5
    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$4300(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1236
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$4300(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1237
    .local v5, size:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v5, :cond_0

    .line 1238
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$4300(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/fm/MainActivity$Callback;

    invoke-virtual {v6, p1, p2}, Lcom/sec/android/app/fm/MainActivity$Callback;->onChannelFound(J)V

    .line 1237
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1218
    .end local v4           #i:I
    .end local v5           #size:I
    .restart local v0       #freq:F
    .restart local v3       #freqText:Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mAlertDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$4900(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const v8, 0x7f0a0014

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    sget-object v11, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget v11, v11, Lcom/sec/android/app/fm/MainActivity;->count:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1220
    .end local v0           #freq:F
    .end local v3           #freqText:Ljava/lang/String;
    :cond_7
    long-to-float v6, p1

    const/high16 v7, 0x447a

    div-float/2addr v6, v7

    float-to-int v2, v6

    .line 1221
    .local v2, freqInt:I
    long-to-float v6, p1

    const/high16 v7, 0x447a

    div-float/2addr v6, v7

    const/high16 v7, 0x4120

    mul-float/2addr v6, v7

    const/high16 v7, 0x4120

    rem-float/2addr v6, v7

    float-to-int v1, v6

    .line 1223
    .local v1, freqDec:I
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v6, v6, Lcom/sec/android/app/fm/MainActivity;->count:I

    const/4 v7, 0x1

    if-le v6, v7, :cond_8

    .line 1224
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mAlertDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$4900(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const v8, 0x7f0a0011

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v11, v11, Lcom/sec/android/app/fm/MainActivity;->count:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1228
    :cond_8
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mAlertDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$4900(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const v8, 0x7f0a0012

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v11, v11, Lcom/sec/android/app/fm/MainActivity;->count:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onOff(I)V
    .locals 11
    .parameter "reasonCode"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1248
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v5, "Event [onOff]"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1249
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Event [onOff] :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v10}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 1251
    sget-boolean v4, Lcom/sec/android/app/fm/MainActivity;->IS_BIGGER_THAN_MDPI:Z

    if-eqz v4, :cond_2

    .line 1253
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$3200(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FrequencyDialer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->stopAnimation()V

    .line 1254
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mDialAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$5000(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/animation/AlphaAnimation;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1255
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mDialAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$5000(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/animation/AlphaAnimation;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/animation/AlphaAnimation;->cancel()V

    .line 1256
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mIsRoundOn:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$5100(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1257
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mIsRoundOn:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$5100(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1258
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mIsRoundOn:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$5100(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageView;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1261
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/high16 v5, -0x4080

    #calls: Lcom/sec/android/app/fm/MainActivity;->refreshFavChannels(F)V
    invoke-static {v4, v5}, Lcom/sec/android/app/fm/MainActivity;->access$2000(Lcom/sec/android/app/fm/MainActivity;F)V

    .line 1264
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #calls: Lcom/sec/android/app/fm/MainActivity;->updateRecordButton(Z)V
    invoke-static {v4, v10}, Lcom/sec/android/app/fm/MainActivity;->access$5200(Lcom/sec/android/app/fm/MainActivity;Z)V

    .line 1268
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$4300(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1269
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$4300(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1270
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 1271
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$4300(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/fm/MainActivity$Callback;

    invoke-virtual {v4, p1}, Lcom/sec/android/app/fm/MainActivity$Callback;->onOff(I)V

    .line 1270
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1275
    .end local v1           #i:I
    .end local v3           #size:I
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$1700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1276
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1279
    const/16 v4, 0xa

    if-ne p1, v4, :cond_5

    .line 1280
    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->toastTvout:Landroid/widget/Toast;

    if-nez v4, :cond_4

    .line 1281
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const v7, 0x7f0a0018

    invoke-virtual {v6, v7}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const v7, 0x7f0a0062

    invoke-virtual {v6, v7}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    sput-object v4, Lcom/sec/android/app/fm/MainActivity;->toastTvout:Landroid/widget/Toast;

    .line 1288
    :cond_4
    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->toastTvout:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1290
    :cond_5
    iget v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->offCode:I

    if-ne v4, v10, :cond_7

    .line 1291
    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->mEarphoneToast:Landroid/widget/Toast;

    if-nez v4, :cond_6

    .line 1292
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v4, v9, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    sput-object v4, Lcom/sec/android/app/fm/MainActivity;->mEarphoneToast:Landroid/widget/Toast;

    .line 1294
    :cond_6
    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->mEarphoneToast:Landroid/widget/Toast;

    const v5, 0x7f0a0001

    invoke-virtual {v4, v5}, Landroid/widget/Toast;->setText(I)V

    .line 1295
    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->mEarphoneToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1296
    iput v8, p0, Lcom/sec/android/app/fm/MainActivity$7;->offCode:I

    .line 1298
    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mRDSChName:Ljava/lang/String;
    invoke-static {v4, v9}, Lcom/sec/android/app/fm/MainActivity;->access$5302(Lcom/sec/android/app/fm/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1299
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mRDSText:Ljava/lang/String;
    invoke-static {v4, v9}, Lcom/sec/android/app/fm/MainActivity;->access$502(Lcom/sec/android/app/fm/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1300
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mRTPText:Ljava/lang/String;
    invoke-static {v4, v9}, Lcom/sec/android/app/fm/MainActivity;->access$802(Lcom/sec/android/app/fm/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1301
    sget-boolean v4, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_DISABLERTPLUSINFO:Z

    if-nez v4, :cond_8

    .line 1302
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v4}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/ui/RTPTagListManager;

    move-result-object v2

    .line 1303
    .local v2, rtpMgr:Lcom/sec/android/app/fm/ui/RTPTagListManager;
    invoke-virtual {v2}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->clearCurTagList()V

    .line 1304
    invoke-virtual {v2}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->getTagListArray()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_8

    .line 1305
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTagsButton:Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$5400(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v4

    const v5, 0x7f020127

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1306
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mTagsAvailable:Z
    invoke-static {v4, v8}, Lcom/sec/android/app/fm/MainActivity;->access$3902(Lcom/sec/android/app/fm/MainActivity;Z)Z

    .line 1307
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v5, "localpreference"

    invoke-virtual {v4, v5, v8}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1308
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "rtplus"

    invoke-interface {v0, v4, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1309
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1312
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #rtpMgr:Lcom/sec/android/app/fm/ui/RTPTagListManager;
    :cond_8
    invoke-static {}, Lcom/sec/android/app/fm/ui/MyProgressDialog;->cancel()V

    .line 1313
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-boolean v4, v4, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v4, :cond_9

    .line 1318
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #calls: Lcom/sec/android/app/fm/MainActivity;->stopFMRecording()V
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$1200(Lcom/sec/android/app/fm/MainActivity;)V

    .line 1322
    :cond_9
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mRecordCancelDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$5500(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mRecordCancelDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$5500(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1323
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mRecordCancelDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$5500(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->dismiss()V

    .line 1326
    :cond_a
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mRecordAfterOn:Z
    invoke-static {v4, v8}, Lcom/sec/android/app/fm/MainActivity;->access$5602(Lcom/sec/android/app/fm/MainActivity;Z)Z

    .line 1328
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mSeeking:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$3300(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mSeeking:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$3300(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_b

    .line 1329
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mSeeking:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$3300(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1331
    :cond_b
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mFrqCover:Landroid/view/View;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$5700(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/View;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1332
    return-void
.end method

.method public onOn()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1340
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v3, "Event [onOn]"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1341
    iput v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->offCode:I

    .line 1342
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4300(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1343
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4300(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1344
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1345
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4300(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/MainActivity$Callback;

    invoke-virtual {v2}, Lcom/sec/android/app/fm/MainActivity$Callback;->onOn()V

    .line 1344
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1347
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v2, v2, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    sget-object v3, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->setRDS(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V

    .line 1348
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v2, v2, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    sget-object v3, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->setAF(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V

    .line 1349
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v3, v3, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    #calls: Lcom/sec/android/app/fm/MainActivity;->refreshFavChannels(F)V
    invoke-static {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->access$2000(Lcom/sec/android/app/fm/MainActivity;F)V

    .line 1352
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #calls: Lcom/sec/android/app/fm/MainActivity;->updateRecordButton(Z)V
    invoke-static {v2, v5}, Lcom/sec/android/app/fm/MainActivity;->access$5200(Lcom/sec/android/app/fm/MainActivity;Z)V

    .line 1354
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-boolean v2, v2, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v2, :cond_1

    .line 1355
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #calls: Lcom/sec/android/app/fm/MainActivity;->resumeFMRecording()V
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$3600(Lcom/sec/android/app/fm/MainActivity;)V

    .line 1359
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mRecordAfterOn:Z
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$5600(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1360
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/fm/MainActivity;->recordFMRadioAudio()V

    .line 1361
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mRecordAfterOn:Z
    invoke-static {v2, v4}, Lcom/sec/android/app/fm/MainActivity;->access$5602(Lcom/sec/android/app/fm/MainActivity;Z)Z

    .line 1366
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mIsLastPlay:Z
    invoke-static {v2, v5}, Lcom/sec/android/app/fm/MainActivity;->access$5802(Lcom/sec/android/app/fm/MainActivity;Z)Z

    .line 1368
    return-void
.end method

.method public onRDSDisabled()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1376
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v4, "onRDSDisabled() is called"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1377
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mRDSChName:Ljava/lang/String;
    invoke-static {v3, v6}, Lcom/sec/android/app/fm/MainActivity;->access$5302(Lcom/sec/android/app/fm/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1378
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mRDSText:Ljava/lang/String;
    invoke-static {v3, v6}, Lcom/sec/android/app/fm/MainActivity;->access$502(Lcom/sec/android/app/fm/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1379
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mRTPText:Ljava/lang/String;
    invoke-static {v3, v6}, Lcom/sec/android/app/fm/MainActivity;->access$802(Lcom/sec/android/app/fm/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1384
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v3, v3, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v3}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v3, v3, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v3}, Lcom/samsung/media/fmradio/FMPlayer;->isSeeking()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1385
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/high16 v4, -0x4080

    #calls: Lcom/sec/android/app/fm/MainActivity;->resetRDS(F)V
    invoke-static {v3, v4}, Lcom/sec/android/app/fm/MainActivity;->access$400(Lcom/sec/android/app/fm/MainActivity;F)V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1393
    :goto_0
    sget-boolean v3, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_DISABLERTPLUSINFO:Z

    if-nez v3, :cond_0

    .line 1394
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v3}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/ui/RTPTagListManager;

    move-result-object v2

    .line 1395
    .local v2, rtpMgr:Lcom/sec/android/app/fm/ui/RTPTagListManager;
    invoke-virtual {v2}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->clearCurTagList()V

    .line 1396
    invoke-virtual {v2}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->getTagListArray()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 1397
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTagsButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/sec/android/app/fm/MainActivity;->access$5400(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    const v4, 0x7f020127

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1398
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTagsButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/sec/android/app/fm/MainActivity;->access$5400(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1399
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mTagsAvailable:Z
    invoke-static {v3, v5}, Lcom/sec/android/app/fm/MainActivity;->access$3902(Lcom/sec/android/app/fm/MainActivity;Z)Z

    .line 1400
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v4, "localpreference"

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1401
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "rtplus"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1402
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1405
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #rtpMgr:Lcom/sec/android/app/fm/ui/RTPTagListManager;
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/fm/MainActivity;->radioStatusHideAnimation()V

    .line 1406
    return-void

    .line 1387
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/fm/MainActivity;->getCurrentChannel()F

    move-result v4

    #calls: Lcom/sec/android/app/fm/MainActivity;->resetRDS(F)V
    invoke-static {v3, v4}, Lcom/sec/android/app/fm/MainActivity;->access$400(Lcom/sec/android/app/fm/MainActivity;F)V
    :try_end_1
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1388
    :catch_0
    move-exception v0

    .line 1389
    .local v0, e:Lcom/samsung/media/fmradio/FMPlayerException;
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V

    goto :goto_0
.end method

.method public onRDSEnabled()V
    .locals 2

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "onRDSEnabled() is called"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1416
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/MainActivity;->radioStatusHideAnimation()V

    .line 1417
    return-void
.end method

.method public onRDSReceived(JLjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "freq"
    .parameter "channelName"
    .parameter "radioText"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1427
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v5, "[onRDSReceived]"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1428
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onRDSReceived] freq:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ChannelName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "RadioText:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 1430
    if-eqz p3, :cond_1

    const-string v4, ""

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1431
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mRDSChName:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$5300(Lcom/sec/android/app/fm/MainActivity;)Ljava/lang/String;

    move-result-object v3

    .line 1432
    .local v3, setStr:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mRDSChName:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$5300(Lcom/sec/android/app/fm/MainActivity;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1433
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$1700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1434
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$1700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1435
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mRDSChName:Ljava/lang/String;
    invoke-static {v4, p3}, Lcom/sec/android/app/fm/MainActivity;->access$5302(Lcom/sec/android/app/fm/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1438
    .end local v3           #setStr:Ljava/lang/String;
    :cond_1
    if-eqz p4, :cond_6

    const-string v4, ""

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1440
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mRDSText:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$500(Lcom/sec/android/app/fm/MainActivity;)Ljava/lang/String;

    move-result-object v3

    .line 1441
    .restart local v3       #setStr:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mRDSText:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$500(Lcom/sec/android/app/fm/MainActivity;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1443
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1444
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->clearAnimation()V

    .line 1446
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1447
    .local v0, displayAnimation:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v4, 0x14d

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1448
    invoke-virtual {v0, v7}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 1449
    invoke-virtual {v0, v7}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1450
    new-instance v4, Lcom/sec/android/app/fm/MainActivity$7$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/fm/MainActivity$7$1;-><init>(Lcom/sec/android/app/fm/MainActivity$7;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1457
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1460
    .end local v0           #displayAnimation:Landroid/view/animation/AlphaAnimation;
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #calls: Lcom/sec/android/app/fm/MainActivity;->setRadioStatusTextVisibility(I)V
    invoke-static {v4, v8}, Lcom/sec/android/app/fm/MainActivity;->access$600(Lcom/sec/android/app/fm/MainActivity;I)V

    .line 1461
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1462
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mRDSText:Ljava/lang/String;
    invoke-static {v4, p4}, Lcom/sec/android/app/fm/MainActivity;->access$502(Lcom/sec/android/app/fm/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1463
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/4 v5, 0x0

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mRTPText:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/android/app/fm/MainActivity;->access$802(Lcom/sec/android/app/fm/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1464
    sget-boolean v4, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_DISABLERTPLUSINFO:Z

    if-nez v4, :cond_4

    .line 1465
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v4}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/ui/RTPTagListManager;

    move-result-object v4

    invoke-virtual {v4, p4}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->setRadioText(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1466
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v4}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/ui/RTPTagListManager;

    move-result-object v2

    .line 1467
    .local v2, rtpMgr:Lcom/sec/android/app/fm/ui/RTPTagListManager;
    invoke-virtual {v2}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->getTagListArray()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 1468
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTagsButton:Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$5400(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v4

    const v5, 0x7f020127

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1469
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mTagsAvailable:Z
    invoke-static {v4, v8}, Lcom/sec/android/app/fm/MainActivity;->access$3902(Lcom/sec/android/app/fm/MainActivity;Z)Z

    .line 1470
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v5, "localpreference"

    invoke-virtual {v4, v5, v8}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1471
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "rtplus"

    invoke-interface {v1, v4, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1472
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1476
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #rtpMgr:Lcom/sec/android/app/fm/ui/RTPTagListManager;
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1477
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v5, "RDS String is set on text field"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1484
    .end local v3           #setStr:Ljava/lang/String;
    :goto_0
    return-void

    .line 1479
    .restart local v3       #setStr:Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v5, "RDS String is same ignoring setting"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1482
    .end local v3           #setStr:Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/16 v5, 0x8

    #calls: Lcom/sec/android/app/fm/MainActivity;->setRadioStatusTextVisibility(I)V
    invoke-static {v4, v5}, Lcom/sec/android/app/fm/MainActivity;->access$600(Lcom/sec/android/app/fm/MainActivity;I)V

    goto :goto_0
.end method

.method public onRTPlusReceived(IIIIII)V
    .locals 14
    .parameter "contentType1"
    .parameter "startPos1"
    .parameter "additionalLen1"
    .parameter "contentType2"
    .parameter "startPos2"
    .parameter "additionalLen2"

    .prologue
    .line 1496
    iget-object v11, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[onRTPlusReceived] contentType1:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  startPos1:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  additionalLen1:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1497
    iget-object v11, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[onRTPlusReceived] contentType2:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  startPos2:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  additionalLen2:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p6

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1498
    sget-boolean v11, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_DISABLERTPLUSINFO:Z

    if-nez v11, :cond_3

    .line 1499
    const/4 v6, 0x0

    .line 1500
    .local v6, neetToUpdate1:Z
    const/4 v7, 0x0

    .line 1502
    .local v7, neetToUpdate2:Z
    iget-object v11, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v11}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/ui/RTPTagListManager;

    move-result-object v9

    .line 1503
    .local v9, rtpMgr:Lcom/sec/android/app/fm/ui/RTPTagListManager;
    iget-object v11, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v9, v11, p1, v0, v1}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->addCurTagList(Landroid/content/Context;III)Z

    move-result v6

    .line 1504
    iget-object v11, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-virtual {v9, v11, v0, v1, v2}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->addCurTagList(Landroid/content/Context;III)Z

    move-result v7

    .line 1505
    if-nez v6, :cond_0

    if-eqz v7, :cond_3

    .line 1506
    :cond_0
    invoke-virtual {v9}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->getCurTagList()Lcom/sec/android/app/fm/ui/RTPTagList;

    move-result-object v3

    .line 1507
    .local v3, curTagList:Lcom/sec/android/app/fm/ui/RTPTagList;
    const-string v8, ""

    .line 1509
    .local v8, radioText:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1510
    .local v5, i:I
    :goto_0
    invoke-virtual {v3}, Lcom/sec/android/app/fm/ui/RTPTagList;->size()I

    move-result v11

    if-ge v5, v11, :cond_1

    .line 1511
    invoke-virtual {v3, v5}, Lcom/sec/android/app/fm/ui/RTPTagList;->getTag(I)Lcom/sec/android/app/fm/ui/RTPTag;

    move-result-object v10

    .line 1512
    .local v10, tag:Lcom/sec/android/app/fm/ui/RTPTag;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Lcom/sec/android/app/fm/ui/RTPTag;->getTagCode()I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->getTagName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Lcom/sec/android/app/fm/ui/RTPTag;->getInfo()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1510
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1514
    .end local v10           #tag:Lcom/sec/android/app/fm/ui/RTPTag;
    :cond_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x2

    if-le v11, v12, :cond_2

    .line 1515
    const/4 v11, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1516
    iget-object v11, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/4 v12, 0x0

    #calls: Lcom/sec/android/app/fm/MainActivity;->setRadioStatusTextVisibility(I)V
    invoke-static {v11, v12}, Lcom/sec/android/app/fm/MainActivity;->access$600(Lcom/sec/android/app/fm/MainActivity;I)V

    .line 1517
    iget-object v11, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;
    invoke-static {v11}, Lcom/sec/android/app/fm/MainActivity;->access$700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1518
    iget-object v11, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;
    invoke-static {v11}, Lcom/sec/android/app/fm/MainActivity;->access$700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1519
    iget-object v11, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mRTPText:Ljava/lang/String;
    invoke-static {v11, v8}, Lcom/sec/android/app/fm/MainActivity;->access$802(Lcom/sec/android/app/fm/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1521
    :cond_2
    iget-object v11, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[onRTPlusReceived] RT+:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1523
    iget-object v11, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTagsAvailable:Z
    invoke-static {v11}, Lcom/sec/android/app/fm/MainActivity;->access$3900(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 1524
    iget-object v11, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTagsButton:Landroid/widget/ImageButton;
    invoke-static {v11}, Lcom/sec/android/app/fm/MainActivity;->access$5400(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v11

    const v12, 0x7f02012f

    invoke-virtual {v11, v12}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1525
    iget-object v11, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTagsButton:Landroid/widget/ImageButton;
    invoke-static {v11}, Lcom/sec/android/app/fm/MainActivity;->access$5400(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v12, v12, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1526
    iget-object v11, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/4 v12, 0x1

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mTagsAvailable:Z
    invoke-static {v11, v12}, Lcom/sec/android/app/fm/MainActivity;->access$3902(Lcom/sec/android/app/fm/MainActivity;Z)Z

    .line 1527
    iget-object v11, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v12, "localpreference"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 1528
    .local v4, editor:Landroid/content/SharedPreferences$Editor;
    const-string v11, "rtplus"

    const/4 v12, 0x1

    invoke-interface {v4, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1529
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1533
    .end local v3           #curTagList:Lcom/sec/android/app/fm/ui/RTPTagList;
    .end local v4           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v5           #i:I
    .end local v6           #neetToUpdate1:Z
    .end local v7           #neetToUpdate2:Z
    .end local v8           #radioText:Ljava/lang/String;
    .end local v9           #rtpMgr:Lcom/sec/android/app/fm/ui/RTPTagListManager;
    :cond_3
    return-void
.end method

.method public onScanFinished([J)V
    .locals 6
    .parameter "frequency"

    .prologue
    const/4 v5, 0x1

    .line 1541
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v3, "Event [onScanFinished]"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1542
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Event [onScanFinished] freq[]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 1543
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/4 v3, 0x0

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mInitialAceess:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->access$1002(Lcom/sec/android/app/fm/MainActivity;Z)Z

    .line 1544
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mScanFinished:Z
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4600(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1545
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mScanFinished:Z
    invoke-static {v2, v5}, Lcom/sec/android/app/fm/MainActivity;->access$4602(Lcom/sec/android/app/fm/MainActivity;Z)Z

    .line 1546
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity$7;->scanningOver()V

    .line 1549
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4300(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1550
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4300(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1551
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1552
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4300(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/MainActivity$Callback;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/fm/MainActivity$Callback;->onScanFinished([J)V

    .line 1551
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1555
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_1
    invoke-static {}, Lcom/sec/android/app/fm/data/ChannelStore;->getInstance()Lcom/sec/android/app/fm/data/ChannelStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/fm/data/ChannelStore;->store()V

    .line 1556
    return-void
.end method

.method public onScanStarted()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1564
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v3, "Event [onScanStarted]"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1565
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iput v4, v2, Lcom/sec/android/app/fm/MainActivity;->count:I

    .line 1566
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/high16 v3, -0x4080

    iput v3, v2, Lcom/sec/android/app/fm/MainActivity;->firstScannedChannel:F

    .line 1568
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mScanFinished:Z
    invoke-static {v2, v4}, Lcom/sec/android/app/fm/MainActivity;->access$4602(Lcom/sec/android/app/fm/MainActivity;Z)Z

    .line 1569
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mIsUpdateUI:Z
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4800(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mAlertDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4900(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1570
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mInitialAceess:Z
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$1000(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1571
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mAlertDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4900(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;

    move-result-object v2

    const v3, 0x7f0a003f

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setTitle(I)V

    .line 1574
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mAlertDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4900(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const v4, 0x7f0a000c

    invoke-virtual {v3, v4}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1578
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v2, v2, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1580
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4300(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1581
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4300(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1582
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1583
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4300(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/MainActivity$Callback;

    invoke-virtual {v2}, Lcom/sec/android/app/fm/MainActivity$Callback;->onScanStarted()V

    .line 1582
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1573
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mAlertDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4900(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;

    move-result-object v2

    const v3, 0x7f0a001b

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setTitle(I)V

    goto :goto_0

    .line 1587
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-boolean v2, v2, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v2, :cond_3

    .line 1588
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #calls: Lcom/sec/android/app/fm/MainActivity;->stopFMRecording()V
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$1200(Lcom/sec/android/app/fm/MainActivity;)V

    .line 1591
    :cond_3
    return-void
.end method

.method public onScanStopped([J)V
    .locals 4
    .parameter "frequency"

    .prologue
    .line 1599
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v3, "Event [onScanStopped]"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1600
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/4 v3, 0x0

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mInitialAceess:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->access$1002(Lcom/sec/android/app/fm/MainActivity;Z)Z

    .line 1601
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mScanFinished:Z
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4600(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1602
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/4 v3, 0x1

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mScanFinished:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->access$4602(Lcom/sec/android/app/fm/MainActivity;Z)Z

    .line 1603
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity$7;->scanningOver()V

    .line 1606
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4300(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1607
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4300(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1608
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1609
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/fm/MainActivity;->access$4300(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/MainActivity$Callback;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/fm/MainActivity$Callback;->onScanStopped([J)V

    .line 1608
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1612
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_1
    invoke-static {}, Lcom/sec/android/app/fm/data/ChannelStore;->getInstance()Lcom/sec/android/app/fm/data/ChannelStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/fm/data/ChannelStore;->store()V

    .line 1613
    return-void
.end method

.method public onTune(J)V
    .locals 13
    .parameter "frequency"

    .prologue
    const/high16 v12, 0x42c8

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1621
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v7, "Event [onTune]"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1622
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Event [onTune] frequency:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v10}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 1624
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    long-to-float v7, p1

    div-float/2addr v7, v12

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const v8, 0x7f0a0029

    invoke-virtual {v7, v8}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1625
    .local v0, desc:Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mFrqCover:Landroid/view/View;
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$5700(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1628
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$3200(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FrequencyDialer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->unlock()V

    .line 1630
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mRDSText:Ljava/lang/String;
    invoke-static {v6, v11}, Lcom/sec/android/app/fm/MainActivity;->access$502(Lcom/sec/android/app/fm/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1631
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mRDSChName:Ljava/lang/String;
    invoke-static {v6, v11}, Lcom/sec/android/app/fm/MainActivity;->access$5302(Lcom/sec/android/app/fm/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1632
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mRTPText:Ljava/lang/String;
    invoke-static {v6, v11}, Lcom/sec/android/app/fm/MainActivity;->access$802(Lcom/sec/android/app/fm/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1634
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/fm/MainActivity;->getCurrentChannel()F

    move-result v2

    .line 1636
    .local v2, freq:F
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[onTune] freq:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v10}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 1637
    const/high16 v6, -0x4080

    cmpl-float v6, v2, v6

    if-eqz v6, :cond_1

    .line 1639
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iput v2, v6, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    .line 1640
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #calls: Lcom/sec/android/app/fm/MainActivity;->refreshFavChannels(F)V
    invoke-static {v6, v2}, Lcom/sec/android/app/fm/MainActivity;->access$2000(Lcom/sec/android/app/fm/MainActivity;F)V

    .line 1641
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    mul-float v7, v2, v12

    float-to-long v7, v7

    iput-wide v7, v6, Lcom/sec/android/app/fm/MainActivity;->mCurrentchannel:J

    .line 1642
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mSeeking:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$3300(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1643
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mRdsPanel:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$3400(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1649
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #calls: Lcom/sec/android/app/fm/MainActivity;->resetRDS(F)V
    invoke-static {v6, v2}, Lcom/sec/android/app/fm/MainActivity;->access$400(Lcom/sec/android/app/fm/MainActivity;F)V

    .line 1650
    sget-boolean v6, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_DISABLERTPLUSINFO:Z

    if-nez v6, :cond_0

    .line 1651
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v6}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/ui/RTPTagListManager;

    move-result-object v4

    .line 1652
    .local v4, rtpMgr:Lcom/sec/android/app/fm/ui/RTPTagListManager;
    invoke-virtual {v4}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->clearCurTagList()V

    .line 1653
    invoke-virtual {v4}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->getTagListArray()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 1654
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTagsButton:Landroid/widget/ImageButton;
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$5400(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v6

    const v7, 0x7f020127

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1655
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTagsButton:Landroid/widget/ImageButton;
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$5400(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1656
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mTagsAvailable:Z
    invoke-static {v6, v9}, Lcom/sec/android/app/fm/MainActivity;->access$3902(Lcom/sec/android/app/fm/MainActivity;Z)Z

    .line 1657
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v7, "localpreference"

    invoke-virtual {v6, v7, v9}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1658
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "rtplus"

    invoke-interface {v1, v6, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1659
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1667
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v4           #rtpMgr:Lcom/sec/android/app/fm/ui/RTPTagListManager;
    :cond_0
    sget-boolean v6, Lcom/sec/android/app/fm/MainActivity;->IS_BIGGER_THAN_MDPI:Z

    if-eqz v6, :cond_2

    .line 1668
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$3200(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FrequencyDialer;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-wide v7, v7, Lcom/sec/android/app/fm/MainActivity;->mCurrentchannel:J

    invoke-virtual {v6, v7, v8, v10}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->setFrequency(JZ)V

    .line 1674
    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #calls: Lcom/sec/android/app/fm/MainActivity;->saveCurrentFreq()V
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$6000(Lcom/sec/android/app/fm/MainActivity;)V

    .line 1675
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v7, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/sec/android/app/fm/MainActivity;->access$1700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Lcom/sec/android/app/fm/MainActivity;->sendFMStatusBroadcast(FLjava/lang/String;)V

    .line 1677
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$4300(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1678
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$4300(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1679
    .local v5, size:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v5, :cond_3

    .line 1680
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$4300(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/fm/MainActivity$Callback;

    const/high16 v7, 0x447a

    mul-float/2addr v7, v2

    float-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/fm/MainActivity$Callback;->onTune(J)V

    .line 1679
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1670
    .end local v3           #i:I
    .end local v5           #size:I
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$3200(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FrequencyDialer;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-wide v7, v7, Lcom/sec/android/app/fm/MainActivity;->mCurrentchannel:J

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->setFrequency(JZ)V

    .line 1671
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$5900(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-wide v7, v7, Lcom/sec/android/app/fm/MainActivity;->mCurrentchannel:J

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->setFrequency(J)V

    goto :goto_0

    .line 1684
    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v6, v6, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    new-instance v7, Lcom/sec/android/app/fm/MainActivity$7$2;

    invoke-direct {v7, p0}, Lcom/sec/android/app/fm/MainActivity$7$2;-><init>(Lcom/sec/android/app/fm/MainActivity$7;)V

    const-wide/16 v8, 0xc8

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1744
    return-void
.end method

.method public recFinish()V
    .locals 2

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "[recFinish]"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1490
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-boolean v0, v0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v0, :cond_0

    .line 1491
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #calls: Lcom/sec/android/app/fm/MainActivity;->stopFMRecording()V
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$1200(Lcom/sec/android/app/fm/MainActivity;)V

    .line 1493
    :cond_0
    return-void
.end method

.method public volumeLock()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1148
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v2, "volumeLock"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1149
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$7;->mPowerManager:Landroid/os/PowerManager;

    if-nez v1, :cond_0

    .line 1150
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity$7;->mPowerManager:Landroid/os/PowerManager;

    .line 1152
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$7;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 1155
    .local v0, isScreenOn:Z
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-boolean v1, v1, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mVolumeChangedFromRadio:Z
    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$4400(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mIsOptionsMenuShowing:Z
    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$4500(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 1156
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$1600(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/Toast;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1157
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    #setter for: Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;
    invoke-static {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->access$1602(Lcom/sec/android/app/fm/MainActivity;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 1159
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$1600(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/Toast;

    move-result-object v1

    const v2, 0x7f0a008e

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    .line 1160
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$1600(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1161
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/MainActivity;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1162
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/4 v2, 0x1

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mVolumeChangedFromRadio:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->access$4402(Lcom/sec/android/app/fm/MainActivity;Z)Z

    .line 1168
    :cond_3
    :goto_0
    return-void

    .line 1164
    :cond_4
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/MainActivity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1165
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$7;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mVolumeChangedFromRadio:Z
    invoke-static {v1, v4}, Lcom/sec/android/app/fm/MainActivity;->access$4402(Lcom/sec/android/app/fm/MainActivity;Z)Z

    goto :goto_0
.end method
