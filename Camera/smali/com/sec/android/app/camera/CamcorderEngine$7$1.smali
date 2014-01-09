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
    .line 2388
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iput-object p2, p0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->val$jpegData:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 2390
    const-string v1, "CamcorderEngine"

    const-string v6, "starting save..."

    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v6, v6, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CamcorderEngine;->getOrientationOnTake()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CamcorderEngine;->calculateOrientationForPicture(I)I

    move-result v19

    .line 2393
    .local v19, orientationForPicture:I
    const-string v1, "CamcorderEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "storeImage - orientationForPicture : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2394
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CamcorderEngine;->convertToExifInterfaceOrientation(I)I

    move-result v9

    .line 2395
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

    .line 2397
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    if-eqz v1, :cond_0

    .line 2398
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CaptureData;->clear()V

    .line 2399
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v6, 0x0

    iput-object v6, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    .line 2403
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    new-instance v6, Lcom/sec/android/app/camera/CaptureData;

    invoke-direct {v6}, Lcom/sec/android/app/camera/CaptureData;-><init>()V

    iput-object v6, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    .line 2404
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

    .line 2412
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camcorder;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/Camcorder;->startPostRecordingSnapAnimation(I)V

    .line 2414
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2415
    .local v4, dateTaken:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5, v1}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2416
    .local v17, name:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ".jpg"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2419
    .local v3, filename:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v1

    if-nez v1, :cond_2

    .line 2420
    sget-object v2, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    .line 2424
    .local v2, directory:Ljava/lang/String;
    :goto_1
    new-instance v12, Ljava/io/File;

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

    invoke-direct {v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2425
    .local v12, f:Ljava/io/File;
    const/4 v14, 0x0

    .line 2426
    .local v14, filenumber:I
    :goto_2
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2427
    const-string v1, "CamcorderEngine"

    const-string v6, "Duplicated file name found"

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v15, v14, 0x1

    .end local v14           #filenumber:I
    .local v15, filenumber:I
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ")"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ".jpg"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2431
    const-string v1, "CamcorderEngine"

    const-string v6, "New file name created"

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2432
    new-instance v12, Ljava/io/File;

    .end local v12           #f:Ljava/io/File;
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

    invoke-direct {v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v12       #f:Ljava/io/File;
    move v14, v15

    .end local v15           #filenumber:I
    .restart local v14       #filenumber:I
    goto :goto_2

    .line 2405
    .end local v2           #directory:Ljava/lang/String;
    .end local v3           #filename:Ljava/lang/String;
    .end local v4           #dateTaken:J
    .end local v12           #f:Ljava/io/File;
    .end local v14           #filenumber:I
    .end local v17           #name:Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 2406
    .local v18, oom:Ljava/lang/OutOfMemoryError;
    const-string v1, "CamcorderEngine"

    const-string v6, "Out of memory while creating bitmap."

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    if-eqz v1, :cond_1

    .line 2408
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CaptureData;->clear()V

    .line 2409
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v6, 0x0

    iput-object v6, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    goto/16 :goto_0

    .line 2422
    .end local v18           #oom:Ljava/lang/OutOfMemoryError;
    .restart local v3       #filename:Ljava/lang/String;
    .restart local v4       #dateTaken:J
    .restart local v17       #name:Ljava/lang/String;
    :cond_2
    sget-object v2, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    .restart local v2       #directory:Ljava/lang/String;
    goto/16 :goto_1

    .line 2437
    .restart local v12       #f:Ljava/io/File;
    .restart local v14       #filenumber:I
    :cond_3
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->val$jpegData:[B

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/sec/android/app/camera/ImageSavingUtils;->addImage(ILjava/lang/String;Ljava/lang/String;JLandroid/location/Location;Landroid/graphics/Bitmap;[BIII)Z

    .line 2439
    new-instance v21, Landroid/content/ContentValues;

    const/16 v1, 0xa

    move-object/from16 v0, v21

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 2441
    .local v21, values:Landroid/content/ContentValues;
    const-string v1, "_display_name"

    move-object/from16 v0, v21

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2442
    const-string v1, "datetaken"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2443
    const-string v1, "mime_type"

    const-string v6, "image/jpeg"

    move-object/from16 v0, v21

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2444
    const-string v1, "orientation"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2445
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

    move-object/from16 v0, v21

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2447
    const/4 v13, 0x0

    .line 2451
    .local v13, fileUri:Landroid/net/Uri;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2454
    const-string v1, "CamcorderEngine"

    const-string v6, "Insert contextual tag"

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2461
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

    move-object/from16 v0, v21

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 2462
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

    move-object/from16 v0, v21

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 2466
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    #getter for: Lcom/sec/android/app/camera/CamcorderEngine;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->access$1000(Lcom/sec/android/app/camera/CamcorderEngine;)Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v21

    invoke-virtual {v1, v6, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    .line 2468
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

    invoke-static {v1, v13, v6, v7}, Lcom/sec/android/app/camera/ImageSavingUtils;->setImageSize(Landroid/content/ContentResolver;Landroid/net/Uri;J)V

    .line 2470
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v1, :cond_5

    .line 2471
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.camera.NEW_PICTURE"

    invoke-direct {v6, v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2482
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    .line 2483
    new-instance v16, Landroid/content/Intent;

    const-string v1, "com.sec.android.cloudagent.ACTION_REQUEST_CAPTURED"

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2484
    .local v16, i:Landroid/content/Intent;
    const-string v1, "LOCALPATH"

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

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2486
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2488
    const-string v1, "CamcorderEngine"

    const-string v6, "Google drive: Camera auto upload"

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2499
    .end local v16           #i:Landroid/content/Intent;
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 2500
    return-void

    .line 2491
    :catch_1
    move-exception v20

    .line 2492
    .local v20, sfe:Landroid/database/sqlite/SQLiteFullException;
    const-string v1, "CamcorderEngine"

    const-string v6, "Not enough space in database"

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2493
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    new-instance v6, Lcom/sec/android/app/camera/CamcorderEngine$7$1$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/sec/android/app/camera/CamcorderEngine$7$1$1;-><init>(Lcom/sec/android/app/camera/CamcorderEngine$7$1;)V

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_3
.end method
