.class Landroid/view/GestureDetector$TwistRecognizer;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwistRecognizer"
.end annotation


# instance fields
.field public mAngleTemp:[I

.field public mAverDiffAngleFromInitAngle:I

.field public mAverSampDiffAngle:I

.field public mCntZero:I

.field public mDetectedCnt:I

.field public mInitAngle:I

.field public mInitTwist:Z

.field public mInitTwistAngle:I

.field public mInitX:I

.field public mInitY:I

.field public mMaxTouchN:I

.field public mPreFilteredAngle:I

.field public mRotatedAngle:F

.field public mSumDiffAngleFromInitAngle:I

.field public mSumSampDiffAngle:I

.field public mTwistCancel:Z

.field public mTwistCase1Down:Z

.field public mTwistCase2Down:Z

.field public mTwistDisX:I

.field public mTwistDisY:I

.field public mTwistDown:Z

.field public mTwistInitTime:J

.field public mTwistStart:Z

.field public mTwistTempDown:Z

.field final synthetic this$0:Landroid/view/GestureDetector;


# direct methods
.method private constructor <init>(Landroid/view/GestureDetector;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 794
    iput-object p1, p0, Landroid/view/GestureDetector$TwistRecognizer;->this$0:Landroid/view/GestureDetector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 795
    iput-boolean v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistDown:Z

    .line 796
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitTwist:Z

    .line 797
    iput-boolean v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistStart:Z

    .line 798
    iput-boolean v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistCancel:Z

    .line 799
    iput-boolean v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistTempDown:Z

    .line 800
    iput-boolean v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistCase1Down:Z

    .line 801
    iput-boolean v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistCase2Down:Z

    .line 803
    iput v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitTwistAngle:I

    .line 804
    iput v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mMaxTouchN:I

    .line 805
    iput v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitX:I

    .line 806
    iput v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitY:I

    .line 807
    iput v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitAngle:I

    .line 808
    iput v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mSumDiffAngleFromInitAngle:I

    .line 809
    iput v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mSumSampDiffAngle:I

    .line 810
    iput v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mAverDiffAngleFromInitAngle:I

    .line 811
    iput v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mAverSampDiffAngle:I

    .line 812
    iput v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistDisX:I

    .line 813
    iput v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistDisY:I

    .line 815
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/GestureDetector$TwistRecognizer;->mAngleTemp:[I

    .line 816
    iput v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mPreFilteredAngle:I

    .line 817
    iput v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mCntZero:I

    .line 819
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/GestureDetector$TwistRecognizer;->mRotatedAngle:F

    .line 821
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistInitTime:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/GestureDetector;Landroid/view/GestureDetector$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 794
    invoke-direct {p0, p1}, Landroid/view/GestureDetector$TwistRecognizer;-><init>(Landroid/view/GestureDetector;)V

    return-void
.end method


# virtual methods
.method public AngleFilter(Landroid/view/GestureDetector$SurfaceTouchSharingData;I)I
    .locals 5
    .parameter "data"
    .parameter "angle"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 976
    const/4 v0, 0x0

    .line 978
    .local v0, tFilteredAngle:I
    iget v1, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    if-ne v1, v3, :cond_0

    .line 979
    move v0, p2

    .line 986
    :goto_0
    iget-object v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mAngleTemp:[I

    iget-object v2, p0, Landroid/view/GestureDetector$TwistRecognizer;->mAngleTemp:[I

    aget v2, v2, v3

    aput v2, v1, v4

    .line 987
    iget-object v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mAngleTemp:[I

    aput p2, v1, v3

    .line 989
    return v0

    .line 980
    :cond_0
    iget v1, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    if-ne v1, v4, :cond_1

    .line 981
    iget-object v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mAngleTemp:[I

    aget v1, v1, v3

    add-int/2addr v1, p2

    div-int/lit8 v0, v1, 0x2

    goto :goto_0

    .line 983
    :cond_1
    iget-object v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mAngleTemp:[I

    aget v1, v1, v3

    add-int/2addr v1, p2

    iget-object v2, p0, Landroid/view/GestureDetector$TwistRecognizer;->mAngleTemp:[I

    aget v2, v2, v4

    add-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x3

    goto :goto_0
.end method

.method public CompensatedAngle(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V
    .locals 4
    .parameter "data"

    .prologue
    const/16 v3, 0x5a

    const/4 v2, 0x0

    .line 948
    iget v0, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitAngle:I

    if-ne v0, v3, :cond_2

    .line 949
    iget-object v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    aget-object v0, v0, v2

    aget v0, v0, v2

    if-lez v0, :cond_1

    .line 950
    iget-object v0, p0, Landroid/view/GestureDetector$TwistRecognizer;->mAngleTemp:[I

    iget-object v1, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    aget-object v1, v1, v2

    aget v1, v1, v2

    aput v1, v0, v2

    .line 973
    :cond_0
    :goto_0
    return-void

    .line 951
    :cond_1
    iget-object v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    aget-object v0, v0, v2

    aget v0, v0, v2

    if-gez v0, :cond_0

    .line 952
    iget-object v0, p0, Landroid/view/GestureDetector$TwistRecognizer;->mAngleTemp:[I

    iget-object v1, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    aget-object v1, v1, v2

    aget v1, v1, v2

    add-int/lit16 v1, v1, 0xb4

    aput v1, v0, v2

    goto :goto_0

    .line 954
    :cond_2
    iget v0, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitAngle:I

    if-nez v0, :cond_4

    .line 955
    iget-object v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    aget-object v0, v0, v2

    aget v0, v0, v2

    if-lez v0, :cond_3

    .line 956
    iget-object v0, p0, Landroid/view/GestureDetector$TwistRecognizer;->mAngleTemp:[I

    iget-object v1, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    aget-object v1, v1, v2

    aget v1, v1, v2

    aput v1, v0, v2

    goto :goto_0

    .line 957
    :cond_3
    iget-object v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    aget-object v0, v0, v2

    aget v0, v0, v2

    if-gez v0, :cond_0

    .line 958
    iget-object v0, p0, Landroid/view/GestureDetector$TwistRecognizer;->mAngleTemp:[I

    iget-object v1, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    aget-object v1, v1, v2

    aget v1, v1, v2

    aput v1, v0, v2

    goto :goto_0

    .line 960
    :cond_4
    iget v0, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitAngle:I

    if-lez v0, :cond_6

    .line 961
    iget v0, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitAngle:I

    iget-object v1, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    aget-object v1, v1, v2

    aget v1, v1, v2

    sub-int/2addr v0, v1

    if-ge v0, v3, :cond_5

    .line 962
    iget-object v0, p0, Landroid/view/GestureDetector$TwistRecognizer;->mAngleTemp:[I

    iget-object v1, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    aget-object v1, v1, v2

    aget v1, v1, v2

    aput v1, v0, v2

    goto :goto_0

    .line 964
    :cond_5
    iget-object v0, p0, Landroid/view/GestureDetector$TwistRecognizer;->mAngleTemp:[I

    iget-object v1, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    aget-object v1, v1, v2

    aget v1, v1, v2

    add-int/lit16 v1, v1, 0xb4

    aput v1, v0, v2

    goto :goto_0

    .line 966
    :cond_6
    iget v0, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitAngle:I

    if-gez v0, :cond_0

    .line 967
    iget v0, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitAngle:I

    iget-object v1, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    aget-object v1, v1, v2

    aget v1, v1, v2

    sub-int/2addr v0, v1

    const/16 v1, -0x5a

    if-le v0, v1, :cond_7

    .line 968
    iget-object v0, p0, Landroid/view/GestureDetector$TwistRecognizer;->mAngleTemp:[I

    iget-object v1, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    aget-object v1, v1, v2

    aget v1, v1, v2

    aput v1, v0, v2

    goto/16 :goto_0

    .line 970
    :cond_7
    iget-object v0, p0, Landroid/view/GestureDetector$TwistRecognizer;->mAngleTemp:[I

    iget-object v1, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    aget-object v1, v1, v2

    aget v1, v1, v2

    rsub-int v1, v1, 0xb4

    neg-int v1, v1

    aput v1, v0, v2

    goto/16 :goto_0
.end method

.method public Initialize()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 993
    iput-boolean v2, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistDown:Z

    .line 994
    iput-boolean v2, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistTempDown:Z

    .line 995
    iput-boolean v2, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistCase1Down:Z

    .line 996
    iput-boolean v2, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistCase2Down:Z

    .line 997
    iput-boolean v2, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistStart:Z

    .line 998
    iput-boolean v2, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistCancel:Z

    .line 999
    iput v2, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitTwistAngle:I

    .line 1000
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitTwist:Z

    .line 1001
    iput v2, p0, Landroid/view/GestureDetector$TwistRecognizer;->mMaxTouchN:I

    .line 1002
    iput v3, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitX:I

    .line 1003
    iput v3, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitY:I

    .line 1004
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mRotatedAngle:F

    .line 1005
    iput v2, p0, Landroid/view/GestureDetector$TwistRecognizer;->mSumDiffAngleFromInitAngle:I

    .line 1006
    iput v2, p0, Landroid/view/GestureDetector$TwistRecognizer;->mAverDiffAngleFromInitAngle:I

    .line 1007
    iput v2, p0, Landroid/view/GestureDetector$TwistRecognizer;->mSumSampDiffAngle:I

    .line 1008
    iput v2, p0, Landroid/view/GestureDetector$TwistRecognizer;->mAverSampDiffAngle:I

    .line 1009
    iput v2, p0, Landroid/view/GestureDetector$TwistRecognizer;->mPreFilteredAngle:I

    .line 1010
    iput v2, p0, Landroid/view/GestureDetector$TwistRecognizer;->mCntZero:I

    .line 1011
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/view/GestureDetector$TwistRecognizer;->mAngleTemp:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1012
    :cond_0
    return-void
.end method

.method public Process(Landroid/view/MotionEvent;Landroid/view/GestureDetector$SurfaceTouchSharingData;)V
    .locals 12
    .parameter "ev"
    .parameter "data"

    .prologue
    .line 825
    const/4 v5, 0x0

    .line 826
    .local v5, tDist:I
    const/4 v6, 0x0

    .line 827
    .local v6, tFilteredAngle:I
    const/4 v2, 0x0

    .line 828
    .local v2, tDiffAngleFromInitAngle:I
    const/4 v7, 0x0

    .line 830
    .local v7, tSampDiffAngle:I
    iget v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mAction:I

    if-nez v8, :cond_0

    .line 831
    iget-object v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->this$0:Landroid/view/GestureDetector;

    iget-object v9, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-static {v9}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v9

    #setter for: Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;
    invoke-static {v8, v9}, Landroid/view/GestureDetector;->access$002(Landroid/view/GestureDetector;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 832
    iget-object v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sxd:[[I

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget v8, v8, v9

    iput v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitX:I

    .line 833
    iget-object v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Syd:[[I

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget v8, v8, v9

    iput v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitY:I

    .line 834
    iget-object v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget v8, v8, v9

    iput v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitAngle:I

    .line 838
    :cond_0
    iget-object v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sxd:[[I

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget v8, v8, v9

    iget v9, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitX:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iput v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistDisX:I

    .line 839
    iget-object v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Syd:[[I

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget v8, v8, v9

    iget v9, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitY:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iput v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistDisY:I

    .line 840
    iget v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistDisX:I

    iget v9, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistDisX:I

    mul-int/2addr v8, v9

    iget v9, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistDisY:I

    iget v10, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistDisY:I

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v5, v8

    .line 842
    iget v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mMaxTouchN:I

    iget-object v9, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Nd:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    if-ge v8, v9, :cond_1

    iget-object v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Nd:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    iput v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mMaxTouchN:I

    .line 845
    :cond_1
    invoke-virtual {p0, p2}, Landroid/view/GestureDetector$TwistRecognizer;->CompensatedAngle(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V

    .line 846
    iget-object v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mAngleTemp:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    invoke-virtual {p0, p2, v8}, Landroid/view/GestureDetector$TwistRecognizer;->AngleFilter(Landroid/view/GestureDetector$SurfaceTouchSharingData;I)I

    move-result v6

    .line 849
    iget-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistDown:Z

    if-nez v8, :cond_10

    iget-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistCancel:Z

    if-nez v8, :cond_10

    iget v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mMaxTouchN:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_10

    .line 850
    iget-object v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sed:[[F

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget v8, v8, v9

    float-to-double v8, v8

    const-wide v10, 0x3ffccccccccccccdL

    cmpl-double v8, v8, v10

    if-lez v8, :cond_2

    iget v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mMaxSize:F

    const/high16 v9, 0x4248

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    iget-object v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Ssd:[[I

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget v8, v8, v9

    const/16 v9, 0x10

    if-ge v8, v9, :cond_3

    :cond_2
    iget-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistStart:Z

    if-eqz v8, :cond_10

    .line 852
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 855
    .local v0, tCurTime:J
    iget-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitTwist:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    .line 856
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitTwist:Z

    .line 857
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistStart:Z

    .line 858
    iput v6, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitTwistAngle:I

    .line 859
    iput v6, p0, Landroid/view/GestureDetector$TwistRecognizer;->mPreFilteredAngle:I

    .line 860
    iput-wide v0, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistInitTime:J

    .line 863
    :cond_4
    iget-wide v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistInitTime:J

    sub-long v3, v0, v8

    .line 865
    .local v3, tDiffTime:J
    iget v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitTwistAngle:I

    sub-int v2, v6, v8

    .line 866
    iget v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mPreFilteredAngle:I

    sub-int v7, v6, v8

    .line 868
    iget v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mSumSampDiffAngle:I

    add-int/2addr v8, v7

    iput v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mSumSampDiffAngle:I

    .line 869
    iget v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mSumDiffAngleFromInitAngle:I

    add-int/2addr v8, v2

    iput v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mSumDiffAngleFromInitAngle:I

    .line 871
    iget v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mSumSampDiffAngle:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/4 v9, 0x3

    if-le v8, v9, :cond_5

    .line 872
    iput-wide v0, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistInitTime:J

    .line 875
    :cond_5
    iget-wide v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistInitTime:J

    sub-long v3, v0, v8

    .line 877
    if-nez v7, :cond_6

    .line 878
    iget v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mCntZero:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mCntZero:I

    .line 882
    :cond_6
    iget v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_11

    .line 883
    const/4 v8, 0x0

    iput v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->DiffAngle:F

    .line 889
    :goto_0
    iget v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mSumSampDiffAngle:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/16 v9, 0x16

    if-lt v8, v9, :cond_8

    iget-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistTempDown:Z

    if-nez v8, :cond_8

    iget v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mAction:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_8

    iget v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    const/4 v9, 0x5

    if-le v8, v9, :cond_8

    .line 890
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistTempDown:Z

    .line 891
    iget v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->DiffAngle:F

    iput v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mRotatedAngle:F

    .line 892
    iget v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    iput v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mDetectedCnt:I

    .line 893
    iget v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mCntZero:I

    const/16 v9, 0x14

    if-gt v8, v9, :cond_7

    const-wide/16 v8, 0x190

    cmp-long v8, v3, v8

    if-gtz v8, :cond_7

    iget v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    const/16 v9, 0x1e

    if-le v8, v9, :cond_8

    .line 894
    :cond_7
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistTempDown:Z

    .line 899
    :cond_8
    iget-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistTempDown:Z

    if-eqz v8, :cond_9

    .line 900
    iget v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    const/16 v9, 0x1e

    if-lt v8, v9, :cond_12

    .line 901
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistCase1Down:Z

    .line 907
    :cond_9
    :goto_1
    iget-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistCase1Down:Z

    if-nez v8, :cond_a

    iget-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistCase2Down:Z

    if-eqz v8, :cond_b

    .line 908
    :cond_a
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistDown:Z

    .line 912
    :cond_b
    iget-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistStart:Z

    if-eqz v8, :cond_d

    .line 913
    const/16 v8, 0x78

    if-le v5, v8, :cond_c

    .line 914
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistCancel:Z

    .line 915
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistDown:Z

    .line 917
    :cond_c
    iget-object v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sed:[[F

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget v8, v8, v9

    float-to-double v8, v8

    const-wide v10, 0x3ff6666666666666L

    cmpg-double v8, v8, v10

    if-gez v8, :cond_d

    iget-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistTempDown:Z

    if-nez v8, :cond_d

    .line 918
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistCancel:Z

    .line 919
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistDown:Z

    .line 923
    :cond_d
    iget v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mAction:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_e

    iget v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    iget v9, p0, Landroid/view/GestureDetector$TwistRecognizer;->mDetectedCnt:I

    sub-int/2addr v8, v9

    const/4 v9, 0x1

    if-gt v8, v9, :cond_e

    .line 924
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistDown:Z

    .line 927
    :cond_e
    iget-wide v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistInitTime:J

    sub-long v8, v0, v8

    const-wide/16 v10, 0x3e8

    cmp-long v8, v8, v10

    if-lez v8, :cond_f

    .line 928
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistDown:Z

    .line 929
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistCancel:Z

    .line 933
    :cond_f
    iget-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistDown:Z

    if-eqz v8, :cond_10

    .line 934
    iget v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mRotatedAngle:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_13

    .line 935
    const-string v8, "GestureDetector"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Surface Touch Event] Twist - Right, DiffAngle:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/view/GestureDetector$TwistRecognizer;->mRotatedAngle:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " dist:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    iget-object v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    iget-object v9, p0, Landroid/view/GestureDetector$TwistRecognizer;->this$0:Landroid/view/GestureDetector;

    #getter for: Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;
    invoke-static {v9}, Landroid/view/GestureDetector;->access$000(Landroid/view/GestureDetector;)Landroid/view/MotionEvent;

    move-result-object v9

    iget v10, p0, Landroid/view/GestureDetector$TwistRecognizer;->mRotatedAngle:F

    invoke-interface {v8, v9, p1, v10}, Landroid/view/GestureDetector$OnShapeGestureListener;->onTwist(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z

    .line 944
    .end local v0           #tCurTime:J
    .end local v3           #tDiffTime:J
    :cond_10
    :goto_2
    iput v6, p0, Landroid/view/GestureDetector$TwistRecognizer;->mPreFilteredAngle:I

    .line 945
    return-void

    .line 885
    .restart local v0       #tCurTime:J
    .restart local v3       #tDiffTime:J
    :cond_11
    iget v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mInitTwistAngle:I

    sub-int/2addr v8, v6

    int-to-float v8, v8

    iput v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->DiffAngle:F

    goto/16 :goto_0

    .line 902
    :cond_12
    iget v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mAction:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9

    .line 903
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/view/GestureDetector$TwistRecognizer;->mTwistCase2Down:Z

    goto/16 :goto_1

    .line 938
    :cond_13
    const-string v8, "GestureDetector"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Surface Touch Event] Twist - Left, DiffAngle:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/view/GestureDetector$TwistRecognizer;->mRotatedAngle:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " dist:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    iget-object v8, p2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    iget-object v9, p0, Landroid/view/GestureDetector$TwistRecognizer;->this$0:Landroid/view/GestureDetector;

    #getter for: Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;
    invoke-static {v9}, Landroid/view/GestureDetector;->access$000(Landroid/view/GestureDetector;)Landroid/view/MotionEvent;

    move-result-object v9

    iget v10, p0, Landroid/view/GestureDetector$TwistRecognizer;->mRotatedAngle:F

    invoke-interface {v8, v9, p1, v10}, Landroid/view/GestureDetector$OnShapeGestureListener;->onTwist(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z

    goto :goto_2
.end method
