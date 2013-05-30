.class public Lcom/android/updater/OTAUpdaterActivity;
.super Landroid/preference/PreferenceActivity;
.source "OTAUpdaterActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/updater/OTAUpdaterActivity$DownloadTask;
    }
.end annotation


# static fields
.field protected static final NOTIF_ACTION:Ljava/lang/String; = "com.android.updater.action.NOTIF_ACTION"


# instance fields
.field private availUpdatePref:Landroid/preference/Preference;

.field private cfg:Lcom/android/updater/Config;

.field private checkOnResume:Z

.field private dialogFromNotif:Z

.field private dlTask:Lcom/android/updater/OTAUpdaterActivity$DownloadTask;

.field private fetchTask:Lcom/android/updater/FetchRomInfoTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 85
    iput-boolean v0, p0, Lcom/android/updater/OTAUpdaterActivity;->dialogFromNotif:Z

    .line 86
    iput-boolean v0, p0, Lcom/android/updater/OTAUpdaterActivity;->checkOnResume:Z

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/updater/OTAUpdaterActivity;->fetchTask:Lcom/android/updater/FetchRomInfoTask;

    .line 82
    return-void
.end method

.method static synthetic access$0(Lcom/android/updater/OTAUpdaterActivity;)Lcom/android/updater/OTAUpdaterActivity$DownloadTask;
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity;->dlTask:Lcom/android/updater/OTAUpdaterActivity$DownloadTask;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/updater/OTAUpdaterActivity;)Lcom/android/updater/Config;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity;->cfg:Lcom/android/updater/Config;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/updater/OTAUpdaterActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/updater/OTAUpdaterActivity;->checkOnResume:Z

    return-void
.end method

.method static synthetic access$3(Lcom/android/updater/OTAUpdaterActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/updater/OTAUpdaterActivity;->dialogFromNotif:Z

    return-void
.end method

.method static synthetic access$4(Lcom/android/updater/OTAUpdaterActivity;Lcom/android/updater/RomInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 364
    invoke-direct {p0, p1}, Lcom/android/updater/OTAUpdaterActivity;->showUpdateDialog(Lcom/android/updater/RomInfo;)V

    return-void
.end method

.method static synthetic access$5(Lcom/android/updater/OTAUpdaterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/android/updater/OTAUpdaterActivity;->checkForRomUpdates()V

    return-void
.end method

.method static synthetic access$6(Lcom/android/updater/OTAUpdaterActivity;Lcom/android/updater/FetchRomInfoTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/updater/OTAUpdaterActivity;->fetchTask:Lcom/android/updater/FetchRomInfoTask;

    return-void
.end method

.method static synthetic access$7(Lcom/android/updater/OTAUpdaterActivity;)Landroid/preference/Preference;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity;->availUpdatePref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$8(Lcom/android/updater/OTAUpdaterActivity;Lcom/android/updater/OTAUpdaterActivity$DownloadTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/updater/OTAUpdaterActivity;->dlTask:Lcom/android/updater/OTAUpdaterActivity$DownloadTask;

    return-void
.end method

.method private checkForRomUpdates()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity;->fetchTask:Lcom/android/updater/FetchRomInfoTask;

    if-eqz v0, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    invoke-static {}, Lcom/android/updater/Utils;->isROMSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    new-instance v0, Lcom/android/updater/FetchRomInfoTask;

    new-instance v1, Lcom/android/updater/OTAUpdaterActivity$7;

    invoke-direct {v1, p0}, Lcom/android/updater/OTAUpdaterActivity$7;-><init>(Lcom/android/updater/OTAUpdaterActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/android/updater/FetchRomInfoTask;-><init>(Landroid/content/Context;Lcom/android/updater/FetchRomInfoTask$RomInfoListener;)V

    iput-object v0, p0, Lcom/android/updater/OTAUpdaterActivity;->fetchTask:Lcom/android/updater/FetchRomInfoTask;

    .line 361
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity;->fetchTask:Lcom/android/updater/FetchRomInfoTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/updater/FetchRomInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private showUpdateDialog(Lcom/android/updater/RomInfo;)V
    .locals 7
    .parameter "info"

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 365
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 366
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f060013

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 367
    const v1, 0x7f060018

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/android/updater/RomInfo;->romName:Ljava/lang/String;

    aput-object v3, v2, v5

    iget-object v3, p1, Lcom/android/updater/RomInfo;->version:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/updater/OTAUpdaterActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 368
    iget-object v1, p0, Lcom/android/updater/OTAUpdaterActivity;->availUpdatePref:Landroid/preference/Preference;

    const v2, 0x7f06003d

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/android/updater/RomInfo;->romName:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p1, Lcom/android/updater/RomInfo;->version:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/android/updater/OTAUpdaterActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 370
    const v1, 0x7f060014

    new-instance v2, Lcom/android/updater/OTAUpdaterActivity$8;

    invoke-direct {v2, p0, p1}, Lcom/android/updater/OTAUpdaterActivity$8;-><init>(Lcom/android/updater/OTAUpdaterActivity;Lcom/android/updater/RomInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 397
    const v1, 0x7f06000d

    new-instance v2, Lcom/android/updater/OTAUpdaterActivity$9;

    invoke-direct {v2, p0}, Lcom/android/updater/OTAUpdaterActivity$9;-><init>(Lcom/android/updater/OTAUpdaterActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 403
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 404
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .parameter "savedInstanceState"

    .prologue
    .line 98
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/updater/OTAUpdaterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/updater/Config;->getInstance(Landroid/content/Context;)Lcom/android/updater/Config;

    move-result-object v11

    iput-object v11, p0, Lcom/android/updater/OTAUpdaterActivity;->cfg:Lcom/android/updater/Config;

    .line 102
    invoke-static {}, Lcom/android/updater/Utils;->isROMSupported()Z

    move-result v11

    if-nez v11, :cond_1

    .line 103
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 104
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    const v11, 0x7f060016

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 105
    const v11, 0x7f060017

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 106
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 107
    const v11, 0x7f060009

    new-instance v12, Lcom/android/updater/OTAUpdaterActivity$1;

    invoke-direct {v12, p0}, Lcom/android/updater/OTAUpdaterActivity$1;-><init>(Lcom/android/updater/OTAUpdaterActivity;)V

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 114
    const v11, 0x7f060008

    new-instance v12, Lcom/android/updater/OTAUpdaterActivity$2;

    invoke-direct {v12, p0}, Lcom/android/updater/OTAUpdaterActivity$2;-><init>(Lcom/android/updater/OTAUpdaterActivity;)V

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 120
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog;->show()V

    .line 122
    invoke-static {p0}, Lcom/android/updater/Utils;->marketAvailable(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/android/updater/OTAUpdaterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gcm/GCMRegistrar;->checkDevice(Landroid/content/Context;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/updater/OTAUpdaterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gcm/GCMRegistrar;->checkManifest(Landroid/content/Context;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/updater/OTAUpdaterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gcm/GCMRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 126
    .local v5, regId:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/android/updater/OTAUpdaterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gcm/GCMRegistrar;->unregister(Landroid/content/Context;)V

    .line 207
    .end local v0           #alert:Landroid/app/AlertDialog$Builder;
    .end local v5           #regId:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-static {p0}, Lcom/android/updater/Utils;->marketAvailable(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 132
    invoke-virtual {p0}, Lcom/android/updater/OTAUpdaterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gcm/GCMRegistrar;->checkDevice(Landroid/content/Context;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/updater/OTAUpdaterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gcm/GCMRegistrar;->checkManifest(Landroid/content/Context;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/updater/OTAUpdaterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gcm/GCMRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 135
    .restart local v5       #regId:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_5

    .line 136
    iget-object v11, p0, Lcom/android/updater/OTAUpdaterActivity;->cfg:Lcom/android/updater/Config;

    invoke-virtual {v11}, Lcom/android/updater/Config;->upToDate()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 137
    const-string v11, "OTA::GCMRegister"

    const-string v12, "Already registered"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .end local v5           #regId:Ljava/lang/String;
    :goto_1
    const v11, 0x7f040001

    invoke-virtual {p0, v11}, Lcom/android/updater/OTAUpdaterActivity;->addPreferencesFromResource(I)V

    .line 155
    invoke-static {}, Lcom/android/updater/Utils;->getOtaVersion()Ljava/lang/String;

    move-result-object v8

    .line 156
    .local v8, romVersion:Ljava/lang/String;
    if-nez v8, :cond_2

    sget-object v8, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 157
    :cond_2
    invoke-static {}, Lcom/android/updater/Utils;->getOtaDate()Ljava/util/Date;

    move-result-object v7

    .line 158
    .local v7, romDate:Ljava/util/Date;
    if-eqz v7, :cond_3

    .line 159
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 162
    :cond_3
    const-string v11, "device_view"

    invoke-virtual {p0, v11}, Lcom/android/updater/OTAUpdaterActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 163
    .local v2, device:Landroid/preference/Preference;
    sget-object v11, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 164
    const-string v11, "rom_view"

    invoke-virtual {p0, v11}, Lcom/android/updater/OTAUpdaterActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 165
    .local v6, rom:Landroid/preference/Preference;
    sget-object v11, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v6, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 166
    const-string v11, "version_view"

    invoke-virtual {p0, v11}, Lcom/android/updater/OTAUpdaterActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    .line 167
    .local v10, version:Landroid/preference/Preference;
    invoke-virtual {v10, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 168
    const-string v11, "otaid_view"

    invoke-virtual {p0, v11}, Lcom/android/updater/OTAUpdaterActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 169
    .local v1, build:Landroid/preference/Preference;
    invoke-static {}, Lcom/android/updater/Utils;->getRomID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 171
    const-string v11, "avail_updates"

    invoke-virtual {p0, v11}, Lcom/android/updater/OTAUpdaterActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/updater/OTAUpdaterActivity;->availUpdatePref:Landroid/preference/Preference;

    .line 173
    invoke-virtual {p0}, Lcom/android/updater/OTAUpdaterActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v9

    .line 174
    .local v9, savedInstance:Ljava/lang/Object;
    if-eqz v9, :cond_7

    instance-of v11, v9, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;

    if-eqz v11, :cond_7

    .line 175
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/updater/OTAUpdaterActivity;->dialogFromNotif:Z

    .line 176
    check-cast v9, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;

    .end local v9           #savedInstance:Ljava/lang/Object;
    iput-object v9, p0, Lcom/android/updater/OTAUpdaterActivity;->dlTask:Lcom/android/updater/OTAUpdaterActivity$DownloadTask;

    .line 178
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-direct {v4, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 179
    .local v4, progressDialog:Landroid/app/ProgressDialog;
    const v11, 0x7f060015

    invoke-virtual {v4, v11}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 180
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Changelog: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/updater/OTAUpdaterActivity;->dlTask:Lcom/android/updater/OTAUpdaterActivity$DownloadTask;

    invoke-virtual {v12}, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->getRomInfo()Lcom/android/updater/RomInfo;

    move-result-object v12

    iget-object v12, v12, Lcom/android/updater/RomInfo;->changelog:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 181
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 182
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 183
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 184
    const/4 v11, -0x2

    const v12, 0x7f06000d

    invoke-virtual {p0, v12}, Lcom/android/updater/OTAUpdaterActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/android/updater/OTAUpdaterActivity$3;

    invoke-direct {v13, p0, v4}, Lcom/android/updater/OTAUpdaterActivity$3;-><init>(Lcom/android/updater/OTAUpdaterActivity;Landroid/app/ProgressDialog;)V

    invoke-virtual {v4, v11, v12, v13}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 191
    iget-object v11, p0, Lcom/android/updater/OTAUpdaterActivity;->dlTask:Lcom/android/updater/OTAUpdaterActivity$DownloadTask;

    invoke-virtual {v11, v4}, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->attach(Landroid/app/ProgressDialog;)V

    .line 192
    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_0

    .line 139
    .end local v1           #build:Landroid/preference/Preference;
    .end local v2           #device:Landroid/preference/Preference;
    .end local v4           #progressDialog:Landroid/app/ProgressDialog;
    .end local v6           #rom:Landroid/preference/Preference;
    .end local v7           #romDate:Ljava/util/Date;
    .end local v8           #romVersion:Ljava/lang/String;
    .end local v10           #version:Landroid/preference/Preference;
    .restart local v5       #regId:Ljava/lang/String;
    :cond_4
    const-string v11, "OTA::GCMRegister"

    const-string v12, "Already registered, out-of-date, reregistering"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0}, Lcom/android/updater/OTAUpdaterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gcm/GCMRegistrar;->unregister(Landroid/content/Context;)V

    .line 141
    invoke-virtual {p0}, Lcom/android/updater/OTAUpdaterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "1068482628480"

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lcom/google/android/gcm/GCMRegistrar;->register(Landroid/content/Context;[Ljava/lang/String;)V

    .line 142
    iget-object v11, p0, Lcom/android/updater/OTAUpdaterActivity;->cfg:Lcom/android/updater/Config;

    invoke-virtual {v11}, Lcom/android/updater/Config;->setValuesToCurrent()V

    .line 143
    const-string v11, "OTA::GCMRegister"

    const-string v12, "GCM registered"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 146
    :cond_5
    invoke-virtual {p0}, Lcom/android/updater/OTAUpdaterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "1068482628480"

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lcom/google/android/gcm/GCMRegistrar;->register(Landroid/content/Context;[Ljava/lang/String;)V

    .line 147
    const-string v11, "OTA::GCMRegister"

    const-string v12, "GCM registered"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 150
    .end local v5           #regId:Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcom/android/updater/OTAUpdaterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/updater/UpdateCheckReceiver;->setAlarm(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 194
    .restart local v1       #build:Landroid/preference/Preference;
    .restart local v2       #device:Landroid/preference/Preference;
    .restart local v6       #rom:Landroid/preference/Preference;
    .restart local v7       #romDate:Ljava/util/Date;
    .restart local v8       #romVersion:Ljava/lang/String;
    .restart local v9       #savedInstance:Ljava/lang/Object;
    .restart local v10       #version:Landroid/preference/Preference;
    :cond_7
    invoke-virtual {p0}, Lcom/android/updater/OTAUpdaterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 195
    .local v3, i:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "com.android.updater.action.NOTIF_ACTION"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 196
    invoke-virtual {p0}, Lcom/android/updater/OTAUpdaterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/updater/Utils;->dataAvailable(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 197
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/updater/OTAUpdaterActivity;->dialogFromNotif:Z

    .line 198
    invoke-static {v3}, Lcom/android/updater/RomInfo;->fromIntent(Landroid/content/Intent;)Lcom/android/updater/RomInfo;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/updater/OTAUpdaterActivity;->showUpdateDialog(Lcom/android/updater/RomInfo;)V

    goto/16 :goto_0

    .line 200
    :cond_8
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/updater/OTAUpdaterActivity;->checkOnResume:Z

    goto/16 :goto_0

    .line 203
    :cond_9
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/updater/OTAUpdaterActivity;->checkOnResume:Z

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/android/updater/OTAUpdaterActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 300
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f080001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 301
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 307
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 331
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 309
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/updater/ListFilesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 310
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/updater/OTAUpdaterActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 313
    .end local v0           #i:Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/updater/UpdaterSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 314
    .restart local v0       #i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/updater/OTAUpdaterActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 317
    .end local v0           #i:Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/updater/UpdaterAbout;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 318
    .restart local v0       #i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/updater/OTAUpdaterActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 321
    .end local v0           #i:Landroid/content/Intent;
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://www.otaupdatecenter.pro/?page=paypal_donate"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 322
    .restart local v0       #i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/updater/OTAUpdaterActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 325
    .end local v0           #i:Landroid/content/Intent;
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/updater/OTAUpdaterActivity;->finish()V

    goto :goto_0

    .line 328
    :pswitch_5
    invoke-direct {p0}, Lcom/android/updater/OTAUpdaterActivity;->checkForRomUpdates()V

    goto :goto_0

    .line 307
    nop

    :pswitch_data_0
    .packed-switch 0x7f090004
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 271
    invoke-virtual {p0}, Lcom/android/updater/OTAUpdaterActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity;->dlTask:Lcom/android/updater/OTAUpdaterActivity$DownloadTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity;->dlTask:Lcom/android/updater/OTAUpdaterActivity$DownloadTask;

    invoke-virtual {v0}, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity;->dlTask:Lcom/android/updater/OTAUpdaterActivity$DownloadTask;

    invoke-virtual {v0, v1}, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->cancel(Z)Z

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity;->fetchTask:Lcom/android/updater/FetchRomInfoTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity;->fetchTask:Lcom/android/updater/FetchRomInfoTask;

    invoke-virtual {v0, v1}, Lcom/android/updater/FetchRomInfoTask;->cancel(Z)Z

    .line 275
    :cond_1
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 276
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity;->availUpdatePref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity;->fetchTask:Lcom/android/updater/FetchRomInfoTask;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/updater/OTAUpdaterActivity;->checkForRomUpdates()V

    .line 292
    :cond_0
    const/4 v0, 0x1

    .line 294
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 211
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 213
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Lcom/android/updater/OTAUpdaterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 214
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 215
    .local v4, ni:Landroid/net/NetworkInfo;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_2

    move v2, v5

    .line 216
    .local v2, connected:Z
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-nez v7, :cond_5

    :cond_0
    iget-object v7, p0, Lcom/android/updater/OTAUpdaterActivity;->cfg:Lcom/android/updater/Config;

    invoke-virtual {v7}, Lcom/android/updater/Config;->getIgnoredDataWarn()Z

    move-result v7

    if-nez v7, :cond_5

    iget-boolean v7, p0, Lcom/android/updater/OTAUpdaterActivity;->dialogFromNotif:Z

    if-nez v7, :cond_5

    invoke-static {}, Lcom/android/updater/Utils;->isROMSupported()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 217
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 218
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    if-eqz v2, :cond_3

    const v5, 0x7f060005

    :goto_1
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 219
    if-eqz v2, :cond_4

    const v5, 0x7f060006

    :goto_2
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 220
    const v5, 0x7f060007

    new-instance v6, Lcom/android/updater/OTAUpdaterActivity$4;

    invoke-direct {v6, p0}, Lcom/android/updater/OTAUpdaterActivity$4;-><init>(Lcom/android/updater/OTAUpdaterActivity;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 229
    const v5, 0x7f060008

    new-instance v6, Lcom/android/updater/OTAUpdaterActivity$5;

    invoke-direct {v6, p0}, Lcom/android/updater/OTAUpdaterActivity$5;-><init>(Lcom/android/updater/OTAUpdaterActivity;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 247
    const v5, 0x7f060009

    new-instance v6, Lcom/android/updater/OTAUpdaterActivity$6;

    invoke-direct {v6, p0}, Lcom/android/updater/OTAUpdaterActivity$6;-><init>(Lcom/android/updater/OTAUpdaterActivity;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 254
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 267
    .end local v0           #alert:Landroid/app/AlertDialog$Builder;
    :cond_1
    :goto_3
    return-void

    .end local v2           #connected:Z
    :cond_2
    move v2, v6

    .line 215
    goto :goto_0

    .line 218
    .restart local v0       #alert:Landroid/app/AlertDialog$Builder;
    .restart local v2       #connected:Z
    :cond_3
    const v5, 0x7f060003

    goto :goto_1

    .line 219
    :cond_4
    const v5, 0x7f060004

    goto :goto_2

    .line 255
    .end local v0           #alert:Landroid/app/AlertDialog$Builder;
    :cond_5
    iget-boolean v7, p0, Lcom/android/updater/OTAUpdaterActivity;->checkOnResume:Z

    if-eqz v7, :cond_1

    .line 256
    invoke-virtual {p0}, Lcom/android/updater/OTAUpdaterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/updater/Utils;->dataAvailable(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 257
    invoke-virtual {p0}, Lcom/android/updater/OTAUpdaterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 258
    .local v3, i:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.android.updater.action.NOTIF_ACTION"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 259
    iput-boolean v5, p0, Lcom/android/updater/OTAUpdaterActivity;->dialogFromNotif:Z

    .line 260
    invoke-static {v3}, Lcom/android/updater/RomInfo;->fromIntent(Landroid/content/Intent;)Lcom/android/updater/RomInfo;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/updater/OTAUpdaterActivity;->showUpdateDialog(Lcom/android/updater/RomInfo;)V

    .line 264
    :goto_4
    iput-boolean v6, p0, Lcom/android/updater/OTAUpdaterActivity;->checkOnResume:Z

    goto :goto_3

    .line 262
    :cond_6
    invoke-direct {p0}, Lcom/android/updater/OTAUpdaterActivity;->checkForRomUpdates()V

    goto :goto_4
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 280
    iget-object v1, p0, Lcom/android/updater/OTAUpdaterActivity;->dlTask:Lcom/android/updater/OTAUpdaterActivity$DownloadTask;

    if-nez v1, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-object v0

    .line 282
    :cond_1
    iget-object v1, p0, Lcom/android/updater/OTAUpdaterActivity;->dlTask:Lcom/android/updater/OTAUpdaterActivity$DownloadTask;

    invoke-virtual {v1}, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->detach()V

    .line 283
    iget-object v1, p0, Lcom/android/updater/OTAUpdaterActivity;->dlTask:Lcom/android/updater/OTAUpdaterActivity$DownloadTask;

    invoke-virtual {v1}, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity;->dlTask:Lcom/android/updater/OTAUpdaterActivity$DownloadTask;

    goto :goto_0
.end method
