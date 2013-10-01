.class Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;
.super Ljava/lang/Object;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZInterpolator"
.end annotation


# instance fields
.field private focalLength:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .parameter "foc"

    .prologue
    .line 1755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1756
    iput p1, p0, Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;->focalLength:F

    .line 1757
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4
    .parameter "input"

    .prologue
    const/high16 v3, 0x3f80

    .line 1760
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;->focalLength:F

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;->focalLength:F

    add-float/2addr v1, p1

    div-float/2addr v0, v1

    sub-float v0, v3, v0

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;->focalLength:F

    iget v2, p0, Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;->focalLength:F

    add-float/2addr v2, v3

    div-float/2addr v1, v2

    sub-float v1, v3, v1

    div-float/2addr v0, v1

    return v0
.end method
