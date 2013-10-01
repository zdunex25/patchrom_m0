.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.source "ImageFilterTinyPlanet.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAngle:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x14

    .line 50
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;-><init>()V

    .line 32
    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;->mAngle:F

    .line 51
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;->setFilterType(B)V

    .line 52
    const-string v0, "TinyPlanet"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;->mName:Ljava/lang/String;

    .line 54
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;->mMinParameter:I

    .line 55
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;->mMaxParameter:I

    .line 56
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;->mDefaultParameter:I

    .line 57
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;->mPreviewParameter:I

    .line 58
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;->mParameter:I

    .line 59
    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;->mAngle:F

    .line 60
    return-void
.end method

.method private applyXmp(Landroid/graphics/Bitmap;Lcom/adobe/xmp/XMPMeta;I)Landroid/graphics/Bitmap;
    .locals 21
    .parameter "bitmapIn"
    .parameter "xmp"
    .parameter "intermediateWidth"

    .prologue
    .line 112
    :try_start_0
    const-string v17, "CroppedAreaImageWidthPixels"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v6

    .line 114
    .local v6, croppedAreaWidth:I
    const-string v17, "CroppedAreaImageHeightPixels"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v5

    .line 116
    .local v5, croppedAreaHeight:I
    const-string v17, "FullPanoWidthPixels"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v10

    .line 118
    .local v10, fullPanoWidth:I
    const-string v17, "FullPanoHeightPixels"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v9

    .line 120
    .local v9, fullPanoHeight:I
    const-string v17, "CroppedAreaLeftPixels"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v11

    .line 121
    .local v11, left:I
    const-string v17, "CroppedAreaTopPixels"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v16

    .line 125
    .local v16, top:I
    const/4 v12, 0x0

    .line 126
    .local v12, paddedBitmap:Landroid/graphics/Bitmap;
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v10

    move/from16 v18, v0

    div-float v15, v17, v18

    .line 127
    .local v15, scale:F
    :goto_0
    if-nez v12, :cond_0

    .line 129
    int-to-float v0, v10

    move/from16 v17, v0

    mul-float v17, v17, v15

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    int-to-float v0, v9

    move/from16 v18, v0

    mul-float v18, v18, v15

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    :try_start_1
    sget-object v19, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v17 .. v19}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v12

    goto :goto_0

    .line 132
    :catch_0
    move-exception v8

    .line 133
    .local v8, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 134
    const/high16 v17, 0x4000

    div-float v15, v15, v17

    .line 135
    sget-object v17, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;->TAG:Ljava/lang/String;

    const-string v18, "No memory to create Full Tiny Planet create half"

    invoke-static/range {v17 .. v18}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 145
    .end local v5           #croppedAreaHeight:I
    .end local v6           #croppedAreaWidth:I
    .end local v8           #e:Ljava/lang/OutOfMemoryError;
    .end local v9           #fullPanoHeight:I
    .end local v10           #fullPanoWidth:I
    .end local v11           #left:I
    .end local v12           #paddedBitmap:Landroid/graphics/Bitmap;
    .end local v15           #scale:F
    .end local v16           #top:I
    :catch_1
    move-exception v17

    .line 148
    :goto_1
    return-object p1

    .line 138
    .restart local v5       #croppedAreaHeight:I
    .restart local v6       #croppedAreaWidth:I
    .restart local v9       #fullPanoHeight:I
    .restart local v10       #fullPanoWidth:I
    .restart local v11       #left:I
    .restart local v12       #paddedBitmap:Landroid/graphics/Bitmap;
    .restart local v15       #scale:F
    .restart local v16       #top:I
    :cond_0
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 140
    .local v13, paddedCanvas:Landroid/graphics/Canvas;
    add-int v14, v11, v6

    .line 141
    .local v14, right:I
    add-int v4, v16, v5

    .line 142
    .local v4, bottom:I
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v0, v11

    move/from16 v17, v0

    mul-float v17, v17, v15

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v15

    int-to-float v0, v14

    move/from16 v19, v0

    mul-float v19, v19, v15

    int-to-float v0, v4

    move/from16 v20, v0

    mul-float v20, v20, v15

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 143
    .local v7, destRect:Landroid/graphics/RectF;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v13, v0, v1, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_2
    .catch Lcom/adobe/xmp/XMPException; {:try_start_2 .. :try_end_2} :catch_1

    .line 144
    move-object/from16 p1, v12

    goto :goto_1
.end method

.method private static getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I
    .locals 1
    .parameter "xmp"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 152
    const-string v0, "http://ns.google.com/photos/1.0/panorama/"

    invoke-interface {p0, v0, p1}, Lcom/adobe/xmp/XMPMeta;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const-string v0, "http://ns.google.com/photos/1.0/panorama/"

    invoke-interface {p0, v0, p1}, Lcom/adobe/xmp/XMPMeta;->getPropertyInteger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 155
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "bitmapIn"
    .parameter "scaleFactor"
    .parameter "highQuality"

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 82
    .local v11, w:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 83
    .local v9, h:I
    int-to-float v0, v11

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    float-to-int v5, v0

    .line 84
    .local v5, outputSize:I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v10

    .line 86
    .local v10, preset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    if-eqz v10, :cond_0

    .line 87
    invoke-virtual {v10}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->getImageLoader()Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getXmpObject()Lcom/adobe/xmp/XMPMeta;

    move-result-object v12

    .line 89
    .local v12, xmp:Lcom/adobe/xmp/XMPMeta;
    if-eqz v12, :cond_0

    .line 90
    invoke-direct {p0, p1, v12, v11}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;->applyXmp(Landroid/graphics/Bitmap;Lcom/adobe/xmp/XMPMeta;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 94
    .end local v12           #xmp:Lcom/adobe/xmp/XMPMeta;
    :cond_0
    const/4 v4, 0x0

    .line 95
    .local v4, mBitmapOut:Landroid/graphics/Bitmap;
    :goto_0
    if-nez v4, :cond_1

    .line 97
    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 99
    :catch_0
    move-exception v8

    .line 100
    .local v8, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 101
    div-int/lit8 v5, v5, 0x2

    .line 102
    sget-object v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;->TAG:Ljava/lang/String;

    const-string v1, "No memory to create Full Tiny Planet create half"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    .end local v8           #e:Ljava/lang/OutOfMemoryError;
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;->mParameter:I

    int-to-float v0, v0

    const/high16 v1, 0x42c8

    div-float v6, v0, v1

    iget v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;->mAngle:F

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;->nativeApplyFilter(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap;IFF)V

    .line 107
    return-object v4
.end method

.method public getAngle()F
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;->mAngle:F

    return v0
.end method

.method public isNil()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap;IFF)V
.end method

.method public setAngle(F)V
    .locals 0
    .parameter "angle"

    .prologue
    .line 63
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;->mAngle:F

    .line 64
    return-void
.end method
