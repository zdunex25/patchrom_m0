.class Lcom/stericson/RootTools/InternalMethods;
.super Ljava/lang/Object;
.source "InternalMethods.java"


# static fields
.field private static instance_:Lcom/stericson/RootTools/InternalMethods;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method protected static instance()Lcom/stericson/RootTools/InternalMethods;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/stericson/RootTools/InternalMethods;->instance_:Lcom/stericson/RootTools/InternalMethods;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/stericson/RootTools/InternalMethods;

    invoke-direct {v0}, Lcom/stericson/RootTools/InternalMethods;-><init>()V

    sput-object v0, Lcom/stericson/RootTools/InternalMethods;->instance_:Lcom/stericson/RootTools/InternalMethods;

    .line 30
    :cond_0
    sget-object v0, Lcom/stericson/RootTools/InternalMethods;->instance_:Lcom/stericson/RootTools/InternalMethods;

    return-object v0
.end method


# virtual methods
.method protected doExec([Ljava/lang/String;)V
    .locals 16
    .parameter "commands"

    .prologue
    .line 38
    const/4 v9, 0x0

    .line 39
    .local v9, process:Ljava/lang/Process;
    const/4 v5, 0x0

    .line 40
    .local v5, os:Ljava/io/DataOutputStream;
    const/4 v7, 0x0

    .line 43
    .local v7, osRes:Ljava/io/InputStreamReader;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v12

    const-string v13, "su"

    invoke-virtual {v12, v13}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v9

    .line 44
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-virtual {v9}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 45
    .end local v5           #os:Ljava/io/DataOutputStream;
    .local v6, os:Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v8, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 46
    .end local v7           #osRes:Ljava/io/InputStreamReader;
    .local v8, osRes:Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v10, Ljava/io/BufferedReader;

    invoke-direct {v10, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 49
    .local v10, reader:Ljava/io/BufferedReader;
    move-object/from16 v0, p1

    array-length v0, v0

    move v12, v0

    const/4 v13, 0x0

    :goto_0
    if-lt v13, v12, :cond_3

    .line 55
    const-string v12, "exit \n"

    invoke-virtual {v6, v12}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 58
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, line:Ljava/lang/String;
    :goto_1
    if-nez v4, :cond_4

    .line 82
    invoke-virtual {v9}, Ljava/lang/Process;->waitFor()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 91
    if-eqz v6, :cond_0

    .line 92
    :try_start_3
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    .line 94
    :cond_0
    if-eqz v8, :cond_1

    .line 95
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V

    .line 97
    :cond_1
    invoke-virtual {v9}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v7, v8

    .end local v8           #osRes:Ljava/io/InputStreamReader;
    .restart local v7       #osRes:Ljava/io/InputStreamReader;
    move-object v5, v6

    .line 105
    .end local v4           #line:Ljava/lang/String;
    .end local v6           #os:Ljava/io/DataOutputStream;
    .end local v10           #reader:Ljava/io/BufferedReader;
    .restart local v5       #os:Ljava/io/DataOutputStream;
    :cond_2
    :goto_2
    return-void

    .line 49
    .end local v5           #os:Ljava/io/DataOutputStream;
    .end local v7           #osRes:Ljava/io/InputStreamReader;
    .restart local v6       #os:Ljava/io/DataOutputStream;
    .restart local v8       #osRes:Ljava/io/InputStreamReader;
    .restart local v10       #reader:Ljava/io/BufferedReader;
    :cond_3
    :try_start_4
    aget-object v11, p1, v13

    .line 50
    .local v11, single:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 49
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 61
    .end local v11           #single:Ljava/lang/String;
    .restart local v4       #line:Ljava/lang/String;
    :cond_4
    const/4 v12, 0x0

    aget-object v12, p1, v12

    const-string v13, "id"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 62
    new-instance v1, Ljava/util/HashSet;

    const-string v12, " "

    invoke-virtual {v4, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-direct {v1, v12}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 63
    .local v1, ID:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_8

    .line 70
    :goto_3
    sget-boolean v12, Lcom/stericson/RootTools/InternalVariables;->accessGiven:Z

    if-nez v12, :cond_6

    .line 71
    sget-object v12, Lcom/stericson/RootTools/InternalVariables;->TAG:Ljava/lang/String;

    const-string v13, "Access Denied?"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .end local v1           #ID:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    const/4 v12, 0x0

    aget-object v12, p1, v12

    const-string v13, "df"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    sget-object v12, Lcom/stericson/RootTools/InternalVariables;->getSpaceFor:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 75
    const-string v12, " "

    invoke-virtual {v4, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/stericson/RootTools/InternalVariables;->space:[Ljava/lang/String;

    .line 77
    :cond_7
    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 63
    .restart local v1       #ID:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_8
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 64
    .local v3, id:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "uid=0"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 65
    const/4 v12, 0x1

    sput-boolean v12, Lcom/stericson/RootTools/InternalVariables;->accessGiven:Z

    .line 66
    sget-object v12, Lcom/stericson/RootTools/InternalVariables;->TAG:Ljava/lang/String;

    const-string v13, "Access Given"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 84
    .end local v1           #ID:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3           #id:Ljava/lang/String;
    .end local v4           #line:Ljava/lang/String;
    .end local v10           #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v12

    move-object v2, v12

    move-object v7, v8

    .end local v8           #osRes:Ljava/io/InputStreamReader;
    .restart local v7       #osRes:Ljava/io/InputStreamReader;
    move-object v5, v6

    .line 85
    .end local v6           #os:Ljava/io/DataOutputStream;
    .local v2, e:Ljava/lang/Exception;
    .restart local v5       #os:Ljava/io/DataOutputStream;
    :goto_4
    :try_start_5
    sget-boolean v12, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v12, :cond_9

    .line 86
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Error: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 91
    :cond_9
    if-eqz v5, :cond_a

    .line 92
    :try_start_6
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    .line 94
    :cond_a
    if-eqz v7, :cond_b

    .line 95
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V

    .line 97
    :cond_b
    invoke-virtual {v9}, Ljava/lang/Process;->destroy()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    .line 98
    :catch_1
    move-exception v12

    move-object v2, v12

    .line 99
    sget-boolean v12, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v12, :cond_2

    .line 100
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Error: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 89
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    .line 91
    :goto_5
    if-eqz v5, :cond_c

    .line 92
    :try_start_7
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    .line 94
    :cond_c
    if-eqz v7, :cond_d

    .line 95
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V

    .line 97
    :cond_d
    invoke-virtual {v9}, Ljava/lang/Process;->destroy()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 104
    :cond_e
    :goto_6
    throw v12

    .line 98
    :catch_2
    move-exception v13

    move-object v2, v13

    .line 99
    .restart local v2       #e:Ljava/lang/Exception;
    sget-boolean v13, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v13, :cond_e

    .line 100
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Error: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 98
    .end local v2           #e:Ljava/lang/Exception;
    .end local v5           #os:Ljava/io/DataOutputStream;
    .end local v7           #osRes:Ljava/io/InputStreamReader;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v6       #os:Ljava/io/DataOutputStream;
    .restart local v8       #osRes:Ljava/io/InputStreamReader;
    .restart local v10       #reader:Ljava/io/BufferedReader;
    :catch_3
    move-exception v12

    move-object v2, v12

    .line 99
    .restart local v2       #e:Ljava/lang/Exception;
    sget-boolean v12, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v12, :cond_f

    .line 100
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Error: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    move-object v7, v8

    .end local v8           #osRes:Ljava/io/InputStreamReader;
    .restart local v7       #osRes:Ljava/io/InputStreamReader;
    move-object v5, v6

    .end local v6           #os:Ljava/io/DataOutputStream;
    .restart local v5       #os:Ljava/io/DataOutputStream;
    goto/16 :goto_2

    .line 89
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #os:Ljava/io/DataOutputStream;
    .end local v10           #reader:Ljava/io/BufferedReader;
    .restart local v6       #os:Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v12

    move-object v5, v6

    .end local v6           #os:Ljava/io/DataOutputStream;
    .restart local v5       #os:Ljava/io/DataOutputStream;
    goto :goto_5

    .end local v5           #os:Ljava/io/DataOutputStream;
    .end local v7           #osRes:Ljava/io/InputStreamReader;
    .restart local v6       #os:Ljava/io/DataOutputStream;
    .restart local v8       #osRes:Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v12

    move-object v7, v8

    .end local v8           #osRes:Ljava/io/InputStreamReader;
    .restart local v7       #osRes:Ljava/io/InputStreamReader;
    move-object v5, v6

    .end local v6           #os:Ljava/io/DataOutputStream;
    .restart local v5       #os:Ljava/io/DataOutputStream;
    goto :goto_5

    .line 84
    :catch_4
    move-exception v12

    move-object v2, v12

    goto/16 :goto_4

    .end local v5           #os:Ljava/io/DataOutputStream;
    .restart local v6       #os:Ljava/io/DataOutputStream;
    :catch_5
    move-exception v12

    move-object v2, v12

    move-object v5, v6

    .end local v6           #os:Ljava/io/DataOutputStream;
    .restart local v5       #os:Ljava/io/DataOutputStream;
    goto/16 :goto_4
.end method

.method protected getMounts()Ljava/util/ArrayList;
    .locals 9
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
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    const/4 v2, 0x0

    .line 141
    .local v2, lnr:Ljava/io/LineNumberReader;
    new-instance v2, Ljava/io/LineNumberReader;

    .end local v2           #lnr:Ljava/io/LineNumberReader;
    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/proc/mounts"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 143
    .restart local v2       #lnr:Ljava/io/LineNumberReader;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v3, mounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/stericson/RootTools/Mount;>;"
    :goto_0
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 156
    return-object v3

    .line 146
    :cond_0
    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 148
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, fields:[Ljava/lang/String;
    new-instance v4, Lcom/stericson/RootTools/Mount;

    .line 150
    new-instance v5, Ljava/io/File;

    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    new-instance v6, Ljava/io/File;

    const/4 v7, 0x1

    aget-object v7, v0, v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    const/4 v7, 0x2

    aget-object v7, v0, v7

    .line 153
    const/4 v8, 0x3

    aget-object v8, v0, v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/stericson/RootTools/Mount;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected returnPath()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 108
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/tmp"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v4, tmpDir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 110
    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "mkdir /data/local/tmp"

    aput-object v6, v5, v8

    invoke-virtual {p0, v5}, Lcom/stericson/RootTools/InternalMethods;->doExec([Ljava/lang/String;)V

    .line 113
    :cond_0
    :try_start_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    sput-object v5, Lcom/stericson/RootTools/InternalVariables;->path:Ljava/util/Set;

    .line 115
    const/4 v2, 0x0

    .line 116
    .local v2, lnr:Ljava/io/LineNumberReader;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "dd if=/init.rc of=/data/local/tmp/init.rc"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 117
    const-string v7, "chmod 0777 /data/local/tmp/init.rc"

    aput-object v7, v5, v6

    .line 116
    invoke-virtual {p0, v5}, Lcom/stericson/RootTools/InternalMethods;->doExec([Ljava/lang/String;)V

    .line 118
    new-instance v2, Ljava/io/LineNumberReader;

    .end local v2           #lnr:Ljava/io/LineNumberReader;
    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/data/local/tmp/init.rc"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 120
    .restart local v2       #lnr:Ljava/io/LineNumberReader;
    :cond_1
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_2

    move v5, v8

    .line 134
    .end local v1           #line:Ljava/lang/String;
    .end local v2           #lnr:Ljava/io/LineNumberReader;
    :goto_0
    return v5

    .line 121
    .restart local v1       #line:Ljava/lang/String;
    .restart local v2       #lnr:Ljava/io/LineNumberReader;
    :cond_2
    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 122
    const-string v5, "export PATH"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 123
    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 124
    .local v3, tmp:I
    new-instance v5, Ljava/util/HashSet;

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v5, Lcom/stericson/RootTools/InternalVariables;->path:Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v9

    .line 125
    goto :goto_0

    .line 129
    .end local v1           #line:Ljava/lang/String;
    .end local v2           #lnr:Ljava/io/LineNumberReader;
    .end local v3           #tmp:I
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 130
    .local v0, e:Ljava/lang/Exception;
    sget-boolean v5, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v5, :cond_3

    .line 131
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    move v5, v8

    .line 134
    goto :goto_0
.end method
