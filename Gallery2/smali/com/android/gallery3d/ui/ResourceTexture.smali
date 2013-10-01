.class public Lcom/android/gallery3d/ui/ResourceTexture;
.super Lcom/android/gallery3d/ui/UploadedTexture;
.source "ResourceTexture.java"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/gallery3d/ui/UploadedTexture;-><init>()V

    .line 33
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/gallery3d/ui/ResourceTexture;->mContext:Landroid/content/Context;

    .line 34
    iput p2, p0, Lcom/android/gallery3d/ui/ResourceTexture;->mResId:I

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/ResourceTexture;->setOpaque(Z)V

    .line 36
    return-void
.end method


# virtual methods
.method public bridge synthetic draw(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 27
    invoke-super {p0, p1, p2, p3}, Lcom/android/gallery3d/ui/UploadedTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    return-void
.end method

.method public bridge synthetic draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 27
    invoke-super/range {p0 .. p5}, Lcom/android/gallery3d/ui/UploadedTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    return-void
.end method

.method public bridge synthetic getHeight()I
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getId()I
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTextureHeight()I
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getTextureHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTextureWidth()I
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getTextureWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getWidth()I
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic hasBorder()Z
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->hasBorder()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isContentValid()Z
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->isContentValid()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isLoaded()Z
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->isLoaded()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOpaque()Z
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isUploading()Z
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->isUploading()Z

    move-result v0

    return v0
.end method

.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 48
    invoke-static {}, Lcom/android/gallery3d/ui/ResourceTexture;->inFinalizer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 51
    :cond_0
    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 40
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 41
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 42
    iget-object v1, p0, Lcom/android/gallery3d/ui/ResourceTexture;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/ui/ResourceTexture;->mResId:I

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic recycle()V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->recycle()V

    return-void
.end method

.method public bridge synthetic setOpaque(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/UploadedTexture;->setOpaque(Z)V

    return-void
.end method

.method public bridge synthetic updateContent(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/UploadedTexture;->updateContent(Lcom/android/gallery3d/ui/GLCanvas;)V

    return-void
.end method

.method public bridge synthetic yield()V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->yield()V

    return-void
.end method
