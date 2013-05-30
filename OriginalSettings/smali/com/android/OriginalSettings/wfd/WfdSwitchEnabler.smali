.class public Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;
.super Ljava/lang/Object;
.source "WfdSwitchEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mControlByWfdService:I

.field private mEnableControlByWfdService:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchPreference:Landroid/preference/SwitchPreference;

.field private mWfdManager:Lcom/samsung/wfd/WfdManager;

.field mWfdPickerActivity:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

.field private mWfdSwitchState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V
    .locals 3
    .parameter "context"
    .parameter "switch_"
    .parameter "fragment"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 150
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 49
    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    .line 50
    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 54
    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    .line 56
    iput v2, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mWfdSwitchState:I

    .line 57
    iput-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mEnableControlByWfdService:Z

    .line 58
    iput v2, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mControlByWfdService:I

    .line 59
    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    .line 61
    new-instance v0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler$1;-><init>(Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 151
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "WfdSwitchEnabler << tablet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iput-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mEnableControlByWfdService:Z

    .line 154
    iput v2, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mControlByWfdService:I

    .line 156
    iput-object p1, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mContext:Landroid/content/Context;

    .line 157
    iput-object p2, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    .line 158
    iput-object p3, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    .line 160
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "tablet case :: setEnabled << true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 178
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-nez v0, :cond_0

    .line 179
    const-string v0, "wfd"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/wfd/WfdManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    .line 183
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 184
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.WIFIDISPLAY_CONTROL_FROM_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.wfd.WFD_SESSION_ENABLED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.wfd.WFD_SESSION_ESTABLISHING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V
    .locals 3
    .parameter "context"
    .parameter "switch_"
    .parameter "fragment"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 196
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 49
    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    .line 50
    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 54
    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    .line 56
    iput v2, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mWfdSwitchState:I

    .line 57
    iput-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mEnableControlByWfdService:Z

    .line 58
    iput v2, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mControlByWfdService:I

    .line 59
    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    .line 61
    new-instance v0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler$1;-><init>(Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 197
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "WfdSwitchEnabler << phone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iput-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mEnableControlByWfdService:Z

    .line 200
    iput v2, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mControlByWfdService:I

    .line 202
    iput-object p1, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mContext:Landroid/content/Context;

    .line 203
    iput-object p2, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 204
    iput-object p3, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    .line 206
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "phone case :: setEnabled << true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 222
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-nez v0, :cond_0

    .line 223
    const-string v0, "wfd"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/wfd/WfdManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    .line 227
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 228
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.WIFIDISPLAY_CONTROL_FROM_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.wfd.WFD_SESSION_ENABLED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.wfd.WFD_SESSION_ESTABLISHING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->handleP2pStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mControlByWfdService:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mControlByWfdService:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mEnableControlByWfdService:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mEnableControlByWfdService:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;)Lcom/samsung/wfd/WfdManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    return-object v0
.end method

.method private handleP2pStateChanged(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 422
    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mWfdSwitchState:I

    if-ne v0, p1, :cond_2

    .line 423
    const-string v0, "WfdSwitchEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "same state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " skip handleP2pStateChanged!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 426
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "phone... setEnabled << true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 430
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "tablet... setEnabled << true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 478
    :cond_1
    :goto_0
    return-void

    .line 441
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 473
    const-string v0, "WfdSwitchEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled wifi state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_3
    :goto_1
    iput p1, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mWfdSwitchState:I

    goto :goto_0

    .line 443
    :pswitch_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_4

    .line 444
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "phone << handleP2pStateChanged WifiP2pManager.WIFI_P2P_STATE_ENABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 446
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 447
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "handleP2pStateChanged... setEnabled << true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_3

    .line 450
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "tablet << handleP2pStateChanged WifiP2pManager.WIFI_P2P_STATE_ENABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 452
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 453
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "handleP2pStateChanged... setEnabled << true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 458
    :pswitch_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_5

    .line 459
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "phone << handleP2pStateChanged WifiP2pManager.WIFI_P2P_STATE_DISABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 461
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 462
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "handleP2pStateChanged... setEnabled << true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_5
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_3

    .line 465
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "tablet << handleP2pStateChanged WifiP2pManager.WIFI_P2P_STATE_DISABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 467
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 468
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "handleP2pStateChanged... setEnabled << true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 441
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isP2pEnabled()Z
    .locals 6

    .prologue
    .line 402
    :try_start_0
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 403
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 404
    .local v2, netInfo:Landroid/net/NetworkInfo;
    const-string v3, "WfdSwitchEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isP2pEnabled >> ret:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 410
    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v2           #netInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v3

    .line 406
    :catch_0
    move-exception v1

    .line 407
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v3, "WfdSwitchEnabler"

    const-string v4, "isP2pEnabled - NullPointerException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v5, 0x1

    .line 306
    const-string v2, "WfdSwitchEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCheckedChanged << isChecked:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 309
    .local v1, manager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    .line 327
    .local v0, isWifiConnected:Z
    if-eqz p2, :cond_1

    .line 329
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 331
    const-string v2, "WfdSwitchEnabler"

    const-string v3, "onCheckedChanged will setWfdEnabledDialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v2, v5}, Lcom/samsung/wfd/WfdManager;->setWfdEnabledDialog(Z)Z

    .line 334
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    if-eqz v2, :cond_0

    .line 335
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->startScanningWfdPickerDialog()V

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v2, :cond_2

    .line 340
    const-string v2, "WfdSwitchEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mWfdManager.getWfdState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v4}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 352
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    if-eqz v2, :cond_2

    .line 354
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->stopScanningWfdPickerDialog()V

    .line 355
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v2, v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->handleP2pStateChanged(Z)V

    .line 361
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 345
    :pswitch_0
    const-string v2, "WfdSwitchEnabler"

    const-string v3, "onCheckedChanged will setWfdTerminate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdManager;->setWfdTerminate()Z

    goto :goto_1

    .line 341
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 371
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 372
    .local v0, enable:Z
    const-string v2, "WfdSwitchEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceChange << value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-ne v2, v0, :cond_0

    .line 375
    const-string v2, "WfdSwitchEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "skip! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :goto_0
    return v1

    .line 380
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 383
    if-eqz v0, :cond_2

    .line 384
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->isP2pEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 386
    const-string v2, "WfdSwitchEnabler"

    const-string v3, "onPreferenceChange will setWfdEnabledDialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v2, v1}, Lcom/samsung/wfd/WfdManager;->setWfdEnabledDialog(Z)Z

    .line 397
    :cond_1
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 390
    :cond_2
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->isP2pEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 392
    const-string v1, "WfdSwitchEnabler"

    const-string v2, "onPreferenceChange will setWfdTerminate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v1}, Lcom/samsung/wfd/WfdManager;->setWfdTerminate()Z

    goto :goto_1
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 288
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mEnableControlByWfdService:Z

    .line 293
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 294
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 301
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 253
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "resume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mWfdSwitchState:I

    .line 258
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 260
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 267
    :cond_1
    return-void
.end method

.method public setP2PDisable(Z)V
    .locals 3
    .parameter "bChecked"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 283
    const-string v0, "WfdSwitchEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setP2PDisable >> mSwitch.setChecked(bChecked); !!!! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_0
    return-void
.end method

.method public setP2PEnable(Z)V
    .locals 3
    .parameter "bChecked"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 272
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 274
    const-string v0, "WfdSwitchEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setP2PEnable >> mSwitch.setChecked(bChecked); !!!! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_0
    return-void
.end method
