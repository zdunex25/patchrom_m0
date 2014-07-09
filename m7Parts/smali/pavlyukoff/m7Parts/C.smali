.class public Lpavlyukoff/m7Parts/C;
.super Ljava/lang/Object;
.source "C.java"


# static fields
.field public static CmdMountDataRW:Ljava/lang/String; = null

.field public static CmdMountFactoryRW:Ljava/lang/String; = null

.field public static CmdMountSystemRW:Ljava/lang/String; = null

.field public static final SCRIPT_NAME:Ljava/lang/String; = "surunner.sh"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, " mount -o remount,rw /dev/block/platform/omap/omap_hsmmc.0/by-name/system /system ; "

    sput-object v0, Lpavlyukoff/m7Parts/C;->CmdMountSystemRW:Ljava/lang/String;

    .line 21
    const-string v0, " mount -o remount,rw /dev/block/platform/omap/omap_hsmmc.0/by-name/userdata /data ; "

    sput-object v0, Lpavlyukoff/m7Parts/C;->CmdMountDataRW:Ljava/lang/String;

    .line 22
    const-string v0, " mount -o remount,rw /dev/block/platform/omap/omap_hsmmc.0/by-name/efs /factory ; "

    sput-object v0, Lpavlyukoff/m7Parts/C;->CmdMountFactoryRW:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBusyBoxPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "paramContext"

    .prologue
    .line 27
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "busybox"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDataStorageDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .parameter "paramContext"

    .prologue
    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static hasUnpackBusyBox(Landroid/content/Context;)Z
    .locals 2
    .parameter "paramContext"

    .prologue
    .line 37
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lpavlyukoff/m7Parts/C;->getBusyBoxPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static haveRoot()Z
    .locals 1

    .prologue
    .line 42
    const-string v0, "echo 1"

    invoke-static {v0}, Lpavlyukoff/m7Parts/C;->runSuCommandReturnBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static mountSystemRW()Z
    .locals 5

    .prologue
    .line 47
    const/4 v3, 0x0

    .line 50
    .local v3, res:Z
    :try_start_0
    sget-object v4, Lpavlyukoff/m7Parts/C;->CmdMountSystemRW:Ljava/lang/String;

    invoke-static {v4}, Lpavlyukoff/m7Parts/C;->runSuCommandNoScriptWrapper(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 51
    .local v0, j:I
    if-nez v0, :cond_0

    .line 53
    const/4 v3, 0x1

    .line 69
    .end local v0           #j:I
    :cond_0
    :goto_0
    return v3

    .line 56
    :catch_0
    move-exception v1

    .line 60
    .local v1, localIOException:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 61
    const/4 v3, 0x0

    goto :goto_0

    .line 64
    .end local v1           #localIOException:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 67
    .local v2, localInterruptedException:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public static runSuCommand(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .parameter "paramContext"
    .parameter "paramString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {p0, p1}, Lpavlyukoff/m7Parts/C;->runSuCommandAsync(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    return v0
.end method

.method public static runSuCommandAsync(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Process;
    .locals 5
    .parameter "paramContext"
    .parameter "paramString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 81
    new-instance v1, Ljava/io/DataOutputStream;

    const-string v2, "surunner.sh"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 82
    .local v1, localDataOutputStream:Ljava/io/DataOutputStream;
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 84
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    .line 85
    .local v0, arrayOfString:[Ljava/lang/String;
    const-string v2, "su"

    aput-object v2, v0, v3

    .line 86
    const/4 v2, 0x1

    const-string v3, "-c"

    aput-object v3, v0, v2

    .line 87
    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ". "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "surunner.sh"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 88
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    return-object v2
.end method

.method public static runSuCommandNoScriptWrapper(Ljava/lang/String;)I
    .locals 3
    .parameter "paramString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 94
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    .line 95
    .local v0, arrayOfString:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "su"

    aput-object v2, v0, v1

    .line 96
    const/4 v1, 0x1

    const-string v2, "-c"

    aput-object v2, v0, v1

    .line 97
    const/4 v1, 0x2

    aput-object p0, v0, v1

    .line 98
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v1

    return v1
.end method

.method public static runSuCommandReturnBoolean(Ljava/lang/String;)Z
    .locals 8
    .parameter "paramString"

    .prologue
    .line 103
    const/4 v5, 0x0

    .line 106
    .local v5, res:Z
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-string v7, "su"

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 107
    .local v4, localProcess:Ljava/lang/Process;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 108
    .local v1, localDataOutputStream:Ljava/io/DataOutputStream;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 110
    const-string v6, "exit\n"

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 112
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 113
    .local v0, j:I
    if-nez v0, :cond_0

    .line 115
    const/4 v5, 0x1

    .line 131
    .end local v0           #j:I
    .end local v1           #localDataOutputStream:Ljava/io/DataOutputStream;
    .end local v4           #localProcess:Ljava/lang/Process;
    :cond_0
    :goto_0
    return v5

    .line 118
    :catch_0
    move-exception v3

    .line 122
    .local v3, localInterruptedException:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 123
    const/4 v5, 0x0

    goto :goto_0

    .line 126
    .end local v3           #localInterruptedException:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    .line 129
    .local v2, localIOException:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static unpackFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "paramContext"
    .parameter "paramString1"
    .parameter "paramString2"

    .prologue
    .line 136
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 137
    :cond_0
    const-string p2, "777"

    .line 138
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .local v2, localFile:Ljava/io/File;
    const/16 v6, 0x2800

    new-array v0, v6, [B

    .line 142
    .local v0, arrayOfByte:[B
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "files/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 143
    .local v5, localInputStream:Ljava/io/InputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v6, 0x0

    invoke-direct {v3, v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 146
    .local v3, localFileOutputStream:Ljava/io/FileOutputStream;
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 147
    .local v1, i:I
    if-gez v1, :cond_2

    .line 149
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 150
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 151
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "chmod "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lpavlyukoff/m7Parts/C;->runSuCommandReturnBoolean(Ljava/lang/String;)Z

    .line 152
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 162
    .end local v1           #i:I
    .end local v3           #localFileOutputStream:Ljava/io/FileOutputStream;
    .end local v5           #localInputStream:Ljava/io/InputStream;
    :goto_1
    return-object v6

    .line 154
    .restart local v1       #i:I
    .restart local v3       #localFileOutputStream:Ljava/io/FileOutputStream;
    .restart local v5       #localInputStream:Ljava/io/InputStream;
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    .end local v1           #i:I
    .end local v3           #localFileOutputStream:Ljava/io/FileOutputStream;
    .end local v5           #localInputStream:Ljava/io/InputStream;
    :catch_0
    move-exception v4

    .line 160
    .local v4, localIOException:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 162
    const-string v6, ""

    goto :goto_1
.end method

.method public static unpackFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "paramContext"
    .parameter "paramString1"
    .parameter "paramString2"
    .parameter "paramString3"

    .prologue
    .line 167
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 168
    :cond_0
    const-string p3, "777"

    .line 169
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .local v2, localFile:Ljava/io/File;
    const/16 v7, 0x2800

    new-array v0, v7, [B

    .line 173
    .local v0, arrayOfByte:[B
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "files/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 174
    .local v5, localInputStream:Ljava/io/InputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v7, 0x0

    invoke-direct {v3, v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 177
    .local v3, localFileOutputStream:Ljava/io/FileOutputStream;
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 178
    .local v1, i:I
    if-gez v1, :cond_3

    .line 180
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 181
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 182
    const/4 v6, 0x0

    .line 183
    .local v6, str:Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 184
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "chown "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 185
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "chmod "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lpavlyukoff/m7Parts/C;->runSuCommandReturnBoolean(Ljava/lang/String;)Z

    .line 186
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 196
    .end local v1           #i:I
    .end local v3           #localFileOutputStream:Ljava/io/FileOutputStream;
    .end local v5           #localInputStream:Ljava/io/InputStream;
    .end local v6           #str:Ljava/lang/String;
    :goto_1
    return-object v7

    .line 188
    .restart local v1       #i:I
    .restart local v3       #localFileOutputStream:Ljava/io/FileOutputStream;
    .restart local v5       #localInputStream:Ljava/io/InputStream;
    :cond_3
    const/4 v7, 0x0

    invoke-virtual {v3, v0, v7, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    .end local v1           #i:I
    .end local v3           #localFileOutputStream:Ljava/io/FileOutputStream;
    .end local v5           #localInputStream:Ljava/io/InputStream;
    :catch_0
    move-exception v4

    .line 194
    .local v4, localIOException:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 196
    const-string v7, ""

    goto :goto_1
.end method

.method public static warpCmdWithBusybox(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "paramContext"
    .parameter "paramString"

    .prologue
    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lpavlyukoff/m7Parts/C;->getBusyBoxPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
