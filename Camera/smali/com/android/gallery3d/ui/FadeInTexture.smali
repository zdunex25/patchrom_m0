.class public Lcom/android/gallery3d/ui/FadeInTexture;
.super Lcom/android/gallery3d/ui/FadeTexture;
.source "FadeInTexture.java"

# interfaces
.implements Lcom/android/gallery3d/ui/Texture;


# instance fields
.field private final mColor:I

.field private final mTexture:Lcom/android/gallery3d/ui/TiledTexture;


# direct methods
.method public constructor <init>(ILcom/android/gallery3d/ui/TiledTexture;)V
    .locals 3
    .parameter "color"
    .parameter "texture"

    .prologue
    .line 29
    invoke-virtual {p2}, Lcom/android/gallery3d/ui/TiledTexture;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/gallery3d/ui/TiledTexture;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/gallery3d/ui/TiledTexture;->isOpaque()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/gallery3d/ui/FadeTexture;-><init>(IIZ)V

    .line 30
    iput p1, p0, Lcom/android/gallery3d/ui/FadeInTexture;->mColor:I

    .line 31
    iput-object p2, p0, Lcom/android/gallery3d/ui/FadeInTexture;->mTexture:Lcom/android/gallery3d/ui/TiledTexture;

    .line 32
    return-void
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 8
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/FadeInTexture;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/ui/FadeInTexture;->mTexture:Lcom/android/gallery3d/ui/TiledTexture;

    iget v2, p0, Lcom/android/gallery3d/ui/FadeInTexture;->mColor:I

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/FadeInTexture;->getRatio()F

    move-result v3

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/gallery3d/ui/TiledTexture;->drawMixed(Lcom/android/gallery3d/ui/GLCanvas;IFIIII)V

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/FadeInTexture;->mTexture:Lcom/android/gallery3d/ui/TiledTexture;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/TiledTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_0
.end method
