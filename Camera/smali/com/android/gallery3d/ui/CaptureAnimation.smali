.class public Lcom/android/gallery3d/ui/CaptureAnimation;
.super Ljava/lang/Object;
.source "CaptureAnimation.java"


# static fields
.field private static final sSlideInterpolator:Landroid/view/animation/Interpolator;

.field private static final sZoomInInterpolator:Landroid/view/animation/Interpolator;

.field private static final sZoomOutInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/gallery3d/ui/CaptureAnimation;->sZoomOutInterpolator:Landroid/view/animation/Interpolator;

    .line 32
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/gallery3d/ui/CaptureAnimation;->sZoomInInterpolator:Landroid/view/animation/Interpolator;

    .line 34
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/gallery3d/ui/CaptureAnimation;->sSlideInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateScale(F)F
    .locals 6
    .parameter "fraction"

    .prologue
    const/high16 v5, 0x4000

    const/high16 v3, 0x3f00

    const v4, 0x3e4ccccd

    .line 45
    cmpg-float v1, p0, v3

    if-gtz v1, :cond_0

    .line 47
    const/high16 v1, 0x3f80

    sget-object v2, Lcom/android/gallery3d/ui/CaptureAnimation;->sZoomOutInterpolator:Landroid/view/animation/Interpolator;

    mul-float v3, p0, v5

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v2, v4

    sub-float v0, v1, v2

    .line 54
    .local v0, value:F
    :goto_0
    return v0

    .line 51
    .end local v0           #value:F
    :cond_0
    const v1, 0x3f4ccccd

    sget-object v2, Lcom/android/gallery3d/ui/CaptureAnimation;->sZoomInInterpolator:Landroid/view/animation/Interpolator;

    sub-float v3, p0, v3

    mul-float/2addr v3, v5

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v2, v4

    add-float v0, v1, v2

    .restart local v0       #value:F
    goto :goto_0
.end method

.method public static calculateSlide(F)F
    .locals 1
    .parameter "fraction"

    .prologue
    .line 39
    sget-object v0, Lcom/android/gallery3d/ui/CaptureAnimation;->sSlideInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method
