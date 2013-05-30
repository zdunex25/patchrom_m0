.class Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;
.super Landroid/os/Handler;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Scanner"
.end annotation


# instance fields
.field private mRetry:I

.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;


# direct methods
.method private constructor <init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V
    .locals 1
    .parameter

    .prologue
    .line 2052
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2053
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->mRetry:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/OriginalSettings/wifi/WifiSettings;Lcom/android/OriginalSettings/wifi/WifiSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2052
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    return-void
.end method


# virtual methods
.method forceScan()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2062
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->removeMessages(I)V

    .line 2063
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->sendEmptyMessage(I)Z

    .line 2064
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "message"

    .prologue
    const-wide/16 v4, 0x2710

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2075
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mInPickerDialog:Z
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$1800(Lcom/android/OriginalSettings/wifi/WifiSettings;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$1900(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/WifiDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$1900(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/WifiDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2000(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mNewDialog:Lcom/android/OriginalSettings/wifi/WifiNewDialog;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2000(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/wifi/WifiNewDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiNewDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2076
    :cond_1
    const-string v0, "WifiSettings"

    const-string v1, "Skip scanActive"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->sendEmptyMessageDelayed(IJ)Z

    .line 2116
    :goto_0
    return-void

    .line 2080
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$300(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScanActive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2081
    iput v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->mRetry:I

    .line 2088
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$1700(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/ProgressCategory;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2089
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2100(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    if-nez v0, :cond_6

    .line 2096
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$1700(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/ProgressCategory;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    .line 2115
    :cond_4
    :goto_1
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2082
    :cond_5
    iget v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->mRetry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->mRetry:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    .line 2083
    iput v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->mRetry:I

    .line 2084
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09021c

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2098
    :cond_6
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2100(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2100(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2100(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$2100(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_8

    .line 2102
    :cond_7
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$1700(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/ProgressCategory;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    goto :goto_1

    .line 2111
    :cond_8
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$1700(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/ProgressCategory;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    goto :goto_1
.end method

.method pause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2067
    iput v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->mRetry:I

    .line 2068
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->removeMessages(I)V

    .line 2069
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$1700(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/ProgressCategory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2070
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mProgressCategory:Lcom/android/OriginalSettings/ProgressCategory;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$1700(Lcom/android/OriginalSettings/wifi/WifiSettings;)Lcom/android/OriginalSettings/ProgressCategory;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    .line 2071
    :cond_0
    return-void
.end method

.method resume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2056
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2057
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->sendEmptyMessage(I)Z

    .line 2059
    :cond_0
    return-void
.end method
