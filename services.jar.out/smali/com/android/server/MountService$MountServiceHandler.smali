.class Lcom/android/server/MountService$MountServiceHandler;
.super Landroid/os/Handler;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountServiceHandler"
.end annotation


# instance fields
.field mForceUnmounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/MountService$UnmountCallBack;",
            ">;"
        }
    .end annotation
.end field

.field mUpdatingStatus:Z

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "l"

    .prologue
    .line 444
    iput-object p1, p0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    .line 445
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    .line 442
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    .line 446
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 19
    .parameter "msg"

    .prologue
    .line 450
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    packed-switch v14, :pswitch_data_0

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 452
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/android/server/MountService$UnmountCallBack;

    .line 453
    .local v13, ucb:Lcom/android/server/MountService$UnmountCallBack;
    const-string v14, "MountService"

    const-string v15, "++ H_UNMOUNT_PM_ADDOBJ (%s)"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    iget-object v0, v13, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 459
    .end local v13           #ucb:Lcom/android/server/MountService$UnmountCallBack;
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/android/server/MountService$UnmountCallBack;

    .line 460
    .restart local v13       #ucb:Lcom/android/server/MountService$UnmountCallBack;
    const-string v15, "MountService"

    const-string v16, "++ H_UNMOUNT_PM_UPDATE (%s)"

    const/4 v14, 0x1

    new-array v0, v14, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    if-eqz v13, :cond_3

    iget-object v14, v13, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    :goto_1
    aput-object v14, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    :cond_1
    const/4 v2, 0x0

    .line 467
    .local v2, bFoundPath:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v4, v14, :cond_2

    .line 468
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/MountService$UnmountCallBack;

    .line 469
    .local v12, tmp_ucb:Lcom/android/server/MountService$UnmountCallBack;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeMap:Ljava/util/LinkedHashMap;
    invoke-static {v14}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)Ljava/util/LinkedHashMap;

    move-result-object v14

    iget-object v15, v12, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/storage/StorageVolume;

    .line 470
    .local v11, storage:Landroid/os/storage/StorageVolume;
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Landroid/os/storage/StorageVolume;->getActivitySecureContainer()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 471
    const/4 v2, 0x1

    .line 476
    .end local v11           #storage:Landroid/os/storage/StorageVolume;
    .end local v12           #tmp_ucb:Lcom/android/server/MountService$UnmountCallBack;
    :cond_2
    if-eqz v2, :cond_5

    .line 477
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    if-nez v14, :cond_0

    .line 478
    const-string v14, "MountService"

    const-string v15, "Updating external media status on PackageManager"

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    .line 480
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v14}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    goto/16 :goto_0

    .line 460
    .end local v2           #bFoundPath:Z
    .end local v4           #i:I
    :cond_3
    const-string v14, "null"

    goto :goto_1

    .line 467
    .restart local v2       #bFoundPath:Z
    .restart local v4       #i:I
    .restart local v11       #storage:Landroid/os/storage/StorageVolume;
    .restart local v12       #tmp_ucb:Lcom/android/server/MountService$UnmountCallBack;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 483
    .end local v11           #storage:Landroid/os/storage/StorageVolume;
    .end local v12           #tmp_ucb:Lcom/android/server/MountService$UnmountCallBack;
    :cond_5
    const-string v14, "MountService"

    const-string v15, "skip update enternal media status"

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v15, v0, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 489
    .end local v2           #bFoundPath:Z
    .end local v4           #i:I
    .end local v13           #ucb:Lcom/android/server/MountService$UnmountCallBack;
    :pswitch_2
    const-string v14, "MountService"

    const-string v15, "++ H_UNMOUNT_PM_DONE"

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const-string v14, "MountService"

    const-string v15, "Updated status. Processing requests"

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    .line 492
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 493
    .local v7, size:I
    new-array v8, v7, [I

    .line 494
    .local v8, sizeArr:[I
    const/4 v9, 0x0

    .line 496
    .local v9, sizeArrN:I
    const-string v14, "activity"

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityManagerService;

    .line 498
    .local v1, ams:Lcom/android/server/am/ActivityManagerService;
    const/4 v4, 0x0

    .restart local v4       #i:I
    move v10, v9

    .end local v9           #sizeArrN:I
    .local v10, sizeArrN:I
    :goto_3
    if-ge v4, v7, :cond_d

    .line 499
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/MountService$UnmountCallBack;

    .line 500
    .restart local v13       #ucb:Lcom/android/server/MountService$UnmountCallBack;
    iget-object v5, v13, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    .line 501
    .local v5, path:Ljava/lang/String;
    const-string v14, "MountService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "H_UNMOUNT_PM_DONE -> path : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", force = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-boolean v0, v13, Lcom/android/server/MountService$UnmountCallBack;->force:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 v3, 0x0

    .line 503
    .local v3, done:Z
    iget-boolean v14, v13, Lcom/android/server/MountService$UnmountCallBack;->force:Z

    if-nez v14, :cond_7

    .line 504
    const/4 v3, 0x1

    .line 520
    :cond_6
    :goto_4
    if-nez v3, :cond_b

    iget v14, v13, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    const/4 v15, 0x4

    if-ge v14, v15, :cond_b

    .line 522
    const-string v14, "MountService"

    const-string v15, "Retrying to kill storage users again"

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0x2

    iget v0, v13, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    move/from16 v17, v0

    add-int/lit8 v18, v17, 0x1

    move/from16 v0, v18

    iput v0, v13, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    const-wide/16 v16, 0x1e

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v9, v10

    .line 498
    .end local v10           #sizeArrN:I
    .restart local v9       #sizeArrN:I
    :goto_5
    add-int/lit8 v4, v4, 0x1

    move v10, v9

    .end local v9           #sizeArrN:I
    .restart local v10       #sizeArrN:I
    goto :goto_3

    .line 506
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v14, v5}, Lcom/android/server/MountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v6

    .line 507
    .local v6, pids:[I
    const-string v14, "MountService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "H_UNMOUNT_PM_DONE -> getStorageUsers : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    array-length v0, v6

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    if-eqz v6, :cond_8

    array-length v14, v6

    if-nez v14, :cond_9

    .line 509
    :cond_8
    const/4 v3, 0x1

    goto :goto_4

    .line 512
    :cond_9
    const-string v14, "unmount media"

    const/4 v15, 0x1

    invoke-virtual {v1, v6, v14, v15}, Lcom/android/server/am/ActivityManagerService;->killPids([ILjava/lang/String;Z)Z

    .line 514
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v14, v5}, Lcom/android/server/MountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v6

    .line 515
    if-eqz v6, :cond_a

    array-length v14, v6

    if-nez v14, :cond_6

    .line 516
    :cond_a
    const/4 v3, 0x1

    goto :goto_4

    .line 528
    .end local v6           #pids:[I
    :cond_b
    iget v14, v13, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    const/4 v15, 0x4

    if-lt v14, v15, :cond_c

    .line 529
    const-string v14, "MountService"

    const-string v15, "Failed to unmount media inspite of 4 retries. Forcibly killing processes now"

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_c
    add-int/lit8 v9, v10, 0x1

    .end local v10           #sizeArrN:I
    .restart local v9       #sizeArrN:I
    aput v4, v8, v10

    .line 533
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-virtual {v15, v0, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 538
    .end local v3           #done:Z
    .end local v5           #path:Ljava/lang/String;
    .end local v9           #sizeArrN:I
    .end local v13           #ucb:Lcom/android/server/MountService$UnmountCallBack;
    .restart local v10       #sizeArrN:I
    :cond_d
    add-int/lit8 v4, v10, -0x1

    :goto_6
    if-ltz v4, :cond_0

    .line 539
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    aget v15, v8, v4

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 538
    add-int/lit8 v4, v4, -0x1

    goto :goto_6

    .line 544
    .end local v1           #ams:Lcom/android/server/am/ActivityManagerService;
    .end local v4           #i:I
    .end local v7           #size:I
    .end local v8           #sizeArr:[I
    .end local v10           #sizeArrN:I
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/android/server/MountService$UnmountCallBack;

    .line 545
    .restart local v13       #ucb:Lcom/android/server/MountService$UnmountCallBack;
    const-string v14, "MountService"

    const-string v15, "++ H_UNMOUNT_MS (%s)"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    iget-object v0, v13, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-virtual {v13}, Lcom/android/server/MountService$UnmountCallBack;->handleFinished()V

    goto/16 :goto_0

    .line 450
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
