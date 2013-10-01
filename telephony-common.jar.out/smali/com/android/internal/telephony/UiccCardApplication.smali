.class public Lcom/android/internal/telephony/UiccCardApplication;
.super Ljava/lang/Object;
.source "UiccCardApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/UiccCardApplication$2;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_CHANGE_FACILITY_FDN_DONE:I = 0x2

.field private static final EVENT_CHANGE_FACILITY_LOCK_DONE:I = 0x4

.field private static final EVENT_QUERY_FACILITY_FDN_DONE:I = 0x1

.field private static final EVENT_QUERY_FACILITY_LOCK_DONE:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "RIL_UiccCardApplication"


# instance fields
.field private mAid:Ljava/lang/String;

.field private mAppLabel:Ljava/lang/String;

.field private mAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

.field private mAppType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mDesiredFdnEnabled:Z

.field private mDesiredPinLocked:Z

.field private mDestroyed:Z

.field private mHandler:Landroid/os/Handler;

.field private mIccFdnEnabled:Z

.field private mIccFh:Lcom/android/internal/telephony/IccFileHandler;

.field private mIccLockEnabled:Z

.field private mIccRecords:Lcom/android/internal/telephony/IccRecords;

.field private final mLock:Ljava/lang/Object;

.field private mNetworkLockedRegistrants:Landroid/os/RegistrantList;

.field private mPersoSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

.field private mPin1Replaced:Z

.field private mPin1State:Lcom/android/internal/telephony/IccCardStatus$PinState;

.field private mPin2State:Lcom/android/internal/telephony/IccCardStatus$PinState;

.field private mPinLockedRegistrants:Landroid/os/RegistrantList;

.field private mReadyRegistrants:Landroid/os/RegistrantList;

.field private mUiccCard:Lcom/android/internal/telephony/UiccCard;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/UiccCard;Lcom/android/internal/telephony/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3
    .parameter "uiccCard"
    .parameter "as"
    .parameter "c"
    .parameter "ci"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    .line 72
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    .line 73
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    .line 74
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    .line 310
    new-instance v0, Lcom/android/internal/telephony/UiccCardApplication$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/UiccCardApplication$1;-><init>(Lcom/android/internal/telephony/UiccCardApplication;)V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creating UiccApp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 81
    iput-object p1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    .line 82
    iget-object v0, p2, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    .line 83
    iget-object v0, p2, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    .line 84
    iget-object v0, p2, Lcom/android/internal/telephony/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .line 85
    iget-object v0, p2, Lcom/android/internal/telephony/IccCardApplicationStatus;->aid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    .line 86
    iget-object v0, p2, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppLabel:Ljava/lang/String;

    .line 87
    iget v0, p2, Lcom/android/internal/telephony/IccCardApplicationStatus;->pin1_replaced:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1Replaced:Z

    .line 88
    iget-object v0, p2, Lcom/android/internal/telephony/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 89
    iget-object v0, p2, Lcom/android/internal/telephony/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/IccCardStatus$PinState;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 91
    iput-object p3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mContext:Landroid/content/Context;

    .line 92
    iput-object p4, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 94
    iget-object v0, p2, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->createIccFileHandler(Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 95
    iget-object v0, p2, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/UiccCardApplication;->createIccRecords(Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    sget-object v1, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    if-ne v0, v1, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCardApplication;->queryFdn()V

    .line 98
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCardApplication;->queryPin1State()V

    .line 100
    :cond_0
    return-void

    .line 87
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/UiccCardApplication;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccCardApplication;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccCardApplication;->onQueryFdnEnabled(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccCardApplication;->onChangeFdnDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccCardApplication;->onQueryFacilityLock(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccCardApplication;->onChangeFacilityLock(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private createIccFileHandler(Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/IccFileHandler;
    .locals 3
    .parameter "type"

    .prologue
    .line 175
    sget-object v0, Lcom/android/internal/telephony/UiccCardApplication$2;->$SwitchMap$com$android$internal$telephony$IccCardApplicationStatus$AppType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 187
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 177
    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/gsm/SIMFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMFileHandler;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 179
    :pswitch_1
    new-instance v0, Lcom/android/internal/telephony/cdma/RuimFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/cdma/RuimFileHandler;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 181
    :pswitch_2
    new-instance v0, Lcom/android/internal/telephony/UsimFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/UsimFileHandler;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 183
    :pswitch_3
    new-instance v0, Lcom/android/internal/telephony/CsimFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/CsimFileHandler;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 185
    :pswitch_4
    new-instance v0, Lcom/android/internal/telephony/ims/IsimFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/ims/IsimFileHandler;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private createIccRecords(Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/IccRecords;
    .locals 1
    .parameter "type"
    .parameter "c"
    .parameter "ci"

    .prologue
    .line 162
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-ne p1, v0, :cond_1

    .line 163
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 170
    :goto_0
    return-object v0

    .line 164
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-ne p1, v0, :cond_3

    .line 165
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/internal/telephony/cdma/RuimRecords;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 166
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-ne p1, v0, :cond_4

    .line 167
    new-instance v0, Lcom/android/internal/telephony/ims/IsimUiccRecords;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/internal/telephony/ims/IsimUiccRecords;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 170
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 693
    const-string v0, "RIL_UiccCardApplication"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 697
    const-string v0, "RIL_UiccCardApplication"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    return-void
.end method

.method private notifyNetworkLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V
    .locals 3
    .parameter "r"

    .prologue
    const/4 v2, 0x0

    .line 453
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    sget-object v1, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    sget-object v1, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    if-ne v0, v1, :cond_0

    .line 459
    if-nez p1, :cond_2

    .line 460
    const-string v0, "Notifying registrants: NETWORK_LOCKED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    .line 463
    :cond_2
    const-string v0, "Notifying 1 registrant: NETWORK_LOCED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 464
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_0
.end method

.method private notifyPinLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V
    .locals 3
    .parameter "r"

    .prologue
    const/4 v2, 0x0

    .line 425
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    sget-object v1, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    sget-object v1, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    if-ne v0, v1, :cond_0

    .line 431
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/IccCardStatus$PinState;

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/IccCardStatus$PinState;

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_DISABLED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    if-ne v0, v1, :cond_4

    .line 433
    :cond_3
    const-string v0, "Sanity check failed! APPSTATE is locked while PIN1 is not!!!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 437
    :cond_4
    if-nez p1, :cond_5

    .line 438
    const-string v0, "Notifying registrants: LOCKED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    .line 441
    :cond_5
    const-string v0, "Notifying 1 registrant: LOCKED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 442
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_0
.end method

.method private notifyReadyRegistrantsIfNeeded(Landroid/os/Registrant;)V
    .locals 3
    .parameter "r"

    .prologue
    const/4 v2, 0x0

    .line 398
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    sget-object v1, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    if-ne v0, v1, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/IccCardStatus$PinState;

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/IccCardStatus$PinState;

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/IccCardStatus$PinState;

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    if-ne v0, v1, :cond_3

    .line 405
    :cond_2
    const-string v0, "Sanity check failed! APPSTATE is ready while PIN1 is not verified!!!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 409
    :cond_3
    if-nez p1, :cond_4

    .line 410
    const-string v0, "Notifying registrants: READY"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    .line 413
    :cond_4
    const-string v0, "Notifying 1 registrant: READY"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 414
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_0
.end method

.method private onChangeFacilityLock(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "ar"

    .prologue
    .line 297
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 298
    :try_start_0
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 299
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDesiredPinLocked:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccLockEnabled:Z

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_CHANGE_FACILITY_LOCK_DONE: mIccLockEnabled= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccLockEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 305
    :goto_0
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 306
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 307
    monitor-exit v1

    .line 308
    return-void

    .line 303
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error change facility lock with exception "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onChangeFdnDone(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    .line 225
    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 226
    :try_start_0
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 227
    iget-boolean v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDesiredFdnEnabled:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_CHANGE_FACILITY_FDN_DONE: mIccFdnEnabled="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 233
    :goto_0
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    .line 234
    .local v0, response:Landroid/os/Message;
    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 235
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 236
    monitor-exit v2

    .line 237
    return-void

    .line 231
    .end local v0           #response:Landroid/os/Message;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error change facility fdn with exception "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/UiccCardApplication;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onQueryFacilityLock(Landroid/os/AsyncResult;)V
    .locals 6
    .parameter "ar"

    .prologue
    const/4 v3, 0x0

    .line 251
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 252
    :try_start_0
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in querying facility lock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 254
    monitor-exit v4

    .line 293
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v1, v0

    .line 258
    .local v1, ints:[I
    array-length v2, v1

    if-eqz v2, :cond_4

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Query facility lock : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v5, 0x0

    aget v5, v1, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 261
    const/4 v2, 0x0

    aget v2, v1, v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccLockEnabled:Z

    .line 263
    iget-boolean v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccLockEnabled:Z

    if-eqz v2, :cond_1

    .line 264
    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 273
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/UiccCardApplication$2;->$SwitchMap$com$android$internal$telephony$IccCardStatus$PinState:[I

    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/IccCardStatus$PinState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus$PinState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 292
    :cond_2
    :goto_2
    monitor-exit v4

    goto :goto_0

    .end local v1           #ints:[I
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #ints:[I
    :cond_3
    move v2, v3

    .line 261
    goto :goto_1

    .line 275
    :pswitch_0
    :try_start_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccLockEnabled:Z

    if-eqz v2, :cond_2

    .line 276
    const-string v2, "QUERY_FACILITY_LOCK:enabled GET_SIM_STATUS.Pin1:disabled. Fixme"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UiccCardApplication;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 284
    :pswitch_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccLockEnabled:Z

    if-nez v2, :cond_2

    .line 285
    const-string v2, "QUERY_FACILITY_LOCK:disabled GET_SIM_STATUS.Pin1:enabled. Fixme"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UiccCardApplication;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 290
    :cond_4
    const-string v2, "Bogus facility lock response"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UiccCardApplication;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private onQueryFdnEnabled(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    const/4 v3, 0x0

    .line 208
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 209
    :try_start_0
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in querying facility lock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 211
    monitor-exit v4

    .line 222
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v1, v0

    .line 215
    .local v1, ints:[I
    array-length v2, v1

    if-eqz v2, :cond_2

    .line 216
    const/4 v2, 0x0

    aget v2, v1, v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query facility lock : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 221
    :goto_2
    monitor-exit v4

    goto :goto_0

    .end local v1           #ints:[I
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #ints:[I
    :cond_1
    move v2, v3

    .line 216
    goto :goto_1

    .line 219
    :cond_2
    :try_start_1
    const-string v2, "Bogus facility lock response"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UiccCardApplication;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private queryFdn()V
    .locals 7

    .prologue
    .line 196
    const/4 v3, 0x7

    .line 199
    .local v3, serviceClassX:I
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "FD"

    const-string v2, ""

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 202
    return-void
.end method

.method private queryPin1State()V
    .locals 7

    .prologue
    .line 241
    const/4 v3, 0x7

    .line 244
    .local v3, serviceClassX:I
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "SC"

    const-string v2, ""

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 247
    return-void
.end method


# virtual methods
.method public changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    .line 685
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 686
    :try_start_0
    const-string v0, "changeIccFdnPassword"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 687
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v2, p3}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 689
    monitor-exit v1

    .line 690
    return-void

    .line 689
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    .line 665
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 666
    :try_start_0
    const-string v0, "changeIccLockPassword"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v2, p3}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 669
    monitor-exit v1

    .line 670
    return-void

    .line 669
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method dispose()V
    .locals 3

    .prologue
    .line 151
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 152
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " being Disposed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z

    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->dispose()V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccFileHandler;->dispose()V

    .line 156
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 158
    monitor-exit v1

    .line 159
    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 488
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 489
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 490
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIccFdnEnabled()Z
    .locals 2

    .prologue
    .line 592
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 593
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z

    monitor-exit v1

    return v0

    .line 594
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 2

    .prologue
    .line 503
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 504
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/IccFileHandler;

    monitor-exit v1

    return-object v0

    .line 505
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIccLockEnabled()Z
    .locals 1

    .prologue
    .line 573
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccLockEnabled:Z

    return v0
.end method

.method public getIccRecords()Lcom/android/internal/telephony/IccRecords;
    .locals 2

    .prologue
    .line 509
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 510
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    monitor-exit v1

    return-object v0

    .line 511
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPersoSubState()Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    .locals 2

    .prologue
    .line 482
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 483
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    monitor-exit v1

    return-object v0

    .line 484
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPin1State()Lcom/android/internal/telephony/IccCardStatus$PinState;
    .locals 2

    .prologue
    .line 494
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 495
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1Replaced:Z

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->getUniversalPinState()Lcom/android/internal/telephony/IccCardStatus$PinState;

    move-result-object v0

    monitor-exit v1

    .line 498
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/IccCardStatus$PinState;

    monitor-exit v1

    goto :goto_0

    .line 499
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getState()Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;
    .locals 2

    .prologue
    .line 470
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 471
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    monitor-exit v1

    return-object v0

    .line 472
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getType()Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;
    .locals 2

    .prologue
    .line 476
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 477
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    monitor-exit v1

    return-object v0

    .line 478
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 362
    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 363
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 364
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 365
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyPinLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V

    .line 366
    monitor-exit v2

    .line 367
    return-void

    .line 366
    .end local v0           #r:Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 379
    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 380
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 381
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 382
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyNetworkLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V

    .line 383
    monitor-exit v2

    .line 384
    return-void

    .line 383
    .end local v0           #r:Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 345
    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 346
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 347
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 348
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyReadyRegistrantsIfNeeded(Landroid/os/Registrant;)V

    .line 349
    monitor-exit v2

    .line 350
    return-void

    .line 349
    .end local v0           #r:Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 637
    iget-object v7, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 639
    const/16 v4, 0xf

    .line 644
    .local v4, serviceClassX:I
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDesiredFdnEnabled:Z

    .line 646
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "FD"

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 649
    monitor-exit v7

    .line 650
    return-void

    .line 649
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 610
    iget-object v7, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 612
    const/4 v4, 0x7

    .line 616
    .local v4, serviceClassX:I
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDesiredPinLocked:Z

    .line 618
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "SC"

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 621
    monitor-exit v7

    .line 622
    return-void

    .line 621
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "pin"
    .parameter "onComplete"

    .prologue
    .line 559
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 560
    :try_start_0
    const-string v0, "supplyNetworkDepersonalization"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 561
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V

    .line 562
    monitor-exit v1

    .line 563
    return-void

    .line 562
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "pin"
    .parameter "onComplete"

    .prologue
    .line 535
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 536
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 537
    monitor-exit v1

    .line 538
    return-void

    .line 537
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    .line 547
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 548
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V

    .line 549
    monitor-exit v1

    .line 550
    return-void

    .line 549
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "puk"
    .parameter "newPin"
    .parameter "onComplete"

    .prologue
    .line 541
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 542
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 543
    monitor-exit v1

    .line 544
    return-void

    .line 543
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "onComplete"

    .prologue
    .line 553
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 554
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 555
    monitor-exit v1

    .line 556
    return-void

    .line 555
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForLocked(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 370
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 371
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 372
    monitor-exit v1

    .line 373
    return-void

    .line 372
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForNetworkLocked(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 387
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 388
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 389
    monitor-exit v1

    .line 390
    return-void

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForReady(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 353
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 355
    monitor-exit v1

    .line 356
    return-void

    .line 355
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method update(Lcom/android/internal/telephony/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6
    .parameter "as"
    .parameter "c"
    .parameter "ci"

    .prologue
    .line 103
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 104
    :try_start_0
    iget-boolean v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z

    if-eqz v3, :cond_0

    .line 105
    const-string v3, "Application updated after destroyed! Fix me!"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/UiccCardApplication;->loge(Ljava/lang/String;)V

    .line 106
    monitor-exit v4

    .line 148
    :goto_0
    return-void

    .line 109
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " update. New "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 110
    iput-object p2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mContext:Landroid/content/Context;

    .line 111
    iput-object p3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 112
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    .line 113
    .local v1, oldAppType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    .line 114
    .local v0, oldAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;
    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .line 115
    .local v2, oldPersoSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    iget-object v3, p1, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    .line 116
    iget-object v3, p1, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    .line 117
    iget-object v3, p1, Lcom/android/internal/telephony/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .line 118
    iget-object v3, p1, Lcom/android/internal/telephony/IccCardApplicationStatus;->aid:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    .line 119
    iget-object v3, p1, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppLabel:Ljava/lang/String;

    .line 120
    iget v3, p1, Lcom/android/internal/telephony/IccCardApplicationStatus;->pin1_replaced:I

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1Replaced:Z

    .line 121
    iget-object v3, p1, Lcom/android/internal/telephony/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 122
    iget-object v3, p1, Lcom/android/internal/telephony/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/IccCardStatus$PinState;

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 124
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-eq v3, v1, :cond_3

    .line 125
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccFileHandler;->dispose()V

    .line 126
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccRecords;->dispose()V

    .line 127
    :cond_2
    iget-object v3, p1, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/UiccCardApplication;->createIccFileHandler(Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 128
    iget-object v3, p1, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    invoke-direct {p0, v3, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->createIccRecords(Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 131
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    if-eq v3, v2, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    sget-object v5, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    if-ne v3, v5, :cond_4

    .line 133
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/UiccCardApplication;->notifyNetworkLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V

    .line 136
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    if-eq v3, v0, :cond_6

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " changed state: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " -> "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 140
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    sget-object v5, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    if-ne v3, v5, :cond_5

    .line 141
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCardApplication;->queryFdn()V

    .line 142
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCardApplication;->queryPin1State()V

    .line 144
    :cond_5
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/UiccCardApplication;->notifyPinLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V

    .line 145
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/UiccCardApplication;->notifyReadyRegistrantsIfNeeded(Landroid/os/Registrant;)V

    .line 147
    :cond_6
    monitor-exit v4

    goto/16 :goto_0

    .end local v0           #oldAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;
    .end local v1           #oldAppType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;
    .end local v2           #oldPersoSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 120
    .restart local v0       #oldAppState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;
    .restart local v1       #oldAppType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;
    .restart local v2       #oldPersoSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_1
.end method
