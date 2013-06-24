.class Lcom/stericson/RootTools/execution/Executer$Worker;
.super Ljava/lang/Thread;
.source "Executer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericson/RootTools/execution/Executer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Worker"
.end annotation


# instance fields
.field private commands:[Ljava/lang/String;

.field private executer:Lcom/stericson/RootTools/execution/Executer;

.field public exit:I

.field public finalResponse:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sleepTime:I

.field private useRoot:Z


# direct methods
.method private constructor <init>(Lcom/stericson/RootTools/execution/Executer;[Ljava/lang/String;ILcom/stericson/RootTools/RootTools$Result;Z)V
    .locals 1
    .parameter "executer"
    .parameter "commands"
    .parameter "sleepTime"
    .parameter "result"
    .parameter "useRoot"

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 112
    const/16 v0, -0x38f

    iput v0, p0, Lcom/stericson/RootTools/execution/Executer$Worker;->exit:I

    .line 119
    iput-object p2, p0, Lcom/stericson/RootTools/execution/Executer$Worker;->commands:[Ljava/lang/String;

    .line 120
    iput p3, p0, Lcom/stericson/RootTools/execution/Executer$Worker;->sleepTime:I

    .line 121
    iput-object p1, p0, Lcom/stericson/RootTools/execution/Executer$Worker;->executer:Lcom/stericson/RootTools/execution/Executer;

    .line 122
    iget-object v0, p0, Lcom/stericson/RootTools/execution/Executer$Worker;->executer:Lcom/stericson/RootTools/execution/Executer;

    iput-object p4, v0, Lcom/stericson/RootTools/execution/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    .line 123
    iput-boolean p5, p0, Lcom/stericson/RootTools/execution/Executer$Worker;->useRoot:Z

    .line 124
    return-void
.end method

.method synthetic constructor <init>(Lcom/stericson/RootTools/execution/Executer;[Ljava/lang/String;ILcom/stericson/RootTools/RootTools$Result;ZLcom/stericson/RootTools/execution/Executer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 107
    invoke-direct/range {p0 .. p5}, Lcom/stericson/RootTools/execution/Executer$Worker;-><init>(Lcom/stericson/RootTools/execution/Executer;[Ljava/lang/String;ILcom/stericson/RootTools/RootTools$Result;Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 127
    const/4 v10, 0x0

    .line 128
    .local v10, os:Ljava/io/DataOutputStream;
    const/4 v14, 0x0

    .line 129
    .local v14, osRes:Ljava/io/InputStreamReader;
    const/4 v12, 0x0

    .line 133
    .local v12, osErr:Ljava/io/InputStreamReader;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->executer:Lcom/stericson/RootTools/execution/Executer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer;->process:Ljava/lang/Process;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    .line 135
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Runtime;->gc()V

    .line 137
    sget-object v20, Lcom/stericson/RootTools/RootTools;->customShell:Ljava/lang/String;

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->executer:Lcom/stericson/RootTools/execution/Executer;

    move-object/from16 v21, v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->useRoot:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    const-string v20, "su"

    :goto_0
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/stericson/RootTools/execution/Executer;->process:Ljava/lang/Process;

    .line 140
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->useRoot:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    const-string v20, "Using Root"

    :goto_1
    invoke-static/range {v20 .. v20}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 148
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->executer:Lcom/stericson/RootTools/execution/Executer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->executer:Lcom/stericson/RootTools/execution/Executer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->executer:Lcom/stericson/RootTools/execution/Executer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer;->process:Ljava/lang/Process;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/stericson/RootTools/RootTools$Result;->setProcess(Ljava/lang/Process;)Lcom/stericson/RootTools/RootTools$Result;

    .line 153
    :cond_0
    new-instance v11, Ljava/io/DataOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->executer:Lcom/stericson/RootTools/execution/Executer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer;->process:Ljava/lang/Process;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 154
    .end local v10           #os:Ljava/io/DataOutputStream;
    .local v11, os:Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v15, Ljava/io/InputStreamReader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->executer:Lcom/stericson/RootTools/execution/Executer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer;->process:Ljava/lang/Process;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 155
    .end local v14           #osRes:Ljava/io/InputStreamReader;
    .local v15, osRes:Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v13, Ljava/io/InputStreamReader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->executer:Lcom/stericson/RootTools/execution/Executer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer;->process:Ljava/lang/Process;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    .line 156
    .end local v12           #osErr:Ljava/io/InputStreamReader;
    .local v13, osErr:Ljava/io/InputStreamReader;
    :try_start_3
    new-instance v16, Ljava/io/BufferedReader;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 157
    .local v16, reader:Ljava/io/BufferedReader;
    new-instance v17, Ljava/io/BufferedReader;

    move-object/from16 v0, v17

    invoke-direct {v0, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 159
    .local v17, reader_error:Ljava/io/BufferedReader;
    const/16 v18, 0x0

    .line 161
    .local v18, response:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->executer:Lcom/stericson/RootTools/execution/Executer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    .line 162
    new-instance v18, Ljava/util/LinkedList;

    .end local v18           #response:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v18 .. v18}, Ljava/util/LinkedList;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 168
    .restart local v18       #response:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->commands:[Ljava/lang/String;

    .local v2, arr$:[Ljava/lang/String;
    array-length v7, v2

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_3
    if-ge v5, v7, :cond_8

    aget-object v19, v2, v5

    .line 169
    .local v19, single:Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Shell command: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 170
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->flush()V

    .line 172
    move-object/from16 v0, p0

    iget v0, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->sleepTime:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 168
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 139
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .end local v11           #os:Ljava/io/DataOutputStream;
    .end local v13           #osErr:Ljava/io/InputStreamReader;
    .end local v15           #osRes:Ljava/io/InputStreamReader;
    .end local v16           #reader:Ljava/io/BufferedReader;
    .end local v17           #reader_error:Ljava/io/BufferedReader;
    .end local v18           #response:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v19           #single:Ljava/lang/String;
    .restart local v10       #os:Ljava/io/DataOutputStream;
    .restart local v12       #osErr:Ljava/io/InputStreamReader;
    .restart local v14       #osRes:Ljava/io/InputStreamReader;
    :cond_2
    :try_start_5
    const-string v20, "sh"

    goto/16 :goto_0

    .line 140
    :cond_3
    const-string v20, "Using sh"

    goto/16 :goto_1

    .line 144
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->executer:Lcom/stericson/RootTools/execution/Executer;

    move-object/from16 v20, v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v21

    sget-object v22, Lcom/stericson/RootTools/RootTools;->customShell:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/stericson/RootTools/execution/Executer;->process:Ljava/lang/Process;

    .line 145
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Using custom shell: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/stericson/RootTools/RootTools;->customShell:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    goto/16 :goto_2

    .line 238
    :catch_0
    move-exception v6

    .line 251
    .local v6, ignore:Ljava/lang/InterruptedException;
    :goto_4
    if-eqz v10, :cond_5

    .line 252
    :try_start_6
    const-string v20, "exit \n"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V

    .line 254
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V

    .line 255
    const/4 v10, 0x0

    .line 257
    :cond_5
    if-eqz v14, :cond_6

    .line 258
    invoke-virtual {v14}, Ljava/io/InputStreamReader;->close()V

    .line 259
    const/4 v14, 0x0

    .line 261
    :cond_6
    if-eqz v12, :cond_7

    .line 262
    invoke-virtual {v12}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a

    .line 263
    const/4 v12, 0x0

    .line 268
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->executer:Lcom/stericson/RootTools/execution/Executer;

    move-object/from16 v20, v0

    #calls: Lcom/stericson/RootTools/execution/Executer;->closeShell()V
    invoke-static/range {v20 .. v20}, Lcom/stericson/RootTools/execution/Executer;->access$100(Lcom/stericson/RootTools/execution/Executer;)V

    .line 271
    .end local v6           #ignore:Ljava/lang/InterruptedException;
    :goto_6
    return-void

    .line 175
    .end local v10           #os:Ljava/io/DataOutputStream;
    .end local v12           #osErr:Ljava/io/InputStreamReader;
    .end local v14           #osRes:Ljava/io/InputStreamReader;
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v5       #i$:I
    .restart local v7       #len$:I
    .restart local v11       #os:Ljava/io/DataOutputStream;
    .restart local v13       #osErr:Ljava/io/InputStreamReader;
    .restart local v15       #osRes:Ljava/io/InputStreamReader;
    .restart local v16       #reader:Ljava/io/BufferedReader;
    .restart local v17       #reader_error:Ljava/io/BufferedReader;
    .restart local v18       #response:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    :try_start_7
    const-string v20, "exit \n"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->flush()V

    .line 178
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 179
    .local v8, line:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 181
    .local v9, line_error:Ljava/lang/String;
    :goto_7
    if-eqz v8, :cond_d

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->executer:Lcom/stericson/RootTools/execution/Executer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    move-object/from16 v20, v0

    if-nez v20, :cond_9

    .line 183
    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    :goto_8
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "input stream: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 190
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    goto :goto_7

    .line 185
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->executer:Lcom/stericson/RootTools/execution/Executer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/stericson/RootTools/RootTools$Result;->process(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_8

    .line 209
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .end local v8           #line:Ljava/lang/String;
    .end local v9           #line_error:Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 211
    .local v4, ex:Ljava/lang/Exception;
    :try_start_8
    sget-boolean v20, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v20, :cond_a

    .line 212
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 215
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->executer:Lcom/stericson/RootTools/execution/Executer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    move-object/from16 v20, v0

    if-eqz v20, :cond_b

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->executer:Lcom/stericson/RootTools/execution/Executer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/stericson/RootTools/RootTools$Result;->onFailure(Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 220
    :cond_b
    :try_start_9
    const-string v20, "In finally block"

    invoke-static/range {v20 .. v20}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->executer:Lcom/stericson/RootTools/execution/Executer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer;->process:Ljava/lang/Process;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    .line 223
    const-string v20, "Getting Exit"

    invoke-static/range {v20 .. v20}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 224
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/stericson/RootTools/execution/Executer$Worker;->finalResponse:Ljava/util/List;

    .line 225
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/stericson/RootTools/execution/Executer$Worker;->exit:I

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->executer:Lcom/stericson/RootTools/execution/Executer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer;->process:Ljava/lang/Process;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Process;->waitFor()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/stericson/RootTools/execution/Executer$Worker;->exit:I

    .line 227
    const-string v20, "Exit done..."

    invoke-static/range {v20 .. v20}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 228
    move-object/from16 v0, p0

    iget v0, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->exit:I

    move/from16 v20, v0

    sput v20, Lcom/stericson/RootTools/RootTools;->lastExitCode:I

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->executer:Lcom/stericson/RootTools/execution/Executer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    move-object/from16 v20, v0

    if-eqz v20, :cond_19

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->executer:Lcom/stericson/RootTools/execution/Executer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->exit:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/stericson/RootTools/RootTools$Result;->onComplete(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 251
    .end local v4           #ex:Ljava/lang/Exception;
    :cond_c
    :goto_9
    if-eqz v11, :cond_1d

    .line 252
    :try_start_a
    const-string v20, "exit \n"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->flush()V

    .line 254
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 255
    const/4 v10, 0x0

    .line 257
    .end local v11           #os:Ljava/io/DataOutputStream;
    .restart local v10       #os:Ljava/io/DataOutputStream;
    :goto_a
    if-eqz v15, :cond_1c

    .line 258
    :try_start_b
    invoke-virtual {v15}, Ljava/io/InputStreamReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_d

    .line 259
    const/4 v14, 0x0

    .line 261
    .end local v15           #osRes:Ljava/io/InputStreamReader;
    .restart local v14       #osRes:Ljava/io/InputStreamReader;
    :goto_b
    if-eqz v13, :cond_1b

    .line 262
    :try_start_c
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_e

    .line 263
    const/4 v12, 0x0

    .line 268
    .end local v13           #osErr:Ljava/io/InputStreamReader;
    .restart local v12       #osErr:Ljava/io/InputStreamReader;
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->executer:Lcom/stericson/RootTools/execution/Executer;

    move-object/from16 v20, v0

    #calls: Lcom/stericson/RootTools/execution/Executer;->closeShell()V
    invoke-static/range {v20 .. v20}, Lcom/stericson/RootTools/execution/Executer;->access$100(Lcom/stericson/RootTools/execution/Executer;)V

    goto/16 :goto_6

    .line 193
    .end local v10           #os:Ljava/io/DataOutputStream;
    .end local v12           #osErr:Ljava/io/InputStreamReader;
    .end local v14           #osRes:Ljava/io/InputStreamReader;
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v5       #i$:I
    .restart local v7       #len$:I
    .restart local v8       #line:Ljava/lang/String;
    .restart local v9       #line_error:Ljava/lang/String;
    .restart local v11       #os:Ljava/io/DataOutputStream;
    .restart local v13       #osErr:Ljava/io/InputStreamReader;
    .restart local v15       #osRes:Ljava/io/InputStreamReader;
    :cond_d
    :try_start_d
    const-string v20, "Done reading input stream"

    invoke-static/range {v20 .. v20}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 195
    :goto_d
    if-eqz v9, :cond_10

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->executer:Lcom/stericson/RootTools/execution/Executer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    move-object/from16 v20, v0

    if-nez v20, :cond_e

    .line 197
    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    :goto_e
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "error stream: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 203
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    goto :goto_d

    .line 199
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->executer:Lcom/stericson/RootTools/execution/Executer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/stericson/RootTools/RootTools$Result;->processError(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    goto :goto_e

    .line 220
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .end local v8           #line:Ljava/lang/String;
    .end local v9           #line_error:Ljava/lang/String;
    :catchall_0
    move-exception v20

    :try_start_e
    const-string v21, "In finally block"

    invoke-static/range {v21 .. v21}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->executer:Lcom/stericson/RootTools/execution/Executer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer;->process:Ljava/lang/Process;

    move-object/from16 v21, v0

    if-eqz v21, :cond_f

    .line 223
    const-string v21, "Getting Exit"

    invoke-static/range {v21 .. v21}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 224
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/stericson/RootTools/execution/Executer$Worker;->finalResponse:Ljava/util/List;

    .line 225
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/stericson/RootTools/execution/Executer$Worker;->exit:I

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->executer:Lcom/stericson/RootTools/execution/Executer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer;->process:Ljava/lang/Process;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Process;->waitFor()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/stericson/RootTools/execution/Executer$Worker;->exit:I

    .line 227
    const-string v21, "Exit done..."

    invoke-static/range {v21 .. v21}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 228
    move-object/from16 v0, p0

    iget v0, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->exit:I

    move/from16 v21, v0

    sput v21, Lcom/stericson/RootTools/RootTools;->lastExitCode:I

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->executer:Lcom/stericson/RootTools/execution/Executer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1a

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->executer:Lcom/stericson/RootTools/execution/Executer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->exit:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/stericson/RootTools/RootTools$Result;->onComplete(I)V

    .line 233
    :cond_f
    :goto_f
    throw v20
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    .line 238
    .end local v16           #reader:Ljava/io/BufferedReader;
    .end local v17           #reader_error:Ljava/io/BufferedReader;
    .end local v18           #response:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_2
    move-exception v6

    move-object v12, v13

    .end local v13           #osErr:Ljava/io/InputStreamReader;
    .restart local v12       #osErr:Ljava/io/InputStreamReader;
    move-object v14, v15

    .end local v15           #osRes:Ljava/io/InputStreamReader;
    .restart local v14       #osRes:Ljava/io/InputStreamReader;
    move-object v10, v11

    .end local v11           #os:Ljava/io/DataOutputStream;
    .restart local v10       #os:Ljava/io/DataOutputStream;
    goto/16 :goto_4

    .line 206
    .end local v10           #os:Ljava/io/DataOutputStream;
    .end local v12           #osErr:Ljava/io/InputStreamReader;
    .end local v14           #osRes:Ljava/io/InputStreamReader;
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v5       #i$:I
    .restart local v7       #len$:I
    .restart local v8       #line:Ljava/lang/String;
    .restart local v9       #line_error:Ljava/lang/String;
    .restart local v11       #os:Ljava/io/DataOutputStream;
    .restart local v13       #osErr:Ljava/io/InputStreamReader;
    .restart local v15       #osRes:Ljava/io/InputStreamReader;
    .restart local v16       #reader:Ljava/io/BufferedReader;
    .restart local v17       #reader_error:Ljava/io/BufferedReader;
    .restart local v18       #response:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_10
    :try_start_f
    const-string v20, "Done reading error stream"

    invoke-static/range {v20 .. v20}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    .line 220
    :try_start_10
    const-string v20, "In finally block"

    invoke-static/range {v20 .. v20}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->executer:Lcom/stericson/RootTools/execution/Executer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer;->process:Ljava/lang/Process;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    .line 223
    const-string v20, "Getting Exit"

    invoke-static/range {v20 .. v20}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 224
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/stericson/RootTools/execution/Executer$Worker;->finalResponse:Ljava/util/List;

    .line 225
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/stericson/RootTools/execution/Executer$Worker;->exit:I

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->executer:Lcom/stericson/RootTools/execution/Executer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer;->process:Ljava/lang/Process;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Process;->waitFor()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/stericson/RootTools/execution/Executer$Worker;->exit:I

    .line 227
    const-string v20, "Exit done..."

    invoke-static/range {v20 .. v20}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 228
    move-object/from16 v0, p0

    iget v0, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->exit:I

    move/from16 v20, v0

    sput v20, Lcom/stericson/RootTools/RootTools;->lastExitCode:I

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->executer:Lcom/stericson/RootTools/execution/Executer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    move-object/from16 v20, v0

    if-eqz v20, :cond_15

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->executer:Lcom/stericson/RootTools/execution/Executer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->exit:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/stericson/RootTools/RootTools$Result;->onComplete(I)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    goto/16 :goto_9

    .line 242
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .end local v8           #line:Ljava/lang/String;
    .end local v9           #line_error:Ljava/lang/String;
    .end local v16           #reader:Ljava/io/BufferedReader;
    .end local v17           #reader_error:Ljava/io/BufferedReader;
    .end local v18           #response:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_3
    move-exception v3

    move-object v12, v13

    .end local v13           #osErr:Ljava/io/InputStreamReader;
    .restart local v12       #osErr:Ljava/io/InputStreamReader;
    move-object v14, v15

    .end local v15           #osRes:Ljava/io/InputStreamReader;
    .restart local v14       #osRes:Ljava/io/InputStreamReader;
    move-object v10, v11

    .line 243
    .end local v11           #os:Ljava/io/DataOutputStream;
    .local v3, e:Ljava/lang/Exception;
    .restart local v10       #os:Ljava/io/DataOutputStream;
    :goto_10
    :try_start_11
    sget-boolean v20, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v20, :cond_11

    .line 244
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 245
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 251
    :cond_11
    if-eqz v10, :cond_12

    .line 252
    :try_start_12
    const-string v20, "exit \n"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V

    .line 254
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V

    .line 255
    const/4 v10, 0x0

    .line 257
    :cond_12
    if-eqz v14, :cond_13

    .line 258
    invoke-virtual {v14}, Ljava/io/InputStreamReader;->close()V

    .line 259
    const/4 v14, 0x0

    .line 261
    :cond_13
    if-eqz v12, :cond_14

    .line 262
    invoke-virtual {v12}, Ljava/io/InputStreamReader;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6

    .line 263
    const/4 v12, 0x0

    .line 268
    :cond_14
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->executer:Lcom/stericson/RootTools/execution/Executer;

    move-object/from16 v20, v0

    #calls: Lcom/stericson/RootTools/execution/Executer;->closeShell()V
    invoke-static/range {v20 .. v20}, Lcom/stericson/RootTools/execution/Executer;->access$100(Lcom/stericson/RootTools/execution/Executer;)V

    goto/16 :goto_6

    .line 233
    .end local v3           #e:Ljava/lang/Exception;
    .end local v10           #os:Ljava/io/DataOutputStream;
    .end local v12           #osErr:Ljava/io/InputStreamReader;
    .end local v14           #osRes:Ljava/io/InputStreamReader;
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v5       #i$:I
    .restart local v7       #len$:I
    .restart local v8       #line:Ljava/lang/String;
    .restart local v9       #line_error:Ljava/lang/String;
    .restart local v11       #os:Ljava/io/DataOutputStream;
    .restart local v13       #osErr:Ljava/io/InputStreamReader;
    .restart local v15       #osRes:Ljava/io/InputStreamReader;
    .restart local v16       #reader:Ljava/io/BufferedReader;
    .restart local v17       #reader_error:Ljava/io/BufferedReader;
    .restart local v18       #response:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_15
    :try_start_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->exit:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_13} :catch_2
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3

    goto/16 :goto_9

    .line 249
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .end local v8           #line:Ljava/lang/String;
    .end local v9           #line_error:Ljava/lang/String;
    .end local v16           #reader:Ljava/io/BufferedReader;
    .end local v17           #reader_error:Ljava/io/BufferedReader;
    .end local v18           #response:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1
    move-exception v20

    move-object v12, v13

    .end local v13           #osErr:Ljava/io/InputStreamReader;
    .restart local v12       #osErr:Ljava/io/InputStreamReader;
    move-object v14, v15

    .end local v15           #osRes:Ljava/io/InputStreamReader;
    .restart local v14       #osRes:Ljava/io/InputStreamReader;
    move-object v10, v11

    .line 251
    .end local v11           #os:Ljava/io/DataOutputStream;
    .restart local v10       #os:Ljava/io/DataOutputStream;
    :goto_12
    if-eqz v10, :cond_16

    .line 252
    :try_start_14
    const-string v21, "exit \n"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V

    .line 254
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V

    .line 255
    const/4 v10, 0x0

    .line 257
    :cond_16
    if-eqz v14, :cond_17

    .line 258
    invoke-virtual {v14}, Ljava/io/InputStreamReader;->close()V

    .line 259
    const/4 v14, 0x0

    .line 261
    :cond_17
    if-eqz v12, :cond_18

    .line 262
    invoke-virtual {v12}, Ljava/io/InputStreamReader;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5

    .line 263
    const/4 v12, 0x0

    .line 268
    :cond_18
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->executer:Lcom/stericson/RootTools/execution/Executer;

    move-object/from16 v21, v0

    #calls: Lcom/stericson/RootTools/execution/Executer;->closeShell()V
    invoke-static/range {v21 .. v21}, Lcom/stericson/RootTools/execution/Executer;->access$100(Lcom/stericson/RootTools/execution/Executer;)V

    throw v20

    .line 233
    .end local v10           #os:Ljava/io/DataOutputStream;
    .end local v12           #osErr:Ljava/io/InputStreamReader;
    .end local v14           #osRes:Ljava/io/InputStreamReader;
    .restart local v4       #ex:Ljava/lang/Exception;
    .restart local v11       #os:Ljava/io/DataOutputStream;
    .restart local v13       #osErr:Ljava/io/InputStreamReader;
    .restart local v15       #osRes:Ljava/io/InputStreamReader;
    .restart local v16       #reader:Ljava/io/BufferedReader;
    .restart local v17       #reader_error:Ljava/io/BufferedReader;
    .restart local v18       #response:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_19
    :try_start_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->exit:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .end local v4           #ex:Ljava/lang/Exception;
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/stericson/RootTools/execution/Executer$Worker;->exit:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_15} :catch_2
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_3

    goto/16 :goto_f

    .line 265
    :catch_4
    move-exception v20

    move-object v14, v15

    .end local v15           #osRes:Ljava/io/InputStreamReader;
    .restart local v14       #osRes:Ljava/io/InputStreamReader;
    move-object v10, v11

    .end local v11           #os:Ljava/io/DataOutputStream;
    .restart local v10       #os:Ljava/io/DataOutputStream;
    :goto_14
    move-object v12, v13

    .end local v13           #osErr:Ljava/io/InputStreamReader;
    .restart local v12       #osErr:Ljava/io/InputStreamReader;
    goto/16 :goto_c

    .end local v16           #reader:Ljava/io/BufferedReader;
    .end local v17           #reader_error:Ljava/io/BufferedReader;
    .end local v18           #response:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_5
    move-exception v21

    goto :goto_13

    .line 249
    :catchall_2
    move-exception v20

    goto :goto_12

    .end local v10           #os:Ljava/io/DataOutputStream;
    .restart local v11       #os:Ljava/io/DataOutputStream;
    :catchall_3
    move-exception v20

    move-object v10, v11

    .end local v11           #os:Ljava/io/DataOutputStream;
    .restart local v10       #os:Ljava/io/DataOutputStream;
    goto :goto_12

    .end local v10           #os:Ljava/io/DataOutputStream;
    .end local v14           #osRes:Ljava/io/InputStreamReader;
    .restart local v11       #os:Ljava/io/DataOutputStream;
    .restart local v15       #osRes:Ljava/io/InputStreamReader;
    :catchall_4
    move-exception v20

    move-object v14, v15

    .end local v15           #osRes:Ljava/io/InputStreamReader;
    .restart local v14       #osRes:Ljava/io/InputStreamReader;
    move-object v10, v11

    .end local v11           #os:Ljava/io/DataOutputStream;
    .restart local v10       #os:Ljava/io/DataOutputStream;
    goto :goto_12

    .line 265
    .restart local v3       #e:Ljava/lang/Exception;
    :catch_6
    move-exception v20

    goto :goto_11

    .line 242
    .end local v3           #e:Ljava/lang/Exception;
    :catch_7
    move-exception v3

    goto/16 :goto_10

    .end local v10           #os:Ljava/io/DataOutputStream;
    .restart local v11       #os:Ljava/io/DataOutputStream;
    :catch_8
    move-exception v3

    move-object v10, v11

    .end local v11           #os:Ljava/io/DataOutputStream;
    .restart local v10       #os:Ljava/io/DataOutputStream;
    goto/16 :goto_10

    .end local v10           #os:Ljava/io/DataOutputStream;
    .end local v14           #osRes:Ljava/io/InputStreamReader;
    .restart local v11       #os:Ljava/io/DataOutputStream;
    .restart local v15       #osRes:Ljava/io/InputStreamReader;
    :catch_9
    move-exception v3

    move-object v14, v15

    .end local v15           #osRes:Ljava/io/InputStreamReader;
    .restart local v14       #osRes:Ljava/io/InputStreamReader;
    move-object v10, v11

    .end local v11           #os:Ljava/io/DataOutputStream;
    .restart local v10       #os:Ljava/io/DataOutputStream;
    goto/16 :goto_10

    .line 265
    .restart local v6       #ignore:Ljava/lang/InterruptedException;
    :catch_a
    move-exception v20

    goto/16 :goto_5

    .line 238
    .end local v6           #ignore:Ljava/lang/InterruptedException;
    .end local v10           #os:Ljava/io/DataOutputStream;
    .restart local v11       #os:Ljava/io/DataOutputStream;
    :catch_b
    move-exception v6

    move-object v10, v11

    .end local v11           #os:Ljava/io/DataOutputStream;
    .restart local v10       #os:Ljava/io/DataOutputStream;
    goto/16 :goto_4

    .end local v10           #os:Ljava/io/DataOutputStream;
    .end local v14           #osRes:Ljava/io/InputStreamReader;
    .restart local v11       #os:Ljava/io/DataOutputStream;
    .restart local v15       #osRes:Ljava/io/InputStreamReader;
    :catch_c
    move-exception v6

    move-object v14, v15

    .end local v15           #osRes:Ljava/io/InputStreamReader;
    .restart local v14       #osRes:Ljava/io/InputStreamReader;
    move-object v10, v11

    .end local v11           #os:Ljava/io/DataOutputStream;
    .restart local v10       #os:Ljava/io/DataOutputStream;
    goto/16 :goto_4

    .line 265
    .end local v12           #osErr:Ljava/io/InputStreamReader;
    .end local v14           #osRes:Ljava/io/InputStreamReader;
    .restart local v13       #osErr:Ljava/io/InputStreamReader;
    .restart local v15       #osRes:Ljava/io/InputStreamReader;
    .restart local v16       #reader:Ljava/io/BufferedReader;
    .restart local v17       #reader_error:Ljava/io/BufferedReader;
    .restart local v18       #response:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_d
    move-exception v20

    move-object v14, v15

    .end local v15           #osRes:Ljava/io/InputStreamReader;
    .restart local v14       #osRes:Ljava/io/InputStreamReader;
    goto :goto_14

    :catch_e
    move-exception v20

    goto :goto_14

    :cond_1b
    move-object v12, v13

    .end local v13           #osErr:Ljava/io/InputStreamReader;
    .restart local v12       #osErr:Ljava/io/InputStreamReader;
    goto/16 :goto_c

    .end local v12           #osErr:Ljava/io/InputStreamReader;
    .end local v14           #osRes:Ljava/io/InputStreamReader;
    .restart local v13       #osErr:Ljava/io/InputStreamReader;
    .restart local v15       #osRes:Ljava/io/InputStreamReader;
    :cond_1c
    move-object v14, v15

    .end local v15           #osRes:Ljava/io/InputStreamReader;
    .restart local v14       #osRes:Ljava/io/InputStreamReader;
    goto/16 :goto_b

    .end local v10           #os:Ljava/io/DataOutputStream;
    .end local v14           #osRes:Ljava/io/InputStreamReader;
    .restart local v11       #os:Ljava/io/DataOutputStream;
    .restart local v15       #osRes:Ljava/io/InputStreamReader;
    :cond_1d
    move-object v10, v11

    .end local v11           #os:Ljava/io/DataOutputStream;
    .restart local v10       #os:Ljava/io/DataOutputStream;
    goto/16 :goto_a
.end method
