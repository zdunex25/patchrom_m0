.class public Lcom/android/OriginalSettings/nearby/NearbySettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "NearbySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/nearby/NearbySettings$HandleRejectDevice;,
        Lcom/android/OriginalSettings/nearby/NearbySettings$HandleAcceptDevice;,
        Lcom/android/OriginalSettings/nearby/NearbySettings$HandleAllowUpload;,
        Lcom/android/OriginalSettings/nearby/NearbySettings$HandleShareContentType;,
        Lcom/android/OriginalSettings/nearby/NearbySettings$HandleServerName;,
        Lcom/android/OriginalSettings/nearby/NearbySettings$HandleServerStart;,
        Lcom/android/OriginalSettings/nearby/NearbySettings$HandleSetUploadPath;
    }
.end annotation


# static fields
.field protected static final PROJECTION_CONTACT:[Ljava/lang/String;

.field protected static mStorageManager:Landroid/os/storage/StorageManager;

.field protected static mStorageVolumes:[Landroid/os/storage/StorageVolume;


# instance fields
.field private final SHARE_VALUE_MUSIC:Ljava/lang/String;

.field private final SHARE_VALUE_PHOTOS:Ljava/lang/String;

.field private final SHARE_VALUE_VIDEOS:Ljava/lang/String;

.field private bAutoStart:Z

.field private bDBCanceled:Z

.field private bDBUpdated:Z

.field private bFunctionState:Z

.field private bInitPreference:Z

.field private bRegisterReceiver:Z

.field private bSelfFinish:Z

.field private bWifiPopupShown:Z

.field private dialogTime:J

.field private mAcceptDevice:Lcom/android/OriginalSettings/nearby/AcceptListPreference;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConn:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mDeviceName:Landroid/preference/EditTextPreference;

.field private mDeviceNameWatcher:Lcom/android/OriginalSettings/nearby/EditTextWatcher;

.field private mDownloadFrom:Landroid/preference/ListPreference;

.field private mDownloadTo:Lcom/android/OriginalSettings/nearby/DownloadListPreference;

.field private mFunctionOnoff:Landroid/preference/CheckBoxPreference;

.field private mHandler:Landroid/os/Handler;

.field private mIMediaServer:Lcom/android/OriginalSettings/nearby/IMediaServer;

.field private mPreferenceChangeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/preference/Preference$OnPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceChangeThread:Landroid/os/HandlerThread;

.field private mPreferenceChangeWorker:Landroid/os/Handler;

.field private mRejectDevice:Lcom/android/OriginalSettings/nearby/RejectListPreference;

.field private mSharedContents:Landroid/preference/MultiSelectListPreference;

.field private mSharedContentsValue:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mToast:Landroid/widget/Toast;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 207
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "display_name_alt"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sort_key_alt"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "link"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "is_user_profile"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->PROJECTION_CONTACT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 101
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mSharedContentsValue:Ljava/util/HashSet;

    .line 110
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->SHARE_VALUE_VIDEOS:Ljava/lang/String;

    .line 112
    const-string v0, "1"

    iput-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->SHARE_VALUE_PHOTOS:Ljava/lang/String;

    .line 114
    const-string v0, "2"

    iput-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->SHARE_VALUE_MUSIC:Ljava/lang/String;

    .line 156
    iput-boolean v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bRegisterReceiver:Z

    .line 158
    iput-boolean v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bWifiPopupShown:Z

    .line 160
    iput-boolean v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bFunctionState:Z

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bInitPreference:Z

    .line 164
    iput-boolean v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bSelfFinish:Z

    .line 167
    iput-boolean v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bDBUpdated:Z

    .line 169
    iput-boolean v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bAutoStart:Z

    .line 171
    iput-boolean v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bDBCanceled:Z

    .line 173
    iput-object v2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    .line 175
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->dialogTime:J

    .line 178
    iput-object v2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    .line 180
    iput-object v2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mPreferenceChangeWorker:Landroid/os/Handler;

    .line 203
    iput-object v2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mToast:Landroid/widget/Toast;

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    .line 228
    iput-object v2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mIMediaServer:Lcom/android/OriginalSettings/nearby/IMediaServer;

    .line 230
    new-instance v0, Lcom/android/OriginalSettings/nearby/NearbySettings$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/nearby/NearbySettings$1;-><init>(Lcom/android/OriginalSettings/nearby/NearbySettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mConn:Landroid/content/ServiceConnection;

    .line 897
    new-instance v0, Lcom/android/OriginalSettings/nearby/NearbySettings$10;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/nearby/NearbySettings$10;-><init>(Lcom/android/OriginalSettings/nearby/NearbySettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1157
    new-instance v0, Lcom/android/OriginalSettings/nearby/NearbySettings$11;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/nearby/NearbySettings$11;-><init>(Lcom/android/OriginalSettings/nearby/NearbySettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mHandler:Landroid/os/Handler;

    .line 1761
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/nearby/NearbySettings;)Lcom/android/OriginalSettings/nearby/IMediaServer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mIMediaServer:Lcom/android/OriginalSettings/nearby/IMediaServer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/OriginalSettings/nearby/NearbySettings;Lcom/android/OriginalSettings/nearby/IMediaServer;)Lcom/android/OriginalSettings/nearby/IMediaServer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mIMediaServer:Lcom/android/OriginalSettings/nearby/IMediaServer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/nearby/NearbySettings;Landroid/preference/PreferenceGroup;Ljava/util/Map;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/nearby/NearbySettings;->registerPreferenceChangeListener(Landroid/preference/PreferenceGroup;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/OriginalSettings/nearby/NearbySettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bAutoStart:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/OriginalSettings/nearby/NearbySettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bAutoStart:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/OriginalSettings/nearby/NearbySettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bDBCanceled:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/OriginalSettings/nearby/NearbySettings;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/nearby/NearbySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/OriginalSettings/nearby/NearbySettings;Landroid/preference/Preference;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/nearby/NearbySettings;->refreshPreference(Landroid/preference/Preference;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/OriginalSettings/nearby/NearbySettings;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/OriginalSettings/nearby/NearbySettings;)Lcom/android/OriginalSettings/nearby/DownloadListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDownloadTo:Lcom/android/OriginalSettings/nearby/DownloadListPreference;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/OriginalSettings/nearby/NearbySettings;)Lcom/android/OriginalSettings/nearby/AcceptListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/OriginalSettings/nearby/AcceptListPreference;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/OriginalSettings/nearby/NearbySettings;)Lcom/android/OriginalSettings/nearby/RejectListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mRejectDevice:Lcom/android/OriginalSettings/nearby/RejectListPreference;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/OriginalSettings/nearby/NearbySettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bFunctionState:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/OriginalSettings/nearby/NearbySettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bFunctionState:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/android/OriginalSettings/nearby/NearbySettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bDBUpdated:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/nearby/NearbySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->refreshPreferenceValues()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/OriginalSettings/nearby/NearbySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->requestWelcomePopup()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/OriginalSettings/nearby/NearbySettings;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->dialogTime:J

    return-wide v0
.end method

.method static synthetic access$2102(Lcom/android/OriginalSettings/nearby/NearbySettings;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->dialogTime:J

    return-wide p1
.end method

.method static synthetic access$2200(Lcom/android/OriginalSettings/nearby/NearbySettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/OriginalSettings/nearby/NearbySettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bSelfFinish:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/OriginalSettings/nearby/NearbySettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/nearby/NearbySettings;->checkDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/nearby/NearbySettings;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/OriginalSettings/nearby/NearbySettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bWifiPopupShown:Z

    return p1
.end method

.method private checkDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 1114
    .line 1117
    :try_start_0
    const-string v0, "[Mobile]"

    .line 1138
    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1154
    :goto_0
    return-object v0

    .line 1143
    :cond_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1146
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f090b45

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/nearby/NearbySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1149
    :catch_0
    move-exception v0

    .line 1150
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: checkDeviceName(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, p1

    goto :goto_0
.end method

.method private initChangePreferenceHandler()V
    .locals 5

    .prologue
    .line 361
    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: initChangePreferenceHandler"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :try_start_0
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_onoff"

    new-instance v3, Lcom/android/OriginalSettings/nearby/NearbySettings$HandleServerStart;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/OriginalSettings/nearby/NearbySettings$HandleServerStart;-><init>(Lcom/android/OriginalSettings/nearby/NearbySettings;Lcom/android/OriginalSettings/nearby/NearbySettings$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_shared_contents"

    new-instance v3, Lcom/android/OriginalSettings/nearby/NearbySettings$HandleShareContentType;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/OriginalSettings/nearby/NearbySettings$HandleShareContentType;-><init>(Lcom/android/OriginalSettings/nearby/NearbySettings;Lcom/android/OriginalSettings/nearby/NearbySettings$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_device_name"

    new-instance v3, Lcom/android/OriginalSettings/nearby/NearbySettings$HandleServerName;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/OriginalSettings/nearby/NearbySettings$HandleServerName;-><init>(Lcom/android/OriginalSettings/nearby/NearbySettings;Lcom/android/OriginalSettings/nearby/NearbySettings$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_download_from"

    new-instance v3, Lcom/android/OriginalSettings/nearby/NearbySettings$HandleAllowUpload;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/nearby/NearbySettings$HandleAllowUpload;-><init>(Lcom/android/OriginalSettings/nearby/NearbySettings;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_download_to"

    new-instance v3, Lcom/android/OriginalSettings/nearby/NearbySettings$HandleSetUploadPath;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/OriginalSettings/nearby/NearbySettings$HandleSetUploadPath;-><init>(Lcom/android/OriginalSettings/nearby/NearbySettings;Lcom/android/OriginalSettings/nearby/NearbySettings$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_accept_device"

    new-instance v3, Lcom/android/OriginalSettings/nearby/NearbySettings$HandleAcceptDevice;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/nearby/NearbySettings$HandleAcceptDevice;-><init>(Lcom/android/OriginalSettings/nearby/NearbySettings;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_reject_device"

    new-instance v3, Lcom/android/OriginalSettings/nearby/NearbySettings$HandleRejectDevice;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/nearby/NearbySettings$HandleRejectDevice;-><init>(Lcom/android/OriginalSettings/nearby/NearbySettings;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :goto_0
    return-void

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: initChangePreferenceHandler() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initPreferences()V
    .locals 4

    .prologue
    .line 627
    const-string v0, "AllshareSetting"

    const-string v1, "AllshareSetting: initPreferences()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :try_start_0
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/nearby/NearbySettings;->checkDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 632
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDownloadTo:Lcom/android/OriginalSettings/nearby/DownloadListPreference;

    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDownloadTo:Lcom/android/OriginalSettings/nearby/DownloadListPreference;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 633
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    :goto_0
    return-void

    .line 637
    :catch_0
    move-exception v0

    .line 638
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: initPreferences() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private refreshPreference(Landroid/preference/Preference;)V
    .locals 2
    .parameter "preference"

    .prologue
    .line 834
    if-nez p1, :cond_0

    .line 841
    :goto_0
    return-void

    .line 837
    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    .line 839
    .local v0, value:Z
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 840
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 839
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private refreshPreferenceValues()V
    .locals 4

    .prologue
    .line 661
    :try_start_0
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mSharedContents:Landroid/preference/MultiSelectListPreference;

    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mSharedContentsValue:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Landroid/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 662
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/nearby/NearbySettings;->checkDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 663
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDownloadTo:Lcom/android/OriginalSettings/nearby/DownloadListPreference;

    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDownloadTo:Lcom/android/OriginalSettings/nearby/DownloadListPreference;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 664
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    :goto_0
    return-void

    .line 667
    :catch_0
    move-exception v0

    .line 668
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: refreshPreferenceValues() preference variable :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private registerPreferenceChangeListener(Landroid/preference/PreferenceGroup;Ljava/util/Map;)V
    .locals 15
    .parameter "preferenceGroup"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceGroup;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p2, currentPreference:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: registerPreferenceChangeListener"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    move-object/from16 v0, p1

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceGroup;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 275
    invoke-virtual/range {p1 .. p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v11

    .line 277
    .local v11, nCount:I
    const/4 v10, 0x0

    .local v10, index:I
    :goto_0
    if-ge v10, v11, :cond_b

    .line 278
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v12

    .line 280
    .local v12, preference:Landroid/preference/Preference;
    if-eqz v12, :cond_2

    .line 281
    invoke-virtual {v12, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 283
    invoke-virtual {v12}, Landroid/preference/Preference;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 285
    invoke-virtual {v12}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 288
    .local v14, value:Ljava/lang/Object;
    invoke-virtual {v12}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "allshare_onoff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v14, :cond_3

    .line 289
    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: Preference Init OFF"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/nearby/NearbySettings;->refreshPreference(Landroid/preference/Preference;)V

    .line 291
    const/4 v14, 0x0

    .line 349
    .end local v14           #value:Ljava/lang/Object;
    :cond_0
    :goto_1
    if-eqz v14, :cond_1

    .line 350
    invoke-virtual {p0, v12, v14}, Lcom/android/OriginalSettings/nearby/NearbySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 353
    :cond_1
    instance-of v1, v12, Landroid/preference/PreferenceGroup;

    if-eqz v1, :cond_2

    .line 354
    check-cast v12, Landroid/preference/PreferenceGroup;

    .end local v12           #preference:Landroid/preference/Preference;
    move-object/from16 v0, p2

    invoke-direct {p0, v12, v0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->registerPreferenceChangeListener(Landroid/preference/PreferenceGroup;Ljava/util/Map;)V

    .line 277
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 292
    .restart local v12       #preference:Landroid/preference/Preference;
    .restart local v14       #value:Ljava/lang/Object;
    :cond_3
    invoke-virtual {v12}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "allshare_onoff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v1, v14

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 296
    :try_start_0
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mIMediaServer:Lcom/android/OriginalSettings/nearby/IMediaServer;

    invoke-interface {v1}, Lcom/android/OriginalSettings/nearby/IMediaServer;->isServerStarted()Z

    move-result v1

    if-nez v1, :cond_4

    .line 297
    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: Function Init OFF"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 300
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/nearby/NearbySettings;->refreshPreference(Landroid/preference/Preference;)V

    .line 301
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .local v14, value:Ljava/lang/Boolean;
    goto :goto_1

    .line 303
    .local v14, value:Ljava/lang/Object;
    :cond_4
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mIMediaServer:Lcom/android/OriginalSettings/nearby/IMediaServer;

    invoke-interface {v3}, Lcom/android/OriginalSettings/nearby/IMediaServer;->isServerStarted()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 305
    :catch_0
    move-exception v8

    .line 306
    .local v8, e:Landroid/os/RemoteException;
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    .line 309
    .end local v8           #e:Landroid/os/RemoteException;
    :cond_5
    invoke-virtual {v12}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "allshare_device_name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    if-nez v14, :cond_9

    .line 311
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/OriginalSettings/nearby/NearbySettings;->PROJECTION_CONTACT:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 313
    .local v7, cursor:Landroid/database/Cursor;
    const-string v9, ""

    .line 315
    .local v9, friendlyName:Ljava/lang/String;
    :goto_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 316
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 317
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: friendlyName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 320
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 322
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 323
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: Set Default Device Name :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    sget-object v14, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 328
    .local v14, value:Ljava/lang/String;
    :goto_3
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_7

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 330
    :cond_7
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 326
    .local v14, value:Ljava/lang/Object;
    :cond_8
    const v1, 0x7f090b45

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/nearby/NearbySettings;->getString(I)Ljava/lang/String;

    move-result-object v14

    .local v14, value:Ljava/lang/String;
    goto :goto_3

    .line 331
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #friendlyName:Ljava/lang/String;
    .local v14, value:Ljava/lang/Object;
    :cond_9
    invoke-virtual {v12}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "allshare_shared_contents"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-nez v14, :cond_a

    .line 333
    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: Share Contents Init"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 335
    .local v13, temp:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v1, "0"

    invoke-virtual {v13, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 336
    const-string v1, "1"

    invoke-virtual {v13, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 337
    const-string v1, "2"

    invoke-virtual {v13, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 338
    move-object v14, v13

    .line 339
    .local v14, value:Ljava/util/HashSet;
    goto/16 :goto_1

    .end local v13           #temp:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v14, value:Ljava/lang/Object;
    :cond_a
    invoke-virtual {v12}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "allshare_download_to"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->isExternalStorageSdMounted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 342
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: Download path init to Device"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->isExternalStorageSdMounted()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const-string v14, "0"

    .line 346
    .local v14, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDownloadTo:Lcom/android/OriginalSettings/nearby/DownloadListPreference;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 358
    .end local v12           #preference:Landroid/preference/Preference;
    .end local v14           #value:Ljava/lang/String;
    :cond_b
    return-void
.end method

.method private requestDBUpdatedPopup()V
    .locals 4

    .prologue
    .line 741
    :try_start_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    .line 743
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f090b45

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/nearby/NearbySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 744
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f090b50

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/nearby/NearbySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 745
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f090b3c

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/nearby/NearbySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/android/OriginalSettings/nearby/NearbySettings$5;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/nearby/NearbySettings$5;-><init>(Lcom/android/OriginalSettings/nearby/NearbySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 759
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/OriginalSettings/nearby/NearbySettings$6;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/nearby/NearbySettings$6;-><init>(Lcom/android/OriginalSettings/nearby/NearbySettings;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 772
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 775
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 777
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->dialogTime:J

    .line 779
    iget-boolean v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bDBUpdated:Z

    if-eqz v0, :cond_0

    .line 780
    const-string v0, "AllshareSetting"

    const-string v1, "AllshareSetting: Auto start DMS!!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    :cond_0
    :goto_0
    return-void

    .line 782
    :catch_0
    move-exception v0

    .line 783
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: requestDBUpdatedPopup() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private requestWelcomePopup()V
    .locals 5

    .prologue
    .line 790
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 791
    const v1, 0x7f07000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 792
    const v0, 0x7f0b0375

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 795
    new-instance v2, Lcom/android/OriginalSettings/nearby/NearbySettings$7;

    invoke-direct {v2, p0, v0}, Lcom/android/OriginalSettings/nearby/NearbySettings$7;-><init>(Lcom/android/OriginalSettings/nearby/NearbySettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 803
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090b45

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/nearby/NearbySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090b3b

    new-instance v4, Lcom/android/OriginalSettings/nearby/NearbySettings$9;

    invoke-direct {v4, p0, v0}, Lcom/android/OriginalSettings/nearby/NearbySettings$9;-><init>(Lcom/android/OriginalSettings/nearby/NearbySettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/OriginalSettings/nearby/NearbySettings$8;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/nearby/NearbySettings$8;-><init>(Lcom/android/OriginalSettings/nearby/NearbySettings;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 831
    :goto_0
    return-void

    .line 827
    :catch_0
    move-exception v0

    .line 828
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: Exception on requestWelcomePopup"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private requestWifiSettingPopup()V
    .locals 4

    .prologue
    .line 705
    iget-boolean v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bWifiPopupShown:Z

    if-nez v0, :cond_0

    .line 706
    const-string v0, "AllshareSetting"

    const-string v1, "AllshareSetting: requestWifiSettingPopup()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bFunctionState:Z

    .line 710
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bWifiPopupShown:Z

    .line 711
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090b45

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/nearby/NearbySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090b3d

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/nearby/NearbySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090b3b

    new-instance v2, Lcom/android/OriginalSettings/nearby/NearbySettings$4;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/nearby/NearbySettings$4;-><init>(Lcom/android/OriginalSettings/nearby/NearbySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/OriginalSettings/nearby/NearbySettings$3;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/nearby/NearbySettings$3;-><init>(Lcom/android/OriginalSettings/nearby/NearbySettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    :cond_0
    :goto_0
    return-void

    .line 730
    :catch_0
    move-exception v0

    .line 731
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: requestWifiSettingPopup() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setBroadcastReceiver()V
    .locals 4

    .prologue
    .line 844
    const-string v0, "AllshareSetting"

    const-string v1, "AllshareSetting: setBroadcastReceiver()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :try_start_0
    iget-boolean v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bRegisterReceiver:Z

    if-nez v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 849
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "WIFI_P2P_CONNECTION_CHANGED_ACTION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 851
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 854
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.OriginalSettings.allshare.REFRESH"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 856
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.sec.android.nearby.mediaserver.REFRESH_DEVICE_LIST"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 859
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.OriginalSettings.allshare.UPDATE_LIST"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 861
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.OriginalSettings.allshare.SERVER_STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 865
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.settings.allshare.SERVER_DB_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 867
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.settings.allshare.ACTIVITY_START"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 870
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 871
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 872
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 873
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 874
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 875
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 876
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 878
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bRegisterReceiver:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    :cond_0
    :goto_0
    return-void

    .line 880
    :catch_0
    move-exception v0

    .line 881
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: Exception on setBroadcastReceiver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterBroadcastReceiver()V
    .locals 4

    .prologue
    .line 886
    const-string v0, "AllshareSetting"

    const-string v1, "AllshareSetting: unregisterBroadcastReceiver()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :try_start_0
    iget-boolean v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bRegisterReceiver:Z

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 890
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bRegisterReceiver:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    :cond_0
    :goto_0
    return-void

    .line 892
    :catch_0
    move-exception v0

    .line 893
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: Exception on unregisterBroadcastReceiver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public isExternalStorageSdMounted()Z
    .locals 5

    .prologue
    .line 645
    const/4 v0, 0x0

    .line 648
    :try_start_0
    sget-object v1, Lcom/android/OriginalSettings/nearby/NearbySettings;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v2, Lcom/android/OriginalSettings/nearby/NearbySettings;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 655
    :goto_0
    return v0

    .line 650
    :catch_0
    move-exception v1

    .line 651
    const-string v2, "AllshareSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AllshareSetting: isExternalStorageSdMounted() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 618
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: onActivityCreated(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    :goto_0
    return-void

    .line 621
    :catch_0
    move-exception v0

    .line 622
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: onActivityCreated():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 22
    .parameter "savedInstanceState"

    .prologue
    .line 380
    invoke-super/range {p0 .. p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 382
    const-string v17, "AllshareSetting"

    const-string v18, "AllshareSetting: onCreate"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v17

    const-string v18, "pref_allshare"

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 387
    const v17, 0x7f070009

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/nearby/NearbySettings;->addPreferencesFromResource(I)V

    .line 389
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f090b3e

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x37

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/OriginalSettings/nearby/NearbySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/nearby/NearbySettings;->mToast:Landroid/widget/Toast;

    .line 396
    :try_start_0
    const-string v17, "allshare_onoff"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 399
    const-string v17, "allshare_shared_contents"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/MultiSelectListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/nearby/NearbySettings;->mSharedContents:Landroid/preference/MultiSelectListPreference;

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mSharedContents:Landroid/preference/MultiSelectListPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0400c3

    invoke-virtual/range {v17 .. v18}, Landroid/preference/MultiSelectListPreference;->setWidgetLayoutResource(I)V

    .line 402
    const-string v17, "allshare_device_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/EditTextPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0400c3

    invoke-virtual/range {v17 .. v18}, Landroid/preference/EditTextPreference;->setWidgetLayoutResource(I)V

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    const v18, 0x7f090b42

    invoke-virtual/range {v17 .. v18}, Landroid/preference/EditTextPreference;->setPositiveButtonText(I)V

    .line 406
    new-instance v17, Lcom/android/OriginalSettings/nearby/EditTextWatcher;

    invoke-direct/range {v17 .. v17}, Lcom/android/OriginalSettings/nearby/EditTextWatcher;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDeviceNameWatcher:Lcom/android/OriginalSettings/nearby/EditTextWatcher;

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v10

    .line 409
    .local v10, edit:Landroid/widget/EditText;
    if-eqz v10, :cond_2

    .line 410
    const/16 v17, 0x4001

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 412
    invoke-virtual {v10}, Landroid/widget/EditText;->requestFocus()Z

    .line 413
    new-instance v17, Lcom/android/OriginalSettings/nearby/NearbySettings$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10}, Lcom/android/OriginalSettings/nearby/NearbySettings$2;-><init>(Lcom/android/OriginalSettings/nearby/NearbySettings;Landroid/widget/EditText;)V

    const-wide/16 v18, 0x64

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v10, v0, v1, v2}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDeviceNameWatcher:Lcom/android/OriginalSettings/nearby/EditTextWatcher;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v7

    .line 422
    .local v7, dialog:Landroid/app/Dialog;
    instance-of v0, v7, Landroid/app/AlertDialog;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 423
    const/16 v16, 0x0

    .line 424
    .local v16, spaceNum:I
    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v14

    .line 425
    .local v14, length:I
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 427
    .local v6, deviceName:Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v14, :cond_1

    .line 428
    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x20

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 429
    add-int/lit8 v16, v16, 0x1

    .line 427
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 433
    :cond_1
    check-cast v7, Landroid/app/AlertDialog;

    .end local v7           #dialog:Landroid/app/Dialog;
    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    .line 434
    .local v4, btn:Landroid/widget/Button;
    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/text/Editable;->length()I

    move-result v17

    if-lez v17, :cond_5

    move/from16 v0, v16

    if-eq v14, v0, :cond_5

    const/16 v17, 0x1

    :goto_1
    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 442
    .end local v4           #btn:Landroid/widget/Button;
    .end local v6           #deviceName:Ljava/lang/String;
    .end local v11           #i:I
    .end local v14           #length:I
    .end local v16           #spaceNum:I
    :cond_2
    const-string v17, "allshare_download_to"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/android/OriginalSettings/nearby/DownloadListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDownloadTo:Lcom/android/OriginalSettings/nearby/DownloadListPreference;

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDownloadTo:Lcom/android/OriginalSettings/nearby/DownloadListPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0400c3

    invoke-virtual/range {v17 .. v18}, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->setWidgetLayoutResource(I)V

    .line 445
    const-string v17, "allshare_download_from"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0400c3

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setWidgetLayoutResource(I)V

    .line 451
    const-string v17, "allshare_accept_device"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/android/OriginalSettings/nearby/AcceptListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/OriginalSettings/nearby/AcceptListPreference;

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/OriginalSettings/nearby/AcceptListPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0400c3

    invoke-virtual/range {v17 .. v18}, Lcom/android/OriginalSettings/nearby/AcceptListPreference;->setWidgetLayoutResource(I)V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/OriginalSettings/nearby/AcceptListPreference;

    move-object/from16 v17, v0

    const v18, 0x7f090b43

    invoke-virtual/range {v17 .. v18}, Lcom/android/OriginalSettings/nearby/AcceptListPreference;->setPositiveButtonText(I)V

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/OriginalSettings/nearby/AcceptListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/nearby/AcceptListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 456
    const-string v17, "allshare_reject_device"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/android/OriginalSettings/nearby/RejectListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/nearby/NearbySettings;->mRejectDevice:Lcom/android/OriginalSettings/nearby/RejectListPreference;

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mRejectDevice:Lcom/android/OriginalSettings/nearby/RejectListPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0400c3

    invoke-virtual/range {v17 .. v18}, Lcom/android/OriginalSettings/nearby/RejectListPreference;->setWidgetLayoutResource(I)V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mRejectDevice:Lcom/android/OriginalSettings/nearby/RejectListPreference;

    move-object/from16 v17, v0

    const v18, 0x7f090b43

    invoke-virtual/range {v17 .. v18}, Lcom/android/OriginalSettings/nearby/RejectListPreference;->setPositiveButtonText(I)V

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mRejectDevice:Lcom/android/OriginalSettings/nearby/RejectListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/nearby/RejectListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    .end local v10           #edit:Landroid/widget/EditText;
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->initChangePreferenceHandler()V

    .line 471
    :try_start_1
    new-instance v12, Landroid/content/Intent;

    const-string v17, "com.sec.android.nearby.MediaServer.START"

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 472
    .local v12, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mConn:Landroid/content/ServiceConnection;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v12, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 480
    .end local v12           #intent:Landroid/content/Intent;
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 484
    :try_start_2
    new-instance v17, Landroid/os/HandlerThread;

    const-string v18, "Preference Change Worker"

    invoke-direct/range {v17 .. v18}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/nearby/NearbySettings;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/HandlerThread;->start()V

    .line 486
    new-instance v17, Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/nearby/NearbySettings;->mPreferenceChangeWorker:Landroid/os/Handler;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 493
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->setBroadcastReceiver()V

    .line 497
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "storage"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/storage/StorageManager;

    sput-object v17, Lcom/android/OriginalSettings/nearby/NearbySettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 498
    sget-object v17, Lcom/android/OriginalSettings/nearby/NearbySettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v17

    sput-object v17, Lcom/android/OriginalSettings/nearby/NearbySettings;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDownloadTo:Lcom/android/OriginalSettings/nearby/DownloadListPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->isExternalStorageSdMounted()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/OriginalSettings/nearby/DownloadListPreference;->setIsExternalMounted(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 508
    :goto_5
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 509
    .local v3, activity:Landroid/app/Activity;
    instance-of v0, v3, Lmiui/preference/BasePreferenceActivity;

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 510
    move-object v0, v3

    check-cast v0, Lmiui/preference/BasePreferenceActivity;

    move-object v15, v0

    .line 511
    .local v15, preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    invoke-virtual {v15}, Lmiui/preference/BasePreferenceActivity;->onIsHidingHeaders()Z

    move-result v17

    if-nez v17, :cond_3

    invoke-virtual {v15}, Lmiui/preference/BasePreferenceActivity;->onIsMultiPane()Z

    move-result v17

    if-nez v17, :cond_4

    .line 512
    :cond_3
    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v17

    const v18, 0x7f090b45

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/nearby/NearbySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 520
    .end local v3           #activity:Landroid/app/Activity;
    .end local v15           #preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    :cond_4
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getFlags()I

    move-result v5

    .line 521
    .local v5, currentFlag:I
    new-instance v13, Landroid/content/Intent;

    const-string v17, "com.android.settings.allshare.ACTIVITY_START"

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 522
    .local v13, intentStart:Landroid/content/Intent;
    const-string v17, "FLAG"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 524
    return-void

    .line 434
    .end local v5           #currentFlag:I
    .end local v13           #intentStart:Landroid/content/Intent;
    .restart local v4       #btn:Landroid/widget/Button;
    .restart local v6       #deviceName:Ljava/lang/String;
    .restart local v10       #edit:Landroid/widget/EditText;
    .restart local v11       #i:I
    .restart local v14       #length:I
    .restart local v16       #spaceNum:I
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 461
    .end local v4           #btn:Landroid/widget/Button;
    .end local v6           #deviceName:Ljava/lang/String;
    .end local v10           #edit:Landroid/widget/EditText;
    .end local v11           #i:I
    .end local v14           #length:I
    .end local v16           #spaceNum:I
    :catch_0
    move-exception v8

    .line 462
    .local v8, e:Ljava/lang/Exception;
    const-string v17, "AllshareSetting"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "AllshareSetting: onCreate() :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 474
    .end local v8           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v9

    .line 475
    .local v9, e1:Ljava/lang/Exception;
    const-string v17, "AllshareSetting"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "AllshareSetting: onCreate() bind service:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 487
    .end local v9           #e1:Ljava/lang/Exception;
    :catch_2
    move-exception v8

    .line 488
    .restart local v8       #e:Ljava/lang/Exception;
    const-string v17, "AllshareSetting"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "AllshareSetting: onCreate() Thread :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 501
    .end local v8           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v8

    .line 502
    .restart local v8       #e:Ljava/lang/Exception;
    const-string v17, "AllshareSetting"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "AllshareSetting: onCreate() storage :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 515
    .end local v8           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v8

    .line 516
    .restart local v8       #e:Ljava/lang/Exception;
    const-string v17, "AllshareSetting"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "AllshareSetting: onCreate() Title :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 528
    const-string v2, "AllshareSetting"

    const-string v3, "AllshareSetting: onDestroy"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :try_start_0
    iget-object v2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 534
    iget-object v2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 535
    iget-object v2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 538
    :cond_0
    iget-boolean v2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bSelfFinish:Z

    if-nez v2, :cond_1

    .line 539
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.nearby.mediaserver.STOP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 540
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 544
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->unregisterBroadcastReceiver()V

    .line 547
    iget-object v2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 548
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onDestroy()V

    .line 555
    return-void

    .line 549
    :catch_0
    move-exception v0

    .line 550
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "AllshareSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AllshareSetting: onDestroy() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 600
    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: onPause()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.nearby.mediaserver.SET_NEARBY_FLAG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 603
    .local v0, intentFlag:Landroid/content/Intent;
    const-string v1, "FLAG"

    invoke-virtual {p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 604
    const-string v1, "SCREEN"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 605
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 607
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 608
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1259
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 1261
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AllshareSetting: Preference Changed: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    const-string v1, "allshare_onoff"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move-object v1, p2

    .line 1265
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 1266
    iget-boolean v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bFunctionState:Z

    if-ne v1, v6, :cond_0

    .line 1267
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AllshareSetting: Duplicated on/off message: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bFunctionState:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 1546
    :goto_0
    return v1

    .line 1270
    :cond_0
    iput-boolean v6, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bFunctionState:Z

    .line 1272
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/nearby/NearbySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 1273
    const-string v2, "wifip2p"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/nearby/NearbySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 1276
    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    if-eqz p2, :cond_8

    .line 1282
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1285
    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1287
    const/16 v7, 0xd

    invoke-virtual {v1, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v7

    move-object v1, p2

    .line 1291
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v3, :cond_a

    .line 1293
    if-eqz v2, :cond_4

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1297
    if-eqz v7, :cond_2

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1300
    const-string v1, "AllshareSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AllshareSetting: Wifi State : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", WifiDirect State : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1305
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1306
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1307
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->cancel()V

    .line 1309
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/nearby/NearbySettings;->refreshPreference(Landroid/preference/Preference;)V

    .line 1311
    invoke-direct {p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->requestWifiSettingPopup()V

    .line 1312
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    move v1, v4

    .line 1313
    goto/16 :goto_0

    .line 1314
    :cond_2
    if-nez v7, :cond_a

    .line 1315
    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: Wifi State : netInfoP2p is null >> check p2p state"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1318
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1319
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1320
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->cancel()V

    .line 1322
    :cond_3
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/nearby/NearbySettings;->refreshPreference(Landroid/preference/Preference;)V

    .line 1324
    invoke-direct {p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->requestWifiSettingPopup()V

    .line 1325
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    move v1, v4

    .line 1326
    goto/16 :goto_0

    .line 1330
    :cond_4
    if-nez v2, :cond_a

    .line 1331
    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: Wifi State : netInfoWifi is null >> check p2p state"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    if-eqz v7, :cond_6

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1335
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AllshareSetting:  WifiDirect State : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1338
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1339
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1340
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->cancel()V

    .line 1342
    :cond_5
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/nearby/NearbySettings;->refreshPreference(Landroid/preference/Preference;)V

    .line 1344
    invoke-direct {p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->requestWifiSettingPopup()V

    .line 1345
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    move v1, v4

    .line 1346
    goto/16 :goto_0

    .line 1349
    :cond_6
    if-nez v7, :cond_a

    .line 1350
    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: Wifi State : netInfoP2p is null >> check p2p state"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1353
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1354
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1355
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->cancel()V

    .line 1357
    :cond_7
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/nearby/NearbySettings;->refreshPreference(Landroid/preference/Preference;)V

    .line 1359
    invoke-direct {p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->requestWifiSettingPopup()V

    .line 1360
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    move v1, v4

    .line 1361
    goto/16 :goto_0

    .line 1368
    :cond_8
    const-string v5, "AllshareSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AllshareSetting: Check Wi-Fi State or Function state"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1371
    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: Set Enable Function"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_9
    move v1, v4

    .line 1374
    goto/16 :goto_0

    .line 1379
    :cond_a
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v3, :cond_b

    iget-boolean v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bAutoStart:Z

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bDBUpdated:Z

    if-nez v1, :cond_b

    if-ne v6, v3, :cond_b

    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mIMediaServer:Lcom/android/OriginalSettings/nearby/IMediaServer;

    invoke-interface {v1}, Lcom/android/OriginalSettings/nearby/IMediaServer;->isServerStarted()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1381
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bAutoStart:Z

    .line 1382
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "AutoDMS"

    iget-boolean v6, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bAutoStart:Z

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1384
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AllshareSetting: DB is NOT updated:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v6, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bDBUpdated:Z

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    invoke-direct {p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->requestDBUpdatedPopup()V

    .line 1386
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v4

    .line 1387
    goto/16 :goto_0

    .line 1390
    :catch_0
    move-exception v1

    .line 1391
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1396
    :cond_b
    :try_start_1
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    const-string v2, "pref_allshare"

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1398
    const-string v2, "allshare_welcome_popup"

    const/4 v6, 0x0

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1401
    const-string v2, "AllshareSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AllshareSetting: HandleServerStart :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    iget-object v2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mIMediaServer:Lcom/android/OriginalSettings/nearby/IMediaServer;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mIMediaServer:Lcom/android/OriginalSettings/nearby/IMediaServer;

    invoke-interface {v2}, Lcom/android/OriginalSettings/nearby/IMediaServer;->isServerStarted()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1403
    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: Don\'t display the welcome popup"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1465
    :cond_c
    :goto_1
    iget-boolean v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bDBCanceled:Z

    if-eqz v1, :cond_f

    .line 1466
    iput-boolean v4, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bDBCanceled:Z

    .line 1527
    :cond_d
    :goto_2
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 1530
    if-eqz v1, :cond_15

    .line 1531
    :try_start_2
    iget-object v2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mPreferenceChangeWorker:Landroid/os/Handler;

    new-instance v5, Lcom/android/OriginalSettings/nearby/NearbySettings$12;

    invoke-direct {v5, p0, v1, p1, p2}, Lcom/android/OriginalSettings/nearby/NearbySettings$12;-><init>(Lcom/android/OriginalSettings/nearby/NearbySettings;Landroid/preference/Preference$OnPreferenceChangeListener;Landroid/preference/Preference;Ljava/lang/Object;)V

    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.OriginalSettings.allshare.REFRESH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move v1, v3

    .line 1540
    goto/16 :goto_0

    .line 1406
    :cond_e
    if-nez v1, :cond_c

    :try_start_3
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v3, :cond_c

    .line 1407
    invoke-direct {p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->requestWelcomePopup()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1460
    :catch_1
    move-exception v1

    .line 1461
    const-string v2, "AllshareSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AllshareSetting: onCreate() Popup Start :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1468
    :cond_f
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_2

    .line 1473
    :cond_10
    const-string v1, "allshare_device_name"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    if-eqz p2, :cond_13

    .line 1474
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1475
    if-lez v1, :cond_11

    const/16 v2, 0x37

    if-le v1, v2, :cond_12

    .line 1476
    :cond_11
    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: Device name length error "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    move v1, v4

    .line 1478
    goto/16 :goto_0

    .line 1482
    :cond_12
    :try_start_4
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mIMediaServer:Lcom/android/OriginalSettings/nearby/IMediaServer;

    invoke-interface {v1}, Lcom/android/OriginalSettings/nearby/IMediaServer;->getMediaServerName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Samsung Mobile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1484
    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: Device name is same. return"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    move v1, v4

    .line 1485
    goto/16 :goto_0

    .line 1487
    :catch_2
    move-exception v1

    .line 1488
    const-string v2, "AllshareSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AllshareSetting: mIMediaServer.getMediaServerName()- DeadObjectException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    invoke-virtual {v1}, Landroid/os/DeadObjectException;->printStackTrace()V

    goto/16 :goto_2

    .line 1490
    :catch_3
    move-exception v1

    .line 1491
    const-string v2, "AllshareSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AllshareSetting: mIMediaServer.getMediaServerName()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    .line 1497
    :cond_13
    const-string v1, "allshare_shared_contents"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    if-eqz p2, :cond_14

    .line 1500
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mSharedContentsValue:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 1501
    iget-object v2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mSharedContentsValue:Ljava/util/HashSet;

    move-object v1, p2

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 1519
    :cond_14
    const-string v1, "allshare_download_to"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    if-eqz p2, :cond_d

    .line 1520
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AllshareSetting: value: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->isExternalStorageSdMounted()Z

    move-result v1

    if-nez v1, :cond_d

    .line 1522
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: Invalid Download to Value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 1523
    goto/16 :goto_0

    .line 1542
    :catch_4
    move-exception v1

    .line 1543
    const-string v2, "AllshareSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AllshareSetting: OnPreference run: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_15
    move v1, v4

    .line 1546
    goto/16 :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1190
    const-string v1, "AllshareSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AllshareSetting: onPreferenceClick(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    :try_start_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v4, "allshare_device_name"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1193
    move-object v0, p1

    check-cast v0, Landroid/preference/EditTextPreference;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    check-cast p1, Landroid/preference/EditTextPreference;

    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 1195
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDeviceNameWatcher:Lcom/android/OriginalSettings/nearby/EditTextWatcher;

    iget-object v4, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4, v5}, Lcom/android/OriginalSettings/nearby/EditTextWatcher;->setDialog(Landroid/app/Dialog;Landroid/content/Context;)V

    :cond_0
    :goto_0
    move v1, v2

    .line 1253
    :goto_1
    return v1

    .line 1196
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v4, "allshare_onoff"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1197
    const-string v1, "AllshareSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AllshareSetting: onPreferenceClick(): KEY_ALLSHARE_ONOFF "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1247
    :catch_0
    move-exception v1

    .line 1248
    const-string v2, "AllshareSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AllshareSetting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v3

    .line 1250
    goto :goto_1

    .line 1201
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v4, "allshare_accept_device"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v4, "allshare_reject_device"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1204
    :cond_3
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v4, "allshare_accept_device"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1205
    const-string v1, "AllshareSetting"

    const-string v4, "AllshareSetting: onPreferenceClick(): KEY_ALLSHARE_ACCEPTED_DEVICE "

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/OriginalSettings/nearby/AcceptListPreference;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/nearby/AcceptListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    .line 1208
    if-eqz v1, :cond_4

    .line 1209
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    .line 1210
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1212
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v5

    .line 1214
    if-eqz v5, :cond_4

    .line 1215
    new-instance v6, Lcom/android/OriginalSettings/nearby/ListItemListener;

    invoke-direct {v6, v4}, Lcom/android/OriginalSettings/nearby/ListItemListener;-><init>(Landroid/widget/Button;)V

    .line 1216
    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1218
    new-instance v5, Lcom/android/OriginalSettings/nearby/DeleteButtonListener;

    iget-object v7, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-direct {v5, v6, v1, v7, v8}, Lcom/android/OriginalSettings/nearby/DeleteButtonListener;-><init>(Lcom/android/OriginalSettings/nearby/ListItemListener;Landroid/app/Dialog;Landroid/content/Context;Z)V

    .line 1220
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1224
    :cond_4
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v4, "allshare_reject_device"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1225
    const-string v1, "AllshareSetting"

    const-string v4, "AllshareSetting: onPreferenceClick(): KEY_ALLSHARE_REJECTED_DEVICE "

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mRejectDevice:Lcom/android/OriginalSettings/nearby/RejectListPreference;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/nearby/RejectListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    .line 1228
    if-eqz v1, :cond_0

    .line 1229
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    .line 1230
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1232
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v5

    .line 1234
    if-eqz v5, :cond_0

    .line 1235
    new-instance v6, Lcom/android/OriginalSettings/nearby/ListItemListener;

    invoke-direct {v6, v4}, Lcom/android/OriginalSettings/nearby/ListItemListener;-><init>(Landroid/widget/Button;)V

    .line 1236
    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1238
    new-instance v5, Lcom/android/OriginalSettings/nearby/DeleteButtonListener;

    iget-object v7, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-direct {v5, v6, v1, v7, v8}, Lcom/android/OriginalSettings/nearby/DeleteButtonListener;-><init>(Lcom/android/OriginalSettings/nearby/ListItemListener;Landroid/app/Dialog;Landroid/content/Context;Z)V

    .line 1240
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 9

    .prologue
    .line 559
    const-string v5, "AllshareSetting"

    const-string v6, "AllshareSetting: onResume()"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 562
    iget-boolean v5, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->bAutoStart:Z

    if-nez v5, :cond_0

    .line 563
    invoke-direct {p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->initPreferences()V

    .line 566
    :try_start_0
    iget-object v5, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mIMediaServer:Lcom/android/OriginalSettings/nearby/IMediaServer;

    if-eqz v5, :cond_0

    .line 567
    iget-object v5, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mIMediaServer:Lcom/android/OriginalSettings/nearby/IMediaServer;

    invoke-interface {v5}, Lcom/android/OriginalSettings/nearby/IMediaServer;->isServerStarted()Z

    move-result v0

    .line 568
    .local v0, bState:Z
    iget-object v5, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eq v0, v5, :cond_0

    .line 569
    const-string v5, "AllshareSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AllshareSetting: Change State: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v5, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 571
    iget-object v5, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xbb9

    const-wide/16 v7, 0x64

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    .end local v0           #bState:Z
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mIMediaServer:Lcom/android/OriginalSettings/nearby/IMediaServer;

    if-nez v5, :cond_1

    .line 582
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.sec.android.nearby.MediaServer.START"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 583
    .local v3, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 584
    iget-object v5, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mConn:Landroid/content/ServiceConnection;

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v6, v7}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 591
    .end local v3           #intent:Landroid/content/Intent;
    :cond_1
    :goto_1
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.sec.android.nearby.mediaserver.SET_NEARBY_FLAG"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 592
    .local v4, intentFlag:Landroid/content/Intent;
    const-string v5, "FLAG"

    invoke-virtual {p0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 593
    const-string v5, "SCREEN"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 594
    iget-object v5, p0, Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 596
    return-void

    .line 574
    .end local v4           #intentFlag:Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 575
    .local v2, e1:Landroid/os/RemoteException;
    const-string v5, "AllshareSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AllshareSetting: onResume() change state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 585
    .end local v2           #e1:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 586
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "AllshareSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AllshareSetting: onResume() bind service:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 612
    const-string v0, "AllshareSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AllshareSetting: onSaveInstanceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 614
    return-void
.end method
