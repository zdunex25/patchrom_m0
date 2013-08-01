.class public Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$GoToUnlockScreenCallback;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MissedEventCallback;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ShortcutWidgetUpdateForContextCallback;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$PcwInfoChangeCallback;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$Injector;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field protected static final DEBUG_SIM_STATES:Z = false

.field private static final FAILED_BIOMETRIC_UNLOCK_ATTEMPTS_BEFORE_BACKUP:I = 0x3

.field static final LOW_BATTERY_THRESHOLD:I = 0x14

.field private static final MISSED_CALL_REMOVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationRemoved"

.field private static final MISSED_EVENT_ARRIVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationArrived"

.field private static final MISSED_MSG_REMOVED:Ljava/lang/String; = "android.provider.Telephony.Threads.action.READ_CHANGED_THREAD_ACTION"

.field private static final MSG_BATTERY_UPDATE:I = 0x12e

.field protected static final MSG_BOOT_COMPLETED:I = 0x137

.field private static final MSG_CARRIER_INFO_UPDATE:I = 0x12f

.field private static final MSG_CLOCK_VISIBILITY_CHANGED:I = 0x133

.field private static final MSG_CONTEXTUAL_SHORTCUT_ADD:I = 0x138

.field private static final MSG_DEVICE_PROVISIONED:I = 0x134

.field protected static final MSG_DPM_STATE_CHANGED:I = 0x135

.field private static final MSG_GO_TO_UNLOCK_SCREEN:I = 0x1f5

.field private static final MSG_MISSED_CALL_DELETE:I = 0x13c

.field private static final MSG_MISSED_CALL_UPDATE:I = 0x13a

.field private static final MSG_MISSED_MSG_DELETE:I = 0x13d

.field private static final MSG_MISSED_MSG_UPDATE:I = 0x13b

.field private static final MSG_PCW_INFO_CHANGED:I = 0x139

.field private static final MSG_PHONE_STATE_CHANGED:I = 0x132

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x131

.field private static final MSG_SIM_STATE_CHANGE:I = 0x130

.field private static final MSG_TIME_UPDATE:I = 0x12d

.field protected static final MSG_USER_CHANGED:I = 0x136

.field private static final SAMSUNG_PEN_INSERT_ACTION:Ljava/lang/String; = "com.samsung.pen.INSERT"

.field private static final TAG:Ljava/lang/String; = "KeyguardUpdateMonitor"


# instance fields
.field private mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

.field private mBootCompleted:Z

.field private mClockVisible:Z

.field private mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mContextModeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentContextMode:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceProvisioned:Z

.field private mFailedAttempts:I

.field private mFailedBiometricUnlockAttempts:I

.field private mGoToUnlockScreenCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$GoToUnlockScreenCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHoveringUI:Z

.field private mInfoCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mMissedEventCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MissedEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mPcwInfoCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$PcwInfoChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneState:I

.field private mPreviousContextMode:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

.field private mReceivePeninsertOnBoot:Z

.field private mRingMode:I

.field private mShortcutWidgetCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ShortcutWidgetUpdateForContextCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mSimState:Lcom/android/internal/telephony/IccCard$State;

.field private mSimStateCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mSkipSimStateChange:Z
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field private mTelephonyPlmn:Ljava/lang/CharSequence;

.field private mTelephonySpn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSkipSimStateChange:Z

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    iput v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedAttempts:I

    iput v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mShortcutWidgetCallbacks:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPcwInfoCallbacks:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedEventCallbacks:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mGoToUnlockScreenCallbacks:Ljava/util/ArrayList;

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBootCompleted:Z

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHoveringUI:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "device_provisioned"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 305
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v5, "com.sec.feature.hovering_ui"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHoveringUI:Z

    .line 309
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-nez v2, :cond_0

    .line 310
    new-instance v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$2;

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$2;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 323
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "device_provisioned"

    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 329
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "device_provisioned"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    move v1, v3

    .line 331
    .local v1, provisioned:Z
    :goto_1
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eq v1, v2, :cond_0

    .line 332
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 333
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eqz v2, :cond_0

    .line 334
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x134

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 340
    .end local v1           #provisioned:Z
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 341
    new-instance v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    const/16 v5, 0x64

    invoke-direct {v2, v3, v5, v4, v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;-><init>(IIII)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    .line 343
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    .line 346
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mReceivePeninsertOnBoot:Z

    .line 347
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContextModeList:Ljava/util/ArrayList;

    .line 348
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContextModeList:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;->CONTEXT_MODE_NONE:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    sget-object v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;->CONTEXT_MODE_NONE:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPreviousContextMode:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    .line 350
    sget-object v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;->CONTEXT_MODE_NONE:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCurrentContextMode:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    .line 354
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 355
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 356
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 357
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 358
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 359
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 360
    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 361
    const-string v2, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 362
    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 363
    const-string v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 364
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 365
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 366
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 367
    const-string v2, "com.samsung.pen.INSERT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 368
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 369
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 370
    const-string v2, "com.android.internal.policy.impl.Keyguard.PCW_LOCKED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 373
    const-string v2, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 374
    const-string v2, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 375
    const-string v2, "android.provider.Telephony.Threads.action.READ_CHANGED_THREAD_ACTION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 377
    new-instance v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 538
    return-void

    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    move v2, v4

    .line 302
    goto/16 :goto_0

    :cond_2
    move v1, v4

    .line 329
    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleTimeUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleBatteryUpdate(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleMissedCallDelete()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleMissedMsgDelete(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleGoToUnlockScreen()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleCarrierInfoUpdate()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHoveringUI:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mReceivePeninsertOnBoot:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mReceivePeninsertOnBoot:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleSimStateChange(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleClockVisibilityChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handlePcwInfoChanged()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleBootCompleted()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;ILcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleShortcutWidgetUpdate(ILcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/sec/CircleMissedEventData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleMissedCallUpdate(Lcom/android/internal/policy/impl/sec/CircleMissedEventData;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/sec/CircleMissedEventData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleMissedMsgUpdate(Lcom/android/internal/policy/impl/sec/CircleMissedEventData;)V

    return-void
.end method

.method private getDefaultPlmn()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 782
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10403de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "intent"

    .prologue
    .line 767
    const-string v1, "showPlmn"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 768
    const-string v1, "plmn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 769
    .local v0, plmn:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 775
    .end local v0           #plmn:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 772
    .restart local v0       #plmn:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 775
    .end local v0           #plmn:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "intent"

    .prologue
    .line 791
    const-string v1, "showSpn"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 792
    const-string v1, "spn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 793
    .local v0, spn:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 797
    .end local v0           #spn:Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleBatteryUpdate(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 6
    .parameter "batteryStatus"

    .prologue
    .line 603
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    invoke-static {v2, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBatteryUpdateInteresting(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    .line 605
    .local v0, batteryUpdateInteresting:Z
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    .line 606
    if-eqz v0, :cond_0

    .line 607
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 609
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v3

    invoke-static {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isPluggedIn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v4

    iget v5, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onRefreshBatteryInfo(ZZI)V

    .line 607
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 613
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method private handleBootCompleted()V
    .locals 1

    .prologue
    .line 1088
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBootCompleted:Z

    .line 1089
    return-void
.end method

.method private handleCarrierInfoUpdate()V
    .locals 4

    .prologue
    .line 622
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 623
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 622
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 625
    :cond_0
    return-void
.end method

.method private handleClockVisibilityChanged()V
    .locals 2

    .prologue
    .line 649
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 650
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onClockVisibilityChanged()V

    .line 649
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 652
    :cond_0
    return-void
.end method

.method private handleGoToUnlockScreen()V
    .locals 2

    .prologue
    .line 729
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mGoToUnlockScreenCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 730
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mGoToUnlockScreenCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$GoToUnlockScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$GoToUnlockScreenCallback;->goToUnlockScreenForDetachPen()V

    .line 729
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 732
    :cond_0
    return-void
.end method

.method private handleMissedCallDelete()V
    .locals 3

    .prologue
    .line 711
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;

    move-result-object v0

    .line 712
    .local v0, dbAdapter:Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->deleteMissedCall()V

    .line 713
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedEventCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 714
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedEventCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MissedEventCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MissedEventCallback;->onMissedCallUpdate()V

    .line 713
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 716
    :cond_0
    return-void
.end method

.method private handleMissedCallUpdate(Lcom/android/internal/policy/impl/sec/CircleMissedEventData;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 693
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;

    move-result-object v0

    .line 694
    .local v0, dbAdapter:Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->insertMissedCall(Lcom/android/internal/policy/impl/sec/CircleMissedEventData;)V

    .line 695
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedEventCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 696
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedEventCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MissedEventCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MissedEventCallback;->onMissedCallUpdate()V

    .line 695
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 698
    :cond_0
    return-void
.end method

.method private handleMissedMsgDelete(I)V
    .locals 4
    .parameter "threadId"

    .prologue
    .line 720
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;

    move-result-object v0

    .line 721
    .local v0, dbAdapter:Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->deleteMissedMsg(J)V

    .line 722
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedEventCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 723
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedEventCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MissedEventCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MissedEventCallback;->onMissedMsgUpdate()V

    .line 722
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 725
    :cond_0
    return-void
.end method

.method private handleMissedMsgUpdate(Lcom/android/internal/policy/impl/sec/CircleMissedEventData;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 702
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;

    move-result-object v0

    .line 703
    .local v0, dbAdapter:Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->insertMissedMsg(Lcom/android/internal/policy/impl/sec/CircleMissedEventData;)V

    .line 704
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedEventCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 705
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedEventCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MissedEventCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MissedEventCallback;->onMissedMsgUpdate()V

    .line 704
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 707
    :cond_0
    return-void
.end method

.method private handlePcwInfoChanged()V
    .locals 2

    .prologue
    .line 665
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPcwInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 666
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPcwInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$PcwInfoChangeCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$PcwInfoChangeCallback;->onPcwInfoChanged()V

    .line 665
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 668
    :cond_0
    return-void
.end method

.method private handleShortcutWidgetUpdate(ILcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;)V
    .locals 5
    .parameter "isPush"
    .parameter "mode"

    .prologue
    .line 672
    const/4 v1, 0x0

    .line 673
    .local v1, isCallback:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mShortcutWidgetCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 674
    const/4 v1, 0x1

    .line 675
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mShortcutWidgetCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ShortcutWidgetUpdateForContextCallback;

    invoke-interface {v2, p1, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ShortcutWidgetUpdateForContextCallback;->ShortcutWidgetUpdateForContext(ILcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;)V

    .line 673
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 677
    :cond_0
    if-nez v1, :cond_2

    .line 678
    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    .line 679
    invoke-virtual {p0, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->pushContextMode(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;)V

    .line 686
    :cond_1
    :goto_1
    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "After attempt callback but there isn\'t method so just update contextMode list,"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentContextMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getCurrentContextMode()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", PreviousContextMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPreviousContextMode()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :cond_2
    return-void

    .line 680
    :cond_3
    if-nez p1, :cond_1

    .line 681
    invoke-virtual {p0, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->popContextMode(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;)V

    .line 682
    sget-object v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;->CONTEXT_MODE_CARCRADLE:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    if-ne p2, v2, :cond_1

    .line 683
    sget-object v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;->CONTEXT_MODE_DESKCRADLE:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->popContextMode(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;)V

    goto :goto_1
.end method

.method private handleSimStateChange(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;)V
    .locals 3
    .parameter "simArgs"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSkipSimStateChange:Z

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCard$State;

    .local v1, state:Lcom/android/internal/telephony/IccCard$State;
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v2, :cond_0

    .line 640
    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 641
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 642
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-interface {v2, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private handleTimeUpdate()V
    .locals 2

    .prologue
    .line 593
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 594
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onTimeChanged()V

    .line 593
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 596
    :cond_0
    return-void
.end method

.method private static isBatteryLow(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z
    .locals 2
    .parameter "status"

    .prologue
    .line 759
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isBatteryUpdateInteresting(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z
    .locals 7
    .parameter "old"
    .parameter "current"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 735
    invoke-static {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isPluggedIn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    .line 736
    .local v0, nowPluggedIn:Z
    invoke-static {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isPluggedIn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v2

    .line 737
    .local v2, wasPluggedIn:Z
    if-ne v2, v3, :cond_1

    if-ne v0, v3, :cond_1

    iget v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->status:I

    iget v6, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->status:I

    if-eq v5, v6, :cond_1

    move v1, v3

    .line 742
    .local v1, stateChangedWhilePluggedIn:Z
    :goto_0
    if-ne v2, v0, :cond_0

    if-eqz v1, :cond_2

    .line 755
    :cond_0
    :goto_1
    return v3

    .end local v1           #stateChangedWhilePluggedIn:Z
    :cond_1
    move v1, v4

    .line 737
    goto :goto_0

    .line 747
    .restart local v1       #stateChangedWhilePluggedIn:Z
    :cond_2
    if-eqz v0, :cond_3

    iget v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iget v6, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    if-ne v5, v6, :cond_0

    .line 752
    :cond_3
    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBatteryLow(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iget v6, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    if-ne v5, v6, :cond_0

    :cond_4
    move v3, v4

    .line 755
    goto :goto_1
.end method

.method private static isPluggedIn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z
    .locals 3
    .parameter "status"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 659
    iget v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-static {}, Landroid/app/MiuiThemeHelper;->isScreenshotMode()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearFailedAttempts()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1043
    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedAttempts:I

    .line 1044
    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    .line 1045
    return-void
.end method

.method public getBatteryLevel()I
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    iget v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    return v0
.end method

.method public getCurrentContextMode()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;
    .locals 1

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCurrentContextMode:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    return-object v0
.end method

.method public getCurrentFailedPasswordAttempts()I
    .locals 1

    .prologue
    .line 1131
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts()I

    move-result v0

    return v0
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .locals 4

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 1147
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 1149
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 1150
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "Can\'t get DevicePolicyManagerService: is it running?"

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Stack trace:"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1153
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public getFailedAttempts()I
    .locals 1

    .prologue
    .line 1036
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isITPolicyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1037
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getCurrentFailedPasswordAttempts()I

    move-result v0

    .line 1039
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedAttempts:I

    goto :goto_0
.end method

.method public getMaxBiometricUnlockAttemptsReached()Z
    .locals 2

    .prologue
    .line 1064
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMaximumFailedPasswordsForWipe()I
    .locals 2

    .prologue
    .line 1135
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getPhoneState()I
    .locals 1

    .prologue
    .line 1056
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneState:I

    return v0
.end method

.method public getPreviousContextMode()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;
    .locals 1

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPreviousContextMode:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    return-object v0
.end method

.method public getSimState()Lcom/android/internal/telephony/IccCard$State;
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    return-object v0
.end method

.method public getTelephonyPlmn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTelephonySpn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected handleDevicePolicyManagerStateChanged()V
    .locals 2

    .prologue
    .line 544
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 545
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onDevicePolicyManagerStateChanged()V

    .line 544
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 547
    :cond_0
    return-void
.end method

.method protected handleDeviceProvisioned()V
    .locals 3

    .prologue
    .line 556
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 557
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onDeviceProvisioned()V

    .line 556
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 559
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_1

    .line 561
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 562
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 564
    :cond_1
    return-void
.end method

.method protected handlePhoneStateChanged(Ljava/lang/String;)V
    .locals 3
    .parameter "newState"

    .prologue
    .line 568
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 569
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneState:I

    .line 575
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 576
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    iget v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onPhoneStateChanged(I)V

    .line 575
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 570
    .end local v0           #i:I
    :cond_1
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 571
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneState:I

    goto :goto_0

    .line 572
    :cond_2
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 573
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneState:I

    goto :goto_0

    .line 578
    .restart local v0       #i:I
    :cond_3
    return-void
.end method

.method protected handleRingerModeChange(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 582
    iput p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mRingMode:I

    .line 583
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 584
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onRingerModeChanged(I)V

    .line 583
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 586
    :cond_0
    return-void
.end method

.method protected handleUserChanged(I)V
    .locals 2
    .parameter "userId"

    .prologue
    .line 550
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 551
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onUserChanged(I)V

    .line 550
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 553
    :cond_0
    return-void
.end method

.method public isBootCompleted()Z
    .locals 1

    .prologue
    .line 1083
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBootCompleted:Z

    return v0
.end method

.method public isClockVisible()Z
    .locals 1

    .prologue
    .line 1052
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mClockVisible:Z

    return v0
.end method

.method public isDeviceCharged()Z
    .locals 2

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    iget v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeviceCharging()Z
    .locals 2

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    iget v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDevicePluggedIn()Z
    .locals 1

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isPluggedIn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    return v0
.end method

.method public isDeviceProvisioned()Z
    .locals 1

    .prologue
    .line 1032
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return v0
.end method

.method public isITPolicyEnabled()Z
    .locals 1

    .prologue
    .line 1139
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getMaximumFailedPasswordsForWipe()I

    move-result v0

    if-lez v0, :cond_0

    .line 1140
    const/4 v0, 0x1

    .line 1142
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIccBlockedPermanently()Z
    .locals 2

    .prologue
    .line 1075
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_0

    .line 1076
    const/4 v0, 0x1

    .line 1078
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSimLocked()Z
    .locals 2

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSimPinSecure()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isSimLocked()Z

    move-result v0

    return v0
.end method

.method public popContextMode(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;)V
    .locals 3
    .parameter "contextMode"

    .prologue
    .line 1119
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContextModeList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1120
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1121
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContextModeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1122
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContextModeList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContextModeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCurrentContextMode:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    .line 1123
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCurrentContextMode:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    sget-object v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;->CONTEXT_MODE_NONE:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    if-eq v1, v2, :cond_0

    .line 1124
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContextModeList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContextModeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPreviousContextMode:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    .line 1127
    :cond_0
    return-void
.end method

.method public pushContextMode(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;)V
    .locals 1
    .parameter "contextMode"

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCurrentContextMode:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPreviousContextMode:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    .line 1114
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCurrentContextMode:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    .line 1115
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContextModeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1116
    return-void
.end method

.method public registerGoToUnlockScreenCallbacks(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$GoToUnlockScreenCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 982
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mGoToUnlockScreenCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 983
    return-void
.end method

.method public registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V
    .locals 3
    .parameter "callback"

    .prologue
    .line 929
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isPluggedIn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    iget v2, v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    invoke-interface {p1, v0, v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onRefreshBatteryInfo(ZZI)V

    .line 934
    invoke-interface {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onTimeChanged()V

    .line 935
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mRingMode:I

    invoke-interface {p1, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onRingerModeChanged(I)V

    .line 936
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-interface {p1, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onPhoneStateChanged(I)V

    .line 937
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    invoke-interface {p1, v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 938
    invoke-interface {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onClockVisibilityChanged()V

    .line 943
    :cond_0
    return-void
.end method

.method public registerMissedEventCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MissedEventCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 978
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedEventCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 979
    return-void
.end method

.method public registerPcwInfoCallbacks(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$PcwInfoChangeCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 966
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPcwInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 967
    return-void
.end method

.method public registerShortcutWidgetUpdateForContextCallbacks(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ShortcutWidgetUpdateForContextCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 970
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mShortcutWidgetCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 971
    return-void
.end method

.method public registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 950
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 951
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 953
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    invoke-interface {p1, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V

    .line 958
    :cond_0
    return-void
.end method

.method public removeCallback(Ljava/lang/Object;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 807
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 808
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 809
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mShortcutWidgetCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 810
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPcwInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 811
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedEventCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 812
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mGoToUnlockScreenCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 813
    return-void
.end method

.method public reportClockVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 961
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mClockVisible:Z

    .line 962
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x133

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 963
    return-void
.end method

.method public reportFailedAttempt()V
    .locals 1

    .prologue
    .line 1048
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedAttempts:I

    .line 1049
    return-void
.end method

.method public reportFailedBiometricUnlockAttempt()V
    .locals 1

    .prologue
    .line 1060
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    .line 1061
    return-void
.end method

.method public reportSimUnlocked()V
    .locals 2

    .prologue
    .line 999
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;-><init>(Lcom/android/internal/telephony/IccCard$State;)V

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleSimStateChange(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;)V

    .line 1000
    return-void
.end method

.method public setCurrentContextMode(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;)V
    .locals 0
    .parameter "contextMode"

    .prologue
    .line 1105
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCurrentContextMode:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    .line 1106
    return-void
.end method

.method public setPreviousContextMode(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;)V
    .locals 0
    .parameter "contextMode"

    .prologue
    .line 1101
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPreviousContextMode:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    .line 1102
    return-void
.end method

.method public setFailedAttempts(I)V
    .locals 0
    .parameter "failedAttempts"

    .prologue
    iput p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedAttempts:I

    return-void
.end method

.method public setSkipSimStateChange(Z)V
    .locals 0
    .parameter "skip"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSkipSimStateChange:Z

    return-void
.end method

.method public shouldShowBatteryInfo()Z
    .locals 1

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isPluggedIn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBatteryLow(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
