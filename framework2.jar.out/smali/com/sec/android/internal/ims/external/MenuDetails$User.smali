.class public final Lcom/sec/android/internal/ims/external/MenuDetails$User;
.super Ljava/lang/Object;
.source "MenuDetails.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/internal/ims/external/MenuDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "User"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DATABASE_NAME_HIDDEN_MENU:Ljava/lang/String; = "HiddenMenuContent.db"

.field public static final DB_HIDDEN_MENU_DEL_URI:Landroid/net/Uri; = null

.field public static final DB_HIDDEN_MENU_TABLE_URI:Landroid/net/Uri; = null

.field public static final TABLE_NAME_HIDDEN_MENU:Ljava/lang/String; = "HiddenMenu"

.field public static final mAMRBundlingRate:Ljava/lang/String; = "mAMRBundlingRate"

.field public static final mAccessNwInfo:Ljava/lang/String; = "mAccessNwInfo"

.field public static final mAec:Ljava/lang/String; = "mAec"

.field public static final mAlwaysOn:Ljava/lang/String; = "mAlwaysOn"

.field public static final mAudioBitRate:Ljava/lang/String; = "mAudioBitRate"

.field public static final mAudioCodecMode:Ljava/lang/String; = "mAudioCodecMode"

.field public static final mAudioFirst:Ljava/lang/String; = "mAudioFirst"

.field public static final mAudioPort:Ljava/lang/String; = "mAudioPort"

.field public static final mAudioVideoTx:Ljava/lang/String; = "mAudioVideoTx"

.field public static final mAutoTest:Ljava/lang/String; = "mAutoTest"

.field public static final mBitRate:Ljava/lang/String; = "mBitRate"

.field public static final mCodecBandwidth:Ljava/lang/String; = "mCodecBandwidth"

.field public static final mCommercialPcscfIP:Ljava/lang/String; = "mCommercialPcscfIP"

.field public static final mConfigServerServiceId:Ljava/lang/String; = "mConfigServerServiceId"

.field public static final mConfigServerUrl:Ljava/lang/String; = "mConfigServerUrl"

.field public static final mCurrDispFormat:Ljava/lang/String; = "mCurrDispFormat"

.field public static final mCurrLatchedNw:Ljava/lang/String; = "mCurrLatchedNw"

.field public static final mDynamicBitRate:Ljava/lang/String; = "mDynamicBitRate"

.field public static final mEnableConfigServer:Ljava/lang/String; = "mEnableConfigServer"

.field public static final mEnableIMSOnRoamingVal:Ljava/lang/String; = "mEnableIMSOnRoamingVal"

.field public static final mEnableQos:Ljava/lang/String; = "mEnableQos"

.field public static final mFrameRate:Ljava/lang/String; = "mFrameRate"

.field public static final mJitterBufferSetting:Ljava/lang/String; = "mJitterBufferSetting"

.field public static final mLoopback:Ljava/lang/String; = "mLoopback"

.field public static final mNs:Ljava/lang/String; = "mNs"

.field public static final mPDN:Ljava/lang/String; = "mPDN"

.field public static final mPcscfType:Ljava/lang/String; = "mPcscfType"

.field public static final mPrefAudioCodec:Ljava/lang/String; = "mPrefAudioCodec"

.field public static final mPrefCscfDns:Ljava/lang/String; = "mPrefCscfDns"

.field public static final mPrefCscfDnsforWiFi:Ljava/lang/String; = "mPrefCscfDnsforWiFi"

.field public static final mPrefCscfDomain:Ljava/lang/String; = "mPrefCscfDomain"

.field public static final mPrefCscfIp:Ljava/lang/String; = "mPrefCscfIp"

.field public static final mPrefCscfIp2:Ljava/lang/String; = "mPrefCscfIp2"

.field public static final mPrefCscfIp3:Ljava/lang/String; = "mPrefCscfIp3"

.field public static final mPrefCscfIpCnt:Ljava/lang/String; = "mPrefCscfIpCnt"

.field public static final mPrefCscfPort:Ljava/lang/String; = "mPrefCscfPort"

.field public static final mPrefCscfPortforLTE:Ljava/lang/String; = "mPrefCscfPortforLTE"

.field public static final mPrefCscfPortforWiFi:Ljava/lang/String; = "mPrefCscfPortforWiFi"

.field public static final mPrefNwType:Ljava/lang/String; = "mPrefNwType"

.field public static final mPrefVideoCodec:Ljava/lang/String; = "mPrefVideoCodec"

.field public static final mPrefXdmDns:Ljava/lang/String; = "mPrefXdmDns"

.field public static final mPrefXdmIp:Ljava/lang/String; = "mPrefXdmIp"

.field public static final mPrefXdmIpforWiFi:Ljava/lang/String; = "mPrefXdmIpforWiFi"

.field public static final mPrivateUserIdentity:Ljava/lang/String; = "mPrivateUserIdentity"

.field public static final mPublicUserIdentity:Ljava/lang/String; = "mPublicUserIdentity"

.field public static final mPwd:Ljava/lang/String; = "mSKTPwd"

.field public static final mQosAware:Ljava/lang/String; = "mQosAware"

.field public static final mRealm:Ljava/lang/String; = "mSKTRealm"

.field public static final mRegisterTimer:Ljava/lang/String; = "mRegisterTimer"

.field public static final mReserved1:Ljava/lang/String; = "mReserved1"

.field public static final mReserved2:Ljava/lang/String; = "mReserved2"

.field public static final mReserved3:Ljava/lang/String; = "mReserved3"

.field public static final mReserved4:Ljava/lang/String; = "mReserved4"

.field public static final mReserved5:Ljava/lang/String; = "mReserved5"

.field public static final mReserved6:Ljava/lang/String; = "mReserved6"

.field public static final mReserved7:Ljava/lang/String; = "mReserved7"

.field public static final mReserved8:Ljava/lang/String; = "mReserved8"

.field public static final mSessionExpire:Ljava/lang/String; = "mSessionExpire"

.field public static final mSubscriberTimer:Ljava/lang/String; = "mSubscriberTimer"

.field public static final mTimer1:Ljava/lang/String; = "mTimer1"

.field public static final mTimer2:Ljava/lang/String; = "mTimer2"

.field public static final mTimer4:Ljava/lang/String; = "mTimer4"

.field public static final mTimerA:Ljava/lang/String; = "mTimerA"

.field public static final mTimerB:Ljava/lang/String; = "mTimerB"

.field public static final mTimerC:Ljava/lang/String; = "mTimerC"

.field public static final mTimerD:Ljava/lang/String; = "mTimerD"

.field public static final mTimerE:Ljava/lang/String; = "mTimerE"

.field public static final mTimerF:Ljava/lang/String; = "mTimerF"

.field public static final mTimerG:Ljava/lang/String; = "mTimerG"

.field public static final mTimerH:Ljava/lang/String; = "mTimerH"

.field public static final mTimerI:Ljava/lang/String; = "mTimerI"

.field public static final mTimerJ:Ljava/lang/String; = "mTimerJ"

.field public static final mTimerK:Ljava/lang/String; = "mTimerK"

.field public static final mUname:Ljava/lang/String; = "mSKTUname"

.field public static final mUserAgent:Ljava/lang/String; = "mUserAgent"

.field public static final mVTDebugging:Ljava/lang/String; = "mVTDebugging"

.field public static final mVad:Ljava/lang/String; = "mVad"

.field public static final mVideoPort:Ljava/lang/String; = "mVideoPort"

.field public static final mVideoProfile:Ljava/lang/String; = "mVideoProfile"

.field public static final mWiFiSetting:Ljava/lang/String; = "mWiFiSetting"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "content://com.example.MyContentProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/internal/ims/external/MenuDetails$User;->CONTENT_URI:Landroid/net/Uri;

    .line 45
    const-string v0, "content://com.example.MyContentProvider/HiddenMenu"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/internal/ims/external/MenuDetails$User;->DB_HIDDEN_MENU_TABLE_URI:Landroid/net/Uri;

    .line 47
    const-string v0, "content://com.example.MyContentProvider/HiddenMenu/0"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/internal/ims/external/MenuDetails$User;->DB_HIDDEN_MENU_DEL_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
