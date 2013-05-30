.class Lcom/sec/android/internal/ims/external/HiddenMenuContent$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "HiddenMenuContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/internal/ims/external/HiddenMenuContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 80
    const-string v0, "HiddenMenuContent.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 81
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 88
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, salesCode:Ljava/lang/String;
    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->access$002(Z)Z

    .line 90
    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->access$102(Z)Z

    .line 91
    const-string v1, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->access$202(Z)Z

    .line 93
    invoke-static {}, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    const-string v1, "Create table HiddenMenu( _id INTEGER PRIMARY KEY AUTOINCREMENT, mPrefCscfDns TEXT,mPrefCscfDnsforWiFi TEXT,mPrefCscfIp TEXT,mPrefCscfIp2 TEXT,mPrefCscfIp3 TEXT,mPrefCscfIpCnt TEXT,mPrefCscfDomain TEXT,mPrefCscfPort TEXT,mPrefCscfPortforLTE TEXT,mPrefCscfPortforWiFi TEXT,mPrefXdmDns TEXT,mPrefXdmIp TEXT,mPrefXdmIpforWiFi TEXT,mPrefAudioCodec TEXT,mPrefVideoCodec TEXT,mLoopback TEXT,mAlwaysOn TEXT,mEnableQos TEXT,mVideoProfile TEXT,mAudioFirst TEXT,mQosAware TEXT,mVTDebugging TEXT,mAutoTest TEXT,mPrefNwType TEXT,mCurrLatchedNw TEXT,mAccessNwInfo TEXT,mCurrDispFormat TEXT,mFrameRate TEXT,mBitRate TEXT,mDynamicBitRate TEXT,mAudioCodecMode TEXT,mPublicUserIdentity TEXT,mPrivateUserIdentity TEXT,mWiFiSetting TEXT,mRegisterTimer TEXT,mSubscriberTimer TEXT,mSessionExpire TEXT,mAudioPort TEXT,mVideoPort TEXT,mPDN TEXT,mPcscfType TEXT,mCommercialPcscfIP TEXT,mCodecBandwidth TEXT,mAec TEXT,mNs TEXT,mVad TEXT,mUserAgent TEXT,mAudioBitRate TEXT,mAMRBundlingRate TEXT,mAudioVideoTx TEXT,mJitterBufferSetting TEXT,mReserved1 TEXT,mReserved2 TEXT,mReserved3 TEXT,mReserved4 TEXT,mReserved5 TEXT,mReserved6 TEXT,mEnableIMSOnRoamingVal TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 230
    :goto_0
    return-void

    .line 157
    :cond_0
    const-string v1, "Create table HiddenMenu( _id INTEGER PRIMARY KEY AUTOINCREMENT, mPrefCscfDns TEXT,mPrefCscfDnsforWiFi TEXT,mPrefCscfIp TEXT,mPrefCscfDomain TEXT,mPrefCscfPort TEXT,mPrefCscfPortforLTE TEXT,mPrefCscfPortforWiFi TEXT,mPrefXdmDns TEXT,mPrefXdmIp TEXT,mPrefXdmIpforWiFi TEXT,mPrefAudioCodec TEXT,mPrefVideoCodec TEXT,mLoopback TEXT,mAlwaysOn TEXT,mEnableQos TEXT,mVideoProfile TEXT,mAudioFirst TEXT,mQosAware TEXT,mVTDebugging TEXT,mAutoTest TEXT,mPrefNwType TEXT,mCurrLatchedNw TEXT,mAccessNwInfo TEXT,mCurrDispFormat TEXT,mFrameRate TEXT,mBitRate TEXT,mDynamicBitRate TEXT,mAudioCodecMode TEXT,mPublicUserIdentity TEXT,mPrivateUserIdentity TEXT,mRegisterTimer TEXT,mSubscriberTimer TEXT,mSessionExpire TEXT,mAudioPort TEXT,mVideoPort TEXT,mPDN TEXT,mAMRBundlingRate TEXT,mAudioVideoTx TEXT,mAudioBitRate TEXT,mJitterBufferSetting TEXT,mConfigServerUrl TEXT,mEnableConfigServer TEXT,mConfigServerServiceId TEXT,mReserved1 TEXT,mReserved2 TEXT,mReserved3 TEXT,mReserved4 TEXT,mReserved5 TEXT,mReserved6 TEXT,mReserved7 TEXT,mReserved8 TEXT,mTimerA TEXT,mTimerB TEXT,mTimerC TEXT,mTimerD TEXT,mTimerE TEXT,mTimerF TEXT,mTimerG TEXT,mTimerH TEXT,mTimerI TEXT,mTimerJ TEXT,mTimerK TEXT,mTimer1 TEXT,mTimer2 TEXT,mTimer4 TEXT,mSKTPwd TEXT,mSKTRealm TEXT,mSKTUname TEXT,mEnableIMSOnRoamingVal TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 235
    const-string v0, "DROP TABLE IF EXISTS HiddenMenu"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0, p1}, Lcom/sec/android/internal/ims/external/HiddenMenuContent$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 238
    return-void
.end method
