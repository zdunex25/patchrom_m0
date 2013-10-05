.class Lcom/android/camera/CameraEngine$ShootingModeManager;
.super Ljava/lang/Object;
.source "CameraEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShootingModeManager"
.end annotation


# instance fields
.field private mActionShotStarted:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContinuousFileSequence:I

.field private mCurrentShootingMode:I

.field public mFlashMode:I

.field private mLocation:Landroid/location/Location;

.field private mPanoramaCapturing:Z

.field public mStorage:I

.field public mWhiteBalance:I

.field final synthetic this$0:Lcom/android/camera/CameraEngine;


# direct methods
.method private constructor <init>(Lcom/android/camera/CameraEngine;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 3148
    iput-object p1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3149
    iput-boolean v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mActionShotStarted:Z

    .line 3150
    iput-boolean v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mPanoramaCapturing:Z

    .line 3151
    iput-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    .line 3152
    iput-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 3153
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mContinuousFileSequence:I

    .line 3154
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v0

    iput v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mCurrentShootingMode:I

    .line 3155
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getStorage()I

    move-result v0

    iput v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mStorage:I

    .line 3156
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getWhiteBalance()I

    move-result v0

    iput v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mWhiteBalance:I

    .line 3157
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCameraFlashMode()I

    move-result v0

    iput v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mFlashMode:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/CameraEngine;Lcom/android/camera/CameraEngine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3148
    invoke-direct {p0, p1}, Lcom/android/camera/CameraEngine$ShootingModeManager;-><init>(Lcom/android/camera/CameraEngine;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/CameraEngine$ShootingModeManager;[BLandroid/location/Location;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 3148
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CameraEngine$ShootingModeManager;->storeImage([BLandroid/location/Location;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2802(Lcom/android/camera/CameraEngine$ShootingModeManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3148
    iput p1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mContinuousFileSequence:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/camera/CameraEngine$ShootingModeManager;Landroid/content/ContentResolver;)Landroid/content/ContentResolver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3148
    iput-object p1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mContentResolver:Landroid/content/ContentResolver;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/camera/CameraEngine$ShootingModeManager;[BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 3148
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/CameraEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    return-void
.end method

.method private getHDRFileName()Ljava/lang/String;
    .locals 8

    .prologue
    .line 3550
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3551
    .local v1, dateTaken:J
    iget-object v5, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iput-wide v1, v5, Lcom/android/camera/CameraEngine;->mDateTaken:J

    .line 3553
    iget-object v5, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/android/camera/CameraEngine;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 3555
    .local v0, currentAddress:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    #getter for: Lcom/android/camera/CameraEngine;->mNumOfSavedImageInHDR:I
    invoke-static {v5}, Lcom/android/camera/CameraEngine;->access$1900(Lcom/android/camera/CameraEngine;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 3557
    iget-object v5, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iput-wide v1, v5, Lcom/android/camera/CameraEngine;->mDateTakenForHDR:J

    .line 3558
    invoke-static {v1, v2, v0}, Lcom/android/camera/ImageSavingUtils;->createName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, name:Ljava/lang/String;
    move-object v4, v3

    .line 3566
    .end local v3           #name:Ljava/lang/String;
    .local v4, name:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 3560
    .end local v4           #name:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    #getter for: Lcom/android/camera/CameraEngine;->mNumOfSavedImageInHDR:I
    invoke-static {v5}, Lcom/android/camera/CameraEngine;->access$1900(Lcom/android/camera/CameraEngine;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 3562
    iget-object v5, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-wide v5, v5, Lcom/android/camera/CameraEngine;->mDateTakenForHDR:J

    const-string v7, "HDR"

    invoke-static {v5, v6, v0, v7}, Lcom/android/camera/ImageSavingUtils;->createName(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #name:Ljava/lang/String;
    move-object v4, v3

    .line 3563
    .end local v3           #name:Ljava/lang/String;
    .restart local v4       #name:Ljava/lang/String;
    goto :goto_0

    .line 3565
    .end local v4           #name:Ljava/lang/String;
    :cond_1
    invoke-static {v1, v2, v0}, Lcom/android/camera/ImageSavingUtils;->createName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #name:Ljava/lang/String;
    move-object v4, v3

    .line 3566
    .end local v3           #name:Ljava/lang/String;
    .restart local v4       #name:Ljava/lang/String;
    goto :goto_0
.end method

.method private final startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V
    .locals 3
    .parameter "jpegData"
    .parameter "camera"
    .parameter "location"

    .prologue
    .line 3238
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/camera/CameraEngine$ShootingModeManager$1;

    invoke-direct {v2, p0, p1, p3}, Lcom/android/camera/CameraEngine$ShootingModeManager$1;-><init>(Lcom/android/camera/CameraEngine$ShootingModeManager;[BLandroid/location/Location;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #setter for: Lcom/android/camera/CameraEngine;->mPictureSavingThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/android/camera/CameraEngine;->access$1602(Lcom/android/camera/CameraEngine;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 3251
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    #getter for: Lcom/android/camera/CameraEngine;->mPictureSavingThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/android/camera/CameraEngine;->access$1600(Lcom/android/camera/CameraEngine;)Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "pictureSavingThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 3252
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    #getter for: Lcom/android/camera/CameraEngine;->mPictureSavingThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/android/camera/CameraEngine;->access$1600(Lcom/android/camera/CameraEngine;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3253
    return-void
.end method

.method private declared-synchronized storeImage([BLandroid/location/Location;)Z
    .locals 37
    .parameter "data"
    .parameter "loc"

    .prologue
    .line 3265
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mLastCaptureData:Lcom/android/camera/CaptureData;

    if-eqz v2, :cond_0

    .line 3266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mLastCaptureData:Lcom/android/camera/CaptureData;

    invoke-virtual {v2}, Lcom/android/camera/CaptureData;->clear()V

    .line 3267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    const/4 v7, 0x0

    iput-object v7, v2, Lcom/android/camera/CameraEngine;->mLastCaptureData:Lcom/android/camera/CaptureData;

    .line 3270
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/4 v7, 0x2

    if-ne v2, v7, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x11

    if-ne v2, v7, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x18

    if-ne v2, v7, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getShootingMode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/16 v7, 0x19

    if-eq v2, v7, :cond_2

    .line 3275
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    new-instance v7, Lcom/android/camera/CaptureData;

    invoke-direct {v7}, Lcom/android/camera/CaptureData;-><init>()V

    iput-object v7, v2, Lcom/android/camera/CameraEngine;->mLastCaptureData:Lcom/android/camera/CaptureData;

    .line 3276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mLastCaptureData:Lcom/android/camera/CaptureData;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v7, v7, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/android/camera/CameraSettings;->getCameraResolution()I

    move-result v7

    invoke-static {v7}, Lcom/android/camera/CameraResolution;->getIntWidth(I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v8, v8, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/android/camera/CameraSettings;->getCameraResolution()I

    move-result v8

    invoke-static {v8}, Lcom/android/camera/CameraResolution;->getIntHeight(I)I

    move-result v8

    mul-int/2addr v7, v8

    int-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-int v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget v8, v8, Lcom/android/camera/CameraEngine;->mOriginalViewFinderWidth:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget v9, v9, Lcom/android/camera/CameraEngine;->mOriginalViewFinderHeight:I

    mul-int/2addr v8, v9

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v8, v8

    invoke-static {v7, v8}, Lcom/sec/android/glview/TwGLUtil;->calculateSampleSize(II)I

    move-result v7

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v7}, Lcom/android/camera/CaptureData;->setCaptureData([BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    .line 3287
    :cond_2
    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getCameraReview()I

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0xa

    if-eq v2, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/4 v7, 0x2

    if-eq v2, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0xe

    if-eq v2, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/4 v7, 0x1

    if-eq v2, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x11

    if-eq v2, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x19

    if-eq v2, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x18

    if-eq v2, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x12

    if-eq v2, v7, :cond_3

    .line 3297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mLastCaptureData:Lcom/android/camera/CaptureData;

    if-eqz v2, :cond_3

    .line 3301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v2, Lcom/android/camera/Camera;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v7, v7, Lcom/android/camera/CameraEngine;->mLastCaptureData:Lcom/android/camera/CaptureData;

    invoke-virtual {v7}, Lcom/android/camera/CaptureData;->getCaptureBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/camera/Camera;->startPostCaptureAnimation(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3305
    :cond_3
    const/4 v15, 0x1

    .line 3307
    .local v15, bSuccess:Z
    :try_start_3
    new-instance v16, Ljava/util/GregorianCalendar;

    invoke-direct/range {v16 .. v16}, Ljava/util/GregorianCalendar;-><init>()V

    .line 3308
    .local v16, calendar:Ljava/util/GregorianCalendar;
    new-instance v34, Landroid/text/format/Time;

    invoke-direct/range {v34 .. v34}, Landroid/text/format/Time;-><init>()V

    .line 3309
    .local v34, time:Landroid/text/format/Time;
    move-object/from16 v0, v34

    iget-object v2, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v35

    .line 3310
    .local v35, timezone:Ljava/util/TimeZone;
    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 3311
    invoke-virtual/range {v16 .. v16}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v5

    .line 3313
    .local v5, dateTaken:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iput-wide v5, v2, Lcom/android/camera/CameraEngine;->mDateTaken:J

    .line 3315
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/android/camera/CameraEngine;->getAddress()Ljava/lang/String;

    move-result-object v17

    .line 3317
    .local v17, currentAddress:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mCurrentShootingMode:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_5

    .line 3318
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mContinuousFileSequence:I

    add-int/lit8 v7, v2, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mContinuousFileSequence:I

    move-object/from16 v0, v17

    invoke-static {v5, v6, v0, v2}, Lcom/android/camera/ImageSavingUtils;->createName(JLjava/lang/String;I)Ljava/lang/String;

    move-result-object v30

    .line 3339
    .local v30, name:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    move-object/from16 v0, v30

    #setter for: Lcom/android/camera/CameraEngine;->mLastCapturedTitle:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/camera/CameraEngine;->access$2002(Lcom/android/camera/CameraEngine;Ljava/lang/String;)Ljava/lang/String;

    .line 3342
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mCurrentShootingMode:I

    const/16 v7, 0xb

    if-ne v2, v7, :cond_c

    .line 3343
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ".gif"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3349
    .local v4, filename:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0xf

    if-ne v2, v7, :cond_e

    .line 3350
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mStorage:I

    if-nez v2, :cond_d

    .line 3351
    sget-object v3, Lcom/android/camera/ImageSavingUtils;->CAMERA_IMAGE_SNS_MODE_PHONE:Ljava/lang/String;

    .line 3370
    .local v3, directory:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #setter for: Lcom/android/camera/CameraEngine;->mLastCapturedFileName:Ljava/lang/String;
    invoke-static {v2, v7}, Lcom/android/camera/CameraEngine;->access$2102(Lcom/android/camera/CameraEngine;Ljava/lang/String;)Ljava/lang/String;

    .line 3373
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    #getter for: Lcom/android/camera/CameraEngine;->mLastCapturedFileName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/CameraEngine;->access$2100(Lcom/android/camera/CameraEngine;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3374
    .local v24, f:Ljava/io/File;
    const/16 v26, 0x0

    .local v26, filenumber:I
    move/from16 v27, v26

    .line 3375
    .end local v26           #filenumber:I
    .local v27, filenumber:I
    :goto_4
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3376
    const-string v2, "CameraEngine"

    const-string v7, "Duplicated file name found"

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v26, v27, 0x1

    .end local v27           #filenumber:I
    .restart local v26       #filenumber:I
    move/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ")"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ".jpg"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #setter for: Lcom/android/camera/CameraEngine;->mLastCapturedFileName:Ljava/lang/String;
    invoke-static {v2, v7}, Lcom/android/camera/CameraEngine;->access$2102(Lcom/android/camera/CameraEngine;Ljava/lang/String;)Ljava/lang/String;

    .line 3380
    const-string v2, "CameraEngine"

    const-string v7, "New file name created"

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3381
    new-instance v24, Ljava/io/File;

    .end local v24           #f:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    #getter for: Lcom/android/camera/CameraEngine;->mLastCapturedFileName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/CameraEngine;->access$2100(Lcom/android/camera/CameraEngine;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .restart local v24       #f:Ljava/io/File;
    move/from16 v27, v26

    .end local v26           #filenumber:I
    .restart local v27       #filenumber:I
    goto :goto_4

    .line 3279
    .end local v3           #directory:Ljava/lang/String;
    .end local v4           #filename:Ljava/lang/String;
    .end local v5           #dateTaken:J
    .end local v15           #bSuccess:Z
    .end local v16           #calendar:Ljava/util/GregorianCalendar;
    .end local v17           #currentAddress:Ljava/lang/String;
    .end local v24           #f:Ljava/io/File;
    .end local v27           #filenumber:I
    .end local v30           #name:Ljava/lang/String;
    .end local v34           #time:Landroid/text/format/Time;
    .end local v35           #timezone:Ljava/util/TimeZone;
    :catch_0
    move-exception v31

    .line 3280
    .local v31, oom:Ljava/lang/OutOfMemoryError;
    :try_start_4
    const-string v2, "CameraEngine"

    const-string v7, "Out of memory while creating bitmap."

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mLastCaptureData:Lcom/android/camera/CaptureData;

    if-eqz v2, :cond_4

    .line 3282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mLastCaptureData:Lcom/android/camera/CaptureData;

    invoke-virtual {v2}, Lcom/android/camera/CaptureData;->clear()V

    .line 3283
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    const/4 v7, 0x0

    iput-object v7, v2, Lcom/android/camera/CameraEngine;->mLastCaptureData:Lcom/android/camera/CaptureData;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 3265
    .end local v31           #oom:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 3319
    .restart local v5       #dateTaken:J
    .restart local v15       #bSuccess:Z
    .restart local v16       #calendar:Ljava/util/GregorianCalendar;
    .restart local v17       #currentAddress:Ljava/lang/String;
    .restart local v34       #time:Landroid/text/format/Time;
    .restart local v35       #timezone:Ljava/util/TimeZone;
    :cond_5
    :try_start_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mCurrentShootingMode:I

    const/16 v7, 0xe

    if-ne v2, v7, :cond_8

    .line 3320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getHDRPictureMode()I

    move-result v2

    if-nez v2, :cond_6

    .line 3321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    #getter for: Lcom/android/camera/CameraEngine;->mNumOfSavedImageInHDR:I
    invoke-static {v7}, Lcom/android/camera/CameraEngine;->access$1900(Lcom/android/camera/CameraEngine;)I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    #setter for: Lcom/android/camera/CameraEngine;->mNumOfSavedImageInHDR:I
    invoke-static {v2, v7}, Lcom/android/camera/CameraEngine;->access$1902(Lcom/android/camera/CameraEngine;I)I

    .line 3322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iput-wide v5, v2, Lcom/android/camera/CameraEngine;->mDateTakenForHDR:J

    .line 3326
    :goto_5
    const-string v2, "CameraEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HDR] storeImage - mNumOfSavedImageInHDR = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    #getter for: Lcom/android/camera/CameraEngine;->mNumOfSavedImageInHDR:I
    invoke-static {v8}, Lcom/android/camera/CameraEngine;->access$1900(Lcom/android/camera/CameraEngine;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3327
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraEngine$ShootingModeManager;->getHDRFileName()Ljava/lang/String;

    move-result-object v30

    .restart local v30       #name:Ljava/lang/String;
    goto/16 :goto_1

    .line 3324
    .end local v30           #name:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    #getter for: Lcom/android/camera/CameraEngine;->mNumOfSavedImageInHDR:I
    invoke-static {v7}, Lcom/android/camera/CameraEngine;->access$1900(Lcom/android/camera/CameraEngine;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    #setter for: Lcom/android/camera/CameraEngine;->mNumOfSavedImageInHDR:I
    invoke-static {v2, v7}, Lcom/android/camera/CameraEngine;->access$1902(Lcom/android/camera/CameraEngine;I)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_5

    .line 3541
    .end local v5           #dateTaken:J
    .end local v16           #calendar:Ljava/util/GregorianCalendar;
    .end local v17           #currentAddress:Ljava/lang/String;
    .end local v34           #time:Landroid/text/format/Time;
    .end local v35           #timezone:Ljava/util/TimeZone;
    :catch_1
    move-exception v18

    .line 3542
    .local v18, ex:Ljava/lang/Exception;
    :try_start_6
    const-string v2, "CameraEngine"

    const-string v7, "Exception while compressing image."

    move-object/from16 v0, v18

    invoke-static {v2, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3545
    .end local v18           #ex:Ljava/lang/Exception;
    :cond_7
    :goto_6
    monitor-exit p0

    return v15

    .line 3328
    .restart local v5       #dateTaken:J
    .restart local v16       #calendar:Ljava/util/GregorianCalendar;
    .restart local v17       #currentAddress:Ljava/lang/String;
    .restart local v34       #time:Landroid/text/format/Time;
    .restart local v35       #timezone:Ljava/util/TimeZone;
    :cond_8
    :try_start_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mCurrentShootingMode:I

    const/16 v7, 0x17

    if-ne v2, v7, :cond_9

    .line 3329
    const-string v2, "CameraEngine"

    const-string v7, "[LowLight] storeImage - add LLS tag "

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3330
    const-string v2, "LLS"

    move-object/from16 v0, v17

    invoke-static {v5, v6, v0, v2}, Lcom/android/camera/ImageSavingUtils;->createName(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .restart local v30       #name:Ljava/lang/String;
    goto/16 :goto_1

    .line 3331
    .end local v30           #name:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mCurrentShootingMode:I

    const/16 v7, 0x11

    if-eq v2, v7, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mCurrentShootingMode:I

    const/16 v7, 0x18

    if-eq v2, v7, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mCurrentShootingMode:I

    const/16 v7, 0x19

    if-ne v2, v7, :cond_b

    .line 3335
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mContinuousFileSequence:I

    add-int/lit8 v8, v7, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mContinuousFileSequence:I

    move-object/from16 v0, v17

    invoke-static {v5, v6, v0, v7}, Lcom/android/camera/ImageSavingUtils;->createName(JLjava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "_bestshot"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .restart local v30       #name:Ljava/lang/String;
    goto/16 :goto_1

    .line 3337
    .end local v30           #name:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, v17

    invoke-static {v5, v6, v0}, Lcom/android/camera/ImageSavingUtils;->createName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .restart local v30       #name:Ljava/lang/String;
    goto/16 :goto_1

    .line 3345
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ".jpg"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #filename:Ljava/lang/String;
    goto/16 :goto_2

    .line 3353
    :cond_d
    sget-object v3, Lcom/android/camera/ImageSavingUtils;->CAMERA_IMAGE_SNS_MODE_MMC:Ljava/lang/String;

    .restart local v3       #directory:Ljava/lang/String;
    goto/16 :goto_3

    .line 3354
    .end local v3           #directory:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x11

    if-eq v2, v7, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x18

    if-eq v2, v7, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x19

    if-ne v2, v7, :cond_11

    .line 3358
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mStorage:I

    if-nez v2, :cond_10

    .line 3359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "/.BestPic"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #directory:Ljava/lang/String;
    goto/16 :goto_3

    .line 3361
    .end local v3           #directory:Ljava/lang/String;
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "/.BestPic"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #directory:Ljava/lang/String;
    goto/16 :goto_3

    .line 3364
    .end local v3           #directory:Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mStorage:I

    if-nez v2, :cond_12

    .line 3365
    sget-object v3, Lcom/android/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    .restart local v3       #directory:Ljava/lang/String;
    goto/16 :goto_3

    .line 3367
    .end local v3           #directory:Ljava/lang/String;
    :cond_12
    sget-object v3, Lcom/android/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    .restart local v3       #directory:Ljava/lang/String;
    goto/16 :goto_3

    .line 3384
    .restart local v24       #f:Ljava/io/File;
    .restart local v27       #filenumber:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    invoke-virtual {v7}, Lcom/android/camera/CameraEngine;->getOrientationOnTake()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraEngine;->calculateOrientationForPicture(I)I

    move-result v32

    .line 3385
    .local v32, orientationForPicture:I
    const-string v2, "CameraEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "storeImage - orientationForPicture : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    move/from16 v0, v32

    invoke-virtual {v2, v0}, Lcom/android/camera/CameraEngine;->convertToExifInterfaceOrientation(I)I

    move-result v10

    .line 3387
    .local v10, orientationForExif:I
    const-string v2, "CameraEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "storeImage - ExifInterface Orientation : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3389
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mLastCaptureData:Lcom/android/camera/CaptureData;

    if-eqz v2, :cond_14

    .line 3390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mLastCaptureData:Lcom/android/camera/CaptureData;

    move/from16 v0, v32

    invoke-virtual {v2, v0}, Lcom/android/camera/CaptureData;->setOrientation(I)V

    .line 3392
    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mCurrentShootingMode:I

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mWhiteBalance:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mFlashMode:I

    move-object/from16 v7, p2

    move-object/from16 v9, p1

    invoke-static/range {v2 .. v12}, Lcom/android/camera/ImageSavingUtils;->addImage(ILjava/lang/String;Ljava/lang/String;JLandroid/location/Location;Landroid/graphics/Bitmap;[BIII)Z

    move-result v15

    .line 3394
    const-string v2, "CameraEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "storeImage bSuccess: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3396
    if-nez v15, :cond_15

    .line 3397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mMainHandler:Lcom/android/camera/CameraEngine$MainHandler;

    const/16 v7, 0x64

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraEngine$MainHandler;->sendEmptyMessage(I)Z

    .line 3400
    :cond_15
    const/16 v23, 0x0

    .line 3401
    .local v23, exifWidth:I
    const/16 v21, 0x0

    .line 3403
    .local v21, exifHeight:I
    if-eqz v15, :cond_7

    .line 3404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0xa

    if-eq v2, v7, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0xe

    if-ne v2, v7, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/android/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x17

    if-ne v2, v7, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/android/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 3406
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mLastCaptureData:Lcom/android/camera/CaptureData;

    if-eqz v2, :cond_18

    .line 3410
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v2, Lcom/android/camera/Camera;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v7, v7, Lcom/android/camera/CameraEngine;->mLastCaptureData:Lcom/android/camera/CaptureData;

    invoke-virtual {v7}, Lcom/android/camera/CaptureData;->getCaptureBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    move/from16 v0, v32

    invoke-virtual {v2, v7, v0}, Lcom/android/camera/Camera;->updateThumbnail(Landroid/graphics/Bitmap;I)V

    .line 3437
    :cond_18
    :goto_7
    new-instance v36, Landroid/content/ContentValues;

    const/16 v2, 0x9

    move-object/from16 v0, v36

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 3438
    .local v36, values:Landroid/content/ContentValues;
    const-string v2, "title"

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3443
    const-string v2, "_display_name"

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3444
    const-string v2, "datetaken"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3445
    const-string v2, "mime_type"

    const-string v7, "image/jpeg"

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3446
    const-string v2, "orientation"

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3447
    const-string v2, "_data"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    #getter for: Lcom/android/camera/CameraEngine;->mLastCapturedFileName:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/camera/CameraEngine;->access$2100(Lcom/android/camera/CameraEngine;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/4 v7, 0x2

    if-eq v2, v7, :cond_20

    .line 3449
    const-string v2, "height"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v7, v7, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/android/camera/CameraSettings;->getCameraResolution()I

    move-result v7

    invoke-static {v7}, Lcom/android/camera/CameraResolution;->getIntHeight(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3450
    const-string v2, "width"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v7, v7, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/android/camera/CameraSettings;->getCameraResolution()I

    move-result v7

    invoke-static {v7}, Lcom/android/camera/CameraResolution;->getIntWidth(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 3457
    :goto_8
    const/16 v19, 0x0

    .line 3459
    .local v19, exif:Landroid/media/ExifInterface;
    :try_start_8
    new-instance v20, Landroid/media/ExifInterface;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "/"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .end local v19           #exif:Landroid/media/ExifInterface;
    .local v20, exif:Landroid/media/ExifInterface;
    move-object/from16 v19, v20

    .line 3464
    .end local v20           #exif:Landroid/media/ExifInterface;
    .restart local v19       #exif:Landroid/media/ExifInterface;
    :goto_9
    if-eqz v19, :cond_19

    .line 3465
    const/4 v2, 0x2

    :try_start_9
    new-array v0, v2, [F

    move-object/from16 v29, v0

    .line 3466
    .local v29, latlng:[F
    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 3467
    const-string v2, "latitude"

    const/4 v7, 0x0

    aget v7, v29, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 3468
    const-string v2, "longitude"

    const/4 v7, 0x1

    aget v7, v29, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 3477
    .end local v29           #latlng:[F
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/4 v7, 0x1

    if-eq v2, v7, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x18

    if-eq v2, v7, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x11

    if-ne v2, v7, :cond_1b

    .line 3480
    :cond_1a
    const-string v2, "CameraEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Burstshot/Bestshot groupID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    invoke-virtual {v8}, Lcom/android/camera/CameraEngine;->getGroupID()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is set"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3486
    :cond_1b
    const-string v2, "date_modified"

    const-wide/16 v7, 0x3e8

    div-long v7, v5, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 3488
    const/16 v25, 0x0

    .line 3492
    .local v25, fileUri:Landroid/net/Uri;
    if-eqz p2, :cond_1c

    .line 3494
    :try_start_a
    const-string v2, "CameraEngine"

    const-string v7, "Insert contextual tag"

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3496
    const-string v14, "weather_ID"

    .line 3497
    .local v14, WEATHER_ID:Ljava/lang/String;
    const-string v13, "city_ID"

    .line 3498
    .local v13, CITY_ID:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    if-eqz v2, :cond_1c

    .line 3499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getWeather()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v36

    .line 3500
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getCityId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v36

    .line 3506
    .end local v13           #CITY_ID:Ljava/lang/String;
    .end local v14           #WEATHER_ID:Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v36

    invoke-virtual {v2, v7, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v25

    .line 3516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    move-object/from16 v0, v25

    invoke-static {v2, v0, v7, v8}, Lcom/android/camera/ImageSavingUtils;->setImageSize(Landroid/content/ContentResolver;Landroid/net/Uri;J)V

    .line 3518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    move-object/from16 v0, v25

    iput-object v0, v2, Lcom/android/camera/CameraEngine;->mLastContentUri:Landroid/net/Uri;

    .line 3519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v2, Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1d

    .line 3520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v7, v7, Lcom/android/camera/CameraEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-static {v2, v7}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 3530
    :cond_1d
    :goto_a
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    const/4 v7, 0x1

    #setter for: Lcom/android/camera/CameraEngine;->mCaptureInitiated:Z
    invoke-static {v2, v7}, Lcom/android/camera/CameraEngine;->access$2302(Lcom/android/camera/CameraEngine;Z)Z

    goto/16 :goto_6

    .line 3412
    .end local v19           #exif:Landroid/media/ExifInterface;
    .end local v25           #fileUri:Landroid/net/Uri;
    .end local v36           #values:Landroid/content/ContentValues;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/4 v7, 0x2

    if-ne v2, v7, :cond_18

    .line 3413
    const-string v2, "CameraEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "panorama mode with bitmap "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    #getter for: Lcom/android/camera/CameraEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/android/camera/CameraEngine;->access$2200(Lcom/android/camera/CameraEngine;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3414
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    #getter for: Lcom/android/camera/CameraEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/android/camera/CameraEngine;->access$2200(Lcom/android/camera/CameraEngine;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 3415
    const-string v2, "CameraEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updating thumbnail now "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    #getter for: Lcom/android/camera/CameraEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/android/camera/CameraEngine;->access$2200(Lcom/android/camera/CameraEngine;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " with orientationForPicture "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v2, Lcom/android/camera/Camera;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    #getter for: Lcom/android/camera/CameraEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/android/camera/CameraEngine;->access$2200(Lcom/android/camera/CameraEngine;)Landroid/graphics/Bitmap;

    move-result-object v7

    move/from16 v0, v32

    invoke-virtual {v2, v7, v0}, Lcom/android/camera/Camera;->updateThumbnail(Landroid/graphics/Bitmap;I)V

    .line 3417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    #getter for: Lcom/android/camera/CameraEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/android/camera/CameraEngine;->access$2200(Lcom/android/camera/CameraEngine;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 3418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    const/4 v7, 0x0

    #setter for: Lcom/android/camera/CameraEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2, v7}, Lcom/android/camera/CameraEngine;->access$2202(Lcom/android/camera/CameraEngine;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 3424
    :cond_1f
    :try_start_c
    new-instance v19, Landroid/media/ExifInterface;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "/"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 3425
    .restart local v19       #exif:Landroid/media/ExifInterface;
    const-string v2, "Orientation"

    const/4 v7, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v22

    .line 3426
    .local v22, exifOrientation:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/android/camera/CameraEngine;->convertExifOrientationToMediaOrientation(I)I

    move-result v32

    .line 3427
    const-string v2, "CameraEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Read new orientation from exif: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " --> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3429
    const-string v2, "ImageWidth"

    const/4 v7, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v23

    .line 3430
    const-string v2, "ImageLength"

    const/4 v7, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v21

    .line 3431
    const-string v2, "CameraEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Read width/height from exif: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    goto/16 :goto_7

    .line 3432
    .end local v19           #exif:Landroid/media/ExifInterface;
    .end local v22           #exifOrientation:I
    :catch_2
    move-exception v28

    .line 3433
    .local v28, ioex:Ljava/io/IOException;
    :try_start_d
    const-string v2, "CameraEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not read exif tags from : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 3452
    .end local v28           #ioex:Ljava/io/IOException;
    .restart local v36       #values:Landroid/content/ContentValues;
    :cond_20
    const-string v2, "height"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3453
    const-string v2, "width"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_8

    .line 3460
    .restart local v19       #exif:Landroid/media/ExifInterface;
    :catch_3
    move-exception v18

    .line 3461
    .local v18, ex:Ljava/io/IOException;
    const-string v2, "CameraEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not read exif tags from : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 3522
    .end local v18           #ex:Ljava/io/IOException;
    .restart local v25       #fileUri:Landroid/net/Uri;
    :catch_4
    move-exception v33

    .line 3523
    .local v33, sfe:Landroid/database/sqlite/SQLiteFullException;
    const-string v2, "CameraEngine"

    const-string v7, "Not enough space in database"

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    if-eqz v2, :cond_1d

    .line 3525
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v7, 0x7f0900f3

    const/4 v8, 0x0

    invoke-static {v2, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    goto/16 :goto_a
.end method


# virtual methods
.method public cancelCaptureForPanorama()V
    .locals 1

    .prologue
    .line 3827
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    #getter for: Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/android/camera/CameraEngine;->access$600(Lcom/android/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3828
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    #getter for: Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/android/camera/CameraEngine;->access$600(Lcom/android/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->cancelPanorama()V

    .line 3831
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine;->startContinuousAF()V

    .line 3832
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->resumeAudioPlayback()V

    .line 3833
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mPanoramaCapturing:Z

    .line 3834
    return-void
.end method

.method public cancelSeriesActionShot()V
    .locals 1

    .prologue
    .line 3928
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    #getter for: Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/android/camera/CameraEngine;->access$600(Lcom/android/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3929
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    #getter for: Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/android/camera/CameraEngine;->access$600(Lcom/android/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->cancelSeriesActionShot()V

    .line 3931
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->resumeAudioPlayback()V

    .line 3932
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mActionShotStarted:Z

    .line 3933
    return-void
.end method

.method public chkActionShotStarted()Z
    .locals 1

    .prologue
    .line 3936
    iget-boolean v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mActionShotStarted:Z

    return v0
.end method

.method public handleShutterEvent()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3586
    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/android/camera/CameraEngine;->isCapturing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v1, v1, Lcom/android/camera/CameraEngine;->mCurrentState:Lcom/android/camera/AbstractCeState;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCeState;->getId()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    .line 3587
    :cond_0
    const-string v1, "CameraEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleShutterEvent - isCapturing:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/android/camera/CameraEngine;->isCapturing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v3, v3, Lcom/android/camera/CameraEngine;->mCurrentState:Lcom/android/camera/AbstractCeState;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCeState;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3632
    :cond_1
    :goto_0
    return-void

    .line 3591
    :cond_2
    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v1, v1, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v0

    .line 3592
    .local v0, shootingMode:I
    const-string v1, "CameraEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleShutterEvent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3593
    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v1, v1, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x11

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v1, v1, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x18

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v1, v1, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x19

    if-ne v1, v2, :cond_5

    .line 3596
    :cond_3
    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    #getter for: Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v1}, Lcom/android/camera/CameraEngine;->access$600(Lcom/android/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3598
    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/android/camera/CameraEngine;->isAutoFocusing()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/android/camera/CameraEngine;->getFocusState()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 3599
    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/android/camera/CameraEngine;->scheduleContinuousAF()V

    .line 3606
    :cond_4
    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v1, v1, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/16 v2, 0x1d

    invoke-virtual {v1, v2}, Lcom/android/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3619
    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/android/camera/CameraEngine;->scheduleStartBurstShot()V

    goto :goto_0

    .line 3623
    :cond_5
    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v1, v1, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v1, v1, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getBurstMode()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 3624
    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/android/camera/CameraEngine;->isSingleShotBurst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3625
    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    #getter for: Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v1}, Lcom/android/camera/CameraEngine;->access$600(Lcom/android/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3626
    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v1, v1, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v1, Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->onBurstShotStarted()V

    .line 3627
    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    #getter for: Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v1}, Lcom/android/camera/CameraEngine;->access$600(Lcom/android/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v3, v3, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/android/camera/CameraSettings;->getStorage()I

    move-result v3

    invoke-virtual {v1, v4, v2, v3}, Lcom/sec/android/seccamera/SecCamera;->startBurstShot(ZZI)V

    .line 3628
    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/android/camera/CameraEngine;->captureBurstShot()V

    goto/16 :goto_0
.end method

.method public handleShutterReleaseEvent()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 3635
    const-string v2, "CameraEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleShutterReleaseEvent - mFocusState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget v6, v6, Lcom/android/camera/CameraEngine;->mFocusState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3637
    iget-object v2, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/android/camera/CameraEngine;->isCapturing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/android/camera/CameraEngine;->isStartingPreview()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3638
    :cond_0
    const-string v2, "CameraEngine"

    const-string v3, "handleShutterReleaseEvent returning.."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3763
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 3642
    :cond_2
    iget-object v2, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    #getter for: Lcom/android/camera/CameraEngine;->mJpegPictureCallback:Lcom/android/camera/CameraEngine$JpegPictureCallback;
    invoke-static {v2}, Lcom/android/camera/CameraEngine;->access$2400(Lcom/android/camera/CameraEngine;)Lcom/android/camera/CameraEngine$JpegPictureCallback;

    move-result-object v2

    iget-object v5, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/android/camera/CameraEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/camera/CameraEngine$JpegPictureCallback;->setLocation(Landroid/location/Location;)V

    .line 3644
    iget-object v2, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mCurrentState:Lcom/android/camera/AbstractCeState;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCeState;->getId()I

    move-result v2

    const/4 v5, 0x4

    if-eq v2, v5, :cond_3

    .line 3645
    const-string v2, "CameraEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong state for take picture: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v4, v4, Lcom/android/camera/CameraEngine;->mCurrentState:Lcom/android/camera/AbstractCeState;

    invoke-virtual {v4}, Lcom/android/camera/AbstractCeState;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3667
    :cond_3
    iget-object v2, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v1

    .line 3669
    .local v1, shootingMode:I
    packed-switch v1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 3682
    :pswitch_2
    iget-object v2, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getBurstMode()I

    move-result v2

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/android/camera/CameraEngine;->isSingleShotBurst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3683
    iget-object v2, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getTimer()I

    move-result v2

    if-nez v2, :cond_1

    .line 3684
    iget-object v2, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/android/camera/CameraEngine;->doStopBurstShot()V

    goto :goto_0

    .line 3678
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine$ShootingModeManager;->handleSingleShutterWithNoShutterLag()V

    goto :goto_0

    .line 3687
    :cond_4
    iget-object v2, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getCameraReview()I

    move-result v2

    if-nez v2, :cond_5

    .line 3688
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine$ShootingModeManager;->handleSingleShutterWithNoShutterLag()V

    goto :goto_0

    .line 3690
    :cond_5
    invoke-static {}, Lcom/android/camera/CameraEngine;->access$2500()Z

    move-result v2

    if-nez v2, :cond_6

    .line 3691
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine$ShootingModeManager;->handleSingleShutter()V

    .line 3694
    :cond_6
    invoke-static {v4}, Lcom/android/camera/CameraEngine;->access$2502(Z)Z

    .line 3695
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/android/camera/CameraEngine$ShootingModeManager$2;

    invoke-direct {v2, p0}, Lcom/android/camera/CameraEngine$ShootingModeManager$2;-><init>(Lcom/android/camera/CameraEngine$ShootingModeManager;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3705
    .local v0, blockSingShutterThread:Ljava/lang/Thread;
    const-string v2, "blockSingShutterThread"

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 3706
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 3711
    .end local v0           #blockSingShutterThread:Ljava/lang/Thread;
    :pswitch_4
    iget-boolean v2, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mPanoramaCapturing:Z

    if-eqz v2, :cond_7

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mPanoramaCapturing:Z

    .line 3712
    iget-boolean v2, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mPanoramaCapturing:Z

    if-nez v2, :cond_9

    .line 3713
    iget-object v2, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v2, Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->onPanoramaCaptureStart()Z

    move-result v2

    if-nez v2, :cond_8

    .line 3714
    iput-boolean v4, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mPanoramaCapturing:Z

    goto/16 :goto_0

    :cond_7
    move v2, v4

    .line 3711
    goto :goto_1

    .line 3717
    :cond_8
    iget-object v2, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/android/camera/CameraEngine;->scheduleStopPanorama()V

    goto/16 :goto_0

    .line 3719
    :cond_9
    iget-object v2, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->hideSideMenuItems()V

    .line 3720
    iget-object v2, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/android/camera/CameraEngine;->scheduleStartPanorama()V

    goto/16 :goto_0

    .line 3730
    :pswitch_5
    iget-object v2, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/camera/CeRequestQueue;->removeRequest(I)V

    .line 3731
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine$ShootingModeManager;->handleSingleShutter()V

    goto/16 :goto_0

    .line 3734
    :pswitch_6
    iget-boolean v2, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mActionShotStarted:Z

    if-eqz v2, :cond_a

    move v4, v3

    :cond_a
    iput-boolean v4, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mActionShotStarted:Z

    .line 3735
    iget-boolean v2, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mActionShotStarted:Z

    if-eqz v2, :cond_b

    .line 3736
    iget-object v2, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v2, Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getActionShotProgressValue()I

    move-result v2

    if-nez v2, :cond_1

    .line 3737
    iget-object v2, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/android/camera/CameraEngine;->scheduleStartActionShot()V

    goto/16 :goto_0

    .line 3739
    :cond_b
    iget-object v2, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v2, Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getActionShotProgressValue()I

    move-result v2

    if-eqz v2, :cond_c

    .line 3740
    const-string v4, "CameraEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scheduleStopActionShot : STOP"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v2, Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getActionShotProgressValue()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3741
    iget-object v2, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/android/camera/CameraEngine;->scheduleStopActionShot()V

    goto/16 :goto_0

    .line 3743
    :cond_c
    const-string v4, "CameraEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scheduleStopActionShot: don\'t STOP"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v2, Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getActionShotProgressValue()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3748
    :pswitch_7
    iget-object v2, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v2, Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->isBestPicMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3749
    iget-object v2, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/16 v3, 0x1d

    invoke-virtual {v2, v3}, Lcom/android/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v2

    if-ne v2, v4, :cond_d

    .line 3750
    iget-object v2, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/android/camera/CameraEngine;->scheduleStopBurstShot()V

    goto/16 :goto_0

    .line 3754
    :cond_d
    iget-object v2, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/android/camera/CameraEngine;->doStopBurstShot()V

    goto/16 :goto_0

    .line 3669
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_6
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleSingleShutter()V
    .locals 4

    .prologue
    .line 3767
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shot2Shot-CaptureSequenceStart**Point["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]**"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3768
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine;->clearCaptureImageData()V

    .line 3769
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 3775
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine$ShootingModeManager;->handleTimer()Z

    .line 3779
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine;->scheduleStopPreviewDummy()V

    .line 3783
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine;->scheduleTakePicture()V

    .line 3785
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3786
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine;->scheduleStartPreview()V

    .line 3789
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->pauseAudioPlayback()V

    .line 3790
    return-void
.end method

.method public handleSingleShutterWithNoShutterLag()V
    .locals 3

    .prologue
    .line 3793
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isContinuousAFEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3794
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine;->isAutoFocusing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine;->getFocusState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3796
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine;->scheduleContinuousAF()V

    .line 3799
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraEngine$ShootingModeManager;->handleTimer()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3801
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine;->scheduleStopPreviewDummy()V

    .line 3811
    :goto_0
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine;->scheduleTakePicture()V

    .line 3813
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    .line 3818
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3819
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine;->scheduleStartPreview()V

    .line 3822
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->pauseAudioPlayback()V

    .line 3823
    return-void

    .line 3809
    :cond_3
    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mStateDepot:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/AbstractCeState;

    iput-object v0, v1, Lcom/android/camera/CameraEngine;->mCurrentState:Lcom/android/camera/AbstractCeState;

    goto :goto_0
.end method

.method public handleTimer()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3571
    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v1, v1, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getTimer()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 3582
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3573
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraEngine;->scheduleShutterTimer(I)V

    goto :goto_0

    .line 3576
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraEngine;->scheduleShutterTimer(I)V

    goto :goto_0

    .line 3579
    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraEngine;->scheduleShutterTimer(I)V

    goto :goto_0

    .line 3571
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isPanoramaCapturing()Z
    .locals 1

    .prologue
    .line 3837
    iget-boolean v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mPanoramaCapturing:Z

    return v0
.end method

.method public onPictureTaken([BLcom/sec/android/seccamera/SecCamera;)V
    .locals 4
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 3165
    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v1, v1, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v0

    .line 3167
    .local v0, shootingMode:I
    packed-switch v0, :pswitch_data_0

    .line 3229
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v1, v1, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v1, Lcom/android/camera/Camera;

    invoke-virtual {v1, v3}, Lcom/android/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 3232
    invoke-static {}, Lcom/android/camera/CameraEngine;->access$900()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3233
    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getCameraFocusMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraEngine;->setFocusParameter(I)V

    .line 3234
    :cond_0
    return-void

    .line 3169
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/camera/CameraEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    .line 3170
    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v1, v1, Lcom/android/camera/CameraEngine;->mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 3173
    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/camera/CameraEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    .line 3174
    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v1, v1, Lcom/android/camera/CameraEngine;->mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 3187
    :pswitch_3
    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/camera/CameraEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    .line 3188
    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v1, v1, Lcom/android/camera/CameraEngine;->mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 3191
    :pswitch_4
    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v1, v1, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v1, Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->onSmileDetectingStopped()V

    .line 3192
    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/camera/CameraEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    .line 3193
    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v1, v1, Lcom/android/camera/CameraEngine;->mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 3196
    :pswitch_5
    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/camera/CameraEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    .line 3197
    iput-boolean v3, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mActionShotStarted:Z

    goto :goto_0

    .line 3200
    :pswitch_6
    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/camera/CameraEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    .line 3201
    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v1, v1, Lcom/android/camera/CameraEngine;->mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 3204
    :pswitch_7
    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/camera/CameraEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    goto :goto_0

    .line 3207
    :pswitch_8
    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/camera/CameraEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    goto :goto_0

    .line 3212
    :pswitch_9
    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/camera/CameraEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    goto :goto_0

    .line 3215
    :pswitch_a
    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/camera/CameraEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    .line 3216
    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v1, v1, Lcom/android/camera/CameraEngine;->mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 3167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_8
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public resetPanoramaCapturing()V
    .locals 1

    .prologue
    .line 3841
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mPanoramaCapturing:Z

    .line 3842
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0
    .parameter "loc"

    .prologue
    .line 3160
    iput-object p1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    .line 3161
    return-void
.end method

.method public setShootingMode(I)V
    .locals 5
    .parameter "shootingMode"

    .prologue
    const/4 v4, 0x0

    .line 3845
    iget v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mCurrentShootingMode:I

    packed-switch v0, :pswitch_data_0

    .line 3882
    :cond_0
    :goto_0
    :pswitch_0
    iput p1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mCurrentShootingMode:I

    .line 3884
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    #getter for: Lcom/android/camera/CameraEngine;->mJpegPictureCallback:Lcom/android/camera/CameraEngine$JpegPictureCallback;
    invoke-static {v0}, Lcom/android/camera/CameraEngine;->access$2400(Lcom/android/camera/CameraEngine;)Lcom/android/camera/CameraEngine$JpegPictureCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/android/camera/CameraEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraEngine$JpegPictureCallback;->setLocation(Landroid/location/Location;)V

    .line 3885
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    #getter for: Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/android/camera/CameraEngine;->access$600(Lcom/android/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3887
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    #getter for: Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/android/camera/CameraEngine;->access$600(Lcom/android/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/seccamera/SecCamera;->setShootingMode(I)V

    .line 3888
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    #getter for: Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/android/camera/CameraEngine;->access$600(Lcom/android/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    #getter for: Lcom/android/camera/CameraEngine;->mShutterCallback:Lcom/android/camera/CameraEngine$ShutterCallback;
    invoke-static {v1}, Lcom/android/camera/CameraEngine;->access$2600(Lcom/android/camera/CameraEngine;)Lcom/android/camera/CameraEngine$ShutterCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    #getter for: Lcom/android/camera/CameraEngine;->mRawPictureCallback:Lcom/android/camera/CameraEngine$RawPictureCallback;
    invoke-static {v2}, Lcom/android/camera/CameraEngine;->access$2700(Lcom/android/camera/CameraEngine;)Lcom/android/camera/CameraEngine$RawPictureCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    #getter for: Lcom/android/camera/CameraEngine;->mJpegPictureCallback:Lcom/android/camera/CameraEngine$JpegPictureCallback;
    invoke-static {v3}, Lcom/android/camera/CameraEngine;->access$2400(Lcom/android/camera/CameraEngine;)Lcom/android/camera/CameraEngine$JpegPictureCallback;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera;->setShootingModeCallbacks(Lcom/sec/android/seccamera/SecCamera$ShutterCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;)V

    .line 3891
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 3925
    :cond_2
    :goto_1
    :sswitch_0
    return-void

    .line 3862
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    #getter for: Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/android/camera/CameraEngine;->access$600(Lcom/android/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3863
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    #getter for: Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/android/camera/CameraEngine;->access$600(Lcom/android/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->cancelPanorama()V

    .line 3864
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->clearPanoramaRect()V

    .line 3865
    iput-boolean v4, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mPanoramaCapturing:Z

    goto :goto_0

    .line 3868
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    #getter for: Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/android/camera/CameraEngine;->access$600(Lcom/android/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3869
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    #getter for: Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/android/camera/CameraEngine;->access$600(Lcom/android/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->finishActionShot()V

    goto :goto_0

    .line 3876
    :pswitch_3
    const-string v0, "CameraEngine"

    const-string v1, "setLowLightShot : 0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3877
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->onMultiFrameShotReset()V

    .line 3878
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    invoke-virtual {v0, v4}, Lcom/android/camera/CameraEngine;->setLowLightShot(I)V

    goto/16 :goto_0

    .line 3905
    :sswitch_1
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v1, v1, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getHDRIntensityMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraEngine;->setHDRShotModeChanged(I)V

    .line 3906
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v1, v1, Lcom/android/camera/CameraEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getHDRPictureMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraEngine;->setHDRPictureModeChanged(I)V

    goto :goto_1

    .line 3910
    :sswitch_2
    iput-boolean v4, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->mPanoramaCapturing:Z

    goto :goto_1

    .line 3913
    :sswitch_3
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    #getter for: Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/android/camera/CameraEngine;->access$600(Lcom/android/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3914
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    #getter for: Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/android/camera/CameraEngine;->access$600(Lcom/android/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->initializeActionShot()V

    .line 3915
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    #getter for: Lcom/android/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/android/camera/CameraEngine;->access$600(Lcom/android/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v1, v1, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraResolution;->getIntWidth(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v2, v2, Lcom/android/camera/CameraEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setResolutionActionShot(II)V

    goto/16 :goto_1

    .line 3921
    :sswitch_4
    const-string v0, "CameraEngine"

    const-string v1, "setLowLightShot : 1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3922
    iget-object v0, p0, Lcom/android/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/android/camera/CameraEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraEngine;->setLowLightShot(I)V

    goto/16 :goto_1

    .line 3845
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 3891
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_0
        0x8 -> :sswitch_0
        0xa -> :sswitch_3
        0xd -> :sswitch_0
        0xe -> :sswitch_1
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
        0x17 -> :sswitch_4
        0x1b -> :sswitch_0
    .end sparse-switch
.end method
