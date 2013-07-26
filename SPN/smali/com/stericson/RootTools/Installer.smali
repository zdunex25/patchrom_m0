.class Lcom/stericson/RootTools/Installer;
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
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/stericson/RootTools/Installer;->context:Landroid/content/Context;

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stericson/RootTools/Installer;->filesPath:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method protected installBinary(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 17
    .parameter "sourceId"
    .parameter "destName"
    .parameter "mode"

    .prologue
    .line 44
    new-instance v9, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Installer;->filesPath:Ljava/lang/String;

    move-object v13, v0

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .local v9, mf:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_2

    .line 50
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Installer;->context:Landroid/content/Context;

    move-object v12, v0

    const-string v13, "bogus"

    invoke-virtual {v12, v13}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v5

    .line 51
    .local v5, fis:Ljava/io/FileInputStream;
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 80
    .end local v5           #fis:Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Installer;->context:Landroid/content/Context;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move-object v0, v12

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v7

    .line 81
    .local v7, iss:Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 83
    .local v10, oss:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5

    .line 84
    .end local v10           #oss:Ljava/io/FileOutputStream;
    .local v11, oss:Ljava/io/FileOutputStream;
    const/16 v12, 0x1000

    :try_start_2
    new-array v2, v12, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b

    .line 87
    .local v2, buffer:[B
    :goto_1
    const/4 v12, -0x1

    :try_start_3
    invoke-virtual {v7, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_b

    move-result v8

    .local v8, len:I
    if-ne v12, v8, :cond_7

    .line 103
    if-eqz v11, :cond_1

    .line 105
    :try_start_4
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a

    .line 110
    :cond_1
    :goto_2
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 118
    invoke-static {}, Lcom/stericson/RootTools/InternalMethods;->instance()Lcom/stericson/RootTools/InternalMethods;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "chmod "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v15

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Installer;->filesPath:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v12, v13}, Lcom/stericson/RootTools/InternalMethods;->doExec([Ljava/lang/String;)V

    .line 120
    .end local v2           #buffer:[B
    .end local v7           #iss:Ljava/io/InputStream;
    .end local v8           #len:I
    .end local v11           #oss:Ljava/io/FileOutputStream;
    :cond_2
    const/4 v12, 0x1

    :goto_3
    return v12

    .line 52
    :catch_0
    move-exception v12

    move-object v3, v12

    .line 53
    .local v3, e:Ljava/io/FileNotFoundException;
    const/4 v6, 0x0

    .line 55
    .local v6, fos:Ljava/io/FileOutputStream;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Installer;->context:Landroid/content/Context;

    move-object v12, v0

    const-string v13, "bogus"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v6

    .line 56
    const-string v12, "justcreatedfilesdirectory"

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 64
    if-eqz v6, :cond_0

    .line 66
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Installer;->context:Landroid/content/Context;

    move-object v12, v0

    const-string v13, "bogus"

    invoke-virtual {v12, v13}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 68
    :catch_1
    move-exception v12

    goto/16 :goto_0

    .line 57
    :catch_2
    move-exception v12

    move-object v4, v12

    .line 58
    .local v4, ex:Ljava/lang/Exception;
    :try_start_8
    sget-boolean v12, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v12, :cond_3

    .line 59
    const-string v12, "RootTools::Installer"

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 64
    :cond_3
    if-eqz v6, :cond_4

    .line 66
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Installer;->context:Landroid/content/Context;

    move-object v12, v0

    const-string v13, "bogus"

    invoke-virtual {v12, v13}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_d

    .line 61
    :cond_4
    :goto_4
    const/4 v12, 0x0

    goto :goto_3

    .line 63
    .end local v4           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    .line 64
    if-eqz v6, :cond_5

    .line 66
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Installer;->context:Landroid/content/Context;

    move-object v13, v0

    const-string v14, "bogus"

    invoke-virtual {v13, v14}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c

    .line 70
    :cond_5
    :goto_5
    throw v12

    .line 72
    .end local v3           #e:Ljava/io/FileNotFoundException;
    .end local v6           #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v12

    move-object v4, v12

    .line 73
    .local v4, ex:Ljava/io/IOException;
    sget-boolean v12, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v12, :cond_6

    .line 74
    const-string v12, "RootTools::Installer"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_6
    const/4 v12, 0x0

    goto :goto_3

    .line 88
    .end local v4           #ex:Ljava/io/IOException;
    .restart local v2       #buffer:[B
    .restart local v7       #iss:Ljava/io/InputStream;
    .restart local v8       #len:I
    .restart local v11       #oss:Ljava/io/FileOutputStream;
    :cond_7
    const/4 v12, 0x0

    :try_start_b
    invoke-virtual {v11, v2, v12, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_b

    goto/16 :goto_1

    .line 90
    .end local v8           #len:I
    :catch_4
    move-exception v12

    move-object v4, v12

    .line 91
    .restart local v4       #ex:Ljava/io/IOException;
    :try_start_c
    sget-boolean v12, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v12, :cond_8

    .line 92
    const-string v12, "RootTools::Installer"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_b

    .line 103
    :cond_8
    if-eqz v11, :cond_9

    .line 105
    :try_start_d
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 94
    :cond_9
    :goto_6
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 96
    .end local v2           #buffer:[B
    .end local v4           #ex:Ljava/io/IOException;
    .end local v11           #oss:Ljava/io/FileOutputStream;
    .restart local v10       #oss:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v12

    move-object v4, v12

    .line 97
    .local v4, ex:Ljava/io/FileNotFoundException;
    :goto_7
    :try_start_e
    sget-boolean v12, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v12, :cond_a

    .line 98
    const-string v12, "RootTools::Installer"

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 103
    :cond_a
    if-eqz v10, :cond_b

    .line 105
    :try_start_f
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    .line 100
    :cond_b
    :goto_8
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 102
    .end local v4           #ex:Ljava/io/FileNotFoundException;
    :catchall_1
    move-exception v12

    .line 103
    :goto_9
    if-eqz v10, :cond_c

    .line 105
    :try_start_10
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    .line 108
    :cond_c
    :goto_a
    throw v12

    .line 111
    .end local v10           #oss:Ljava/io/FileOutputStream;
    .restart local v2       #buffer:[B
    .restart local v8       #len:I
    .restart local v11       #oss:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v4

    .line 112
    .local v4, ex:Ljava/io/IOException;
    sget-boolean v12, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v12, :cond_d

    .line 113
    const-string v12, "RootTools::Installer"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_d
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 106
    .end local v8           #len:I
    :catch_7
    move-exception v12

    goto :goto_6

    .end local v2           #buffer:[B
    .end local v11           #oss:Ljava/io/FileOutputStream;
    .local v4, ex:Ljava/io/FileNotFoundException;
    .restart local v10       #oss:Ljava/io/FileOutputStream;
    :catch_8
    move-exception v12

    goto :goto_8

    .end local v4           #ex:Ljava/io/FileNotFoundException;
    :catch_9
    move-exception v13

    goto :goto_a

    .end local v10           #oss:Ljava/io/FileOutputStream;
    .restart local v2       #buffer:[B
    .restart local v8       #len:I
    .restart local v11       #oss:Ljava/io/FileOutputStream;
    :catch_a
    move-exception v12

    goto/16 :goto_2

    .line 102
    .end local v2           #buffer:[B
    .end local v8           #len:I
    :catchall_2
    move-exception v12

    move-object v10, v11

    .end local v11           #oss:Ljava/io/FileOutputStream;
    .restart local v10       #oss:Ljava/io/FileOutputStream;
    goto :goto_9

    .line 96
    .end local v10           #oss:Ljava/io/FileOutputStream;
    .restart local v11       #oss:Ljava/io/FileOutputStream;
    :catch_b
    move-exception v12

    move-object v4, v12

    move-object v10, v11

    .end local v11           #oss:Ljava/io/FileOutputStream;
    .restart local v10       #oss:Ljava/io/FileOutputStream;
    goto :goto_7

    .line 68
    .end local v7           #iss:Ljava/io/InputStream;
    .end local v10           #oss:Ljava/io/FileOutputStream;
    .restart local v3       #e:Ljava/io/FileNotFoundException;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catch_c
    move-exception v13

    goto :goto_5

    .local v4, ex:Ljava/lang/Exception;
    :catch_d
    move-exception v12

    goto/16 :goto_4
.end method
