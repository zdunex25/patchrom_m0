.class Lcom/sec/android/app/fm/AllChannelActivity$1;
.super Lcom/sec/android/app/fm/MainActivity$Callback;
.source "AllChannelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/AllChannelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/AllChannelActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/AllChannelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity$Callback;-><init>()V

    return-void
.end method

.method private scanningOver()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 176
    iget-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/AllChannelActivity;->invalidateOptionsMenu()V

    .line 179
    iget-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/AllChannelActivity;->mRadioArrayAdapter:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/AllChannelActivity;->mRadioArrayAdapter:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;->notifyDataSetChanged()V

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    #getter for: Lcom/sec/android/app/fm/AllChannelActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/sec/android/app/fm/AllChannelActivity;->access$000(Lcom/sec/android/app/fm/AllChannelActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    #getter for: Lcom/sec/android/app/fm/AllChannelActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/sec/android/app/fm/AllChannelActivity;->access$000(Lcom/sec/android/app/fm/AllChannelActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 186
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/AllChannelActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 187
    iget-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/AllChannelActivity;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    #getter for: Lcom/sec/android/app/fm/AllChannelActivity;->mScanFinishedDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/sec/android/app/fm/AllChannelActivity;->access$100(Lcom/sec/android/app/fm/AllChannelActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 193
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget v1, v1, Lcom/sec/android/app/fm/MainActivity;->count:I

    if-le v1, v4, :cond_4

    .line 194
    iget-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    #getter for: Lcom/sec/android/app/fm/AllChannelActivity;->mScanFinishedDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/sec/android/app/fm/AllChannelActivity;->access$100(Lcom/sec/android/app/fm/AllChannelActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    const v3, 0x7f0a0015

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget v5, v5, Lcom/sec/android/app/fm/MainActivity;->count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/fm/AllChannelActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 206
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/AllChannelActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/app/fm/AllChannelActivity$1$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/AllChannelActivity$1$1;-><init>(Lcom/sec/android/app/fm/AllChannelActivity$1;)V

    const-wide/16 v3, 0xfa0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 216
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v2, 0x9

    const-wide/16 v3, 0x32

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 218
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllChannelActivity : scanningOver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 197
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget v1, v1, Lcom/sec/android/app/fm/MainActivity;->count:I

    if-ne v1, v4, :cond_5

    .line 198
    iget-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    #getter for: Lcom/sec/android/app/fm/AllChannelActivity;->mScanFinishedDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/sec/android/app/fm/AllChannelActivity;->access$100(Lcom/sec/android/app/fm/AllChannelActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    const v3, 0x7f0a0016

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget v5, v5, Lcom/sec/android/app/fm/MainActivity;->count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/fm/AllChannelActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 201
    :cond_5
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget v1, v1, Lcom/sec/android/app/fm/MainActivity;->count:I

    if-nez v1, :cond_3

    .line 202
    iget-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    #getter for: Lcom/sec/android/app/fm/AllChannelActivity;->mScanFinishedDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/sec/android/app/fm/AllChannelActivity;->access$100(Lcom/sec/android/app/fm/AllChannelActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    const v3, 0x7f0a0061

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/AllChannelActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public earPhoneConnected()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    #calls: Lcom/sec/android/app/fm/AllChannelActivity;->refreshScanIcon()V
    invoke-static {v0}, Lcom/sec/android/app/fm/AllChannelActivity;->access$200(Lcom/sec/android/app/fm/AllChannelActivity;)V

    .line 222
    return-void
.end method

.method public earPhoneDisconnected()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    #calls: Lcom/sec/android/app/fm/AllChannelActivity;->refreshScanIcon()V
    invoke-static {v0}, Lcom/sec/android/app/fm/AllChannelActivity;->access$200(Lcom/sec/android/app/fm/AllChannelActivity;)V

    .line 226
    return-void
.end method

.method public notifyUI()V
    .locals 2

    .prologue
    .line 93
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "AllChannel Activity : notify UI"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/AllChannelActivity;->mRadioArrayAdapter:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/AllChannelActivity;->mRadioArrayAdapter:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;->notifyDataSetChanged()V

    .line 96
    :cond_0
    return-void
.end method

.method public onChannelFound(J)V
    .locals 12
    .parameter "frequency"

    .prologue
    const/high16 v7, 0x4120

    const/high16 v6, 0x447a

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 123
    iget-object v4, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    iget-object v4, v4, Lcom/sec/android/app/fm/AllChannelActivity;->mRadioArrayAdapter:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    if-eqz v4, :cond_0

    .line 124
    iget-object v4, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    iget-object v4, v4, Lcom/sec/android/app/fm/AllChannelActivity;->mRadioArrayAdapter:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;->notifyDataSetChanged()V

    .line 125
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    #getter for: Lcom/sec/android/app/fm/AllChannelActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/sec/android/app/fm/AllChannelActivity;->access$000(Lcom/sec/android/app/fm/AllChannelActivity;)Landroid/app/AlertDialog;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 128
    invoke-static {}, Lcom/sec/android/app/fm/FMRadioFeature;->GetFrequencySpace()I

    move-result v4

    const/16 v5, 0x32

    if-ne v4, v5, :cond_3

    .line 130
    long-to-float v4, p1

    div-float v0, v4, v6

    .line 131
    .local v0, freq:F
    const-string v4, "%.2f"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, freqText:Ljava/lang/String;
    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget v4, v4, Lcom/sec/android/app/fm/MainActivity;->count:I

    if-le v4, v9, :cond_2

    .line 134
    iget-object v4, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    #getter for: Lcom/sec/android/app/fm/AllChannelActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/sec/android/app/fm/AllChannelActivity;->access$000(Lcom/sec/android/app/fm/AllChannelActivity;)Landroid/app/AlertDialog;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    const v6, 0x7f0a0013

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v3, v7, v10

    sget-object v8, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget v8, v8, Lcom/sec/android/app/fm/MainActivity;->count:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/app/fm/AllChannelActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 152
    .end local v0           #freq:F
    .end local v3           #freqText:Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/fm/AllChannelActivity;->invalidateOptionsMenu()V

    .line 154
    return-void

    .line 136
    .restart local v0       #freq:F
    .restart local v3       #freqText:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    #getter for: Lcom/sec/android/app/fm/AllChannelActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/sec/android/app/fm/AllChannelActivity;->access$000(Lcom/sec/android/app/fm/AllChannelActivity;)Landroid/app/AlertDialog;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    const v6, 0x7f0a0014

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v3, v7, v10

    sget-object v8, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget v8, v8, Lcom/sec/android/app/fm/MainActivity;->count:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/app/fm/AllChannelActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 138
    .end local v0           #freq:F
    .end local v3           #freqText:Ljava/lang/String;
    :cond_3
    long-to-float v4, p1

    div-float/2addr v4, v6

    float-to-int v2, v4

    .line 139
    .local v2, freqInt:I
    long-to-float v4, p1

    div-float/2addr v4, v6

    mul-float/2addr v4, v7

    rem-float/2addr v4, v7

    float-to-int v1, v4

    .line 141
    .local v1, freqDec:I
    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget v4, v4, Lcom/sec/android/app/fm/MainActivity;->count:I

    if-le v4, v9, :cond_4

    .line 142
    iget-object v4, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    #getter for: Lcom/sec/android/app/fm/AllChannelActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/sec/android/app/fm/AllChannelActivity;->access$000(Lcom/sec/android/app/fm/AllChannelActivity;)Landroid/app/AlertDialog;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    const v6, 0x7f0a0011

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    sget-object v8, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget v8, v8, Lcom/sec/android/app/fm/MainActivity;->count:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/app/fm/AllChannelActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 146
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    #getter for: Lcom/sec/android/app/fm/AllChannelActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/sec/android/app/fm/AllChannelActivity;->access$000(Lcom/sec/android/app/fm/AllChannelActivity;)Landroid/app/AlertDialog;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    const v6, 0x7f0a0012

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    sget-object v8, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget v8, v8, Lcom/sec/android/app/fm/MainActivity;->count:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/app/fm/AllChannelActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onOff(I)V
    .locals 1
    .parameter "reasonCode"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/AllChannelActivity;->mRadioArrayAdapter:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/AllChannelActivity;->mRadioArrayAdapter:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;->notifyDataSetChanged()V

    .line 120
    :cond_0
    return-void
.end method

.method public onOn()V
    .locals 2

    .prologue
    .line 99
    iget-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/AllChannelActivity;->mRadioArrayAdapter:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/AllChannelActivity;->mRadioArrayAdapter:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;->notifyDataSetChanged()V

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sec/android/app/fm/FMNotificationManager;->isNotified:Z

    if-nez v1, :cond_1

    .line 104
    :try_start_0
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/MainActivity;->notifyToStatusBar()V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_1
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Lcom/samsung/media/fmradio/FMPlayerException;
    :try_start_1
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 108
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public onScanFinished([J)V
    .locals 0
    .parameter "frequency"

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/sec/android/app/fm/AllChannelActivity$1;->scanningOver()V

    .line 171
    return-void
.end method

.method public onScanStarted()V
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/AllChannelActivity;->mRadioArrayAdapter:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/AllChannelActivity;->mRadioArrayAdapter:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;->notifyDataSetChanged()V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    #getter for: Lcom/sec/android/app/fm/AllChannelActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/fm/AllChannelActivity;->access$000(Lcom/sec/android/app/fm/AllChannelActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    #getter for: Lcom/sec/android/app/fm/AllChannelActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/fm/AllChannelActivity;->access$000(Lcom/sec/android/app/fm/AllChannelActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    const v2, 0x7f0a000c

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/AllChannelActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 163
    :cond_1
    return-void
.end method

.method public onScanStopped([J)V
    .locals 0
    .parameter "frequency"

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/sec/android/app/fm/AllChannelActivity$1;->scanningOver()V

    .line 167
    return-void
.end method

.method public onTune(J)V
    .locals 1
    .parameter "frequency"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/AllChannelActivity;->mRadioArrayAdapter:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/AllChannelActivity;->mRadioArrayAdapter:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;->notifyDataSetChanged()V

    .line 116
    :cond_0
    return-void
.end method
