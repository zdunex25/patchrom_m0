.class Lcom/stericson/RootTools/Remounter;
.super Ljava/lang/Object;
.source "Remounter.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findMountPointRecursive(Ljava/lang/String;)Lcom/stericson/RootTools/Mount;
    .locals 7
    .parameter "file"

    .prologue
    const/4 v6, 0x0

    .line 101
    :try_start_0
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getMounts()Ljava/util/ArrayList;

    move-result-object v2

    .line 102
    .local v2, mounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/stericson/RootTools/Mount;>;"
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v3, path:Ljava/io/File;
    :cond_0
    if-nez v3, :cond_1

    move-object v4, v6

    .line 118
    .end local v2           #mounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/stericson/RootTools/Mount;>;"
    .end local v3           #path:Ljava/io/File;
    :goto_0
    return-object v4

    .line 103
    .restart local v2       #mounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/stericson/RootTools/Mount;>;"
    .restart local v3       #path:Ljava/io/File;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericson/RootTools/Mount;

    .line 104
    .local v1, mount:Lcom/stericson/RootTools/Mount;
    iget-object v5, v1, Lcom/stericson/RootTools/Mount;->mountPoint:Ljava/io/File;

    invoke-virtual {v5, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-eqz v5, :cond_2

    move-object v4, v1

    .line 105
    goto :goto_0

    .line 111
    .end local v1           #mount:Lcom/stericson/RootTools/Mount;
    .end local v2           #mounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/stericson/RootTools/Mount;>;"
    .end local v3           #path:Ljava/io/File;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 112
    .local v0, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 113
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 114
    .local v0, e:Ljava/lang/Exception;
    sget-boolean v4, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v4, :cond_3

    .line 115
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    move-object v4, v6

    .line 118
    goto :goto_0
.end method


# virtual methods
.method protected remount(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "file"
    .parameter "mountType"

    .prologue
    .line 35
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 36
    const/4 v5, 0x0

    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 39
    :cond_0
    const/4 v1, 0x0

    .line 40
    .local v1, foundMount:Z
    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 67
    invoke-direct {p0, p1}, Lcom/stericson/RootTools/Remounter;->findMountPointRecursive(Ljava/lang/String;)Lcom/stericson/RootTools/Mount;

    move-result-object v4

    .line 69
    .local v4, mountPoint:Lcom/stericson/RootTools/Mount;
    sget-object v5, Lcom/stericson/RootTools/InternalVariables;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Remounting "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v4, Lcom/stericson/RootTools/Mount;->mountPoint:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " as "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v5, v4, Lcom/stericson/RootTools/Mount;->flags:Ljava/util/Set;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 72
    .local v2, isMountMode:Z
    if-nez v2, :cond_2

    .line 74
    invoke-static {}, Lcom/stericson/RootTools/InternalMethods;->instance()Lcom/stericson/RootTools/InternalMethods;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 76
    const-string v8, "mount -o remount,%s %s %s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 77
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 78
    iget-object v11, v4, Lcom/stericson/RootTools/Mount;->device:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    .line 79
    iget-object v11, v4, Lcom/stericson/RootTools/Mount;->mountPoint:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 75
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 74
    invoke-virtual {v5, v6}, Lcom/stericson/RootTools/InternalMethods;->doExec([Ljava/lang/String;)V

    .line 82
    const-string v5, "mount -o remount,%s %s %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 83
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 84
    iget-object v8, v4, Lcom/stericson/RootTools/Mount;->device:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    .line 85
    iget-object v8, v4, Lcom/stericson/RootTools/Mount;->mountPoint:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 81
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 86
    invoke-direct {p0, p1}, Lcom/stericson/RootTools/Remounter;->findMountPointRecursive(Ljava/lang/String;)Lcom/stericson/RootTools/Mount;

    move-result-object v4

    .line 89
    :cond_2
    sget-object v5, Lcom/stericson/RootTools/InternalVariables;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lcom/stericson/RootTools/Mount;->flags:Ljava/util/Set;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v5, v4, Lcom/stericson/RootTools/Mount;->flags:Ljava/util/Set;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 91
    iget-object v5, v4, Lcom/stericson/RootTools/Mount;->flags:Ljava/util/Set;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 92
    const/4 v5, 0x1

    .line 95
    .end local v2           #isMountMode:Z
    .end local v4           #mountPoint:Lcom/stericson/RootTools/Mount;
    :goto_1
    return v5

    .line 42
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getMounts()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_5

    .line 57
    :goto_2
    if-nez v1, :cond_1

    .line 59
    :try_start_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p1

    goto/16 :goto_0

    .line 42
    :cond_5
    :try_start_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stericson/RootTools/Mount;

    .line 43
    .local v3, mount:Lcom/stericson/RootTools/Mount;
    iget-object v6, v3, Lcom/stericson/RootTools/Mount;->mountPoint:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 45
    iget-object v6, v3, Lcom/stericson/RootTools/Mount;->mountPoint:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v6

    if-eqz v6, :cond_4

    .line 46
    const/4 v1, 0x1

    .line 47
    goto :goto_2

    .line 51
    .end local v3           #mount:Lcom/stericson/RootTools/Mount;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 52
    .local v0, e:Ljava/lang/Exception;
    sget-boolean v5, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v5, :cond_6

    .line 53
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    .line 61
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 62
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    const/4 v5, 0x0

    goto :goto_1

    .line 94
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #isMountMode:Z
    .restart local v4       #mountPoint:Lcom/stericson/RootTools/Mount;
    :cond_7
    iget-object v5, v4, Lcom/stericson/RootTools/Mount;->flags:Ljava/util/Set;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 95
    const/4 v5, 0x0

    goto :goto_1
.end method
