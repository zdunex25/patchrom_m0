.class public Lcom/android/updater/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static final DL_PATH:Ljava/lang/String; = null

.field public static final DL_PATH_FILE:Ljava/io/File; = null

.field public static final DONATE_URL:Ljava/lang/String; = "https://www.otaupdatecenter.pro/?page=paypal_donate"

.field public static final GCM_REGISTER_URL:Ljava/lang/String; = "https://www.otaupdatecenter.pro/pages/regdevice2.php"

.field public static final GCM_SENDER_ID:Ljava/lang/String; = "1068482628480"

.field public static final OTA_DATE_PROP:Ljava/lang/String; = "updater.time"

.field public static final OTA_ID_PROP:Ljava/lang/String; = "updater.id"

.field public static final OTA_NOFLASH_PROP:Ljava/lang/String; = "otaupdater.noflash"

.field public static final OTA_REBOOT_CMD_PROP:Ljava/lang/String; = "otaupdater.rebootcmd"

.field public static final OTA_SD_PATH_OS_PROP:Ljava/lang/String; = "otaupdater.sdcard.os"

.field public static final OTA_SD_PATH_RECOVERY_PROP:Ljava/lang/String; = "otaupdater.sdcard.recovery"

.field public static final OTA_VER_PROP:Ljava/lang/String; = "updater.ver"

.field private static final PREFS_NAME:Ljava/lang/String; = "prefs"

.field public static final PULL_URL:Ljava/lang/String; = "https://www.otaupdatecenter.pro/pages/romupdate.php"

.field public static final WAKE_TIMEOUT:I = 0x7530

.field private static instance:Lcom/android/updater/Config;


# instance fields
.field private final PREFS:Landroid/content/SharedPreferences;

.field private curDevice:Ljava/lang/String;

.field private curRomID:Ljava/lang/String;

.field private curVersion:I

.field private ignoredDataWarn:Z

.field private lastDevice:Ljava/lang/String;

.field private lastRomID:Ljava/lang/String;

.field private lastVersion:I

.field private showNotif:Z

.field private storedUpdate:Lcom/android/updater/RomInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/updater/Utils;->getOSSdPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/OTA-Updater/download/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/updater/Config;->DL_PATH:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/updater/Config;->DL_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/updater/Config;->DL_PATH_FILE:Ljava/io/File;

    .line 44
    sget-object v0, Lcom/android/updater/Config;->DL_PATH_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    sget-object v0, Lcom/android/updater/Config;->DL_PATH_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    sget-object v0, Lcom/android/updater/Config;->DL_PATH_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 47
    sget-object v0, Lcom/android/updater/Config;->DL_PATH_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 100
    :cond_0
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/updater/Config;->instance:Lcom/android/updater/Config;

    return-void

    .line 50
    :cond_1
    sget-object v0, Lcom/android/updater/Config;->DL_PATH_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "ctx"

    .prologue
    const/4 v1, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/updater/Config;->showNotif:Z

    .line 55
    iput-boolean v9, p0, Lcom/android/updater/Config;->ignoredDataWarn:Z

    .line 57
    iput v1, p0, Lcom/android/updater/Config;->lastVersion:I

    .line 58
    iput-object v8, p0, Lcom/android/updater/Config;->lastDevice:Ljava/lang/String;

    .line 59
    iput-object v8, p0, Lcom/android/updater/Config;->lastRomID:Ljava/lang/String;

    .line 61
    iput v1, p0, Lcom/android/updater/Config;->curVersion:I

    .line 62
    iput-object v8, p0, Lcom/android/updater/Config;->curDevice:Ljava/lang/String;

    .line 63
    iput-object v8, p0, Lcom/android/updater/Config;->curRomID:Ljava/lang/String;

    .line 65
    iput-object v8, p0, Lcom/android/updater/Config;->storedUpdate:Lcom/android/updater/RomInfo;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "prefs"

    invoke-virtual {v0, v1, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/updater/Config;->PREFS:Landroid/content/SharedPreferences;

    .line 73
    iget-object v0, p0, Lcom/android/updater/Config;->PREFS:Landroid/content/SharedPreferences;

    const-string v1, "showNotif"

    iget-boolean v2, p0, Lcom/android/updater/Config;->showNotif:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/updater/Config;->showNotif:Z

    .line 74
    iget-object v0, p0, Lcom/android/updater/Config;->PREFS:Landroid/content/SharedPreferences;

    const-string v1, "ignoredDataWarn"

    iget-boolean v2, p0, Lcom/android/updater/Config;->ignoredDataWarn:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/updater/Config;->ignoredDataWarn:Z

    .line 76
    iget-object v0, p0, Lcom/android/updater/Config;->PREFS:Landroid/content/SharedPreferences;

    const-string v1, "version"

    iget v2, p0, Lcom/android/updater/Config;->lastVersion:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/updater/Config;->lastVersion:I

    .line 77
    iget-object v0, p0, Lcom/android/updater/Config;->PREFS:Landroid/content/SharedPreferences;

    const-string v1, "device"

    iget-object v2, p0, Lcom/android/updater/Config;->lastDevice:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/updater/Config;->lastDevice:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/android/updater/Config;->PREFS:Landroid/content/SharedPreferences;

    const-string v1, "romid"

    iget-object v2, p0, Lcom/android/updater/Config;->lastRomID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/updater/Config;->lastRomID:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/android/updater/Config;->PREFS:Landroid/content/SharedPreferences;

    const-string v1, "info_rom"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Lcom/android/updater/RomInfo;

    iget-object v1, p0, Lcom/android/updater/Config;->PREFS:Landroid/content/SharedPreferences;

    const-string v2, "info_rom"

    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    iget-object v2, p0, Lcom/android/updater/Config;->PREFS:Landroid/content/SharedPreferences;

    const-string v3, "info_version"

    invoke-interface {v2, v3, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    iget-object v3, p0, Lcom/android/updater/Config;->PREFS:Landroid/content/SharedPreferences;

    const-string v4, "info_changelog"

    invoke-interface {v3, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 84
    iget-object v4, p0, Lcom/android/updater/Config;->PREFS:Landroid/content/SharedPreferences;

    const-string v5, "info_url"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 85
    iget-object v5, p0, Lcom/android/updater/Config;->PREFS:Landroid/content/SharedPreferences;

    const-string v6, "info_md5"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 86
    iget-object v6, p0, Lcom/android/updater/Config;->PREFS:Landroid/content/SharedPreferences;

    const-string v7, "info_date"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/updater/Utils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/android/updater/RomInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    .line 81
    iput-object v0, p0, Lcom/android/updater/Config;->storedUpdate:Lcom/android/updater/RomInfo;

    .line 90
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lcom/android/updater/Config;->curVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/updater/Config;->curDevice:Ljava/lang/String;

    .line 94
    invoke-static {}, Lcom/android/updater/Utils;->getRomID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/updater/Config;->curRomID:Ljava/lang/String;

    .line 96
    invoke-virtual {p0}, Lcom/android/updater/Config;->upToDate()Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    invoke-virtual {p0, v9}, Lcom/android/updater/Config;->setIgnoredDataWarn(Z)V

    .line 99
    :cond_1
    return-void

    .line 91
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/updater/Config;
    .locals 2
    .parameter "ctx"

    .prologue
    .line 102
    const-class v1, Lcom/android/updater/Config;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/updater/Config;->instance:Lcom/android/updater/Config;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/updater/Config;

    invoke-direct {v0, p0}, Lcom/android/updater/Config;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/updater/Config;->instance:Lcom/android/updater/Config;

    .line 103
    :cond_0
    sget-object v0, Lcom/android/updater/Config;->instance:Lcom/android/updater/Config;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clearStoredUpdate()V
    .locals 3

    .prologue
    .line 183
    iget-object v2, p0, Lcom/android/updater/Config;->PREFS:Landroid/content/SharedPreferences;

    monitor-enter v2

    .line 184
    :try_start_0
    iget-object v1, p0, Lcom/android/updater/Config;->PREFS:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 185
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "info_rom"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 186
    const-string v1, "info_version"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 187
    const-string v1, "info_changelog"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 188
    const-string v1, "info_url"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 189
    const-string v1, "info_md5"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 190
    const-string v1, "info_date"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 191
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 183
    monitor-exit v2

    .line 193
    return-void

    .line 183
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIgnoredDataWarn()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/updater/Config;->ignoredDataWarn:Z

    return v0
.end method

.method public getLastDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/updater/Config;->lastDevice:Ljava/lang/String;

    return-object v0
.end method

.method public getLastRomID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/updater/Config;->lastRomID:Ljava/lang/String;

    return-object v0
.end method

.method public getLastVersion()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/android/updater/Config;->lastVersion:I

    return v0
.end method

.method public getShowNotif()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/updater/Config;->showNotif:Z

    return v0
.end method

.method public getStoredUpdate()Lcom/android/updater/RomInfo;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/updater/Config;->storedUpdate:Lcom/android/updater/RomInfo;

    return-object v0
.end method

.method public hasStoredUpdate()Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/updater/Config;->storedUpdate:Lcom/android/updater/RomInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIgnoredDataWarn(Z)V
    .locals 3
    .parameter "ignored"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/updater/Config;->ignoredDataWarn:Z

    .line 125
    iget-object v2, p0, Lcom/android/updater/Config;->PREFS:Landroid/content/SharedPreferences;

    monitor-enter v2

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/android/updater/Config;->PREFS:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 127
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "ignoredDataWarn"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 128
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 125
    monitor-exit v2

    .line 130
    return-void

    .line 125
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setShowNotif(Z)V
    .locals 3
    .parameter "showNotif"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/updater/Config;->showNotif:Z

    .line 112
    iget-object v2, p0, Lcom/android/updater/Config;->PREFS:Landroid/content/SharedPreferences;

    monitor-enter v2

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/android/updater/Config;->PREFS:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 114
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "showNotif"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 115
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 112
    monitor-exit v2

    .line 117
    return-void

    .line 112
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setValuesToCurrent()V
    .locals 4

    .prologue
    .line 145
    iget-object v2, p0, Lcom/android/updater/Config;->PREFS:Landroid/content/SharedPreferences;

    monitor-enter v2

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/android/updater/Config;->PREFS:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 147
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "version"

    iget v3, p0, Lcom/android/updater/Config;->curVersion:I

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 148
    const-string v1, "device"

    iget-object v3, p0, Lcom/android/updater/Config;->curDevice:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 149
    const-string v1, "romid"

    iget-object v3, p0, Lcom/android/updater/Config;->curRomID:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 150
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 145
    monitor-exit v2

    .line 152
    return-void

    .line 145
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public storeUpdate(Lcom/android/updater/RomInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 170
    iget-object v2, p0, Lcom/android/updater/Config;->PREFS:Landroid/content/SharedPreferences;

    monitor-enter v2

    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/android/updater/Config;->PREFS:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 172
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "info_rom"

    iget-object v3, p1, Lcom/android/updater/RomInfo;->romName:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 173
    const-string v1, "info_version"

    iget-object v3, p1, Lcom/android/updater/RomInfo;->version:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 174
    const-string v1, "info_changelog"

    iget-object v3, p1, Lcom/android/updater/RomInfo;->changelog:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 175
    const-string v1, "info_url"

    iget-object v3, p1, Lcom/android/updater/RomInfo;->url:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 176
    const-string v1, "info_md5"

    iget-object v3, p1, Lcom/android/updater/RomInfo;->md5:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 177
    const-string v1, "info_date"

    iget-object v3, p1, Lcom/android/updater/RomInfo;->date:Ljava/util/Date;

    invoke-static {v3}, Lcom/android/updater/Utils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 178
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 170
    monitor-exit v2

    .line 180
    return-void

    .line 170
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public upToDate()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 155
    iget-object v1, p0, Lcom/android/updater/Config;->lastDevice:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v0

    .line 156
    :cond_1
    iget-object v1, p0, Lcom/android/updater/Config;->lastRomID:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/android/updater/Config;->curRomID:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 158
    iget v1, p0, Lcom/android/updater/Config;->curVersion:I

    iget v2, p0, Lcom/android/updater/Config;->lastVersion:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/updater/Config;->curDevice:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/updater/Config;->lastDevice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/updater/Config;->curRomID:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/updater/Config;->lastRomID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
