.class public Lcom/android/OriginalSettings/deviceinfo/Status;
.super Lmiui/preference/BasePreferenceActivity;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/deviceinfo/Status$MyHandler;
    }
.end annotation


# static fields
.field private static final PHONE_RELATED_ENTRIES:[Ljava/lang/String;

.field private static buf:[B

.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private NAI_length:I

.field private isSysScopeStatus:I

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/preference/Preference;

.field private mBatteryStatus:Landroid/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mImsRegistered:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRes:Landroid/content/res/Resources;

.field private mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceMessenger:Landroid/os/Messenger;

.field private mSignalStrength:Landroid/preference/Preference;

.field private mSvcModeMessenger:Landroid/os/Messenger;

.field private mSysScope:Lcom/sec/android/app/sysscope/service/SysScope;

.field private mSysScopeReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUptime:Landroid/preference/Preference;

.field private mUserName:Landroid/preference/Preference;

.field private rilHandler:Landroid/os/Handler;

.field private sUnknown:Ljava/lang/String;

.field private user_name:Ljava/lang/String;

.field private zero_eight:Ljava/lang/String;

.field private zero_five:Ljava/lang/String;

.field private zero_four:Ljava/lang/String;

.field private zero_nine:Ljava/lang/String;

.field private zero_seven:Ljava/lang/String;

.field private zero_six:Ljava/lang/String;

.field private zero_three:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 145
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data_state"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "service_state"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "operator_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "roaming_state"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "user_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "network_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "imei"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "imei_sv"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "prl_version"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "eri_version"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "min_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "meid_number"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "signal_strength"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "icc_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "sid_number"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "nid_number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/OriginalSettings/deviceinfo/Status;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Lmiui/preference/BasePreferenceActivity;-><init>()V

    .line 134
    const-string v0, ""

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->user_name:Ljava/lang/String;

    .line 135
    const-string v0, "000"

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_three:Ljava/lang/String;

    .line 136
    const-string v0, "0000"

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_four:Ljava/lang/String;

    .line 137
    const-string v0, "00000"

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_five:Ljava/lang/String;

    .line 138
    const-string v0, "000000"

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_six:Ljava/lang/String;

    .line 139
    const-string v0, "0000000"

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_seven:Ljava/lang/String;

    .line 140
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_eight:Ljava/lang/String;

    .line 141
    const-string v0, "000000000"

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_nine:Ljava/lang/String;

    .line 143
    iput-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mServiceMessenger:Landroid/os/Messenger;

    .line 175
    iput-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 231
    new-instance v0, Lcom/android/OriginalSettings/deviceinfo/Status$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/deviceinfo/Status$1;-><init>(Lcom/android/OriginalSettings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 244
    new-instance v0, Lcom/android/OriginalSettings/deviceinfo/Status$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/deviceinfo/Status$2;-><init>(Lcom/android/OriginalSettings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    .line 258
    new-instance v0, Lcom/android/OriginalSettings/deviceinfo/Status$3;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/deviceinfo/Status$3;-><init>(Lcom/android/OriginalSettings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 331
    new-instance v0, Lcom/android/OriginalSettings/deviceinfo/Status$4;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/deviceinfo/Status$4;-><init>(Lcom/android/OriginalSettings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->rilHandler:Landroid/os/Handler;

    .line 368
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->rilHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mSvcModeMessenger:Landroid/os/Messenger;

    .line 888
    new-instance v0, Lcom/android/OriginalSettings/deviceinfo/Status$5;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/deviceinfo/Status$5;-><init>(Lcom/android/OriginalSettings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1165
    new-instance v0, Lcom/android/OriginalSettings/deviceinfo/Status$6;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/deviceinfo/Status$6;-><init>(Lcom/android/OriginalSettings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/deviceinfo/Status;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/deviceinfo/Status;Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/deviceinfo/Status;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/OriginalSettings/deviceinfo/Status;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1084(Lcom/android/OriginalSettings/deviceinfo/Status;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->user_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/OriginalSettings/deviceinfo/Status;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mImsRegistered:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/OriginalSettings/deviceinfo/Status;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mServiceMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/OriginalSettings/deviceinfo/Status;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->getOemData()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/deviceinfo/Status;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->changeSysScopeStatus()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/deviceinfo/Status;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->updateDataState()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/deviceinfo/Status;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$700()[B
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/android/OriginalSettings/deviceinfo/Status;->buf:[B

    return-object v0
.end method

.method static synthetic access$702([B)[B
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    sput-object p0, Lcom/android/OriginalSettings/deviceinfo/Status;->buf:[B

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/OriginalSettings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mUserName:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/OriginalSettings/deviceinfo/Status;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mUserName:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/OriginalSettings/deviceinfo/Status;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->NAI_length:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/OriginalSettings/deviceinfo/Status;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput p1, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->NAI_length:I

    return p1
.end method

.method private changeSysScopeStatus()V
    .locals 7

    .prologue
    const-wide/16 v3, 0x3e8

    const v6, 0x7f090123

    const/4 v5, -0x1

    .line 829
    const-string v0, "sysscope_status"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 831
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v3

    .line 832
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    div-long/2addr v0, v3

    .line 834
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    .line 835
    const-wide/16 v0, 0x1

    .line 838
    :cond_0
    iget-object v3, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mSysScope:Lcom/sec/android/app/sysscope/service/SysScope;

    invoke-virtual {v3}, Lcom/sec/android/app/sysscope/service/SysScope;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    const-wide/16 v3, 0x78

    cmp-long v0, v0, v3

    if-lez v0, :cond_1

    .line 839
    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 856
    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 857
    return-void

    .line 842
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mSysScope:Lcom/sec/android/app/sysscope/service/SysScope;

    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/service/SysScope;->getLastScanResult()Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->getResult()I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->isSysScopeStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    :goto_1
    iget v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->isSysScopeStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 848
    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 843
    :catch_0
    move-exception v0

    .line 844
    iput v5, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->isSysScopeStatus:I

    goto :goto_1

    .line 849
    :cond_2
    iget v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->isSysScopeStatus:I

    if-ne v0, v5, :cond_3

    .line 850
    const v0, 0x7f090124

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 852
    :cond_3
    const v0, 0x7f090122

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private connectToRilService()V
    .locals 3

    .prologue
    .line 1158
    const-string v0, "Status"

    const-string v1, "connect To Secphone service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1160
    const-string v1, "com.sec.phone"

    const-string v2, "com.sec.phone.SecPhoneService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1161
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/OriginalSettings/deviceinfo/Status;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1162
    return-void
.end method

.method private convert(J)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const-wide/16 v3, 0x3c

    .line 880
    rem-long v0, p1, v3

    long-to-int v0, v0

    .line 881
    div-long v1, p1, v3

    rem-long/2addr v1, v3

    long-to-int v1, v1

    .line 882
    const-wide/16 v2, 0xe10

    div-long v2, p1, v2

    long-to-int v2, v2

    .line 884
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private convertDeviceIdtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 3
    .parameter "devID"

    .prologue
    .line 931
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 932
    .local v0, len:I
    const/4 v1, 0x0

    .line 934
    .local v1, out:Ljava/lang/StringBuilder;
    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    .line 935
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/deviceinfo/Status;->convertHexaESNtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 939
    :cond_0
    :goto_0
    return-object v1

    .line 936
    :cond_1
    const/16 v2, 0xe

    if-ne v0, v2, :cond_0

    .line 937
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/deviceinfo/Status;->convertHexaMEIDtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_0
.end method

.method private convertHexaESNtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x2

    .line 949
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 950
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 951
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 952
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 960
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 984
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    .line 954
    :pswitch_0
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 957
    :pswitch_1
    const-string v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 963
    :pswitch_2
    const-string v0, "0"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 966
    :pswitch_3
    const-string v0, "00"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 969
    :pswitch_4
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_three:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 972
    :pswitch_5
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_four:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 975
    :pswitch_6
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_five:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 978
    :pswitch_7
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_six:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 981
    :pswitch_8
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_seven:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 952
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 961
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private convertHexaMEIDtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x10

    const/16 v2, 0x8

    .line 994
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 995
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 996
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 997
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1026
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 1050
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    .line 999
    :pswitch_0
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1002
    :pswitch_1
    const-string v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1005
    :pswitch_2
    iget-object v3, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_three:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1008
    :pswitch_3
    iget-object v3, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_four:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1011
    :pswitch_4
    iget-object v3, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_five:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1014
    :pswitch_5
    iget-object v3, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_six:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1017
    :pswitch_6
    iget-object v3, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_seven:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1020
    :pswitch_7
    iget-object v3, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_eight:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1023
    :pswitch_8
    iget-object v3, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_nine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1029
    :pswitch_9
    const-string v0, "0"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1032
    :pswitch_a
    const-string v0, "00"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1035
    :pswitch_b
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_three:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1038
    :pswitch_c
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_four:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1041
    :pswitch_d
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_five:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1044
    :pswitch_e
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_six:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1047
    :pswitch_f
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->zero_seven:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 997
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1027
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method private getOemData()V
    .locals 7

    .prologue
    .line 293
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 294
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 297
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x3

    .line 298
    .local v3, fileSize:I
    const/16 v4, 0x51

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 299
    const/16 v4, 0xe

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 300
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 301
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/OriginalSettings/deviceinfo/Status;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 306
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 307
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 312
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v2

    .line 309
    .local v2, e:Ljava/io/IOException;
    const-string v4, "Status"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 302
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 306
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 307
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 308
    :catch_2
    move-exception v2

    .line 309
    const-string v4, "Status"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 305
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 306
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 307
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 310
    :goto_1
    throw v4

    .line 308
    :catch_3
    move-exception v2

    .line 309
    .restart local v2       #e:Ljava/io/IOException;
    const-string v5, "Status"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 3
    .parameter "data"
    .parameter "response"

    .prologue
    .line 315
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 316
    .local v0, req:Landroid/os/Bundle;
    const-string v1, "request"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 318
    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 319
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mSvcModeMessenger:Landroid/os/Messenger;

    iput-object v1, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 328
    :goto_0
    return-void

    .line 325
    :cond_0
    const-string v1, "Status"

    const-string v2, "mServiceMessenger is null. Do nothing."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 326
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .parameter "n"

    .prologue
    .line 872
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 873
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 875
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 620
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 621
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 622
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 624
    :cond_0
    return-void
.end method

.method private setBtStatus()V
    .locals 3

    .prologue
    .line 808
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 809
    const-string v1, "bt_address"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 811
    if-nez v0, :cond_0

    .line 813
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 819
    :goto_0
    return-void

    .line 815
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 816
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_2
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 815
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 816
    :cond_2
    const v0, 0x7f0904a6

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private setIpAddressStatus()V
    .locals 3

    .prologue
    .line 798
    const-string v2, "wifi_ip_address"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 799
    .local v1, ipAddressPref:Landroid/preference/Preference;
    invoke-static {p0}, Lcom/android/OriginalSettings/Utils;->getDefaultIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 800
    .local v0, ipAddress:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 801
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 805
    :goto_0
    return-void

    .line 803
    :cond_0
    const v2, 0x7f0904a6

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setRssiNoti(I)V
    .locals 7
    .parameter "onOff"

    .prologue
    .line 267
    const-string v4, "Status"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setRssiNoti() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 269
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 272
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x5

    .line 273
    .local v3, fileSize:I
    const/16 v4, 0x18

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 274
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 275
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 276
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 281
    if-eqz v1, :cond_0

    .line 282
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 288
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 289
    return-void

    .line 283
    :catch_0
    move-exception v2

    .line 284
    .local v2, e:Ljava/io/IOException;
    const-string v4, "Status"

    const-string v5, "setRssiNoti : dos.close() error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 277
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 278
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 281
    if-eqz v1, :cond_0

    .line 282
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 283
    :catch_2
    move-exception v2

    .line 284
    const-string v4, "Status"

    const-string v5, "setRssiNoti : dos.close() error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 280
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 281
    if-eqz v1, :cond_1

    .line 282
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 285
    :cond_1
    :goto_1
    throw v4

    .line 283
    :catch_3
    move-exception v2

    .line 284
    .restart local v2       #e:Ljava/io/IOException;
    const-string v5, "Status"

    const-string v6, "setRssiNoti : dos.close() error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setSummary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "preference"
    .parameter "property"
    .parameter "alt"

    .prologue
    .line 633
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {p2, p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    :goto_0
    return-void

    .line 635
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "preference"
    .parameter "text"

    .prologue
    .line 641
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    iget-object p2, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    .line 645
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 646
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 648
    :cond_1
    return-void
.end method

.method private setSysScopeStatus()V
    .locals 2

    .prologue
    .line 823
    const-string v0, "sysscope_status"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 824
    const v1, 0x7f090124

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 825
    new-instance v0, Lcom/sec/android/app/sysscope/service/SysScope;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sysscope/service/SysScope;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mSysScope:Lcom/sec/android/app/sysscope/service/SysScope;

    .line 826
    return-void
.end method

.method private setWifiStatus()V
    .locals 5

    .prologue
    .line 788
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 789
    .local v3, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 791
    .local v1, wifiInfo:Landroid/net/wifi/WifiInfo;
    const-string v4, "wifi_mac_address"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 792
    .local v2, wifiMacAddressPref:Landroid/preference/Preference;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 793
    .local v0, macAddress:Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .end local v0           #macAddress:Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 795
    return-void

    .line 792
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 793
    .restart local v0       #macAddress:Ljava/lang/String;
    :cond_1
    const v4, 0x7f0904a6

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private setWimaxStatus()V
    .locals 8

    .prologue
    .line 772
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 773
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 775
    .local v2, ni:Landroid/net/NetworkInfo;
    if-nez v2, :cond_1

    .line 776
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 777
    .local v4, root:Landroid/preference/PreferenceScreen;
    const-string v6, "wimax_mac_address"

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 778
    .local v3, ps:Landroid/preference/Preference;
    if-eqz v3, :cond_0

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 785
    .end local v3           #ps:Landroid/preference/Preference;
    .end local v4           #root:Landroid/preference/PreferenceScreen;
    :cond_0
    :goto_0
    return-void

    .line 780
    :cond_1
    const-string v6, "wimax_mac_address"

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 781
    .local v5, wimaxMacAddressPref:Landroid/preference/Preference;
    const-string v6, "net.wimax.mac.address"

    const v7, 0x7f0904a6

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 783
    .local v1, macAddress:Ljava/lang/String;
    invoke-virtual {v5, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateDataState()V
    .locals 4

    .prologue
    .line 663
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    .line 664
    .local v1, state:I
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090056

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 666
    .local v0, display:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 681
    :goto_0
    const-string v2, "data_state"

    invoke-direct {p0, v2, v0}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    return-void

    .line 668
    :pswitch_0
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090054

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 669
    goto :goto_0

    .line 671
    :pswitch_1
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090055

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 672
    goto :goto_0

    .line 674
    :pswitch_2
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 675
    goto :goto_0

    .line 677
    :pswitch_3
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090052

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 666
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkType()V
    .locals 5

    .prologue
    .line 652
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isDomesticModel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 653
    const-string v2, "gsm.network.type"

    iget-object v3, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 654
    .local v0, networkType:Ljava/lang/String;
    const-string v2, "[:]"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 655
    .local v1, split:[Ljava/lang/String;
    const-string v2, "network_type"

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-direct {p0, v2, v3}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    .end local v0           #networkType:Ljava/lang/String;
    .end local v1           #split:[Ljava/lang/String;
    :goto_0
    return-void

    .line 658
    :cond_0
    const-string v2, "network_type"

    const-string v3, "gsm.network.type"

    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 7
    .parameter "serviceState"

    .prologue
    const v6, 0x7f09004e

    const v5, 0x7f09004d

    .line 685
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 686
    .local v1, state:I
    const-string v2, "Status"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "service state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090056

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 689
    .local v0, display:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 702
    :goto_0
    const-string v2, "service_state"

    invoke-direct {p0, v2, v0}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_UseChameleon"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 705
    const-string v2, "persist.sys.roaming_menu"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 706
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 707
    const-string v2, "roaming_state"

    iget-object v3, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    :cond_0
    :goto_1
    const-string v2, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    return-void

    .line 691
    :pswitch_0
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090048

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 692
    goto :goto_0

    .line 695
    :pswitch_1
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090049

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 696
    goto :goto_0

    .line 698
    :pswitch_2
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09004b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 709
    :cond_1
    const-string v2, "roaming_state"

    iget-object v3, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 714
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 715
    const-string v2, "roaming_state"

    iget-object v3, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 717
    :cond_3
    const-string v2, "roaming_state"

    iget-object v3, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 689
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 15
    .parameter "icicle"

    .prologue
    .line 372
    invoke-super/range {p0 .. p1}, Lmiui/preference/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 375
    new-instance v11, Lcom/android/OriginalSettings/deviceinfo/Status$MyHandler;

    invoke-direct {v11, p0}, Lcom/android/OriginalSettings/deviceinfo/Status$MyHandler;-><init>(Lcom/android/OriginalSettings/deviceinfo/Status;)V

    iput-object v11, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    .line 377
    const-string v11, "phone"

    invoke-virtual {p0, v11}, Lcom/android/OriginalSettings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    iput-object v11, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 379
    const v11, 0x7f070020

    invoke-virtual {p0, v11}, Lcom/android/OriginalSettings/deviceinfo/Status;->addPreferencesFromResource(I)V

    .line 380
    const-string v11, "battery_level"

    invoke-virtual {p0, v11}, Lcom/android/OriginalSettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;

    .line 381
    const-string v11, "battery_status"

    invoke-virtual {p0, v11}, Lcom/android/OriginalSettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;

    .line 383
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iput-object v11, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    .line 384
    iget-object v11, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    if-nez v11, :cond_0

    .line 385
    iget-object v11, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v12, 0x7f090037

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    .line 388
    :cond_0
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/android/OriginalSettings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    .line 389
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    iput-object v11, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 391
    const-string v11, "signal_strength"

    invoke-virtual {p0, v11}, Lcom/android/OriginalSettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    .line 392
    const-string v11, "up_time"

    invoke-virtual {p0, v11}, Lcom/android/OriginalSettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    .line 394
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/OriginalSettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 395
    sget-object v1, Lcom/android/OriginalSettings/deviceinfo/Status;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_7

    aget-object v5, v1, v4

    .line 396
    .local v5, key:Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 395
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 401
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #key:Ljava/lang/String;
    .end local v6           #len$:I
    :cond_1
    iget-object v11, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "CDMA"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 402
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Setting_EnableDeviceInfo4Vzw"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 404
    const-string v11, "ril.eri_ver_1"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, ERI_SysProp:Ljava/lang/String;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x2

    if-le v11, v12, :cond_d

    .line 406
    const-string v11, "eri_version"

    const/4 v12, 0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v11, v12}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    .end local v0           #ERI_SysProp:Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Setting_EnableConversion4MEIDAndESN"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 415
    iget-object v11, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 416
    .local v2, devId:Ljava/lang/String;
    const-string v11, "Status"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "KEY_MEID_NUMBER() : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    if-eqz v2, :cond_f

    .line 418
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 419
    .local v7, meid:Ljava/lang/StringBuilder;
    const-string v11, "Dec:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/deviceinfo/Status;->convertDeviceIdtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\nHex:0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    const-string v11, "meid_number"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v11, v12}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v11, "Status"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "KEY_MEID_NUMBER() : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    .end local v2           #devId:Ljava/lang/String;
    .end local v7           #meid:Ljava/lang/StringBuilder;
    :goto_2
    const-string v11, "VZW"

    sget-object v12, Lcom/android/OriginalSettings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 432
    const-string v11, "meid_number"

    invoke-direct {p0, v11}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 435
    :cond_2
    iget-object v11, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v11, :cond_11

    .line 436
    const-string v11, "min_number"

    iget-object v12, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v11, v12}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :goto_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c0016

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 441
    const-string v11, "min_number"

    invoke-virtual {p0, v11}, Lcom/android/OriginalSettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    const v12, 0x7f090498

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setTitle(I)V

    .line 443
    :cond_3
    const-string v11, "prl_version"

    iget-object v12, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v11, v12}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-string v11, "VZW"

    sget-object v12, Lcom/android/OriginalSettings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 446
    const-string v11, "imei_sv"

    invoke-direct {p0, v11}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 449
    :cond_4
    iget-object v11, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_14

    .line 451
    const-string v11, "icc_id"

    iget-object v12, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v11, v12}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v11, "USC"

    sget-object v12, Lcom/android/OriginalSettings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 454
    iget-object v11, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0xd

    if-le v11, v12, :cond_12

    .line 455
    const-string v11, "imei"

    iget-object v12, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/16 v14, 0xe

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v11, v12}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    :goto_4
    const-string v11, "SPR"

    sget-object v12, Lcom/android/OriginalSettings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 471
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->connectToRilService()V

    .line 499
    :goto_5
    iget-object v11, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v8

    .line 500
    .local v8, rawNumber:Ljava/lang/String;
    const/4 v3, 0x0

    .line 501
    .local v3, formattedNumber:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 502
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isDomesticModel()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 503
    const-string v11, "\\+82"

    const-string v12, "0"

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 504
    :cond_5
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 507
    :cond_6
    const-string v11, "number"

    invoke-direct {p0, v11, v3}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    new-instance v11, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v12, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    invoke-direct {v11, p0, v12}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v11, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 510
    iget-object v11, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v12, 0xc8

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    .line 511
    iget-object v11, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v12, 0x12c

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 514
    .end local v3           #formattedNumber:Ljava/lang/String;
    .end local v8           #rawNumber:Ljava/lang/String;
    :cond_7
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->setWimaxStatus()V

    .line 515
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->setWifiStatus()V

    .line 516
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->setBtStatus()V

    .line 517
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->setIpAddressStatus()V

    .line 520
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSysScopeStatus()V

    .line 523
    const-string v11, "ril.serialnumber"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_18

    const-string v9, "ro.serialno"

    .line 524
    .local v9, serial:Ljava/lang/String;
    :goto_6
    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 525
    .local v10, serialNum:Ljava/lang/String;
    const-string v11, "Status"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "serial:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const-string v11, "Status"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "serialNum:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_19

    .line 530
    const-string v11, "serial_number"

    invoke-direct {p0, v11, v10}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    :goto_7
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isDomesticModel()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 537
    const-string v11, "signal_strength"

    invoke-direct {p0, v11}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 538
    const-string v11, "imei_sv"

    invoke-direct {p0, v11}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 539
    const-string v11, "wifi_ip_address"

    invoke-direct {p0, v11}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 540
    const-string v11, "serial_number"

    invoke-direct {p0, v11}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 542
    const-string v11, "eri_version"

    invoke-direct {p0, v11}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 543
    const-string v11, "meid_number"

    invoke-direct {p0, v11}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 544
    const-string v11, "min_number"

    invoke-direct {p0, v11}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 545
    const-string v11, "icc_id"

    invoke-direct {p0, v11}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 546
    const-string v11, "prl_version"

    invoke-direct {p0, v11}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 548
    :cond_8
    const-string v11, "VZW"

    sget-object v12, Lcom/android/OriginalSettings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "SPR"

    sget-object v12, Lcom/android/OriginalSettings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "USC"

    sget-object v12, Lcom/android/OriginalSettings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 549
    :cond_9
    const-string v11, "serial_number"

    invoke-direct {p0, v11}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 551
    :cond_a
    const-string v11, "DCM"

    sget-object v12, Lcom/android/OriginalSettings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 552
    const-string v11, "signal_strength"

    invoke-direct {p0, v11}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 553
    const-string v11, "eri_version"

    invoke-direct {p0, v11}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 554
    const-string v11, "imei_sv"

    invoke-direct {p0, v11}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 556
    :cond_b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Common_UseChameleon"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 557
    const-string v11, "persist.sys.roaming_menu"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_c

    .line 558
    const-string v11, "roaming_state"

    invoke-direct {p0, v11}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 563
    :cond_c
    return-void

    .line 408
    .end local v9           #serial:Ljava/lang/String;
    .end local v10           #serialNum:Ljava/lang/String;
    .restart local v0       #ERI_SysProp:Ljava/lang/String;
    :cond_d
    const-string v11, "eri_version"

    const-string v12, "ERI : <unknown>"

    invoke-direct {p0, v11, v12}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 411
    .end local v0           #ERI_SysProp:Ljava/lang/String;
    :cond_e
    const-string v11, "eri_version"

    invoke-direct {p0, v11}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 425
    .restart local v2       #devId:Ljava/lang/String;
    :cond_f
    const-string v11, "meid_number"

    const-string v12, "Unknown"

    invoke-direct {p0, v11, v12}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 428
    .end local v2           #devId:Ljava/lang/String;
    :cond_10
    const-string v11, "meid_number"

    iget-object v12, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v11, v12}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 438
    :cond_11
    const-string v11, "min_number"

    const-string v12, "Unknown"

    invoke-direct {p0, v11, v12}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 457
    :cond_12
    const-string v11, "imei"

    iget-object v12, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v11, v12}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 460
    :cond_13
    const-string v11, "imei"

    iget-object v12, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v11, v12}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 466
    :cond_14
    const-string v11, "imei"

    invoke-direct {p0, v11}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 467
    const-string v11, "icc_id"

    invoke-direct {p0, v11}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 473
    :cond_15
    const-string v11, "user_name"

    invoke-direct {p0, v11}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 477
    :cond_16
    const-string v11, "LGT"

    sget-object v12, Lcom/android/OriginalSettings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 478
    const-string v11, "imei"

    iget-object v12, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v11, v12}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    :goto_8
    const-string v12, "imei_sv"

    const-string v11, "phone"

    invoke-virtual {p0, v11}, Lcom/android/OriginalSettings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v12, v11}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const-string v11, "prl_version"

    invoke-direct {p0, v11}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 491
    const-string v11, "meid_number"

    invoke-direct {p0, v11}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 492
    const-string v11, "min_number"

    invoke-direct {p0, v11}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 493
    const-string v11, "icc_id"

    invoke-direct {p0, v11}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 494
    const-string v11, "sid_number"

    invoke-direct {p0, v11}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 495
    const-string v11, "nid_number"

    invoke-direct {p0, v11}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 496
    const-string v11, "user_name"

    invoke-direct {p0, v11}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 481
    :cond_17
    const-string v11, "imei"

    iget-object v12, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v11, v12}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 523
    :cond_18
    const-string v9, "ril.serialnumber"

    goto/16 :goto_6

    .line 532
    .restart local v9       #serial:Ljava/lang/String;
    .restart local v10       #serialNum:Ljava/lang/String;
    :cond_19
    const-string v11, "serial_number"

    invoke-direct {p0, v11}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_7
.end method

.method public onNavigateUp()Z
    .locals 1

    .prologue
    .line 1179
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->finish()V

    .line 1180
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 596
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->onPause()V

    .line 598
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 600
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/deviceinfo/Status;->setRssiNoti(I)V

    .line 601
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 602
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 610
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 612
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 613
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 567
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->onResume()V

    .line 569
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 571
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/deviceinfo/Status;->setRssiNoti(I)V

    .line 572
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 574
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->updateSignalStrength()V

    .line 575
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/deviceinfo/Status;->updateServiceState(Landroid/telephony/ServiceState;)V

    .line 576
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->updateDataState()V

    .line 578
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 583
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sec.intent.action.SYSSCOPESTATUS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 584
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->changeSysScopeStatus()V

    .line 591
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 592
    return-void
.end method

.method updateSignalStrength()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 729
    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    if-eqz v4, :cond_0

    .line 731
    iget-boolean v4, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mImsRegistered:Z

    if-eqz v4, :cond_1

    .line 732
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->updateSignalStrengthToZeroWhenIMSRegistered()V

    .line 758
    :cond_0
    :goto_0
    return-void

    .line 736
    :cond_1
    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 738
    .local v3, state:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 740
    .local v0, r:Landroid/content/res/Resources;
    const/4 v4, 0x1

    if-eq v4, v3, :cond_2

    const/4 v4, 0x3

    if-ne v4, v3, :cond_3

    .line 742
    :cond_2
    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 745
    :cond_3
    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthDbm()I

    move-result v2

    .line 747
    .local v2, signalDbm:I
    if-ne v6, v2, :cond_4

    const/4 v2, 0x0

    .line 749
    :cond_4
    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthLevelAsu()I

    move-result v1

    .line 751
    .local v1, signalAsu:I
    if-ne v6, v1, :cond_5

    const/4 v1, 0x0

    .line 753
    :cond_5
    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090059

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f09005a

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method updateSignalStrengthToZeroWhenIMSRegistered()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 762
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 763
    .local v0, r:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 764
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f090059

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f09005a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 769
    :cond_0
    return-void
.end method

.method updateTimes()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 861
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    div-long v0, v4, v6

    .line 862
    .local v0, at:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v6

    .line 864
    .local v2, ut:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 865
    const-wide/16 v2, 0x1

    .line 868
    :cond_0
    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/android/OriginalSettings/deviceinfo/Status;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 869
    return-void
.end method
