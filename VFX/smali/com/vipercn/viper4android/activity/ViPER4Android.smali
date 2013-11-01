.class public final Lcom/vipercn/viper4android/activity/ViPER4Android;
.super Landroid/support/v4/app/FragmentActivity;
.source "ViPER4Android.java"


# static fields
.field public static final ACTION_CANCEL_NOTIFY:Ljava/lang/String; = "com.vipercn.viper4android.CANCELNOTIFY"

.field public static final ACTION_SHOW_NOTIFY:Ljava/lang/String; = "com.vipercn.viper4android.SHOWNOTIFY"

.field public static final ACTION_UPDATE_PREFERENCES:Ljava/lang/String; = "com.vipercn.viper4android.UPDATE"

.field public static final NOTIFY_FOREGROUND_ID:I = 0x1

.field public static final SHARED_PREFERENCES_BASENAME:Ljava/lang/String; = "com.vipercn.viper4android"

.field private static final V4ASettingsPreference:Ljava/lang/String; = "com.vipercn.viper4android.settings"


# instance fields
.field protected actionBar:Landroid/app/ActionBar;

.field private hProceedDriverHandler:Landroid/os/Handler;

.field private mActivityContext:Landroid/content/Context;

.field private mCurrentPage:I

.field private mHeadsetServiceInstance:Lcom/vipercn/viper4android/service/HeadsetService;

.field private mKillAllThread:Z

.field private mProfileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected pagerAdapter:Lcom/vipercn/viper4android/activity/MyAdapter;

.field private szSaveProfileNameGlobal:Ljava/lang/String;

.field protected viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vipercn/viper4android/activity/ViPER4Android;->mProfileList:Ljava/util/ArrayList;

    .line 304
    iput v1, p0, Lcom/vipercn/viper4android/activity/ViPER4Android;->mCurrentPage:I

    .line 305
    iput-boolean v1, p0, Lcom/vipercn/viper4android/activity/ViPER4Android;->mKillAllThread:Z

    .line 306
    iput-object p0, p0, Lcom/vipercn/viper4android/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vipercn/viper4android/activity/ViPER4Android;->mHeadsetServiceInstance:Lcom/vipercn/viper4android/service/HeadsetService;

    .line 310
    new-instance v0, Lcom/vipercn/viper4android/activity/ViPER4Android$1;

    invoke-direct {v0, p0}, Lcom/vipercn/viper4android/activity/ViPER4Android$1;-><init>(Lcom/vipercn/viper4android/activity/ViPER4Android;)V

    iput-object v0, p0, Lcom/vipercn/viper4android/activity/ViPER4Android;->hProceedDriverHandler:Landroid/os/Handler;

    .line 722
    const-string v0, ""

    iput-object v0, p0, Lcom/vipercn/viper4android/activity/ViPER4Android;->szSaveProfileNameGlobal:Ljava/lang/String;

    .line 67
    return-void
.end method

.method private CheckFirstRun()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 85
    invoke-virtual {p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 86
    .local v2, packageMgr:Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 87
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    const-string v3, ""

    .line 90
    .local v3, szVersion:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 91
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->GetBasePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, szVersionFile:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/vipercn/viper4android/activity/ViPER4Android;->IsFileExisted(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 100
    .end local v4           #szVersionFile:Ljava/lang/String;
    :goto_0
    return v5

    .line 93
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 100
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4       #szVersionFile:Ljava/lang/String;
    :cond_0
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private CheckSoftwareActive()Z
    .locals 4

    .prologue
    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->GetBasePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06009b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, szActiveFile:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->IsFileExisted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 137
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private GetBasePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 72
    .local v0, cont:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, szBasePath:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, ""

    .line 75
    .end local v1           #szBasePath:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private IsFileExisted(Ljava/lang/String;)Z
    .locals 1
    .parameter "szFilePath"

    .prologue
    .line 80
    invoke-static {p1}, Lcom/vipercn/viper4android/activity/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private ProcessDriverCheck()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 208
    const-string v7, "ViPER4Android"

    const-string v8, "Enter ProcessDriverCheck()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v7, p0, Lcom/vipercn/viper4android/activity/ViPER4Android;->mHeadsetServiceInstance:Lcom/vipercn/viper4android/service/HeadsetService;

    if-eqz v7, :cond_2

    .line 214
    :try_start_0
    iget-object v7, p0, Lcom/vipercn/viper4android/activity/ViPER4Android;->mHeadsetServiceInstance:Lcom/vipercn/viper4android/service/HeadsetService;

    invoke-virtual {v7}, Lcom/vipercn/viper4android/service/HeadsetService;->GetServicePrepared()Z

    move-result v7

    if-nez v7, :cond_0

    .line 216
    const-string v7, "ViPER4Android"

    const-string v8, "Service not prepared"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :goto_0
    return v6

    .line 219
    :cond_0
    const-wide/16 v7, 0x3e8

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    invoke-virtual {p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 229
    .local v3, packageMgr:Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 230
    .local v2, packageInfo:Landroid/content/pm/PackageInfo;
    const-string v4, ""

    .line 233
    .local v4, szApkVer:Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 234
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 235
    iget-object v7, p0, Lcom/vipercn/viper4android/activity/ViPER4Android;->mHeadsetServiceInstance:Lcom/vipercn/viper4android/service/HeadsetService;

    invoke-virtual {v7}, Lcom/vipercn/viper4android/service/HeadsetService;->GetDriverVersion()Ljava/lang/String;

    move-result-object v5

    .line 237
    .local v5, szDrvVer:Ljava/lang/String;
    const-string v7, "ViPER4Android"

    const-string v8, "Proceeding drvier check"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 240
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 241
    .local v1, message:Landroid/os/Message;
    const v7, 0xa00a

    iput v7, v1, Landroid/os/Message;->what:I

    .line 242
    iget-object v7, p0, Lcom/vipercn/viper4android/activity/ViPER4Android;->hProceedDriverHandler:Landroid/os/Handler;

    invoke-virtual {v7, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 244
    .end local v1           #message:Landroid/os/Message;
    :cond_1
    const/4 v6, 0x1

    goto :goto_0

    .line 221
    .end local v2           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v3           #packageMgr:Landroid/content/pm/PackageManager;
    .end local v4           #szApkVer:Ljava/lang/String;
    .end local v5           #szDrvVer:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 223
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "ViPER4Android"

    const-string v8, "Service instance is broken"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 246
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #packageInfo:Landroid/content/pm/PackageInfo;
    .restart local v3       #packageMgr:Landroid/content/pm/PackageManager;
    .restart local v4       #szApkVer:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 248
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "ViPER4Android"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Can not get application version, error = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 251
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v0

    .line 253
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "ViPER4Android"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Driver check error = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 259
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v3           #packageMgr:Landroid/content/pm/PackageManager;
    .end local v4           #szApkVer:Ljava/lang/String;
    :cond_2
    const-string v7, "ViPER4Android"

    const-string v8, "Service instance is null"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static ReadTextFile(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 8
    .parameter "inputStream"

    .prologue
    .line 266
    const/4 v2, 0x0

    .line 269
    .local v2, inputStreamReader:Ljava/io/InputStreamReader;
    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v3, p0, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .end local v2           #inputStreamReader:Ljava/io/InputStreamReader;
    .local v3, inputStreamReader:Ljava/io/InputStreamReader;
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 276
    .local v5, reader:Ljava/io/BufferedReader;
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 280
    .local v6, sb:Ljava/lang/StringBuffer;
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .local v4, line:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 290
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, v3

    .end local v3           #inputStreamReader:Ljava/io/InputStreamReader;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .end local v6           #sb:Ljava/lang/StringBuffer;
    .restart local v2       #inputStreamReader:Ljava/io/InputStreamReader;
    :goto_1
    return-object v7

    .line 271
    :catch_0
    move-exception v1

    .line 273
    .local v1, e1:Ljava/io/UnsupportedEncodingException;
    const-string v7, ""

    goto :goto_1

    .line 282
    .end local v1           #e1:Ljava/io/UnsupportedEncodingException;
    .end local v2           #inputStreamReader:Ljava/io/InputStreamReader;
    .restart local v3       #inputStreamReader:Ljava/io/InputStreamReader;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    .restart local v6       #sb:Ljava/lang/StringBuffer;
    :cond_0
    :try_start_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 283
    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 286
    .end local v4           #line:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 288
    .local v0, e:Ljava/io/IOException;
    const-string v7, ""

    move-object v2, v3

    .end local v3           #inputStreamReader:Ljava/io/InputStreamReader;
    .restart local v2       #inputStreamReader:Ljava/io/InputStreamReader;
    goto :goto_1
.end method

.method private SetFirstRun()V
    .locals 10

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 106
    .local v4, packageMgr:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 107
    .local v3, packageInfo:Landroid/content/pm/PackageInfo;
    const-string v5, ""

    .line 110
    .local v5, szVersion:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 111
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 117
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->GetBasePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 118
    .local v6, szVersionFile:Ljava/lang/String;
    const/4 v1, 0x0

    .line 121
    .local v1, osFirstRunSign:Ljava/io/OutputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 122
    .end local v1           #osFirstRunSign:Ljava/io/OutputStream;
    .local v2, osFirstRunSign:Ljava/io/OutputStream;
    const/16 v8, 0x10

    :try_start_2
    new-array v7, v8, [B

    .line 123
    .local v7, tBlank:[B
    invoke-virtual {v2, v7}, Ljava/io/OutputStream;->write([B)V

    .line 124
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 125
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v2

    .line 131
    .end local v2           #osFirstRunSign:Ljava/io/OutputStream;
    .end local v7           #tBlank:[B
    .restart local v1       #osFirstRunSign:Ljava/io/OutputStream;
    :goto_1
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    goto :goto_1

    .line 127
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #osFirstRunSign:Ljava/io/OutputStream;
    .restart local v2       #osFirstRunSign:Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #osFirstRunSign:Ljava/io/OutputStream;
    .restart local v1       #osFirstRunSign:Ljava/io/OutputStream;
    goto :goto_2

    .line 113
    .end local v1           #osFirstRunSign:Ljava/io/OutputStream;
    .end local v6           #szVersionFile:Ljava/lang/String;
    :catch_2
    move-exception v8

    goto :goto_0
.end method

.method private SetSoftwareActive()V
    .locals 8

    .prologue
    .line 142
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->GetBasePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06009b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, szActiveFile:Ljava/lang/String;
    const/4 v1, 0x0

    .line 146
    .local v1, osActiveSign:Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v1           #osActiveSign:Ljava/io/OutputStream;
    .local v2, osActiveSign:Ljava/io/OutputStream;
    const/16 v5, 0x10

    :try_start_1
    new-array v4, v5, [B

    .line 148
    .local v4, tBlank:[B
    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    .line 149
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 150
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 156
    .end local v2           #osActiveSign:Ljava/io/OutputStream;
    .end local v4           #tBlank:[B
    .restart local v1       #osActiveSign:Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 152
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #osActiveSign:Ljava/io/OutputStream;
    .restart local v2       #osActiveSign:Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #osActiveSign:Ljava/io/OutputStream;
    .restart local v1       #osActiveSign:Ljava/io/OutputStream;
    goto :goto_1
.end method

.method private SubmitInformation()Z
    .locals 16

    .prologue
    .line 160
    const-string v9, ""

    .line 161
    .local v9, szCode:Ljava/lang/String;
    new-instance v11, Ljava/lang/String;

    const-string v12, "0123456789abcdef"

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 162
    .local v6, pchHexTab:[B
    new-instance v7, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-direct {v7, v11, v12}, Ljava/util/Random;-><init>(J)V

    .line 163
    .local v7, rndMachine:Ljava/util/Random;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    const/16 v11, 0x8

    if-lt v5, v11, :cond_0

    .line 173
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 174
    const/4 v5, 0x0

    :goto_1
    const/4 v11, 0x4

    if-lt v5, v11, :cond_2

    .line 184
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 186
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "http://vipersaudio.com/stat/v4a_stat.php?code="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&ver=viper4android-fx"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 187
    .local v10, szURL:Ljava/lang/String;
    const-string v11, "ViPER4Android"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Submit code = \""

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :try_start_0
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, v10}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 192
    .local v3, httpRequest:Lorg/apache/http/client/methods/HttpGet;
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 193
    .local v2, httpClient:Lorg/apache/http/client/HttpClient;
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 194
    .local v4, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    const/16 v12, 0xc8

    if-ne v11, v12, :cond_4

    .line 195
    const/4 v11, 0x1

    .line 202
    .end local v2           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v3           #httpRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #httpResponse:Lorg/apache/http/HttpResponse;
    :goto_2
    return v11

    .line 165
    .end local v10           #szURL:Ljava/lang/String;
    :cond_0
    const/16 v11, 0x100

    invoke-virtual {v7, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    int-to-byte v0, v11

    .line 166
    .local v0, btCode:B
    if-gez v0, :cond_1

    .line 168
    add-int/lit16 v11, v0, 0x100

    int-to-short v8, v11

    .line 169
    .local v8, shortData:S
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "%c%c"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    shr-int/lit8 v15, v8, 0x4

    aget-byte v15, v6, v15

    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    and-int/lit8 v15, v8, 0xf

    aget-byte v15, v6, v15

    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 163
    .end local v8           #shortData:S
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 171
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "%c%c"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    shr-int/lit8 v15, v0, 0x4

    aget-byte v15, v6, v15

    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    and-int/lit8 v15, v0, 0xf

    aget-byte v15, v6, v15

    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    .line 176
    .end local v0           #btCode:B
    :cond_2
    const/16 v11, 0x100

    invoke-virtual {v7, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    int-to-byte v0, v11

    .line 177
    .restart local v0       #btCode:B
    if-gez v0, :cond_3

    .line 179
    add-int/lit16 v11, v0, 0x100

    int-to-short v8, v11

    .line 180
    .restart local v8       #shortData:S
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "%c%c"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    shr-int/lit8 v15, v8, 0x4

    aget-byte v15, v6, v15

    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    and-int/lit8 v15, v8, 0xf

    aget-byte v15, v6, v15

    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 174
    .end local v8           #shortData:S
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 182
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "%c%c"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    shr-int/lit8 v15, v0, 0x4

    aget-byte v15, v6, v15

    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    and-int/lit8 v15, v0, 0xf

    aget-byte v15, v6, v15

    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    .line 196
    .end local v0           #btCode:B
    .restart local v2       #httpClient:Lorg/apache/http/client/HttpClient;
    .restart local v3       #httpRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v4       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v10       #szURL:Ljava/lang/String;
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 198
    .end local v2           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v3           #httpRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #httpResponse:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 200
    .local v1, e:Ljava/lang/Exception;
    const-string v11, "ViPER4Android"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Submit failed, error = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 202
    const/4 v11, 0x0

    goto/16 :goto_2
.end method

.method static synthetic access$0(Lcom/vipercn/viper4android/activity/ViPER4Android;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 306
    iget-object v0, p0, Lcom/vipercn/viper4android/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vipercn/viper4android/activity/ViPER4Android;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 304
    iput p1, p0, Lcom/vipercn/viper4android/activity/ViPER4Android;->mCurrentPage:I

    return-void
.end method

.method static synthetic access$10(Lcom/vipercn/viper4android/activity/ViPER4Android;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 303
    iget-object v0, p0, Lcom/vipercn/viper4android/activity/ViPER4Android;->mProfileList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vipercn/viper4android/activity/ViPER4Android;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 722
    iput-object p1, p0, Lcom/vipercn/viper4android/activity/ViPER4Android;->szSaveProfileNameGlobal:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$12(Lcom/vipercn/viper4android/activity/ViPER4Android;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 722
    iget-object v0, p0, Lcom/vipercn/viper4android/activity/ViPER4Android;->szSaveProfileNameGlobal:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vipercn/viper4android/activity/ViPER4Android;)Z
    .locals 1
    .parameter

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->CheckSoftwareActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/vipercn/viper4android/activity/ViPER4Android;)Z
    .locals 1
    .parameter

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->SubmitInformation()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/vipercn/viper4android/activity/ViPER4Android;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->SetSoftwareActive()V

    return-void
.end method

.method static synthetic access$5(Lcom/vipercn/viper4android/activity/ViPER4Android;)Z
    .locals 1
    .parameter

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/vipercn/viper4android/activity/ViPER4Android;->mKillAllThread:Z

    return v0
.end method

.method static synthetic access$6(Lcom/vipercn/viper4android/activity/ViPER4Android;)Z
    .locals 1
    .parameter

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->ProcessDriverCheck()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7(Lcom/vipercn/viper4android/activity/ViPER4Android;Lcom/vipercn/viper4android/service/HeadsetService;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/vipercn/viper4android/activity/ViPER4Android;->mHeadsetServiceInstance:Lcom/vipercn/viper4android/service/HeadsetService;

    return-void
.end method

.method static synthetic access$8(Lcom/vipercn/viper4android/activity/ViPER4Android;)Lcom/vipercn/viper4android/service/HeadsetService;
    .locals 1
    .parameter

    .prologue
    .line 307
    iget-object v0, p0, Lcom/vipercn/viper4android/activity/ViPER4Android;->mHeadsetServiceInstance:Lcom/vipercn/viper4android/service/HeadsetService;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vipercn/viper4android/activity/ViPER4Android;)I
    .locals 1
    .parameter

    .prologue
    .line 304
    iget v0, p0, Lcom/vipercn/viper4android/activity/ViPER4Android;->mCurrentPage:I

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 26
    .parameter "savedInstanceState"

    .prologue
    .line 377
    invoke-super/range {p0 .. p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 378
    const v20, 0x7f030004

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vipercn/viper4android/activity/ViPER4Android;->setContentView(I)V

    .line 380
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vipercn/viper4android/activity/ViPER4Android;->mKillAllThread:Z

    .line 382
    const-string v20, "ViPER4Android"

    const-string v21, "Acquire root permission ..."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-static {}, Lcom/vipercn/viper4android/activity/Utils;->AcquireRoot()Z

    move-result v20

    if-nez v20, :cond_0

    .line 385
    new-instance v10, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 386
    .local v10, mResult:Landroid/app/AlertDialog$Builder;
    const-string v20, "ViPER4Android"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 387
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f060094

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 388
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f060096

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    new-instance v21, Lcom/vipercn/viper4android/activity/ViPER4Android$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vipercn/viper4android/activity/ViPER4Android$2;-><init>(Lcom/vipercn/viper4android/activity/ViPER4Android;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 394
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 397
    .end local v10           #mResult:Landroid/app/AlertDialog$Builder;
    :cond_0
    const-string v20, "com.vipercn.viper4android.settings"

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 398
    .local v11, prefSettings:Landroid/content/SharedPreferences;
    const-string v20, "viper4android.settings.toolbox"

    const-string v21, "none"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 399
    .local v16, szFunctionalToolbox:Ljava/lang/String;
    const-string v20, "none"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    const-string v20, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 401
    :cond_1
    const-string v20, "ViPER4Android"

    const-string v21, "Proceed toolbox ..."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const-string v20, "toolbox"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/vipercn/viper4android/activity/Utils;->PerformToolboxTest(Ljava/lang/String;Z)Z

    move-result v4

    .line 403
    .local v4, bToolboxFunctional:Z
    const-string v20, "toolbox"

    invoke-static/range {v20 .. v20}, Lcom/vipercn/viper4android/activity/Utils;->GetToolbox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 404
    .local v17, szFunctionalToolboxPathname:Ljava/lang/String;
    if-nez v17, :cond_4

    const/4 v4, 0x0

    .line 411
    :cond_2
    :goto_0
    if-eqz v4, :cond_5

    .line 413
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 414
    .local v6, e:Landroid/content/SharedPreferences$Editor;
    const-string v20, "viper4android.settings.toolbox"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 415
    const-string v20, "viper4android.settings.copycmd"

    const-string v21, "dd"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 416
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 456
    .end local v4           #bToolboxFunctional:Z
    .end local v6           #e:Landroid/content/SharedPreferences$Editor;
    .end local v17           #szFunctionalToolboxPathname:Ljava/lang/String;
    :cond_3
    :goto_1
    new-instance v20, Lcom/vipercn/viper4android/activity/MyAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/vipercn/viper4android/activity/MyAdapter;-><init>(Landroid/app/FragmentManager;Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vipercn/viper4android/activity/ViPER4Android;->pagerAdapter:Lcom/vipercn/viper4android/activity/MyAdapter;

    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getActionBar()Landroid/app/ActionBar;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vipercn/viper4android/activity/ViPER4Android;->actionBar:Landroid/app/ActionBar;

    .line 458
    const v20, 0x7f080008

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vipercn/viper4android/activity/ViPER4Android;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vipercn/viper4android/activity/ViPER4Android;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 460
    const-string v20, "ViPER4Android"

    const-string v21, "Starting service, reason = ViPER4Android::onCreate"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    new-instance v12, Landroid/content/Intent;

    const-class v20, Lcom/vipercn/viper4android/service/HeadsetService;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 462
    .local v12, serviceIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/vipercn/viper4android/activity/ViPER4Android;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vipercn/viper4android/activity/ViPER4Android;->actionBar:Landroid/app/ActionBar;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vipercn/viper4android/activity/ViPER4Android;->actionBar:Landroid/app/ActionBar;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vipercn/viper4android/activity/ViPER4Android;->pagerAdapter:Lcom/vipercn/viper4android/activity/MyAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vipercn/viper4android/activity/MyAdapter;->getEntries()[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    const/16 v20, 0x0

    :goto_2
    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_9

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vipercn/viper4android/activity/ViPER4Android;->viewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vipercn/viper4android/activity/ViPER4Android;->pagerAdapter:Lcom/vipercn/viper4android/activity/MyAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vipercn/viper4android/activity/ViPER4Android;->viewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v20, v0

    new-instance v21, Lcom/vipercn/viper4android/activity/ViPER4Android$5;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vipercn/viper4android/activity/ViPER4Android$5;-><init>(Lcom/vipercn/viper4android/activity/ViPER4Android;)V

    invoke-virtual/range {v20 .. v21}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 521
    invoke-direct/range {p0 .. p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->CheckFirstRun()Z

    move-result v20

    if-eqz v20, :cond_d

    .line 523
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 524
    .local v18, szLocale:Ljava/lang/String;
    const-string v15, "Changelog_"

    .line 525
    .local v15, szChangelog_AssetsName:Ljava/lang/String;
    const-string v20, "zh_CN"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 526
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "zh_CN"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 530
    :goto_3
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, ".txt"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 532
    const-string v14, ""

    .line 533
    .local v14, szChangeLog:Ljava/lang/String;
    const/4 v8, 0x0

    .line 536
    .local v8, isHandle:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 537
    invoke-static {v8}, Lcom/vipercn/viper4android/activity/ViPER4Android;->ReadTextFile(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v14

    .line 538
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 544
    :goto_4
    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 596
    .end local v8           #isHandle:Ljava/io/InputStream;
    .end local v14           #szChangeLog:Ljava/lang/String;
    .end local v15           #szChangelog_AssetsName:Ljava/lang/String;
    .end local v18           #szLocale:Ljava/lang/String;
    :goto_5
    return-void

    .line 407
    .end local v12           #serviceIntent:Landroid/content/Intent;
    .restart local v4       #bToolboxFunctional:Z
    .restart local v17       #szFunctionalToolboxPathname:Ljava/lang/String;
    :cond_4
    const-string v20, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 408
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 420
    :cond_5
    const-string v20, "busybox"

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/vipercn/viper4android/activity/Utils;->PerformToolboxTest(Ljava/lang/String;Z)Z

    move-result v4

    .line 421
    const-string v20, "busybox"

    invoke-static/range {v20 .. v20}, Lcom/vipercn/viper4android/activity/Utils;->GetToolbox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 422
    if-nez v17, :cond_7

    const/4 v4, 0x0

    .line 429
    :cond_6
    :goto_6
    if-eqz v4, :cond_8

    .line 431
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 432
    .restart local v6       #e:Landroid/content/SharedPreferences$Editor;
    const-string v20, "viper4android.settings.toolbox"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 433
    const-string v20, "viper4android.settings.copycmd"

    const-string v21, "cp"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 434
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    .line 425
    .end local v6           #e:Landroid/content/SharedPreferences$Editor;
    :cond_7
    const-string v20, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 426
    const/4 v4, 0x0

    goto :goto_6

    .line 438
    :cond_8
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 439
    .restart local v6       #e:Landroid/content/SharedPreferences$Editor;
    const-string v20, "viper4android.settings.toolbox"

    const-string v21, "none"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 440
    const-string v20, "viper4android.settings.copycmd"

    const-string v21, "dd"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 441
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 443
    new-instance v10, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 444
    .restart local v10       #mResult:Landroid/app/AlertDialog$Builder;
    const-string v20, "ViPER4Android"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 445
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f060095

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 446
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f060096

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    new-instance v21, Lcom/vipercn/viper4android/activity/ViPER4Android$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vipercn/viper4android/activity/ViPER4Android$3;-><init>(Lcom/vipercn/viper4android/activity/ViPER4Android;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 467
    .end local v4           #bToolboxFunctional:Z
    .end local v6           #e:Landroid/content/SharedPreferences$Editor;
    .end local v10           #mResult:Landroid/app/AlertDialog$Builder;
    .end local v17           #szFunctionalToolboxPathname:Ljava/lang/String;
    .restart local v12       #serviceIntent:Landroid/content/Intent;
    :cond_9
    aget-object v7, v21, v20

    .line 469
    .local v7, entry:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vipercn/viper4android/activity/ViPER4Android;->actionBar:Landroid/app/ActionBar;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v19

    .line 470
    .local v19, tab:Landroid/app/ActionBar$Tab;
    new-instance v23, Lcom/vipercn/viper4android/activity/ViPER4Android$4;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vipercn/viper4android/activity/ViPER4Android$4;-><init>(Lcom/vipercn/viper4android/activity/ViPER4Android;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 490
    :try_start_1
    const-class v23, Lcom/vipercn/viper4android/R$string;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v25, "_title"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v13

    .line 491
    .local v13, stringId:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vipercn/viper4android/activity/ViPER4Android;->actionBar:Landroid/app/ActionBar;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 467
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_2

    .line 493
    .end local v13           #stringId:I
    :catch_0
    move-exception v6

    .line 495
    .local v6, e:Ljava/lang/Exception;
    new-instance v20, Ljava/lang/RuntimeException;

    move-object/from16 v0, v20

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v20

    .line 527
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #entry:Ljava/lang/String;
    .end local v19           #tab:Landroid/app/ActionBar$Tab;
    .restart local v15       #szChangelog_AssetsName:Ljava/lang/String;
    .restart local v18       #szLocale:Ljava/lang/String;
    :cond_a
    const-string v20, "zh_TW"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 528
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "zh_TW"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_3

    .line 529
    :cond_b
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "en_US"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_3

    .line 545
    .restart local v8       #isHandle:Ljava/io/InputStream;
    .restart local v14       #szChangeLog:Ljava/lang/String;
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->SetFirstRun()V

    .line 547
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 548
    .local v9, mChglog:Landroid/app/AlertDialog$Builder;
    const v20, 0x7f0600a3

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 549
    invoke-virtual {v9, v14}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 550
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f060096

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 551
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 554
    .end local v8           #isHandle:Ljava/io/InputStream;
    .end local v9           #mChglog:Landroid/app/AlertDialog$Builder;
    .end local v14           #szChangeLog:Ljava/lang/String;
    .end local v15           #szChangelog_AssetsName:Ljava/lang/String;
    .end local v18           #szLocale:Ljava/lang/String;
    :cond_d
    new-instance v3, Ljava/lang/Thread;

    new-instance v20, Lcom/vipercn/viper4android/activity/ViPER4Android$6;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vipercn/viper4android/activity/ViPER4Android$6;-><init>(Lcom/vipercn/viper4android/activity/ViPER4Android;)V

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 569
    .local v3, activeThread:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 571
    new-instance v5, Ljava/lang/Thread;

    new-instance v20, Lcom/vipercn/viper4android/activity/ViPER4Android$7;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vipercn/viper4android/activity/ViPER4Android$7;-><init>(Lcom/vipercn/viper4android/activity/ViPER4Android;)V

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 595
    .local v5, driverCheckThread:Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto/16 :goto_5

    .line 540
    .end local v3           #activeThread:Ljava/lang/Thread;
    .end local v5           #driverCheckThread:Ljava/lang/Thread;
    .restart local v8       #isHandle:Ljava/io/InputStream;
    .restart local v14       #szChangeLog:Ljava/lang/String;
    .restart local v15       #szChangelog_AssetsName:Ljava/lang/String;
    .restart local v18       #szLocale:Ljava/lang/String;
    :catch_1
    move-exception v20

    goto/16 :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 653
    const-string v1, "ViPER4Android"

    const-string v2, "Enter onCreateOptionsMenu()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    invoke-virtual {p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 655
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 656
    const-string v1, "ViPER4Android"

    const-string v2, "Exit onCreateOptionsMenu()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 601
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 603
    const-string v0, "ViPER4Android"

    const-string v1, "Main activity onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vipercn/viper4android/activity/ViPER4Android;->mKillAllThread:Z

    .line 605
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 37
    .parameter "item"

    .prologue
    .line 726
    const-string v34, "com.vipercn.viper4android.settings"

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 728
    .local v20, prefSettings:Landroid/content/SharedPreferences;
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    .line 729
    .local v6, choice:I
    packed-switch v6, :pswitch_data_0

    .line 1287
    const/16 v34, 0x0

    :goto_0
    return v34

    .line 733
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f0600ad

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v33

    .line 734
    .local v33, uri:Landroid/net/Uri;
    new-instance v9, Landroid/content/Intent;

    const-string v34, "android.intent.action.VIEW"

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 735
    .local v9, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/vipercn/viper4android/activity/ViPER4Android;->startActivity(Landroid/content/Intent;)V

    .line 736
    const/16 v34, 0x1

    goto :goto_0

    .line 741
    .end local v9           #intent:Landroid/content/Intent;
    .end local v33           #uri:Landroid/net/Uri;
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 742
    .local v19, packageMgr:Landroid/content/pm/PackageManager;
    const/16 v18, 0x0

    .line 743
    .local v18, packageInfo:Landroid/content/pm/PackageInfo;
    const-string v32, ""

    .line 746
    .local v32, szVersion:Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getPackageName()Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v18

    .line 747
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v32, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 753
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f0600a8

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 754
    .local v22, szAbout:Ljava/lang/String;
    new-instance v34, Ljava/lang/StringBuilder;

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput-object v32, v35, v36

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "\n"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 755
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f0600a9

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 757
    new-instance v13, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 758
    .local v13, mHelp:Landroid/app/AlertDialog$Builder;
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f0600a7

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v13, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 759
    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 760
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f060096

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    new-instance v35, Lcom/vipercn/viper4android/activity/ViPER4Android$9;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vipercn/viper4android/activity/ViPER4Android$9;-><init>(Lcom/vipercn/viper4android/activity/ViPER4Android;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v13, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 765
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f0600ab

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    new-instance v35, Lcom/vipercn/viper4android/activity/ViPER4Android$10;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vipercn/viper4android/activity/ViPER4Android$10;-><init>(Lcom/vipercn/viper4android/activity/ViPER4Android;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v13, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 775
    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 776
    const/16 v34, 0x1

    goto/16 :goto_0

    .line 749
    .end local v13           #mHelp:Landroid/app/AlertDialog$Builder;
    .end local v22           #szAbout:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 751
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v32, "N/A"

    goto/16 :goto_1

    .line 781
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v18           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v19           #packageMgr:Landroid/content/pm/PackageManager;
    .end local v32           #szVersion:Ljava/lang/String;
    :pswitch_2
    new-instance v7, Lcom/vipercn/viper4android/activity/ViPER4Android$11;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/vipercn/viper4android/activity/ViPER4Android$11;-><init>(Lcom/vipercn/viper4android/activity/ViPER4Android;)V

    .line 841
    .local v7, df:Landroid/app/DialogFragment;
    const/16 v34, 0x1

    const/16 v35, 0x0

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v7, v0, v1}, Landroid/app/DialogFragment;->setStyle(II)V

    .line 842
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v34

    const-string v35, "v4astatus"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v7, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 843
    const/16 v34, 0x1

    goto/16 :goto_0

    .line 848
    .end local v7           #df:Landroid/app/DialogFragment;
    :pswitch_3
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "_"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 849
    .local v26, szLocale:Ljava/lang/String;
    const-string v24, "Changelog_"

    .line 850
    .local v24, szChangelog_AssetsName:Ljava/lang/String;
    const-string v34, "zh_CN"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_0

    .line 851
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "zh_CN"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 855
    :goto_2
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, ".txt"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 857
    const-string v23, ""

    .line 858
    .local v23, szChangeLog:Ljava/lang/String;
    const/4 v10, 0x0

    .line 861
    .local v10, isHandle:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 862
    invoke-static {v10}, Lcom/vipercn/viper4android/activity/ViPER4Android;->ReadTextFile(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v23

    .line 863
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 869
    :goto_3
    const-string v34, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_2

    const/16 v34, 0x1

    goto/16 :goto_0

    .line 852
    .end local v10           #isHandle:Ljava/io/InputStream;
    .end local v23           #szChangeLog:Ljava/lang/String;
    :cond_0
    const-string v34, "zh_TW"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_1

    .line 853
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "zh_TW"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto :goto_2

    .line 854
    :cond_1
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "en_US"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto :goto_2

    .line 871
    .restart local v10       #isHandle:Ljava/io/InputStream;
    .restart local v23       #szChangeLog:Ljava/lang/String;
    :cond_2
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 872
    .local v11, mChglog:Landroid/app/AlertDialog$Builder;
    const v34, 0x7f0600a3

    move/from16 v0, v34

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 873
    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 874
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f060096

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v11, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 875
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 876
    const/16 v34, 0x1

    goto/16 :goto_0

    .line 881
    .end local v10           #isHandle:Ljava/io/InputStream;
    .end local v11           #mChglog:Landroid/app/AlertDialog$Builder;
    .end local v23           #szChangeLog:Ljava/lang/String;
    .end local v24           #szChangelog_AssetsName:Ljava/lang/String;
    .end local v26           #szLocale:Ljava/lang/String;
    :pswitch_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v34

    const-string v35, "mounted"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_3

    .line 882
    const/16 v34, 0x1

    goto/16 :goto_0

    .line 883
    :cond_3
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "/ViPER4Android/Profile/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 884
    .local v30, szProfilePath:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Lcom/vipercn/viper4android/activity/Utils;->GetProfileList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vipercn/viper4android/activity/ViPER4Android;->mProfileList:Ljava/util/ArrayList;

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vipercn/viper4android/activity/ViPER4Android;->mProfileList:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    if-gtz v34, :cond_4

    const/16 v34, 0x1

    goto/16 :goto_0

    .line 887
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vipercn/viper4android/activity/ViPER4Android;->mProfileList:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    move/from16 v0, v34

    new-array v4, v0, [Ljava/lang/String;

    .line 888
    .local v4, arrayProfileList:[Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, nPrfIdx:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vipercn/viper4android/activity/ViPER4Android;->mProfileList:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    move/from16 v0, v16

    move/from16 v1, v34

    if-lt v0, v1, :cond_5

    .line 891
    new-instance v34, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 892
    const v35, 0x7f060087

    invoke-virtual/range {v34 .. v35}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v34

    .line 893
    const/high16 v35, 0x7f02

    invoke-virtual/range {v34 .. v35}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v34

    .line 894
    new-instance v35, Lcom/vipercn/viper4android/activity/ViPER4Android$12;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vipercn/viper4android/activity/ViPER4Android$12;-><init>(Lcom/vipercn/viper4android/activity/ViPER4Android;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v34

    .line 935
    const v35, 0x7f060097

    new-instance v36, Lcom/vipercn/viper4android/activity/ViPER4Android$13;

    invoke-direct/range {v36 .. v37}, Lcom/vipercn/viper4android/activity/ViPER4Android$13;-><init>(Lcom/vipercn/viper4android/activity/ViPER4Android;)V

    invoke-virtual/range {v34 .. v36}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v34

    .line 936
    invoke-virtual/range {v34 .. v34}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/app/AlertDialog;->show()V

    .line 938
    const/16 v34, 0x1

    goto/16 :goto_0

    .line 889
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vipercn/viper4android/activity/ViPER4Android;->mProfileList:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    aput-object v34, v4, v16

    .line 888
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 943
    .end local v4           #arrayProfileList:[Ljava/lang/String;
    .end local v16           #nPrfIdx:I
    .end local v30           #szProfilePath:Ljava/lang/String;
    :pswitch_5
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v34

    const-string v35, "mounted"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_6

    .line 944
    const/16 v34, 0x1

    goto/16 :goto_0

    .line 946
    :cond_6
    new-instance v7, Lcom/vipercn/viper4android/activity/ViPER4Android$14;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/vipercn/viper4android/activity/ViPER4Android$14;-><init>(Lcom/vipercn/viper4android/activity/ViPER4Android;)V

    .line 1057
    .restart local v7       #df:Landroid/app/DialogFragment;
    const/16 v34, 0x1

    const/16 v35, 0x0

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v7, v0, v1}, Landroid/app/DialogFragment;->setStyle(II)V

    .line 1058
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v34

    const-string v35, "v4a_saveprofile"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v7, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1059
    const/16 v34, 0x1

    goto/16 :goto_0

    .line 1064
    .end local v7           #df:Landroid/app/DialogFragment;
    :pswitch_6
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v28

    .line 1066
    .local v28, szMenuText:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f06009e

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_7

    .line 1068
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1069
    .local v12, mConfirm:Landroid/app/AlertDialog$Builder;
    const-string v34, "ViPER4Android"

    move-object/from16 v0, v34

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1070
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f06009a

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1071
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f060082

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    new-instance v35, Lcom/vipercn/viper4android/activity/ViPER4Android$15;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vipercn/viper4android/activity/ViPER4Android$15;-><init>(Lcom/vipercn/viper4android/activity/ViPER4Android;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v12, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1086
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f060083

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v12, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1087
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1126
    .end local v12           #mConfirm:Landroid/app/AlertDialog$Builder;
    :goto_5
    const/16 v34, 0x1

    goto/16 :goto_0

    .line 1089
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f06009f

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_8

    .line 1092
    new-instance v34, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1093
    const v35, 0x7f060098

    invoke-virtual/range {v34 .. v35}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v34

    .line 1094
    const/high16 v35, 0x7f02

    invoke-virtual/range {v34 .. v35}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v34

    .line 1095
    const/high16 v35, 0x7f05

    new-instance v36, Lcom/vipercn/viper4android/activity/ViPER4Android$16;

    invoke-direct/range {v36 .. v37}, Lcom/vipercn/viper4android/activity/ViPER4Android$16;-><init>(Lcom/vipercn/viper4android/activity/ViPER4Android;)V

    invoke-virtual/range {v34 .. v36}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v34

    .line 1118
    const v35, 0x7f060097

    new-instance v36, Lcom/vipercn/viper4android/activity/ViPER4Android$17;

    invoke-direct/range {v36 .. v37}, Lcom/vipercn/viper4android/activity/ViPER4Android$17;-><init>(Lcom/vipercn/viper4android/activity/ViPER4Android;)V

    invoke-virtual/range {v34 .. v36}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v34

    .line 1119
    invoke-virtual/range {v34 .. v34}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/app/AlertDialog;->show()V

    goto :goto_5

    .line 1123
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f0600a6

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 1124
    .local v31, szTip:Ljava/lang/String;
    const/16 v34, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/Toast;->show()V

    goto :goto_5

    .line 1131
    .end local v28           #szMenuText:Ljava/lang/String;
    .end local v31           #szTip:Ljava/lang/String;
    :pswitch_7
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v28

    .line 1132
    .restart local v28       #szMenuText:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f060090

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_b

    .line 1134
    const-string v34, "v4a_safemode.sig"

    const-string v35, "com.vipercn.viper4android.settings"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vipercn/viper4android/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v34 .. v36}, Lcom/vipercn/viper4android/activity/Utils;->CreateSignal(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v34

    if-eqz v34, :cond_a

    .line 1136
    new-instance v14, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vipercn/viper4android/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-direct {v14, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1137
    .local v14, mResult:Landroid/app/AlertDialog$Builder;
    const-string v34, "ViPER4Android"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1138
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f060092

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1139
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f060096

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v14, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1140
    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1170
    .end local v14           #mResult:Landroid/app/AlertDialog$Builder;
    :cond_9
    :goto_6
    const/16 v34, 0x1

    goto/16 :goto_0

    .line 1144
    :cond_a
    new-instance v14, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vipercn/viper4android/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-direct {v14, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1145
    .restart local v14       #mResult:Landroid/app/AlertDialog$Builder;
    const-string v34, "ViPER4Android"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1146
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f060093

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1147
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f060096

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v14, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1148
    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_6

    .line 1151
    .end local v14           #mResult:Landroid/app/AlertDialog$Builder;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f060091

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_9

    .line 1153
    const-string v34, "v4a_safemode.sig"

    const-string v35, "com.vipercn.viper4android.settings"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vipercn/viper4android/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v34 .. v36}, Lcom/vipercn/viper4android/activity/Utils;->DeleteSignal(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v34

    if-eqz v34, :cond_c

    .line 1155
    new-instance v14, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vipercn/viper4android/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-direct {v14, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1156
    .restart local v14       #mResult:Landroid/app/AlertDialog$Builder;
    const-string v34, "ViPER4Android"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1157
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f060092

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1158
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f060096

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v14, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1159
    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_6

    .line 1163
    .end local v14           #mResult:Landroid/app/AlertDialog$Builder;
    :cond_c
    new-instance v14, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vipercn/viper4android/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-direct {v14, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1164
    .restart local v14       #mResult:Landroid/app/AlertDialog$Builder;
    const-string v34, "ViPER4Android"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1165
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f060093

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1166
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f060096

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v14, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1167
    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_6

    .line 1175
    .end local v14           #mResult:Landroid/app/AlertDialog$Builder;
    .end local v28           #szMenuText:Ljava/lang/String;
    :pswitch_8
    const-string v34, "viper4android.settings.compatiblemode"

    const-string v35, "global"

    move-object/from16 v0, v20

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1176
    .local v25, szCompatibleMode:Ljava/lang/String;
    const/16 v17, 0x0

    .line 1177
    .local v17, nSelIdx:I
    const-string v34, "global"

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_d

    const/16 v17, 0x0

    .line 1179
    :goto_7
    new-instance v34, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1180
    const v35, 0x7f06009c

    invoke-virtual/range {v34 .. v35}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v34

    .line 1181
    const/high16 v35, 0x7f02

    invoke-virtual/range {v34 .. v35}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v34

    .line 1182
    const v35, 0x7f050004

    new-instance v36, Lcom/vipercn/viper4android/activity/ViPER4Android$18;

    invoke-direct/range {v36 .. v37}, Lcom/vipercn/viper4android/activity/ViPER4Android$18;-><init>(Lcom/vipercn/viper4android/activity/ViPER4Android;)V

    move-object/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v17

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v34

    .line 1205
    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v21

    .line 1206
    .local v21, selectDialog:Landroid/app/Dialog;
    invoke-virtual/range {v21 .. v21}, Landroid/app/Dialog;->show()V

    .line 1207
    const/16 v34, 0x1

    goto/16 :goto_0

    .line 1178
    .end local v21           #selectDialog:Landroid/app/Dialog;
    :cond_d
    const/16 v17, 0x1

    goto :goto_7

    .line 1212
    .end local v17           #nSelIdx:I
    .end local v25           #szCompatibleMode:Ljava/lang/String;
    :pswitch_9
    const-string v34, "viper4android.settings.show_notify_icon"

    const/16 v35, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 1213
    .local v5, bEnableNotify:Z
    if-eqz v5, :cond_e

    const/4 v5, 0x0

    .line 1219
    :goto_8
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1220
    .local v8, e:Landroid/content/SharedPreferences$Editor;
    const-string v34, "viper4android.settings.show_notify_icon"

    move-object/from16 v0, v34

    invoke-interface {v8, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1221
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1222
    if-eqz v5, :cond_f

    new-instance v34, Landroid/content/Intent;

    const-string v35, "com.vipercn.viper4android.SHOWNOTIFY"

    invoke-direct/range {v34 .. v35}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/vipercn/viper4android/activity/ViPER4Android;->sendBroadcast(Landroid/content/Intent;)V

    .line 1224
    :goto_9
    const/16 v34, 0x1

    goto/16 :goto_0

    .line 1213
    .end local v8           #e:Landroid/content/SharedPreferences$Editor;
    :cond_e
    const/4 v5, 0x1

    goto :goto_8

    .line 1223
    .restart local v8       #e:Landroid/content/SharedPreferences$Editor;
    :cond_f
    new-instance v34, Landroid/content/Intent;

    const-string v35, "com.vipercn.viper4android.CANCELNOTIFY"

    invoke-direct/range {v34 .. v35}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/vipercn/viper4android/activity/ViPER4Android;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_9

    .line 1229
    .end local v5           #bEnableNotify:Z
    .end local v8           #e:Landroid/content/SharedPreferences$Editor;
    :pswitch_a
    const-string v34, "viper4android.settings.lock_effect"

    const-string v35, "none"

    move-object/from16 v0, v20

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1230
    .local v27, szLockedEffect:Ljava/lang/String;
    const/4 v15, -0x1

    .line 1231
    .local v15, nLockIndex:I
    const-string v34, "none"

    move-object/from16 v0, v27

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_10

    const/4 v15, 0x0

    .line 1238
    :goto_a
    const/16 v34, 0x4

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v34, 0x0

    .line 1239
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f06007c

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v29, v34

    const/16 v34, 0x1

    .line 1240
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f06007d

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v29, v34

    const/16 v34, 0x2

    .line 1241
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f06007f

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v29, v34

    const/16 v34, 0x3

    .line 1242
    invoke-virtual/range {p0 .. p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f06007e

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v29, v34

    .line 1245
    .local v29, szModeList:[Ljava/lang/String;
    new-instance v34, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1246
    const v35, 0x7f060081

    invoke-virtual/range {v34 .. v35}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v34

    .line 1247
    const/high16 v35, 0x7f02

    invoke-virtual/range {v34 .. v35}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v34

    .line 1248
    new-instance v35, Lcom/vipercn/viper4android/activity/ViPER4Android$19;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vipercn/viper4android/activity/ViPER4Android$19;-><init>(Lcom/vipercn/viper4android/activity/ViPER4Android;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v15, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v34

    .line 1281
    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v21

    .line 1282
    .restart local v21       #selectDialog:Landroid/app/Dialog;
    invoke-virtual/range {v21 .. v21}, Landroid/app/Dialog;->show()V

    .line 1284
    const/16 v34, 0x1

    goto/16 :goto_0

    .line 1232
    .end local v21           #selectDialog:Landroid/app/Dialog;
    .end local v29           #szModeList:[Ljava/lang/String;
    :cond_10
    const-string v34, "headset"

    move-object/from16 v0, v27

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_11

    const/4 v15, 0x1

    goto/16 :goto_a

    .line 1233
    :cond_11
    const-string v34, "speaker"

    move-object/from16 v0, v27

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_12

    const/4 v15, 0x2

    goto/16 :goto_a

    .line 1234
    :cond_12
    const-string v34, "bluetooth"

    move-object/from16 v0, v27

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_13

    const/4 v15, 0x3

    goto/16 :goto_a

    .line 1235
    :cond_13
    const/4 v15, 0x4

    goto/16 :goto_a

    .line 865
    .end local v15           #nLockIndex:I
    .end local v27           #szLockedEffect:Ljava/lang/String;
    .restart local v10       #isHandle:Ljava/io/InputStream;
    .restart local v23       #szChangeLog:Ljava/lang/String;
    .restart local v24       #szChangelog_AssetsName:Ljava/lang/String;
    .restart local v26       #szLocale:Ljava/lang/String;
    :catch_1
    move-exception v34

    goto/16 :goto_3

    .line 729
    :pswitch_data_0
    .packed-switch 0x7f080009
        :pswitch_a
        :pswitch_9
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 14
    .parameter "menu"

    .prologue
    const v13, 0x7f08000d

    const v12, 0x7f06009f

    const/4 v9, 0x0

    const v11, 0x7f08000f

    .line 663
    const-string v8, "com.vipercn.viper4android.settings"

    invoke-virtual {p0, v8, v9}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 664
    .local v4, preferences:Landroid/content/SharedPreferences;
    const-string v8, "viper4android.settings.show_notify_icon"

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 665
    .local v1, bEnableNotify:Z
    const-string v8, "viper4android.settings.lock_effect"

    const-string v9, "none"

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 667
    .local v5, szLockedEffect:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v8, "ViPER4Android"

    const-string v9, "show_notify = true, menu checked."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :goto_0
    const-string v8, "ViPER4Android"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "lock_effect = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const-string v8, "v4a_safemode.sig"

    invoke-static {v8}, Lcom/vipercn/viper4android/activity/Utils;->CheckSignal(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 673
    invoke-interface {p1, v13}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 674
    .local v3, drvMode:Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060091

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 675
    .local v7, szModeTitle:Ljava/lang/String;
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 684
    :goto_1
    iget-object v8, p0, Lcom/vipercn/viper4android/activity/ViPER4Android;->mHeadsetServiceInstance:Lcom/vipercn/viper4android/service/HeadsetService;

    if-nez v8, :cond_2

    .line 686
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 687
    .local v2, drvInstItem:Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 688
    .local v6, szMenuTitle:Ljava/lang/String;
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 719
    :goto_2
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v8

    return v8

    .line 668
    .end local v2           #drvInstItem:Landroid/view/MenuItem;
    .end local v3           #drvMode:Landroid/view/MenuItem;
    .end local v6           #szMenuTitle:Ljava/lang/String;
    .end local v7           #szModeTitle:Ljava/lang/String;
    :cond_0
    const-string v8, "ViPER4Android"

    const-string v9, "show_notify = false, menu unchecked."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 679
    :cond_1
    invoke-interface {p1, v13}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 680
    .restart local v3       #drvMode:Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060090

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 681
    .restart local v7       #szModeTitle:Ljava/lang/String;
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_1

    .line 692
    :cond_2
    iget-object v8, p0, Lcom/vipercn/viper4android/activity/ViPER4Android;->mHeadsetServiceInstance:Lcom/vipercn/viper4android/service/HeadsetService;

    invoke-virtual {v8}, Lcom/vipercn/viper4android/service/HeadsetService;->GetDriverIsReady()Z

    move-result v0

    .line 693
    .local v0, bDriverIsReady:Z
    if-eqz v0, :cond_3

    .line 695
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 696
    .restart local v2       #drvInstItem:Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f06009e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 697
    .restart local v6       #szMenuTitle:Ljava/lang/String;
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_2

    .line 701
    .end local v2           #drvInstItem:Landroid/view/MenuItem;
    .end local v6           #szMenuTitle:Ljava/lang/String;
    :cond_3
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 702
    .restart local v2       #drvInstItem:Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 703
    .restart local v6       #szMenuTitle:Ljava/lang/String;
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 610
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 612
    const-string v2, "ViPER4Android"

    const-string v3, "Main activity onResume()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iput-boolean v4, p0, Lcom/vipercn/viper4android/activity/ViPER4Android;->mKillAllThread:Z

    .line 615
    new-instance v0, Lcom/vipercn/viper4android/activity/ViPER4Android$8;

    invoke-direct {v0, p0}, Lcom/vipercn/viper4android/activity/ViPER4Android$8;-><init>(Lcom/vipercn/viper4android/activity/ViPER4Android;)V

    .line 645
    .local v0, connection:Landroid/content/ServiceConnection;
    const-string v2, "ViPER4Android"

    const-string v3, "Binding service, reason = ViPER4Android::onResume"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vipercn/viper4android/service/HeadsetService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 647
    .local v1, serviceIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1, v0, v4}, Lcom/vipercn/viper4android/activity/ViPER4Android;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 648
    return-void
.end method
