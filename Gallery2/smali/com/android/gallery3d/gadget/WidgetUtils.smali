.class public Lcom/android/gallery3d/gadget/WidgetUtils;
.super Ljava/lang/Object;
.source "WidgetUtils.java"


# static fields
.field private static sStackPhotoHeight:I

.field private static sStackPhotoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0xdc

    sput v0, Lcom/android/gallery3d/gadget/WidgetUtils;->sStackPhotoWidth:I

    .line 36
    const/16 v0, 0xaa

    sput v0, Lcom/android/gallery3d/gadget/WidgetUtils;->sStackPhotoHeight:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static createWidgetBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bitmap"
    .parameter "rotation"

    .prologue
    .line 58
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 59
    .local v5, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 62
    .local v1, h:I
    div-int/lit8 v6, p1, 0x5a

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_0

    .line 63
    sget v6, Lcom/android/gallery3d/gadget/WidgetUtils;->sStackPhotoWidth:I

    int-to-float v6, v6

    int-to-float v7, v5

    div-float/2addr v6, v7

    sget v7, Lcom/android/gallery3d/gadget/WidgetUtils;->sStackPhotoHeight:I

    int-to-float v7, v7

    int-to-float v8, v1

    div-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 70
    .local v3, scale:F
    :goto_0
    sget v6, Lcom/android/gallery3d/gadget/WidgetUtils;->sStackPhotoWidth:I

    sget v7, Lcom/android/gallery3d/gadget/WidgetUtils;->sStackPhotoHeight:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 72
    .local v4, target:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 73
    .local v0, canvas:Landroid/graphics/Canvas;
    sget v6, Lcom/android/gallery3d/gadget/WidgetUtils;->sStackPhotoWidth:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sget v7, Lcom/android/gallery3d/gadget/WidgetUtils;->sStackPhotoHeight:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 74
    int-to-float v6, p1

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 75
    invoke-virtual {v0, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 76
    new-instance v2, Landroid/graphics/Paint;

    const/4 v6, 0x6

    invoke-direct {v2, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 77
    .local v2, paint:Landroid/graphics/Paint;
    neg-int v6, v5

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    neg-int v7, v1

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v0, p0, v6, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 78
    return-object v4

    .line 66
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v2           #paint:Landroid/graphics/Paint;
    .end local v3           #scale:F
    .end local v4           #target:Landroid/graphics/Bitmap;
    :cond_0
    sget v6, Lcom/android/gallery3d/gadget/WidgetUtils;->sStackPhotoWidth:I

    int-to-float v6, v6

    int-to-float v7, v1

    div-float/2addr v6, v7

    sget v7, Lcom/android/gallery3d/gadget/WidgetUtils;->sStackPhotoHeight:I

    int-to-float v7, v7

    int-to-float v8, v5

    div-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .restart local v3       #scale:F
    goto :goto_0
.end method

.method public static createWidgetBitmap(Lcom/android/gallery3d/data/MediaItem;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "image"

    .prologue
    .line 48
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/data/MediaItem;->requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    sget-object v2, Lcom/android/gallery3d/util/ThreadPool;->JOB_CONTEXT_STUB:Lcom/android/gallery3d/util/ThreadPool$JobContext;

    invoke-interface {v1, v2}, Lcom/android/gallery3d/util/ThreadPool$Job;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 50
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 51
    const-string v1, "WidgetUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to get image of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v1, 0x0

    .line 54
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/gadget/WidgetUtils;->createWidgetBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 43
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f0e004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/gallery3d/gadget/WidgetUtils;->sStackPhotoWidth:I

    .line 44
    const v1, 0x7f0e004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/gallery3d/gadget/WidgetUtils;->sStackPhotoHeight:I

    .line 45
    return-void
.end method
