.class Lcom/android/gallery3d/ui/PositionController$Box;
.super Lcom/android/gallery3d/ui/PositionController$Animatable;
.source "PositionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/PositionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Box"
.end annotation


# instance fields
.field public mAbsoluteX:I

.field public mCurrentScale:F

.field public mCurrentY:I

.field public mFromScale:F

.field public mFromY:I

.field public mImageH:I

.field public mImageW:I

.field public mScaleMax:F

.field public mScaleMin:F

.field public mToScale:F

.field public mToY:I

.field public mUseViewSize:Z

.field final synthetic this$0:Lcom/android/gallery3d/ui/PositionController;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/PositionController;)V
    .locals 1
    .parameter

    .prologue
    .line 1595
    iput-object p1, p0, Lcom/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/android/gallery3d/ui/PositionController;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController$Animatable;-><init>(Lcom/android/gallery3d/ui/PositionController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/PositionController;Lcom/android/gallery3d/ui/PositionController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1595
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController$Box;-><init>(Lcom/android/gallery3d/ui/PositionController;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/PositionController$Box;IFI)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 1595
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/ui/PositionController$Box;->doAnimation(IFI)Z

    move-result v0

    return v0
.end method

.method private doAnimation(IFI)Z
    .locals 2
    .parameter "targetY"
    .parameter "targetScale"
    .parameter "kind"

    .prologue
    .line 1661
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/ui/PositionController$Box;->clampScale(F)F

    move-result p2

    .line 1663
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    const/16 v0, 0x9

    if-eq p3, v0, :cond_0

    .line 1665
    const/4 v0, 0x0

    .line 1677
    :goto_0
    return v0

    .line 1669
    :cond_0
    iput p3, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mAnimationKind:I

    .line 1670
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iput v0, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mFromY:I

    .line 1671
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    iput v0, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mFromScale:F

    .line 1672
    iput p1, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mToY:I

    .line 1673
    iput p2, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mToScale:F

    .line 1674
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->startTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mAnimationStartTime:J

    .line 1675
    invoke-static {}, Lcom/android/gallery3d/ui/PositionController;->access$2200()[I

    move-result-object v0

    aget v0, v0, p3

    iput v0, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mAnimationDuration:I

    .line 1676
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PositionController$Box;->advanceAnimation()Z

    .line 1677
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private interpolateFlingPage(F)Z
    .locals 6
    .parameter "progress"

    .prologue
    const/4 v2, 0x0

    const/high16 v5, 0x3f00

    .line 1697
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;
    invoke-static {v3}, Lcom/android/gallery3d/ui/PositionController;->access$2600(Lcom/android/gallery3d/ui/PositionController;)Lcom/android/gallery3d/ui/FlingScroller;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/gallery3d/ui/FlingScroller;->computeScrollOffset(F)V

    .line 1698
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/android/gallery3d/ui/PositionController;

    iget v4, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    #calls: Lcom/android/gallery3d/ui/PositionController;->calculateStableBound(F)V
    invoke-static {v3, v4}, Lcom/android/gallery3d/ui/PositionController;->access$2700(Lcom/android/gallery3d/ui/PositionController;F)V

    .line 1700
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    .line 1701
    .local v0, oldY:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;
    invoke-static {v3}, Lcom/android/gallery3d/ui/PositionController;->access$2600(Lcom/android/gallery3d/ui/PositionController;)Lcom/android/gallery3d/ui/FlingScroller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/FlingScroller;->getCurrY()I

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    .line 1704
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I
    invoke-static {v3}, Lcom/android/gallery3d/ui/PositionController;->access$3000(Lcom/android/gallery3d/ui/PositionController;)I

    move-result v3

    if-le v0, v3, :cond_2

    iget v3, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget-object v4, p0, Lcom/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I
    invoke-static {v4}, Lcom/android/gallery3d/ui/PositionController;->access$3000(Lcom/android/gallery3d/ui/PositionController;)I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1705
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;
    invoke-static {v3}, Lcom/android/gallery3d/ui/PositionController;->access$2600(Lcom/android/gallery3d/ui/PositionController;)Lcom/android/gallery3d/ui/FlingScroller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/FlingScroller;->getCurrVelocityY()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    add-float/2addr v3, v5

    float-to-int v1, v3

    .line 1706
    .local v1, v:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;
    invoke-static {v3}, Lcom/android/gallery3d/ui/PositionController;->access$700(Lcom/android/gallery3d/ui/PositionController;)Lcom/android/gallery3d/ui/PositionController$Listener;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v1, v4}, Lcom/android/gallery3d/ui/PositionController$Listener;->onAbsorb(II)V

    .line 1712
    .end local v1           #v:I
    :cond_0
    :goto_0
    const/high16 v3, 0x3f80

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 1707
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I
    invoke-static {v3}, Lcom/android/gallery3d/ui/PositionController;->access$3100(Lcom/android/gallery3d/ui/PositionController;)I

    move-result v3

    if-ge v0, v3, :cond_0

    iget v3, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget-object v4, p0, Lcom/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I
    invoke-static {v4}, Lcom/android/gallery3d/ui/PositionController;->access$3100(Lcom/android/gallery3d/ui/PositionController;)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1708
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;
    invoke-static {v3}, Lcom/android/gallery3d/ui/PositionController;->access$2600(Lcom/android/gallery3d/ui/PositionController;)Lcom/android/gallery3d/ui/FlingScroller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/FlingScroller;->getCurrVelocityY()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v5

    float-to-int v1, v3

    .line 1709
    .restart local v1       #v:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;
    invoke-static {v3}, Lcom/android/gallery3d/ui/PositionController;->access$700(Lcom/android/gallery3d/ui/PositionController;)Lcom/android/gallery3d/ui/PositionController$Listener;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/android/gallery3d/ui/PositionController$Listener;->onAbsorb(II)V

    goto :goto_0
.end method

.method private interpolateLinear(F)Z
    .locals 6
    .parameter "progress"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1716
    const/high16 v3, 0x3f80

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_1

    .line 1717
    iget v2, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mToY:I

    iput v2, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    .line 1718
    iget v2, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mToScale:F

    iput v2, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 1728
    :cond_0
    :goto_0
    return v1

    .line 1721
    :cond_1
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mFromY:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mToY:I

    iget v5, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mFromY:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    .line 1722
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mFromScale:F

    iget v4, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mToScale:F

    iget v5, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mFromScale:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 1723
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mAnimationKind:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_2

    .line 1724
    invoke-static {p1}, Lcom/android/gallery3d/ui/CaptureAnimation;->calculateScale(F)F

    move-result v0

    .line 1725
    .local v0, f:F
    iget v1, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    move v1, v2

    .line 1726
    goto :goto_0

    .line 1728
    .end local v0           #f:F
    :cond_2
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v4, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mToY:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    iget v4, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mToScale:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public clampScale(F)F
    .locals 3
    .parameter "s"

    .prologue
    .line 1682
    const v0, 0x3f333333

    iget v1, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    mul-float/2addr v0, v1

    const v1, 0x3fb33333

    iget v2, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    mul-float/2addr v1, v2

    invoke-static {p1, v0, v1}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method protected interpolate(F)Z
    .locals 2
    .parameter "progress"

    .prologue
    .line 1689
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mAnimationKind:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 1690
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController$Box;->interpolateFlingPage(F)Z

    move-result v0

    .line 1692
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController$Box;->interpolateLinear(F)Z

    move-result v0

    goto :goto_0
.end method

.method public startSnapback()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 1620
    iget-wide v6, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mAnimationStartTime:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 1657
    :cond_0
    :goto_0
    return v5

    .line 1621
    :cond_1
    iget v6, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mAnimationKind:I

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;
    invoke-static {v6}, Lcom/android/gallery3d/ui/PositionController;->access$700(Lcom/android/gallery3d/ui/PositionController;)Lcom/android/gallery3d/ui/PositionController$Listener;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/gallery3d/ui/PositionController$Listener;->isHoldingDown()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1623
    :cond_2
    iget v6, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mAnimationKind:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lcom/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;
    invoke-static {v6}, Lcom/android/gallery3d/ui/PositionController;->access$700(Lcom/android/gallery3d/ui/PositionController;)Lcom/android/gallery3d/ui/PositionController$Listener;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/gallery3d/ui/PositionController$Listener;->isHoldingDelete()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1625
    :cond_3
    iget-object v6, p0, Lcom/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mInScale:Z
    invoke-static {v6}, Lcom/android/gallery3d/ui/PositionController;->access$800(Lcom/android/gallery3d/ui/PositionController;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;
    invoke-static {v6}, Lcom/android/gallery3d/ui/PositionController;->access$900(Lcom/android/gallery3d/ui/PositionController;)Lcom/android/gallery3d/util/RangeArray;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eq p0, v6, :cond_0

    .line 1627
    :cond_4
    iget v4, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    .line 1630
    .local v4, y:I
    iget-object v6, p0, Lcom/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;
    invoke-static {v6}, Lcom/android/gallery3d/ui/PositionController;->access$900(Lcom/android/gallery3d/ui/PositionController;)Lcom/android/gallery3d/util/RangeArray;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne p0, v6, :cond_a

    .line 1631
    iget-object v6, p0, Lcom/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mExtraScalingRange:Z
    invoke-static {v6}, Lcom/android/gallery3d/ui/PositionController;->access$1000(Lcom/android/gallery3d/ui/PositionController;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget v6, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    const v7, 0x3f333333

    mul-float v3, v6, v7

    .line 1633
    .local v3, scaleMin:F
    :goto_1
    iget-object v6, p0, Lcom/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mExtraScalingRange:Z
    invoke-static {v6}, Lcom/android/gallery3d/ui/PositionController;->access$1000(Lcom/android/gallery3d/ui/PositionController;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget v6, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    const v7, 0x3fb33333

    mul-float v2, v6, v7

    .line 1635
    .local v2, scaleMax:F
    :goto_2
    iget v6, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-static {v6, v3, v2}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v0

    .line 1636
    .local v0, scale:F
    iget-object v6, p0, Lcom/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z
    invoke-static {v6}, Lcom/android/gallery3d/ui/PositionController;->access$1100(Lcom/android/gallery3d/ui/PositionController;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1637
    const/4 v4, 0x0

    .line 1654
    .end local v2           #scaleMax:F
    .end local v3           #scaleMin:F
    :goto_3
    iget v6, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    if-ne v6, v4, :cond_5

    iget v6, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    cmpl-float v6, v6, v0

    if-eqz v6, :cond_0

    .line 1655
    :cond_5
    const/4 v5, 0x2

    invoke-direct {p0, v4, v0, v5}, Lcom/android/gallery3d/ui/PositionController$Box;->doAnimation(IFI)Z

    move-result v5

    goto/16 :goto_0

    .line 1631
    .end local v0           #scale:F
    :cond_6
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    goto :goto_1

    .line 1633
    .restart local v3       #scaleMin:F
    :cond_7
    iget v2, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    goto :goto_2

    .line 1639
    .restart local v0       #scale:F
    .restart local v2       #scaleMax:F
    :cond_8
    iget-object v6, p0, Lcom/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/android/gallery3d/ui/PositionController;

    invoke-static {}, Lcom/android/gallery3d/ui/PositionController;->access$1200()I

    move-result v7

    #calls: Lcom/android/gallery3d/ui/PositionController;->calculateStableBound(FI)V
    invoke-static {v6, v0, v7}, Lcom/android/gallery3d/ui/PositionController;->access$1300(Lcom/android/gallery3d/ui/PositionController;FI)V

    .line 1643
    iget-object v6, p0, Lcom/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #calls: Lcom/android/gallery3d/ui/PositionController;->viewTallerThanScaledImage(F)Z
    invoke-static {v6, v0}, Lcom/android/gallery3d/ui/PositionController;->access$2800(Lcom/android/gallery3d/ui/PositionController;F)Z

    move-result v6

    if-nez v6, :cond_9

    .line 1644
    iget v6, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    sub-float v1, v6, v0

    .line 1645
    .local v1, scaleDiff:F
    iget-object v6, p0, Lcom/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mFocusY:F
    invoke-static {v6}, Lcom/android/gallery3d/ui/PositionController;->access$2900(Lcom/android/gallery3d/ui/PositionController;)F

    move-result v6

    mul-float/2addr v6, v1

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v4, v6

    .line 1647
    .end local v1           #scaleDiff:F
    :cond_9
    iget-object v6, p0, Lcom/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I
    invoke-static {v6}, Lcom/android/gallery3d/ui/PositionController;->access$3000(Lcom/android/gallery3d/ui/PositionController;)I

    move-result v6

    iget-object v7, p0, Lcom/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I
    invoke-static {v7}, Lcom/android/gallery3d/ui/PositionController;->access$3100(Lcom/android/gallery3d/ui/PositionController;)I

    move-result v7

    invoke-static {v4, v6, v7}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v4

    goto :goto_3

    .line 1650
    .end local v0           #scale:F
    .end local v2           #scaleMax:F
    .end local v3           #scaleMin:F
    :cond_a
    const/4 v4, 0x0

    .line 1651
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    .restart local v0       #scale:F
    goto :goto_3
.end method
