.class public Lcom/android/gallery3d/ui/RawTexture;
.super Lcom/android/gallery3d/ui/BasicTexture;
.source "RawTexture.java"


# static fields
.field private static final sCropRect:[F

.field private static final sTextureId:[I


# instance fields
.field private final mOpaque:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/android/gallery3d/ui/RawTexture;->sTextureId:[I

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lcom/android/gallery3d/ui/RawTexture;->sCropRect:[F

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0
    .parameter "width"
    .parameter "height"
    .parameter "opaque"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/gallery3d/ui/BasicTexture;-><init>()V

    .line 31
    iput-boolean p3, p0, Lcom/android/gallery3d/ui/RawTexture;->mOpaque:Z

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/ui/RawTexture;->setSize(II)V

    .line 33
    return-void
.end method


# virtual methods
.method public bridge synthetic draw(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 22
    invoke-super {p0, p1, p2, p3}, Lcom/android/gallery3d/ui/BasicTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

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
    .line 22
    invoke-super/range {p0 .. p5}, Lcom/android/gallery3d/ui/BasicTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    return-void
.end method

.method public bridge synthetic getHeight()I
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getId()I
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v0

    return v0
.end method

.method protected getTarget()I
    .locals 1

    .prologue
    .line 89
    const/16 v0, 0xde1

    return v0
.end method

.method public bridge synthetic getTextureHeight()I
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTextureWidth()I
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getWidth()I
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic hasBorder()Z
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/android/gallery3d/ui/BasicTexture;->hasBorder()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isLoaded()Z
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/android/gallery3d/ui/BasicTexture;->isLoaded()Z

    move-result v0

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/RawTexture;->mOpaque:Z

    return v0
.end method

.method protected onBind(Lcom/android/gallery3d/ui/GLCanvas;)Z
    .locals 2
    .parameter "canvas"

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/RawTexture;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 79
    :goto_0
    return v0

    .line 78
    :cond_0
    const-string v0, "RawTexture"

    const-string v1, "lost the content due to context change"

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected prepare(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/16 v3, 0x1908

    const v7, 0x46180400

    const/4 v10, 0x1

    const/16 v1, 0xde1

    const/4 v2, 0x0

    .line 41
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getGLInstance()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v0

    .line 47
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    sget-object v4, Lcom/android/gallery3d/ui/RawTexture;->sCropRect:[F

    const/4 v5, 0x0

    aput v5, v4, v2

    .line 48
    sget-object v4, Lcom/android/gallery3d/ui/RawTexture;->sCropRect:[F

    iget v5, p0, Lcom/android/gallery3d/ui/RawTexture;->mHeight:I

    int-to-float v5, v5

    aput v5, v4, v10

    .line 49
    sget-object v4, Lcom/android/gallery3d/ui/RawTexture;->sCropRect:[F

    const/4 v5, 0x2

    iget v6, p0, Lcom/android/gallery3d/ui/RawTexture;->mWidth:I

    int-to-float v6, v6

    aput v6, v4, v5

    .line 50
    sget-object v4, Lcom/android/gallery3d/ui/RawTexture;->sCropRect:[F

    const/4 v5, 0x3

    iget v6, p0, Lcom/android/gallery3d/ui/RawTexture;->mHeight:I

    neg-int v6, v6

    int-to-float v6, v6

    aput v6, v4, v5

    .line 53
    sget-object v4, Lcom/android/gallery3d/ui/RawTexture;->sTextureId:[I

    invoke-static {v10, v4, v2}, Lcom/android/gallery3d/ui/GLId;->glGenTextures(I[II)V

    .line 54
    sget-object v4, Lcom/android/gallery3d/ui/RawTexture;->sTextureId:[I

    aget v4, v4, v2

    invoke-interface {v0, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 55
    const v4, 0x8b9d

    sget-object v5, Lcom/android/gallery3d/ui/RawTexture;->sCropRect:[F

    invoke-interface {v0, v1, v4, v5, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(II[FI)V

    .line 57
    const/16 v4, 0x2802

    const v5, 0x812f

    invoke-interface {v0, v1, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 59
    const/16 v4, 0x2803

    const v5, 0x812f

    invoke-interface {v0, v1, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 61
    const/16 v4, 0x2801

    invoke-interface {v0, v1, v4, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 63
    const/16 v4, 0x2800

    invoke-interface {v0, v1, v4, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 66
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/RawTexture;->getTextureWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/RawTexture;->getTextureHeight()I

    move-result v5

    const/16 v8, 0x1401

    const/4 v9, 0x0

    move v6, v2

    move v7, v3

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 70
    sget-object v1, Lcom/android/gallery3d/ui/RawTexture;->sTextureId:[I

    aget v1, v1, v2

    iput v1, p0, Lcom/android/gallery3d/ui/RawTexture;->mId:I

    .line 71
    iput v10, p0, Lcom/android/gallery3d/ui/RawTexture;->mState:I

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/RawTexture;->setAssociatedCanvas(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 73
    return-void
.end method

.method public bridge synthetic recycle()V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0}, Lcom/android/gallery3d/ui/BasicTexture;->recycle()V

    return-void
.end method

.method public yield()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method
