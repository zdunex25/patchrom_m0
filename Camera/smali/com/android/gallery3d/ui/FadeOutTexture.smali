.class public Lcom/android/gallery3d/ui/FadeOutTexture;
.super Lcom/android/gallery3d/ui/FadeTexture;
.source "FadeOutTexture.java"


# instance fields
.field private final mTexture:Lcom/android/gallery3d/ui/BasicTexture;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/BasicTexture;)V
    .locals 3
    .parameter "texture"

    .prologue
    .line 28
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->isOpaque()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/gallery3d/ui/FadeTexture;-><init>(IIZ)V

    .line 29
    iput-object p1, p0, Lcom/android/gallery3d/ui/FadeOutTexture;->mTexture:Lcom/android/gallery3d/ui/BasicTexture;

    .line 30
    return-void
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 6
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/FadeOutTexture;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 36
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/FadeOutTexture;->getRatio()F

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->setAlpha(F)V

    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/ui/FadeOutTexture;->mTexture:Lcom/android/gallery3d/ui/BasicTexture;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/BasicTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 38
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 40
    :cond_0
    return-void
.end method
