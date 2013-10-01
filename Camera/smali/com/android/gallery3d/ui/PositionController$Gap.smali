.class Lcom/android/gallery3d/ui/PositionController$Gap;
.super Lcom/android/gallery3d/ui/PositionController$Animatable;
.source "PositionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/PositionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Gap"
.end annotation


# instance fields
.field public mCurrentGap:I

.field public mDefaultSize:I

.field public mFromGap:I

.field public mToGap:I

.field final synthetic this$0:Lcom/android/gallery3d/ui/PositionController;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/PositionController;)V
    .locals 1
    .parameter

    .prologue
    .line 1737
    iput-object p1, p0, Lcom/android/gallery3d/ui/PositionController$Gap;->this$0:Lcom/android/gallery3d/ui/PositionController;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController$Animatable;-><init>(Lcom/android/gallery3d/ui/PositionController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/PositionController;Lcom/android/gallery3d/ui/PositionController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1737
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController$Gap;-><init>(Lcom/android/gallery3d/ui/PositionController;)V

    return-void
.end method


# virtual methods
.method public doAnimation(II)Z
    .locals 2
    .parameter "targetSize"
    .parameter "kind"

    .prologue
    .line 1754
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    if-ne v0, p1, :cond_0

    const/16 v0, 0x9

    if-eq p2, v0, :cond_0

    .line 1755
    const/4 v0, 0x0

    .line 1763
    :goto_0
    return v0

    .line 1757
    :cond_0
    iput p2, p0, Lcom/android/gallery3d/ui/PositionController$Gap;->mAnimationKind:I

    .line 1758
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    iput v0, p0, Lcom/android/gallery3d/ui/PositionController$Gap;->mFromGap:I

    .line 1759
    iput p1, p0, Lcom/android/gallery3d/ui/PositionController$Gap;->mToGap:I

    .line 1760
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->startTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/ui/PositionController$Gap;->mAnimationStartTime:J

    .line 1761
    invoke-static {}, Lcom/android/gallery3d/ui/PositionController;->access$2200()[I

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/ui/PositionController$Gap;->mAnimationKind:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/gallery3d/ui/PositionController$Gap;->mAnimationDuration:I

    .line 1762
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PositionController$Gap;->advanceAnimation()Z

    .line 1763
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected interpolate(F)Z
    .locals 6
    .parameter "progress"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1768
    const/high16 v3, 0x3f80

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_1

    .line 1769
    iget v2, p0, Lcom/android/gallery3d/ui/PositionController$Gap;->mToGap:I

    iput v2, p0, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    .line 1778
    :cond_0
    :goto_0
    return v1

    .line 1772
    :cond_1
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController$Gap;->mFromGap:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/gallery3d/ui/PositionController$Gap;->mToGap:I

    iget v5, p0, Lcom/android/gallery3d/ui/PositionController$Gap;->mFromGap:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    .line 1773
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController$Gap;->mAnimationKind:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_2

    .line 1774
    invoke-static {p1}, Lcom/android/gallery3d/ui/CaptureAnimation;->calculateScale(F)F

    move-result v0

    .line 1775
    .local v0, f:F
    iget v1, p0, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    move v1, v2

    .line 1776
    goto :goto_0

    .line 1778
    .end local v0           #f:F
    :cond_2
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    iget v4, p0, Lcom/android/gallery3d/ui/PositionController$Gap;->mToGap:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public startSnapback()Z
    .locals 4

    .prologue
    .line 1748
    iget-wide v0, p0, Lcom/android/gallery3d/ui/PositionController$Gap;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1749
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/ui/PositionController$Gap;->doAnimation(II)Z

    move-result v0

    goto :goto_0
.end method
