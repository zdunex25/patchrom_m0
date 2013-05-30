.class Lcom/android/internal/policy/impl/PenDetachmentAlert;
.super Ljava/lang/Object;
.source "PenDetachmentAlert.java"


# static fields
.field static final DEBUG:Z = true

.field private static final INTERVAL_SECONDS:I = 0x1e

.field private static final LOSS_PREVENTION_ALERT_CHANGED:Ljava/lang/String; = "com.android.settings.LossPeventionAlertChanged"

.field private static final MSG_ALERT_TIMER_START:I = 0x65

.field private static final PEN_MISSING_ALERT_DIALOG_DISMISSED:Ljava/lang/String; = "com.android.PenMissingAlertDialog.DISMISSED"

.field private static final SAMSUNG_PEN_INSERT_ACTION:Ljava/lang/String; = "com.samsung.pen.INSERT"

.field static final TAG:Ljava/lang/String; = "PenDetachmentAlert"

.field private static final TOTAL_SECONDS:I = 0x1e


# instance fields
.field private currentStepCount:I

.field private mAlertCount:I

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field private mDialogShowed:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsDialogShowing:Z

.field private mIsScreenOn:Z

.field mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

.field private mListenerRegistered:Z

.field mPenDetachmentAlertDialog:Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;

.field private mPenInserted:Z

.field private final mSContextListener:Landroid/hardware/scontext/SContextListener;

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mStepCount:I

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTimer:Landroid/os/CountDownTimer;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field private previousStepCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 4
    .parameter "context"
    .parameter "windowManagerFuncs"
    .parameter "keyguardMediator"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 113
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mStepCount:I

    .line 69
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mTimer:Landroid/os/CountDownTimer;

    .line 259
    new-instance v1, Lcom/android/internal/policy/impl/PenDetachmentAlert$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PenDetachmentAlert$3;-><init>(Lcom/android/internal/policy/impl/PenDetachmentAlert;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    .line 406
    new-instance v1, Lcom/android/internal/policy/impl/PenDetachmentAlert$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PenDetachmentAlert$4;-><init>(Lcom/android/internal/policy/impl/PenDetachmentAlert;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 114
    iput-object p1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mContext:Landroid/content/Context;

    .line 116
    new-instance v1, Lcom/android/internal/policy/impl/PenDetachmentAlert$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PenDetachmentAlert$1;-><init>(Lcom/android/internal/policy/impl/PenDetachmentAlert;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mHandler:Landroid/os/Handler;

    .line 129
    iput v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mAlertCount:I

    .line 130
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mIsDialogShowing:Z

    .line 132
    iput-object p2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 133
    iput-object p3, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    .line 134
    iput v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->previousStepCount:I

    .line 135
    iput v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->currentStepCount:I

    .line 136
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mListenerRegistered:Z

    .line 137
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenInserted:Z

    .line 138
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mDialogShowed:Z

    .line 139
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mIsScreenOn:Z

    .line 141
    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 146
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 147
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.samsung.pen.INSERT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v1, "com.android.settings.LossPeventionAlertChanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v1, "com.android.PenMissingAlertDialog.DISMISSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/PenDetachmentAlert;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->handleAlertTimer()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PenDetachmentAlert;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mIsDialogShowing:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/PenDetachmentAlert;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/PenDetachmentAlert;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mIsDialogShowing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/PenDetachmentAlert;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mAlertCount:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/PenDetachmentAlert;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mAlertCount:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PenDetachmentAlert;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->resetTimer()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/PenDetachmentAlert;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mStepCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/PenDetachmentAlert;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mDialogShowed:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/PenDetachmentAlert;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mDialogShowed:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/PenDetachmentAlert;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenInserted:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/PenDetachmentAlert;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenInserted:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/PenDetachmentAlert;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->showDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/PenDetachmentAlert;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->dismissTimer()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/PenDetachmentAlert;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mIsScreenOn:Z

    return p1
.end method

.method private dismissTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 205
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 207
    iput-object v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mTimer:Landroid/os/CountDownTimer;

    .line 208
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mIsDialogShowing:Z

    .line 209
    iput v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mAlertCount:I

    .line 210
    const-string v0, "PenDetachmentAlert"

    const-string v1, "dismiss alert timer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 214
    iput-object v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 216
    :cond_1
    return-void
.end method

.method private handleAlertTimer()V
    .locals 3

    .prologue
    .line 159
    const-string v1, "PenDetachmentAlert"

    const-string v2, "handleAlertTimer to play sound again for each 30 seconds"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 163
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "PenDetachmentAlert_Timer"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 165
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 166
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->setTimer()V

    .line 167
    return-void
.end method

.method private isFactoryMode()Z
    .locals 7

    .prologue
    .line 365
    const/4 v2, 0x0

    .line 366
    .local v2, isFactoryMode:Z
    const/4 v3, 0x0

    .line 367
    .local v3, valueShouldShutDown:I
    const/4 v1, 0x0

    .line 370
    .local v1, imeiBlocked:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 371
    iget-object v4, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "SHOULD_SHUT_DOWN"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 372
    const-string v4, "PenDetachmentAlert"

    const-string v5, "Factory mode is enabled by Case #1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const/4 v2, 0x1

    .line 378
    :cond_0
    if-nez v2, :cond_1

    .line 379
    const-string v4, "999999999999999"

    iget-object v5, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 380
    const-string v4, "PenDetachmentAlert"

    const-string v5, "Factory mode is enabled by Case #2"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const/4 v2, 0x1

    .line 386
    :cond_1
    if-nez v2, :cond_2

    .line 388
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v5, "/efs/FactoryApp/factorymode"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x20

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 394
    :goto_0
    if-eqz v1, :cond_3

    const-string v4, "ON"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 395
    const-string v4, "PenDetachmentAlert"

    const-string v5, "Not factory mode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_2
    :goto_1
    return v2

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, e:Ljava/io/IOException;
    const-string v1, "OFF"

    .line 391
    const-string v4, "PenDetachmentAlert"

    const-string v5, "cannot open file : /efs/FactoryApp/factorymode"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 398
    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    const-string v4, "PenDetachmentAlert"

    const-string v5, "Factory mode is enabled by Case #3"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private resetTimer()V
    .locals 2

    .prologue
    .line 190
    const-string v0, "PenDetachmentAlert"

    const-string v1, "stop alert timer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mAlertCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 193
    iget v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mAlertCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mAlertCount:I

    .line 194
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mTimer:Landroid/os/CountDownTimer;

    .line 198
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->setTimer()V

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->dismissTimer()V

    goto :goto_0
.end method

.method private setTimer()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x7530

    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mTimer:Landroid/os/CountDownTimer;

    .line 173
    :cond_0
    const-string v0, "PenDetachmentAlert"

    const-string v1, "start alert timer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v0, Lcom/android/internal/policy/impl/PenDetachmentAlert$2;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/PenDetachmentAlert$2;-><init>(Lcom/android/internal/policy/impl/PenDetachmentAlert;JJ)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mTimer:Landroid/os/CountDownTimer;

    .line 186
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 187
    return-void
.end method

.method private showDialog()V
    .locals 4

    .prologue
    .line 275
    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    .line 277
    .local v0, keyguardShowing:Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenDetachmentAlertDialog:Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenDetachmentAlertDialog:Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->dismiss()V

    .line 279
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenDetachmentAlertDialog:Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;

    .line 282
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenDetachmentAlertDialog:Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;

    if-nez v1, :cond_1

    .line 283
    new-instance v1, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mContext:Landroid/content/Context;

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenDetachmentAlertDialog:Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;

    .line 285
    :cond_1
    if-eqz v0, :cond_4

    .line 286
    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenDetachmentAlertDialog:Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 291
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenDetachmentAlertDialog:Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 292
    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenDetachmentAlertDialog:Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->show()V

    .line 293
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->playSoundOrVibration()V

    .line 296
    :cond_2
    const-string v1, "PenDetachmentAlert"

    const-string v2, "Pen detachment alert dialog displayed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    if-eqz v0, :cond_3

    .line 299
    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    const/16 v2, 0x3a98

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock(I)V

    .line 301
    :cond_3
    return-void

    .line 288
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenDetachmentAlertDialog:Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method


# virtual methods
.method public getPenInserted()Z
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenInserted:Z

    return v0
.end method

.method public playSoundOrVibration()V
    .locals 11

    .prologue
    .line 312
    const-string v0, "/system/media/audio/ui/Pen_det_alert.ogg"

    .line 313
    .local v0, DETACH_ALERT_SOUND:Ljava/lang/String;
    const/16 v8, 0x38

    new-array v3, v8, [B

    fill-array-data v3, :array_0

    .line 325
    .local v3, ivt:[B
    const-string v8, "/system/media/audio/ui/Pen_det_alert.ogg"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 326
    .local v7, soundUri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 327
    .local v6, sfx:Landroid/media/Ringtone;
    iget-object v8, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mContext:Landroid/content/Context;

    const-string v9, "audio"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 329
    .local v1, audioManager:Landroid/media/AudioManager;
    iget-object v8, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mContext:Landroid/content/Context;

    invoke-static {v8, v7}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v6

    .line 330
    iget-object v8, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mContext:Landroid/content/Context;

    const-string v9, "vibrator"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/SystemVibrator;

    .line 332
    .local v4, mVibrator:Landroid/os/SystemVibrator;
    if-eqz v1, :cond_0

    .line 334
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    .line 340
    .local v5, ringerMode:I
    :goto_0
    const/4 v8, 0x2

    if-ne v8, v5, :cond_2

    .line 341
    if-eqz v6, :cond_1

    .line 342
    const/4 v8, 0x5

    :try_start_0
    invoke-virtual {v6, v8}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 343
    invoke-virtual {v6}, Landroid/media/Ringtone;->play()V

    .line 344
    invoke-virtual {v4}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v8

    invoke-virtual {v4, v3, v8}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    .line 345
    const-string v8, "PenDetachmentAlert"

    const-string v9, "playSoundOrVibration() : RINGER_MODE_NORMAL"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :goto_1
    return-void

    .line 336
    .end local v5           #ringerMode:I
    :cond_0
    const/4 v5, 0x2

    .restart local v5       #ringerMode:I
    goto :goto_0

    .line 347
    :cond_1
    const-string v8, "PenDetachmentAlert"

    const-string v9, "playSoundOrVibration() : There are no ringtones"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 357
    :catch_0
    move-exception v2

    .line 358
    .local v2, exception:Ljava/lang/Exception;
    const-string v8, "PenDetachmentAlert"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "playSoundOrVibration() : Exception = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 349
    .end local v2           #exception:Ljava/lang/Exception;
    :cond_2
    const/4 v8, 0x1

    if-ne v8, v5, :cond_3

    .line 350
    :try_start_1
    invoke-virtual {v4}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v8

    invoke-virtual {v4, v3, v8}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    .line 351
    const-string v8, "PenDetachmentAlert"

    const-string v9, "playSoundOrVibration() : RINGER_MODE_VIBRATE"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 352
    :cond_3
    if-nez v5, :cond_4

    .line 353
    const-string v8, "PenDetachmentAlert"

    const-string v9, "playSoundOrVibration() : RINGER_MODE_SILENT"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 355
    :cond_4
    const-string v8, "PenDetachmentAlert"

    const-string v9, "playSoundOrVibration() : unknown mode"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 313
    nop

    :array_0
    .array-data 0x1
        0x1t
        0x0t
        0x3t
        0x0t
        0x30t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x19t
        0x0t
        0x21t
        0x0t
        0xf1t
        0xe0t
        0x2t
        0xe2t
        0x0t
        0x0t
        0xf1t
        0xe0t
        0x2t
        0xe2t
        0x0t
        0x64t
        0xf1t
        0xe0t
        0x2t
        0xe2t
        0x1t
        0x72t
        0xf1t
        0xe0t
        0x2t
        0xe2t
        0x1t
        0xd6t
        0xfft
        0x20t
        0x5t
        0x0t
        0x0t
        0x19t
        0x0t
        0x0t
        0x1t
        0x20t
        0x4t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0x61t
        0x0t
    .end array-data
.end method

.method public resetPedometer()V
    .locals 2

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mListenerRegistered:Z

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mContext:Landroid/content/Context;

    const-string v1, "scontext"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/scontext/SContextManager;->initializeSContextService(I)V

    .line 257
    :cond_1
    return-void
.end method

.method public setPenInserted(Z)V
    .locals 0
    .parameter "penInserted"

    .prologue
    .line 304
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenInserted:Z

    .line 305
    return-void
.end method

.method public startPedometer()V
    .locals 4

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->isFactoryMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    const-string v0, "PenDetachmentAlert"

    const-string v1, "do not start pedometer for pen detachment alert : factory mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :goto_0
    return-void

    .line 224
    :cond_0
    const-string v0, "PenDetachmentAlert"

    const-string v1, "enter startPedometer to registered SContextListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-nez v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mContext:Landroid/content/Context;

    const-string v1, "scontext"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    const/4 v2, 0x3

    iget v3, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mStepCount:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;II)Z

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mListenerRegistered:Z

    .line 232
    const-string v0, "PenDetachmentAlert"

    const-string v1, "registered SContextListener for pedometer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopPedometer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 236
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mListenerRegistered:Z

    if-eqz v0, :cond_1

    .line 237
    const-string v0, "PenDetachmentAlert"

    const-string v1, "enter stopPedometer to unregistered SContextListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mContext:Landroid/content/Context;

    const-string v1, "scontext"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 242
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mListenerRegistered:Z

    .line 243
    iput v3, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->previousStepCount:I

    .line 245
    const-string v0, "PenDetachmentAlert"

    const-string v1, "unregistered SContextListener for pedometer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_1
    return-void
.end method
