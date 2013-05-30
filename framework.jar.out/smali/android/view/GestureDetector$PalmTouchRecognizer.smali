.class Landroid/view/GestureDetector$PalmTouchRecognizer;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PalmTouchRecognizer"
.end annotation


# instance fields
.field private mPalmDown:Z

.field public final mPalmSizeTH1:I

.field public final mPalmSizeTH2:I

.field final synthetic this$0:Landroid/view/GestureDetector;


# direct methods
.method private constructor <init>(Landroid/view/GestureDetector;)V
    .locals 1
    .parameter

    .prologue
    .line 539
    iput-object p1, p0, Landroid/view/GestureDetector$PalmTouchRecognizer;->this$0:Landroid/view/GestureDetector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 541
    const/16 v0, 0xc8

    iput v0, p0, Landroid/view/GestureDetector$PalmTouchRecognizer;->mPalmSizeTH1:I

    .line 542
    const/16 v0, 0x50

    iput v0, p0, Landroid/view/GestureDetector$PalmTouchRecognizer;->mPalmSizeTH2:I

    .line 544
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/GestureDetector$PalmTouchRecognizer;->mPalmDown:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/GestureDetector;Landroid/view/GestureDetector$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 539
    invoke-direct {p0, p1}, Landroid/view/GestureDetector$PalmTouchRecognizer;-><init>(Landroid/view/GestureDetector;)V

    return-void
.end method


# virtual methods
.method public Initialize()V
    .locals 1

    .prologue
    .line 572
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/GestureDetector$PalmTouchRecognizer;->mPalmDown:Z

    .line 573
    return-void
.end method

.method public Process(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V
    .locals 4
    .parameter "data"

    .prologue
    const/high16 v3, 0x4396

    const/4 v2, 0x1

    .line 547
    iget-boolean v0, p0, Landroid/view/GestureDetector$PalmTouchRecognizer;->mPalmDown:Z

    if-nez v0, :cond_2

    .line 548
    iget v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    const/high16 v1, 0x4348

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 549
    iput-boolean v2, p0, Landroid/view/GestureDetector$PalmTouchRecognizer;->mPalmDown:Z

    .line 552
    :cond_0
    iget-object v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Nd:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    iget v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    const/high16 v1, 0x42a0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 553
    iget v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SvarX:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    iget v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SvarY:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    .line 554
    iput-boolean v2, p0, Landroid/view/GestureDetector$PalmTouchRecognizer;->mPalmDown:Z

    .line 558
    :cond_1
    iget-boolean v0, p0, Landroid/view/GestureDetector$PalmTouchRecognizer;->mPalmDown:Z

    if-ne v0, v2, :cond_2

    .line 559
    const-string v0, "GestureDetector"

    const-string v1, "[Surface Touch Event] Palm touch Down"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    iget-object v1, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnShapeGestureListener;->onPalm(Landroid/view/MotionEvent;)Z

    .line 565
    :cond_2
    iget v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mAction:I

    if-ne v0, v2, :cond_3

    iget-boolean v0, p0, Landroid/view/GestureDetector$PalmTouchRecognizer;->mPalmDown:Z

    if-ne v0, v2, :cond_3

    .line 566
    const-string v0, "GestureDetector"

    const-string v1, "[Surface Touch Event] Palm touch UP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    iget-object v1, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnShapeGestureListener;->onPalm(Landroid/view/MotionEvent;)Z

    .line 569
    :cond_3
    return-void
.end method
