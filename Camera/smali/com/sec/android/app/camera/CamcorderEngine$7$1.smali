.class Lcom/sec/android/app/camera/CamcorderEngine$7$1;
.super Ljava/lang/Object;
.source "CamcorderEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CamcorderEngine$7;->onPictureTaken([BLcom/sec/android/seccamera/SecCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

.field final synthetic val$jpegData:[B


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CamcorderEngine$7;[B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2471
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iput-object p2, p0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->val$jpegData:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 2473
    const-string v1, "CamcorderEngine"

    const-string v6, "starting save..."

    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2475
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v6, v6, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CamcorderEngine;->getOrientationOnTake()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CamcorderEngine;->calculateOrientationForPicture(I)I

    move-result v20

    .line 2476
    .local v20, orientationForPicture:I
    const-string v1, "CamcorderEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "storeImage - orientationForPicture : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2477
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    move/from16 v0, v20

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CamcorderEngine;->convertToExifInterfaceOrientation(I)I

    move-result v9

    .line 2478
    .local v9, orientationForExif:I
    const-string v1, "CamcorderEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "storeImage - ExifInterface Orientation : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    if-eqz v1, :cond_0

    .line 2481
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CaptureData;->clear()V

    .line 2482
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v6, 0x0

    iput-object v6, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    .line 2486
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    new-instance v6, Lcom/sec/android/app/camera/CaptureData;

    invoke-direct {v6}, Lcom/sec/android/app/camera/CaptureData;-><init>()V

    iput-object v6, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    .line 2487
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->val$jpegData:[B

    const/16 v7, 0x1e0

    const/16 v8, 0x168

    invoke-static {v7, v8}, Lcom/sec/android/glview/TwGLUtil;->calculateSampleSize(II)I

    move-result v7

    invoke-virtual {v1, v6, v7}, Lcom/sec/android/app/camera/CaptureData;->setCaptureData([BI)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 2495
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camcorder;

    move/from16 v0, v20

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/Camcorder;->updateRecordingSnapThumbnail(I)V

    .line 2497
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2498
    .local v4, dateTaken:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5, v1}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2499
    .local v18, name:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ".jpg"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2502
    .local v3, filename:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v1

    if-nez v1, :cond_2

    .line 2503
    sget-object v2, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    .line 2507
    .local v2, directory:Ljava/lang/String;
    :goto_1
    new-instance v14, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v14, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2508
    .local v14, f:Ljava/io/File;
    const/16 v16, 0x0

    .line 2509
    .local v16, filenumber:I
    :goto_2
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2510
    const-string v1, "CamcorderEngine"

    const-string v6, "Duplicated file name found"

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v17, v16, 0x1

    .end local v16           #filenumber:I
    .local v17, filenumber:I
    move/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ")"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ".jpg"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2514
    const-string v1, "CamcorderEngine"

    const-string v6, "New file name created"

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    new-instance v14, Ljava/io/File;

    .end local v14           #f:Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v14, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v14       #f:Ljava/io/File;
    move/from16 v16, v17

    .end local v17           #filenumber:I
    .restart local v16       #filenumber:I
    goto :goto_2

    .line 2488
    .end local v2           #directory:Ljava/lang/String;
    .end local v3           #filename:Ljava/lang/String;
    .end local v4           #dateTaken:J
    .end local v14           #f:Ljava/io/File;
    .end local v16           #filenumber:I
    .end local v18           #name:Ljava/lang/String;
    :catch_0
    move-exception v19

    .line 2489
    .local v19, oom:Ljava/lang/OutOfMemoryError;
    const-string v1, "CamcorderEngine"

    const-string v6, "Out of memory while creating bitmap."

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2490
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    if-eqz v1, :cond_1

    .line 2491
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CaptureData;->clear()V

    .line 2492
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v6, 0x0

    iput-object v6, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    goto/16 :goto_0

    .line 2505
    .end local v19           #oom:Ljava/lang/OutOfMemoryError;
    .restart local v3       #filename:Ljava/lang/String;
    .restart local v4       #dateTaken:J
    .restart local v18       #name:Ljava/lang/String;
    :cond_2
    sget-object v2, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    .restart local v2       #directory:Ljava/lang/String;
    goto/16 :goto_1

    .line 2520
    .restart local v14       #f:Ljava/io/File;
    .restart local v16       #filenumber:I
    :cond_3
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->val$jpegData:[B

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/sec/android/app/camera/ImageSavingUtils;->addImage(ILjava/lang/String;Ljava/lang/String;JLandroid/location/Location;Landroid/graphics/Bitmap;[BIII)Z

    .line 2522
    new-instance v22, Landroid/content/ContentValues;

    const/16 v1, 0xa

    move-object/from16 v0, v22

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 2524
    .local v22, values:Landroid/content/ContentValues;
    const-string v1, "_display_name"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2525
    const-string v1, "datetaken"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2526
    const-string v1, "mime_type"

    const-string v6, "image/jpeg"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2527
    const-string v1, "orientation"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2528
    const-string v1, "_data"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2530
    const/4 v15, 0x0

    .line 2534
    .local v15, fileUri:Landroid/net/Uri;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2537
    const-string v1, "CamcorderEngine"

    const-string v6, "Insert contextual tag"

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2539
    const-string v13, "weather_ID"

    .line 2540
    .local v13, WEATHER_ID:Ljava/lang/String;
    const-string v12, "city_ID"

    .line 2542
    .local v12, CITY_ID:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getWeather()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v0, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2543
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCityId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v0, v12, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2545
    const-string v1, "latitude"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v6, v6, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CamcorderEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v6

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 2546
    const-string v1, "longitude"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v6, v6, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CamcorderEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v6

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 2550
    .end local v12           #CITY_ID:Ljava/lang/String;
    .end local v13           #WEATHER_ID:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    #getter for: Lcom/sec/android/app/camera/CamcorderEngine;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->access$1000(Lcom/sec/android/app/camera/CamcorderEngine;)Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v22

    invoke-virtual {v1, v6, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v15

    .line 2552
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    #getter for: Lcom/sec/android/app/camera/CamcorderEngine;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->access$1000(Lcom/sec/android/app/camera/CamcorderEngine;)Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v1, v15, v6, v7}, Lcom/sec/android/app/camera/ImageSavingUtils;->setImageSize(Landroid/content/ContentResolver;Landroid/net/Uri;J)V

    .line 2554
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v1, :cond_5

    .line 2555
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-static {v1, v15}, Lcom/sec/android/app/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2589
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 2590
    return-void

    .line 2577
    :catch_1
    move-exception v21

    .line 2578
    .local v21, sfe:Landroid/database/sqlite/SQLiteFullException;
    const-string v1, "CamcorderEngine"

    const-string v6, "Not enough space in database"

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2579
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v1, :cond_5

    .line 2580
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    new-instance v6, Lcom/sec/android/app/camera/CamcorderEngine$7$1$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/sec/android/app/camera/CamcorderEngine$7$1$1;-><init>(Lcom/sec/android/app/camera/CamcorderEngine$7$1;)V

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 2586
    .end local v21           #sfe:Landroid/database/sqlite/SQLiteFullException;
    :catch_2
    move-exception v1

    goto :goto_3
.end method
