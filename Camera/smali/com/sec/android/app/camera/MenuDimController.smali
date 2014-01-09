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

.field public static final HDR_SETTINGS:I = 0x2d

.field public static final IMAGE_VIEWER:I = 0x18

.field public static final ISO:I = 0x7

.field public static final METERING:I = 0xe

.field public static final NUM_OF_DIM_BUTTONS:I = 0x37

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
    .locals 2
    .parameter "activityContext"

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/16 v0, 0x37

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;

    .line 94
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/ArrayList;

    .line 96
    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mLowBattery:Z

    .line 97
    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckSceneModeSet:Z

    .line 98
    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mIsFlashDimmed:Z

    .line 99
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousFlashValue:I

    .line 100
    iput v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousMeteringValue:I

    .line 106
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 107
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
    .line 732
    const/4 v0, -0x1

    .line 734
    .local v0, key:I
    sparse-switch p1, :sswitch_data_0

    .line 870
    :goto_0
    return v0

    .line 736
    :sswitch_0
    const/4 v0, 0x0

    .line 737
    goto :goto_0

    .line 739
    :sswitch_1
    const/4 v0, 0x6

    .line 740
    goto :goto_0

    .line 742
    :sswitch_2
    const/4 v0, 0x5

    .line 743
    goto :goto_0

    .line 745
    :sswitch_3
    const/16 v0, 0xb

    .line 746
    goto :goto_0

    .line 748
    :sswitch_4
    const/16 v0, 0x11

    .line 749
    goto :goto_0

    .line 751
    :sswitch_5
    const/16 v0, 0xc

    .line 752
    goto :goto_0

    .line 754
    :sswitch_6
    const/16 v0, 0x14

    .line 755
    goto :goto_0

    .line 757
    :sswitch_7
    const/16 v0, 0x10

    .line 758
    goto :goto_0

    .line 760
    :sswitch_8
    const/16 v0, 0x8

    .line 761
    goto :goto_0

    .line 763
    :sswitch_9
    const/16 v0, 0x12

    .line 764
    goto :goto_0

    .line 766
    :sswitch_a
    const/4 v0, 0x7

    .line 767
    goto :goto_0

    .line 769
    :sswitch_b
    const/16 v0, 0xe

    .line 770
    goto :goto_0

    .line 772
    :sswitch_c
    const/4 v0, 0x2

    .line 773
    goto :goto_0

    .line 775
    :sswitch_d
    const/4 v0, 0x4

    .line 776
    goto :goto_0

    .line 778
    :sswitch_e
    const/16 v0, 0x15

    .line 779
    goto :goto_0

    .line 781
    :sswitch_f
    const/16 v0, 0x9

    .line 782
    goto :goto_0

    .line 784
    :sswitch_10
    const/16 v0, 0x17

    .line 785
    goto :goto_0

    .line 787
    :sswitch_11
    const/16 v0, 0x16

    .line 788
    goto :goto_0

    .line 790
    :sswitch_12
    const/16 v0, 0x18

    .line 791
    goto :goto_0

    .line 793
    :sswitch_13
    const/4 v0, 0x1

    .line 794
    goto :goto_0

    .line 796
    :sswitch_14
    const/16 v0, 0x1a

    .line 797
    goto :goto_0

    .line 799
    :sswitch_15
    const/16 v0, 0x19

    .line 800
    goto :goto_0

    .line 802
    :sswitch_16
    const/16 v0, 0x1b

    .line 803
    goto :goto_0

    .line 805
    :sswitch_17
    const/16 v0, 0x1e

    .line 806
    goto :goto_0

    .line 808
    :sswitch_18
    const/16 v0, 0x20

    .line 809
    goto :goto_0

    .line 811
    :sswitch_19
    const/16 v0, 0x1f

    .line 812
    goto :goto_0

    .line 814
    :sswitch_1a
    const/16 v0, 0x1d

    .line 815
    goto :goto_0

    .line 817
    :sswitch_1b
    const/16 v0, 0x22

    .line 818
    goto :goto_0

    .line 820
    :sswitch_1c
    const/16 v0, 0x23

    .line 821
    goto :goto_0

    .line 823
    :sswitch_1d
    const/16 v0, 0x2c

    .line 824
    goto :goto_0

    .line 826
    :sswitch_1e
    const/16 v0, 0x25

    .line 827
    goto :goto_0

    .line 829
    :sswitch_1f
    const/16 v0, 0x26

    .line 830
    goto :goto_0

    .line 832
    :sswitch_20
    const/16 v0, 0x2a

    .line 833
    goto :goto_0

    .line 835
    :sswitch_21
    const/16 v0, 0x29

    .line 836
    goto :goto_0

    .line 838
    :sswitch_22
    const/16 v0, 0x28

    .line 839
    goto :goto_0

    .line 841
    :sswitch_23
    const/16 v0, 0x2d

    .line 842
    goto :goto_0

    .line 845
    :sswitch_24
    const/16 v0, 0x2e

    .line 847
    goto :goto_0

    .line 849
    :sswitch_25
    const/16 v0, 0x30

    .line 850
    goto :goto_0

    .line 852
    :sswitch_26
    const/16 v0, 0x31

    .line 853
    goto :goto_0

    .line 855
    :sswitch_27
    const/16 v0, 0x32

    .line 856
    goto :goto_0

    .line 858
    :sswitch_28
    const/16 v0, 0x33

    .line 859
    goto :goto_0

    .line 861
    :sswitch_29
    const/16 v0, 0x35

    .line 862
    goto :goto_0

    .line 864
    :sswitch_2a
    const/16 v0, 0x36

    .line 865
    goto :goto_0

    .line 734
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0x10 -> :sswitch_25
        0x11 -> :sswitch_e
        0x12 -> :sswitch_f
        0x13 -> :sswitch_10
        0x16 -> :sswitch_11
        0x1b -> :sswitch_2a
        0x1d -> :sswitch_12
        0x23 -> :sswitch_29
        0x24 -> :sswitch_13
        0x33 -> :sswitch_22
        0x35 -> :sswitch_21
        0x36 -> :sswitch_20
        0x3c -> :sswitch_23
        0x3f -> :sswitch_26
        0x40 -> :sswitch_27
        0xbb8 -> :sswitch_15
        0xbb9 -> :sswitch_16
        0xbbb -> :sswitch_1e
        0xbbc -> :sswitch_17
        0xbbf -> :sswitch_18
        0xbc0 -> :sswitch_19
        0xbc1 -> :sswitch_1a
        0xbc2 -> :sswitch_1f
        0xbc9 -> :sswitch_1c
        0xbcd -> :sswitch_1b
        0xbce -> :sswitch_14
        0xbd6 -> :sswitch_1d
        0xbd7 -> :sswitch_24
        0xbdb -> :sswitch_28
    .end sparse-switch
.end method

.method private merge([Z)V
    .locals 4
    .parameter "array"

    .prologue
    .line 1522
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x37

    if-ge v0, v1, :cond_0

    .line 1523
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aget-boolean v2, v2, v0

    aget-boolean v3, p1, v0

    or-int/2addr v2, v3

    aput-boolean v2, v1, v0

    .line 1522
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1525
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addButton(Lcom/sec/android/app/camera/glwidget/TwGLItem;)V
    .locals 1
    .parameter "button"

    .prologue
    .line 724
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    monitor-exit p0

    return-void

    .line 724
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 711
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 712
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 713
    monitor-exit p0

    return-void

    .line 711
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

    .line 716
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    const/16 v1, 0x37

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 717
    return-void
.end method

.method public getIsFlashDimmed()Z
    .locals 1

    .prologue
    .line 1503
    iget-boolean v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mIsFlashDimmed:Z

    return v0
.end method

.method public getLowBatteryStatus()Z
    .locals 1

    .prologue
    .line 1494
    iget-boolean v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mLowBattery:Z

    return v0
.end method

.method public processDim()V
    .locals 4

    .prologue
    .line 1507
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x37

    if-ge v0, v2, :cond_0

    .line 1508
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/camera/MenuDimController;->setDim(IZ)V

    .line 1507
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1511
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v3

    .line 1512
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1513
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/MenuDimController$DimArray;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1514
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/MenuDimController$DimArray;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getArray()[Z

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/MenuDimController;->merge([Z)V

    goto :goto_1

    .line 1516
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

    .line 1518
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 1519
    return-void
.end method

.method public declared-synchronized refreshButtonDim(II)V
    .locals 8
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 910
    monitor-enter p0

    :try_start_0
    const-string v3, "MenuDimController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshButtonDim: menuid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " modeid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    .line 916
    .local v0, cs:Lcom/sec/android/app/camera/CameraSettings;
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuDimController$DimArray;

    .line 918
    .local v1, dimArray:Lcom/sec/android/app/camera/MenuDimController$DimArray;
    if-eqz v1, :cond_0

    .line 919
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->restoreUserSettingValues(Z)V

    .line 920
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getMenuId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    const-string v3, "MenuDimController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoring user setting values. CameraResolutionChanged = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolutionChanged()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " CamcorderResolutionChanged = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolutionChanged()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    :cond_0
    new-instance v1, Lcom/sec/android/app/camera/MenuDimController$DimArray;

    .end local v1           #dimArray:Lcom/sec/android/app/camera/MenuDimController$DimArray;
    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/MenuDimController$DimArray;-><init>(Lcom/sec/android/app/camera/MenuDimController;I)V

    .line 926
    .restart local v1       #dimArray:Lcom/sec/android/app/camera/MenuDimController$DimArray;
    sparse-switch p1, :sswitch_data_0

    .line 1464
    :cond_1
    :goto_0
    :sswitch_0
    iget-boolean v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mLowBattery:Z

    if-eqz v3, :cond_2

    .line 1465
    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1466
    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1467
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 1468
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderFlashMode(I)V

    .line 1471
    :cond_2
    iget-boolean v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mIsFlashDimmed:Z

    if-eqz v3, :cond_3

    .line 1472
    const-string v3, "MenuDimController"

    const-string v4, "set flash dim by external"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_2

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1474
    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1475
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 1476
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderFlashMode(I)V

    .line 1479
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getAttachEmailMode()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1480
    :cond_4
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x1b

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1481
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x1b

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1484
    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1486
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuDimController;->processDim()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1487
    monitor-exit p0

    return-void

    .line 928
    :sswitch_1
    :try_start_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 929
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x28

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 930
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x28

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 931
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setSelfFlip(I)V

    .line 933
    :cond_6
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 935
    :pswitch_1
    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 936
    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_5

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 937
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_6

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 940
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 941
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 910
    .end local v0           #cs:Lcom/sec/android/app/camera/CameraSettings;
    .end local v1           #dimArray:Lcom/sec/android/app/camera/MenuDimController$DimArray;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 945
    .restart local v0       #cs:Lcom/sec/android/app/camera/CameraSettings;
    .restart local v1       #dimArray:Lcom/sec/android/app/camera/MenuDimController$DimArray;
    :pswitch_2
    const/16 v3, 0xe

    :try_start_2
    new-array v3, v3, [I

    fill-array-data v3, :array_7

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 947
    const/16 v3, 0xe

    new-array v3, v3, [I

    fill-array-data v3, :array_8

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 949
    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_9

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 953
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 954
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 955
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    .line 956
    const/16 v3, 0x11

    if-ne p2, v3, :cond_7

    .line 957
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_0

    .line 959
    :cond_7
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_0

    .line 962
    :pswitch_3
    const/16 v3, 0xd

    new-array v3, v3, [I

    fill-array-data v3, :array_a

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 964
    const/16 v3, 0xd

    new-array v3, v3, [I

    fill-array-data v3, :array_b

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 966
    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_c

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 969
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 972
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    goto/16 :goto_0

    .line 975
    :pswitch_4
    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_d

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 977
    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_e

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 979
    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_f

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 981
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 982
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 985
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAutoContrast(I)V

    goto/16 :goto_0

    .line 984
    :cond_8
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_1

    .line 988
    :pswitch_5
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_10

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 989
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_11

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 990
    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_12

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 991
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 992
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 994
    :cond_9
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 997
    :pswitch_6
    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_13

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 999
    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_14

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1001
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_15

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1002
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1003
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1005
    :cond_a
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1008
    :pswitch_7
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_16

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1009
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_17

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1010
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_18

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 1013
    :pswitch_8
    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_19

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1015
    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_1a

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1017
    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_1b

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1022
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1025
    :pswitch_9
    const/16 v3, 0x9

    new-array v3, v3, [I

    fill-array-data v3, :array_1c

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1027
    const/16 v3, 0x9

    new-array v3, v3, [I

    fill-array-data v3, :array_1d

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1029
    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_1e

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1031
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1032
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1034
    :cond_b
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1037
    :pswitch_a
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_1f

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1039
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_20

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1041
    const/16 v3, 0x9

    new-array v3, v3, [I

    fill-array-data v3, :array_21

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1043
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1046
    :pswitch_b
    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_22

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1048
    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_23

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1050
    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_24

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1054
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1065
    :pswitch_c
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_25

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1068
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_26

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1072
    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_27

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1077
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1080
    :pswitch_d
    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_28

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1081
    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_29

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1082
    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_2a

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 1085
    :pswitch_e
    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_2b

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1086
    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_2c

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1087
    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_2d

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1088
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1091
    :pswitch_f
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x31

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1092
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x31

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1093
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x31

    aput v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 1101
    :sswitch_2
    if-eqz p2, :cond_d

    .line 1103
    iget-boolean v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckSceneModeSet:Z

    if-nez v3, :cond_c

    .line 1104
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckSceneModeSet:Z

    .line 1105
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFlashMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousFlashValue:I

    .line 1106
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraExposureMeter()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousMeteringValue:I

    .line 1109
    :cond_c
    packed-switch p2, :pswitch_data_1

    .line 1215
    :goto_2
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAntiShake(I)V

    .line 1216
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAutoContrast(I)V

    goto/16 :goto_0

    .line 1111
    :pswitch_10
    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_2e

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1112
    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_2f

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1113
    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_30

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1115
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 1120
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto :goto_2

    .line 1123
    :pswitch_11
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_31

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1124
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_32

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1125
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_33

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1126
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    .line 1127
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto :goto_2

    .line 1130
    :pswitch_12
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_34

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1131
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_35

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1132
    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_36

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1134
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto :goto_2

    .line 1137
    :pswitch_13
    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_37

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1138
    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_38

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1139
    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_39

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1141
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraISO(I)V

    .line 1142
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_2

    .line 1145
    :pswitch_14
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_3a

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1146
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_3b

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1147
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_3c

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1149
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraISO(I)V

    .line 1150
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureValue(I)V

    .line 1151
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_2

    .line 1154
    :pswitch_15
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_3d

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1155
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_3e

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1156
    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_3f

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1157
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 1158
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_2

    .line 1161
    :pswitch_16
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_40

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1162
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_41

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1163
    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_42

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1164
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 1165
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_2

    .line 1168
    :pswitch_17
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_43

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1169
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_44

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1170
    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_45

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1171
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_2

    .line 1174
    :pswitch_18
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_46

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1175
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_47

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1176
    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_48

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1178
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_2

    .line 1181
    :pswitch_19
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_49

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1182
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_4a

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1183
    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_4b

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1184
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_2

    .line 1187
    :pswitch_1a
    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_4c

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1188
    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_4d

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1189
    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_4e

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1193
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 1194
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_2

    .line 1197
    :pswitch_1b
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_4f

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1198
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_50

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1199
    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_51

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1200
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 1201
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_2

    .line 1204
    :pswitch_1c
    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_52

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1205
    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_53

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1206
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_54

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1208
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_2

    .line 1219
    :cond_d
    iget-boolean v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckSceneModeSet:Z

    if-eqz v3, :cond_1

    .line 1220
    iget v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousFlashValue:I

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 1221
    iget v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousMeteringValue:I

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    .line 1222
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckSceneModeSet:Z

    goto/16 :goto_0

    .line 1227
    :sswitch_3
    if-eqz p2, :cond_1

    .line 1228
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x2

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1229
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x2

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1230
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAntiShake(I)V

    goto/16 :goto_0

    .line 1243
    :sswitch_4
    if-ne p2, v6, :cond_1

    .line 1244
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x10

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1245
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x10

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1246
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x10

    aput v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 1250
    :sswitch_5
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1251
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x28

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1252
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x28

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1253
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setSelfFlip(I)V

    .line 1255
    :cond_e
    if-ne p2, v6, :cond_13

    .line 1256
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x2c

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1257
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x2c

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1258
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x2c

    aput v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1259
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1260
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x1e

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1261
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x1e

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1263
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 1264
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    .line 1268
    .local v2, resolutionId:I
    :goto_3
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    .line 1300
    .end local v2           #resolutionId:I
    :cond_f
    :goto_4
    if-ne p2, v7, :cond_15

    .line 1301
    const/4 v3, 0x3

    new-array v3, v3, [I

    fill-array-data v3, :array_55

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1302
    const/4 v3, 0x3

    new-array v3, v3, [I

    fill-array-data v3, :array_56

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1303
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    .line 1304
    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    .line 1305
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1306
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x1e

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1307
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x1e

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1308
    const/16 v3, 0x13

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_0

    .line 1266
    :cond_10
    const/16 v2, 0x13

    .restart local v2       #resolutionId:I
    goto :goto_3

    .line 1270
    .end local v2           #resolutionId:I
    :cond_11
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x1e

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1271
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x1e

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1273
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 1274
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    .line 1278
    .restart local v2       #resolutionId:I
    :goto_5
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_4

    .line 1276
    .end local v2           #resolutionId:I
    :cond_12
    const/16 v2, 0x13

    .restart local v2       #resolutionId:I
    goto :goto_5

    .line 1280
    .end local v2           #resolutionId:I
    :cond_13
    const/4 v3, 0x4

    if-eq p2, v3, :cond_f

    .line 1282
    if-nez p2, :cond_f

    .line 1283
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1285
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1286
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x1e

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1287
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x1e

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1288
    const/16 v3, 0x13

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_4

    .line 1292
    :cond_14
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1293
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x1e

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1294
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x1e

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1295
    const/16 v3, 0x13

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_4

    .line 1310
    :cond_15
    const/4 v3, 0x3

    if-ne p2, v3, :cond_1

    .line 1311
    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_57

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1312
    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_58

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1313
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    .line 1314
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1315
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x1e

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1316
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x1e

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1317
    const/16 v3, 0x13

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_0

    .line 1323
    :sswitch_6
    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1324
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x16

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1325
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x16

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_0

    .line 1329
    :sswitch_7
    if-ne p2, v6, :cond_18

    .line 1330
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v3

    if-nez v3, :cond_16

    .line 1331
    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_59

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1332
    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_5a

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1333
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x31

    aput v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 1335
    :cond_16
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1336
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_5b

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1337
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_5c

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1338
    const/16 v3, 0x13

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_0

    .line 1340
    :cond_17
    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_5d

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1341
    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_5e

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_0

    .line 1344
    :cond_18
    if-ne p2, v7, :cond_19

    .line 1345
    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_5f

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1347
    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_60

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1349
    const/4 v3, 0x3

    new-array v3, v3, [I

    fill-array-data v3, :array_61

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 1350
    :cond_19
    const/4 v3, 0x3

    if-ne p2, v3, :cond_1a

    .line 1351
    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_62

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1352
    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_63

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1353
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x1b

    aput v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 1355
    :cond_1a
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x1c

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1356
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x1c

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_0

    .line 1360
    :sswitch_8
    if-nez p2, :cond_1

    .line 1361
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x18

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1362
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x18

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_0

    .line 1366
    :sswitch_9
    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1367
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x23

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1368
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x23

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_0

    .line 1372
    :sswitch_a
    const/16 v3, 0xd

    if-ne p2, v3, :cond_1b

    .line 1378
    :cond_1b
    const/16 v3, 0xd

    if-eq p2, v3, :cond_1

    const/16 v3, 0xe

    if-eq p2, v3, :cond_1

    .line 1379
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x2c

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1380
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x2c

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1381
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x2c

    aput v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 1385
    :sswitch_b
    if-nez p2, :cond_1c

    .line 1386
    const/16 v3, 0x29

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->set(IZ)V

    goto/16 :goto_0

    .line 1388
    :cond_1c
    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->set(IZ)V

    goto/16 :goto_0

    .line 1392
    :sswitch_c
    if-ne p2, v6, :cond_1

    .line 1399
    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_64

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1401
    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_65

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1404
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_66

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1406
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1411
    :sswitch_d
    if-ne p2, v6, :cond_1

    .line 1413
    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_67

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1416
    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_68

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 1428
    :sswitch_e
    if-ne p2, v6, :cond_1

    .line 1430
    const/4 v3, 0x3

    new-array v3, v3, [I

    fill-array-data v3, :array_69

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1433
    const/4 v3, 0x3

    new-array v3, v3, [I

    fill-array-data v3, :array_6a

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 1441
    :sswitch_f
    if-ne p2, v6, :cond_1

    .line 1442
    const/16 v3, 0x13

    new-array v3, v3, [I

    fill-array-data v3, :array_6b

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1444
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_6c

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1445
    const/4 v3, 0x3

    new-array v3, v3, [I

    fill-array-data v3, :array_6d

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1446
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1447
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 1450
    :goto_6
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 1451
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    .line 1452
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    .line 1454
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFlashMode()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/CameraEngine;->doChangeParameterSync(II)V

    .line 1455
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/CameraEngine;->doChangeParameterSync(II)V

    .line 1456
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/CameraEngine;->doChangeParameterSync(II)V

    goto/16 :goto_0

    .line 1449
    :cond_1d
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    .line 926
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
        0x24 -> :sswitch_d
        0x27 -> :sswitch_b
        0x2d -> :sswitch_c
        0x2f -> :sswitch_f
        0x65 -> :sswitch_5
        0x68 -> :sswitch_a
        0x75 -> :sswitch_9
        0x79 -> :sswitch_e
    .end sparse-switch

    .line 1465
    :array_0
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
    .end array-data

    .line 1466
    :array_1
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
    .end array-data

    .line 1473
    :array_2
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
    .end array-data

    .line 1474
    :array_3
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
    .end array-data

    .line 933
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_5
        :pswitch_2
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_2
    .end packed-switch

    .line 935
    :array_4
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 936
    :array_5
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 937
    :array_6
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 945
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
        0x2dt 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 947
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
        0x2dt 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 949
    :array_9
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 962
    :array_a
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
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 964
    :array_b
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
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 966
    :array_c
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 975
    :array_d
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 977
    :array_e
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 979
    :array_f
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 988
    :array_10
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 989
    :array_11
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 990
    :array_12
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 997
    :array_13
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 999
    :array_14
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1001
    :array_15
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1008
    :array_16
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1009
    :array_17
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1010
    :array_18
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1013
    :array_19
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
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1015
    :array_1a
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
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1017
    :array_1b
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1025
    :array_1c
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1027
    :array_1d
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1029
    :array_1e
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1037
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
        0x2t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1039
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
        0x2t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1041
    :array_21
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1046
    :array_22
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1048
    :array_23
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1050
    :array_24
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1065
    :array_25
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

    .line 1068
    :array_26
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

    .line 1072
    :array_27
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

    .line 1080
    :array_28
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1081
    :array_29
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1082
    :array_2a
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1085
    :array_2b
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1086
    :array_2c
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1087
    :array_2d
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1109
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_10
        :pswitch_11
        :pswitch_18
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
    .end packed-switch

    .line 1111
    :array_2e
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
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    .line 1112
    :array_2f
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
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    .line 1113
    :array_30
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    .line 1123
    :array_31
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
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    .line 1124
    :array_32
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
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    .line 1125
    :array_33
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    .line 1130
    :array_34
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
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    .line 1131
    :array_35
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
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    .line 1132
    :array_36
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    .line 1137
    :array_37
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
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    .line 1138
    :array_38
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
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    .line 1139
    :array_39
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    .line 1145
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
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    .line 1146
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
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    .line 1147
    :array_3c
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    .line 1154
    :array_3d
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
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    .line 1155
    :array_3e
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
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    .line 1156
    :array_3f
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    .line 1161
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
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    .line 1162
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
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    .line 1163
    :array_42
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    .line 1168
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
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    .line 1169
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
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    .line 1170
    :array_45
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    .line 1174
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
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    .line 1175
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
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    .line 1176
    :array_48
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    .line 1181
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
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    .line 1182
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
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    .line 1183
    :array_4b
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    .line 1187
    :array_4c
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
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    .line 1188
    :array_4d
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
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    .line 1189
    :array_4e
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    .line 1197
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
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    .line 1198
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
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    .line 1199
    :array_51
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    .line 1204
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
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    .line 1205
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
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    .line 1206
    :array_54
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    .line 1301
    :array_55
    .array-data 0x4
        0x2ct 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
    .end array-data

    .line 1302
    :array_56
    .array-data 0x4
        0x2ct 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
    .end array-data

    .line 1311
    :array_57
    .array-data 0x4
        0x2ct 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
    .end array-data

    .line 1312
    :array_58
    .array-data 0x4
        0x2ct 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
    .end array-data

    .line 1331
    :array_59
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1332
    :array_5a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1336
    :array_5b
    .array-data 0x4
        0x1et 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 1337
    :array_5c
    .array-data 0x4
        0x1et 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 1340
    :array_5d
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 1341
    :array_5e
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 1345
    :array_5f
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 1347
    :array_60
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 1349
    :array_61
    .array-data 0x4
        0x1bt 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
    .end array-data

    .line 1351
    :array_62
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 1352
    :array_63
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 1399
    :array_64
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
    .end array-data

    .line 1401
    :array_65
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
    .end array-data

    .line 1404
    :array_66
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 1413
    :array_67
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data

    .line 1416
    :array_68
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data

    .line 1430
    :array_69
    .array-data 0x4
        0x25t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
    .end array-data

    .line 1433
    :array_6a
    .array-data 0x4
        0x25t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
    .end array-data

    .line 1442
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
        0x2dt 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
    .end array-data

    .line 1444
    :array_6c
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
    .end array-data

    .line 1445
    :array_6d
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public declared-synchronized removeButton(Lcom/sec/android/app/camera/glwidget/TwGLItem;)V
    .locals 1
    .parameter "button"

    .prologue
    .line 728
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    monitor-exit p0

    return-void

    .line 728
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetDim()V
    .locals 2

    .prologue
    .line 874
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 875
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 877
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x37

    if-ge v0, v1, :cond_0

    .line 878
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/MenuDimController;->setDim(IZ)V

    .line 877
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 880
    :cond_0
    return-void
.end method

.method public restoreUserSettingValues()V
    .locals 3

    .prologue
    .line 889
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 890
    .local v0, itor:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/MenuDimController$DimArray;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 891
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuDimController$DimArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->restoreUserSettingValues(Z)V

    goto :goto_0

    .line 893
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 894
    return-void
.end method

.method declared-synchronized setDim(IZ)V
    .locals 1
    .parameter "key"
    .parameter "dimmed"

    .prologue
    .line 883
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 884
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aput-boolean p2, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 886
    :cond_0
    monitor-exit p0

    return-void

    .line 883
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

    .line 720
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    const/16 v1, 0x37

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 721
    return-void
.end method

.method public setIsFlashDimmed(Z)V
    .locals 0
    .parameter "isflashDimmed"

    .prologue
    .line 1499
    iput-boolean p1, p0, Lcom/sec/android/app/camera/MenuDimController;->mIsFlashDimmed:Z

    .line 1500
    return-void
.end method

.method public setLowBatteryStatus(Z)V
    .locals 0
    .parameter "lowBattery"

    .prologue
    .line 1490
    iput-boolean p1, p0, Lcom/sec/android/app/camera/MenuDimController;->mLowBattery:Z

    .line 1491
    return-void
.end method

.method public varargs setSettingDefault([I)V
    .locals 10
    .parameter "indices"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1529
    iget-object v6, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    .line 1533
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

    .line 1534
    .local v3, index:I
    packed-switch v3, :pswitch_data_0

    .line 1533
    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1536
    :pswitch_1
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setSceneMode(I)V

    goto :goto_1

    .line 1540
    :pswitch_2
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto :goto_1

    .line 1544
    :pswitch_3
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraISO(I)V

    goto :goto_1

    .line 1550
    :pswitch_4
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraFocusMode()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_1

    .line 1553
    :pswitch_5
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    goto :goto_1

    .line 1556
    :pswitch_6
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureValue(I)V

    goto :goto_1

    .line 1559
    :pswitch_7
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAutoContrast(I)V

    goto :goto_1

    .line 1562
    :pswitch_8
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    goto :goto_1

    .line 1565
    :pswitch_9
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    goto :goto_1

    .line 1568
    :pswitch_a
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setTimer(I)V

    goto :goto_1

    .line 1571
    :pswitch_b
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setGuideline(I)V

    goto :goto_1

    .line 1574
    :pswitch_c
    invoke-virtual {v1, v9}, Lcom/sec/android/app/camera/CameraSettings;->setCameraReview(I)V

    goto :goto_1

    .line 1577
    :pswitch_d
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMode()Z

    move-result v6

    if-ne v6, v9, :cond_2

    .line 1578
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v6

    if-ne v6, v9, :cond_0

    .line 1579
    invoke-virtual {v1, v9}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderRecordingMode(I)V

    goto :goto_1

    .line 1580
    :cond_0
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getAttachEmailMode()Z

    move-result v6

    if-ne v6, v9, :cond_1

    .line 1581
    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderRecordingMode(I)V

    goto :goto_1

    .line 1583
    :cond_1
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderRecordingMode(I)V

    goto :goto_1

    .line 1586
    :cond_2
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderRecordingMode(I)V

    goto :goto_1

    .line 1591
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

    .line 1592
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v5

    .line 1598
    .local v5, resolutionId:I
    :goto_2
    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto :goto_1

    .line 1595
    .end local v5           #resolutionId:I
    :cond_3
    const/16 v5, 0x13

    .restart local v5       #resolutionId:I
    goto :goto_2

    .line 1601
    .end local v5           #resolutionId:I
    :pswitch_f
    invoke-virtual {v1, v9}, Lcom/sec/android/app/camera/CameraSettings;->setCameraReview(I)V

    goto/16 :goto_1

    .line 1604
    :pswitch_10
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAntiShake(I)V

    goto/16 :goto_1

    .line 1607
    :pswitch_11
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderAntishake()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    goto/16 :goto_1

    .line 1611
    :pswitch_12
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderFlashMode(I)V

    goto/16 :goto_1

    .line 1615
    :pswitch_13
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderZoomValue(I)V

    goto/16 :goto_1

    .line 1618
    :pswitch_14
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    goto/16 :goto_1

    .line 1621
    :pswitch_15
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderEffect(I)V

    goto/16 :goto_1

    .line 1624
    :pswitch_16
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setSelfFlip(I)V

    goto/16 :goto_1

    .line 1627
    :pswitch_17
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setHDR(I)V

    goto/16 :goto_1

    .line 1631
    :pswitch_18
    sget v6, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_SPEED:I

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderSlowMotion(I)V

    goto/16 :goto_1

    .line 1635
    :pswitch_19
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setBurstMode(I)V

    goto/16 :goto_1

    .line 1639
    :pswitch_1a
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setContextualFilename(I)V

    goto/16 :goto_1

    .line 1643
    :pswitch_1b
    sget v6, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMCORDER_TIMELAPSE:I

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderTimeLapse(I)V

    goto/16 :goto_1

    .line 1651
    .end local v3           #index:I
    :cond_4
    return-void

    .line 1534
    nop

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
        :pswitch_17
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_1a
        :pswitch_1a
        :pswitch_1b
    .end packed-switch
.end method

.method public declared-synchronized synchronizeDim()V
    .locals 5

    .prologue
    .line 897
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v3, 0x37

    if-ge v0, v3, :cond_2

    .line 898
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

    .line 899
    .local v2, item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->getkeyFromCommandId(I)I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 900
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getDim()Z

    move-result v4

    if-eq v3, v4, :cond_0

    .line 901
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setDim(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 897
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

    .line 906
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    monitor-exit p0

    return-void
.end method
