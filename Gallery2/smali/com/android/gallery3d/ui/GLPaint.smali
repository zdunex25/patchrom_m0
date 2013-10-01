.class public Lcom/android/gallery3d/ui/GLPaint;
.super Ljava/lang/Object;
.source "GLPaint.java"


# instance fields
.field private mColor:I

.field private mLineWidth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/gallery3d/ui/GLPaint;->mLineWidth:F

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/GLPaint;->mColor:I

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/android/gallery3d/ui/GLPaint;->mColor:I

    return v0
.end method

.method public getLineWidth()F
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/android/gallery3d/ui/GLPaint;->mLineWidth:F

    return v0
.end method

.method public setColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 27
    iput p1, p0, Lcom/android/gallery3d/ui/GLPaint;->mColor:I

    .line 28
    return-void
.end method

.method public setLineWidth(F)V
    .locals 1
    .parameter "width"

    .prologue
    .line 35
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 36
    iput p1, p0, Lcom/android/gallery3d/ui/GLPaint;->mLineWidth:F

    .line 37
    return-void

    .line 35
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
