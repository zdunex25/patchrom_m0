.class Lcom/android/camera/MenuDimController$DimArray;
.super Ljava/lang/Object;
.source "MenuDimController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/MenuDimController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DimArray"
.end annotation


# instance fields
.field private mChangeArray:[Z

.field private mDimArray:[Z

.field private final mMenuId:I

.field final synthetic this$0:Lcom/android/camera/MenuDimController;


# direct methods
.method public constructor <init>(Lcom/android/camera/MenuDimController;I)V
    .locals 4
    .parameter
    .parameter "menuId"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x41

    .line 181
    iput-object p1, p0, Lcom/android/camera/MenuDimController$DimArray;->this$0:Lcom/android/camera/MenuDimController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-array v1, v2, [Z

    iput-object v1, p0, Lcom/android/camera/MenuDimController$DimArray;->mDimArray:[Z

    .line 179
    new-array v1, v2, [Z

    iput-object v1, p0, Lcom/android/camera/MenuDimController$DimArray;->mChangeArray:[Z

    .line 182
    iput p2, p0, Lcom/android/camera/MenuDimController$DimArray;->mMenuId:I

    .line 183
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 184
    iget-object v1, p0, Lcom/android/camera/MenuDimController$DimArray;->mDimArray:[Z

    aput-boolean v3, v1, v0

    .line 185
    iget-object v1, p0, Lcom/android/camera/MenuDimController$DimArray;->mChangeArray:[Z

    aput-boolean v3, v1, v0

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_0
    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/MenuDimController$DimArray;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/camera/MenuDimController$DimArray;->mDimArray:[Z

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/MenuDimController$DimArray;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/camera/MenuDimController$DimArray;->mChangeArray:[Z

    return-object v0
.end method


# virtual methods
.method public getArray()[Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/camera/MenuDimController$DimArray;->mDimArray:[Z

    return-object v0
.end method

.method public getMenuId()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/android/camera/MenuDimController$DimArray;->mMenuId:I

    return v0
.end method

.method public getSavedSettingValue(I)I
    .locals 4
    .parameter "menuid"

    .prologue
    .line 409
    iget-object v2, p0, Lcom/android/camera/MenuDimController$DimArray;->this$0:Lcom/android/camera/MenuDimController;

    #getter for: Lcom/android/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/camera/MenuDimController;->access$000(Lcom/android/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/MenuDimController$SettingValueReference;

    .line 411
    .local v0, dimReference:Lcom/android/camera/MenuDimController$SettingValueReference;
    if-eqz v0, :cond_2

    .line 412
    invoke-virtual {v0}, Lcom/android/camera/MenuDimController$SettingValueReference;->getReferenceCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 413
    invoke-virtual {v0}, Lcom/android/camera/MenuDimController$SettingValueReference;->getSettingsValue()I

    move-result v1

    .line 415
    .local v1, settingValue:I
    const/4 v2, 0x7

    if-ne p1, v2, :cond_0

    .line 416
    iget-object v2, p0, Lcom/android/camera/MenuDimController$DimArray;->this$0:Lcom/android/camera/MenuDimController;

    const/4 v3, 0x4

    #setter for: Lcom/android/camera/MenuDimController;->mSavedExposureOffset:I
    invoke-static {v2, v3}, Lcom/android/camera/MenuDimController;->access$202(Lcom/android/camera/MenuDimController;I)I

    .line 417
    iget-object v2, p0, Lcom/android/camera/MenuDimController$DimArray;->this$0:Lcom/android/camera/MenuDimController;

    #getter for: Lcom/android/camera/MenuDimController;->mSavedExposureOffset:I
    invoke-static {v2}, Lcom/android/camera/MenuDimController;->access$200(Lcom/android/camera/MenuDimController;)I

    move-result v2

    add-int/2addr v1, v2

    .line 419
    :cond_0
    iget-object v2, p0, Lcom/android/camera/MenuDimController$DimArray;->this$0:Lcom/android/camera/MenuDimController;

    #getter for: Lcom/android/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/camera/MenuDimController;->access$000(Lcom/android/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    .end local v1           #settingValue:I
    :goto_0
    return v1

    .line 422
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/MenuDimController$SettingValueReference;->decreaseReferenceCount()V

    .line 425
    :cond_2
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public restoreUserSettingValues(Z)V
    .locals 10
    .parameter "exiting"

    .prologue
    const/16 v9, 0x73

    const/16 v8, 0xe

    const/16 v7, 0xb

    const/4 v6, 0x3

    const/4 v5, -0x1

    .line 431
    iget-object v3, p0, Lcom/android/camera/MenuDimController$DimArray;->this$0:Lcom/android/camera/MenuDimController;

    #getter for: Lcom/android/camera/MenuDimController;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;
    invoke-static {v3}, Lcom/android/camera/MenuDimController;->access$100(Lcom/android/camera/MenuDimController;)Lcom/android/camera/AbstractCameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    .line 433
    .local v0, cs:Lcom/android/camera/CameraSettings;
    const/4 v1, 0x0

    .local v1, key:I
    :goto_0
    const/16 v3, 0x41

    if-ge v1, v3, :cond_8

    .line 434
    if-eqz p1, :cond_0

    if-ne v1, v7, :cond_0

    .line 435
    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getSceneMode()I

    move-result v3

    if-eqz v3, :cond_3

    .line 436
    iget-object v3, p0, Lcom/android/camera/MenuDimController$DimArray;->this$0:Lcom/android/camera/MenuDimController;

    #getter for: Lcom/android/camera/MenuDimController;->mPreviousFlashValue:I
    invoke-static {v3}, Lcom/android/camera/MenuDimController;->access$300(Lcom/android/camera/MenuDimController;)I

    move-result v2

    .line 442
    .local v2, savedValue:I
    :goto_1
    if-eq v2, v5, :cond_0

    .line 443
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 445
    .end local v2           #savedValue:I
    :cond_0
    if-eqz p1, :cond_1

    if-ne v1, v8, :cond_1

    .line 446
    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getSceneMode()I

    move-result v3

    if-eqz v3, :cond_4

    .line 447
    iget-object v3, p0, Lcom/android/camera/MenuDimController$DimArray;->this$0:Lcom/android/camera/MenuDimController;

    #getter for: Lcom/android/camera/MenuDimController;->mPreviousMeteringValue:I
    invoke-static {v3}, Lcom/android/camera/MenuDimController;->access$400(Lcom/android/camera/MenuDimController;)I

    move-result v2

    .line 453
    .restart local v2       #savedValue:I
    :goto_2
    if-eq v2, v5, :cond_1

    .line 454
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->setCameraExposureMeter(I)V

    .line 457
    .end local v2           #savedValue:I
    :cond_1
    iget-object v3, p0, Lcom/android/camera/MenuDimController$DimArray;->mChangeArray:[Z

    aget-boolean v3, v3, v1

    if-nez v3, :cond_5

    .line 433
    :cond_2
    :goto_3
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 439
    :cond_3
    invoke-virtual {p0, v6}, Lcom/android/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .restart local v2       #savedValue:I
    goto :goto_1

    .line 450
    .end local v2           #savedValue:I
    :cond_4
    invoke-virtual {p0, v7}, Lcom/android/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .restart local v2       #savedValue:I
    goto :goto_2

    .line 461
    .end local v2           #savedValue:I
    :cond_5
    packed-switch v1, :pswitch_data_0

    :pswitch_1
    goto :goto_3

    .line 463
    :pswitch_2
    const/16 v3, 0xd

    invoke-virtual {p0, v3}, Lcom/android/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 464
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 465
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->setCameraAntiShake(I)V

    goto :goto_3

    .line 468
    .end local v2           #savedValue:I
    :pswitch_3
    invoke-virtual {p0, v8}, Lcom/android/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 469
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 470
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->setCameraAutoContrast(I)V

    goto :goto_3

    .line 487
    .end local v2           #savedValue:I
    :pswitch_4
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 488
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 489
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->setSceneMode(I)V

    goto :goto_3

    .line 492
    .end local v2           #savedValue:I
    :pswitch_5
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 493
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 494
    invoke-virtual {v0, v2, p1}, Lcom/android/camera/CameraSettings;->setShootingMode(IZ)V

    goto :goto_3

    .line 497
    .end local v2           #savedValue:I
    :pswitch_6
    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lcom/android/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 498
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 499
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->setCameraISO(I)V

    goto :goto_3

    .line 502
    .end local v2           #savedValue:I
    :pswitch_7
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/android/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 503
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 504
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->setCameraEffect(I)V

    goto :goto_3

    .line 508
    .end local v2           #savedValue:I
    :pswitch_8
    const/16 v3, 0x12

    invoke-virtual {p0, v3}, Lcom/android/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 509
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 510
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->setCameraZoomValue(I)V

    goto :goto_3

    .line 513
    .end local v2           #savedValue:I
    :pswitch_9
    if-nez p1, :cond_2

    .line 514
    invoke-virtual {p0, v6}, Lcom/android/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 515
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 516
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->setCameraFlashMode(I)V

    goto :goto_3

    .line 520
    .end local v2           #savedValue:I
    :pswitch_a
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/android/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 521
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 522
    if-eq v2, v6, :cond_2

    .line 525
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_3

    .line 529
    .end local v2           #savedValue:I
    :pswitch_b
    invoke-virtual {p0, v7}, Lcom/android/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 530
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 531
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->setCameraExposureMeter(I)V

    goto/16 :goto_3

    .line 534
    .end local v2           #savedValue:I
    :pswitch_c
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/android/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 535
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 537
    iget-object v3, p0, Lcom/android/camera/MenuDimController$DimArray;->this$0:Lcom/android/camera/MenuDimController;

    #getter for: Lcom/android/camera/MenuDimController;->mSavedExposureOffset:I
    invoke-static {v3}, Lcom/android/camera/MenuDimController;->access$200(Lcom/android/camera/MenuDimController;)I

    move-result v3

    if-eqz v3, :cond_6

    .line 538
    iget-object v3, p0, Lcom/android/camera/MenuDimController$DimArray;->this$0:Lcom/android/camera/MenuDimController;

    #getter for: Lcom/android/camera/MenuDimController;->mSavedExposureOffset:I
    invoke-static {v3}, Lcom/android/camera/MenuDimController;->access$200(Lcom/android/camera/MenuDimController;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 539
    :cond_6
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->setCameraExposureValue(I)V

    goto/16 :goto_3

    .line 543
    .end local v2           #savedValue:I
    :pswitch_d
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 544
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 545
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->setCameraResolution(I)Z

    goto/16 :goto_3

    .line 550
    .end local v2           #savedValue:I
    :pswitch_e
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lcom/android/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 551
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 552
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->setWhiteBalance(I)V

    goto/16 :goto_3

    .line 555
    .end local v2           #savedValue:I
    :pswitch_f
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/android/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 556
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 557
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->setTimer(I)V

    goto/16 :goto_3

    .line 560
    .end local v2           #savedValue:I
    :pswitch_10
    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/android/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 561
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 562
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->setCameraReview(I)V

    goto/16 :goto_3

    .line 565
    .end local v2           #savedValue:I
    :pswitch_11
    const/16 v3, 0x34

    invoke-virtual {p0, v3}, Lcom/android/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 566
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 567
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->setVolumeKey(I)V

    goto/16 :goto_3

    .line 570
    .end local v2           #savedValue:I
    :pswitch_12
    const/16 v3, 0x32

    invoke-virtual {p0, v3}, Lcom/android/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 571
    .restart local v2       #savedValue:I
    const-string v3, "MenuDimController"

    const-string v4, "Voice Command"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    if-eq v2, v5, :cond_2

    .line 573
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->setCameraVoiceCommand(I)V

    goto/16 :goto_3

    .line 576
    .end local v2           #savedValue:I
    :pswitch_13
    const-string v3, "MenuDimController"

    const-string v4, "Voice CamcorderCommand"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const/16 v3, 0x84

    invoke-virtual {p0, v3}, Lcom/android/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 578
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 579
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->setCameraVoiceCommand(I)V

    goto/16 :goto_3

    .line 582
    .end local v2           #savedValue:I
    :pswitch_14
    const/16 v3, 0x13

    invoke-virtual {p0, v3}, Lcom/android/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 583
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 584
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->setGuideline(I)V

    goto/16 :goto_3

    .line 587
    .end local v2           #savedValue:I
    :pswitch_15
    const/16 v3, 0x16

    invoke-virtual {p0, v3}, Lcom/android/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 588
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 589
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->setStorage(I)V

    goto/16 :goto_3

    .line 592
    .end local v2           #savedValue:I
    :pswitch_16
    const/16 v3, 0x65

    invoke-virtual {p0, v3}, Lcom/android/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 593
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 594
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->setCamcorderRecordingMode(I)V

    goto/16 :goto_3

    .line 597
    .end local v2           #savedValue:I
    :pswitch_17
    const/16 v3, 0x6d

    invoke-virtual {p0, v3}, Lcom/android/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 598
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 599
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->setCamcorderExposureValue(I)V

    goto/16 :goto_3

    .line 602
    .end local v2           #savedValue:I
    :pswitch_18
    const/16 v3, 0x68

    invoke-virtual {p0, v3}, Lcom/android/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 603
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 604
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_3

    .line 609
    .end local v2           #savedValue:I
    :pswitch_19
    const/16 v3, 0x6c

    invoke-virtual {p0, v3}, Lcom/android/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 610
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 611
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->setCamcorderEffect(I)V

    goto/16 :goto_3

    .line 614
    .end local v2           #savedValue:I
    :pswitch_1a
    const/16 v3, 0x6b

    invoke-virtual {p0, v3}, Lcom/android/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 615
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 616
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->setWhiteBalance(I)V

    goto/16 :goto_3

    .line 619
    .end local v2           #savedValue:I
    :pswitch_1b
    const/16 v3, 0x72

    invoke-virtual {p0, v3}, Lcom/android/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 620
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 621
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->setCamcorderContrast(I)V

    .line 622
    iget-object v3, p0, Lcom/android/camera/MenuDimController$DimArray;->this$0:Lcom/android/camera/MenuDimController;

    #getter for: Lcom/android/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/camera/MenuDimController;->access$000(Lcom/android/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v3

    const/16 v4, 0x74

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/MenuDimController$SettingValueReference;

    invoke-virtual {v3}, Lcom/android/camera/MenuDimController$SettingValueReference;->getSettingsValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraSettings;->setCamcorderSharpness(I)V

    .line 623
    iget-object v3, p0, Lcom/android/camera/MenuDimController$DimArray;->this$0:Lcom/android/camera/MenuDimController;

    #getter for: Lcom/android/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/camera/MenuDimController;->access$000(Lcom/android/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/MenuDimController$SettingValueReference;

    invoke-virtual {v3}, Lcom/android/camera/MenuDimController$SettingValueReference;->getSettingsValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraSettings;->setCamcorderSaturation(I)V

    .line 624
    iget-object v3, p0, Lcom/android/camera/MenuDimController$DimArray;->this$0:Lcom/android/camera/MenuDimController;

    #getter for: Lcom/android/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/camera/MenuDimController;->access$000(Lcom/android/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v3

    const/16 v4, 0x74

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    iget-object v3, p0, Lcom/android/camera/MenuDimController$DimArray;->this$0:Lcom/android/camera/MenuDimController;

    #getter for: Lcom/android/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/camera/MenuDimController;->access$000(Lcom/android/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 629
    .end local v2           #savedValue:I
    :pswitch_1c
    const/16 v3, 0x78

    invoke-virtual {p0, v3}, Lcom/android/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 630
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 631
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->setCameraReview(I)V

    goto/16 :goto_3

    .line 634
    .end local v2           #savedValue:I
    :pswitch_1d
    const/16 v3, 0x85

    invoke-virtual {p0, v3}, Lcom/android/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 635
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 636
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->setVolumeKey(I)V

    goto/16 :goto_3

    .line 639
    .end local v2           #savedValue:I
    :pswitch_1e
    const/16 v3, 0x15

    invoke-virtual {p0, v3}, Lcom/android/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 640
    .restart local v2       #savedValue:I
    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCameraShutterSound()I

    move-result v3

    if-eqz v3, :cond_7

    .line 641
    if-eq v2, v5, :cond_2

    .line 642
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->setCameraShutterSound(I)V

    goto/16 :goto_3

    .line 644
    :cond_7
    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCameraShutterSound()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraSettings;->setCameraShutterSound(I)V

    goto/16 :goto_3

    .line 648
    .end local v2           #savedValue:I
    :pswitch_1f
    const/16 v3, 0x67

    invoke-virtual {p0, v3}, Lcom/android/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 649
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 650
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->setCamcorderFlashMode(I)V

    goto/16 :goto_3

    .line 653
    .end local v2           #savedValue:I
    :pswitch_20
    const/16 v3, 0x6e

    invoke-virtual {p0, v3}, Lcom/android/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 654
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 655
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->setCamcorderAutoContrast(I)V

    goto/16 :goto_3

    .line 672
    .end local v2           #savedValue:I
    :pswitch_21
    const/16 v3, 0x70

    invoke-virtual {p0, v3}, Lcom/android/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 673
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 674
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->setCamcorderZoomValue(I)V

    goto/16 :goto_3

    .line 677
    .end local v2           #savedValue:I
    :pswitch_22
    const/16 v3, 0x26

    invoke-virtual {p0, v3}, Lcom/android/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 678
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 679
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->setSelfFlip(I)V

    goto/16 :goto_3

    .line 689
    .end local v2           #savedValue:I
    :pswitch_23
    const/16 v3, 0x7f

    invoke-virtual {p0, v3}, Lcom/android/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 690
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 691
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->setEffectRecorderType(I)V

    goto/16 :goto_3

    .line 694
    .end local v2           #savedValue:I
    :pswitch_24
    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/android/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 695
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 696
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_3

    .line 699
    .end local v2           #savedValue:I
    :pswitch_25
    const/16 v3, 0x2f

    invoke-virtual {p0, v3}, Lcom/android/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 700
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 701
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->setBurstMode(I)V

    goto/16 :goto_3

    .line 704
    .end local v2           #savedValue:I
    :pswitch_26
    const/16 v3, 0x30

    invoke-virtual {p0, v3}, Lcom/android/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 705
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 706
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->setContextualFilename(I)V

    goto/16 :goto_3

    .line 709
    .end local v2           #savedValue:I
    :pswitch_27
    const/16 v3, 0x81

    invoke-virtual {p0, v3}, Lcom/android/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 710
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 711
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->setContextualFilename(I)V

    goto/16 :goto_3

    .line 721
    .end local v2           #savedValue:I
    :pswitch_28
    const/16 v3, 0x36

    invoke-virtual {p0, v3}, Lcom/android/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 722
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 723
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->setHDRIntensityMode(I)V

    goto/16 :goto_3

    .line 726
    .end local v2           #savedValue:I
    :pswitch_29
    const/16 v3, 0x37

    invoke-virtual {p0, v3}, Lcom/android/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 727
    .restart local v2       #savedValue:I
    if-eq v2, v5, :cond_2

    .line 728
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->setHDRPictureMode(I)V

    goto/16 :goto_3

    .line 735
    .end local v2           #savedValue:I
    :cond_8
    return-void

    .line 461
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_9
        :pswitch_a
        :pswitch_1
        :pswitch_b
        :pswitch_1
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_1
        :pswitch_f
        :pswitch_10
        :pswitch_15
        :pswitch_14
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_16
        :pswitch_1
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_12
        :pswitch_13
        :pswitch_11
        :pswitch_1d
        :pswitch_28
        :pswitch_29
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public saveSetting(II)Z
    .locals 5
    .parameter "menuid"
    .parameter "value"

    .prologue
    .line 211
    iget-object v1, p0, Lcom/android/camera/MenuDimController$DimArray;->this$0:Lcom/android/camera/MenuDimController;

    #getter for: Lcom/android/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/camera/MenuDimController;->access$000(Lcom/android/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/MenuDimController$SettingValueReference;

    .line 212
    .local v0, dimReference:Lcom/android/camera/MenuDimController$SettingValueReference;
    if-nez v0, :cond_0

    .line 213
    iget-object v1, p0, Lcom/android/camera/MenuDimController$DimArray;->this$0:Lcom/android/camera/MenuDimController;

    #getter for: Lcom/android/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/camera/MenuDimController;->access$000(Lcom/android/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/camera/MenuDimController$SettingValueReference;

    iget-object v4, p0, Lcom/android/camera/MenuDimController$DimArray;->this$0:Lcom/android/camera/MenuDimController;

    invoke-direct {v3, v4, p2}, Lcom/android/camera/MenuDimController$SettingValueReference;-><init>(Lcom/android/camera/MenuDimController;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const/4 v1, 0x1

    .line 217
    :goto_0
    return v1

    .line 216
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/MenuDimController$SettingValueReference;->increaseReferenceCount()V

    .line 217
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public varargs saveSettingMulti([I)V
    .locals 11
    .parameter "indices"

    .prologue
    const/4 v6, 0x1

    .line 233
    move-object v0, p1

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget v3, v0, v2

    .line 235
    .local v3, index:I
    if-ltz v3, :cond_1

    const/16 v5, 0x41

    if-ge v3, v5, :cond_1

    move v5, v6

    :goto_1
    if-nez v5, :cond_2

    .line 398
    .end local v3           #index:I
    :cond_0
    return-void

    .line 235
    .restart local v3       #index:I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 239
    :cond_2
    iget-object v5, p0, Lcom/android/camera/MenuDimController$DimArray;->this$0:Lcom/android/camera/MenuDimController;

    #getter for: Lcom/android/camera/MenuDimController;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;
    invoke-static {v5}, Lcom/android/camera/MenuDimController;->access$100(Lcom/android/camera/MenuDimController;)Lcom/android/camera/AbstractCameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    .line 241
    .local v1, cs:Lcom/android/camera/CameraSettings;
    packed-switch v3, :pswitch_data_0

    .line 233
    :cond_3
    :goto_2
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 243
    :pswitch_1
    const/16 v5, 0xd

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getCameraAntiShake()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    .line 246
    :pswitch_2
    const/16 v5, 0xe

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getCameraAutoContrast()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    .line 259
    :pswitch_3
    const/4 v5, 0x2

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getSceneMode()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    .line 262
    :pswitch_4
    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v5

    invoke-virtual {p0, v6, v5}, Lcom/android/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    .line 265
    :pswitch_5
    const/16 v5, 0xa

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getCameraISO()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    .line 268
    :pswitch_6
    const/16 v5, 0x8

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getCameraEffect()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    .line 271
    :pswitch_7
    const/16 v5, 0x12

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getCameraZoomValue()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    .line 274
    :pswitch_8
    const/4 v5, 0x3

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getCameraFlashMode()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    .line 277
    :pswitch_9
    const/4 v5, 0x5

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getCameraFocusMode()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    .line 280
    :pswitch_a
    const/16 v5, 0xb

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getCameraExposureMeter()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    .line 283
    :pswitch_b
    const/4 v5, 0x7

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getCameraExposureValue()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    .line 286
    :pswitch_c
    const/4 v5, 0x4

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getCameraResolution()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    .line 289
    :pswitch_d
    const/16 v5, 0x9

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getWhiteBalance()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    .line 292
    :pswitch_e
    const/4 v5, 0x6

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getTimer()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 295
    :pswitch_f
    const/16 v5, 0x11

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getCameraReview()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 298
    :pswitch_10
    const/16 v5, 0x34

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getVolumeKey()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 301
    :pswitch_11
    const/16 v5, 0x16

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getStorage()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 304
    :pswitch_12
    const/16 v5, 0x13

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getGuideline()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 307
    :pswitch_13
    const/16 v5, 0x65

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 310
    :pswitch_14
    const/16 v5, 0x6d

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getCamcorderExposureValue()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 313
    :pswitch_15
    const/16 v5, 0x68

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getCamcorderResolution()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 316
    :pswitch_16
    const/16 v5, 0x6c

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getCamcorderEffect()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 319
    :pswitch_17
    const/16 v5, 0x6b

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getWhiteBalance()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 322
    :pswitch_18
    const/16 v5, 0x72

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getCamcorderContrast()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/MenuDimController$DimArray;->saveSetting(II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 323
    iget-object v5, p0, Lcom/android/camera/MenuDimController$DimArray;->this$0:Lcom/android/camera/MenuDimController;

    #getter for: Lcom/android/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/camera/MenuDimController;->access$000(Lcom/android/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v5

    const/16 v7, 0x74

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lcom/android/camera/MenuDimController$SettingValueReference;

    iget-object v9, p0, Lcom/android/camera/MenuDimController$DimArray;->this$0:Lcom/android/camera/MenuDimController;

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getCamcorderSharpness()I

    move-result v10

    invoke-direct {v8, v9, v10}, Lcom/android/camera/MenuDimController$SettingValueReference;-><init>(Lcom/android/camera/MenuDimController;I)V

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v5, p0, Lcom/android/camera/MenuDimController$DimArray;->this$0:Lcom/android/camera/MenuDimController;

    #getter for: Lcom/android/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/camera/MenuDimController;->access$000(Lcom/android/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v5

    const/16 v7, 0x73

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lcom/android/camera/MenuDimController$SettingValueReference;

    iget-object v9, p0, Lcom/android/camera/MenuDimController$DimArray;->this$0:Lcom/android/camera/MenuDimController;

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getCamcorderSaturation()I

    move-result v10

    invoke-direct {v8, v9, v10}, Lcom/android/camera/MenuDimController$SettingValueReference;-><init>(Lcom/android/camera/MenuDimController;I)V

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 330
    :pswitch_19
    const/16 v5, 0x78

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getCameraReview()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 333
    :pswitch_1a
    const/16 v5, 0x84

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getCameraVoiceCommand()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 336
    :pswitch_1b
    const/16 v5, 0x32

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getCameraVoiceCommand()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 339
    :pswitch_1c
    const/16 v5, 0x85

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getVolumeKey()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 342
    :pswitch_1d
    const/16 v5, 0x75

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getStorage()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 345
    :pswitch_1e
    const/16 v5, 0x67

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getCamcorderFlashMode()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 348
    :pswitch_1f
    const/16 v5, 0x6e

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getCamcorderAutoContrast()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 361
    :pswitch_20
    const/16 v5, 0x7d

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getCamcorderAntishake()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 364
    :pswitch_21
    const/16 v5, 0x26

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getSelfFlip()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 372
    :pswitch_22
    const/16 v5, 0x10

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getCameraQuality()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 375
    :pswitch_23
    const/16 v5, 0x2f

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getBurstMode()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 378
    :pswitch_24
    const/16 v5, 0x30

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getContextualFilename()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 381
    :pswitch_25
    const/16 v5, 0x81

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getContextualFilename()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 389
    :pswitch_26
    const/16 v5, 0x36

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getHDRIntensityMode()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 392
    :pswitch_27
    const/16 v5, 0x37

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getHDRPictureMode()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1d
        :pswitch_0
        :pswitch_1e
        :pswitch_1f
        :pswitch_0
        :pswitch_21
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_20
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1b
        :pswitch_1a
        :pswitch_10
        :pswitch_1c
        :pswitch_26
        :pswitch_27
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public set(IZ)V
    .locals 1
    .parameter "index"
    .parameter "dimmed"

    .prologue
    .line 222
    if-ltz p1, :cond_1

    const/16 v0, 0x41

    if-ge p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    .line 230
    :cond_0
    :goto_1
    return-void

    .line 222
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 226
    :cond_2
    if-eqz p2, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/camera/MenuDimController$DimArray;->mDimArray:[Z

    aput-boolean p2, v0, p1

    .line 228
    iget-object v0, p0, Lcom/android/camera/MenuDimController$DimArray;->mChangeArray:[Z

    aput-boolean p2, v0, p1

    goto :goto_1
.end method

.method public varargs setDimMulti([I)V
    .locals 5
    .parameter "indices"

    .prologue
    .line 401
    move-object v0, p1

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget v2, v0, v1

    .line 402
    .local v2, index:I
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/MenuDimController$DimArray;->set(IZ)V

    .line 401
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 404
    .end local v2           #index:I
    :cond_0
    return-void
.end method
