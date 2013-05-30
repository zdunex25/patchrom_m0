.class Landroid/view/GestureDetector$PalmSweepRecognizer;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PalmSweepRecognizer"
.end annotation


# instance fields
.field public final SWEEP_LEFT:I

.field public final SWEEP_RIGHT:I

.field mArrIsValidWithTouchMajor:[Z

.field mArrMaxTouchMajor:[I

.field mArrSumSize:[I

.field mDiffx:F

.field mFalseAngleCnt:I

.field mInitDiffx:F

.field mLRSDCnt:I

.field mLRSizeDecreased:Z

.field mMoveXTH:I

.field mSmeanX:F

.field mSmeanXpre:F

.field private mSweepDown:Z

.field mSweepLeftReverseSum:F

.field mSweepRightReverseSum:F

.field public final mSweepSizeTH:I

.field mVarXBig:Z

.field private mbPalmSwipeDetected:Z

.field final synthetic this$0:Landroid/view/GestureDetector;


# direct methods
.method private constructor <init>(Landroid/view/GestureDetector;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 576
    iput-object p1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->this$0:Landroid/view/GestureDetector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 577
    iput-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    .line 578
    iput-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mbPalmSwipeDetected:Z

    .line 580
    const/16 v0, 0x32

    iput v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepSizeTH:I

    .line 583
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->SWEEP_RIGHT:I

    .line 584
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->SWEEP_LEFT:I

    .line 587
    iput-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSizeDecreased:Z

    .line 588
    iput-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mVarXBig:Z

    .line 589
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSDCnt:I

    .line 590
    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mMoveXTH:I

    .line 591
    iput v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanXpre:F

    .line 592
    iput v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanX:F

    .line 593
    iput v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    .line 594
    iput v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepRightReverseSum:F

    .line 595
    iput v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mDiffx:F

    .line 596
    iput v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mInitDiffx:F

    .line 597
    new-array v0, v3, [Z

    iput-object v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrIsValidWithTouchMajor:[Z

    .line 598
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrMaxTouchMajor:[I

    .line 599
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    .line 601
    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mFalseAngleCnt:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/GestureDetector;Landroid/view/GestureDetector$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 576
    invoke-direct {p0, p1}, Landroid/view/GestureDetector$PalmSweepRecognizer;-><init>(Landroid/view/GestureDetector;)V

    return-void
.end method


# virtual methods
.method public CalculateHorizontalSweepData(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V
    .locals 7
    .parameter "data"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 678
    invoke-virtual {p0, p1}, Landroid/view/GestureDetector$PalmSweepRecognizer;->SetArrMaxTouchMajor(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V

    .line 679
    iget-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    if-nez v2, :cond_0

    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumMajor:F

    const/high16 v3, 0x42c8

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    const/high16 v3, 0x4248

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    const/high16 v3, 0x4348

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SvarX:F

    const/high16 v3, 0x4396

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 680
    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SmeanX:F

    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mInitDiffx:F

    .line 681
    iput-boolean v6, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    .line 682
    iput-boolean v5, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSizeDecreased:Z

    .line 683
    const-string v2, "GestureDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Surface touch Event] Palm swipe start, x:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mInitDiffx:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " m:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumMajor:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_0
    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    .line 687
    iget-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    if-ne v2, v6, :cond_1

    .line 688
    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    const/high16 v3, 0x420c

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 689
    iput-boolean v6, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSizeDecreased:Z

    .line 690
    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSDCnt:I

    if-gez v2, :cond_1

    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSDCnt:I

    .line 695
    :cond_1
    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mAction:I

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    if-ne v2, v6, :cond_3

    .line 696
    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanX:F

    iget v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanXpre:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepRightReverseSum:F

    iget v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanX:F

    iget v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanXpre:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepRightReverseSum:F

    .line 697
    :cond_2
    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanX:F

    iget v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanXpre:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    iget v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanX:F

    iget v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanXpre:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    .line 699
    :cond_3
    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SvarX:F

    const/high16 v3, 0x43c8

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    iput-boolean v6, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mVarXBig:Z

    .line 700
    :cond_4
    iget-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    if-ne v2, v6, :cond_8

    .line 702
    const/4 v1, 0x0

    .line 703
    .local v1, mMaxSizeTouch:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Nd:[I

    aget v2, v2, v5

    if-ge v0, v2, :cond_6

    .line 705
    iget-object v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Ssd:[[I

    aget-object v2, v2, v0

    aget v2, v2, v5

    iget-object v3, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Ssd:[[I

    aget-object v3, v3, v1

    aget v3, v3, v5

    if-le v2, v3, :cond_5

    .line 706
    move v1, v0

    .line 703
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 708
    :cond_6
    iget-boolean v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mIsRotated:Z

    if-nez v2, :cond_9

    .line 710
    iget-object v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    aget-object v2, v2, v1

    aget v2, v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x19

    if-le v2, v3, :cond_7

    .line 711
    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mFalseAngleCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mFalseAngleCnt:I

    .line 718
    :cond_7
    :goto_1
    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    const/high16 v3, 0x4316

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    .line 719
    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mFalseAngleCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mFalseAngleCnt:I

    .line 721
    .end local v0           #i:I
    .end local v1           #mMaxSizeTouch:I
    :cond_8
    return-void

    .line 715
    .restart local v0       #i:I
    .restart local v1       #mMaxSizeTouch:I
    :cond_9
    iget-object v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    aget-object v2, v2, v1

    aget v2, v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x41

    if-ge v2, v3, :cond_7

    iget-object v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    aget-object v2, v2, v1

    aget v2, v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-eqz v2, :cond_7

    .line 716
    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mFalseAngleCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mFalseAngleCnt:I

    goto :goto_1
.end method

.method public GetRangeNum(Landroid/view/GestureDetector$SurfaceTouchSharingData;)I
    .locals 11
    .parameter "data"

    .prologue
    .line 625
    iget-object v9, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->this$0:Landroid/view/GestureDetector;

    iget-object v9, v9, Landroid/view/GestureDetector;->context1:Landroid/content/Context;

    const-string/jumbo v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 626
    .local v7, wm:Landroid/view/WindowManager;
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 627
    .local v0, disp:Landroid/view/Display;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 628
    .local v2, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 629
    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 630
    .local v1, height:I
    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 632
    .local v6, width:I
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 633
    .local v4, tempHeight:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 637
    .local v5, tempWidth:Ljava/lang/String;
    const/4 v3, 0x0

    .line 638
    .local v3, result:I
    iget v9, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SmeanX:F

    float-to-int v8, v9

    .line 640
    .local v8, x:I
    iget-boolean v9, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mIsRotated:Z

    if-nez v9, :cond_2

    .line 642
    div-int/lit8 v9, v6, 0x3

    if-ge v8, v9, :cond_0

    .line 644
    const/4 v3, 0x0

    .line 674
    :goto_0
    return v3

    .line 646
    :cond_0
    mul-int/lit8 v9, v6, 0x2

    div-int/lit8 v9, v9, 0x3

    if-ge v8, v9, :cond_1

    .line 648
    const/4 v3, 0x1

    goto :goto_0

    .line 652
    :cond_1
    const/4 v3, 0x2

    goto :goto_0

    .line 657
    :cond_2
    div-int/lit8 v9, v1, 0x4

    if-ge v8, v9, :cond_3

    .line 659
    const/4 v3, 0x0

    goto :goto_0

    .line 661
    :cond_3
    mul-int/lit8 v9, v1, 0x2

    div-int/lit8 v9, v9, 0x4

    if-ge v8, v9, :cond_4

    .line 663
    const/4 v3, 0x1

    goto :goto_0

    .line 665
    :cond_4
    mul-int/lit8 v9, v1, 0x3

    div-int/lit8 v9, v9, 0x4

    if-ge v8, v9, :cond_5

    .line 667
    const/4 v3, 0x2

    goto :goto_0

    .line 671
    :cond_5
    const/4 v3, 0x3

    goto :goto_0
.end method

.method public Initialize()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 773
    iput-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    .line 774
    iput-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mbPalmSwipeDetected:Z

    .line 775
    iput v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanXpre:F

    .line 776
    iput v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanX:F

    .line 777
    iput-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSizeDecreased:Z

    .line 778
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSDCnt:I

    .line 779
    iput v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    .line 780
    iput v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepRightReverseSum:F

    .line 781
    iput v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mDiffx:F

    .line 782
    iput-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mVarXBig:Z

    .line 783
    iput v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mInitDiffx:F

    .line 784
    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mFalseAngleCnt:I

    .line 785
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 787
    iget-object v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrIsValidWithTouchMajor:[Z

    aput-boolean v2, v1, v0

    .line 788
    iget-object v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrMaxTouchMajor:[I

    aput v2, v1, v0

    .line 789
    iget-object v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aput v2, v1, v0

    .line 785
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 791
    :cond_0
    return-void
.end method

.method public Process(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 765
    invoke-virtual {p0, p1}, Landroid/view/GestureDetector$PalmSweepRecognizer;->UpdateData(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V

    .line 766
    invoke-virtual {p0, p1}, Landroid/view/GestureDetector$PalmSweepRecognizer;->CalculateHorizontalSweepData(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V

    .line 767
    iget v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mbPalmSwipeDetected:Z

    if-nez v0, :cond_0

    .line 768
    invoke-virtual {p0, p1}, Landroid/view/GestureDetector$PalmSweepRecognizer;->RocognizeHorizontalSweepData(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V

    .line 770
    :cond_0
    return-void
.end method

.method public RocognizeHorizontalSweepData(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V
    .locals 9
    .parameter "data"

    .prologue
    const/4 v8, 0x3

    const/high16 v4, 0x4396

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 724
    iget-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSizeDecreased:Z

    if-ne v2, v5, :cond_0

    .line 725
    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    iget v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSDCnt:I

    sub-int/2addr v2, v3

    const/16 v3, 0xa

    if-le v2, v3, :cond_0

    .line 726
    iput-boolean v7, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    .line 729
    :cond_0
    const/4 v1, 0x0

    .line 730
    .local v1, validMajorCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_2

    .line 732
    iget-object v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrIsValidWithTouchMajor:[Z

    aget-boolean v2, v2, v0

    if-ne v2, v5, :cond_1

    .line 734
    add-int/lit8 v1, v1, 0x1

    .line 730
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 737
    :cond_2
    iget-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    if-ne v2, v5, :cond_3

    .line 738
    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mInitDiffx:F

    iget v3, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SmeanX:F

    sub-float/2addr v2, v3

    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mDiffx:F

    .line 739
    iget-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mVarXBig:Z

    if-nez v2, :cond_3

    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mDiffx:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mMoveXTH:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    if-lt v1, v6, :cond_3

    .line 740
    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepRightReverseSum:F

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_4

    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mFalseAngleCnt:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_4

    .line 741
    const-string v2, "GestureDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Surface Touch Event] Palm Swipe - RIGHT, max s:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mMaxSize:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s3:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s4:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mDiffx:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iget-object v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    invoke-interface {v2, v5}, Landroid/view/GestureDetector$OnShapeGestureListener;->onSweepDown(I)Z

    .line 743
    iput-boolean v5, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mbPalmSwipeDetected:Z

    .line 751
    :cond_3
    :goto_1
    return-void

    .line 744
    :cond_4
    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_3

    .line 745
    const-string v2, "GestureDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Surface Touch Event] Palm Swipe - LEFT, max s:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mMaxSize:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s3:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s4:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mDiffx:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget-object v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    invoke-interface {v2, v6}, Landroid/view/GestureDetector$OnShapeGestureListener;->onSweepDown(I)Z

    .line 747
    iput-boolean v5, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mbPalmSwipeDetected:Z

    goto :goto_1
.end method

.method public SetArrMaxTouchMajor(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 611
    invoke-virtual {p0, p1}, Landroid/view/GestureDetector$PalmSweepRecognizer;->GetRangeNum(Landroid/view/GestureDetector$SurfaceTouchSharingData;)I

    move-result v0

    .line 612
    .local v0, range:I
    iget-object v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrMaxTouchMajor:[I

    aget v1, v1, v0

    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumMajor:F

    float-to-int v2, v2

    if-ge v1, v2, :cond_0

    .line 614
    iget-object v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrMaxTouchMajor:[I

    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumMajor:F

    float-to-int v2, v2

    aput v2, v1, v0

    .line 616
    :cond_0
    iget-object v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrIsValidWithTouchMajor:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_1

    .line 618
    iget-object v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrIsValidWithTouchMajor:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 619
    iget-object v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    float-to-int v2, v2

    aput v2, v1, v0

    .line 621
    :cond_1
    return-void
.end method

.method public UpdateData(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 754
    iget-boolean v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mIsRotated:Z

    if-nez v0, :cond_0

    .line 755
    const/16 v0, 0x15e

    iput v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mMoveXTH:I

    .line 760
    :goto_0
    iget v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanX:F

    iput v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanXpre:F

    .line 761
    iget v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SmeanX:F

    iput v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanX:F

    .line 762
    return-void

    .line 757
    :cond_0
    const/16 v0, 0x258

    iput v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mMoveXTH:I

    goto :goto_0
.end method

.method public getSweepDown()Z
    .locals 3

    .prologue
    .line 604
    iget-boolean v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 605
    const-string v0, "GestureDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PalmSweepRecognizer getSweepDown return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_0
    iget-boolean v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    return v0
.end method
