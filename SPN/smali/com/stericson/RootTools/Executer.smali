.class public Lcom/stericson/RootTools/Executer;
.super Ljava/lang/Object;
.source "Executer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendShell([Ljava/lang/String;ILcom/stericson/RootTools/IResult;)Ljava/util/List;
    .locals 18
    .parameter "commands"
    .parameter "sleepTime"
    .parameter "result"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I",
            "Lcom/stericson/RootTools/IResult;",
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
    .line 39
    sget-object v14, Lcom/stericson/RootTools/InternalVariables;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Sending "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " shell command"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_6

    const-string v16, "s"

    :goto_0
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/4 v12, 0x0

    .line 41
    .local v12, response:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p3, :cond_0

    .line 42
    new-instance v12, Ljava/util/LinkedList;

    .end local v12           #response:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .line 45
    .restart local v12       #response:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const/4 v10, 0x0

    .line 46
    .local v10, process:Ljava/lang/Process;
    const/4 v6, 0x0

    .line 47
    .local v6, os:Ljava/io/DataOutputStream;
    const/4 v8, 0x0

    .line 50
    .local v8, osRes:Ljava/io/InputStreamReader;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v14

    const-string v15, "su"

    invoke-virtual {v14, v15}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v10

    .line 51
    if-eqz p3, :cond_1

    .line 52
    move-object/from16 v0, p3

    move-object v1, v10

    invoke-interface {v0, v1}, Lcom/stericson/RootTools/IResult;->setProcess(Ljava/lang/Process;)Lcom/stericson/RootTools/IResult;

    .line 54
    :cond_1
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-virtual {v10}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    invoke-direct {v7, v14}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 55
    .end local v6           #os:Ljava/io/DataOutputStream;
    .local v7, os:Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v10}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v9, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 56
    .end local v8           #osRes:Ljava/io/InputStreamReader;
    .local v9, osRes:Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v11, Ljava/io/BufferedReader;

    invoke-direct {v11, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 58
    .local v11, reader:Ljava/io/BufferedReader;
    move-object/from16 v0, p1

    array-length v0, v0

    move v14, v0

    const/4 v15, 0x0

    :goto_1
    if-lt v15, v14, :cond_7

    .line 64
    const-string v14, "exit \n"

    invoke-virtual {v7, v14}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    .line 67
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v5

    .line 69
    .local v5, line:Ljava/lang/String;
    :goto_2
    if-nez v5, :cond_8

    move-object v8, v9

    .end local v9           #osRes:Ljava/io/InputStreamReader;
    .restart local v8       #osRes:Ljava/io/InputStreamReader;
    move-object v6, v7

    .line 85
    .end local v5           #line:Ljava/lang/String;
    .end local v7           #os:Ljava/io/DataOutputStream;
    .end local v11           #reader:Ljava/io/BufferedReader;
    .restart local v6       #os:Ljava/io/DataOutputStream;
    :cond_2
    :goto_3
    invoke-virtual {v10}, Ljava/lang/Process;->waitFor()I

    move-result v2

    .line 86
    .local v2, diag:I
    if-eqz p3, :cond_3

    .line 87
    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Lcom/stericson/RootTools/IResult;->onComplete(I)V

    .line 91
    :cond_3
    if-eqz v6, :cond_4

    .line 92
    :try_start_3
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    .line 94
    :cond_4
    if-eqz v8, :cond_5

    .line 95
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V

    .line 97
    :cond_5
    invoke-virtual {v10}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 102
    :goto_4
    return-object v12

    .line 39
    .end local v2           #diag:I
    .end local v6           #os:Ljava/io/DataOutputStream;
    .end local v8           #osRes:Ljava/io/InputStreamReader;
    .end local v10           #process:Ljava/lang/Process;
    .end local v12           #response:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    const-string v16, ""

    goto :goto_0

    .line 58
    .restart local v7       #os:Ljava/io/DataOutputStream;
    .restart local v9       #osRes:Ljava/io/InputStreamReader;
    .restart local v10       #process:Ljava/lang/Process;
    .restart local v11       #reader:Ljava/io/BufferedReader;
    .restart local v12       #response:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    :try_start_4
    aget-object v13, p1, v15

    .line 59
    .local v13, single:Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    .line 61
    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V

    .line 58
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 70
    .end local v13           #single:Ljava/lang/String;
    .restart local v5       #line:Ljava/lang/String;
    :cond_8
    if-nez p3, :cond_9

    .line 71
    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    :goto_5
    invoke-static {v5}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 73
    :cond_9
    move-object/from16 v0, p3

    move-object v1, v5

    invoke-interface {v0, v1}, Lcom/stericson/RootTools/IResult;->process(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    .line 79
    .end local v5           #line:Ljava/lang/String;
    .end local v11           #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v14

    move-object v4, v14

    move-object v8, v9

    .end local v9           #osRes:Ljava/io/InputStreamReader;
    .restart local v8       #osRes:Ljava/io/InputStreamReader;
    move-object v6, v7

    .line 80
    .end local v7           #os:Ljava/io/DataOutputStream;
    .local v4, ex:Ljava/lang/Exception;
    .restart local v6       #os:Ljava/io/DataOutputStream;
    :goto_6
    if-eqz p3, :cond_2

    .line 81
    :try_start_5
    move-object/from16 v0, p3

    move-object v1, v4

    invoke-interface {v0, v1}, Lcom/stericson/RootTools/IResult;->onFailure(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .end local v4           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    goto :goto_3

    .line 98
    .restart local v2       #diag:I
    :catch_1
    move-exception v14

    move-object v3, v14

    .line 100
    .local v3, e:Ljava/lang/Exception;
    goto :goto_4

    .end local v2           #diag:I
    .end local v3           #e:Ljava/lang/Exception;
    .end local v6           #os:Ljava/io/DataOutputStream;
    .restart local v7       #os:Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v14

    move-object v6, v7

    .end local v7           #os:Ljava/io/DataOutputStream;
    .restart local v6       #os:Ljava/io/DataOutputStream;
    goto :goto_3

    .end local v6           #os:Ljava/io/DataOutputStream;
    .end local v8           #osRes:Ljava/io/InputStreamReader;
    .restart local v7       #os:Ljava/io/DataOutputStream;
    .restart local v9       #osRes:Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v14

    move-object v8, v9

    .end local v9           #osRes:Ljava/io/InputStreamReader;
    .restart local v8       #osRes:Ljava/io/InputStreamReader;
    move-object v6, v7

    .end local v7           #os:Ljava/io/DataOutputStream;
    .restart local v6       #os:Ljava/io/DataOutputStream;
    goto :goto_3

    .line 79
    :catch_2
    move-exception v14

    move-object v4, v14

    goto :goto_6

    .end local v6           #os:Ljava/io/DataOutputStream;
    .restart local v7       #os:Ljava/io/DataOutputStream;
    :catch_3
    move-exception v14

    move-object v4, v14

    move-object v6, v7

    .end local v7           #os:Ljava/io/DataOutputStream;
    .restart local v6       #os:Ljava/io/DataOutputStream;
    goto :goto_6
.end method
