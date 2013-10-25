.class public Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;
.super Ljava/lang/Object;
.source "StaticEnvironment.java"


# static fields
.field private static m_bDriverInited:Z

.field private static m_bDriverIsOK:Z

.field private static m_bEnvironmentInited:Z

.field private static m_bVBoXPrepared:Z

.field private static m_szDriverVersion:Ljava/lang/String;

.field private static m_szExternalStoragePath:Ljava/lang/String;

.field private static m_szV4AESKernel:Ljava/lang/String;

.field private static m_szV4AESProfile:Ljava/lang/String;

.field private static m_szV4AESRoot:Ljava/lang/String;

.field private static m_szVBoXPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    sput-boolean v1, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_bEnvironmentInited:Z

    .line 22
    sput-boolean v1, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_bVBoXPrepared:Z

    .line 23
    const-string v0, ""

    sput-object v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szVBoXPath:Ljava/lang/String;

    .line 25
    const-string v0, ""

    sput-object v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szExternalStoragePath:Ljava/lang/String;

    .line 26
    const-string v0, ""

    sput-object v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESRoot:Ljava/lang/String;

    .line 27
    const-string v0, ""

    sput-object v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESKernel:Ljava/lang/String;

    .line 28
    const-string v0, ""

    sput-object v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESProfile:Ljava/lang/String;

    .line 30
    sput-boolean v1, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_bDriverInited:Z

    .line 31
    sput-boolean v1, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_bDriverIsOK:Z

    .line 32
    const-string v0, ""

    sput-object v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szDriverVersion:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static CheckWritable(Ljava/lang/String;)Z
    .locals 7
    .parameter "szFileName"

    .prologue
    const/4 v3, 0x0

    .line 164
    const/16 v4, 0x10

    :try_start_0
    new-array v0, v4, [B

    .line 165
    .local v0, baBlank:[B
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 166
    .local v2, fosOutput:Ljava/io/FileOutputStream;
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 167
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 168
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 169
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 170
    const/4 v3, 0x1

    .line 180
    .end local v0           #baBlank:[B
    .end local v2           #fosOutput:Ljava/io/FileOutputStream;
    :goto_0
    return v3

    .line 172
    :catch_0
    move-exception v1

    .line 174
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v4, "ViPER4Android"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "FileNotFoundException, msg = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 177
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 179
    .local v1, e:Ljava/io/IOException;
    const-string v4, "ViPER4Android"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IOException, msg = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static DriverInited()Z
    .locals 1

    .prologue
    .line 329
    sget-boolean v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_bDriverInited:Z

    return v0
.end method

.method public static DriverIsUsable()Z
    .locals 1

    .prologue
    .line 334
    sget-boolean v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_bDriverIsOK:Z

    return v0
.end method

.method public static DriverVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 339
    sget-object v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szDriverVersion:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0.0.0.0"

    .line 340
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szDriverVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method public static GetESPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    sget-object v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szExternalStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method public static GetV4AKernelPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    sget-object v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESKernel:Ljava/lang/String;

    return-object v0
.end method

.method public static GetV4AProfilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    sget-object v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESProfile:Ljava/lang/String;

    return-object v0
.end method

.method public static GetV4ARootPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    sget-object v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESRoot:Ljava/lang/String;

    return-object v0
.end method

.method public static GetVBoXExecutablePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    sget-object v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szVBoXPath:Ljava/lang/String;

    return-object v0
.end method

.method public static GetVBoXUsable()Z
    .locals 1

    .prologue
    .line 280
    sget-boolean v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_bVBoXPrepared:Z

    return v0
.end method

.method public static InitEnvironment(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 272
    sget-boolean v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_bEnvironmentInited:Z

    if-eqz v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 273
    :cond_0
    invoke-static {p0}, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->ProceedVBoX(Landroid/content/Context;)V

    .line 274
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->ProceedExternalStoragePath()V

    .line 275
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_bEnvironmentInited:Z

    goto :goto_0
.end method

.method private static InstallVBox(Landroid/content/Context;)Z
    .locals 13
    .parameter "ctx"

    .prologue
    const/high16 v12, 0x3f00

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 36
    const-string v9, "ViPER4Android"

    const-string v10, "Installing vbox ..."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const-string v9, "ViPER4Android"

    const-string v10, "Extracting vbox to local"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const-string v9, "vbox"

    const-string v10, "vbox"

    invoke-static {p0, v9, v10}, Lcom/vipercn/viper4android_v2/activity/Utils;->CopyAssetsToLocal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 42
    const-string v8, "ViPER4Android"

    const-string v9, "Can not copy vbox to local dir"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    :goto_0
    return v7

    .line 47
    :cond_1
    invoke-static {p0}, Lcom/vipercn/viper4android_v2/activity/Utils;->GetBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 48
    .local v6, szVBoxPath:Ljava/lang/String;
    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 50
    const-string v8, "ViPER4Android"

    const-string v9, "GetBasePath() failed"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 53
    :cond_2
    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "vbox"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 55
    :goto_1
    const-string v9, "ViPER4Android"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "vbox path = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v2, 0x0

    .line 60
    .local v2, bVBoXInstalled:Z
    const-string v9, "ViPER4Android"

    const-string v10, "Now install vbox with viper\'s method"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-static {v8}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->OpenRootShell(Z)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 68
    const/4 v1, 0x1

    .line 69
    .local v1, bResult:Z
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "toolbox cat "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " > /data/vbox"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v12}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->SendShellCommand(Ljava/lang/String;F)Z

    move-result v9

    and-int/2addr v1, v9

    .line 70
    const-string v9, "ViPER4Android"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Command return = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->GetLastReturnValue()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string v9, "toolbox chmod 777 /data/vbox"

    invoke-static {v9, v12}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->SendShellCommand(Ljava/lang/String;F)Z

    move-result v9

    and-int/2addr v1, v9

    .line 72
    const-string v9, "ViPER4Android"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Command return = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->GetLastReturnValue()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v9, "/data/vbox"

    const/high16 v10, 0x3f80

    invoke-static {v9, v10}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->SendShellCommand(Ljava/lang/String;F)Z

    move-result v9

    and-int/2addr v1, v9

    .line 75
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->GetLastReturnValue()I

    move-result v5

    .line 76
    .local v5, nVBoXExitValue:I
    if-eqz v1, :cond_4

    if-nez v5, :cond_4

    .line 78
    const-string v9, "ViPER4Android"

    const-string v10, "Good, vbox installed"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v2, 0x1

    .line 86
    :goto_2
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->CloseShell()V

    .line 93
    .end local v1           #bResult:Z
    .end local v5           #nVBoXExitValue:I
    :goto_3
    if-eqz v2, :cond_6

    move v7, v8

    .line 94
    goto/16 :goto_0

    .line 54
    .end local v2           #bVBoXInstalled:Z
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "/vbox"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 83
    .restart local v1       #bResult:Z
    .restart local v2       #bVBoXInstalled:Z
    .restart local v5       #nVBoXExitValue:I
    :cond_4
    const-string v9, "ViPER4Android"

    const-string v10, "Bad, vbox install failed"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v2, 0x0

    goto :goto_2

    .line 90
    .end local v1           #bResult:Z
    .end local v5           #nVBoXExitValue:I
    :cond_5
    const-string v9, "ViPER4Android"

    const-string v10, "Can\'t open root shell"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 97
    :cond_6
    const-string v9, "ViPER4Android"

    const-string v10, "Now install vbox with roottools"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sput-boolean v8, Lcom/stericson/RootTools/RootTools;->useRoot:Z

    .line 100
    sput-boolean v8, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    .line 102
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 103
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isAccessGiven()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 105
    const-string v9, "/data/vbox"

    invoke-static {v6, v9, v7, v7}, Lcom/stericson/RootTools/RootTools;->copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v9

    if-nez v9, :cond_7

    .line 107
    :try_start_0
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->closeAllShells()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 109
    :goto_4
    const-string v8, "ViPER4Android"

    const-string v9, "Bad, vbox install failed"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 113
    :cond_7
    const/4 v0, 0x0

    .line 114
    .local v0, bError:Z
    new-instance v3, Lcom/stericson/RootTools/execution/CommandCapture;

    new-array v9, v8, [Ljava/lang/String;

    const-string v10, "toolbox chmod 777 /data/vbox"

    aput-object v10, v9, v7

    invoke-direct {v3, v7, v9}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 115
    .local v3, ccSetPermission:Lcom/stericson/RootTools/execution/CommandCapture;
    const/4 v9, 0x1

    :try_start_1
    invoke-static {v9}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/execution/Shell;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v9

    invoke-virtual {v9}, Lcom/stericson/RootTools/execution/Command;->waitForFinish()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/stericson/RootTools/exceptions/RootDeniedException; {:try_start_1 .. :try_end_1} :catch_3

    .line 121
    :goto_5
    :try_start_2
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->closeAllShells()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 124
    :goto_6
    if-eqz v0, :cond_8

    .line 126
    const-string v8, "ViPER4Android"

    const-string v9, "Bad, vbox install failed"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 116
    :catch_0
    move-exception v4

    .local v4, e:Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    goto :goto_5

    .line 117
    .end local v4           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v4

    .local v4, e:Ljava/io/IOException;
    const/4 v0, 0x1

    goto :goto_5

    .line 118
    .end local v4           #e:Ljava/io/IOException;
    :catch_2
    move-exception v4

    .local v4, e:Ljava/util/concurrent/TimeoutException;
    const/4 v0, 0x1

    goto :goto_5

    .line 119
    .end local v4           #e:Ljava/util/concurrent/TimeoutException;
    :catch_3
    move-exception v4

    .local v4, e:Lcom/stericson/RootTools/exceptions/RootDeniedException;
    const/4 v0, 0x1

    goto :goto_5

    .line 130
    .end local v4           #e:Lcom/stericson/RootTools/exceptions/RootDeniedException;
    :cond_8
    const-string v7, "ViPER4Android"

    const-string v9, "Good, vbox installed"

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 132
    goto/16 :goto_0

    .line 108
    .end local v0           #bError:Z
    .end local v3           #ccSetPermission:Lcom/stericson/RootTools/execution/CommandCapture;
    :catch_4
    move-exception v8

    goto :goto_4

    .line 122
    .restart local v0       #bError:Z
    .restart local v3       #ccSetPermission:Lcom/stericson/RootTools/execution/CommandCapture;
    :catch_5
    move-exception v9

    goto :goto_6
.end method

.method public static IsEnvironmentInited()Z
    .locals 1

    .prologue
    .line 267
    sget-boolean v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_bEnvironmentInited:Z

    return v0
.end method

.method private static ProceedExternalStoragePath()V
    .locals 7

    .prologue
    .line 187
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, szExternalStoragePathName:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 192
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v4, v5, :cond_1

    .line 194
    const-string v4, "/emulated/0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "/emulated/0/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 195
    :cond_0
    const-string v4, "/emulated/0"

    const-string v5, "/emulated/legacy"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 197
    :cond_1
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    sput-object v3, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szExternalStoragePath:Ljava/lang/String;

    .line 199
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szExternalStoragePath:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "ViPER4Android/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESRoot:Ljava/lang/String;

    .line 200
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESRoot:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "Kernel/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESKernel:Ljava/lang/String;

    .line 201
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESRoot:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "Profile/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESProfile:Ljava/lang/String;

    .line 263
    :goto_1
    return-void

    .line 198
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szExternalStoragePath:Ljava/lang/String;

    goto :goto_0

    .line 206
    :cond_3
    const/4 v1, 0x0

    .line 207
    .local v1, bPathFromSDKIsWorking:Z
    const/4 v0, 0x0

    .line 208
    .local v0, bPathFromLegacyIsWorking:Z
    const-string v2, ""

    .line 210
    .local v2, szExtPath:Ljava/lang/String;
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v2, v3

    .line 212
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "v4a_test_file"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 213
    const-string v4, "ViPER4Android"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Now checking for external storage writable, file = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-static {v2}, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->CheckWritable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v1, 0x1

    .line 217
    :cond_4
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v2, v3

    .line 219
    :goto_3
    const-string v4, "/emulated/0/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 221
    const-string v4, "/emulated/0/"

    const-string v5, "/emulated/legacy/"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 222
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "v4a_test_file"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 223
    const-string v4, "ViPER4Android"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Now checking for external storage writable, file = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-static {v2}, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->CheckWritable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v0, 0x1

    .line 228
    :cond_5
    if-eqz v0, :cond_9

    .line 230
    const-string v4, "/emulated/0"

    const-string v5, "/emulated/legacy"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 231
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    sput-object v3, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szExternalStoragePath:Ljava/lang/String;

    .line 233
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szExternalStoragePath:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "ViPER4Android/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESRoot:Ljava/lang/String;

    .line 234
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESRoot:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "Kernel/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESKernel:Ljava/lang/String;

    .line 235
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESRoot:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "Profile/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESProfile:Ljava/lang/String;

    .line 236
    const-string v4, "ViPER4Android"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "External storage path = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szExternalStoragePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const-string v4, "ViPER4Android"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ViPER4Android root path = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESRoot:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const-string v4, "ViPER4Android"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ViPER4Android kernel path = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESKernel:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-string v4, "ViPER4Android"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ViPER4Android profile path = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESProfile:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 211
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 218
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 232
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szExternalStoragePath:Ljava/lang/String;

    goto/16 :goto_4

    .line 242
    :cond_9
    if-eqz v1, :cond_b

    .line 244
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    sput-object v3, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szExternalStoragePath:Ljava/lang/String;

    .line 246
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szExternalStoragePath:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "ViPER4Android/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESRoot:Ljava/lang/String;

    .line 247
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESRoot:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "Kernel/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESKernel:Ljava/lang/String;

    .line 248
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESRoot:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "Profile/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESProfile:Ljava/lang/String;

    .line 249
    const-string v4, "ViPER4Android"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "External storage path = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szExternalStoragePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string v4, "ViPER4Android"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ViPER4Android root path = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESRoot:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const-string v4, "ViPER4Android"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ViPER4Android kernel path = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESKernel:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const-string v4, "ViPER4Android"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ViPER4Android profile path = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESProfile:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 245
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szExternalStoragePath:Ljava/lang/String;

    goto/16 :goto_5

    .line 256
    :cond_b
    const-string v4, "ViPER4Android"

    const-string v5, "Really terrible thing, external storage detection failed, v4a may malfunctioned"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    sput-object v3, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szExternalStoragePath:Ljava/lang/String;

    .line 259
    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szExternalStoragePath:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "ViPER4Android/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESRoot:Ljava/lang/String;

    .line 260
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESRoot:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "Kernel/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESKernel:Ljava/lang/String;

    .line 261
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESRoot:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "Profile/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szV4AESProfile:Ljava/lang/String;

    goto/16 :goto_1

    .line 258
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szExternalStoragePath:Ljava/lang/String;

    goto :goto_6
.end method

.method private static ProceedVBoX(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    const/4 v2, 0x1

    .line 138
    const-string v0, "ViPER4Android"

    const-string v1, "Checking vbox"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v0, "/data/vbox"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->ExecuteWithoutShell(Ljava/lang/String;Ljava/io/File;)I

    move-result v0

    if-nez v0, :cond_0

    .line 141
    const-string v0, "ViPER4Android"

    const-string v1, "Good, vbox is ok"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    sput-boolean v2, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_bVBoXPrepared:Z

    .line 143
    const-string v0, "/data/vbox"

    sput-object v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szVBoXPath:Ljava/lang/String;

    .line 158
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-static {p0}, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->InstallVBox(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->CloseShell()V

    .line 151
    sput-boolean v2, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_bVBoXPrepared:Z

    .line 152
    const-string v0, "/data/vbox"

    sput-object v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szVBoXPath:Ljava/lang/String;

    goto :goto_0

    .line 155
    :cond_1
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ShellCommand;->CloseShell()V

    .line 156
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_bVBoXPrepared:Z

    .line 157
    const-string v0, ""

    sput-object v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szVBoXPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public static SetDriverStatus(ZLjava/lang/String;)V
    .locals 3
    .parameter "bDriverIsOK"
    .parameter "szDriverVersion"

    .prologue
    .line 311
    const-string v0, "ViPER4Android"

    const-string v1, "Got driver status"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const-string v0, "ViPER4Android"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Static old = ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_bDriverIsOK:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szDriverVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string v0, "ViPER4Android"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Static new = ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-string v0, "ViPER4Android"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current status = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_bDriverInited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    sget-boolean v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_bDriverInited:Z

    if-eqz v0, :cond_3

    .line 317
    sget-boolean v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_bDriverIsOK:Z

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-boolean p0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_bDriverIsOK:Z

    .line 318
    :cond_0
    sget-object v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szDriverVersion:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szDriverVersion:Ljava/lang/String;

    const-string v1, "0.0.0.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 319
    :cond_1
    sput-object p1, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szDriverVersion:Ljava/lang/String;

    .line 325
    :cond_2
    :goto_0
    return-void

    .line 322
    :cond_3
    sput-boolean p0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_bDriverIsOK:Z

    .line 323
    sput-object p1, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_szDriverVersion:Ljava/lang/String;

    .line 324
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vipercn/viper4android_v2/activity/StaticEnvironment;->m_bDriverInited:Z

    goto :goto_0
.end method
