.class Lcom/android/camera/PhotoModule$8$1;
.super Ljava/lang/Thread;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoModule$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/PhotoModule$8;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule$8;)V
    .locals 0
    .parameter

    .prologue
    .line 1817
    iput-object p1, p0, Lcom/android/camera/PhotoModule$8$1;->this$1:Lcom/android/camera/PhotoModule$8;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 1819
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$6300()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v11, v0, [Landroid/net/Uri;

    .line 1820
    .local v11, strArray:[Landroid/net/Uri;
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$6300()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1823
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$8$1;->this$1:Lcom/android/camera/PhotoModule$8;

    iget-object v0, v0, Lcom/android/camera/PhotoModule$8;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$900(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v10

    .line 1824
    .local v10, s:Landroid/hardware/Camera$Size;
    iget-object v0, p0, Lcom/android/camera/PhotoModule$8$1;->this$1:Lcom/android/camera/PhotoModule$8;

    iget-object v0, v0, Lcom/android/camera/PhotoModule$8;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$4900(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$ImageNamer;

    move-result-object v0

    iget-object v4, p0, Lcom/android/camera/PhotoModule$8$1;->this$1:Lcom/android/camera/PhotoModule$8;

    iget-object v4, v4, Lcom/android/camera/PhotoModule$8;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$6200(Lcom/android/camera/PhotoModule;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v4, p0, Lcom/android/camera/PhotoModule$8$1;->this$1:Lcom/android/camera/PhotoModule$8;

    iget-object v4, v4, Lcom/android/camera/PhotoModule$8;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v2, v4, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    iget v4, v10, Landroid/hardware/Camera$Size;->width:I

    iget v5, v10, Landroid/hardware/Camera$Size;->height:I

    iget-object v6, p0, Lcom/android/camera/PhotoModule$8$1;->this$1:Lcom/android/camera/PhotoModule$8;

    iget-object v6, v6, Lcom/android/camera/PhotoModule$8;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mJpegRotation:I
    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$4800(Lcom/android/camera/PhotoModule;)I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/PhotoModule$ImageNamer;->prepareUri(Landroid/content/ContentResolver;JIII)V

    .line 1825
    iget-object v0, p0, Lcom/android/camera/PhotoModule$8$1;->this$1:Lcom/android/camera/PhotoModule$8;

    iget-object v0, v0, Lcom/android/camera/PhotoModule$8;->val$hdr:Lcom/android/camera/HdrSoftwareProcessor;

    iget-object v4, p0, Lcom/android/camera/PhotoModule$8$1;->this$1:Lcom/android/camera/PhotoModule$8;

    iget-object v4, v4, Lcom/android/camera/PhotoModule$8;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v0, v4, v11}, Lcom/android/camera/HdrSoftwareProcessor;->prepare(Landroid/content/Context;[Landroid/net/Uri;)V

    .line 1827
    iget-object v0, p0, Lcom/android/camera/PhotoModule$8$1;->this$1:Lcom/android/camera/PhotoModule$8;

    iget-object v0, v0, Lcom/android/camera/PhotoModule$8;->val$hdr:Lcom/android/camera/HdrSoftwareProcessor;

    iget-object v4, p0, Lcom/android/camera/PhotoModule$8$1;->this$1:Lcom/android/camera/PhotoModule$8;

    iget-object v4, v4, Lcom/android/camera/PhotoModule$8;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/camera/HdrSoftwareProcessor;->computeHDR(Landroid/content/Context;)[B

    move-result-object v1

    .line 1829
    .local v1, jpegData:[B
    iget-object v0, p0, Lcom/android/camera/PhotoModule$8$1;->this$1:Lcom/android/camera/PhotoModule$8;

    iget-object v0, v0, Lcom/android/camera/PhotoModule$8;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$4900(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$ImageNamer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$ImageNamer;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 1830
    .local v2, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/camera/PhotoModule$8$1;->this$1:Lcom/android/camera/PhotoModule$8;

    iget-object v0, v0, Lcom/android/camera/PhotoModule$8;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Lcom/android/camera/CameraActivity;->addSecureAlbumItemIfNeeded(ZLandroid/net/Uri;)V

    .line 1831
    iget-object v0, p0, Lcom/android/camera/PhotoModule$8$1;->this$1:Lcom/android/camera/PhotoModule$8;

    iget-object v0, v0, Lcom/android/camera/PhotoModule$8;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$4900(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$ImageNamer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$ImageNamer;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 1832
    .local v3, title:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/camera/PhotoModule$8$1;->this$1:Lcom/android/camera/PhotoModule$8;

    iget-object v0, v0, Lcom/android/camera/PhotoModule$8;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mImageSaver:Lcom/android/camera/PhotoModule$ImageSaver;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$5000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$ImageSaver;

    move-result-object v0

    iget-object v4, p0, Lcom/android/camera/PhotoModule$8$1;->this$1:Lcom/android/camera/PhotoModule$8;

    iget-object v4, v4, Lcom/android/camera/PhotoModule$8;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;
    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$6500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/LocationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    iget v5, v10, Landroid/hardware/Camera$Size;->width:I

    iget v6, v10, Landroid/hardware/Camera$Size;->height:I

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/PhotoModule$ImageSaver;->addImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1840
    .end local v1           #jpegData:[B
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #title:Ljava/lang/String;
    .end local v10           #s:Landroid/hardware/Camera$Size;
    :goto_0
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$6300()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v9, v0, :cond_0

    .line 1841
    invoke-static {}, Lcom/android/camera/Storage;->getStorage()Lcom/android/camera/Storage;

    move-result-object v4

    iget-object v0, p0, Lcom/android/camera/PhotoModule$8$1;->this$1:Lcom/android/camera/PhotoModule$8;

    iget-object v0, v0, Lcom/android/camera/PhotoModule$8;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$6200(Lcom/android/camera/PhotoModule;)Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {}, Lcom/android/camera/PhotoModule;->access$6300()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v4, v5, v0}, Lcom/android/camera/Storage;->deleteImage(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1840
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1835
    .end local v9           #i:I
    :catch_0
    move-exception v8

    .line 1836
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "CAM_PhotoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not make HDR final shot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1845
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v9       #i:I
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$8$1;->this$1:Lcom/android/camera/PhotoModule$8;

    iget-object v0, v0, Lcom/android/camera/PhotoModule$8;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$900(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v4, p0, Lcom/android/camera/PhotoModule$8$1;->this$1:Lcom/android/camera/PhotoModule$8;

    iget-object v4, v4, Lcom/android/camera/PhotoModule$8;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;
    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$6600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ComboPreferences;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/ComboPreferences;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 1846
    iget-object v0, p0, Lcom/android/camera/PhotoModule$8$1;->this$1:Lcom/android/camera/PhotoModule$8;

    iget-object v0, v0, Lcom/android/camera/PhotoModule$8;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    iget-object v4, p0, Lcom/android/camera/PhotoModule$8$1;->this$1:Lcom/android/camera/PhotoModule$8;

    iget-object v4, v4, Lcom/android/camera/PhotoModule$8;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$900(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1848
    iget-object v0, p0, Lcom/android/camera/PhotoModule$8$1;->this$1:Lcom/android/camera/PhotoModule$8;

    iget-object v0, v0, Lcom/android/camera/PhotoModule$8;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mHdrProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$6700(Lcom/android/camera/PhotoModule;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1849
    iget-object v0, p0, Lcom/android/camera/PhotoModule$8$1;->this$1:Lcom/android/camera/PhotoModule$8;

    iget-object v0, v0, Lcom/android/camera/PhotoModule$8;->this$0:Lcom/android/camera/PhotoModule;

    #setter for: Lcom/android/camera/PhotoModule;->mHDRRendering:Z
    invoke-static {v0, v12}, Lcom/android/camera/PhotoModule;->access$6802(Lcom/android/camera/PhotoModule;Z)Z

    .line 1850
    return-void
.end method
