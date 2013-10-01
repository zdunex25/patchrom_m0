.class public Lcom/android/gallery3d/ui/SlotView$Layout;
.super Ljava/lang/Object;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Layout"
.end annotation


# instance fields
.field private mContentLength:I

.field private mHeight:I

.field private mHorizontalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

.field private mScrollPosition:I

.field private mSlotCount:I

.field private mSlotGap:I

.field private mSlotHeight:I

.field private mSlotWidth:I

.field private mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

.field private mUnitCount:I

.field private mVerticalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

.field private mVisibleEnd:I

.field private mVisibleStart:I

.field private mWidth:I

.field final synthetic this$0:Lcom/android/gallery3d/ui/SlotView;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/SlotView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 394
    iput-object p1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    new-instance v0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;-><init>(Lcom/android/gallery3d/ui/SlotView$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVerticalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    .line 414
    new-instance v0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;-><init>(Lcom/android/gallery3d/ui/SlotView$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHorizontalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/SlotView$Layout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 394
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/SlotView$Layout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 394
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/SlotView$Layout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 394
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/SlotView$Layout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 394
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleEnd:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/SlotView$Layout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 394
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleStart:I

    return v0
.end method

.method private initLayoutParameters()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 495
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->slotWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 496
    iput v7, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    .line 497
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->slotWidth:I

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    .line 498
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->slotHeight:I

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    .line 506
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;
    invoke-static {v0}, Lcom/android/gallery3d/ui/SlotView;->access$700(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;
    invoke-static {v0}, Lcom/android/gallery3d/ui/SlotView;->access$700(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    iget v2, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->onSlotSizeChanged(II)V

    .line 510
    :cond_0
    const/4 v0, 0x2

    new-array v5, v0, [I

    .line 512
    .local v5, padding:[I
    iget v1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mWidth:I

    iget v2, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHeight:I

    iget v3, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/SlotView$Layout;->initLayoutParameters(IIII[I)V

    .line 513
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVerticalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    aget v1, v5, v7

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->startAnimateTo(I)V

    .line 514
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHorizontalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    aget v1, v5, v8

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->startAnimateTo(I)V

    .line 520
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView$Layout;->updateVisibleSlotRange()V

    .line 521
    return-void

    .line 500
    .end local v5           #padding:[I
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mWidth:I

    iget v1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHeight:I

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v6, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->rowsLand:I

    .line 501
    .local v6, rows:I
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->slotGap:I

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    .line 502
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHeight:I

    add-int/lit8 v1, v6, -0x1

    iget v2, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    div-int/2addr v0, v6

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    .line 503
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v1, v1, Lcom/android/gallery3d/ui/SlotView$Spec;->slotHeightAdditional:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    goto :goto_0

    .line 500
    .end local v6           #rows:I
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v6, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->rowsPort:I

    goto :goto_1
.end method

.method private initLayoutParameters(IIII[I)V
    .locals 8
    .parameter "majorLength"
    .parameter "minorLength"
    .parameter "majorUnitSize"
    .parameter "minorUnitSize"
    .parameter "padding"

    .prologue
    const/4 v7, 0x0

    .line 474
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v4, p2

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v5, p4

    div-int v2, v4, v5

    .line 475
    .local v2, unitCount:I
    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 476
    :cond_0
    iput v2, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    .line 479
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 480
    .local v0, availableUnits:I
    mul-int v4, v0, p4

    add-int/lit8 v5, v0, -0x1

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    mul-int/2addr v5, v6

    add-int v3, v4, v5

    .line 482
    .local v3, usedMinorLength:I
    sub-int v4, p2, v3

    div-int/lit8 v4, v4, 0x2

    aput v4, p5, v7

    .line 485
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    div-int v1, v4, v5

    .line 486
    .local v1, count:I
    mul-int v4, v1, p3

    add-int/lit8 v5, v1, -0x1

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mContentLength:I

    .line 490
    const/4 v4, 0x1

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mContentLength:I

    sub-int v5, p1, v5

    div-int/lit8 v5, v5, 0x2

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    aput v5, p5, v4

    .line 491
    return-void
.end method

.method private setVisibleRange(II)V
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 556
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleStart:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleEnd:I

    if-ne p2, v0, :cond_1

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 557
    :cond_1
    if-ge p1, p2, :cond_2

    .line 558
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleStart:I

    .line 559
    iput p2, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleEnd:I

    .line 563
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;
    invoke-static {v0}, Lcom/android/gallery3d/ui/SlotView;->access$700(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;
    invoke-static {v0}, Lcom/android/gallery3d/ui/SlotView;->access$700(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleStart:I

    iget v2, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleEnd:I

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->onVisibleRangeChanged(II)V

    goto :goto_0

    .line 561
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleEnd:I

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleStart:I

    goto :goto_1
.end method

.method private updateVisibleSlotRange()V
    .locals 8

    .prologue
    .line 530
    iget v2, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mScrollPosition:I

    .line 533
    .local v2, position:I
    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v5, v6

    div-int v4, v2, v5

    .line 534
    .local v4, startCol:I
    const/4 v5, 0x0

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    mul-int/2addr v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 535
    .local v3, start:I
    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mWidth:I

    add-int/2addr v5, v2

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v6, v7

    div-int v1, v5, v6

    .line 537
    .local v1, endCol:I
    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    mul-int/2addr v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 538
    .local v0, end:I
    invoke-direct {p0, v3, v0}, Lcom/android/gallery3d/ui/SlotView$Layout;->setVisibleRange(II)V

    .line 547
    return-void
.end method


# virtual methods
.method public advanceAnimation(J)Z
    .locals 2
    .parameter "animTime"

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVerticalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->calculate(J)Z

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHorizontalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v1, p1, p2}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->calculate(J)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getScrollLimit()I
    .locals 3

    .prologue
    .line 614
    iget v1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mContentLength:I

    iget v2, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mWidth:I

    sub-int v0, v1, v2

    .line 615
    .local v0, limit:I
    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .end local v0           #limit:I
    :cond_0
    return v0
.end method

.method public getSlotIndexByPosition(FF)I
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, -0x1

    .line 577
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mScrollPosition:I

    add-int v0, v6, v7

    .line 578
    .local v0, absoluteX:I
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/lit8 v1, v6, 0x0

    .line 580
    .local v1, absoluteY:I
    iget-object v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHorizontalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->get()I

    move-result v6

    sub-int/2addr v0, v6

    .line 581
    iget-object v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVerticalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->get()I

    move-result v6

    sub-int/2addr v1, v6

    .line 583
    if-ltz v0, :cond_0

    if-gez v1, :cond_1

    .line 610
    :cond_0
    :goto_0
    return v5

    .line 587
    :cond_1
    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v6, v7

    div-int v2, v0, v6

    .line 588
    .local v2, columnIdx:I
    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v6, v7

    div-int v4, v1, v6

    .line 594
    .local v4, rowIdx:I
    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    if-ge v4, v6, :cond_0

    .line 598
    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v6, v7

    rem-int v6, v0, v6

    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    if-ge v6, v7, :cond_0

    .line 602
    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v6, v7

    rem-int v6, v1, v6

    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    if-ge v6, v7, :cond_0

    .line 606
    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    mul-int/2addr v6, v2

    add-int v3, v6, v4

    .line 610
    .local v3, index:I
    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    if-lt v3, v6, :cond_2

    move v3, v5

    .end local v3           #index:I
    :cond_2
    move v5, v3

    goto :goto_0
.end method

.method public getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 7
    .parameter "index"
    .parameter "rect"

    .prologue
    .line 437
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    div-int v0, p1, v4

    .line 438
    .local v0, col:I
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    mul-int/2addr v4, v0

    sub-int v1, p1, v4

    .line 444
    .local v1, row:I
    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHorizontalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->get()I

    move-result v4

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v0

    add-int v2, v4, v5

    .line 445
    .local v2, x:I
    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVerticalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->get()I

    move-result v4

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v1

    add-int v3, v4, v5

    .line 446
    .local v3, y:I
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    add-int/2addr v4, v2

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    add-int/2addr v5, v3

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 447
    return-object p2
.end method

.method public getVisibleEnd()I
    .locals 1

    .prologue
    .line 573
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleEnd:I

    return v0
.end method

.method public getVisibleStart()I
    .locals 1

    .prologue
    .line 569
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleStart:I

    return v0
.end method

.method public setScrollPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 550
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mScrollPosition:I

    if-ne v0, p1, :cond_0

    .line 553
    :goto_0
    return-void

    .line 551
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mScrollPosition:I

    .line 552
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView$Layout;->updateVisibleSlotRange()V

    goto :goto_0
.end method

.method public setSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 524
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mWidth:I

    .line 525
    iput p2, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHeight:I

    .line 526
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView$Layout;->initLayoutParameters()V

    .line 527
    return-void
.end method

.method public setSlotCount(I)Z
    .locals 5
    .parameter "slotCount"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 421
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    if-ne p1, v4, :cond_1

    .line 430
    :cond_0
    :goto_0
    return v2

    .line 422
    :cond_1
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    if-eqz v4, :cond_2

    .line 423
    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHorizontalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4, v3}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->setEnabled(Z)V

    .line 424
    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVerticalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4, v3}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->setEnabled(Z)V

    .line 426
    :cond_2
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    .line 427
    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHorizontalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->getTarget()I

    move-result v0

    .line 428
    .local v0, hPadding:I
    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVerticalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->getTarget()I

    move-result v1

    .line 429
    .local v1, vPadding:I
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView$Layout;->initLayoutParameters()V

    .line 430
    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVerticalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->getTarget()I

    move-result v4

    if-ne v1, v4, :cond_3

    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHorizontalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->getTarget()I

    move-result v4

    if-eq v0, v4, :cond_0

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method public setSlotSpec(Lcom/android/gallery3d/ui/SlotView$Spec;)V
    .locals 0
    .parameter "spec"

    .prologue
    .line 417
    iput-object p1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    .line 418
    return-void
.end method
