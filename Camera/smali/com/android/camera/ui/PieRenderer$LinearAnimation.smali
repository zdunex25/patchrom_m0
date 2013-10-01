.class Lcom/android/camera/ui/PieRenderer$LinearAnimation;
.super Landroid/view/animation/Animation;
.source "PieRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/PieRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LinearAnimation"
.end annotation


# instance fields
.field private mFrom:F

.field private mTo:F

.field private mValue:F

.field final synthetic this$0:Lcom/android/camera/ui/PieRenderer;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/PieRenderer;FF)V
    .locals 1
    .parameter
    .parameter "from"
    .parameter "to"

    .prologue
    .line 808
    iput-object p1, p0, Lcom/android/camera/ui/PieRenderer$LinearAnimation;->this$0:Lcom/android/camera/ui/PieRenderer;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 809
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PieRenderer$LinearAnimation;->setFillAfter(Z)V

    .line 810
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PieRenderer$LinearAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 811
    iput p2, p0, Lcom/android/camera/ui/PieRenderer$LinearAnimation;->mFrom:F

    .line 812
    iput p3, p0, Lcom/android/camera/ui/PieRenderer$LinearAnimation;->mTo:F

    .line 813
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 821
    iget v0, p0, Lcom/android/camera/ui/PieRenderer$LinearAnimation;->mFrom:F

    iget v1, p0, Lcom/android/camera/ui/PieRenderer$LinearAnimation;->mTo:F

    iget v2, p0, Lcom/android/camera/ui/PieRenderer$LinearAnimation;->mFrom:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/PieRenderer$LinearAnimation;->mValue:F

    .line 822
    return-void
.end method

.method public getValue()F
    .locals 1

    .prologue
    .line 816
    iget v0, p0, Lcom/android/camera/ui/PieRenderer$LinearAnimation;->mValue:F

    return v0
.end method
