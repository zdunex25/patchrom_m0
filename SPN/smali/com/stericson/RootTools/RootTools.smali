.class public Lcom/stericson/RootTools/RootTools;
.super Ljava/lang/Object;
.source "RootTools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericson/RootTools/RootTools$Result;
    }
.end annotation


# static fields
.field public static debugMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static EnoughSpaceOnSdCard(J)Z
    .locals 1
    .parameter "updateSize"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 250
    invoke-static {p0, p1}, Lcom/stericson/RootTools/RootTools;->hasEnoughSpaceOnSdCard(J)Z

    move-result v0

    return v0
.end method

.method public static accessGiven()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 218
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isAccessGiven()Z

    move-result v0

    return v0
.end method

.method public static busyboxAvailable()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 184
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v0

    return v0
.end method

.method public static getMounts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/stericson/RootTools/Mount;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 76
    invoke-static {}, Lcom/stericson/RootTools/InternalMethods;->instance()Lcom/stericson/RootTools/InternalMethods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stericson/RootTools/InternalMethods;->getMounts()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/stericson/RootTools/InternalVariables;->mounts:Ljava/util/ArrayList;

    .line 77
    sget-object v0, Lcom/stericson/RootTools/InternalVariables;->mounts:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/stericson/RootTools/InternalVariables;->mounts:Ljava/util/ArrayList;

    return-object v0

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
.end method

.method public static getPath()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 50
    sget-object v0, Lcom/stericson/RootTools/InternalVariables;->path:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/stericson/RootTools/InternalVariables;->path:Ljava/util/Set;

    .line 54
    :goto_0
    return-object v0

    .line 53
    :cond_0
    invoke-static {}, Lcom/stericson/RootTools/InternalMethods;->instance()Lcom/stericson/RootTools/InternalMethods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stericson/RootTools/InternalMethods;->returnPath()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    sget-object v0, Lcom/stericson/RootTools/InternalVariables;->path:Ljava/util/Set;

    goto :goto_0

    .line 56
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
.end method

.method public static getSpace(Ljava/lang/String;)I
    .locals 10
    .parameter "path"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 454
    sput-object p0, Lcom/stericson/RootTools/InternalVariables;->getSpaceFor:Ljava/lang/String;

    .line 455
    const/4 v1, 0x0

    .line 456
    .local v1, found:Z
    new-array v0, v9, [Ljava/lang/String;

    const-string v4, "df"

    aput-object v4, v0, v8

    .line 457
    .local v0, commands:[Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/InternalMethods;->instance()Lcom/stericson/RootTools/InternalMethods;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/stericson/RootTools/InternalMethods;->doExec([Ljava/lang/String;)V

    .line 459
    sget-object v4, Lcom/stericson/RootTools/InternalVariables;->space:[Ljava/lang/String;

    array-length v5, v4

    move v6, v8

    :goto_0
    if-lt v6, v5, :cond_0

    .line 469
    const/4 v4, -0x1

    :goto_1
    return v4

    .line 459
    :cond_0
    aget-object v3, v4, v6

    .line 460
    .local v3, spaceSearch:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 462
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v9

    .line 461
    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 463
    .local v2, space:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    .line 465
    .end local v2           #space:Ljava/lang/String;
    :cond_1
    const-string v7, "used,"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 466
    const/4 v1, 0x1

    .line 459
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public static hasEnoughSpaceOnSdCard(J)Z
    .locals 10
    .parameter "updateSize"

    .prologue
    const/4 v9, 0x0

    .line 264
    sget-object v7, Lcom/stericson/RootTools/InternalVariables;->TAG:Ljava/lang/String;

    const-string v8, "Checking SDcard size and that it is mounted as RW"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    .line 266
    .local v6, status:Ljava/lang/String;
    const-string v7, "mounted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    move v7, v9

    .line 273
    :goto_0
    return v7

    .line 269
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 270
    .local v4, path:Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 271
    .local v5, stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v2, v7

    .line 272
    .local v2, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    .line 273
    .local v0, availableBlocks:J
    mul-long v7, v0, v2

    cmp-long v7, p0, v7

    if-gez v7, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    move v7, v9

    goto :goto_0
.end method

.method public static installBinary(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "sourceId"
    .parameter "destName"

    .prologue
    .line 350
    const-string v0, "700"

    invoke-static {p0, p1, p2, v0}, Lcom/stericson/RootTools/RootTools;->installBinary(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static installBinary(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "sourceId"
    .parameter "destName"
    .parameter "mode"

    .prologue
    .line 322
    :try_start_0
    new-instance v1, Lcom/stericson/RootTools/Installer;

    invoke-direct {v1, p0}, Lcom/stericson/RootTools/Installer;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    .local v1, installer:Lcom/stericson/RootTools/Installer;
    invoke-virtual {v1, p1, p2, p3}, Lcom/stericson/RootTools/Installer;->installBinary(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .end local v1           #installer:Lcom/stericson/RootTools/Installer;
    :goto_0
    return v2

    .line 324
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 325
    .local v0, ex:Ljava/io/IOException;
    sget-boolean v2, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v2, :cond_0

    .line 326
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 328
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isAccessGiven()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 225
    sget-object v0, Lcom/stericson/RootTools/InternalVariables;->TAG:Ljava/lang/String;

    const-string v1, "Checking for Root access"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    sput-boolean v3, Lcom/stericson/RootTools/InternalVariables;->accessGiven:Z

    .line 227
    invoke-static {}, Lcom/stericson/RootTools/InternalMethods;->instance()Lcom/stericson/RootTools/InternalMethods;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "id"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/stericson/RootTools/InternalMethods;->doExec([Ljava/lang/String;)V

    .line 229
    sget-boolean v0, Lcom/stericson/RootTools/InternalVariables;->accessGiven:Z

    if-eqz v0, :cond_0

    move v0, v4

    .line 232
    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0
.end method

.method public static isBusyboxAvailable()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 191
    sget-object v3, Lcom/stericson/RootTools/InternalVariables;->TAG:Ljava/lang/String;

    const-string v4, "Checking for BusyBox"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :try_start_0
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getPath()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    move v3, v6

    .line 208
    :goto_1
    return v3

    .line 193
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 194
    .local v2, paths:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/busybox"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Found BusyBox here: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 197
    const/4 v3, 0x1

    goto :goto_1

    .line 199
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "BusyBox was NOT found here: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    .end local v1           #file:Ljava/io/File;
    .end local v2           #paths:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 202
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/stericson/RootTools/InternalVariables;->TAG:Ljava/lang/String;

    const-string v4, "BusyBox was not found, more information MAY be available with Debugging on."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    sget-boolean v3, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v3, :cond_2

    .line 204
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    move v3, v6

    .line 206
    goto :goto_1
.end method

.method public static isRootAvailable()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 163
    sget-object v3, Lcom/stericson/RootTools/InternalVariables;->TAG:Ljava/lang/String;

    const-string v4, "Checking for Root binary"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v3, 0x6

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "/sbin/"

    aput-object v3, v1, v7

    const-string v3, "/system/bin/"

    aput-object v3, v1, v8

    const/4 v3, 0x2

    const-string v4, "/system/xbin/"

    aput-object v4, v1, v3

    const/4 v3, 0x3

    .line 165
    const-string v4, "/data/local/xbin/"

    aput-object v4, v1, v3

    const/4 v3, 0x4

    const-string v4, "/data/local/bin/"

    aput-object v4, v1, v3

    const/4 v3, 0x5

    const-string v4, "/system/sd/xbin/"

    aput-object v4, v1, v3

    .line 166
    .local v1, places:[Ljava/lang/String;
    array-length v3, v1

    move v4, v7

    :goto_0
    if-lt v4, v3, :cond_0

    move v3, v7

    .line 174
    :goto_1
    return v3

    .line 166
    :cond_0
    aget-object v2, v1, v4

    .line 167
    .local v2, where:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "su"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Root was found here: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    move v3, v8

    .line 170
    goto :goto_1

    .line 172
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Root was NOT found here: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 166
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 489
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "TAG"
    .parameter "msg"

    .prologue
    .line 493
    sget-boolean v0, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v0, :cond_0

    .line 494
    if-eqz p0, :cond_1

    .line 495
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    sget-object v0, Lcom/stericson/RootTools/InternalVariables;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static offerBusyBox(Landroid/app/Activity;I)Landroid/content/Intent;
    .locals 3
    .parameter "activity"
    .parameter "requestCode"

    .prologue
    .line 111
    sget-object v1, Lcom/stericson/RootTools/InternalVariables;->TAG:Ljava/lang/String;

    const-string v2, "Launching Market for BusyBox"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v0, Landroid/content/Intent;

    .line 113
    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=stericson.busybox"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 112
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 114
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 115
    return-object v0
.end method

.method public static offerBusyBox(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 94
    sget-object v1, Lcom/stericson/RootTools/InternalVariables;->TAG:Ljava/lang/String;

    const-string v2, "Launching Market for BusyBox"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v0, Landroid/content/Intent;

    .line 96
    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=stericson.busybox"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 95
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 97
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 98
    return-void
.end method

.method public static offerSuperUser(Landroid/app/Activity;I)Landroid/content/Intent;
    .locals 3
    .parameter "activity"
    .parameter "requestCode"

    .prologue
    .line 141
    sget-object v1, Lcom/stericson/RootTools/InternalVariables;->TAG:Ljava/lang/String;

    const-string v2, "Launching Market for SuperUser"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v0, Landroid/content/Intent;

    .line 143
    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=com.noshufou.android.su"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 142
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 144
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 145
    return-object v0
.end method

.method public static offerSuperUser(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 124
    sget-object v1, Lcom/stericson/RootTools/InternalVariables;->TAG:Ljava/lang/String;

    const-string v2, "Launching Market for SuperUser"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v0, Landroid/content/Intent;

    .line 126
    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=com.noshufou.android.su"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 125
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 127
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 128
    return-void
.end method

.method public static remount(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "file"
    .parameter "mountType"

    .prologue
    .line 296
    new-instance v0, Lcom/stericson/RootTools/Remounter;

    invoke-direct {v0}, Lcom/stericson/RootTools/Remounter;-><init>()V

    .line 298
    .local v0, remounter:Lcom/stericson/RootTools/Remounter;
    invoke-virtual {v0, p0, p1}, Lcom/stericson/RootTools/Remounter;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static rootAvailable()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 156
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v0

    return v0
.end method

.method public static sendShell(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "command"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lcom/stericson/RootTools/RootToolsException;
        }
    .end annotation

    .prologue
    .line 441
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/stericson/RootTools/RootTools;->sendShell(Ljava/lang/String;Lcom/stericson/RootTools/RootTools$Result;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static sendShell(Ljava/lang/String;Lcom/stericson/RootTools/RootTools$Result;)Ljava/util/List;
    .locals 2
    .parameter "command"
    .parameter "result"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/stericson/RootTools/RootTools$Result;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lcom/stericson/RootTools/RootToolsException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 421
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p0, v0, v1

    invoke-static {v0, v1, p1}, Lcom/stericson/RootTools/RootTools;->sendShell([Ljava/lang/String;ILcom/stericson/RootTools/RootTools$Result;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static sendShell([Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .parameter "commands"
    .parameter "sleepTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lcom/stericson/RootTools/RootToolsException;
        }
    .end annotation

    .prologue
    .line 397
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/stericson/RootTools/RootTools;->sendShell([Ljava/lang/String;ILcom/stericson/RootTools/RootTools$Result;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static sendShell([Ljava/lang/String;ILcom/stericson/RootTools/RootTools$Result;)Ljava/util/List;
    .locals 1
    .parameter "commands"
    .parameter "sleepTime"
    .parameter "result"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I",
            "Lcom/stericson/RootTools/RootTools$Result;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lcom/stericson/RootTools/RootToolsException;
        }
    .end annotation

    .prologue
    .line 374
    new-instance v0, Lcom/stericson/RootTools/Executer;

    invoke-direct {v0}, Lcom/stericson/RootTools/Executer;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/stericson/RootTools/Executer;->sendShell([Ljava/lang/String;ILcom/stericson/RootTools/IResult;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
