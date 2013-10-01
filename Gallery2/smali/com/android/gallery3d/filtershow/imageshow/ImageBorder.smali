.class public Lcom/android/gallery3d/filtershow/imageshow/ImageBorder;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;
.source "ImageBorder.java"


# instance fields
.field gPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageBorder;->gPaint:Landroid/graphics/Paint;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageBorder;->gPaint:Landroid/graphics/Paint;

    .line 33
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageSlave;->onDraw(Landroid/graphics/Canvas;)V

    .line 54
    return-void
.end method

.method public showTitle()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method
