.class public interface abstract Lcom/android/gallery3d/ui/GLCanvas;
.super Ljava/lang/Object;
.source "GLCanvas.java"


# virtual methods
.method public abstract beginRenderTarget(Lcom/android/gallery3d/ui/RawTexture;)V
.end method

.method public abstract clearBuffer()V
.end method

.method public abstract clearBuffer([F)V
.end method

.method public abstract deleteBuffer(I)V
.end method

.method public abstract deleteRecycledResources()V
.end method

.method public abstract drawMesh(Lcom/android/gallery3d/ui/BasicTexture;IIIIII)V
.end method

.method public abstract drawMixed(Lcom/android/gallery3d/ui/BasicTexture;IFLandroid/graphics/RectF;Landroid/graphics/RectF;)V
.end method

.method public abstract drawRect(FFFFLcom/android/gallery3d/ui/GLPaint;)V
.end method

.method public abstract drawTexture(Lcom/android/gallery3d/ui/BasicTexture;IIII)V
.end method

.method public abstract drawTexture(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
.end method

.method public abstract drawTexture(Lcom/android/gallery3d/ui/BasicTexture;[FIIII)V
.end method

.method public abstract endRenderTarget()V
.end method

.method public abstract fillRect(FFFFI)V
.end method

.method public abstract getAlpha()F
.end method

.method public abstract getGLInstance()Ljavax/microedition/khronos/opengles/GL11;
.end method

.method public abstract multiplyAlpha(F)V
.end method

.method public abstract multiplyMatrix([FI)V
.end method

.method public abstract restore()V
.end method

.method public abstract rotate(FFFF)V
.end method

.method public abstract save()V
.end method

.method public abstract save(I)V
.end method

.method public abstract scale(FFF)V
.end method

.method public abstract setAlpha(F)V
.end method

.method public abstract setSize(II)V
.end method

.method public abstract translate(FF)V
.end method

.method public abstract translate(FFF)V
.end method

.method public abstract unloadTexture(Lcom/android/gallery3d/ui/BasicTexture;)Z
.end method
