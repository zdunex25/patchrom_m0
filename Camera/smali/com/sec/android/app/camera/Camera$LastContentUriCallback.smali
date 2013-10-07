.class Lcom/sec/android/app/camera/Camera$LastContentUriCallback;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LastContentUriCallback"
.end annotation


# instance fields
.field private mKeyValue:Ljava/lang/String;

.field private mRectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter "keyValue"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5505
    .local p3, rectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/RectF;>;"
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5506
    iput-object p2, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mKeyValue:Ljava/lang/String;

    .line 5507
    iput-object p3, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mRectList:Ljava/util/ArrayList;

    .line 5508
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x1

    .line 5511
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v9

    if-nez v9, :cond_1

    .line 5512
    const-string v9, "Camera"

    const-string v10, "onCompleted: mCameraEnine is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5645
    :cond_0
    :goto_0
    return-void

    .line 5520
    :cond_1
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9, v13}, Lcom/sec/android/app/camera/Camera;->setIsLaunchGallery(Z)V

    .line 5523
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v12, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v12}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 5525
    const-string v9, "quickview"

    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mKeyValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "reviewon"

    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mKeyValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 5526
    :cond_2
    const-string v9, "reviewon"

    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mKeyValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v9

    const/16 v10, 0x12

    if-ne v9, v10, :cond_3

    .line 5528
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.intent.action.BUDDY_PHOTO_SHARING"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5529
    .local v4, intent:Landroid/content/Intent;
    const-string v9, "image/*"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 5530
    const-string v9, "FACE_IMAGE_URI"

    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5531
    const-string v9, "FACE_IMAGE_MODIFIED_DATE"

    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraEngine;->getLastDateTaken()J

    move-result-wide v10

    invoke-virtual {v4, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 5532
    const-string v9, "FACE_IMAGE_PATH"

    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5533
    const-string v9, "FACE_IMAGE_SIZE"

    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v11}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v4, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 5534
    const-string v9, "startApp"

    const-string v10, "camera"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5535
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9, v4}, Lcom/sec/android/app/camera/Camera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5567
    .end local v4           #intent:Landroid/content/Intent;
    :goto_1
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9, v14, v14}, Lcom/sec/android/app/camera/Camera;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 5538
    :catch_0
    move-exception v1

    .line 5539
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v9, "Camera"

    const-string v10, "Gallery was disabled!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5540
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9, v14}, Lcom/sec/android/app/camera/Camera;->setIsLaunchGallery(Z)V

    goto/16 :goto_0

    .line 5544
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :cond_3
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 5545
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v9, "com.miui.gallery"

    const-string v10, "com.miui.gallery.app.Gallery"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5549
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 5550
    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5551
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5556
    :goto_2
    const-string v9, "from-Camera"

    invoke-virtual {v4, v9, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5558
    :try_start_1
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9, v4}, Lcom/sec/android/app/camera/Camera;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 5559
    :catch_1
    move-exception v2

    .line 5560
    .local v2, ex:Landroid/content/ActivityNotFoundException;
    const-string v9, "Camera"

    const-string v10, "Gallery was disabled!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5561
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9, v14}, Lcom/sec/android/app/camera/Camera;->setIsLaunchGallery(Z)V

    goto/16 :goto_0

    .line 5553
    .end local v2           #ex:Landroid/content/ActivityNotFoundException;
    :cond_4
    sget-object v9, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_2

    .line 5568
    .end local v4           #intent:Landroid/content/Intent;
    :cond_5
    const-string v9, "from_app"

    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mKeyValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 5569
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 5570
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 5572
    :cond_6
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 5573
    .local v7, newExtras:Landroid/os/Bundle;
    const-string v9, "fromApp"

    invoke-virtual {v7, v9, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5575
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$1700(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 5576
    const-string v9, "circle"

    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$1700(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 5577
    const-string v9, "circleCrop"

    const-string v10, "true"

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5590
    :cond_7
    :goto_3
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$1800(Lcom/sec/android/app/camera/Camera;)Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_e

    .line 5591
    const-string v9, "output"

    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$1800(Lcom/sec/android/app/camera/Camera;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5592
    const/4 v8, 0x0

    .line 5594
    .local v8, outputStream:Ljava/io/OutputStream;
    :try_start_2
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$1800(Lcom/sec/android/app/camera/Camera;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v8

    .line 5596
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v5

    .line 5597
    .local v5, lastCaptureData:Lcom/sec/android/app/camera/CaptureData;
    if-eqz v5, :cond_8

    .line 5598
    invoke-virtual {v5}, Lcom/sec/android/app/camera/CaptureData;->getCaptureData()[B

    move-result-object v6

    .line 5600
    .local v6, lastCaptureRawData:[B
    if-eqz v6, :cond_8

    .line 5601
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #setter for: Lcom/sec/android/app/camera/Camera;->mLastCaptureRawData:[B
    invoke-static {v9, v6}, Lcom/sec/android/app/camera/Camera;->access$1902(Lcom/sec/android/app/camera/Camera;[B)[B

    .line 5604
    .end local v6           #lastCaptureRawData:[B
    :cond_8
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mLastCaptureRawData:[B
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$1900(Lcom/sec/android/app/camera/Camera;)[B

    move-result-object v9

    if-eqz v9, :cond_9

    .line 5605
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mLastCaptureRawData:[B
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$1900(Lcom/sec/android/app/camera/Camera;)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write([B)V

    .line 5608
    :cond_9
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 5612
    invoke-static {v8}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 5620
    .end local v5           #lastCaptureData:Lcom/sec/android/app/camera/CaptureData;
    .end local v8           #outputStream:Ljava/io/OutputStream;
    :goto_4
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mSkipSaveDiscard:Z
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$2100(Lcom/sec/android/app/camera/Camera;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 5621
    const-string v9, "skip-savediscard"

    invoke-virtual {v7, v9, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5624
    :cond_a
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 5625
    const-string v9, "latitude"

    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v10

    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v7, v9, v10, v11}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 5626
    const-string v9, "longitude"

    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v10

    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-virtual {v7, v9, v10, v11}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 5628
    :cond_b
    const-string v9, "takenTime"

    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraEngine;->getLastDateTaken()J

    move-result-wide v10

    invoke-virtual {v7, v9, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 5631
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 5632
    const-string v9, "weather"

    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->getWeather()I

    move-result v10

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5633
    const-string v9, "cityId"

    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->getCityId()J

    move-result-wide v10

    invoke-virtual {v7, v9, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 5637
    :cond_c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5638
    .local v0, cropIntent:Landroid/content/Intent;
    const-string v9, "com.sec.android.app.camera"

    const-string v10, "com.sec.android.app.camera.CropImage"

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5640
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5641
    invoke-virtual {v0, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 5643
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    const/16 v10, 0x7d1

    invoke-virtual {v9, v0, v10}, Lcom/sec/android/app/camera/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 5578
    .end local v0           #cropIntent:Landroid/content/Intent;
    :cond_d
    const-string v9, "true"

    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$1700(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 5579
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 5580
    .restart local v4       #intent:Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 5582
    .local v3, extras:Landroid/os/Bundle;
    const-string v9, "rectCrop"

    const-string v10, "true"

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5583
    const-string v9, "aspectX"

    const-string v10, "aspectX"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5584
    const-string v9, "aspectY"

    const-string v10, "aspectY"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5585
    const-string v9, "outputX"

    const-string v10, "outputX"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5586
    const-string v9, "outputY"

    const-string v10, "outputY"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 5609
    .end local v3           #extras:Landroid/os/Bundle;
    .end local v4           #intent:Landroid/content/Intent;
    .restart local v8       #outputStream:Ljava/io/OutputStream;
    :catch_2
    move-exception v9

    .line 5612
    invoke-static {v8}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_4

    :catchall_0
    move-exception v9

    invoke-static {v8}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v9

    .line 5614
    .end local v8           #outputStream:Ljava/io/OutputStream;
    :cond_e
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mReturnUri:Z
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$2000(Lcom/sec/android/app/camera/Camera;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 5615
    const-string v9, "return-uri"

    invoke-virtual {v7, v9, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 5617
    :cond_f
    const-string v9, "return-data"

    invoke-virtual {v7, v9, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 5536
    .end local v7           #newExtras:Landroid/os/Bundle;
    :catch_3
    move-exception v9

    goto/16 :goto_1
.end method
