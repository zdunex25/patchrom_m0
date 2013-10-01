.class Lcom/android/updater/OTAUpdaterActivity$DownloadTask;
.super Landroid/os/AsyncTask;
.source "OTAUpdaterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/OTAUpdaterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private ctx:Landroid/content/Context;

.field private destFile:Ljava/io/File;

.field private dialog:Landroid/app/ProgressDialog;

.field private done:Z

.field private info:Lcom/android/updater/RomInfo;

.field private scale:I

.field private final wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/app/ProgressDialog;Lcom/android/updater/RomInfo;Ljava/io/File;)V
    .locals 3
    .parameter "dialog"
    .parameter "info"
    .parameter "destFile"

    .prologue
    const/4 v2, 0x0

    .line 417
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 407
    const/high16 v1, 0x10

    iput v1, p0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->scale:I

    .line 409
    iput-object v2, p0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->dialog:Landroid/app/ProgressDialog;

    .line 410
    iput-object v2, p0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->ctx:Landroid/content/Context;

    .line 415
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->done:Z

    .line 418
    invoke-virtual {p0, p1}, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->attach(Landroid/app/ProgressDialog;)V

    .line 420
    iput-object p2, p0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->info:Lcom/android/updater/RomInfo;

    .line 421
    iput-object p3, p0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->destFile:Ljava/io/File;

    .line 423
    iget-object v1, p0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->ctx:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 424
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x6

    const-class v2, Lcom/android/updater/OTAUpdaterActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->wl:Landroid/os/PowerManager$WakeLock;

    .line 425
    return-void
.end method


# virtual methods
.method public attach(Landroid/app/ProgressDialog;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 428
    iput-object p1, p0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->dialog:Landroid/app/ProgressDialog;

    .line 429
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->ctx:Landroid/content/Context;

    .line 430
    return-void
.end method

.method public detach()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 433
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 434
    :cond_0
    iput-object v1, p0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->dialog:Landroid/app/ProgressDialog;

    .line 435
    iput-object v1, p0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->ctx:Landroid/content/Context;

    .line 436
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 24
    .parameter "params"

    .prologue
    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->destFile:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 456
    const-string v20, "OTA::Download"

    const-string v21, "Found old zip, checking md5"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/4 v11, 0x0

    .line 460
    .local v11, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->destFile:Ljava/io/File;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_14

    .line 461
    .end local v11           #is:Ljava/io/InputStream;
    .local v12, is:Ljava/io/InputStream;
    :try_start_1
    const-string v20, "MD5"

    invoke-static/range {v20 .. v20}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 462
    .local v7, digest:Ljava/security/MessageDigest;
    const/16 v20, 0x1000

    move/from16 v0, v20

    new-array v6, v0, [B

    .line 463
    .local v6, data:[B
    const/4 v14, -0x1

    .line 464
    .local v14, nRead:I
    :goto_0
    invoke-virtual {v12, v6}, Ljava/io/InputStream;->read([B)I

    move-result v14

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v14, v0, :cond_3

    .line 467
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/updater/Utils;->byteArrToStr([B)Ljava/lang/String;

    move-result-object v15

    .line 468
    .local v15, oldMd5:Ljava/lang/String;
    const-string v20, "OTA::Download"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "old zip md5: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->info:Lcom/android/updater/RomInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/updater/RomInfo;->md5:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->destFile:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 478
    if-eqz v12, :cond_0

    .line 479
    :try_start_2
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 485
    .end local v6           #data:[B
    .end local v7           #digest:Ljava/security/MessageDigest;
    .end local v12           #is:Ljava/io/InputStream;
    .end local v14           #nRead:I
    .end local v15           #oldMd5:Ljava/lang/String;
    :cond_0
    :goto_1
    const/4 v11, 0x0

    .line 486
    .restart local v11       #is:Ljava/io/InputStream;
    const/16 v16, 0x0

    .line 488
    .local v16, os:Ljava/io/OutputStream;
    :try_start_3
    new-instance v10, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->info:Lcom/android/updater/RomInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/updater/RomInfo;->url:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 489
    .local v10, getUrl:Ljava/net/URL;
    const-string v20, "OTA::Download"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "downloading from: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const-string v20, "OTA::Download"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "downloading to: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->destFile:Ljava/io/File;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    .line 493
    .local v5, conn:Ljava/net/URLConnection;
    invoke-virtual {v5}, Ljava/net/URLConnection;->getContentLength()I

    move-result v13

    .line 495
    .local v13, lengthOfFile:I
    new-instance v18, Landroid/os/StatFs;

    sget-object v20, Lcom/android/updater/Config;->DL_PATH:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 496
    .local v18, stat:Landroid/os/StatFs;
    invoke-virtual/range {v18 .. v18}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/StatFs;->getBlockSize()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    mul-long v2, v20, v22

    .line 497
    .local v2, availSpace:J
    int-to-long v0, v13

    move-wide/from16 v20, v0

    cmp-long v20, v20, v2

    if-ltz v20, :cond_7

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->destFile:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->delete()Z

    .line 499
    const/16 v20, 0x3

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_e

    move-result-object v20

    .line 540
    if-eqz v11, :cond_1

    .line 541
    :try_start_4
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 544
    :cond_1
    :goto_2
    if-eqz v16, :cond_2

    .line 545
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->flush()V

    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_13

    .line 549
    .end local v2           #availSpace:J
    .end local v5           #conn:Ljava/net/URLConnection;
    .end local v10           #getUrl:Ljava/net/URL;
    .end local v13           #lengthOfFile:I
    .end local v16           #os:Ljava/io/OutputStream;
    .end local v18           #stat:Landroid/os/StatFs;
    :cond_2
    :goto_3
    return-object v20

    .line 465
    .end local v11           #is:Ljava/io/InputStream;
    .restart local v6       #data:[B
    .restart local v7       #digest:Ljava/security/MessageDigest;
    .restart local v12       #is:Ljava/io/InputStream;
    .restart local v14       #nRead:I
    :cond_3
    const/16 v20, 0x0

    :try_start_6
    move/from16 v0, v20

    invoke-virtual {v7, v6, v0, v14}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 474
    .end local v6           #data:[B
    .end local v7           #digest:Ljava/security/MessageDigest;
    .end local v14           #nRead:I
    :catch_0
    move-exception v9

    move-object v11, v12

    .line 475
    .end local v12           #is:Ljava/io/InputStream;
    .local v9, e:Ljava/lang/Exception;
    .restart local v11       #is:Ljava/io/InputStream;
    :goto_4
    :try_start_7
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->destFile:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->delete()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 478
    if-eqz v11, :cond_0

    .line 479
    :try_start_8
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_1

    .line 480
    :catch_1
    move-exception v20

    goto/16 :goto_1

    .line 472
    .end local v9           #e:Ljava/lang/Exception;
    .end local v11           #is:Ljava/io/InputStream;
    .restart local v6       #data:[B
    .restart local v7       #digest:Ljava/security/MessageDigest;
    .restart local v12       #is:Ljava/io/InputStream;
    .restart local v14       #nRead:I
    .restart local v15       #oldMd5:Ljava/lang/String;
    :cond_4
    const/16 v20, 0x0

    :try_start_9
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    move-result-object v20

    .line 478
    if-eqz v12, :cond_5

    .line 479
    :try_start_a
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    :cond_5
    :goto_5
    move-object v11, v12

    .line 472
    .end local v12           #is:Ljava/io/InputStream;
    .restart local v11       #is:Ljava/io/InputStream;
    goto :goto_3

    .line 477
    .end local v6           #data:[B
    .end local v7           #digest:Ljava/security/MessageDigest;
    .end local v14           #nRead:I
    .end local v15           #oldMd5:Ljava/lang/String;
    :catchall_0
    move-exception v20

    .line 478
    :goto_6
    if-eqz v11, :cond_6

    .line 479
    :try_start_b
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 482
    :cond_6
    :goto_7
    throw v20

    .line 502
    .restart local v2       #availSpace:J
    .restart local v5       #conn:Ljava/net/URLConnection;
    .restart local v10       #getUrl:Ljava/net/URL;
    .restart local v13       #lengthOfFile:I
    .restart local v16       #os:Ljava/io/OutputStream;
    .restart local v18       #stat:Landroid/os/StatFs;
    :cond_7
    const v20, 0x989680

    move/from16 v0, v20

    if-ge v13, v0, :cond_8

    const/16 v20, 0x400

    :try_start_c
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->scale:I

    .line 503
    :cond_8
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->publishProgress([Ljava/lang/Object;)V

    .line 505
    const-string v20, "MD5"

    invoke-static/range {v20 .. v20}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 507
    .restart local v7       #digest:Ljava/security/MessageDigest;
    invoke-virtual {v5}, Ljava/net/URLConnection;->connect()V

    .line 508
    new-instance v12, Ljava/io/BufferedInputStream;

    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_e

    .line 509
    .end local v11           #is:Ljava/io/InputStream;
    .restart local v12       #is:Ljava/io/InputStream;
    :try_start_d
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->destFile:Ljava/io/File;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_f

    .line 511
    .end local v16           #os:Ljava/io/OutputStream;
    .local v17, os:Ljava/io/OutputStream;
    const/16 v20, 0x1000

    :try_start_e
    move/from16 v0, v20

    new-array v4, v0, [B

    .line 512
    .local v4, buf:[B
    const/4 v14, -0x1

    .line 513
    .restart local v14       #nRead:I
    const/16 v19, 0x0

    .line 514
    .local v19, totalRead:I
    :goto_8
    invoke-virtual {v12, v4}, Ljava/io/InputStream;->read([B)I

    move-result v14

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v14, v0, :cond_c

    .line 522
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->isCancelled()Z

    move-result v20

    if-eqz v20, :cond_f

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->destFile:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->delete()Z

    .line 524
    const/16 v20, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    move-result-object v20

    .line 540
    if-eqz v12, :cond_a

    .line 541
    :try_start_f
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    .line 544
    :cond_a
    :goto_9
    if-eqz v17, :cond_b

    .line 545
    :try_start_10
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->flush()V

    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_12

    :cond_b
    :goto_a
    move-object v11, v12

    .line 524
    .end local v12           #is:Ljava/io/InputStream;
    .restart local v11       #is:Ljava/io/InputStream;
    goto/16 :goto_3

    .line 515
    .end local v11           #is:Ljava/io/InputStream;
    .restart local v12       #is:Ljava/io/InputStream;
    :cond_c
    :try_start_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->isCancelled()Z

    move-result v20

    if-nez v20, :cond_9

    .line 516
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v4, v1, v14}, Ljava/io/OutputStream;->write([BII)V

    .line 517
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v7, v4, v0, v14}, Ljava/security/MessageDigest;->update([BII)V

    .line 518
    add-int v19, v19, v14

    .line 519
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2

    goto :goto_8

    .line 536
    .end local v4           #buf:[B
    .end local v14           #nRead:I
    .end local v19           #totalRead:I
    :catch_2
    move-exception v9

    move-object/from16 v16, v17

    .end local v17           #os:Ljava/io/OutputStream;
    .restart local v16       #os:Ljava/io/OutputStream;
    move-object v11, v12

    .line 537
    .end local v2           #availSpace:J
    .end local v5           #conn:Ljava/net/URLConnection;
    .end local v7           #digest:Ljava/security/MessageDigest;
    .end local v10           #getUrl:Ljava/net/URL;
    .end local v12           #is:Ljava/io/InputStream;
    .end local v13           #lengthOfFile:I
    .end local v18           #stat:Landroid/os/StatFs;
    .restart local v9       #e:Ljava/lang/Exception;
    .restart local v11       #is:Ljava/io/InputStream;
    :goto_b
    :try_start_12
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->destFile:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->delete()Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 540
    if-eqz v11, :cond_d

    .line 541
    :try_start_13
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_a

    .line 544
    :cond_d
    :goto_c
    if-eqz v16, :cond_e

    .line 545
    :try_start_14
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->flush()V

    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_d

    .line 549
    :cond_e
    :goto_d
    const/16 v20, -0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    goto/16 :goto_3

    .line 527
    .end local v9           #e:Ljava/lang/Exception;
    .end local v11           #is:Ljava/io/InputStream;
    .end local v16           #os:Ljava/io/OutputStream;
    .restart local v2       #availSpace:J
    .restart local v4       #buf:[B
    .restart local v5       #conn:Ljava/net/URLConnection;
    .restart local v7       #digest:Ljava/security/MessageDigest;
    .restart local v10       #getUrl:Ljava/net/URL;
    .restart local v12       #is:Ljava/io/InputStream;
    .restart local v13       #lengthOfFile:I
    .restart local v14       #nRead:I
    .restart local v17       #os:Ljava/io/OutputStream;
    .restart local v18       #stat:Landroid/os/StatFs;
    .restart local v19       #totalRead:I
    :cond_f
    :try_start_15
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/updater/Utils;->byteArrToStr([B)Ljava/lang/String;

    move-result-object v8

    .line 528
    .local v8, dlMd5:Ljava/lang/String;
    const-string v20, "OTA::Download"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "downloaded md5: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->info:Lcom/android/updater/RomInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/updater/RomInfo;->md5:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_12

    .line 530
    const-string v20, "OTA::Download"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "downloaded md5 doesn\'t match "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->info:Lcom/android/updater/RomInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/updater/RomInfo;->md5:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->destFile:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->delete()Z

    .line 532
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_2

    move-result-object v20

    .line 540
    if-eqz v12, :cond_10

    .line 541
    :try_start_16
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_8

    .line 544
    :cond_10
    :goto_e
    if-eqz v17, :cond_11

    .line 545
    :try_start_17
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->flush()V

    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_11

    :cond_11
    :goto_f
    move-object v11, v12

    .line 532
    .end local v12           #is:Ljava/io/InputStream;
    .restart local v11       #is:Ljava/io/InputStream;
    goto/16 :goto_3

    .line 535
    .end local v11           #is:Ljava/io/InputStream;
    .restart local v12       #is:Ljava/io/InputStream;
    :cond_12
    const/16 v20, 0x0

    :try_start_18
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_2

    move-result-object v20

    .line 540
    if-eqz v12, :cond_13

    .line 541
    :try_start_19
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_9

    .line 544
    :cond_13
    :goto_10
    if-eqz v17, :cond_14

    .line 545
    :try_start_1a
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->flush()V

    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_10

    :cond_14
    :goto_11
    move-object v11, v12

    .line 535
    .end local v12           #is:Ljava/io/InputStream;
    .restart local v11       #is:Ljava/io/InputStream;
    goto/16 :goto_3

    .line 539
    .end local v2           #availSpace:J
    .end local v4           #buf:[B
    .end local v5           #conn:Ljava/net/URLConnection;
    .end local v7           #digest:Ljava/security/MessageDigest;
    .end local v8           #dlMd5:Ljava/lang/String;
    .end local v10           #getUrl:Ljava/net/URL;
    .end local v13           #lengthOfFile:I
    .end local v14           #nRead:I
    .end local v17           #os:Ljava/io/OutputStream;
    .end local v18           #stat:Landroid/os/StatFs;
    .end local v19           #totalRead:I
    .restart local v16       #os:Ljava/io/OutputStream;
    :catchall_1
    move-exception v20

    .line 540
    :goto_12
    if-eqz v11, :cond_15

    .line 541
    :try_start_1b
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_b

    .line 544
    :cond_15
    :goto_13
    if-eqz v16, :cond_16

    .line 545
    :try_start_1c
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->flush()V

    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_c

    .line 548
    :cond_16
    :goto_14
    throw v20

    .line 480
    .end local v11           #is:Ljava/io/InputStream;
    .end local v16           #os:Ljava/io/OutputStream;
    .restart local v6       #data:[B
    .restart local v7       #digest:Ljava/security/MessageDigest;
    .restart local v12       #is:Ljava/io/InputStream;
    .restart local v14       #nRead:I
    .restart local v15       #oldMd5:Ljava/lang/String;
    :catch_3
    move-exception v21

    goto/16 :goto_5

    .end local v6           #data:[B
    .end local v7           #digest:Ljava/security/MessageDigest;
    .end local v12           #is:Ljava/io/InputStream;
    .end local v14           #nRead:I
    .end local v15           #oldMd5:Ljava/lang/String;
    .restart local v11       #is:Ljava/io/InputStream;
    :catch_4
    move-exception v21

    goto/16 :goto_7

    .end local v11           #is:Ljava/io/InputStream;
    .restart local v6       #data:[B
    .restart local v7       #digest:Ljava/security/MessageDigest;
    .restart local v12       #is:Ljava/io/InputStream;
    .restart local v14       #nRead:I
    .restart local v15       #oldMd5:Ljava/lang/String;
    :catch_5
    move-exception v20

    goto/16 :goto_1

    .line 542
    .end local v6           #data:[B
    .end local v7           #digest:Ljava/security/MessageDigest;
    .end local v12           #is:Ljava/io/InputStream;
    .end local v14           #nRead:I
    .end local v15           #oldMd5:Ljava/lang/String;
    .restart local v2       #availSpace:J
    .restart local v5       #conn:Ljava/net/URLConnection;
    .restart local v10       #getUrl:Ljava/net/URL;
    .restart local v11       #is:Ljava/io/InputStream;
    .restart local v13       #lengthOfFile:I
    .restart local v16       #os:Ljava/io/OutputStream;
    .restart local v18       #stat:Landroid/os/StatFs;
    :catch_6
    move-exception v21

    goto/16 :goto_2

    .end local v11           #is:Ljava/io/InputStream;
    .end local v16           #os:Ljava/io/OutputStream;
    .restart local v4       #buf:[B
    .restart local v7       #digest:Ljava/security/MessageDigest;
    .restart local v12       #is:Ljava/io/InputStream;
    .restart local v14       #nRead:I
    .restart local v17       #os:Ljava/io/OutputStream;
    .restart local v19       #totalRead:I
    :catch_7
    move-exception v21

    goto/16 :goto_9

    .restart local v8       #dlMd5:Ljava/lang/String;
    :catch_8
    move-exception v21

    goto :goto_e

    :catch_9
    move-exception v21

    goto :goto_10

    .end local v2           #availSpace:J
    .end local v4           #buf:[B
    .end local v5           #conn:Ljava/net/URLConnection;
    .end local v7           #digest:Ljava/security/MessageDigest;
    .end local v8           #dlMd5:Ljava/lang/String;
    .end local v10           #getUrl:Ljava/net/URL;
    .end local v12           #is:Ljava/io/InputStream;
    .end local v13           #lengthOfFile:I
    .end local v14           #nRead:I
    .end local v17           #os:Ljava/io/OutputStream;
    .end local v18           #stat:Landroid/os/StatFs;
    .end local v19           #totalRead:I
    .restart local v9       #e:Ljava/lang/Exception;
    .restart local v11       #is:Ljava/io/InputStream;
    .restart local v16       #os:Ljava/io/OutputStream;
    :catch_a
    move-exception v20

    goto/16 :goto_c

    .end local v9           #e:Ljava/lang/Exception;
    :catch_b
    move-exception v21

    goto :goto_13

    .line 546
    :catch_c
    move-exception v21

    goto :goto_14

    .line 539
    .end local v11           #is:Ljava/io/InputStream;
    .restart local v2       #availSpace:J
    .restart local v5       #conn:Ljava/net/URLConnection;
    .restart local v7       #digest:Ljava/security/MessageDigest;
    .restart local v10       #getUrl:Ljava/net/URL;
    .restart local v12       #is:Ljava/io/InputStream;
    .restart local v13       #lengthOfFile:I
    .restart local v18       #stat:Landroid/os/StatFs;
    :catchall_2
    move-exception v20

    move-object v11, v12

    .end local v12           #is:Ljava/io/InputStream;
    .restart local v11       #is:Ljava/io/InputStream;
    goto :goto_12

    .end local v11           #is:Ljava/io/InputStream;
    .end local v16           #os:Ljava/io/OutputStream;
    .restart local v12       #is:Ljava/io/InputStream;
    .restart local v17       #os:Ljava/io/OutputStream;
    :catchall_3
    move-exception v20

    move-object/from16 v16, v17

    .end local v17           #os:Ljava/io/OutputStream;
    .restart local v16       #os:Ljava/io/OutputStream;
    move-object v11, v12

    .end local v12           #is:Ljava/io/InputStream;
    .restart local v11       #is:Ljava/io/InputStream;
    goto :goto_12

    .line 546
    .end local v2           #availSpace:J
    .end local v5           #conn:Ljava/net/URLConnection;
    .end local v7           #digest:Ljava/security/MessageDigest;
    .end local v10           #getUrl:Ljava/net/URL;
    .end local v13           #lengthOfFile:I
    .end local v18           #stat:Landroid/os/StatFs;
    .restart local v9       #e:Ljava/lang/Exception;
    :catch_d
    move-exception v20

    goto/16 :goto_d

    .line 536
    .end local v9           #e:Ljava/lang/Exception;
    :catch_e
    move-exception v9

    goto/16 :goto_b

    .end local v11           #is:Ljava/io/InputStream;
    .restart local v2       #availSpace:J
    .restart local v5       #conn:Ljava/net/URLConnection;
    .restart local v7       #digest:Ljava/security/MessageDigest;
    .restart local v10       #getUrl:Ljava/net/URL;
    .restart local v12       #is:Ljava/io/InputStream;
    .restart local v13       #lengthOfFile:I
    .restart local v18       #stat:Landroid/os/StatFs;
    :catch_f
    move-exception v9

    move-object v11, v12

    .end local v12           #is:Ljava/io/InputStream;
    .restart local v11       #is:Ljava/io/InputStream;
    goto/16 :goto_b

    .line 546
    .end local v11           #is:Ljava/io/InputStream;
    .end local v16           #os:Ljava/io/OutputStream;
    .restart local v4       #buf:[B
    .restart local v8       #dlMd5:Ljava/lang/String;
    .restart local v12       #is:Ljava/io/InputStream;
    .restart local v14       #nRead:I
    .restart local v17       #os:Ljava/io/OutputStream;
    .restart local v19       #totalRead:I
    :catch_10
    move-exception v21

    goto :goto_11

    :catch_11
    move-exception v21

    goto :goto_f

    .end local v8           #dlMd5:Ljava/lang/String;
    :catch_12
    move-exception v21

    goto/16 :goto_a

    .end local v4           #buf:[B
    .end local v7           #digest:Ljava/security/MessageDigest;
    .end local v12           #is:Ljava/io/InputStream;
    .end local v14           #nRead:I
    .end local v17           #os:Ljava/io/OutputStream;
    .end local v19           #totalRead:I
    .restart local v11       #is:Ljava/io/InputStream;
    .restart local v16       #os:Ljava/io/OutputStream;
    :catch_13
    move-exception v21

    goto/16 :goto_3

    .line 477
    .end local v2           #availSpace:J
    .end local v5           #conn:Ljava/net/URLConnection;
    .end local v10           #getUrl:Ljava/net/URL;
    .end local v11           #is:Ljava/io/InputStream;
    .end local v13           #lengthOfFile:I
    .end local v16           #os:Ljava/io/OutputStream;
    .end local v18           #stat:Landroid/os/StatFs;
    .restart local v12       #is:Ljava/io/InputStream;
    :catchall_4
    move-exception v20

    move-object v11, v12

    .end local v12           #is:Ljava/io/InputStream;
    .restart local v11       #is:Ljava/io/InputStream;
    goto/16 :goto_6

    .line 474
    :catch_14
    move-exception v9

    goto/16 :goto_4
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getRomInfo()Lcom/android/updater/RomInfo;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->info:Lcom/android/updater/RomInfo;

    return-object v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 439
    iget-boolean v0, p0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->done:Z

    return v0
.end method

.method protected onCancelled(Ljava/lang/Integer;)V
    .locals 5
    .parameter "result"

    .prologue
    const v4, 0x7f06002c

    const/4 v3, 0x0

    .line 554
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->done:Z

    .line 555
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 556
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 557
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->wl:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 559
    if-nez p1, :cond_0

    .line 560
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->ctx:Landroid/content/Context;

    invoke-static {v0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 579
    :goto_0
    :pswitch_0
    return-void

    .line 564
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 577
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->ctx:Landroid/content/Context;

    invoke-static {v0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 568
    :pswitch_1
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->ctx:Landroid/content/Context;

    const v1, 0x7f06002b

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 571
    :pswitch_2
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->ctx:Landroid/content/Context;

    const v1, 0x7f06002a

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 574
    :pswitch_3
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->ctx:Landroid/content/Context;

    const v1, 0x7f060029

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 564
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->onCancelled(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 583
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->done:Z

    .line 584
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 585
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 586
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->wl:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 588
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 599
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->ctx:Landroid/content/Context;

    const v1, 0x7f06002c

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 601
    :goto_0
    return-void

    .line 590
    :pswitch_0
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->destFile:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/android/updater/ListFilesActivity;->installFileDialog(Landroid/content/Context;Ljava/io/File;)V

    goto :goto_0

    .line 593
    :pswitch_1
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->ctx:Landroid/content/Context;

    const v1, 0x7f06002b

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 596
    :pswitch_2
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->ctx:Landroid/content/Context;

    const v1, 0x7f06002a

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 588
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 448
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->done:Z

    .line 449
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 450
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 451
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 4
    .parameter "values"

    .prologue
    const/4 v3, 0x1

    .line 605
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->dialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_1

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->scale:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 609
    array-length v0, p1

    if-eq v0, v3, :cond_0

    .line 610
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->dialog:Landroid/app/ProgressDialog;

    aget-object v1, p1, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->scale:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    goto :goto_0
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
