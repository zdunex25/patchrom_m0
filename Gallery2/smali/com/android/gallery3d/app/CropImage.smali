.class public Lcom/android/gallery3d/app/CropImage;
.super Lcom/android/gallery3d/app/AbstractGalleryActivity;
.source "CropImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/CropImage$LoadBitmapDataTask;,
        Lcom/android/gallery3d/app/CropImage$LoadDataTask;,
        Lcom/android/gallery3d/app/CropImage$SaveOutput;
    }
.end annotation


# static fields
.field public static final DOWNLOAD_BUCKET:Ljava/io/File;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapInIntent:Landroid/graphics/Bitmap;

.field private mBitmapScreenNail:Lcom/android/gallery3d/ui/BitmapScreenNail;

.field private mBitmapTileProvider:Lcom/android/gallery3d/ui/BitmapTileProvider;

.field private mCropView:Lcom/android/gallery3d/ui/CropView;

.field private mDoFaceDetection:Z

.field private mLoadBitmapTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mMainHandler:Landroid/os/Handler;

.field private mMediaItem:Lcom/android/gallery3d/data/MediaItem;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

.field private mSaveTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I

.field private mUseRegionDecoder:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 133
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "download"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/gallery3d/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;-><init>()V

    .line 138
    iput v1, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/CropImage;->mDoFaceDetection:Z

    .line 154
    iput-boolean v1, p0, Lcom/android/gallery3d/app/CropImage;->mUseRegionDecoder:Z

    .line 1027
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/CropImage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->dismissProgressDialogIfShown()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/BitmapRegionDecoder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/CropImage;->onBitmapRegionDecoderAvailable(Landroid/graphics/BitmapRegionDecoder;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage;->mLoadBitmapTask:Lcom/android/gallery3d/util/Future;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/CropImage;->onBitmapAvailable(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/CropImage;->getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/app/CropImage;->saveBitmapToUri(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/CropImage;->setAsWallpaper(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/CropImage;->saveToMediaProvider(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage;->mSaveTask:Lcom/android/gallery3d/util/Future;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/CropImage;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage;->mLoadTask:Lcom/android/gallery3d/util/Future;

    return-object p1
.end method

.method private changeExifData(Lcom/android/gallery3d/exif/ExifData;II)V
    .locals 3
    .parameter "data"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 412
    const/16 v0, 0x100

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/exif/ExifData;->addTag(S)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/gallery3d/exif/ExifTag;->setValue(I)V

    .line 413
    const/16 v0, 0x101

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/exif/ExifData;->addTag(S)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/gallery3d/exif/ExifTag;->setValue(I)V

    .line 414
    const/16 v0, 0x131

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/exif/ExifData;->addTag(S)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v0

    const-string v1, "Android Gallery"

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/ExifTag;->setValue(Ljava/lang/String;)V

    .line 415
    const/16 v0, 0x132

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/exif/ExifData;->addTag(S)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/exif/ExifTag;->setTimeValue(J)V

    .line 418
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifData;->removeThumbnailData()V

    .line 419
    return-void
.end method

.method private convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1
    .parameter "extension"

    .prologue
    .line 583
    const-string v0, "png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0
.end method

.method public static determineCompressFormat(Lcom/android/gallery3d/data/MediaObject;)Ljava/lang/String;
    .locals 3
    .parameter "obj"

    .prologue
    .line 319
    const-string v0, "JPEG"

    .line 320
    .local v0, compressFormat:Ljava/lang/String;
    instance-of v2, p0, Lcom/android/gallery3d/data/MediaItem;

    if-eqz v2, :cond_1

    .line 321
    check-cast p0, Lcom/android/gallery3d/data/MediaItem;

    .end local p0
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, mime:Ljava/lang/String;
    const-string v2, "png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 325
    :cond_0
    const-string v0, "PNG"

    .line 328
    .end local v1           #mime:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private dismissProgressDialogIfShown()V
    .locals 1

    .prologue
    .line 997
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 999
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1001
    :cond_0
    return-void
.end method

.method private drawInTiles(Landroid/graphics/Canvas;Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 13
    .parameter "canvas"
    .parameter "decoder"
    .parameter "rect"
    .parameter "dest"
    .parameter "sample"

    .prologue
    .line 771
    move/from16 v0, p5

    mul-int/lit16 v5, v0, 0x200

    .line 772
    .local v5, tileSize:I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 773
    .local v4, tileRect:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 774
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v10, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 775
    move/from16 v0, p5

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 776
    move-object/from16 v0, p4

    iget v10, v0, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    move-object/from16 v0, p4

    iget v11, v0, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 777
    move/from16 v0, p5

    int-to-float v10, v0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    move/from16 v0, p5

    int-to-float v11, v0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v11, v12

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 779
    new-instance v3, Landroid/graphics/Paint;

    const/4 v10, 0x2

    invoke-direct {v3, v10}, Landroid/graphics/Paint;-><init>(I)V

    .line 780
    .local v3, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/Rect;->left:I

    .local v6, tx:I
    const/4 v8, 0x0

    .line 781
    .local v8, x:I
    :goto_0
    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/Rect;->right:I

    if-ge v6, v10, :cond_2

    .line 782
    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .local v7, ty:I
    const/4 v9, 0x0

    .line 783
    .local v9, y:I
    :goto_1
    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v10, :cond_1

    .line 784
    add-int v10, v6, v5

    add-int v11, v7, v5

    invoke-virtual {v4, v6, v7, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 785
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 789
    monitor-enter p2

    .line 790
    :try_start_0
    invoke-virtual {p2, v4, v2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 791
    .local v1, bitmap:Landroid/graphics/Bitmap;
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 792
    int-to-float v10, v8

    int-to-float v11, v9

    invoke-virtual {p1, v1, v10, v11, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 793
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 783
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    add-int/2addr v7, v5

    add-int/lit16 v9, v9, 0x200

    goto :goto_1

    .line 791
    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 781
    :cond_1
    add-int/2addr v6, v5

    add-int/lit16 v8, v8, 0x200

    goto :goto_0

    .line 797
    .end local v7           #ty:I
    .end local v9           #y:I
    :cond_2
    return-void
.end method

.method private getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 22
    .parameter "rect"

    .prologue
    .line 632
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lez v2, :cond_6

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 634
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 636
    .local v8, extras:Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 637
    .local v10, outputX:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v11

    .line 638
    .local v11, outputY:I
    if-eqz v8, :cond_0

    .line 639
    const-string v2, "outputX"

    invoke-virtual {v8, v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 640
    const-string v2, "outputY"

    invoke-virtual {v8, v2, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 643
    :cond_0
    mul-int v2, v10, v11

    const v4, 0x4c4b40

    if-le v2, v4, :cond_1

    .line 644
    const v2, 0x4a989680

    int-to-float v4, v10

    div-float/2addr v2, v4

    int-to-float v4, v11

    div-float/2addr v2, v4

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v16

    .line 645
    .local v16, scale:F
    const-string v2, "CropImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scale down the cropped image: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    int-to-float v2, v10

    mul-float v2, v2, v16

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 647
    int-to-float v2, v11

    mul-float v2, v2, v16

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 652
    .end local v16           #scale:F
    :cond_1
    const/high16 v17, 0x3f80

    .line 653
    .local v17, scaleX:F
    const/high16 v18, 0x3f80

    .line 654
    .local v18, scaleY:F
    new-instance v6, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v6, v2, v4, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 655
    .local v6, dest:Landroid/graphics/Rect;
    if-eqz v8, :cond_2

    const-string v2, "scale"

    const/4 v4, 0x1

    invoke-virtual {v8, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 656
    :cond_2
    int-to-float v2, v10

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float v17, v2, v4

    .line 657
    int-to-float v2, v11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float v18, v2, v4

    .line 658
    if-eqz v8, :cond_3

    const-string v2, "scaleUpIfNeeded"

    const/4 v4, 0x0

    invoke-virtual {v8, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_5

    .line 660
    :cond_3
    const/high16 v2, 0x3f80

    cmpl-float v2, v17, v2

    if-lez v2, :cond_4

    const/high16 v17, 0x3f80

    .line 661
    :cond_4
    const/high16 v2, 0x3f80

    cmpl-float v2, v18, v2

    if-lez v2, :cond_5

    const/high16 v18, 0x3f80

    .line 666
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v17

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 667
    .local v13, rectWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v18

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 668
    .local v12, rectHeight:I
    sub-int v2, v10, v13

    int-to-float v2, v2

    const/high16 v4, 0x4000

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int v4, v11, v12

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int v5, v10, v13

    int-to-float v5, v5

    const/high16 v20, 0x4000

    div-float v5, v5, v20

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int v20, v11, v12

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x4000

    div-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v6, v2, v4, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 673
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_7

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    .line 675
    .local v19, source:Landroid/graphics/Bitmap;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 677
    .local v14, result:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 678
    .local v3, canvas:Landroid/graphics/Canvas;
    const/4 v2, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v3, v0, v1, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 722
    .end local v3           #canvas:Landroid/graphics/Canvas;
    .end local v14           #result:Landroid/graphics/Bitmap;
    .end local v19           #source:Landroid/graphics/Bitmap;
    :goto_1
    return-object v14

    .line 632
    .end local v6           #dest:Landroid/graphics/Rect;
    .end local v8           #extras:Landroid/os/Bundle;
    .end local v10           #outputX:I
    .end local v11           #outputY:I
    .end local v12           #rectHeight:I
    .end local v13           #rectWidth:I
    .end local v17           #scaleX:F
    .end local v18           #scaleY:F
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 682
    .restart local v6       #dest:Landroid/graphics/Rect;
    .restart local v8       #extras:Landroid/os/Bundle;
    .restart local v10       #outputX:I
    .restart local v11       #outputY:I
    .restart local v12       #rectHeight:I
    .restart local v13       #rectWidth:I
    .restart local v17       #scaleX:F
    .restart local v18       #scaleY:F
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/gallery3d/app/CropImage;->mUseRegionDecoder:Z

    if-eqz v2, :cond_9

    .line 683
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getFullImageRotation()I

    move-result v15

    .line 684
    .local v15, rotation:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/CropView;->getImageWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/CropView;->getImageHeight()I

    move-result v4

    rsub-int v5, v15, 0x168

    move-object/from16 v0, p1

    invoke-static {v0, v2, v4, v5}, Lcom/android/gallery3d/app/CropImage;->rotateRectangle(Landroid/graphics/Rect;III)V

    .line 686
    rsub-int v2, v15, 0x168

    invoke-static {v6, v10, v11, v2}, Lcom/android/gallery3d/app/CropImage;->rotateRectangle(Landroid/graphics/Rect;III)V

    .line 688
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 689
    .local v9, options:Landroid/graphics/BitmapFactory$Options;
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v2}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v7

    .line 691
    .local v7, sample:I
    iput v7, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 697
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/2addr v2, v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v2, v4, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/2addr v2, v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ne v2, v4, :cond_8

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v10, v2, :cond_8

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ne v11, v2, :cond_8

    if-nez v15, :cond_8

    .line 702
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/CropImage;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    monitor-enter v4

    .line 703
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/CropImage;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v9}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v14

    monitor-exit v4

    goto :goto_1

    .line 704
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 706
    :cond_8
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 708
    .restart local v14       #result:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 709
    .restart local v3       #canvas:Landroid/graphics/Canvas;
    invoke-static {v3, v10, v11, v15}, Lcom/android/gallery3d/app/CropImage;->rotateCanvas(Landroid/graphics/Canvas;III)V

    .line 710
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/CropImage;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/gallery3d/app/CropImage;->drawInTiles(Landroid/graphics/Canvas;Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    goto/16 :goto_1

    .line 713
    .end local v3           #canvas:Landroid/graphics/Canvas;
    .end local v7           #sample:I
    .end local v9           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v14           #result:Landroid/graphics/Bitmap;
    .end local v15           #rotation:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v15

    .line 714
    .restart local v15       #rotation:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/CropView;->getImageWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/CropView;->getImageHeight()I

    move-result v4

    rsub-int v5, v15, 0x168

    move-object/from16 v0, p1

    invoke-static {v0, v2, v4, v5}, Lcom/android/gallery3d/app/CropImage;->rotateRectangle(Landroid/graphics/Rect;III)V

    .line 716
    rsub-int v2, v15, 0x168

    invoke-static {v6, v10, v11, v2}, Lcom/android/gallery3d/app/CropImage;->rotateRectangle(Landroid/graphics/Rect;III)V

    .line 717
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 718
    .restart local v14       #result:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 719
    .restart local v3       #canvas:Landroid/graphics/Canvas;
    invoke-static {v3, v10, v11, v15}, Lcom/android/gallery3d/app/CropImage;->rotateCanvas(Landroid/graphics/Canvas;III)V

    .line 720
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v2, v0, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method private getExifData(Ljava/lang/String;)Lcom/android/gallery3d/exif/ExifData;
    .locals 7
    .parameter "path"

    .prologue
    .line 395
    const/4 v1, 0x0

    .line 397
    .local v1, is:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    .end local v1           #is:Ljava/io/FileInputStream;
    .local v2, is:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Lcom/android/gallery3d/exif/ExifReader;

    invoke-direct {v3}, Lcom/android/gallery3d/exif/ExifReader;-><init>()V

    .line 399
    .local v3, reader:Lcom/android/gallery3d/exif/ExifReader;
    invoke-virtual {v3, v2}, Lcom/android/gallery3d/exif/ExifReader;->read(Ljava/io/InputStream;)Lcom/android/gallery3d/exif/ExifData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 405
    .local v0, data:Lcom/android/gallery3d/exif/ExifData;
    invoke-static {v2}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v1, v2

    .end local v0           #data:Lcom/android/gallery3d/exif/ExifData;
    .end local v2           #is:Ljava/io/FileInputStream;
    .end local v3           #reader:Lcom/android/gallery3d/exif/ExifReader;
    .restart local v1       #is:Ljava/io/FileInputStream;
    :goto_0
    return-object v0

    .line 401
    :catch_0
    move-exception v4

    .line 402
    .local v4, t:Ljava/lang/Throwable;
    :goto_1
    :try_start_2
    const-string v5, "CropImage"

    const-string v6, "Cannot read EXIF data"

    invoke-static {v5, v6, v4}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 403
    const/4 v0, 0x0

    .line 405
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v4           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    :goto_2
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v5

    .end local v1           #is:Ljava/io/FileInputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    goto :goto_2

    .line 401
    .end local v1           #is:Ljava/io/FileInputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    :catch_1
    move-exception v4

    move-object v1, v2

    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private getFileExtension()Ljava/lang/String;
    .locals 4

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "outputFormat"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 594
    .local v1, requestFormat:Ljava/lang/String;
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v2}, Lcom/android/gallery3d/app/CropImage;->determineCompressFormat(Lcom/android/gallery3d/data/MediaObject;)Ljava/lang/String;

    move-result-object v0

    .line 598
    .local v0, outputFormat:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 599
    const-string v2, "png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string v2, "png"

    :goto_1
    return-object v2

    .end local v0           #outputFormat:Ljava/lang/String;
    :cond_1
    move-object v0, v1

    .line 594
    goto :goto_0

    .line 599
    .restart local v0       #outputFormat:Ljava/lang/String;
    :cond_2
    const-string v2, "jpg"

    goto :goto_1
.end method

.method private getMediaItemFromIntentData()Lcom/android/gallery3d/data/MediaItem;
    .locals 4

    .prologue
    .line 1004
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1005
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    .line 1006
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 1007
    if-nez v2, :cond_0

    .line 1008
    const-string v1, "CropImage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot get path for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", or no data given"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    const/4 v0, 0x0

    .line 1011
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaItem;

    goto :goto_0
.end method

.method private getOutputMimeType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 589
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->getFileExtension()Ljava/lang/String;

    move-result-object v0

    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "image/png"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "image/jpeg"

    goto :goto_0
.end method

.method private initializeData()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 871
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 873
    if-eqz v3, :cond_4

    .line 874
    const-string v0, "noFaceDetection"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 875
    const-string v0, "noFaceDetection"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/CropImage;->mDoFaceDetection:Z

    .line 878
    :cond_0
    const-string v0, "data"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    .line 880
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 881
    new-instance v0, Lcom/android/gallery3d/ui/BitmapTileProvider;

    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    const/16 v4, 0x140

    invoke-direct {v0, v3, v4}, Lcom/android/gallery3d/ui/BitmapTileProvider;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapTileProvider:Lcom/android/gallery3d/ui/BitmapTileProvider;

    .line 883
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapTileProvider:Lcom/android/gallery3d/ui/BitmapTileProvider;

    invoke-virtual {v0, v3, v2}, Lcom/android/gallery3d/ui/CropView;->setDataModel(Lcom/android/gallery3d/ui/TileImageView$Model;I)V

    .line 884
    iget-boolean v0, p0, Lcom/android/gallery3d/app/CropImage;->mDoFaceDetection:Z

    if-eqz v0, :cond_3

    .line 885
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/CropView;->detectFaces(Landroid/graphics/Bitmap;)V

    .line 889
    :goto_1
    iput v1, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    .line 935
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    .line 875
    goto :goto_0

    .line 887
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/CropView;->initializeHighlightRectangle()V

    goto :goto_1

    .line 894
    :cond_4
    const/4 v0, 0x0

    const v3, 0x7f0a018c

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/app/CropImage;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v3, v1, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 896
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 897
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mMainHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelMessage(Landroid/os/Message;)V

    .line 899
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->getMediaItemFromIntentData()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    .line 900
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v0, :cond_1

    .line 902
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_5

    .line 904
    :goto_3
    if-eqz v1, :cond_6

    .line 905
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/app/CropImage$LoadDataTask;

    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/app/CropImage$LoadDataTask;-><init>(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/data/MediaItem;)V

    new-instance v2, Lcom/android/gallery3d/app/CropImage$4;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/CropImage$4;-><init>(Lcom/android/gallery3d/app/CropImage;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mLoadTask:Lcom/android/gallery3d/util/Future;

    goto :goto_2

    :cond_5
    move v1, v2

    .line 902
    goto :goto_3

    .line 920
    :cond_6
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/app/CropImage$LoadBitmapDataTask;

    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/app/CropImage$LoadBitmapDataTask;-><init>(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/data/MediaItem;)V

    new-instance v2, Lcom/android/gallery3d/app/CropImage$5;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/CropImage$5;-><init>(Lcom/android/gallery3d/app/CropImage;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mLoadBitmapTask:Lcom/android/gallery3d/util/Future;

    goto :goto_2
.end method

.method private onBitmapAvailable(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 834
    if-nez p1, :cond_0

    .line 835
    const v0, 0x7f0a0193

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 836
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->finish()V

    .line 851
    :goto_0
    return-void

    .line 839
    :cond_0
    iput-boolean v1, p0, Lcom/android/gallery3d/app/CropImage;->mUseRegionDecoder:Z

    .line 840
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    .line 842
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 843
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 844
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    new-instance v1, Lcom/android/gallery3d/ui/BitmapTileProvider;

    const/16 v2, 0x200

    invoke-direct {v1, p1, v2}, Lcom/android/gallery3d/ui/BitmapTileProvider;-><init>(Landroid/graphics/Bitmap;I)V

    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/CropView;->setDataModel(Lcom/android/gallery3d/ui/TileImageView$Model;I)V

    .line 846
    iget-boolean v0, p0, Lcom/android/gallery3d/app/CropImage;->mDoFaceDetection:Z

    if-eqz v0, :cond_1

    .line 847
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/CropView;->detectFaces(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 849
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/CropView;->initializeHighlightRectangle()V

    goto :goto_0
.end method

.method private onBitmapRegionDecoderAvailable(Landroid/graphics/BitmapRegionDecoder;)V
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 802
    if-nez p1, :cond_0

    .line 803
    const v0, 0x7f0a0193

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 804
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->finish()V

    .line 831
    :goto_0
    return-void

    .line 807
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 808
    iput-boolean v0, p0, Lcom/android/gallery3d/app/CropImage;->mUseRegionDecoder:Z

    .line 809
    iput v0, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    .line 811
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 812
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v1

    .line 813
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v2

    .line 814
    const/4 v3, -0x1

    const v4, 0x75300

    invoke-static {v1, v2, v3, v4}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSize(IIII)I

    move-result v3

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 816
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v5, v5, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v3, v0}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 819
    new-instance v0, Lcom/android/gallery3d/ui/BitmapScreenNail;

    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v3}, Lcom/android/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapScreenNail:Lcom/android/gallery3d/ui/BitmapScreenNail;

    .line 821
    new-instance v0, Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;-><init>()V

    .line 822
    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapScreenNail:Lcom/android/gallery3d/ui/BitmapScreenNail;

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;II)V

    .line 823
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;)V

    .line 825
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getFullImageRotation()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/ui/CropView;->setDataModel(Lcom/android/gallery3d/ui/TileImageView$Model;I)V

    .line 826
    iget-boolean v0, p0, Lcom/android/gallery3d/app/CropImage;->mDoFaceDetection:Z

    if-eqz v0, :cond_1

    .line 827
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/CropView;->detectFaces(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 829
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/CropView;->initializeHighlightRectangle()V

    goto :goto_0
.end method

.method private onSaveClicked()V
    .locals 7

    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 606
    .local v1, extra:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/CropView;->getCropRectangle()Landroid/graphics/RectF;

    move-result-object v0

    .line 607
    .local v0, cropRect:Landroid/graphics/RectF;
    if-nez v0, :cond_0

    .line 629
    :goto_0
    return-void

    .line 608
    :cond_0
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    .line 609
    if-eqz v1, :cond_1

    const-string v3, "set-as-wallpaper"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v2, 0x7f0a01a5

    .line 612
    .local v2, messageId:I
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/CropImage;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {p0, v3, v4, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 614
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v3

    new-instance v4, Lcom/android/gallery3d/app/CropImage$SaveOutput;

    invoke-direct {v4, p0, v0}, Lcom/android/gallery3d/app/CropImage$SaveOutput;-><init>(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/RectF;)V

    new-instance v5, Lcom/android/gallery3d/app/CropImage$3;

    invoke-direct {v5, p0}, Lcom/android/gallery3d/app/CropImage$3;-><init>(Lcom/android/gallery3d/app/CropImage;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mSaveTask:Lcom/android/gallery3d/util/Future;

    goto :goto_0

    .line 609
    .end local v2           #messageId:I
    :cond_1
    const v2, 0x7f0a0199

    goto :goto_1
.end method

.method private static rotateCanvas(Landroid/graphics/Canvas;III)V
    .locals 2
    .parameter "canvas"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"

    .prologue
    .line 728
    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, p2, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 729
    int-to-float v0, p3

    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 730
    div-int/lit8 v0, p3, 0x5a

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 731
    neg-int v0, p1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    neg-int v1, p2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 735
    :goto_0
    return-void

    .line 733
    :cond_0
    neg-int v0, p2

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    neg-int v1, p1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method private static rotateRectangle(Landroid/graphics/Rect;III)V
    .locals 3
    .parameter "rect"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"

    .prologue
    .line 739
    if-eqz p3, :cond_0

    const/16 v2, 0x168

    if-ne p3, v2, :cond_1

    .line 763
    :cond_0
    :goto_0
    return-void

    .line 741
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 742
    .local v1, w:I
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 743
    .local v0, h:I
    sparse-switch p3, :sswitch_data_0

    .line 765
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 745
    :sswitch_0
    iget v2, p0, Landroid/graphics/Rect;->left:I

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 746
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p2, v2

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 747
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 748
    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 752
    :sswitch_1
    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int v2, p1, v2

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 753
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p2, v2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 754
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 755
    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 759
    :sswitch_2
    iget v2, p0, Landroid/graphics/Rect;->top:I

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 760
    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int v2, p1, v2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 761
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 762
    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 743
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method private saveBitmapToOutputStream(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    .locals 3
    .parameter "jc"
    .parameter "bitmap"
    .parameter "format"
    .parameter "os"

    .prologue
    const/4 v2, 0x0

    .line 551
    new-instance v0, Lcom/android/gallery3d/util/InterruptableOutputStream;

    invoke-direct {v0, p4}, Lcom/android/gallery3d/util/InterruptableOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 552
    .local v0, ios:Lcom/android/gallery3d/util/InterruptableOutputStream;
    new-instance v1, Lcom/android/gallery3d/app/CropImage$2;

    invoke-direct {v1, p0, v0}, Lcom/android/gallery3d/app/CropImage$2;-><init>(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/InterruptableOutputStream;)V

    invoke-interface {p1, v1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 559
    const/16 v1, 0x5a

    :try_start_0
    invoke-virtual {p2, p3, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 560
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 562
    :goto_0
    invoke-interface {p1, v2}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 563
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return v1

    .line 560
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 562
    :catchall_0
    move-exception v1

    invoke-interface {p1, v2}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 563
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v1
.end method

.method private saveBitmapToUri(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z
    .locals 4
    .parameter "jc"
    .parameter "bitmap"
    .parameter "uri"

    .prologue
    .line 569
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 571
    .local v1, out:Ljava/io/OutputStream;
    :try_start_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->getFileExtension()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/CropImage;->convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/gallery3d/app/CropImage;->saveBitmapToOutputStream(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 574
    :try_start_2
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 579
    .end local v1           #out:Ljava/io/OutputStream;
    :goto_0
    return v2

    .line 574
    .restart local v1       #out:Ljava/io/OutputStream;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v2
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 576
    .end local v1           #out:Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 577
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v2, "CropImage"

    const-string v3, "cannot write output"

    invoke-static {v2, v3, v0}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 579
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private saveGenericImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 12
    .parameter "jc"
    .parameter "cropped"

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v5, 0x0

    .line 520
    sget-object v0, Lcom/android/gallery3d/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/gallery3d/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 521
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cannot create download folder"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 524
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 525
    .local v6, now:J
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 528
    .local v4, filename:Ljava/lang/String;
    sget-object v3, Lcom/android/gallery3d/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/app/CropImage;->saveMedia(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;Lcom/android/gallery3d/exif/ExifData;)Ljava/io/File;

    move-result-object v8

    .line 529
    .local v8, output:Ljava/io/File;
    if-nez v8, :cond_1

    .line 544
    :goto_0
    return-object v5

    .line 531
    :cond_1
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 532
    .local v9, values:Landroid/content/ContentValues;
    const-string v0, "title"

    invoke-virtual {v9, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const-string v0, "_display_name"

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const-string v0, "datetaken"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 535
    const-string v0, "date_modified"

    div-long v1, v6, v10

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 536
    const-string v0, "date_added"

    div-long v1, v6, v10

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 537
    const-string v0, "mime_type"

    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->getOutputMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-string v0, "orientation"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 539
    const-string v0, "_data"

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-string v0, "_size"

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 542
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v9, v0, v1}, Lcom/android/gallery3d/app/CropImage;->setImageSize(Landroid/content/ContentValues;II)V

    .line 544
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_0
.end method

.method private saveLocalImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 15
    .parameter "jc"
    .parameter "cropped"

    .prologue
    .line 477
    iget-object v6, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    check-cast v6, Lcom/android/gallery3d/data/LocalImage;

    .line 479
    .local v6, localImage:Lcom/android/gallery3d/data/LocalImage;
    new-instance v9, Ljava/io/File;

    iget-object v0, v6, Lcom/android/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 480
    .local v9, oldPath:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 482
    .local v3, directory:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 483
    .local v4, filename:Ljava/lang/String;
    const/16 v0, 0x2e

    invoke-virtual {v4, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    .line 484
    .local v11, pos:I
    if-ltz v11, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v4, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 485
    :cond_0
    const/4 v10, 0x0

    .line 487
    .local v10, output:Ljava/io/File;
    const/4 v5, 0x0

    .line 488
    .local v5, exifData:Lcom/android/gallery3d/exif/ExifData;
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->getFileExtension()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/CropImage;->convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne v0, v1, :cond_1

    .line 489
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/CropImage;->getExifData(Ljava/lang/String;)Lcom/android/gallery3d/exif/ExifData;

    move-result-object v5

    .line 490
    if-eqz v5, :cond_1

    .line 491
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, v5, v0, v1}, Lcom/android/gallery3d/app/CropImage;->changeExifData(Lcom/android/gallery3d/exif/ExifData;II)V

    :cond_1
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 494
    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/app/CropImage;->saveMedia(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;Lcom/android/gallery3d/exif/ExifData;)Ljava/io/File;

    move-result-object v10

    .line 495
    if-nez v10, :cond_2

    const/4 v0, 0x0

    .line 515
    :goto_0
    return-object v0

    .line 497
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v13, 0x3e8

    div-long v7, v0, v13

    .line 498
    .local v7, now:J
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 499
    .local v12, values:Landroid/content/ContentValues;
    const-string v0, "title"

    iget-object v1, v6, Lcom/android/gallery3d/data/LocalImage;->caption:Ljava/lang/String;

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v0, "_display_name"

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string v0, "datetaken"

    iget-wide v1, v6, Lcom/android/gallery3d/data/LocalImage;->dateTakenInMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 502
    const-string v0, "date_modified"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 503
    const-string v0, "date_added"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 504
    const-string v0, "mime_type"

    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->getOutputMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string v0, "orientation"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 506
    const-string v0, "_data"

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const-string v0, "_size"

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 509
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v12, v0, v1}, Lcom/android/gallery3d/app/CropImage;->setImageSize(Landroid/content/ContentValues;II)V

    .line 511
    iget-wide v0, v6, Lcom/android/gallery3d/data/LocalImage;->latitude:D

    iget-wide v13, v6, Lcom/android/gallery3d/data/LocalImage;->longitude:D

    invoke-static {v0, v1, v13, v14}, Lcom/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 512
    const-string v0, "latitude"

    iget-wide v1, v6, Lcom/android/gallery3d/data/LocalImage;->latitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 513
    const-string v0, "longitude"

    iget-wide v1, v6, Lcom/android/gallery3d/data/LocalImage;->longitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 515
    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private saveMedia(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;Lcom/android/gallery3d/exif/ExifData;)Ljava/io/File;
    .locals 9
    .parameter "jc"
    .parameter "cropped"
    .parameter "directory"
    .parameter "filename"
    .parameter "exifData"

    .prologue
    .line 344
    const/4 v0, 0x0

    .line 345
    .local v0, candidate:Ljava/io/File;
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->getFileExtension()Ljava/lang/String;

    move-result-object v3

    .line 346
    .local v3, fileExtension:Ljava/lang/String;
    const/4 v5, 0x1

    .local v5, i:I
    :goto_0
    const/16 v6, 0x3e8

    if-ge v5, v6, :cond_0

    .line 347
    new-instance v0, Ljava/io/File;

    .end local v0           #candidate:Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, p3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 350
    .restart local v0       #candidate:Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_2

    .line 357
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_3

    .line 358
    :cond_1
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cannot create file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 351
    :catch_0
    move-exception v1

    .line 352
    .local v1, e:Ljava/io/IOException;
    const-string v6, "CropImage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to create new file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    const/4 v6, 0x0

    .line 391
    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return-object v6

    .line 346
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 361
    :cond_3
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Ljava/io/File;->setReadable(ZZ)Z

    .line 362
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Ljava/io/File;->setWritable(ZZ)Z

    .line 365
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 367
    .local v4, fos:Ljava/io/FileOutputStream;
    if-eqz p5, :cond_4

    .line 368
    :try_start_2
    new-instance v2, Lcom/android/gallery3d/exif/ExifOutputStream;

    invoke-direct {v2, v4}, Lcom/android/gallery3d/exif/ExifOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 369
    .local v2, eos:Lcom/android/gallery3d/exif/ExifOutputStream;
    invoke-virtual {v2, p5}, Lcom/android/gallery3d/exif/ExifOutputStream;->setExifData(Lcom/android/gallery3d/exif/ExifData;)V

    .line 370
    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/CropImage;->convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v6

    invoke-direct {p0, p1, p2, v6, v2}, Lcom/android/gallery3d/app/CropImage;->saveBitmapToOutputStream(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 377
    .end local v2           #eos:Lcom/android/gallery3d/exif/ExifOutputStream;
    :goto_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 386
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 387
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 388
    const/4 v6, 0x0

    goto :goto_1

    .line 373
    :cond_4
    :try_start_4
    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/CropImage;->convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v6

    invoke-direct {p0, p1, p2, v6, v4}, Lcom/android/gallery3d/app/CropImage;->saveBitmapToOutputStream(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 377
    :catchall_0
    move-exception v6

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    throw v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 379
    .end local v4           #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 380
    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "CropImage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to save image: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 382
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 383
    const/4 v6, 0x0

    goto :goto_1

    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :cond_5
    move-object v6, v0

    .line 391
    goto :goto_1
.end method

.method private savePicasaImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 15
    .parameter "jc"
    .parameter "cropped"

    .prologue
    .line 441
    sget-object v0, Lcom/android/gallery3d/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/gallery3d/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cannot create download folder"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v0}, Lcom/android/gallery3d/picasasource/PicasaSource;->getImageTitle(Lcom/android/gallery3d/data/MediaObject;)Ljava/lang/String;

    move-result-object v4

    .line 445
    .local v4, filename:Ljava/lang/String;
    const/16 v0, 0x2e

    invoke-virtual {v4, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    .line 446
    .local v13, pos:I
    if-ltz v13, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v4, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 447
    :cond_1
    new-instance v5, Lcom/android/gallery3d/exif/ExifData;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v5, v0}, Lcom/android/gallery3d/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    .line 448
    .local v5, exifData:Lcom/android/gallery3d/exif/ExifData;
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v0, v5}, Lcom/android/gallery3d/picasasource/PicasaSource;->extractExifValues(Lcom/android/gallery3d/data/MediaObject;Lcom/android/gallery3d/exif/ExifData;)V

    .line 449
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, v5, v0, v1}, Lcom/android/gallery3d/app/CropImage;->changeExifData(Lcom/android/gallery3d/exif/ExifData;II)V

    .line 450
    sget-object v3, Lcom/android/gallery3d/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/app/CropImage;->saveMedia(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;Lcom/android/gallery3d/exif/ExifData;)Ljava/io/File;

    move-result-object v12

    .line 451
    .local v12, output:Ljava/io/File;
    if-nez v12, :cond_2

    const/4 v0, 0x0

    .line 472
    :goto_0
    return-object v0

    .line 453
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v10, v0, v2

    .line 454
    .local v10, now:J
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 455
    .local v14, values:Landroid/content/ContentValues;
    const-string v0, "title"

    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v1}, Lcom/android/gallery3d/picasasource/PicasaSource;->getImageTitle(Lcom/android/gallery3d/data/MediaObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string v0, "_display_name"

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-string v0, "datetaken"

    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v1}, Lcom/android/gallery3d/picasasource/PicasaSource;->getDateTaken(Lcom/android/gallery3d/data/MediaObject;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 458
    const-string v0, "date_modified"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 459
    const-string v0, "date_added"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 460
    const-string v0, "mime_type"

    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->getOutputMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string v0, "orientation"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 462
    const-string v0, "_data"

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string v0, "_size"

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 464
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v14, v0, v1}, Lcom/android/gallery3d/app/CropImage;->setImageSize(Landroid/content/ContentValues;II)V

    .line 466
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v0}, Lcom/android/gallery3d/picasasource/PicasaSource;->getLatitude(Lcom/android/gallery3d/data/MediaObject;)D

    move-result-wide v6

    .line 467
    .local v6, latitude:D
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v0}, Lcom/android/gallery3d/picasasource/PicasaSource;->getLongitude(Lcom/android/gallery3d/data/MediaObject;)D

    move-result-wide v8

    .line 468
    .local v8, longitude:D
    invoke-static {v6, v7, v8, v9}, Lcom/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 469
    const-string v0, "latitude"

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 470
    const-string v0, "longitude"

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 472
    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private saveToMediaProvider(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 1
    .parameter "jc"
    .parameter "cropped"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v0}, Lcom/android/gallery3d/picasasource/PicasaSource;->isPicasaImage(Lcom/android/gallery3d/data/MediaObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/CropImage;->savePicasaImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    .line 427
    :goto_0
    return-object v0

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    instance-of v0, v0, Lcom/android/gallery3d/data/LocalImage;

    if-eqz v0, :cond_1

    .line 425
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/CropImage;->saveLocalImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 427
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/CropImage;->saveGenericImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private setAsWallpaper(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z
    .locals 3
    .parameter "jc"
    .parameter "wallpaper"

    .prologue
    .line 333
    :try_start_0
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, e:Ljava/io/IOException;
    const-string v1, "CropImage"

    const-string v2, "fail to set wall paper"

    invoke-static {v1, v2, v0}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setCropParameters()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 854
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 855
    if-nez v0, :cond_1

    .line 868
    :cond_0
    :goto_0
    return-void

    .line 857
    :cond_1
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 858
    const-string v2, "aspectY"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 859
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 860
    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/ui/CropView;->setAspectRatio(F)V

    .line 863
    :cond_2
    const-string v1, "spotlightX"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 864
    const-string v2, "spotlightY"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 865
    cmpl-float v2, v1, v4

    if-eqz v2, :cond_0

    cmpl-float v2, v0, v4

    if-eqz v2, :cond_0

    .line 866
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v2, v1, v0}, Lcom/android/gallery3d/ui/CropView;->setSpotlightRatio(FF)V

    goto :goto_0
.end method

.method private static setImageSize(Landroid/content/ContentValues;II)V
    .locals 2
    .parameter "values"
    .parameter "width"
    .parameter "height"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 434
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_MEDIA_COLUMNS_WIDTH_AND_HEIGHT:Z

    if-eqz v0, :cond_0

    .line 435
    const-string v0, "width"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 436
    const-string v0, "height"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 438
    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->finish()V

    .line 265
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "bundle"

    .prologue
    const/4 v5, 0x0

    .line 166
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 167
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/app/CropImage;->requestWindowFeature(I)Z

    .line 168
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/app/CropImage;->requestWindowFeature(I)Z

    .line 171
    const v3, 0x7f04000a

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/app/CropImage;->setContentView(I)V

    .line 172
    new-instance v3, Lcom/android/gallery3d/ui/CropView;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/ui/CropView;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    .line 173
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-interface {v3, v4}, Lcom/android/gallery3d/ui/GLRoot;->setContentPane(Lcom/android/gallery3d/ui/GLView;)V

    .line 175
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 176
    .local v0, actionBar:Landroid/app/ActionBar;
    const/16 v1, 0xc

    .line 178
    .local v1, displayOptions:I
    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 180
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 181
    .local v2, extra:Landroid/os/Bundle;
    if-eqz v2, :cond_1

    .line 182
    const-string v3, "set-as-wallpaper"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    const v3, 0x7f0a01a4

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/app/CropImage;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 185
    :cond_0
    const-string v3, "showWhenLocked"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 186
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 190
    :cond_1
    new-instance v3, Lcom/android/gallery3d/app/CropImage$1;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/gallery3d/app/CropImage$1;-><init>(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mMainHandler:Landroid/os/Handler;

    .line 227
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->setCropParameters()V

    .line 228
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 237
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 238
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f120002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 239
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 989
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onDestroy()V

    .line 990
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapScreenNail:Lcom/android/gallery3d/ui/BitmapScreenNail;

    if-eqz v0, :cond_0

    .line 991
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapScreenNail:Lcom/android/gallery3d/ui/BitmapScreenNail;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapScreenNail;->recycle()V

    .line 992
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapScreenNail:Lcom/android/gallery3d/ui/BitmapScreenNail;

    .line 994
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 244
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 259
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 246
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->finish()V

    goto :goto_0

    .line 250
    :sswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/CropImage;->setResult(I)V

    .line 251
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->finish()V

    goto :goto_0

    .line 255
    :sswitch_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->onSaveClicked()V

    goto :goto_0

    .line 244
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f100014 -> :sswitch_1
        0x7f1000ca -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 5

    .prologue
    .line 955
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onPause()V

    .line 956
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->dismissProgressDialogIfShown()V

    .line 958
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mLoadTask:Lcom/android/gallery3d/util/Future;

    .line 959
    .local v1, loadTask:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/graphics/BitmapRegionDecoder;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/gallery3d/util/Future;->isDone()Z

    move-result v4

    if-nez v4, :cond_0

    .line 961
    invoke-interface {v1}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 962
    invoke-interface {v1}, Lcom/android/gallery3d/util/Future;->waitDone()V

    .line 965
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mLoadBitmapTask:Lcom/android/gallery3d/util/Future;

    .line 966
    .local v0, loadBitmapTask:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->isDone()Z

    move-result v4

    if-nez v4, :cond_1

    .line 968
    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 969
    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->waitDone()V

    .line 972
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mSaveTask:Lcom/android/gallery3d/util/Future;

    .line 973
    .local v3, saveTask:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/content/Intent;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/android/gallery3d/util/Future;->isDone()Z

    move-result v4

    if-nez v4, :cond_2

    .line 975
    invoke-interface {v3}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 976
    invoke-interface {v3}, Lcom/android/gallery3d/util/Future;->waitDone()V

    .line 978
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v2

    .line 979
    .local v2, root:Lcom/android/gallery3d/ui/GLRoot;
    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 981
    :try_start_0
    iget-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/CropView;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 983
    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 985
    return-void

    .line 983
    :catchall_0
    move-exception v4

    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v4
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 939
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onResume()V

    .line 940
    iget v1, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->initializeData()V

    .line 941
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->onSaveClicked()V

    .line 944
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 945
    .local v0, root:Lcom/android/gallery3d/ui/GLRoot;
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 947
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/CropView;->resume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 949
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 951
    return-void

    .line 949
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "saveState"

    .prologue
    .line 232
    const-string v0, "state"

    iget v1, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 233
    return-void
.end method
