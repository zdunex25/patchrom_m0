.class Lcom/stericson/RootTools/internal/Installer;
.super Ljava/lang/Object;
.source "Installer.java"


# static fields
.field private static final BOGUS_FILE_NAME:Ljava/lang/String; = "bogus"

.field private static final LOG_TAG:Ljava/lang/String; = "RootTools::Installer"


# instance fields
.field private context:Landroid/content/Context;

.field private filesPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/stericson/RootTools/internal/Installer;->context:Landroid/content/Context;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stericson/RootTools/internal/Installer;->filesPath:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method protected installBinary(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 17
    .parameter "sourceId"
    .parameter "destName"
    .parameter "mode"

    .prologue
    .line 72
    new-instance v9, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/stericson/RootTools/internal/Installer;->filesPath:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .local v9, mf:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_8

    .line 78
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/stericson/RootTools/internal/Installer;->context:Landroid/content/Context;

    const-string v13, "bogus"

    invoke-virtual {v12, v13}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v5

    .line 79
    .local v5, fis:Ljava/io/FileInputStream;
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 107
    .end local v5           #fis:Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/stericson/RootTools/internal/Installer;->context:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v7

    .line 108
    .local v7, iss:Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 110
    .local v10, oss:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6

    .line 111
    .end local v10           #oss:Ljava/io/FileOutputStream;
    .local v11, oss:Ljava/io/FileOutputStream;
    const/16 v12, 0x1000

    :try_start_2
    new-array v1, v12, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_d

    .line 114
    .local v1, buffer:[B
    :goto_1
    const/4 v12, -0x1

    :try_start_3
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, len:I
    if-eq v12, v8, :cond_6

    .line 115
    const/4 v12, 0x0

    invoke-virtual {v11, v1, v12, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_d

    goto :goto_1

    .line 117
    .end local v8           #len:I
    :catch_0
    move-exception v4

    .line 118
    .local v4, ex:Ljava/io/IOException;
    :try_start_4
    sget-boolean v12, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v12, :cond_1

    .line 119
    const-string v12, "RootTools::Installer"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_d

    .line 121
    :cond_1
    const/4 v12, 0x0

    .line 129
    if-eqz v11, :cond_2

    .line 131
    :try_start_5
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    .line 152
    .end local v1           #buffer:[B
    .end local v4           #ex:Ljava/io/IOException;
    .end local v7           #iss:Ljava/io/InputStream;
    .end local v11           #oss:Ljava/io/FileOutputStream;
    :cond_2
    :goto_2
    return v12

    .line 80
    :catch_1
    move-exception v3

    .line 81
    .local v3, e:Ljava/io/FileNotFoundException;
    const/4 v6, 0x0

    .line 83
    .local v6, fos:Ljava/io/FileOutputStream;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/stericson/RootTools/internal/Installer;->context:Landroid/content/Context;

    const-string v13, "bogus"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v6

    .line 84
    const-string v12, "justcreatedfilesdirectory"

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 91
    if-eqz v6, :cond_0

    .line 93
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 94
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/stericson/RootTools/internal/Installer;->context:Landroid/content/Context;

    const-string v13, "bogus"

    invoke-virtual {v12, v13}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    .line 95
    :catch_2
    move-exception v12

    goto :goto_0

    .line 85
    :catch_3
    move-exception v4

    .line 86
    .local v4, ex:Ljava/lang/Exception;
    :try_start_8
    sget-boolean v12, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v12, :cond_3

    .line 87
    const-string v12, "RootTools::Installer"

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 89
    :cond_3
    const/4 v12, 0x0

    .line 91
    if-eqz v6, :cond_2

    .line 93
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 94
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/stericson/RootTools/internal/Installer;->context:Landroid/content/Context;

    const-string v14, "bogus"

    invoke-virtual {v13, v14}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_2

    .line 95
    :catch_4
    move-exception v13

    goto :goto_2

    .line 91
    .end local v4           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    if-eqz v6, :cond_4

    .line 93
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 94
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/stericson/RootTools/internal/Installer;->context:Landroid/content/Context;

    const-string v14, "bogus"

    invoke-virtual {v13, v14}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_e

    .line 96
    :cond_4
    :goto_3
    throw v12

    .line 99
    .end local v3           #e:Ljava/io/FileNotFoundException;
    .end local v6           #fos:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v4

    .line 100
    .local v4, ex:Ljava/io/IOException;
    sget-boolean v12, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v12, :cond_5

    .line 101
    const-string v12, "RootTools::Installer"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_5
    const/4 v12, 0x0

    goto :goto_2

    .line 129
    .end local v4           #ex:Ljava/io/IOException;
    .restart local v1       #buffer:[B
    .restart local v7       #iss:Ljava/io/InputStream;
    .restart local v8       #len:I
    .restart local v11       #oss:Ljava/io/FileOutputStream;
    :cond_6
    if-eqz v11, :cond_7

    .line 131
    :try_start_b
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    .line 137
    :cond_7
    :goto_4
    :try_start_c
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 146
    :try_start_d
    new-instance v2, Lcom/stericson/RootTools/execution/CommandCapture;

    const/4 v12, 0x0

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "chmod "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/internal/Installer;->filesPath:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-direct {v2, v12, v13}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 147
    .local v2, command:Lcom/stericson/RootTools/execution/CommandCapture;
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v12

    invoke-virtual {v12, v2}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    .line 148
    invoke-virtual {v2}, Lcom/stericson/RootTools/execution/CommandCapture;->waitForFinish()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    .line 152
    .end local v1           #buffer:[B
    .end local v2           #command:Lcom/stericson/RootTools/execution/CommandCapture;
    .end local v7           #iss:Ljava/io/InputStream;
    .end local v8           #len:I
    .end local v11           #oss:Ljava/io/FileOutputStream;
    :cond_8
    :goto_5
    const/4 v12, 0x1

    goto/16 :goto_2

    .line 123
    .restart local v7       #iss:Ljava/io/InputStream;
    .restart local v10       #oss:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v4

    .line 124
    .local v4, ex:Ljava/io/FileNotFoundException;
    :goto_6
    :try_start_e
    sget-boolean v12, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v12, :cond_9

    .line 125
    const-string v12, "RootTools::Installer"

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 127
    :cond_9
    const/4 v12, 0x0

    .line 129
    if-eqz v10, :cond_2

    .line 131
    :try_start_f
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    goto/16 :goto_2

    .line 132
    :catch_7
    move-exception v13

    goto/16 :goto_2

    .line 129
    .end local v4           #ex:Ljava/io/FileNotFoundException;
    :catchall_1
    move-exception v12

    :goto_7
    if-eqz v10, :cond_a

    .line 131
    :try_start_10
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    .line 133
    :cond_a
    :goto_8
    throw v12

    .line 138
    .end local v10           #oss:Ljava/io/FileOutputStream;
    .restart local v1       #buffer:[B
    .restart local v8       #len:I
    .restart local v11       #oss:Ljava/io/FileOutputStream;
    :catch_8
    move-exception v4

    .line 139
    .local v4, ex:Ljava/io/IOException;
    sget-boolean v12, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v12, :cond_b

    .line 140
    const-string v12, "RootTools::Installer"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_b
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 132
    .end local v8           #len:I
    :catch_9
    move-exception v13

    goto/16 :goto_2

    .end local v4           #ex:Ljava/io/IOException;
    .restart local v8       #len:I
    :catch_a
    move-exception v12

    goto/16 :goto_4

    .end local v1           #buffer:[B
    .end local v8           #len:I
    .end local v11           #oss:Ljava/io/FileOutputStream;
    .restart local v10       #oss:Ljava/io/FileOutputStream;
    :catch_b
    move-exception v13

    goto :goto_8

    .line 149
    .end local v10           #oss:Ljava/io/FileOutputStream;
    .restart local v1       #buffer:[B
    .restart local v8       #len:I
    .restart local v11       #oss:Ljava/io/FileOutputStream;
    :catch_c
    move-exception v12

    goto :goto_5

    .line 129
    .end local v1           #buffer:[B
    .end local v8           #len:I
    :catchall_2
    move-exception v12

    move-object v10, v11

    .end local v11           #oss:Ljava/io/FileOutputStream;
    .restart local v10       #oss:Ljava/io/FileOutputStream;
    goto :goto_7

    .line 123
    .end local v10           #oss:Ljava/io/FileOutputStream;
    .restart local v11       #oss:Ljava/io/FileOutputStream;
    :catch_d
    move-exception v4

    move-object v10, v11

    .end local v11           #oss:Ljava/io/FileOutputStream;
    .restart local v10       #oss:Ljava/io/FileOutputStream;
    goto :goto_6

    .line 95
    .end local v7           #iss:Ljava/io/InputStream;
    .end local v10           #oss:Ljava/io/FileOutputStream;
    .restart local v3       #e:Ljava/io/FileNotFoundException;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catch_e
    move-exception v13

    goto/16 :goto_3
.end method

.method protected isBinaryInstalled(Ljava/lang/String;)Z
    .locals 4
    .parameter "destName"

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, installed:Z
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/stericson/RootTools/internal/Installer;->filesPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    .local v1, mf:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    const/4 v0, 0x1

    .line 162
    :cond_0
    return v0
.end method
