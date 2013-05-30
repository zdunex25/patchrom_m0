.class public Lcom/android/OriginalSettings/wifi/WifiEnabler;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/wifi/WifiEnabler$SwitchHandler;
    }
.end annotation


# static fields
.field private static mGateTraceTag:Ljava/lang/String;


# instance fields
.field mApDisableDialog:Landroid/app/AlertDialog;

.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Landroid/content/Context;

.field private mEnablerListener:Lcom/android/OriginalSettings/guide/OnInternalSwitcherListener;

.field private mHandler:Lcom/android/OriginalSettings/wifi/WifiEnabler$SwitchHandler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStateMachineEvent:Z

.field private mSwitch:Landroid/widget/Switch;

.field mVerizonDialog:Landroid/app/AlertDialog;

.field mWiFiDirectDiableDialog:Landroid/app/AlertDialog;

.field mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiPolicy:Landroid/app/enterprise/WifiPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-string v0, "GATE"

    sput-object v0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mGateTraceTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 4
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v3, 0x0

    .line 136
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    iput-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    .line 106
    new-instance v1, Lcom/android/OriginalSettings/wifi/WifiEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/wifi/WifiEnabler$1;-><init>(Lcom/android/OriginalSettings/wifi/WifiEnabler;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 283
    iput-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mEnablerListener:Lcom/android/OriginalSettings/guide/OnInternalSwitcherListener;

    .line 137
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    .line 138
    iput-object p2, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    .line 147
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 149
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    .line 152
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 153
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 155
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.android.settings.wifi.WIFI_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    new-instance v1, Lcom/android/OriginalSettings/wifi/WifiEnabler$SwitchHandler;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/wifi/WifiEnabler$SwitchHandler;-><init>(Lcom/android/OriginalSettings/wifi/WifiEnabler;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mHandler:Lcom/android/OriginalSettings/wifi/WifiEnabler$SwitchHandler;

    .line 162
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/wifi/WifiEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/wifi/WifiEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/OriginalSettings/wifi/WifiEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/OriginalSettings/wifi/WifiEnabler;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/OriginalSettings/wifi/WifiEnabler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/wifi/WifiEnabler;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/wifi/WifiEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/wifi/WifiEnabler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->checkWifiTetheringAndDisable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/wifi/WifiEnabler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->checkWifiDirectAndDisable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/wifi/WifiEnabler;)Lcom/android/OriginalSettings/wifi/WifiEnabler$SwitchHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mHandler:Lcom/android/OriginalSettings/wifi/WifiEnabler$SwitchHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/OriginalSettings/wifi/WifiEnabler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->setWifiEnable(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/OriginalSettings/wifi/WifiEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->showDialog(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/OriginalSettings/wifi/WifiEnabler;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private checkWifiDirectAndDisable()Z
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x0

    return v0
.end method

.method private checkWifiTetheringAndDisable()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 327
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 328
    .local v0, wifiApState:I
    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_1

    .line 334
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->showDialog(I)V

    .line 341
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private dismissDialog(I)V
    .locals 2
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 575
    packed-switch p1, :pswitch_data_0

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 577
    :pswitch_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mApDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 579
    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mApDisableDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 583
    :pswitch_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 585
    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 589
    :pswitch_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mVerizonDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mVerizonDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mVerizonDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 591
    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mVerizonDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 595
    :pswitch_3
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mWiFiDirectDiableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mWiFiDirectDiableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mWiFiDirectDiableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 597
    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mWiFiDirectDiableDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 575
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 456
    return-void
.end method

.method private handleWifiApStateChanged(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 414
    packed-switch p1, :pswitch_data_0

    .line 423
    :goto_0
    :pswitch_0
    return-void

    .line 420
    :pswitch_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->dismissDialog(I)V

    goto :goto_0

    .line 414
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleWifiStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 368
    packed-switch p1, :pswitch_data_0

    .line 399
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    .line 400
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 410
    :goto_0
    return-void

    .line 370
    :pswitch_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 381
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->dismissDialog(I)V

    .line 382
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->dismissDialog(I)V

    .line 384
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    .line 385
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 388
    :pswitch_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 395
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    .line 396
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 368
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onSwitchChanged(Landroid/widget/CompoundButton;Z)Z
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 294
    const/4 v0, 0x0

    .line 296
    .local v0, result:Z
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mEnablerListener:Lcom/android/OriginalSettings/guide/OnInternalSwitcherListener;

    if-eqz v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mEnablerListener:Lcom/android/OriginalSettings/guide/OnInternalSwitcherListener;

    invoke-interface {v1, p1, p2}, Lcom/android/OriginalSettings/guide/OnInternalSwitcherListener;->onSwitcherChanged(Landroid/widget/CompoundButton;Z)Z

    move-result v0

    .line 300
    :cond_0
    return v0
.end method

.method private setSwitchChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 427
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mStateMachineEvent:Z

    .line 428
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 429
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mStateMachineEvent:Z

    .line 431
    :cond_0
    return-void
.end method

.method private setWifiEnable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 324
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mHandler:Lcom/android/OriginalSettings/wifi/WifiEnabler$SwitchHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/WifiEnabler$SwitchHandler;->sendEmptyMessage(I)Z

    .line 321
    const-string v0, "WifiEnabler"

    const-string v1, "setWifiEnabled false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showDialog(I)V
    .locals 14
    .parameter "id"

    .prologue
    const v13, 0x104000a

    const/high16 v12, 0x104

    const v11, 0x1040014

    const v10, 0x1010355

    .line 459
    packed-switch p1, :pswitch_data_0

    .line 572
    :goto_0
    return-void

    .line 461
    :pswitch_0
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v10}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f09029d

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 465
    .local v3, newDialog:Landroid/app/AlertDialog$Builder;
    new-instance v8, Lcom/android/OriginalSettings/wifi/WifiEnabler$2;

    invoke-direct {v8, p0}, Lcom/android/OriginalSettings/wifi/WifiEnabler$2;-><init>(Lcom/android/OriginalSettings/wifi/WifiEnabler;)V

    invoke-virtual {v3, v13, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 472
    new-instance v8, Lcom/android/OriginalSettings/wifi/WifiEnabler$3;

    invoke-direct {v8, p0}, Lcom/android/OriginalSettings/wifi/WifiEnabler$3;-><init>(Lcom/android/OriginalSettings/wifi/WifiEnabler;)V

    invoke-virtual {v3, v12, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 483
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->dismissDialog(I)V

    .line 484
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mApDisableDialog:Landroid/app/AlertDialog;

    .line 485
    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 490
    .end local v3           #newDialog:Landroid/app/AlertDialog$Builder;
    :pswitch_1
    const/4 v8, 0x2

    invoke-direct {p0, v8}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->dismissDialog(I)V

    .line 491
    new-instance v8, Landroid/app/ProgressDialog;

    iget-object v9, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    .line 492
    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    iget-object v9, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f09029f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 497
    :pswitch_2
    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 498
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v8, 0x7f040116

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 499
    .local v0, aboutview:Landroid/view/ViewGroup;
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 503
    .local v6, vzwDialog:Landroid/app/AlertDialog$Builder;
    new-instance v8, Lcom/android/OriginalSettings/wifi/WifiEnabler$4;

    invoke-direct {v8, p0}, Lcom/android/OriginalSettings/wifi/WifiEnabler$4;-><init>(Lcom/android/OriginalSettings/wifi/WifiEnabler;)V

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 518
    const v8, 0x7f0b036e

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 519
    .local v5, tv:Landroid/widget/TextView;
    const v8, 0x7f09033d

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    .line 521
    const v8, 0x7f0b036f

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 522
    .local v4, ok:Landroid/widget/Button;
    new-instance v8, Lcom/android/OriginalSettings/wifi/WifiEnabler$5;

    invoke-direct {v8, p0}, Lcom/android/OriginalSettings/wifi/WifiEnabler$5;-><init>(Lcom/android/OriginalSettings/wifi/WifiEnabler;)V

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    const v8, 0x7f0b003c

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 538
    .local v1, cancel:Landroid/widget/Button;
    new-instance v8, Lcom/android/OriginalSettings/wifi/WifiEnabler$6;

    invoke-direct {v8, p0}, Lcom/android/OriginalSettings/wifi/WifiEnabler$6;-><init>(Lcom/android/OriginalSettings/wifi/WifiEnabler;)V

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 548
    const/4 v8, 0x3

    invoke-direct {p0, v8}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->dismissDialog(I)V

    .line 549
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mVerizonDialog:Landroid/app/AlertDialog;

    .line 550
    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mVerizonDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 554
    .end local v0           #aboutview:Landroid/view/ViewGroup;
    .end local v1           #cancel:Landroid/widget/Button;
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v4           #ok:Landroid/widget/Button;
    .end local v5           #tv:Landroid/widget/TextView;
    .end local v6           #vzwDialog:Landroid/app/AlertDialog$Builder;
    :pswitch_3
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v10}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f09029c

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 558
    .local v7, warningDialog:Landroid/app/AlertDialog$Builder;
    new-instance v8, Lcom/android/OriginalSettings/wifi/WifiEnabler$7;

    invoke-direct {v8, p0}, Lcom/android/OriginalSettings/wifi/WifiEnabler$7;-><init>(Lcom/android/OriginalSettings/wifi/WifiEnabler;)V

    invoke-virtual {v7, v13, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 563
    new-instance v8, Lcom/android/OriginalSettings/wifi/WifiEnabler$8;

    invoke-direct {v8, p0}, Lcom/android/OriginalSettings/wifi/WifiEnabler$8;-><init>(Lcom/android/OriginalSettings/wifi/WifiEnabler;)V

    invoke-virtual {v7, v12, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 567
    const/4 v8, 0x4

    invoke-direct {p0, v8}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->dismissDialog(I)V

    .line 568
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mWiFiDirectDiableDialog:Landroid/app/AlertDialog;

    .line 569
    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mWiFiDirectDiableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 459
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public isWiFiChecked()Z
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 239
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->onSwitchChanged(Landroid/widget/CompoundButton;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 243
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mStateMachineEvent:Z

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->isWifiStateChangeAllowed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 257
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 263
    :cond_2
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-static {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 264
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f09021b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 266
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mHandler:Lcom/android/OriginalSettings/wifi/WifiEnabler$SwitchHandler;

    invoke-virtual {v0, v3}, Lcom/android/OriginalSettings/wifi/WifiEnabler$SwitchHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 271
    :cond_3
    if-eqz p2, :cond_5

    .line 272
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->checkWifiTetheringAndDisable()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->checkWifiDirectAndDisable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 273
    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mHandler:Lcom/android/OriginalSettings/wifi/WifiEnabler$SwitchHandler;

    invoke-virtual {v0, v3}, Lcom/android/OriginalSettings/wifi/WifiEnabler$SwitchHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 279
    :cond_5
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->setWifiEnable(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 184
    const-string v0, "WifiEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pause : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 189
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->isWifiStateChangeAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 191
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 207
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 196
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 197
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 203
    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->dismissDialog(I)V

    .line 204
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->dismissDialog(I)V

    .line 205
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->dismissDialog(I)V

    goto :goto_0
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 166
    const-string v0, "WifiEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resume : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->isWifiStateChangeAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 171
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 180
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 178
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 179
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public setOnEnablerSwitchListener(Lcom/android/OriginalSettings/guide/OnInternalSwitcherListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mEnablerListener:Lcom/android/OriginalSettings/guide/OnInternalSwitcherListener;

    .line 305
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 7
    .parameter "switch_"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 210
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v5, p1, :cond_0

    .line 234
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 212
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    .line 213
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 215
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 216
    .local v2, wifiState:I
    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    move v1, v4

    .line 217
    .local v1, isEnabled:Z
    :goto_1
    if-eq v2, v4, :cond_1

    const/4 v5, 0x4

    if-ne v2, v5, :cond_3

    :cond_1
    move v0, v4

    .line 219
    .local v0, isDisabled:Z
    :goto_2
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 221
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    invoke-virtual {v5}, Landroid/app/enterprise/WifiPolicy;->isWifiStateChangeAllowed()Z

    move-result v5

    if-nez v5, :cond_4

    .line 222
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .end local v0           #isDisabled:Z
    .end local v1           #isEnabled:Z
    :cond_2
    move v1, v3

    .line 216
    goto :goto_1

    .restart local v1       #isEnabled:Z
    :cond_3
    move v0, v3

    .line 217
    goto :goto_2

    .line 232
    .restart local v0       #isDisabled:Z
    :cond_4
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v1, :cond_5

    if-eqz v0, :cond_6

    :cond_5
    move v3, v4

    :cond_6
    invoke-virtual {v5, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0
.end method
