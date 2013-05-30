.class public Lcom/android/OriginalSettings/SettingsIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsIntentReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private GetMTStatus(Ljava/lang/String;)Z
    .locals 7
    .parameter "mtData"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 476
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v5, ";"

    invoke-direct {v1, p1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    .local v1, str:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    new-array v2, v5, [Ljava/lang/String;

    .line 478
    .local v2, tokens:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 479
    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 480
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    .line 481
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 484
    :cond_0
    const/4 v5, 0x2

    if-ge v0, v5, :cond_2

    .line 492
    :cond_1
    :goto_1
    return v3

    .line 488
    :cond_2
    aget-object v5, v2, v4

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    move v3, v4

    .line 489
    goto :goto_1
.end method

.method private GetPhPWD(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "mtData"

    .prologue
    const/4 v3, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 455
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v4, ";"

    invoke-direct {v1, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    .local v1, str:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v4

    new-array v2, v4, [Ljava/lang/String;

    .line 457
    .local v2, tokens:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 458
    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 459
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 460
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 463
    :cond_0
    const/4 v4, 0x1

    if-ge v0, v4, :cond_2

    .line 472
    :cond_1
    :goto_1
    return-object v3

    .line 467
    :cond_2
    aget-object v4, v2, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v6, :cond_1

    aget-object v4, v2, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v6, :cond_1

    .line 472
    aget-object v3, v2, v5

    goto :goto_1
.end method

.method private checkSmartDockType()Z
    .locals 11

    .prologue
    const/16 v8, 0x400

    const/4 v7, 0x0

    .line 372
    const-string v0, "sys/class/sec/switch/adc"

    .line 373
    .local v0, SmartDockName:Ljava/lang/String;
    new-array v1, v8, [C

    .line 374
    .local v1, buffer:[C
    const/4 v3, 0x0

    .line 375
    .local v3, file:Ljava/io/FileReader;
    const/4 v5, 0x0

    .line 377
    .local v5, fileString:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 378
    .end local v3           #file:Ljava/io/FileReader;
    .local v4, file:Ljava/io/FileReader;
    const/4 v8, 0x0

    const/16 v9, 0x400

    :try_start_1
    invoke-virtual {v4, v1, v8, v9}, Ljava/io/FileReader;->read([CII)I

    move-result v6

    .line 379
    .local v6, len:I
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v1, v9, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 380
    const-string v8, "SettingsIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "switch/adc :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v4

    .line 388
    .end local v4           #file:Ljava/io/FileReader;
    .end local v6           #len:I
    .restart local v3       #file:Ljava/io/FileReader;
    :goto_0
    const-string v8, "SettingsIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Docktype :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const-string v8, "10"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 390
    const/4 v7, 0x1

    .line 392
    :cond_0
    return v7

    .line 382
    :catch_0
    move-exception v2

    .line 383
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_1
    const-string v8, "SettingsIntentReceiver"

    const-string v9, "does not readSmartDock! This Kernel does not have wired headset support"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 384
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 385
    .local v2, e:Ljava/io/IOException;
    :goto_2
    const-string v8, "SettingsIntentReceiver"

    const-string v9, "Fail to read SmartDocktype"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 384
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #file:Ljava/io/FileReader;
    .restart local v4       #file:Ljava/io/FileReader;
    :catch_2
    move-exception v2

    move-object v3, v4

    .end local v4           #file:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/FileReader;
    goto :goto_2

    .line 382
    .end local v3           #file:Ljava/io/FileReader;
    .restart local v4       #file:Ljava/io/FileReader;
    :catch_3
    move-exception v2

    move-object v3, v4

    .end local v4           #file:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/FileReader;
    goto :goto_1
.end method

.method private initPreferenceForSbeam(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 497
    sget-boolean v2, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "SettingsIntentReceiver"

    const-string v3, "Init S Beam preference"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_0
    const-string v2, "pref_sbeam"

    const/4 v3, 0x5

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 500
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 501
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "SBeam_support"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 505
    const-string v2, "SBeam_support"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 506
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 512
    :cond_1
    const-string v2, "SBeam_on_off"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 513
    const-string v2, "SBeam_on_off"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 515
    :cond_2
    const-string v2, "sbeam_last_status"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 516
    const-string v2, "sbeam_last_status"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 518
    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 520
    return-void
.end method

.method private makeDMfile()V
    .locals 8

    .prologue
    .line 406
    const/4 v3, 0x0

    .line 408
    .local v3, raf:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/system/samsungaccount.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, dmFileName:Ljava/lang/String;
    sget-boolean v5, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DM file name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 416
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .local v4, raf:Ljava/io/RandomAccessFile;
    sget-boolean v5, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - finally"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_1
    if-eqz v4, :cond_d

    .line 419
    :try_start_1
    sget-boolean v5, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v4

    .line 426
    .end local v0           #dmFileName:Ljava/lang/String;
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :cond_3
    :goto_0
    return-void

    .line 421
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v0       #dmFileName:Ljava/lang/String;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v2

    .line 422
    .local v2, ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 423
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 411
    .end local v0           #dmFileName:Ljava/lang/String;
    .end local v2           #ex1:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 412
    .local v1, ex:Ljava/io/FileNotFoundException;
    :try_start_2
    sget-boolean v5, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v5, :cond_4

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - Exception in steam write"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 416
    :cond_4
    sget-boolean v5, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v5, :cond_5

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - finally"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_5
    if-eqz v3, :cond_3

    .line 419
    :try_start_3
    sget-boolean v5, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v5, :cond_6

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_6
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 421
    :catch_2
    move-exception v2

    .line 422
    .restart local v2       #ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 413
    .end local v1           #ex:Ljava/io/FileNotFoundException;
    .end local v2           #ex1:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 414
    .local v1, ex:Ljava/io/IOException;
    :try_start_4
    sget-boolean v5, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v5, :cond_7

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - IOException in steam write"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 416
    :cond_7
    sget-boolean v5, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v5, :cond_8

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - finally"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_8
    if-eqz v3, :cond_3

    .line 419
    :try_start_5
    sget-boolean v5, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v5, :cond_9

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_9
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 421
    :catch_4
    move-exception v2

    .line 422
    .restart local v2       #ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 416
    .end local v1           #ex:Ljava/io/IOException;
    .end local v2           #ex1:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    sget-boolean v6, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v6, :cond_a

    const-string v6, "SettingsIntentReceiver"

    const-string v7, "writedatatonv - finally"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_a
    if-eqz v3, :cond_c

    .line 419
    :try_start_6
    sget-boolean v6, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v6, :cond_b

    const-string v6, "SettingsIntentReceiver"

    const-string v7, "writedatatonv - call raf.close()"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_b
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 423
    :cond_c
    :goto_1
    throw v5

    .line 421
    :catch_5
    move-exception v2

    .line 422
    .restart local v2       #ex1:Ljava/io/IOException;
    const-string v6, "SettingsIntentReceiver"

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v2           #ex1:Ljava/io/IOException;
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v0       #dmFileName:Ljava/lang/String;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :cond_d
    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_0
.end method

.method private toggleFmm(Landroid/content/Context;Z)V
    .locals 6
    .parameter "context"
    .parameter "onoff"

    .prologue
    const/4 v3, 0x0

    .line 396
    const-string v2, "SettingsIntentReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FMM enabled? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "remote_control"

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 398
    const-string v2, "FMMPreferences"

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 399
    .local v1, sharedPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 400
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_fmm"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 401
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 402
    return-void

    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #sharedPrefs:Landroid/content/SharedPreferences;
    :cond_0
    move v2, v3

    .line 397
    goto :goto_0
.end method

.method private writeMTData(Ljava/lang/String;)V
    .locals 8
    .parameter "mtData"

    .prologue
    .line 429
    const/4 v3, 0x0

    .line 431
    .local v3, raf:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/system/mobiletracker.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 432
    .local v2, mtFileName:Ljava/lang/String;
    sget-boolean v5, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MT file name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 434
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .local v4, raf:Ljava/io/RandomAccessFile;
    :try_start_1
    const-string v5, "UTF-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 442
    sget-boolean v5, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - finally"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_1
    if-eqz v4, :cond_10

    .line 445
    :try_start_2
    sget-boolean v5, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 452
    .end local v2           #mtFileName:Ljava/lang/String;
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :cond_3
    :goto_0
    return-void

    .line 447
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v2       #mtFileName:Ljava/lang/String;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v1

    .line 448
    .local v1, ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 449
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 435
    .end local v1           #ex1:Ljava/io/IOException;
    .end local v2           #mtFileName:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 436
    .local v0, ex:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    sget-boolean v5, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v5, :cond_4

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - Exception in steam write"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 442
    :cond_4
    sget-boolean v5, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v5, :cond_5

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - finally"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_5
    if-eqz v3, :cond_3

    .line 445
    :try_start_4
    sget-boolean v5, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v5, :cond_6

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_6
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 447
    :catch_2
    move-exception v1

    .line 448
    .restart local v1       #ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 437
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    .end local v1           #ex1:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 438
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    :goto_2
    :try_start_5
    sget-boolean v5, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v5, :cond_7

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - UnsupportedEncodingException in steam write"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 442
    :cond_7
    sget-boolean v5, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v5, :cond_8

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - finally"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_8
    if-eqz v3, :cond_3

    .line 445
    :try_start_6
    sget-boolean v5, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v5, :cond_9

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_9
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 447
    :catch_4
    move-exception v1

    .line 448
    .restart local v1       #ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 439
    .end local v0           #ex:Ljava/io/UnsupportedEncodingException;
    .end local v1           #ex1:Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 440
    .local v0, ex:Ljava/io/IOException;
    :goto_3
    :try_start_7
    sget-boolean v5, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v5, :cond_a

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - IOException in steam write"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 442
    :cond_a
    sget-boolean v5, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v5, :cond_b

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - finally"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_b
    if-eqz v3, :cond_3

    .line 445
    :try_start_8
    sget-boolean v5, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v5, :cond_c

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_c
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_0

    .line 447
    :catch_6
    move-exception v1

    .line 448
    .restart local v1       #ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 442
    .end local v0           #ex:Ljava/io/IOException;
    .end local v1           #ex1:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_4
    sget-boolean v6, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v6, :cond_d

    const-string v6, "SettingsIntentReceiver"

    const-string v7, "writedatatonv - finally"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_d
    if-eqz v3, :cond_f

    .line 445
    :try_start_9
    sget-boolean v6, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v6, :cond_e

    const-string v6, "SettingsIntentReceiver"

    const-string v7, "writedatatonv - call raf.close()"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_e
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 449
    :cond_f
    :goto_5
    throw v5

    .line 447
    :catch_7
    move-exception v1

    .line 448
    .restart local v1       #ex1:Ljava/io/IOException;
    const-string v6, "SettingsIntentReceiver"

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 442
    .end local v1           #ex1:Ljava/io/IOException;
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v2       #mtFileName:Ljava/lang/String;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 439
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v0

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 437
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_9
    move-exception v0

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_2

    .line 435
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_a
    move-exception v0

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_1

    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :cond_10
    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 37
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, action:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    .line 61
    .local v29, resolver:Landroid/content/ContentResolver;
    sget-boolean v34, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v34, :cond_0

    const-string v34, "SettingsIntentReceiver"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "onReceive(): "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    const-string v34, "com.samsung.wipe.MTDATA"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_5

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    .line 64
    .local v14, extras:Landroid/os/Bundle;
    const-string v34, "MTDATA"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 65
    .local v33, temp:Ljava/lang/String;
    sget-boolean v34, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v34, :cond_1

    const-string v34, "SettingsIntentReceiver"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "MT data: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/SettingsIntentReceiver;->writeMTData(Ljava/lang/String;)V

    .line 67
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/SettingsIntentReceiver;->makeDMfile()V

    .line 70
    const-string v34, "mt_pwd"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/SettingsIntentReceiver;->GetPhPWD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 71
    const-string v35, "mt_state"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/SettingsIntentReceiver;->GetMTStatus(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_4

    const/16 v34, 0x1

    :goto_0
    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 365
    .end local v14           #extras:Landroid/os/Bundle;
    .end local v33           #temp:Ljava/lang/String;
    :cond_2
    :goto_1
    const-string v34, "android.intent.action.REGISTRATION_COMPLETED"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_3

    .line 366
    const-string v34, "samsung_signin"

    const/16 v35, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 367
    const/16 v34, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/android/OriginalSettings/SettingsIntentReceiver;->toggleFmm(Landroid/content/Context;Z)V

    .line 369
    :cond_3
    return-void

    .line 71
    .restart local v14       #extras:Landroid/os/Bundle;
    .restart local v33       #temp:Ljava/lang/String;
    :cond_4
    const/16 v34, 0x0

    goto :goto_0

    .line 72
    .end local v14           #extras:Landroid/os/Bundle;
    .end local v33           #temp:Ljava/lang/String;
    :cond_5
    const-string v34, "android.media.RINGER_MODE_CHANGED"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_b

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    .line 74
    .restart local v14       #extras:Landroid/os/Bundle;
    const/16 v30, 0x2

    .line 75
    .local v30, ringerMode:I
    if-eqz v14, :cond_7

    .line 76
    const-string v34, "android.media.EXTRA_RINGER_MODE"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v30

    .line 77
    sget-boolean v34, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v34, :cond_6

    const-string v34, "SettingsIntentReceiver"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Extras, ringer mode: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_6
    :goto_2
    packed-switch v30, :pswitch_data_0

    .line 101
    sget-boolean v34, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v34, :cond_2

    const-string v34, "SettingsIntentReceiver"

    const-string v35, "Not supported ringer mode"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 79
    :cond_7
    const-string v34, "audio"

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    .line 80
    .local v4, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v30

    .line 81
    sget-boolean v34, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v34, :cond_6

    const-string v34, "SettingsIntentReceiver"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "No extras, ringer mode: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 86
    .end local v4           #audioManager:Landroid/media/AudioManager;
    :pswitch_0
    sget-boolean v34, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v34, :cond_8

    const-string v34, "SettingsIntentReceiver"

    const-string v35, "Ringer mode: silent & set driving mode off"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_8
    const-string v34, "driving_mode_on"

    const/16 v35, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 89
    const-string v34, "vibrate_in_silent"

    const/16 v35, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 92
    :pswitch_1
    sget-boolean v34, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v34, :cond_9

    const-string v34, "SettingsIntentReceiver"

    const-string v35, "Ringer mode: vibrate"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_9
    const-string v34, "vibrate_in_silent"

    const/16 v35, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 97
    :pswitch_2
    sget-boolean v34, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v34, :cond_a

    const-string v34, "SettingsIntentReceiver"

    const-string v35, "Ringer mode: normal"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_a
    const-string v34, "vibrate_in_silent"

    const/16 v35, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 103
    .end local v14           #extras:Landroid/os/Bundle;
    .end local v30           #ringerMode:I
    :cond_b
    const-string v34, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1b

    .line 104
    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v34

    if-nez v34, :cond_c

    .line 105
    const-string v34, "power_saving_mode"

    const/16 v35, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v34

    if-eqz v34, :cond_18

    const/16 v34, 0x1

    :goto_3
    invoke-static/range {v34 .. v34}, Lcom/sec/android/hardware/SecHardwareInterface;->setAmoledACL(Z)Z

    .line 108
    :cond_c
    const-string v34, "high_contrast"

    const/16 v35, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v34

    if-eqz v34, :cond_19

    const/16 v34, 0x1

    :goto_4
    invoke-static/range {v34 .. v34}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeNegative(Z)Z

    .line 111
    const-string v34, "torch_light"

    const/16 v35, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v34

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_d

    .line 113
    const-string v34, "torch_light"

    const/16 v35, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 116
    :cond_d
    const-string v34, "screen_mode_setting"

    const/16 v35, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v34

    invoke-static/range {v34 .. v34}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 138
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v31

    .line 139
    .local v31, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v34, "pref_device_provision"

    const/16 v35, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v34

    if-nez v34, :cond_f

    .line 140
    const-string v34, "screen_off_timeout"

    const/16 v35, 0x7530

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v34

    const v35, 0x1d8a8

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_e

    .line 141
    const-string v34, "SettingsIntentReceiver"

    const-string v35, "Overriding setup wizard set screen timeout"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-string v35, "screen_off_timeout"

    const-string v34, "USC"

    const-string v36, "ro.csc.sales_code"

    invoke-static/range {v36 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1a

    const v34, 0xea60

    :goto_5
    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 145
    :cond_e
    const-string v34, "device_provisioned"

    const/16 v35, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v34

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_f

    .line 146
    invoke-interface/range {v31 .. v31}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 147
    .local v13, editor:Landroid/content/SharedPreferences$Editor;
    const-string v34, "pref_device_provision"

    const/16 v35, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 148
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 157
    .end local v13           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_f
    const-string v34, "screen_off_timeout"

    const/16 v35, 0x7530

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    .line 158
    .local v25, oldScreenTimOut:I
    sget-boolean v34, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v34, :cond_10

    const-string v34, "SettingsIntentReceiver"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Current screen timeout value: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_10
    const v34, 0x927c0

    move/from16 v0, v25

    move/from16 v1, v34

    if-gt v0, v1, :cond_11

    if-gez v25, :cond_12

    .line 161
    :cond_11
    const-string v34, "SettingsIntentReceiver"

    const-string v35, "Reset screen timeout to 10mins"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v34, "screen_off_timeout"

    const v35, 0x927c0

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 165
    :cond_12
    const-string v34, "stay_on_while_plugged_in"

    const/16 v35, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    .line 166
    .local v26, oldStayAwake:I
    sget-boolean v34, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v34, :cond_13

    const-string v34, "SettingsIntentReceiver"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Current stay awake value: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_13
    if-eqz v26, :cond_14

    .line 168
    const-string v34, "SettingsIntentReceiver"

    const-string v35, "Set stay awake off"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v34, "stay_on_while_plugged_in"

    const/16 v35, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 175
    :cond_14
    const-string v34, "usb_setting_mode"

    const/16 v35, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v34

    const/16 v35, 0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_15

    .line 176
    const-string v34, "usb_setting_mode"

    const/16 v35, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 181
    :cond_15
    sget-boolean v34, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v34, :cond_16

    const-string v34, "SettingsIntentReceiver"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "salesCode = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "ro.csc.sales_code"

    invoke-static/range {v36 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_16
    const-string v34, "TMB"

    const-string v35, "ro.csc.sales_code"

    invoke-static/range {v35 .. v35}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_17

    .line 183
    const-string v34, "auto_time"

    const/16 v35, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 184
    const-string v34, "auto_time_zone"

    const/16 v35, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 187
    :cond_17
    invoke-direct/range {p0 .. p1}, Lcom/android/OriginalSettings/SettingsIntentReceiver;->initPreferenceForSbeam(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 105
    .end local v25           #oldScreenTimOut:I
    .end local v26           #oldStayAwake:I
    .end local v31           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_18
    const/16 v34, 0x0

    goto/16 :goto_3

    .line 108
    :cond_19
    const/16 v34, 0x0

    goto/16 :goto_4

    .line 142
    .restart local v31       #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_1a
    const/16 v34, 0x7530

    goto/16 :goto_5

    .line 188
    .end local v31           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_1b
    const-string v34, "android.intent.action.DOCK_EVENT"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_21

    .line 189
    const-string v34, "android.intent.extra.DOCK_STATE"

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v32

    .line 190
    .local v32, state:I
    const-string v34, "SettingsIntentReceiver"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Received dock event with state: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-string v34, "cradle_enable"

    const/16 v35, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 193
    .local v5, cradleEnabled:I
    if-nez v32, :cond_1e

    .line 195
    const-string v34, "cradle_connect"

    const/16 v35, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 196
    if-eqz v5, :cond_1d

    .line 197
    const-string v34, "SettingsIntentReceiver"

    const-string v35, "Cradle is enabled without dock"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v21, Landroid/content/Intent;

    invoke-direct/range {v21 .. v21}, Landroid/content/Intent;-><init>()V

    .line 199
    .local v21, mSendIntent:Landroid/content/Intent;
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/SettingsIntentReceiver;->checkSmartDockType()Z

    move-result v34

    if-eqz v34, :cond_1c

    .line 200
    const-string v34, "SettingsIntentReceiver"

    const-string v35, "SmartDock connected, Do nothing"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :goto_6
    const-string v34, "state"

    const/16 v35, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 207
    const-string v34, "SettingsIntentReceiver"

    const-string v35, "Sound state changed to device (state: 0)"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 202
    :cond_1c
    const-string v34, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6

    .line 209
    .end local v21           #mSendIntent:Landroid/content/Intent;
    :cond_1d
    const-string v34, "SettingsIntentReceiver"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Cradle is disabled1: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const-string v34, "SettingsIntentReceiver"

    const-string v35, "Sound state is device"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 214
    :cond_1e
    const-string v34, "cradle_connect"

    const/16 v35, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 215
    if-eqz v5, :cond_20

    .line 216
    const-string v34, "SettingsIntentReceiver"

    const-string v35, "Cradle is enabled with dock"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v21, Landroid/content/Intent;

    invoke-direct/range {v21 .. v21}, Landroid/content/Intent;-><init>()V

    .line 218
    .restart local v21       #mSendIntent:Landroid/content/Intent;
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/SettingsIntentReceiver;->checkSmartDockType()Z

    move-result v34

    if-eqz v34, :cond_1f

    .line 219
    const-string v34, "SettingsIntentReceiver"

    const-string v35, "SmartDock connected, Do nothing"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :goto_7
    const-string v34, "state"

    const/16 v35, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 225
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 226
    const-string v34, "SettingsIntentReceiver"

    const-string v35, "Sound state changed to line out (state: 1)"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 221
    :cond_1f
    const-string v34, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_7

    .line 228
    .end local v21           #mSendIntent:Landroid/content/Intent;
    :cond_20
    const-string v34, "SettingsIntentReceiver"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Cradle is disabled2: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string v34, "SettingsIntentReceiver"

    const-string v35, "Sound state is device"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 232
    .end local v5           #cradleEnabled:I
    .end local v32           #state:I
    :cond_21
    const-string v34, "shopdemo_on"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_22

    .line 233
    const-string v34, "SettingsIntentReceiver"

    const-string v35, "+++++ shop demo on +++++"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string v34, "shopdemo"

    const/16 v35, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 235
    :cond_22
    const-string v34, "shopdemo_off"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_23

    .line 236
    const-string v34, "SettingsIntentReceiver"

    const-string v35, "+++++ shop demo off +++++"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const-string v34, "shopdemo"

    const/16 v35, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 238
    :cond_23
    const-string v34, "com.sec.samsung.torchwidget.torch_on_1"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_24

    .line 239
    const/16 v34, 0xe

    invoke-static/range {v34 .. v34}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 240
    sget-boolean v34, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v34, :cond_2

    const-string v34, "SettingsIntentReceiver"

    const-string v35, "SecHardwareInterface.setFlashLed(LIGHT_MIN)"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 241
    :cond_24
    const-string v34, "com.sec.samsung.torchwidget.torch_on_2"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_25

    .line 242
    const/16 v34, 0x6

    invoke-static/range {v34 .. v34}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 243
    sget-boolean v34, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v34, :cond_2

    const-string v34, "SettingsIntentReceiver"

    const-string v35, "SecHardwareInterface.setFlashLed(LIGHT_STANDARD)"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 244
    :cond_25
    const-string v34, "com.sec.samsung.torchwidget.torch_on_3"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_26

    .line 245
    const/16 v34, 0x1

    invoke-static/range {v34 .. v34}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 246
    sget-boolean v34, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v34, :cond_2

    const-string v34, "SettingsIntentReceiver"

    const-string v35, "SecHardwareInterface.setFlashLed(LIGHT_MAX)"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 247
    :cond_26
    const-string v34, "com.sec.samsung.torchwidget.torch_off"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_27

    .line 248
    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 249
    sget-boolean v34, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v34, :cond_2

    const-string v34, "SettingsIntentReceiver"

    const-string v35, "SecHardwareInterface.setFlashLed(LIGHT_OFF)"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 252
    :cond_27
    const-string v34, "android.intent.action.CSC_CHAMELEON_UPDATE_SETTINGS"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_28

    .line 253
    const-string v34, "persist.sys.roaming_menu"

    const-string v35, "roaming_menu"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v34, "persist.sys.tether_data"

    const-string v35, "tether_data"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 257
    :cond_28
    const-string v34, "android.intent.action.ACTION_ASSISTIVE_OFF"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_29

    .line 258
    const-string v34, "torch_light"

    const/16 v35, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 260
    const/16 v34, 0x0

    :try_start_0
    invoke-static/range {v34 .. v34}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_8
    const-string v34, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/app/NotificationManager;

    .line 265
    .local v24, notificationManager:Landroid/app/NotificationManager;
    const v34, 0x7f02028d

    move-object/from16 v0, v24

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_1

    .line 261
    .end local v24           #notificationManager:Landroid/app/NotificationManager;
    :catch_0
    move-exception v12

    .line 262
    .local v12, e:Ljava/lang/Exception;
    const-string v34, "SettingsIntentReceiver"

    const-string v35, "Could not turn off torch light "

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 266
    .end local v12           #e:Ljava/lang/Exception;
    :cond_29
    const-string v34, "android.intent.action.MAX_BRIGHTNESS_CHANGED"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_2b

    .line 268
    sget-boolean v34, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v34, :cond_2a

    const-string v34, "SettingsIntentReceiver"

    const-string v35, "Limit brightness"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_2a
    const-string v34, "max_brightness"

    const/16 v35, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 270
    .local v20, mMaxBrightness:I
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v31

    .line 271
    .restart local v31       #sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface/range {v31 .. v31}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 272
    .restart local v13       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v34, "pref_siop_brightness"

    move-object/from16 v0, v34

    move/from16 v1, v20

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 273
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    .line 274
    .end local v13           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v20           #mMaxBrightness:I
    .end local v31           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_2b
    const-string v34, "osp.signin.SAMSUNG_ACCOUNT_SIGNOUT"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_2c

    .line 275
    const-string v34, "change_alert"

    const/16 v35, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 276
    const-string v34, "remote_control"

    const/16 v35, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 277
    const-string v34, "samsung_signin"

    const/16 v35, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 278
    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/android/OriginalSettings/SettingsIntentReceiver;->toggleFmm(Landroid/content/Context;Z)V

    goto/16 :goto_1

    .line 279
    :cond_2c
    const-string v34, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_37

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x8

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    .line 282
    .local v28, removedPackage:Ljava/lang/String;
    sget-boolean v34, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v34, :cond_2d

    const-string v34, "SettingsIntentReceiver"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Removed package: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_2d
    const-string v34, "default_activity_app_list"

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 284
    .local v6, defaultAppsList:Ljava/lang/String;
    sget-boolean v34, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v34, :cond_2e

    const-string v34, "SettingsIntentReceiver"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "current list = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_2e
    if-eqz v6, :cond_2

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_2

    .line 286
    const-string v34, "SettingsIntentReceiver"

    const-string v35, "Package on current list is removed"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/16 v34, 0x0

    const/16 v35, 0x3b

    move/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v35

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 289
    .local v9, default_phone:Ljava/lang/String;
    sget-boolean v34, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v34, :cond_2f

    const-string v34, "SettingsIntentReceiver"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Default phone: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_2f
    const/16 v34, 0x3b

    move/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v35

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 292
    const/16 v34, 0x0

    const/16 v35, 0x3b

    move/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v35

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 293
    .local v7, default_email:Ljava/lang/String;
    sget-boolean v34, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v34, :cond_30

    const-string v34, "SettingsIntentReceiver"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Default email: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_30
    const/16 v34, 0x3b

    move/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v35

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 296
    const/16 v34, 0x0

    const/16 v35, 0x3b

    move/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v35

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 297
    .local v10, default_web:Ljava/lang/String;
    sget-boolean v34, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v34, :cond_31

    const-string v34, "SettingsIntentReceiver"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Default web: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_31
    const/16 v34, 0x3b

    move/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v35

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 300
    const/16 v34, 0x0

    const/16 v35, 0x3b

    move/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v35

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 301
    .local v8, default_map:Ljava/lang/String;
    sget-boolean v34, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v34, :cond_32

    const-string v34, "SettingsIntentReceiver"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Default map: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_32
    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_33

    .line 305
    const-string v9, "com.android.contacts/com.android.contacts.activities.DialtactsActivity"

    .line 307
    :cond_33
    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_34

    .line 308
    const-string v7, "com.android.email/com.android.email.activity.MessageCompose"

    .line 310
    :cond_34
    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_35

    .line 311
    const-string v10, "com.android.browser/com.android.browser.BrowserActivity"

    .line 313
    :cond_35
    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_36

    .line 314
    const-string v8, "com.google.android.apps.maps/com.google.android.maps.MapsActivity"

    .line 317
    :cond_36
    const-string v34, ";"

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string v35, ";"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string v35, ";"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string v35, ";"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 321
    .local v27, processedList:Ljava/lang/String;
    const-string v34, "default_activity_app_list"

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 322
    sget-boolean v34, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v34, :cond_2

    const-string v34, "SettingsIntentReceiver"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Changed app list: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 326
    .end local v6           #defaultAppsList:Ljava/lang/String;
    .end local v7           #default_email:Ljava/lang/String;
    .end local v8           #default_map:Ljava/lang/String;
    .end local v9           #default_phone:Ljava/lang/String;
    .end local v10           #default_web:Ljava/lang/String;
    .end local v27           #processedList:Ljava/lang/String;
    .end local v28           #removedPackage:Ljava/lang/String;
    :cond_37
    const-string v34, "android.settings.EAS_POLICY_STATE_CHANGED"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_3a

    .line 327
    const-string v34, "device_policy"

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/admin/DevicePolicyManager;

    .line 328
    .local v11, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v11, :cond_38

    const/16 v34, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v22

    .line 330
    .local v22, maxTimeout:J
    :goto_9
    const-string v34, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v35

    const-string v36, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual/range {v35 .. v36}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 333
    .local v15, isDeviceLockTime:Z
    const-wide/16 v34, 0x1

    cmp-long v34, v22, v34

    if-gez v34, :cond_2

    .line 334
    const-string v34, "SettingsIntentReceiver"

    const-string v35, "Max timeout is removed. Rollback timeout value"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const-string v34, "screen_off_timeout"

    const-string v35, "screen_off_timeout_rollback"

    const/16 v36, 0x7530

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v35

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 337
    const-string v35, "lock_screen_lock_after_timeout"

    const-string v36, "lock_after_timeout_rollback"

    if-eqz v15, :cond_39

    const v34, 0x927c0

    :goto_a
    move-object/from16 v0, v29

    move-object/from16 v1, v36

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v34

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 328
    .end local v15           #isDeviceLockTime:Z
    .end local v22           #maxTimeout:J
    :cond_38
    const-wide/16 v22, 0x0

    goto :goto_9

    .line 337
    .restart local v15       #isDeviceLockTime:Z
    .restart local v22       #maxTimeout:J
    :cond_39
    const/16 v34, 0x1388

    goto :goto_a

    .line 343
    .end local v11           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v15           #isDeviceLockTime:Z
    .end local v22           #maxTimeout:J
    :cond_3a
    const-string v34, "com.sec.android.LockPattern.CLEAR"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_2

    .line 344
    new-instance v19, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 345
    .local v19, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    const/16 v34, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 346
    const/16 v34, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 348
    const-string v34, "keyguard"

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/KeyguardManager;

    .line 349
    .local v17, keyguardManager:Landroid/app/KeyguardManager;
    const-string v34, "LockPatternClear"

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v16

    .line 350
    .local v16, keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;
    invoke-virtual/range {v16 .. v16}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 351
    const/16 v34, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->exitKeyguardSecurely(Landroid/app/KeyguardManager$OnKeyguardExitResult;)V

    .line 352
    invoke-virtual/range {v16 .. v16}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 355
    new-instance v18, Landroid/content/Intent;

    const-string v34, "android.intent.action.MAIN"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 356
    .local v18, lockIntent:Landroid/content/Intent;
    const-string v34, "android.intent.category.HOME"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    const/high16 v34, 0x1020

    move-object/from16 v0, v18

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 358
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
