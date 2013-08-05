.class public final Lcom/stericson/RootTools/internal/RootToolsInternalMethods;
.super Ljava/lang/Object;
.source "RootToolsInternalMethods.java"


# instance fields
.field instantiated:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->instantiated:Z

    .line 64
    return-void
.end method

.method public static getInstance()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    invoke-direct {v0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;-><init>()V

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->setRim(Lcom/stericson/RootTools/internal/RootToolsInternalMethods;)V

    .line 69
    return-void
.end method


# virtual methods
.method public checkUtil(Ljava/lang/String;)Z
    .locals 8
    .parameter "util"

    .prologue
    const/4 v5, 0x1

    .line 352
    invoke-static {p1}, Lcom/stericson/RootTools/RootTools;->findBinary(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .local v0, binaryPaths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v6, Lcom/stericson/RootTools/RootTools;->lastFoundBinaryPaths:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 358
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 360
    .local v2, path:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->getFilePermissionsSymlinks(Ljava/lang/String;)Lcom/stericson/RootTools/containers/Permissions;

    move-result-object v4

    .line 363
    .local v4, permissions:Lcom/stericson/RootTools/containers/Permissions;
    if-eqz v4, :cond_0

    .line 367
    invoke-virtual {v4}, Lcom/stericson/RootTools/containers/Permissions;->getPermissions()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-le v6, v7, :cond_2

    .line 368
    invoke-virtual {v4}, Lcom/stericson/RootTools/containers/Permissions;->getPermissions()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 372
    .local v3, permission:Ljava/lang/String;
    :goto_0
    const-string v6, "755"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "777"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "775"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 375
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/stericson/RootTools/RootTools;->utilPath:Ljava/lang/String;

    .line 382
    .end local v0           #binaryPaths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #path:Ljava/lang/String;
    .end local v3           #permission:Ljava/lang/String;
    .end local v4           #permissions:Lcom/stericson/RootTools/containers/Permissions;
    :goto_1
    return v5

    .line 370
    .restart local v0       #binaryPaths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #path:Ljava/lang/String;
    .restart local v4       #permissions:Lcom/stericson/RootTools/containers/Permissions;
    :cond_2
    invoke-virtual {v4}, Lcom/stericson/RootTools/containers/Permissions;->getPermissions()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #permission:Ljava/lang/String;
    goto :goto_0

    .line 382
    .end local v0           #binaryPaths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #path:Ljava/lang/String;
    .end local v3           #permission:Ljava/lang/String;
    .end local v4           #permissions:Lcom/stericson/RootTools/containers/Permissions;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 10
    .parameter "source"
    .parameter "destination"
    .parameter "remountAsRw"
    .parameter "preserveFileAttributes"

    .prologue
    .line 269
    const/4 v4, 0x1

    .line 273
    .local v4, result:Z
    if-eqz p3, :cond_0

    .line 274
    :try_start_0
    const-string v5, "RW"

    invoke-static {p2, v5}, Lcom/stericson/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    .line 278
    :cond_0
    const-string v5, "cp"

    invoke-virtual {p0, v5}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->checkUtil(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 279
    const-string v5, "cp command is available!"

    invoke-static {v5}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 281
    if-eqz p4, :cond_3

    .line 282
    new-instance v0, Lcom/stericson/RootTools/execution/CommandCapture;

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cp -fp "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v0, v5, v6}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 283
    .local v0, command:Lcom/stericson/RootTools/execution/CommandCapture;
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v5

    invoke-virtual {v5}, Lcom/stericson/RootTools/execution/Command;->waitForFinish()V

    .line 328
    .end local v0           #command:Lcom/stericson/RootTools/execution/CommandCapture;
    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 329
    const-string v5, "RO"

    invoke-static {p2, v5}, Lcom/stericson/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    .line 336
    :cond_2
    :goto_1
    return v4

    .line 285
    :cond_3
    new-instance v0, Lcom/stericson/RootTools/execution/CommandCapture;

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cp -f "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v0, v5, v6}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 286
    .restart local v0       #command:Lcom/stericson/RootTools/execution/CommandCapture;
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v5

    invoke-virtual {v5}, Lcom/stericson/RootTools/execution/Command;->waitForFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 331
    .end local v0           #command:Lcom/stericson/RootTools/execution/CommandCapture;
    :catch_0
    move-exception v1

    .line 332
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 333
    const/4 v4, 0x0

    goto :goto_1

    .line 289
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    :try_start_1
    const-string v5, "busybox"

    invoke-virtual {p0, v5}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->checkUtil(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "cp"

    const-string v6, "busybox"

    invoke-virtual {p0, v5, v6}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->hasUtil(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 290
    const-string v5, "busybox cp command is available!"

    invoke-static {v5}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 292
    if-eqz p4, :cond_5

    .line 293
    new-instance v0, Lcom/stericson/RootTools/execution/CommandCapture;

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "busybox cp -fp "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v0, v5, v6}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 294
    .restart local v0       #command:Lcom/stericson/RootTools/execution/CommandCapture;
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v5

    invoke-virtual {v5}, Lcom/stericson/RootTools/execution/Command;->waitForFinish()V

    goto/16 :goto_0

    .line 296
    .end local v0           #command:Lcom/stericson/RootTools/execution/CommandCapture;
    :cond_5
    new-instance v0, Lcom/stericson/RootTools/execution/CommandCapture;

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "busybox cp -f "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v0, v5, v6}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 297
    .restart local v0       #command:Lcom/stericson/RootTools/execution/CommandCapture;
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v5

    invoke-virtual {v5}, Lcom/stericson/RootTools/execution/Command;->waitForFinish()V

    goto/16 :goto_0

    .line 301
    .end local v0           #command:Lcom/stericson/RootTools/execution/CommandCapture;
    :cond_6
    const-string v5, "cat"

    invoke-virtual {p0, v5}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->checkUtil(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 302
    const-string v5, "cp is not available, use cat!"

    invoke-static {v5}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 304
    const/4 v2, -0x1

    .line 305
    .local v2, filePermission:I
    if-eqz p4, :cond_7

    .line 307
    invoke-virtual {p0, p1}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getFilePermissionsSymlinks(Ljava/lang/String;)Lcom/stericson/RootTools/containers/Permissions;

    move-result-object v3

    .line 308
    .local v3, permissions:Lcom/stericson/RootTools/containers/Permissions;
    invoke-virtual {v3}, Lcom/stericson/RootTools/containers/Permissions;->getPermissions()I

    move-result v2

    .line 313
    .end local v3           #permissions:Lcom/stericson/RootTools/containers/Permissions;
    :cond_7
    new-instance v0, Lcom/stericson/RootTools/execution/CommandCapture;

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cat "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " > "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v0, v5, v6}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 314
    .restart local v0       #command:Lcom/stericson/RootTools/execution/CommandCapture;
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v5

    invoke-virtual {v5}, Lcom/stericson/RootTools/execution/Command;->waitForFinish()V

    .line 316
    if-eqz p4, :cond_1

    .line 318
    new-instance v0, Lcom/stericson/RootTools/execution/CommandCapture;

    .end local v0           #command:Lcom/stericson/RootTools/execution/CommandCapture;
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "chmod "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v0, v5, v6}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 319
    .restart local v0       #command:Lcom/stericson/RootTools/execution/CommandCapture;
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v5

    invoke-virtual {v5}, Lcom/stericson/RootTools/execution/Command;->waitForFinish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 322
    .end local v0           #command:Lcom/stericson/RootTools/execution/CommandCapture;
    .end local v2           #filePermission:I
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public deleteFileOrDirectory(Ljava/lang/String;Z)Z
    .locals 8
    .parameter "target"
    .parameter "remountAsRw"

    .prologue
    .line 396
    const/4 v2, 0x1

    .line 400
    .local v2, result:Z
    if-eqz p2, :cond_0

    .line 401
    :try_start_0
    const-string v3, "RW"

    invoke-static {p1, v3}, Lcom/stericson/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    .line 404
    :cond_0
    const-string v3, "rm"

    const-string v4, "toolbox"

    invoke-virtual {p0, v3, v4}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->hasUtil(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 405
    const-string v3, "rm command is available!"

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 407
    new-instance v0, Lcom/stericson/RootTools/execution/CommandCapture;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rm -r "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v0, v3, v4}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 408
    .local v0, command:Lcom/stericson/RootTools/execution/CommandCapture;
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v3

    invoke-virtual {v3}, Lcom/stericson/RootTools/execution/Command;->waitForFinish()V

    .line 409
    invoke-virtual {v0}, Lcom/stericson/RootTools/execution/CommandCapture;->exitCode()I

    move-result v3

    if-eqz v3, :cond_1

    .line 410
    const-string v3, "target not exist or unable to delete file"

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 411
    const/4 v2, 0x0

    .line 427
    .end local v0           #command:Lcom/stericson/RootTools/execution/CommandCapture;
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 428
    const-string v3, "RO"

    invoke-static {p1, v3}, Lcom/stericson/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    .line 435
    :cond_2
    :goto_1
    return v2

    .line 414
    :cond_3
    const-string v3, "busybox"

    invoke-virtual {p0, v3}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->checkUtil(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "rm"

    const-string v4, "busybox"

    invoke-virtual {p0, v3, v4}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->hasUtil(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 415
    const-string v3, "busybox cp command is available!"

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 417
    new-instance v0, Lcom/stericson/RootTools/execution/CommandCapture;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "busybox rm -rf "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v0, v3, v4}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 418
    .restart local v0       #command:Lcom/stericson/RootTools/execution/CommandCapture;
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v3

    invoke-virtual {v3}, Lcom/stericson/RootTools/execution/Command;->waitForFinish()V

    .line 419
    invoke-virtual {v0}, Lcom/stericson/RootTools/execution/CommandCapture;->exitCode()I

    move-result v3

    if-eqz v3, :cond_1

    .line 420
    const-string v3, "target not exist or unable to delete file"

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    const/4 v2, 0x0

    goto :goto_0

    .line 430
    .end local v0           #command:Lcom/stericson/RootTools/execution/CommandCapture;
    :catch_0
    move-exception v1

    .line 431
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 432
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public exists(Ljava/lang/String;)Z
    .locals 11
    .parameter "file"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 450
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 452
    .local v5, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$1;

    new-array v8, v6, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ls "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-direct {v0, p0, v7, v8, v5}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$1;-><init>(Lcom/stericson/RootTools/internal/RootToolsInternalMethods;I[Ljava/lang/String;Ljava/util/List;)V

    .line 465
    .local v0, command:Lcom/stericson/RootTools/execution/Command;
    :try_start_0
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->isAnyShellOpen()Z

    move-result v8

    if-nez v8, :cond_1

    .line 466
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v8

    invoke-virtual {v8}, Lcom/stericson/RootTools/execution/Command;->waitForFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 477
    .local v4, line:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 510
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #line:Ljava/lang/String;
    :goto_1
    return v6

    .line 468
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->getOpenShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v8

    invoke-virtual {v8}, Lcom/stericson/RootTools/execution/Command;->waitForFinish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 470
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    move v6, v7

    .line 472
    goto :goto_1

    .line 485
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_2
    const/4 v8, 0x0

    :try_start_2
    invoke-static {v8}, Lcom/stericson/RootTools/RootTools;->closeShell(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 488
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 491
    :try_start_3
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v8

    invoke-virtual {v8}, Lcom/stericson/RootTools/execution/Command;->waitForFinish()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 499
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 500
    .local v2, final_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 502
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 504
    .restart local v4       #line:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    .line 493
    .end local v2           #final_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #line:Ljava/lang/String;
    :catch_1
    move-exception v1

    .restart local v1       #e:Ljava/lang/Exception;
    move v6, v7

    .line 495
    goto :goto_1

    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #final_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    move v6, v7

    .line 510
    goto :goto_1

    .line 486
    .end local v2           #final_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_2
    move-exception v8

    goto :goto_2
.end method

.method public findBinary(Ljava/lang/String;)Z
    .locals 13
    .parameter "binaryName"

    .prologue
    .line 596
    const/4 v3, 0x0

    .line 597
    .local v3, found:Z
    sget-object v11, Lcom/stericson/RootTools/RootTools;->lastFoundBinaryPaths:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 599
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 601
    .local v6, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Checking for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 604
    :try_start_0
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getPath()Ljava/util/Set;

    move-result-object v8

    .line 605
    .local v8, paths:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 607
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 608
    .local v7, path:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/stericson/RootTools/RootTools;->exists(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 609
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " was found here: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 610
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    const/4 v3, 0x1

    goto :goto_0

    .line 613
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " was NOT found here: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 617
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #path:Ljava/lang/String;
    .end local v8           #paths:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 618
    .local v2, ex:Ljava/util/concurrent/TimeoutException;
    const-string v11, "TimeoutException!!!"

    invoke-static {v11}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 623
    .end local v2           #ex:Ljava/util/concurrent/TimeoutException;
    :cond_1
    :goto_1
    if-nez v3, :cond_3

    .line 624
    const-string v11, "Trying second method"

    invoke-static {v11}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 625
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Checking for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 626
    const/16 v11, 0x8

    new-array v9, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "/sbin/"

    aput-object v12, v9, v11

    const/4 v11, 0x1

    const-string v12, "/system/bin/"

    aput-object v12, v9, v11

    const/4 v11, 0x2

    const-string v12, "/system/xbin/"

    aput-object v12, v9, v11

    const/4 v11, 0x3

    const-string v12, "/data/local/xbin/"

    aput-object v12, v9, v11

    const/4 v11, 0x4

    const-string v12, "/data/local/bin/"

    aput-object v12, v9, v11

    const/4 v11, 0x5

    const-string v12, "/system/sd/xbin/"

    aput-object v12, v9, v11

    const/4 v11, 0x6

    const-string v12, "/system/bin/failsafe/"

    aput-object v12, v9, v11

    const/4 v11, 0x7

    const-string v12, "/data/local/"

    aput-object v12, v9, v11

    .line 628
    .local v9, places:[Ljava/lang/String;
    move-object v0, v9

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2
    if-ge v4, v5, :cond_3

    aget-object v10, v0, v4

    .line 629
    .local v10, where:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/stericson/RootTools/RootTools;->exists(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 630
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " was found here: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 631
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    const/4 v3, 0x1

    .line 628
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 619
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v9           #places:[Ljava/lang/String;
    .end local v10           #where:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 620
    .local v1, e:Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " was not found, more information MAY be available with Debugging on."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 634
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v9       #places:[Ljava/lang/String;
    .restart local v10       #where:Ljava/lang/String;
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " was NOT found here: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 639
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v9           #places:[Ljava/lang/String;
    .end local v10           #where:Ljava/lang/String;
    :cond_3
    sget-boolean v11, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v11, :cond_4

    .line 641
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 643
    .restart local v7       #path:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Paths: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 647
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #path:Ljava/lang/String;
    :cond_4
    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 649
    sget-object v11, Lcom/stericson/RootTools/RootTools;->lastFoundBinaryPaths:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 651
    return v3
.end method

.method public fixUtil(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "util"
    .parameter "utilPath"

    .prologue
    .line 528
    :try_start_0
    const-string v4, "/system"

    const-string v5, "rw"

    invoke-static {v4, v5}, Lcom/stericson/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    .line 530
    invoke-static {p1}, Lcom/stericson/RootTools/RootTools;->findBinary(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 531
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 532
    .local v3, paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Lcom/stericson/RootTools/RootTools;->lastFoundBinaryPaths:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 533
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 535
    .local v2, path:Ljava/lang/String;
    new-instance v0, Lcom/stericson/RootTools/execution/CommandCapture;

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " rm "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v0, v4, v5}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 536
    .local v0, command:Lcom/stericson/RootTools/execution/CommandCapture;
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v4

    invoke-virtual {v4}, Lcom/stericson/RootTools/execution/Command;->waitForFinish()V

    goto :goto_0

    .line 544
    .end local v0           #command:Lcom/stericson/RootTools/execution/CommandCapture;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #path:Ljava/lang/String;
    .end local v3           #paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    .line 545
    :goto_1
    return-void

    .line 539
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Lcom/stericson/RootTools/execution/CommandCapture;

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ln -s "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " /system/bin/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " chmod 0755 /system/bin/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v0, v4, v5}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 540
    .restart local v0       #command:Lcom/stericson/RootTools/execution/CommandCapture;
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v4

    invoke-virtual {v4}, Lcom/stericson/RootTools/execution/Command;->waitForFinish()V

    .line 543
    .end local v0           #command:Lcom/stericson/RootTools/execution/CommandCapture;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const-string v4, "/system"

    const-string v5, "ro"

    invoke-static {v4, v5}, Lcom/stericson/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public fixUtils([Ljava/lang/String;)Z
    .locals 5
    .parameter "utils"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 564
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 565
    .local v3, util:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->checkUtil(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 566
    const-string v4, "busybox"

    invoke-virtual {p0, v4}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->checkUtil(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 567
    const-string v4, "busybox"

    invoke-virtual {p0, v3, v4}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->hasUtil(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 568
    sget-object v4, Lcom/stericson/RootTools/RootTools;->utilPath:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->fixUtil(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 571
    :cond_1
    const-string v4, "toolbox"

    invoke-virtual {p0, v4}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->checkUtil(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 572
    const-string v4, "toolbox"

    invoke-virtual {p0, v3, v4}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->hasUtil(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 573
    sget-object v4, Lcom/stericson/RootTools/RootTools;->utilPath:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->fixUtil(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 576
    :cond_2
    const/4 v4, 0x0

    .line 582
    .end local v3           #util:Ljava/lang/String;
    :goto_2
    return v4

    :cond_3
    const/4 v4, 0x1

    goto :goto_2
.end method

.method public getBusyBoxApplets(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .parameter "path"
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
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 668
    if-eqz p1, :cond_1

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 669
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 675
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 677
    .local v1, results:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$2;

    const/4 v2, 0x3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "busybox --list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$2;-><init>(Lcom/stericson/RootTools/internal/RootToolsInternalMethods;I[Ljava/lang/String;Ljava/util/List;)V

    .line 689
    .local v0, command:Lcom/stericson/RootTools/execution/Command;
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    .line 690
    invoke-virtual {v0}, Lcom/stericson/RootTools/execution/Command;->waitForFinish()V

    .line 692
    return-object v1

    .line 670
    .end local v0           #command:Lcom/stericson/RootTools/execution/Command;
    .end local v1           #results:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    if-nez p1, :cond_0

    .line 672
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Path is null, please specifiy a path"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getBusyBoxVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "path"

    .prologue
    .line 700
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 702
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 705
    :cond_0
    const-string v2, "Getting BusyBox Version"

    invoke-static {v2}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 706
    const-string v2, ""

    sput-object v2, Lcom/stericson/RootTools/internal/InternalVariables;->busyboxVersion:Ljava/lang/String;

    .line 708
    :try_start_0
    new-instance v0, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$3;

    const/4 v2, 0x4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "busybox"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, p0, v2, v3}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$3;-><init>(Lcom/stericson/RootTools/internal/RootToolsInternalMethods;I[Ljava/lang/String;)V

    .line 723
    .local v0, command:Lcom/stericson/RootTools/execution/Command;
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    .line 724
    invoke-virtual {v0}, Lcom/stericson/RootTools/execution/Command;->waitForFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    sget-object v2, Lcom/stericson/RootTools/internal/InternalVariables;->busyboxVersion:Ljava/lang/String;

    .end local v0           #command:Lcom/stericson/RootTools/execution/Command;
    :goto_0
    return-object v2

    .line 726
    :catch_0
    move-exception v1

    .line 727
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "BusyBox was not found, more information MAY be available with Debugging on."

    invoke-static {v2}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 728
    const-string v2, ""

    goto :goto_0
.end method

.method public getConvertedSpace(Ljava/lang/String;)J
    .locals 8
    .parameter "spaceStr"

    .prologue
    .line 741
    const-wide/high16 v3, 0x3ff0

    .line 743
    .local v3, multiplier:D
    :try_start_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 744
    .local v5, sb:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 746
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 747
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_4

    const/16 v6, 0x2e

    if-eq v0, v6, :cond_4

    .line 749
    const/16 v6, 0x6d

    if-eq v0, v6, :cond_0

    const/16 v6, 0x4d

    if-ne v0, v6, :cond_2

    .line 751
    :cond_0
    const-wide/high16 v3, 0x4090

    .line 761
    .end local v0           #c:C
    :cond_1
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-long v6, v6

    .line 765
    .end local v2           #i:I
    .end local v5           #sb:Ljava/lang/StringBuffer;
    :goto_2
    return-wide v6

    .line 753
    .restart local v0       #c:C
    .restart local v2       #i:I
    .restart local v5       #sb:Ljava/lang/StringBuffer;
    :cond_2
    const/16 v6, 0x67

    if-eq v0, v6, :cond_3

    const/16 v6, 0x47

    if-ne v0, v6, :cond_1

    .line 755
    :cond_3
    const-wide/high16 v3, 0x4130

    goto :goto_1

    .line 759
    :cond_4
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 763
    .end local v0           #c:C
    .end local v2           #i:I
    .end local v5           #sb:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    .line 765
    .local v1, e:Ljava/lang/Exception;
    const-wide/16 v6, -0x1

    goto :goto_2
.end method

.method public getFilePermissionsSymlinks(Ljava/lang/String;)Lcom/stericson/RootTools/containers/Permissions;
    .locals 8
    .parameter "file"

    .prologue
    const/4 v2, 0x0

    .line 895
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking permissions for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 896
    invoke-static {p1}, Lcom/stericson/RootTools/RootTools;->exists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 898
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was found."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 902
    :try_start_0
    new-instance v0, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$6;

    const/4 v3, 0x1

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ls -l "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "busybox ls -l "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/system/bin/failsafe/toolbox ls -l "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "toolbox ls -l "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v0, p0, v3, v4}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$6;-><init>(Lcom/stericson/RootTools/internal/RootToolsInternalMethods;I[Ljava/lang/String;)V

    .line 952
    .local v0, command:Lcom/stericson/RootTools/execution/Command;
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    .line 953
    invoke-virtual {v0}, Lcom/stericson/RootTools/execution/Command;->waitForFinish()V

    .line 955
    sget-object v2, Lcom/stericson/RootTools/internal/InternalVariables;->permissions:Lcom/stericson/RootTools/containers/Permissions;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 965
    .end local v0           #command:Lcom/stericson/RootTools/execution/Command;
    :cond_0
    :goto_0
    return-object v2

    .line 958
    :catch_0
    move-exception v1

    .line 960
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getInode(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "file"

    .prologue
    .line 781
    :try_start_0
    new-instance v0, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$4;

    const/4 v2, 0x5

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/local/ls -i "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, p0, v2, v3}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$4;-><init>(Lcom/stericson/RootTools/internal/RootToolsInternalMethods;I[Ljava/lang/String;)V

    .line 796
    .local v0, command:Lcom/stericson/RootTools/execution/Command;
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    .line 797
    invoke-virtual {v0}, Lcom/stericson/RootTools/execution/Command;->waitForFinish()V

    .line 799
    sget-object v2, Lcom/stericson/RootTools/internal/InternalVariables;->inode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    .end local v0           #command:Lcom/stericson/RootTools/execution/Command;
    :goto_0
    return-object v2

    .line 801
    :catch_0
    move-exception v1

    .line 803
    .local v1, ignore:Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_0
.end method

.method public getMountedAs(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1015
    invoke-virtual {p0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getMounts()Ljava/util/ArrayList;

    move-result-object v2

    sput-object v2, Lcom/stericson/RootTools/internal/InternalVariables;->mounts:Ljava/util/ArrayList;

    .line 1016
    sget-object v2, Lcom/stericson/RootTools/internal/InternalVariables;->mounts:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 1017
    sget-object v2, Lcom/stericson/RootTools/internal/InternalVariables;->mounts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericson/RootTools/containers/Mount;

    .line 1019
    .local v1, mount:Lcom/stericson/RootTools/containers/Mount;
    invoke-virtual {v1}, Lcom/stericson/RootTools/containers/Mount;->getMountPoint()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1021
    invoke-virtual {v1}, Lcom/stericson/RootTools/containers/Mount;->getFlags()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 1022
    invoke-virtual {v1}, Lcom/stericson/RootTools/containers/Mount;->getFlags()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 1026
    .end local v1           #mount:Lcom/stericson/RootTools/containers/Mount;
    :cond_1
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    throw v2

    .line 1030
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_2
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    throw v2
.end method

.method public getMounts()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/stericson/RootTools/containers/Mount;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 980
    const/4 v2, 0x0

    .line 981
    .local v2, lnr:Ljava/io/LineNumberReader;
    new-instance v2, Ljava/io/LineNumberReader;

    .end local v2           #lnr:Ljava/io/LineNumberReader;
    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/proc/mounts"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 983
    .restart local v2       #lnr:Ljava/io/LineNumberReader;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 984
    .local v3, mounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/stericson/RootTools/containers/Mount;>;"
    :goto_0
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 987
    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 989
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 990
    .local v0, fields:[Ljava/lang/String;
    new-instance v4, Lcom/stericson/RootTools/containers/Mount;

    new-instance v5, Ljava/io/File;

    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    const/4 v7, 0x1

    aget-object v7, v0, v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x2

    aget-object v7, v0, v7

    const/4 v8, 0x3

    aget-object v8, v0, v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/stericson/RootTools/containers/Mount;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 996
    .end local v0           #fields:[Ljava/lang/String;
    :cond_0
    sput-object v3, Lcom/stericson/RootTools/internal/InternalVariables;->mounts:Ljava/util/ArrayList;

    .line 998
    sget-object v4, Lcom/stericson/RootTools/internal/InternalVariables;->mounts:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 999
    sget-object v4, Lcom/stericson/RootTools/internal/InternalVariables;->mounts:Ljava/util/ArrayList;

    return-object v4

    .line 1001
    :cond_1
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    throw v4
.end method

.method public getPath()Ljava/util/Set;
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
    .line 1042
    sget-object v0, Lcom/stericson/RootTools/internal/InternalVariables;->path:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 1043
    sget-object v0, Lcom/stericson/RootTools/internal/InternalVariables;->path:Ljava/util/Set;

    .line 1046
    :goto_0
    return-object v0

    .line 1045
    :cond_0
    invoke-virtual {p0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->returnPath()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1046
    sget-object v0, Lcom/stericson/RootTools/internal/InternalVariables;->path:Ljava/util/Set;

    goto :goto_0

    .line 1048
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
.end method

.method public getPermissions(Ljava/lang/String;)Lcom/stericson/RootTools/containers/Permissions;
    .locals 11
    .parameter "line"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    const/16 v8, 0x2d

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 161
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, lineArray:[Ljava/lang/String;
    aget-object v3, v1, v6

    .line 164
    .local v3, rawPermissions:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_3

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v8, :cond_0

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x64

    if-eq v4, v5, :cond_0

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x6c

    if-ne v4, v5, :cond_3

    :cond_0
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v8, :cond_1

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x72

    if-ne v4, v5, :cond_3

    :cond_1
    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v8, :cond_2

    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x77

    if-ne v4, v5, :cond_3

    .line 171
    :cond_2
    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 173
    new-instance v2, Lcom/stericson/RootTools/containers/Permissions;

    invoke-direct {v2}, Lcom/stericson/RootTools/containers/Permissions;-><init>()V

    .line 175
    .local v2, permissions:Lcom/stericson/RootTools/containers/Permissions;
    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/stericson/RootTools/containers/Permissions;->setType(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v2}, Lcom/stericson/RootTools/containers/Permissions;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v3, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/stericson/RootTools/containers/Permissions;->setUserPermissions(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v2}, Lcom/stericson/RootTools/containers/Permissions;->getUserPermissions()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 183
    const/4 v4, 0x7

    invoke-virtual {v3, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/stericson/RootTools/containers/Permissions;->setGroupPermissions(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v2}, Lcom/stericson/RootTools/containers/Permissions;->getGroupPermissions()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 187
    const/4 v4, 0x7

    const/16 v5, 0xa

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/stericson/RootTools/containers/Permissions;->setOtherPermissions(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v2}, Lcom/stericson/RootTools/containers/Permissions;->getOtherPermissions()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .local v0, finalPermissions:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v3}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->parseSpecialPermissions(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v2}, Lcom/stericson/RootTools/containers/Permissions;->getUserPermissions()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->parsePermissions(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v2}, Lcom/stericson/RootTools/containers/Permissions;->getGroupPermissions()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->parsePermissions(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v2}, Lcom/stericson/RootTools/containers/Permissions;->getOtherPermissions()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->parsePermissions(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/stericson/RootTools/containers/Permissions;->setPermissions(I)V

    .line 202
    .end local v0           #finalPermissions:Ljava/lang/StringBuilder;
    .end local v2           #permissions:Lcom/stericson/RootTools/containers/Permissions;
    :goto_0
    return-object v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSpace(Ljava/lang/String;)J
    .locals 14
    .parameter "path"

    .prologue
    const/4 v13, 0x0

    .line 1063
    sput-object p1, Lcom/stericson/RootTools/internal/InternalVariables;->getSpaceFor:Ljava/lang/String;

    .line 1064
    const/4 v3, 0x0

    .line 1065
    .local v3, found:Z
    const-string v8, "Looking for Space"

    invoke-static {v8}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 1067
    :try_start_0
    new-instance v1, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$7;

    const/4 v8, 0x6

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "df "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-direct {v1, p0, v8, v9}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$7;-><init>(Lcom/stericson/RootTools/internal/RootToolsInternalMethods;I[Ljava/lang/String;)V

    .line 1082
    .local v1, command:Lcom/stericson/RootTools/execution/Command;
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    .line 1083
    invoke-virtual {v1}, Lcom/stericson/RootTools/execution/Command;->waitForFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1086
    .end local v1           #command:Lcom/stericson/RootTools/execution/Command;
    :goto_0
    sget-object v8, Lcom/stericson/RootTools/internal/InternalVariables;->space:[Ljava/lang/String;

    if-eqz v8, :cond_6

    .line 1087
    const-string v8, "First Method"

    invoke-static {v8}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 1089
    sget-object v0, Lcom/stericson/RootTools/internal/InternalVariables;->space:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v6, v0, v4

    .line 1091
    .local v6, spaceSearch:Ljava/lang/String;
    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 1093
    if-eqz v3, :cond_0

    .line 1094
    invoke-virtual {p0, v6}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getConvertedSpace(Ljava/lang/String;)J

    move-result-wide v8

    .line 1122
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #spaceSearch:Ljava/lang/String;
    :goto_2
    return-wide v8

    .line 1095
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #spaceSearch:Ljava/lang/String;
    :cond_0
    const-string v8, "used,"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1096
    const/4 v3, 0x1

    .line 1089
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1101
    .end local v6           #spaceSearch:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    .local v2, count:I
    const/4 v7, 0x3

    .line 1103
    .local v7, targetCount:I
    const-string v8, "Second Method"

    invoke-static {v8}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 1105
    sget-object v8, Lcom/stericson/RootTools/internal/InternalVariables;->space:[Ljava/lang/String;

    aget-object v8, v8, v13

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x5

    if-gt v8, v9, :cond_3

    .line 1106
    const/4 v7, 0x2

    .line 1109
    :cond_3
    sget-object v0, Lcom/stericson/RootTools/internal/InternalVariables;->space:[Ljava/lang/String;

    array-length v5, v0

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v5, :cond_6

    aget-object v6, v0, v4

    .line 1111
    .restart local v6       #spaceSearch:Ljava/lang/String;
    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 1112
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    .line 1113
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Valid"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 1114
    if-ne v2, v7, :cond_4

    .line 1115
    invoke-virtual {p0, v6}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getConvertedSpace(Ljava/lang/String;)J

    move-result-wide v8

    goto :goto_2

    .line 1117
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 1109
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1121
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #count:I
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #spaceSearch:Ljava/lang/String;
    .end local v7           #targetCount:I
    :cond_6
    const-string v8, "Returning -1, space could not be determined."

    invoke-static {v8}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 1122
    const-wide/16 v8, -0x1

    goto :goto_2

    .line 1084
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method public getSymLinks()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/stericson/RootTools/containers/Symlink;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    const/4 v2, 0x0

    .line 136
    .local v2, lnr:Ljava/io/LineNumberReader;
    :try_start_0
    new-instance v3, Ljava/io/LineNumberReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/data/local/symlinks.txt"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 139
    .end local v2           #lnr:Ljava/io/LineNumberReader;
    .local v3, lnr:Ljava/io/LineNumberReader;
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v4, symlink:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/stericson/RootTools/containers/Symlink;>;"
    :goto_0
    invoke-virtual {v3}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 143
    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 145
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, fields:[Ljava/lang/String;
    new-instance v5, Lcom/stericson/RootTools/containers/Symlink;

    new-instance v6, Ljava/io/File;

    array-length v7, v0

    add-int/lit8 v7, v7, -0x3

    aget-object v7, v0, v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    array-length v8, v0

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v0, v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6, v7}, Lcom/stericson/RootTools/containers/Symlink;-><init>(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 153
    .end local v0           #fields:[Ljava/lang/String;
    .end local v1           #line:Ljava/lang/String;
    .end local v4           #symlink:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/stericson/RootTools/containers/Symlink;>;"
    :catchall_0
    move-exception v5

    move-object v2, v3

    .end local v3           #lnr:Ljava/io/LineNumberReader;
    .restart local v2       #lnr:Ljava/io/LineNumberReader;
    :goto_1
    throw v5

    .line 150
    .end local v2           #lnr:Ljava/io/LineNumberReader;
    .restart local v1       #line:Ljava/lang/String;
    .restart local v3       #lnr:Ljava/io/LineNumberReader;
    .restart local v4       #symlink:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/stericson/RootTools/containers/Symlink;>;"
    :cond_0
    return-object v4

    .line 153
    .end local v1           #line:Ljava/lang/String;
    .end local v3           #lnr:Ljava/io/LineNumberReader;
    .end local v4           #symlink:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/stericson/RootTools/containers/Symlink;>;"
    .restart local v2       #lnr:Ljava/io/LineNumberReader;
    :catchall_1
    move-exception v5

    goto :goto_1
.end method

.method public getSymlink(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "file"

    .prologue
    .line 1136
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Looking for Symlink for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 1139
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1141
    .local v3, results:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$8;

    const/4 v5, 0x7

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ls -l "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v0, p0, v5, v6, v3}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$8;-><init>(Lcom/stericson/RootTools/internal/RootToolsInternalMethods;I[Ljava/lang/String;Ljava/util/List;)V

    .line 1157
    .local v0, command:Lcom/stericson/RootTools/execution/Command;
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    .line 1158
    invoke-virtual {v0}, Lcom/stericson/RootTools/execution/Command;->waitForFinish()V

    .line 1160
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1161
    .local v4, symlink:[Ljava/lang/String;
    array-length v5, v4

    add-int/lit8 v5, v5, -0x2

    aget-object v5, v4, v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1162
    const-string v5, "Symlink found."

    invoke-static {v5}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 1164
    const-string v2, ""

    .line 1165
    .local v2, final_symlink:Ljava/lang/String;
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v4, v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v4, v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1168
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v4, v5

    invoke-virtual {p0, v5}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->findBinary(Ljava/lang/String;)Z

    .line 1169
    sget-object v5, Lcom/stericson/RootTools/RootTools;->lastFoundBinaryPaths:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 1172
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/stericson/RootTools/RootTools;->lastFoundBinaryPaths:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1193
    .end local v0           #command:Lcom/stericson/RootTools/execution/Command;
    .end local v2           #final_symlink:Ljava/lang/String;
    .end local v3           #results:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #symlink:[Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1177
    .restart local v0       #command:Lcom/stericson/RootTools/execution/Command;
    .restart local v2       #final_symlink:Ljava/lang/String;
    .restart local v3       #results:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4       #symlink:[Ljava/lang/String;
    :cond_0
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v2, v4, v5

    goto :goto_0

    .line 1182
    :cond_1
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v2, v4, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1187
    .end local v0           #command:Lcom/stericson/RootTools/execution/Command;
    .end local v2           #final_symlink:Ljava/lang/String;
    .end local v3           #results:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #symlink:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1188
    .local v1, e:Ljava/lang/Exception;
    sget-boolean v5, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v5, :cond_2

    .line 1189
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1192
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    const-string v5, "Symlink not found"

    invoke-static {v5}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 1193
    const-string v2, ""

    goto :goto_0
.end method

.method public getSymlinks(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/stericson/RootTools/containers/Symlink;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1212
    const-string v1, "find"

    invoke-virtual {p0, v1}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->checkUtil(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1213
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1

    .line 1216
    :cond_0
    new-instance v0, Lcom/stericson/RootTools/execution/CommandCapture;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -type l -exec ls -l {} \\; > /data/local/symlinks.txt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-direct {v0, v4, v1}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1217
    .local v0, command:Lcom/stericson/RootTools/execution/CommandCapture;
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    .line 1218
    invoke-virtual {v0}, Lcom/stericson/RootTools/execution/CommandCapture;->waitForFinish()V

    .line 1220
    invoke-virtual {p0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getSymLinks()Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lcom/stericson/RootTools/internal/InternalVariables;->symlinks:Ljava/util/ArrayList;

    .line 1221
    sget-object v1, Lcom/stericson/RootTools/internal/InternalVariables;->symlinks:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 1222
    sget-object v1, Lcom/stericson/RootTools/internal/InternalVariables;->symlinks:Ljava/util/ArrayList;

    return-object v1

    .line 1224
    :cond_1
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1
.end method

.method public getWorkingToolbox()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1236
    const-string v0, "busybox"

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->checkUtil(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1237
    const-string v0, "busybox"

    .line 1241
    :goto_0
    return-object v0

    .line 1238
    :cond_0
    const-string v0, "toolbox"

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->checkUtil(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1239
    const-string v0, "toolbox"

    goto :goto_0

    .line 1241
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public hasEnoughSpaceOnSdCard(J)Z
    .locals 10
    .parameter "updateSize"

    .prologue
    const/4 v7, 0x0

    .line 1255
    const-string v8, "Checking SDcard size and that it is mounted as RW"

    invoke-static {v8}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 1256
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    .line 1257
    .local v6, status:Ljava/lang/String;
    const-string v8, "mounted"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1264
    :cond_0
    :goto_0
    return v7

    .line 1260
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 1261
    .local v4, path:Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1262
    .local v5, stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v2, v8

    .line 1263
    .local v2, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v0, v8

    .line 1264
    .local v0, availableBlocks:J
    mul-long v8, v0, v2

    cmp-long v8, p1, v8

    if-gez v8, :cond_0

    const/4 v7, 0x1

    goto :goto_0
.end method

.method public hasUtil(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "util"
    .parameter "box"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1277
    sput-boolean v7, Lcom/stericson/RootTools/internal/InternalVariables;->found:Z

    .line 1280
    const-string v1, "toolbox"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "busybox"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v7

    .line 1316
    :goto_0
    return v1

    .line 1286
    :cond_0
    :try_start_0
    new-instance v0, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$9;

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v1, "toolbox"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    aput-object v1, v3, v4

    move-object v1, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$9;-><init>(Lcom/stericson/RootTools/internal/RootToolsInternalMethods;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    .local v0, command:Lcom/stericson/RootTools/execution/Command;
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/execution/Shell;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v1

    const/16 v2, 0x1388

    invoke-virtual {v1, v2}, Lcom/stericson/RootTools/execution/Command;->waitForFinish(I)V

    .line 1307
    sget-boolean v1, Lcom/stericson/RootTools/internal/InternalVariables;->found:Z

    if-eqz v1, :cond_2

    .line 1308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Box contains "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " util!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    move v1, v8

    .line 1309
    goto :goto_0

    .line 1286
    .end local v0           #command:Lcom/stericson/RootTools/execution/Command;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " --list"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1311
    .restart local v0       #command:Lcom/stericson/RootTools/execution/Command;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Box does not contain "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " util!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v7

    .line 1312
    goto/16 :goto_0

    .line 1314
    .end local v0           #command:Lcom/stericson/RootTools/execution/Command;
    :catch_0
    move-exception v6

    .line 1315
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    move v1, v7

    .line 1316
    goto/16 :goto_0
.end method

.method public installBinary(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "sourceId"
    .parameter "destName"
    .parameter "mode"

    .prologue
    .line 1340
    :try_start_0
    new-instance v1, Lcom/stericson/RootTools/internal/Installer;

    invoke-direct {v1, p1}, Lcom/stericson/RootTools/internal/Installer;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1348
    .local v1, installer:Lcom/stericson/RootTools/internal/Installer;
    invoke-virtual {v1, p2, p3, p4}, Lcom/stericson/RootTools/internal/Installer;->installBinary(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .end local v1           #installer:Lcom/stericson/RootTools/internal/Installer;
    :goto_0
    return v2

    .line 1341
    :catch_0
    move-exception v0

    .line 1342
    .local v0, ex:Ljava/io/IOException;
    sget-boolean v2, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v2, :cond_0

    .line 1343
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1345
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isAccessGiven()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 814
    :try_start_0
    const-string v4, "Checking for Root access"

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 815
    const/4 v4, 0x0

    sput-boolean v4, Lcom/stericson/RootTools/internal/InternalVariables;->accessGiven:Z

    .line 817
    new-instance v0, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$5;

    const/4 v4, 0x2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "id"

    aput-object v7, v5, v6

    invoke-direct {v0, p0, v4, v5}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$5;-><init>(Lcom/stericson/RootTools/internal/RootToolsInternalMethods;I[Ljava/lang/String;)V

    .line 841
    .local v0, command:Lcom/stericson/RootTools/execution/Command;
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    .line 842
    invoke-virtual {v0}, Lcom/stericson/RootTools/execution/Command;->waitForFinish()V

    .line 845
    sget-boolean v4, Lcom/stericson/RootTools/internal/InternalVariables;->accessGiven:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    .line 855
    sput v3, Lcom/stericson/RootTools/RootTools;->shellDelay:I

    .end local v0           #command:Lcom/stericson/RootTools/execution/Command;
    :goto_0
    return v2

    .restart local v0       #command:Lcom/stericson/RootTools/execution/Command;
    :cond_0
    sput v3, Lcom/stericson/RootTools/RootTools;->shellDelay:I

    move v2, v3

    goto :goto_0

    .line 851
    .end local v0           #command:Lcom/stericson/RootTools/execution/Command;
    :catch_0
    move-exception v1

    .line 852
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 855
    sput v3, Lcom/stericson/RootTools/RootTools;->shellDelay:I

    move v2, v3

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    sput v3, Lcom/stericson/RootTools/RootTools;->shellDelay:I

    throw v2
.end method

.method public isAppletAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "applet"
    .parameter "binaryPath"

    .prologue
    const/4 v3, 0x0

    .line 1361
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getBusyBoxApplets(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1362
    .local v0, aplet:Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 1363
    const/4 v3, 0x1

    .line 1369
    .end local v0           #aplet:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    return v3

    .line 1367
    :catch_0
    move-exception v1

    .line 1368
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isNativeToolsReady(ILandroid/content/Context;)Z
    .locals 4
    .parameter "nativeToolsId"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 860
    const-string v3, "Preparing Native Tools"

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 861
    sput-boolean v2, Lcom/stericson/RootTools/internal/InternalVariables;->nativeToolsReady:Z

    .line 865
    :try_start_0
    new-instance v1, Lcom/stericson/RootTools/internal/Installer;

    invoke-direct {v1, p2}, Lcom/stericson/RootTools/internal/Installer;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    .local v1, installer:Lcom/stericson/RootTools/internal/Installer;
    const-string v2, "nativetools"

    invoke-virtual {v1, v2}, Lcom/stericson/RootTools/internal/Installer;->isBinaryInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 874
    const/4 v2, 0x1

    sput-boolean v2, Lcom/stericson/RootTools/internal/InternalVariables;->nativeToolsReady:Z

    .line 879
    :goto_0
    sget-boolean v2, Lcom/stericson/RootTools/internal/InternalVariables;->nativeToolsReady:Z

    .end local v1           #installer:Lcom/stericson/RootTools/internal/Installer;
    :cond_0
    :goto_1
    return v2

    .line 866
    :catch_0
    move-exception v0

    .line 867
    .local v0, ex:Ljava/io/IOException;
    sget-boolean v3, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v3, :cond_0

    .line 868
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 876
    .end local v0           #ex:Ljava/io/IOException;
    .restart local v1       #installer:Lcom/stericson/RootTools/internal/Installer;
    :cond_1
    const-string v2, "nativetools"

    const-string v3, "700"

    invoke-virtual {v1, p1, v2, v3}, Lcom/stericson/RootTools/internal/Installer;->installBinary(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/stericson/RootTools/internal/InternalVariables;->nativeToolsReady:Z

    goto :goto_0
.end method

.method public isProcessRunning(Ljava/lang/String;)Z
    .locals 6
    .parameter "processName"

    .prologue
    .line 1383
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checks if process is running: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 1385
    const/4 v1, 0x0

    .line 1387
    .local v1, processRunning:Z
    :try_start_0
    new-instance v2, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$10;

    invoke-direct {v2, p0, p1}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$10;-><init>(Lcom/stericson/RootTools/internal/RootToolsInternalMethods;Ljava/lang/String;)V

    .line 1409
    .local v2, result:Lcom/stericson/RootTools/RootTools$Result;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "ps"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-static {v3, v4, v2, v5}, Lcom/stericson/RootTools/RootTools;->sendShell([Ljava/lang/String;ILcom/stericson/RootTools/RootTools$Result;I)Ljava/util/List;

    .line 1411
    invoke-virtual {v2}, Lcom/stericson/RootTools/RootTools$Result;->getError()I

    move-result v3

    if-nez v3, :cond_0

    .line 1413
    invoke-virtual {v2}, Lcom/stericson/RootTools/RootTools$Result;->getData()Ljava/io/Serializable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1414
    const/4 v1, 0x1

    .line 1421
    .end local v2           #result:Lcom/stericson/RootTools/RootTools$Result;
    :cond_0
    :goto_0
    return v1

    .line 1417
    :catch_0
    move-exception v0

    .line 1418
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public killProcess(Ljava/lang/String;)Z
    .locals 8
    .parameter "processName"

    .prologue
    .line 1433
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Killing process "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 1435
    const/4 v2, 0x0

    .line 1438
    .local v2, processKilled:Z
    :try_start_0
    new-instance v3, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$11;

    invoke-direct {v3, p0, p1}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$11;-><init>(Lcom/stericson/RootTools/internal/RootToolsInternalMethods;Ljava/lang/String;)V

    .line 1494
    .local v3, result:Lcom/stericson/RootTools/RootTools$Result;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ps"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-static {v4, v5, v3, v6}, Lcom/stericson/RootTools/RootTools;->sendShell([Ljava/lang/String;ILcom/stericson/RootTools/RootTools$Result;I)Ljava/util/List;

    .line 1496
    invoke-virtual {v3}, Lcom/stericson/RootTools/RootTools$Result;->getError()I

    move-result v4

    if-nez v4, :cond_0

    .line 1499
    invoke-virtual {v3}, Lcom/stericson/RootTools/RootTools$Result;->getData()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1502
    .local v1, pids:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1507
    const/4 v4, 0x1

    :try_start_1
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "kill -9 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Lcom/stericson/RootTools/RootTools;->sendShell([Ljava/lang/String;II)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1508
    const/4 v2, 0x1

    .line 1522
    .end local v1           #pids:Ljava/lang/String;
    .end local v3           #result:Lcom/stericson/RootTools/RootTools$Result;
    :cond_0
    :goto_0
    return v2

    .line 1510
    .restart local v1       #pids:Ljava/lang/String;
    .restart local v3       #result:Lcom/stericson/RootTools/RootTools$Result;
    :catch_0
    move-exception v0

    .line 1512
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1517
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #pids:Ljava/lang/String;
    .end local v3           #result:Lcom/stericson/RootTools/RootTools$Result;
    :catch_1
    move-exception v0

    .line 1519
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public offerBusyBox(Landroid/app/Activity;I)Landroid/content/Intent;
    .locals 3
    .parameter "activity"
    .parameter "requestCode"

    .prologue
    .line 1549
    const-string v1, "Launching Market for BusyBox"

    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 1550
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=stericson.busybox"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1552
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1553
    return-object v0
.end method

.method public offerBusyBox(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 1532
    const-string v1, "Launching Market for BusyBox"

    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 1533
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=stericson.busybox"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1535
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1536
    return-void
.end method

.method public offerSuperUser(Landroid/app/Activity;I)Landroid/content/Intent;
    .locals 3
    .parameter "activity"
    .parameter "requestCode"

    .prologue
    .line 1580
    const-string v1, "Launching Market for SuperUser"

    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 1581
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=com.noshufou.android.su"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1583
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1584
    return-object v0
.end method

.method public offerSuperUser(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 1563
    const-string v1, "Launching Market for SuperUser"

    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 1564
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=com.noshufou.android.su"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1566
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1567
    return-void
.end method

.method public parsePermissions(Ljava/lang/String;)I
    .locals 6
    .parameter "permission"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 208
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_0

    .line 209
    const/4 v0, 0x4

    .line 213
    .local v0, tmp:I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "character "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x77

    if-ne v1, v2, :cond_1

    .line 217
    add-int/lit8 v0, v0, 0x2

    .line 221
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "character "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x78

    if-ne v1, v2, :cond_2

    .line 225
    add-int/lit8 v0, v0, 0x1

    .line 229
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "character "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 232
    return v0

    .line 211
    .end local v0           #tmp:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #tmp:I
    goto/16 :goto_0

    .line 219
    :cond_1
    add-int/lit8 v0, v0, 0x0

    goto :goto_1

    .line 227
    :cond_2
    add-int/lit8 v0, v0, 0x0

    goto :goto_2
.end method

.method public parseSpecialPermissions(Ljava/lang/String;)I
    .locals 3
    .parameter "permission"

    .prologue
    const/16 v2, 0x73

    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, tmp:I
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    .line 239
    add-int/lit8 v0, v0, 0x4

    .line 241
    :cond_0
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1

    .line 242
    add-int/lit8 v0, v0, 0x2

    .line 244
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x74

    if-ne v1, v2, :cond_2

    .line 245
    add-int/lit8 v0, v0, 0x1

    .line 247
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "special permissions "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 249
    return v0
.end method

.method public returnPath()Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 75
    const/4 v0, 0x0

    .line 79
    .local v0, command:Lcom/stericson/RootTools/execution/CommandCapture;
    :try_start_0
    const-string v9, "/data/local/tmp"

    invoke-static {v9}, Lcom/stericson/RootTools/RootTools;->exists(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 81
    new-instance v1, Lcom/stericson/RootTools/execution/CommandCapture;

    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "mkdir /data/local/tmp"

    aput-object v12, v10, v11

    invoke-direct {v1, v9, v10}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(I[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v0           #command:Lcom/stericson/RootTools/execution/CommandCapture;
    .local v1, command:Lcom/stericson/RootTools/execution/CommandCapture;
    :try_start_1
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v9

    invoke-virtual {v9}, Lcom/stericson/RootTools/execution/Command;->waitForFinish()V

    .line 85
    :goto_0
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    sput-object v9, Lcom/stericson/RootTools/internal/InternalVariables;->path:Ljava/util/Set;

    .line 87
    const/4 v4, 0x0

    .line 89
    .local v4, lnr:Ljava/io/LineNumberReader;
    const-string v9, "/"

    invoke-static {v9}, Lcom/stericson/RootTools/RootTools;->getMountedAs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 90
    .local v5, mountedas:Ljava/lang/String;
    const-string v9, "/"

    const-string v10, "rw"

    invoke-static {v9, v10}, Lcom/stericson/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    .line 92
    new-instance v0, Lcom/stericson/RootTools/execution/CommandCapture;

    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "chmod 0777 /init.rc"

    aput-object v12, v10, v11

    invoke-direct {v0, v9, v10}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(I[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    .end local v1           #command:Lcom/stericson/RootTools/execution/CommandCapture;
    .restart local v0       #command:Lcom/stericson/RootTools/execution/CommandCapture;
    :try_start_2
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    .line 94
    new-instance v1, Lcom/stericson/RootTools/execution/CommandCapture;

    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "dd if=/init.rc of=/data/local/tmp/init.rc"

    aput-object v12, v10, v11

    invoke-direct {v1, v9, v10}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(I[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 96
    .end local v0           #command:Lcom/stericson/RootTools/execution/CommandCapture;
    .restart local v1       #command:Lcom/stericson/RootTools/execution/CommandCapture;
    :try_start_3
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    .line 97
    new-instance v0, Lcom/stericson/RootTools/execution/CommandCapture;

    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "chmod 0777 /data/local/tmp/init.rc"

    aput-object v12, v10, v11

    invoke-direct {v0, v9, v10}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(I[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 99
    .end local v1           #command:Lcom/stericson/RootTools/execution/CommandCapture;
    .restart local v0       #command:Lcom/stericson/RootTools/execution/CommandCapture;
    :try_start_4
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v9

    invoke-virtual {v9}, Lcom/stericson/RootTools/execution/Command;->waitForFinish()V

    .line 101
    const-string v9, "/"

    invoke-static {v9, v5}, Lcom/stericson/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    .line 103
    new-instance v4, Ljava/io/LineNumberReader;

    .end local v4           #lnr:Ljava/io/LineNumberReader;
    new-instance v9, Ljava/io/FileReader;

    const-string v10, "/data/local/tmp/init.rc"

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v9}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 106
    .restart local v4       #lnr:Ljava/io/LineNumberReader;
    :cond_0
    invoke-virtual {v4}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, line:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 108
    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 109
    const-string v9, "export PATH"

    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 111
    const-string v9, "/"

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 112
    .local v6, tmp:I
    new-instance v9, Ljava/util/HashSet;

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v9, Lcom/stericson/RootTools/internal/InternalVariables;->path:Ljava/util/Set;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 126
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #lnr:Ljava/io/LineNumberReader;
    .end local v5           #mountedas:Ljava/lang/String;
    .end local v6           #tmp:I
    :goto_1
    return v7

    .restart local v3       #line:Ljava/lang/String;
    .restart local v4       #lnr:Ljava/io/LineNumberReader;
    .restart local v5       #mountedas:Ljava/lang/String;
    :cond_1
    move v7, v8

    .line 117
    goto :goto_1

    .line 119
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #lnr:Ljava/io/LineNumberReader;
    .end local v5           #mountedas:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 121
    .local v2, e:Ljava/lang/Exception;
    :goto_2
    sget-boolean v7, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v7, :cond_2

    .line 123
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    move v7, v8

    .line 126
    goto :goto_1

    .line 119
    .end local v0           #command:Lcom/stericson/RootTools/execution/CommandCapture;
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #command:Lcom/stericson/RootTools/execution/CommandCapture;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1           #command:Lcom/stericson/RootTools/execution/CommandCapture;
    .restart local v0       #command:Lcom/stericson/RootTools/execution/CommandCapture;
    goto :goto_2

    :cond_3
    move-object v1, v0

    .end local v0           #command:Lcom/stericson/RootTools/execution/CommandCapture;
    .restart local v1       #command:Lcom/stericson/RootTools/execution/CommandCapture;
    goto/16 :goto_0
.end method
