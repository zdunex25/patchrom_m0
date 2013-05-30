.class public Lcom/sec/android/app/camera/MenuDimController;
.super Ljava/lang/Object;
.source "MenuDimController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/MenuDimController$DimArray;,
        Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;
    }
.end annotation


# static fields
.field public static final ANTI_SHAKE:I = 0x2

.field public static final AUTOCONTRAST:I = 0x4

.field public static final BRIGHTNESS:I = 0x3

.field public static final BURST_SETTINGS:I = 0x31

.field public static final CAMCORDER_ADJUST:I = 0x21

.field public static final CAMCORDER_ANTISHAKE:I = 0x2c

.field public static final CAMCORDER_AUTOCONTRAST:I = 0x26

.field public static final CAMCORDER_CONTEXTUAL_FILENAME:I = 0x33

.field public static final CAMCORDER_EFFECT:I = 0x1f

.field public static final CAMCORDER_EFFECT_RECORDER:I = 0x2f

.field public static final CAMCORDER_EXPOSURE_VALUE:I = 0x1d

.field public static final CAMCORDER_FLASH_MODE:I = 0x25

.field public static final CAMCORDER_MODE_SWITCH:I = 0x19

.field public static final CAMCORDER_RESOLUTION:I = 0x1e

.field public static final CAMCORDER_REVIEW:I = 0x22

.field public static final CAMCORDER_SCENE_MODE:I = 0x1c

.field public static final CAMCORDER_SELF_SWITCH:I = 0x1a

.field public static final CAMCORDER_STORAGE:I = 0x23

.field public static final CAMCORDER_TIMELAPSE:I = 0x34

.field public static final CAMCORDER_VOICECOMMAND:I = 0x38

.field public static final CAMCORDER_WHITEBALANCE:I = 0x20

.field public static final CAMCORDER_ZOOM:I = 0x27

.field public static final CAMERA_MODE_SWITCH:I = 0x0

.field public static final CAMERA_QUALITY:I = 0x30

.field public static final CAMERA_SELF_SWITCH:I = 0x1

.field public static final CONTEXTUAL_FILENAME:I = 0x32

.field public static final DEVICELIST:I = 0x2a

.field public static final EFFECT:I = 0x8

.field public static final EXPOSURE_VALUE:I = 0x10

.field public static final FLASH_MODE:I = 0xb

.field public static final FLIP:I = 0x28

.field public static final FOCUS_MODE:I = 0xc

.field public static final GUIDELINE:I = 0x17

.field public static final IMAGE_VIEWER:I = 0x18

.field public static final ISO:I = 0x7

.field public static final METERING:I = 0xe

.field public static final NUM_OF_DIM_BUTTONS:I = 0x39

.field public static final OUTDOOR_VISIBILITY:I = 0x35

.field public static final RECORDING_MODE:I = 0x1b

.field public static final RECORDING_SPEED:I = 0x2e

.field public static final REFRESH:I = 0x2b

.field public static final RESOLUTION:I = 0x11

.field public static final REVIEW:I = 0x15

.field public static final SCENE_MODE:I = 0x5

.field public static final SETTINGS:I = 0x36

.field public static final SHOOTANDSHARE:I = 0x29

.field public static final SHOOTING_MODE:I = 0x6

.field public static final SHUTTER_SOUND:I = 0x24

.field public static final SMILE_SHOT:I = 0xa

.field public static final STORAGE:I = 0x16

.field private static final TAG:Ljava/lang/String; = "MenuDimController"

.field public static final TIMER:I = 0x14

.field public static final VOICECOMMAND:I = 0x37

.field public static final WHITEBALANCE:I = 0x12

.field public static final ZOOM:I = 0x9


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mButtonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/glwidget/TwGLItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckSceneModeSet:Z

.field private mCheckShootingModeSet:Z

.field private mCurrentDimArray:[Z

.field private mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/MenuDimController$DimArray;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFlashDimmed:Z

.field private mLowBattery:Z

.field private mPreFlashValueForShootingMode:I

.field private mPreviousFlashValue:I

.field private mPreviousMeteringValue:I

.field private mUserSettingValueList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .locals 3
    .parameter "activityContext"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 130
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/16 v0, 0x39

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;

    .line 96
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/ArrayList;

    .line 98
    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mLowBattery:Z

    .line 99
    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckSceneModeSet:Z

    .line 100
    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mIsFlashDimmed:Z

    .line 101
    iput v2, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousFlashValue:I

    .line 102
    iput v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousMeteringValue:I

    .line 107
    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckShootingModeSet:Z

    .line 108
    iput v2, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreFlashValueForShootingMode:I

    .line 131
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/MenuDimController;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/MenuDimController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousFlashValue:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/MenuDimController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousMeteringValue:I

    return v0
.end method

.method private getkeyFromCommandId(I)I
    .locals 1
    .parameter "commandId"

    .prologue
    .line 664
    const/4 v0, -0x1

    .line 666
    .local v0, key:I
    sparse-switch p1, :sswitch_data_0

    .line 805
    :goto_0
    :sswitch_0
    return v0

    .line 668
    :sswitch_1
    const/4 v0, 0x0

    .line 669
    goto :goto_0

    .line 671
    :sswitch_2
    const/4 v0, 0x6

    .line 672
    goto :goto_0

    .line 674
    :sswitch_3
    const/4 v0, 0x5

    .line 675
    goto :goto_0

    .line 677
    :sswitch_4
    const/16 v0, 0xb

    .line 678
    goto :goto_0

    .line 680
    :sswitch_5
    const/16 v0, 0x11

    .line 681
    goto :goto_0

    .line 683
    :sswitch_6
    const/16 v0, 0xc

    .line 684
    goto :goto_0

    .line 686
    :sswitch_7
    const/16 v0, 0x14

    .line 687
    goto :goto_0

    .line 689
    :sswitch_8
    const/16 v0, 0x10

    .line 690
    goto :goto_0

    .line 692
    :sswitch_9
    const/16 v0, 0x8

    .line 693
    goto :goto_0

    .line 695
    :sswitch_a
    const/16 v0, 0x12

    .line 696
    goto :goto_0

    .line 698
    :sswitch_b
    const/4 v0, 0x7

    .line 699
    goto :goto_0

    .line 701
    :sswitch_c
    const/16 v0, 0xe

    .line 702
    goto :goto_0

    .line 704
    :sswitch_d
    const/4 v0, 0x2

    .line 705
    goto :goto_0

    .line 707
    :sswitch_e
    const/4 v0, 0x4

    .line 708
    goto :goto_0

    .line 710
    :sswitch_f
    const/16 v0, 0x15

    .line 711
    goto :goto_0

    .line 713
    :sswitch_10
    const/16 v0, 0x37

    .line 714
    goto :goto_0

    .line 716
    :sswitch_11
    const/16 v0, 0x38

    .line 717
    goto :goto_0

    .line 719
    :sswitch_12
    const/16 v0, 0x9

    .line 720
    goto :goto_0

    .line 722
    :sswitch_13
    const/16 v0, 0x17

    .line 723
    goto :goto_0

    .line 725
    :sswitch_14
    const/16 v0, 0x16

    .line 726
    goto :goto_0

    .line 728
    :sswitch_15
    const/16 v0, 0x18

    .line 729
    goto :goto_0

    .line 731
    :sswitch_16
    const/4 v0, 0x1

    .line 732
    goto :goto_0

    .line 734
    :sswitch_17
    const/16 v0, 0x1a

    .line 735
    goto :goto_0

    .line 737
    :sswitch_18
    const/16 v0, 0x19

    .line 738
    goto :goto_0

    .line 740
    :sswitch_19
    const/16 v0, 0x1b

    .line 741
    goto :goto_0

    .line 743
    :sswitch_1a
    const/16 v0, 0x1e

    .line 744
    goto :goto_0

    .line 746
    :sswitch_1b
    const/16 v0, 0x20

    .line 747
    goto :goto_0

    .line 749
    :sswitch_1c
    const/16 v0, 0x1f

    .line 750
    goto :goto_0

    .line 752
    :sswitch_1d
    const/16 v0, 0x1d

    .line 753
    goto :goto_0

    .line 755
    :sswitch_1e
    const/16 v0, 0x22

    .line 756
    goto :goto_0

    .line 758
    :sswitch_1f
    const/16 v0, 0x23

    .line 759
    goto :goto_0

    .line 761
    :sswitch_20
    const/16 v0, 0x2c

    .line 762
    goto :goto_0

    .line 764
    :sswitch_21
    const/16 v0, 0x25

    .line 765
    goto :goto_0

    .line 767
    :sswitch_22
    const/16 v0, 0x26

    .line 768
    goto :goto_0

    .line 770
    :sswitch_23
    const/16 v0, 0x2a

    .line 771
    goto :goto_0

    .line 773
    :sswitch_24
    const/16 v0, 0x29

    .line 774
    goto :goto_0

    .line 776
    :sswitch_25
    const/16 v0, 0x28

    .line 777
    goto :goto_0

    .line 784
    :sswitch_26
    const/16 v0, 0x30

    .line 785
    goto :goto_0

    .line 787
    :sswitch_27
    const/16 v0, 0x31

    .line 788
    goto :goto_0

    .line 790
    :sswitch_28
    const/16 v0, 0x32

    .line 791
    goto :goto_0

    .line 793
    :sswitch_29
    const/16 v0, 0x33

    .line 794
    goto :goto_0

    .line 796
    :sswitch_2a
    const/16 v0, 0x35

    .line 797
    goto :goto_0

    .line 799
    :sswitch_2b
    const/16 v0, 0x36

    .line 800
    goto :goto_0

    .line 666
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_a
        0xa -> :sswitch_b
        0xb -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0x10 -> :sswitch_26
        0x11 -> :sswitch_f
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x16 -> :sswitch_14
        0x1b -> :sswitch_2b
        0x1d -> :sswitch_15
        0x23 -> :sswitch_2a
        0x24 -> :sswitch_16
        0x33 -> :sswitch_25
        0x35 -> :sswitch_24
        0x36 -> :sswitch_23
        0x3f -> :sswitch_27
        0x40 -> :sswitch_28
        0x43 -> :sswitch_10
        0xbb8 -> :sswitch_18
        0xbb9 -> :sswitch_19
        0xbbb -> :sswitch_21
        0xbbc -> :sswitch_1a
        0xbbf -> :sswitch_1b
        0xbc0 -> :sswitch_1c
        0xbc1 -> :sswitch_1d
        0xbc2 -> :sswitch_22
        0xbc9 -> :sswitch_1f
        0xbcd -> :sswitch_1e
        0xbce -> :sswitch_17
        0xbd6 -> :sswitch_20
        0xbd7 -> :sswitch_0
        0xbdb -> :sswitch_29
        0xbde -> :sswitch_11
    .end sparse-switch
.end method

.method private merge([Z)V
    .locals 4
    .parameter "array"

    .prologue
    .line 1488
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x39

    if-ge v0, v1, :cond_0

    .line 1489
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aget-boolean v2, v2, v0

    aget-boolean v3, p1, v0

    or-int/2addr v2, v3

    aput-boolean v2, v1, v0

    .line 1488
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1491
    :cond_0
    return-void
.end method

.method private restitutePreFlashStatus(Lcom/sec/android/app/camera/CameraSettings;)V
    .locals 2
    .parameter "css"

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckShootingModeSet:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 121
    iget v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreFlashValueForShootingMode:I

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckShootingModeSet:Z

    .line 126
    :cond_0
    return-void
.end method

.method private savePreFlashStatus(Lcom/sec/android/app/camera/CameraSettings;)V
    .locals 1
    .parameter "css"

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckShootingModeSet:Z

    if-nez v0, :cond_0

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckShootingModeSet:Z

    .line 113
    invoke-virtual {p1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFlashMode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreFlashValueForShootingMode:I

    .line 117
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addButton(Lcom/sec/android/app/camera/glwidget/TwGLItem;)V
    .locals 1
    .parameter "button"

    .prologue
    .line 656
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    monitor-exit p0

    return-void

    .line 656
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 643
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 644
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    monitor-exit p0

    return-void

    .line 643
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDimArray([Z)V
    .locals 3
    .parameter "dimArray"

    .prologue
    const/4 v2, 0x0

    .line 648
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    const/16 v1, 0x39

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 649
    return-void
.end method

.method public getIsFlashDimmed()Z
    .locals 1

    .prologue
    .line 1469
    iget-boolean v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mIsFlashDimmed:Z

    return v0
.end method

.method public getLowBatteryStatus()Z
    .locals 1

    .prologue
    .line 1461
    iget-boolean v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mLowBattery:Z

    return v0
.end method

.method public processDim()V
    .locals 4

    .prologue
    .line 1473
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x39

    if-ge v0, v2, :cond_0

    .line 1474
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/camera/MenuDimController;->setDim(IZ)V

    .line 1473
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1477
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v3

    .line 1478
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1479
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/MenuDimController$DimArray;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1480
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/MenuDimController$DimArray;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getArray()[Z

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/MenuDimController;->merge([Z)V

    goto :goto_1

    .line 1482
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/MenuDimController$DimArray;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/MenuDimController$DimArray;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1484
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 1485
    return-void
.end method

.method public declared-synchronized refreshButtonDim(II)V
    .locals 8
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    const/4 v7, 0x1

    .line 845
    monitor-enter p0

    :try_start_0
    const-string v4, "MenuDimController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshButtonDim: menuid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " modeid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    .line 851
    .local v0, cs:Lcom/sec/android/app/camera/CameraSettings;
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuDimController$DimArray;

    .line 853
    .local v1, dimArray:Lcom/sec/android/app/camera/MenuDimController$DimArray;
    if-eqz v1, :cond_0

    .line 854
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->restoreUserSettingValues(Z)V

    .line 855
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getMenuId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    const-string v4, "MenuDimController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoring user setting values. CameraResolutionChanged = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolutionChanged()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " CamcorderResolutionChanged = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolutionChanged()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_0
    new-instance v1, Lcom/sec/android/app/camera/MenuDimController$DimArray;

    .end local v1           #dimArray:Lcom/sec/android/app/camera/MenuDimController$DimArray;
    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/MenuDimController$DimArray;-><init>(Lcom/sec/android/app/camera/MenuDimController;I)V

    .line 861
    .restart local v1       #dimArray:Lcom/sec/android/app/camera/MenuDimController$DimArray;
    sparse-switch p1, :sswitch_data_0

    .line 1431
    :cond_1
    :goto_0
    :sswitch_0
    iget-boolean v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mLowBattery:Z

    if-eqz v4, :cond_2

    .line 1432
    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1433
    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1434
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 1435
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderFlashMode(I)V

    .line 1438
    :cond_2
    iget-boolean v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mIsFlashDimmed:Z

    if-eqz v4, :cond_3

    .line 1439
    const-string v4, "MenuDimController"

    const-string v5, "set flash dim by external"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_2

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1441
    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_3

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1442
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 1443
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderFlashMode(I)V

    .line 1446
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getAttachEmailMode()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1447
    :cond_4
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x1b

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1448
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x1b

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1451
    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1453
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuDimController;->processDim()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1454
    monitor-exit p0

    return-void

    .line 863
    :sswitch_1
    :try_start_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 864
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x28

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 865
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x28

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 866
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setSelfFlip(I)V

    .line 868
    :cond_6
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 1068
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/MenuDimController;->restitutePreFlashStatus(Lcom/sec/android/app/camera/CameraSettings;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 845
    .end local v0           #cs:Lcom/sec/android/app/camera/CameraSettings;
    .end local v1           #dimArray:Lcom/sec/android/app/camera/MenuDimController$DimArray;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 870
    .restart local v0       #cs:Lcom/sec/android/app/camera/CameraSettings;
    .restart local v1       #dimArray:Lcom/sec/android/app/camera/MenuDimController$DimArray;
    :pswitch_2
    const/4 v4, 0x6

    :try_start_2
    new-array v4, v4, [I

    fill-array-data v4, :array_4

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 871
    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 872
    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_6

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 875
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 876
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 879
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/MenuDimController;->savePreFlashStatus(Lcom/sec/android/app/camera/CameraSettings;)V

    .line 880
    const/16 v4, 0xd

    new-array v4, v4, [I

    fill-array-data v4, :array_7

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 882
    const/16 v4, 0xd

    new-array v4, v4, [I

    fill-array-data v4, :array_8

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 884
    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_9

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 888
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 889
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 890
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    .line 891
    const/16 v4, 0x11

    if-ne p2, v4, :cond_7

    .line 892
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_0

    .line 894
    :cond_7
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_0

    .line 897
    :pswitch_4
    const/16 v4, 0xe

    new-array v4, v4, [I

    fill-array-data v4, :array_a

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 899
    const/16 v4, 0xe

    new-array v4, v4, [I

    fill-array-data v4, :array_b

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 901
    const/16 v4, 0x8

    new-array v4, v4, [I

    fill-array-data v4, :array_c

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 905
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 906
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 907
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    .line 908
    const/16 v4, 0x11

    if-ne p2, v4, :cond_8

    .line 909
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_0

    .line 911
    :cond_8
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_0

    .line 914
    :pswitch_5
    const/16 v4, 0xd

    new-array v4, v4, [I

    fill-array-data v4, :array_d

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 916
    const/16 v4, 0xd

    new-array v4, v4, [I

    fill-array-data v4, :array_e

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 918
    const/16 v4, 0x8

    new-array v4, v4, [I

    fill-array-data v4, :array_f

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 919
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 920
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 922
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_0

    .line 925
    :pswitch_6
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/MenuDimController;->savePreFlashStatus(Lcom/sec/android/app/camera/CameraSettings;)V

    .line 926
    const/16 v4, 0xc

    new-array v4, v4, [I

    fill-array-data v4, :array_10

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 928
    const/16 v4, 0xc

    new-array v4, v4, [I

    fill-array-data v4, :array_11

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 930
    const/16 v4, 0x9

    new-array v4, v4, [I

    fill-array-data v4, :array_12

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 932
    const-string v4, "1600x1200"

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    .line 934
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 937
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    goto/16 :goto_0

    .line 940
    :pswitch_7
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/MenuDimController;->savePreFlashStatus(Lcom/sec/android/app/camera/CameraSettings;)V

    .line 941
    const/16 v4, 0x9

    new-array v4, v4, [I

    fill-array-data v4, :array_13

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 943
    const/16 v4, 0x9

    new-array v4, v4, [I

    fill-array-data v4, :array_14

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 945
    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_15

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 947
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 948
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 951
    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAutoContrast(I)V

    goto/16 :goto_0

    .line 950
    :cond_9
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_1

    .line 954
    :pswitch_8
    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_16

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 955
    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_17

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 956
    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_18

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 957
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 958
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 961
    :goto_2
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/MenuDimController;->restitutePreFlashStatus(Lcom/sec/android/app/camera/CameraSettings;)V

    goto/16 :goto_0

    .line 960
    :cond_a
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_2

    .line 964
    :pswitch_9
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/MenuDimController;->savePreFlashStatus(Lcom/sec/android/app/camera/CameraSettings;)V

    .line 965
    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_19

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 967
    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_1a

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 969
    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_1b

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 970
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 971
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 973
    :cond_b
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 976
    :pswitch_a
    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_1c

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 977
    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_1d

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 978
    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_1e

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 981
    :pswitch_b
    const/16 v4, 0xb

    new-array v4, v4, [I

    fill-array-data v4, :array_1f

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 983
    const/16 v4, 0xb

    new-array v4, v4, [I

    fill-array-data v4, :array_20

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 985
    const/16 v4, 0x9

    new-array v4, v4, [I

    fill-array-data v4, :array_21

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 990
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 993
    :pswitch_c
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/MenuDimController;->savePreFlashStatus(Lcom/sec/android/app/camera/CameraSettings;)V

    .line 994
    const/16 v4, 0x8

    new-array v4, v4, [I

    fill-array-data v4, :array_22

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 996
    const/16 v4, 0x8

    new-array v4, v4, [I

    fill-array-data v4, :array_23

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 998
    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_24

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1000
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1001
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1003
    :cond_c
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1006
    :pswitch_d
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_25

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1008
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_26

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1010
    const/16 v4, 0x8

    new-array v4, v4, [I

    fill-array-data v4, :array_27

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1012
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1015
    :pswitch_e
    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_28

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1017
    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_29

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1019
    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_2a

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1023
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1026
    :pswitch_f
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/MenuDimController;->savePreFlashStatus(Lcom/sec/android/app/camera/CameraSettings;)V

    .line 1035
    const/16 v4, 0xb

    new-array v4, v4, [I

    fill-array-data v4, :array_2b

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1038
    const/16 v4, 0xb

    new-array v4, v4, [I

    fill-array-data v4, :array_2c

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1042
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_2d

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1047
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1050
    :pswitch_10
    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_2e

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1051
    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_2f

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1052
    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_30

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1053
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/MenuDimController;->restitutePreFlashStatus(Lcom/sec/android/app/camera/CameraSettings;)V

    goto/16 :goto_0

    .line 1056
    :pswitch_11
    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_31

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1057
    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_32

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1058
    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_33

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1059
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1062
    :pswitch_12
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x31

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1063
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x31

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1064
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x31

    aput v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1065
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/MenuDimController;->restitutePreFlashStatus(Lcom/sec/android/app/camera/CameraSettings;)V

    goto/16 :goto_0

    .line 1075
    :sswitch_2
    if-eqz p2, :cond_e

    .line 1076
    iget-boolean v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckSceneModeSet:Z

    if-nez v4, :cond_d

    .line 1077
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckSceneModeSet:Z

    .line 1078
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFlashMode()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousFlashValue:I

    .line 1079
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraExposureMeter()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousMeteringValue:I

    .line 1081
    :cond_d
    packed-switch p2, :pswitch_data_1

    .line 1189
    :goto_3
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAntiShake(I)V

    .line 1190
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAutoContrast(I)V

    goto/16 :goto_0

    .line 1083
    :pswitch_13
    const/16 v4, 0x9

    new-array v4, v4, [I

    fill-array-data v4, :array_34

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1084
    const/16 v4, 0x9

    new-array v4, v4, [I

    fill-array-data v4, :array_35

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1085
    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_36

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1087
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 1092
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto :goto_3

    .line 1095
    :pswitch_14
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_37

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1096
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_38

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1097
    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_39

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1098
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    .line 1099
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto :goto_3

    .line 1102
    :pswitch_15
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_3a

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1103
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_3b

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1104
    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_3c

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1106
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto :goto_3

    .line 1109
    :pswitch_16
    const/16 v4, 0x9

    new-array v4, v4, [I

    fill-array-data v4, :array_3d

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1110
    const/16 v4, 0x9

    new-array v4, v4, [I

    fill-array-data v4, :array_3e

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1111
    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_3f

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1113
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraISO(I)V

    .line 1114
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_3

    .line 1117
    :pswitch_17
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_40

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1118
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_41

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1119
    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_42

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1121
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraISO(I)V

    .line 1122
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureValue(I)V

    .line 1123
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_3

    .line 1126
    :pswitch_18
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_43

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1127
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_44

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1128
    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_45

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1129
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 1130
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_3

    .line 1133
    :pswitch_19
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_46

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1134
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_47

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1135
    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_48

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1136
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 1137
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_3

    .line 1140
    :pswitch_1a
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_49

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1141
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_4a

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1142
    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_4b

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1143
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_3

    .line 1146
    :pswitch_1b
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_4c

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1147
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_4d

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1148
    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_4e

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1150
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_3

    .line 1153
    :pswitch_1c
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_4f

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1154
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_50

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1155
    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_51

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1157
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraISO(I)V

    .line 1158
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_3

    .line 1161
    :pswitch_1d
    const/16 v4, 0x9

    new-array v4, v4, [I

    fill-array-data v4, :array_52

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1162
    const/16 v4, 0x9

    new-array v4, v4, [I

    fill-array-data v4, :array_53

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1163
    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_54

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1167
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 1168
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_3

    .line 1171
    :pswitch_1e
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_55

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1172
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_56

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1173
    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_57

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1174
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 1175
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_3

    .line 1178
    :pswitch_1f
    const/16 v4, 0x9

    new-array v4, v4, [I

    fill-array-data v4, :array_58

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1179
    const/16 v4, 0x9

    new-array v4, v4, [I

    fill-array-data v4, :array_59

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1180
    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_5a

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1182
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_3

    .line 1193
    :cond_e
    iget-boolean v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckSceneModeSet:Z

    if-eqz v4, :cond_1

    .line 1194
    iget v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousFlashValue:I

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 1195
    iget v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousMeteringValue:I

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    .line 1196
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckSceneModeSet:Z

    goto/16 :goto_0

    .line 1201
    :sswitch_3
    if-eqz p2, :cond_1

    .line 1202
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x2

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1203
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x2

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1204
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAntiShake(I)V

    goto/16 :goto_0

    .line 1217
    :sswitch_4
    if-ne p2, v7, :cond_1

    .line 1218
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x10

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1219
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x10

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1220
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x10

    aput v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 1224
    :sswitch_5
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1225
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x28

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1226
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x28

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1227
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setSelfFlip(I)V

    .line 1229
    :cond_f
    if-ne p2, v7, :cond_13

    .line 1230
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x2c

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1231
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x2c

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1232
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x2c

    aput v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1233
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1234
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x1e

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1235
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x1e

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1237
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 1238
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    .line 1242
    .local v3, resolutionId:I
    :goto_4
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_0

    .line 1240
    .end local v3           #resolutionId:I
    :cond_10
    const/16 v3, 0x13

    .restart local v3       #resolutionId:I
    goto :goto_4

    .line 1244
    .end local v3           #resolutionId:I
    :cond_11
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x1e

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1245
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x1e

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1247
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 1248
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    .line 1252
    .restart local v3       #resolutionId:I
    :goto_5
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_0

    .line 1250
    .end local v3           #resolutionId:I
    :cond_12
    const/16 v3, 0x13

    .restart local v3       #resolutionId:I
    goto :goto_5

    .line 1254
    .end local v3           #resolutionId:I
    :cond_13
    if-nez p2, :cond_1

    .line 1255
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1256
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1257
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x1e

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1258
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x1e

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1259
    const/16 v4, 0x13

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_0

    .line 1262
    :cond_14
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1263
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x1e

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1264
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x1e

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1265
    const/16 v4, 0x13

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_0

    .line 1294
    :sswitch_6
    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1295
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x16

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1296
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x16

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_0

    .line 1300
    :sswitch_7
    if-ne p2, v7, :cond_17

    .line 1301
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v4

    if-nez v4, :cond_15

    .line 1302
    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_5b

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1303
    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_5c

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1304
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x31

    aput v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 1306
    :cond_15
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1307
    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_5d

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1308
    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_5e

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1309
    const/16 v4, 0x13

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_0

    .line 1311
    :cond_16
    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_5f

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1312
    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_60

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_0

    .line 1315
    :cond_17
    const/4 v4, 0x2

    if-ne p2, v4, :cond_18

    .line 1316
    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_61

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1318
    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_62

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1320
    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_63

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 1321
    :cond_18
    const/4 v4, 0x3

    if-ne p2, v4, :cond_19

    .line 1322
    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_64

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1323
    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_65

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1324
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x1b

    aput v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 1326
    :cond_19
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x1c

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1327
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x1c

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_0

    .line 1331
    :sswitch_8
    if-nez p2, :cond_1

    .line 1332
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x18

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1333
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x18

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_0

    .line 1337
    :sswitch_9
    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1338
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x23

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1339
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x23

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_0

    .line 1343
    :sswitch_a
    const/16 v4, 0xd

    if-ne p2, v4, :cond_1a

    .line 1349
    :cond_1a
    const/16 v4, 0xd

    if-eq p2, v4, :cond_1

    const/16 v4, 0xe

    if-eq p2, v4, :cond_1

    .line 1350
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x2c

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1351
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x2c

    aput v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1352
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x2c

    aput v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 1356
    :sswitch_b
    if-nez p2, :cond_1b

    .line 1357
    const/16 v4, 0x29

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->set(IZ)V

    goto/16 :goto_0

    .line 1359
    :cond_1b
    const/16 v4, 0x29

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->set(IZ)V

    goto/16 :goto_0

    .line 1363
    :sswitch_c
    if-ne p2, v7, :cond_1

    .line 1365
    const-string v4, "1280x960"

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_1c

    .line 1366
    const/16 v4, 0xa

    new-array v4, v4, [I

    fill-array-data v4, :array_66

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1372
    :goto_6
    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_67

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 1368
    :cond_1c
    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_68

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    goto :goto_6

    .line 1386
    :sswitch_d
    if-ne p2, v7, :cond_1

    .line 1388
    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_69

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1391
    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_6a

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 1399
    :sswitch_e
    if-ne p2, v7, :cond_1e

    .line 1400
    const/16 v4, 0x12

    new-array v4, v4, [I

    fill-array-data v4, :array_6b

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1402
    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_6c

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1403
    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_6d

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1404
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1405
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 1408
    :goto_7
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 1410
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    .line 1412
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v4, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/camera/CameraEngine;->doChangeParameterSync(II)V

    .line 1413
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v4, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v4

    const/16 v5, 0x10

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/camera/CameraEngine;->doChangeParameterSync(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1415
    const-wide/16 v4, 0xc8

    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 1416
    :catch_0
    move-exception v2

    .line 1418
    .local v2, e:Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 1407
    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_1d
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_7

    .line 1421
    :cond_1e
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFlashMode()I

    move-result v4

    if-eqz v4, :cond_1

    .line 1422
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v4, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFlashMode()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/camera/CameraEngine;->doChangeParameterSync(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 861
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0xa -> :sswitch_3
        0xd -> :sswitch_0
        0xe -> :sswitch_4
        0x16 -> :sswitch_6
        0x1d -> :sswitch_8
        0x24 -> :sswitch_c
        0x27 -> :sswitch_b
        0x2f -> :sswitch_e
        0x65 -> :sswitch_5
        0x68 -> :sswitch_a
        0x75 -> :sswitch_9
        0x79 -> :sswitch_d
    .end sparse-switch

    .line 1432
    :array_0
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
    .end array-data

    .line 1433
    :array_1
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
    .end array-data

    .line 1440
    :array_2
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
    .end array-data

    .line 1441
    :array_3
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
    .end array-data

    .line 868
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_8
        :pswitch_3
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 870
    :array_4
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 871
    :array_5
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 872
    :array_6
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 880
    :array_7
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 882
    :array_8
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 884
    :array_9
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 897
    :array_a
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 899
    :array_b
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 901
    :array_c
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 914
    :array_d
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 916
    :array_e
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 918
    :array_f
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 926
    :array_10
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 928
    :array_11
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 930
    :array_12
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 941
    :array_13
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 943
    :array_14
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 945
    :array_15
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 954
    :array_16
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 955
    :array_17
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 956
    :array_18
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 965
    :array_19
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 967
    :array_1a
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 969
    :array_1b
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 976
    :array_1c
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 977
    :array_1d
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 978
    :array_1e
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 981
    :array_1f
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 983
    :array_20
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 985
    :array_21
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 994
    :array_22
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 996
    :array_23
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 998
    :array_24
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1006
    :array_25
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1008
    :array_26
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1010
    :array_27
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1015
    :array_28
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1017
    :array_29
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1019
    :array_2a
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1035
    :array_2b
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1038
    :array_2c
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1042
    :array_2d
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data

    .line 1050
    :array_2e
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 1051
    :array_2f
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 1052
    :array_30
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 1056
    :array_31
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1057
    :array_32
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1058
    :array_33
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1081
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_13
        :pswitch_14
        :pswitch_1b
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
    .end packed-switch

    .line 1083
    :array_34
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1084
    :array_35
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1085
    :array_36
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 1095
    :array_37
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1096
    :array_38
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1097
    :array_39
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 1102
    :array_3a
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1103
    :array_3b
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1104
    :array_3c
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 1109
    :array_3d
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1110
    :array_3e
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1111
    :array_3f
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 1117
    :array_40
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1118
    :array_41
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1119
    :array_42
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 1126
    :array_43
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1127
    :array_44
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1128
    :array_45
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 1133
    :array_46
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1134
    :array_47
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1135
    :array_48
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 1140
    :array_49
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1141
    :array_4a
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1142
    :array_4b
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 1146
    :array_4c
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1147
    :array_4d
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1148
    :array_4e
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 1153
    :array_4f
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1154
    :array_50
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1155
    :array_51
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 1161
    :array_52
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1162
    :array_53
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1163
    :array_54
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 1171
    :array_55
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1172
    :array_56
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1173
    :array_57
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 1178
    :array_58
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1179
    :array_59
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 1180
    :array_5a
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 1302
    :array_5b
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1303
    :array_5c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1307
    :array_5d
    .array-data 0x4
        0x1et 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 1308
    :array_5e
    .array-data 0x4
        0x1et 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 1311
    :array_5f
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 1312
    :array_60
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 1316
    :array_61
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 1318
    :array_62
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 1320
    :array_63
    .array-data 0x4
        0x1bt 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
    .end array-data

    .line 1322
    :array_64
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 1323
    :array_65
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 1366
    :array_66
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
    .end array-data

    .line 1372
    :array_67
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data

    .line 1368
    :array_68
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data

    .line 1388
    :array_69
    .array-data 0x4
        0x25t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
    .end array-data

    .line 1391
    :array_6a
    .array-data 0x4
        0x25t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
    .end array-data

    .line 1400
    :array_6b
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
    .end array-data

    .line 1402
    :array_6c
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
    .end array-data

    .line 1403
    :array_6d
    .array-data 0x4
        0x14t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public declared-synchronized removeButton(Lcom/sec/android/app/camera/glwidget/TwGLItem;)V
    .locals 1
    .parameter "button"

    .prologue
    .line 660
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 661
    monitor-exit p0

    return-void

    .line 660
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetDim()V
    .locals 2

    .prologue
    .line 809
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 810
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 812
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x39

    if-ge v0, v1, :cond_0

    .line 813
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/MenuDimController;->setDim(IZ)V

    .line 812
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 815
    :cond_0
    return-void
.end method

.method public restoreUserSettingValues()V
    .locals 3

    .prologue
    .line 824
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 825
    .local v0, itor:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/MenuDimController$DimArray;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 826
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuDimController$DimArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->restoreUserSettingValues(Z)V

    goto :goto_0

    .line 828
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 829
    return-void
.end method

.method declared-synchronized setDim(IZ)V
    .locals 1
    .parameter "key"
    .parameter "dimmed"

    .prologue
    .line 818
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aput-boolean p2, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 821
    :cond_0
    monitor-exit p0

    return-void

    .line 818
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDimArray([Z)V
    .locals 3
    .parameter "dimArray"

    .prologue
    const/4 v2, 0x0

    .line 652
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    const/16 v1, 0x39

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 653
    return-void
.end method

.method public setIsFlashDimmed(Z)V
    .locals 0
    .parameter "isflashDimmed"

    .prologue
    .line 1465
    iput-boolean p1, p0, Lcom/sec/android/app/camera/MenuDimController;->mIsFlashDimmed:Z

    .line 1466
    return-void
.end method

.method public setLowBatteryStatus(Z)V
    .locals 0
    .parameter "lowBattery"

    .prologue
    .line 1457
    iput-boolean p1, p0, Lcom/sec/android/app/camera/MenuDimController;->mLowBattery:Z

    .line 1458
    return-void
.end method

.method public varargs setSettingDefault([I)V
    .locals 10
    .parameter "indices"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1495
    iget-object v6, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    .line 1499
    .local v1, cs:Lcom/sec/android/app/camera/CameraSettings;
    move-object v0, p1

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_4

    aget v3, v0, v2

    .line 1500
    .local v3, index:I
    packed-switch v3, :pswitch_data_0

    .line 1499
    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1502
    :pswitch_1
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setSceneMode(I)V

    goto :goto_1

    .line 1506
    :pswitch_2
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto :goto_1

    .line 1510
    :pswitch_3
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraISO(I)V

    goto :goto_1

    .line 1516
    :pswitch_4
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraFocusMode()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_1

    .line 1519
    :pswitch_5
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    goto :goto_1

    .line 1522
    :pswitch_6
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureValue(I)V

    goto :goto_1

    .line 1525
    :pswitch_7
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAutoContrast(I)V

    goto :goto_1

    .line 1528
    :pswitch_8
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    goto :goto_1

    .line 1531
    :pswitch_9
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    goto :goto_1

    .line 1534
    :pswitch_a
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setTimer(I)V

    goto :goto_1

    .line 1537
    :pswitch_b
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setGuideline(I)V

    goto :goto_1

    .line 1540
    :pswitch_c
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraReview(I)V

    goto :goto_1

    .line 1543
    :pswitch_d
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMode()Z

    move-result v6

    if-ne v6, v9, :cond_2

    .line 1544
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v6

    if-ne v6, v9, :cond_0

    .line 1545
    invoke-virtual {v1, v9}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderRecordingMode(I)V

    goto :goto_1

    .line 1546
    :cond_0
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getAttachEmailMode()Z

    move-result v6

    if-ne v6, v9, :cond_1

    .line 1547
    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderRecordingMode(I)V

    goto :goto_1

    .line 1549
    :cond_1
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderRecordingMode(I)V

    goto :goto_1

    .line 1552
    :cond_2
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderRecordingMode(I)V

    goto :goto_1

    .line 1557
    :pswitch_e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1558
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v5

    .line 1564
    .local v5, resolutionId:I
    :goto_2
    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto :goto_1

    .line 1561
    .end local v5           #resolutionId:I
    :cond_3
    const/16 v5, 0x13

    .restart local v5       #resolutionId:I
    goto :goto_2

    .line 1567
    .end local v5           #resolutionId:I
    :pswitch_f
    invoke-virtual {v1, v9}, Lcom/sec/android/app/camera/CameraSettings;->setCameraReview(I)V

    goto/16 :goto_1

    .line 1570
    :pswitch_10
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAntiShake(I)V

    goto/16 :goto_1

    .line 1573
    :pswitch_11
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderAntishake()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    goto/16 :goto_1

    .line 1577
    :pswitch_12
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderFlashMode(I)V

    goto/16 :goto_1

    .line 1581
    :pswitch_13
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderZoomValue(I)V

    goto/16 :goto_1

    .line 1584
    :pswitch_14
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    goto/16 :goto_1

    .line 1587
    :pswitch_15
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderEffect(I)V

    goto/16 :goto_1

    .line 1590
    :pswitch_16
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setSelfFlip(I)V

    goto/16 :goto_1

    .line 1598
    :pswitch_17
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setBurstMode(I)V

    goto/16 :goto_1

    .line 1602
    :pswitch_18
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setContextualFilename(I)V

    goto/16 :goto_1

    .line 1614
    .end local v3           #index:I
    :cond_4
    return-void

    .line 1500
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_10
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_15
        :pswitch_14
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_17
        :pswitch_18
        :pswitch_18
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized synchronizeDim()V
    .locals 5

    .prologue
    .line 832
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v3, 0x39

    if-ge v0, v3, :cond_2

    .line 833
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 834
    .local v2, item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->getkeyFromCommandId(I)I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 835
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getDim()Z

    move-result v4

    if-eq v3, v4, :cond_0

    .line 836
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setDim(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 832
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 841
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    monitor-exit p0

    return-void
.end method
