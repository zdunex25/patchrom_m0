.class Lcom/android/internal/widget/SPenGestureView$8;
.super Ljava/lang/Object;
.source "SPenGestureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/SPenGestureView;->addSPenEvent(Landroid/view/MotionEvent;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SPenGestureView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SPenGestureView;)V
    .locals 0
    .parameter

    .prologue
    .line 1563
    iput-object p1, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 1566
    const-string v10, "SPenGesture"

    const-string v11, "mSPenGestureCropDispatchThread run!!"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 1568
    .local v0, boundsOfPath:Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 1570
    .local v1, boundsOfSecondPath:Landroid/graphics/RectF;
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mIsUsablePath:Z
    invoke-static {v10}, Lcom/android/internal/widget/SPenGestureView;->access$2900(Lcom/android/internal/widget/SPenGestureView;)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 1571
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;
    invoke-static {v10}, Lcom/android/internal/widget/SPenGestureView;->access$3000(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Path;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v0, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1574
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget v11, v0, Landroid/graphics/RectF;->right:F

    float-to-int v11, v11

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordX:I
    invoke-static {v10, v11}, Lcom/android/internal/widget/SPenGestureView;->access$3102(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1575
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget v11, v0, Landroid/graphics/RectF;->left:F

    float-to-int v11, v11

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordX:I
    invoke-static {v10, v11}, Lcom/android/internal/widget/SPenGestureView;->access$3202(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1576
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget v11, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v11, v11

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordY:I
    invoke-static {v10, v11}, Lcom/android/internal/widget/SPenGestureView;->access$3302(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1577
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget v11, v0, Landroid/graphics/RectF;->top:F

    float-to-int v11, v11

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordY:I
    invoke-static {v10, v11}, Lcom/android/internal/widget/SPenGestureView;->access$3402(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1580
    :cond_0
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mIsUsableSecondPath:Z
    invoke-static {v10}, Lcom/android/internal/widget/SPenGestureView;->access$3500(Lcom/android/internal/widget/SPenGestureView;)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    .line 1581
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;
    invoke-static {v10}, Lcom/android/internal/widget/SPenGestureView;->access$3600(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Path;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v1, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1584
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mIsUsablePath:Z
    invoke-static {v10}, Lcom/android/internal/widget/SPenGestureView;->access$2900(Lcom/android/internal/widget/SPenGestureView;)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    .line 1585
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordX:I
    invoke-static {v10}, Lcom/android/internal/widget/SPenGestureView;->access$3100(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v10

    int-to-float v10, v10

    iget v11, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1

    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget v11, v1, Landroid/graphics/RectF;->right:F

    float-to-int v11, v11

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordX:I
    invoke-static {v10, v11}, Lcom/android/internal/widget/SPenGestureView;->access$3102(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1586
    :cond_1
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordX:I
    invoke-static {v10}, Lcom/android/internal/widget/SPenGestureView;->access$3200(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v10

    int-to-float v10, v10

    iget v11, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget v11, v1, Landroid/graphics/RectF;->left:F

    float-to-int v11, v11

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordX:I
    invoke-static {v10, v11}, Lcom/android/internal/widget/SPenGestureView;->access$3202(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1587
    :cond_2
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordY:I
    invoke-static {v10}, Lcom/android/internal/widget/SPenGestureView;->access$3300(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v10

    int-to-float v10, v10

    iget v11, v1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v10, v10, v11

    if-gez v10, :cond_3

    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget v11, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v11, v11

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordY:I
    invoke-static {v10, v11}, Lcom/android/internal/widget/SPenGestureView;->access$3302(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1588
    :cond_3
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordY:I
    invoke-static {v10}, Lcom/android/internal/widget/SPenGestureView;->access$3400(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v10

    int-to-float v10, v10

    iget v11, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_4

    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget v11, v1, Landroid/graphics/RectF;->top:F

    float-to-int v11, v11

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordY:I
    invoke-static {v10, v11}, Lcom/android/internal/widget/SPenGestureView;->access$3402(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1601
    :cond_4
    :goto_0
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget-object v11, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordX:I
    invoke-static {v11}, Lcom/android/internal/widget/SPenGestureView;->access$3100(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v11

    add-int/lit8 v11, v11, 0xa

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordX:I
    invoke-static {v10, v11}, Lcom/android/internal/widget/SPenGestureView;->access$3102(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1602
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget-object v11, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordX:I
    invoke-static {v11}, Lcom/android/internal/widget/SPenGestureView;->access$3200(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v11

    add-int/lit8 v11, v11, -0xa

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordX:I
    invoke-static {v10, v11}, Lcom/android/internal/widget/SPenGestureView;->access$3202(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1603
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget-object v11, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordY:I
    invoke-static {v11}, Lcom/android/internal/widget/SPenGestureView;->access$3300(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v11

    add-int/lit8 v11, v11, 0xa

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordY:I
    invoke-static {v10, v11}, Lcom/android/internal/widget/SPenGestureView;->access$3302(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1604
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget-object v11, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordY:I
    invoke-static {v11}, Lcom/android/internal/widget/SPenGestureView;->access$3400(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v11

    add-int/lit8 v11, v11, -0xa

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordY:I
    invoke-static {v10, v11}, Lcom/android/internal/widget/SPenGestureView;->access$3402(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1606
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget-object v11, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordX:I
    invoke-static {v11}, Lcom/android/internal/widget/SPenGestureView;->access$3100(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v11

    iget-object v12, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordX:I
    invoke-static {v12}, Lcom/android/internal/widget/SPenGestureView;->access$3200(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v12

    sub-int/2addr v11, v12

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mCropImageWidth:I
    invoke-static {v10, v11}, Lcom/android/internal/widget/SPenGestureView;->access$3702(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1607
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget-object v11, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordY:I
    invoke-static {v11}, Lcom/android/internal/widget/SPenGestureView;->access$3300(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v11

    iget-object v12, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordY:I
    invoke-static {v12}, Lcom/android/internal/widget/SPenGestureView;->access$3400(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v12

    sub-int/2addr v11, v12

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mCropImageHeight:I
    invoke-static {v10, v11}, Lcom/android/internal/widget/SPenGestureView;->access$3802(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1610
    const-wide/16 v10, 0x64

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1614
    :goto_1
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget-object v11, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #calls: Lcom/android/internal/widget/SPenGestureView;->GetDefaultDisplayBimap()Landroid/graphics/Bitmap;
    invoke-static {v11}, Lcom/android/internal/widget/SPenGestureView;->access$4000(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Bitmap;

    move-result-object v11

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;
    invoke-static {v10, v11}, Lcom/android/internal/widget/SPenGestureView;->access$3902(Lcom/android/internal/widget/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1616
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget-object v11, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayWidth:I
    invoke-static {v11}, Lcom/android/internal/widget/SPenGestureView;->access$4200(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v11

    iget-object v12, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayHeight:I
    invoke-static {v12}, Lcom/android/internal/widget/SPenGestureView;->access$4300(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mCropTempBitmap:Landroid/graphics/Bitmap;
    invoke-static {v10, v11}, Lcom/android/internal/widget/SPenGestureView;->access$4102(Lcom/android/internal/widget/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1617
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget-object v11, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayWidth:I
    invoke-static {v11}, Lcom/android/internal/widget/SPenGestureView;->access$4200(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v11

    iget-object v12, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayHeight:I
    invoke-static {v12}, Lcom/android/internal/widget/SPenGestureView;->access$4300(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;
    invoke-static {v10, v11}, Lcom/android/internal/widget/SPenGestureView;->access$4402(Lcom/android/internal/widget/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1619
    new-instance v5, Landroid/graphics/Canvas;

    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropTempBitmap:Landroid/graphics/Bitmap;
    invoke-static {v10}, Lcom/android/internal/widget/SPenGestureView;->access$4100(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {v5, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1620
    .local v5, canvasForCrop:Landroid/graphics/Canvas;
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;
    invoke-static {v10}, Lcom/android/internal/widget/SPenGestureView;->access$3900(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v5, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1621
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mIsUsablePath:Z
    invoke-static {v10}, Lcom/android/internal/widget/SPenGestureView;->access$2900(Lcom/android/internal/widget/SPenGestureView;)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    .line 1622
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;
    invoke-static {v10}, Lcom/android/internal/widget/SPenGestureView;->access$3000(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Path;

    move-result-object v10

    sget-object v11, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v5, v10, v11}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 1624
    :cond_5
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mIsUsableSecondPath:Z
    invoke-static {v10}, Lcom/android/internal/widget/SPenGestureView;->access$3500(Lcom/android/internal/widget/SPenGestureView;)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    .line 1625
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;
    invoke-static {v10}, Lcom/android/internal/widget/SPenGestureView;->access$3600(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Path;

    move-result-object v10

    sget-object v11, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v5, v10, v11}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 1627
    :cond_6
    const/4 v10, 0x0

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v10, v11}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1630
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget-object v11, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropImageWidth:I
    invoke-static {v11}, Lcom/android/internal/widget/SPenGestureView;->access$3700(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v11

    iget-object v12, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropImageHeight:I
    invoke-static {v12}, Lcom/android/internal/widget/SPenGestureView;->access$3800(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mCropBitmap:Landroid/graphics/Bitmap;
    invoke-static {v10, v11}, Lcom/android/internal/widget/SPenGestureView;->access$4502(Lcom/android/internal/widget/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1631
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropBitmap:Landroid/graphics/Bitmap;
    invoke-static {v10}, Lcom/android/internal/widget/SPenGestureView;->access$4500(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {v2, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1632
    .local v2, canvasFinal:Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordX:I
    invoke-static {v10}, Lcom/android/internal/widget/SPenGestureView;->access$3200(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordY:I
    invoke-static {v11}, Lcom/android/internal/widget/SPenGestureView;->access$3400(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v11

    iget-object v12, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordX:I
    invoke-static {v12}, Lcom/android/internal/widget/SPenGestureView;->access$3100(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v12

    iget-object v13, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordY:I
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$3300(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v13

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1633
    .local v9, srcRectForCrop:Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropImageWidth:I
    invoke-static {v12}, Lcom/android/internal/widget/SPenGestureView;->access$3700(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v12

    iget-object v13, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropImageHeight:I
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$3800(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v13

    invoke-direct {v6, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1634
    .local v6, dstRectForCrop:Landroid/graphics/Rect;
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropTempBitmap:Landroid/graphics/Bitmap;
    invoke-static {v10}, Lcom/android/internal/widget/SPenGestureView;->access$4100(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v9, v6, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1637
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;
    invoke-static {v10}, Lcom/android/internal/widget/SPenGestureView;->access$4400(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {v4, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1638
    .local v4, canvasForAnimationLine:Landroid/graphics/Canvas;
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mIsUsablePath:Z
    invoke-static {v10}, Lcom/android/internal/widget/SPenGestureView;->access$2900(Lcom/android/internal/widget/SPenGestureView;)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    .line 1639
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;
    invoke-static {v10}, Lcom/android/internal/widget/SPenGestureView;->access$3000(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Path;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;
    invoke-static {v11}, Lcom/android/internal/widget/SPenGestureView;->access$4600(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Paint;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1640
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mNumColsedCurves:I
    invoke-static {v10}, Lcom/android/internal/widget/SPenGestureView;->access$4700(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v10

    const/4 v11, 0x2

    if-le v10, v11, :cond_a

    .line 1641
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mStartPointXForCircle:F
    invoke-static {v10}, Lcom/android/internal/widget/SPenGestureView;->access$4800(Lcom/android/internal/widget/SPenGestureView;)F

    move-result v10

    iget-object v11, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mStartPointYForCircle:F
    invoke-static {v11}, Lcom/android/internal/widget/SPenGestureView;->access$4900(Lcom/android/internal/widget/SPenGestureView;)F

    move-result v11

    const/high16 v12, 0x4100

    iget-object v13, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$5000(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {v4, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1642
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mStartPointXForCircle:F
    invoke-static {v10}, Lcom/android/internal/widget/SPenGestureView;->access$4800(Lcom/android/internal/widget/SPenGestureView;)F

    move-result v10

    iget-object v11, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mStartPointYForCircle:F
    invoke-static {v11}, Lcom/android/internal/widget/SPenGestureView;->access$4900(Lcom/android/internal/widget/SPenGestureView;)F

    move-result v11

    const/high16 v12, 0x4080

    iget-object v13, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$5100(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {v4, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1649
    :cond_7
    :goto_2
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mIsUsableSecondPath:Z
    invoke-static {v10}, Lcom/android/internal/widget/SPenGestureView;->access$3500(Lcom/android/internal/widget/SPenGestureView;)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    .line 1650
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;
    invoke-static {v10}, Lcom/android/internal/widget/SPenGestureView;->access$3600(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Path;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;
    invoke-static {v11}, Lcom/android/internal/widget/SPenGestureView;->access$4600(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Paint;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1651
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointX:I
    invoke-static {v10}, Lcom/android/internal/widget/SPenGestureView;->access$5400(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointY:I
    invoke-static {v11}, Lcom/android/internal/widget/SPenGestureView;->access$5500(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x4100

    iget-object v13, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$5000(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {v4, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1652
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointX:I
    invoke-static {v10}, Lcom/android/internal/widget/SPenGestureView;->access$5400(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointY:I
    invoke-static {v11}, Lcom/android/internal/widget/SPenGestureView;->access$5500(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x4080

    iget-object v13, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$5100(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {v4, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1657
    :cond_8
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget-object v11, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropImageWidth:I
    invoke-static {v11}, Lcom/android/internal/widget/SPenGestureView;->access$3700(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v11

    iget-object v12, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropImageHeight:I
    invoke-static {v12}, Lcom/android/internal/widget/SPenGestureView;->access$3800(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;
    invoke-static {v10, v11}, Lcom/android/internal/widget/SPenGestureView;->access$5602(Lcom/android/internal/widget/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1658
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;
    invoke-static {v10}, Lcom/android/internal/widget/SPenGestureView;->access$5600(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {v3, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1659
    .local v3, canvasFinalForAnimation:Landroid/graphics/Canvas;
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropTempBitmap:Landroid/graphics/Bitmap;
    invoke-static {v10}, Lcom/android/internal/widget/SPenGestureView;->access$4100(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v9, v6, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1660
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;
    invoke-static {v10}, Lcom/android/internal/widget/SPenGestureView;->access$4400(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v9, v6, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1663
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget-object v11, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordX:I
    invoke-static {v11}, Lcom/android/internal/widget/SPenGestureView;->access$3100(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v11

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordXForIntent:I
    invoke-static {v10, v11}, Lcom/android/internal/widget/SPenGestureView;->access$5702(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1664
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget-object v11, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordX:I
    invoke-static {v11}, Lcom/android/internal/widget/SPenGestureView;->access$3200(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v11

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordXForIntent:I
    invoke-static {v10, v11}, Lcom/android/internal/widget/SPenGestureView;->access$5802(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1665
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget-object v11, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordY:I
    invoke-static {v11}, Lcom/android/internal/widget/SPenGestureView;->access$3300(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v11

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordYForIntent:I
    invoke-static {v10, v11}, Lcom/android/internal/widget/SPenGestureView;->access$5902(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1666
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget-object v11, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordY:I
    invoke-static {v11}, Lcom/android/internal/widget/SPenGestureView;->access$3400(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v11

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordYForIntent:I
    invoke-static {v10, v11}, Lcom/android/internal/widget/SPenGestureView;->access$6002(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1668
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mDisplayHeightForMatrix:I
    invoke-static {v10}, Lcom/android/internal/widget/SPenGestureView;->access$6100(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v10

    if-ge v7, v10, :cond_c

    .line 1669
    const/4 v8, 0x0

    .local v8, j:I
    :goto_4
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mDisplayWidthForMatrix:I
    invoke-static {v10}, Lcom/android/internal/widget/SPenGestureView;->access$6200(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v10

    if-ge v8, v10, :cond_b

    .line 1670
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMatrixForCropping:[[I
    invoke-static {v10}, Lcom/android/internal/widget/SPenGestureView;->access$6300(Lcom/android/internal/widget/SPenGestureView;)[[I

    move-result-object v10

    aget-object v10, v10, v7

    const/4 v11, -0x1

    aput v11, v10, v8

    .line 1669
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1591
    .end local v2           #canvasFinal:Landroid/graphics/Canvas;
    .end local v3           #canvasFinalForAnimation:Landroid/graphics/Canvas;
    .end local v4           #canvasForAnimationLine:Landroid/graphics/Canvas;
    .end local v5           #canvasForCrop:Landroid/graphics/Canvas;
    .end local v6           #dstRectForCrop:Landroid/graphics/Rect;
    .end local v7           #i:I
    .end local v8           #j:I
    .end local v9           #srcRectForCrop:Landroid/graphics/Rect;
    :cond_9
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget v11, v1, Landroid/graphics/RectF;->right:F

    float-to-int v11, v11

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordX:I
    invoke-static {v10, v11}, Lcom/android/internal/widget/SPenGestureView;->access$3102(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1592
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget v11, v1, Landroid/graphics/RectF;->left:F

    float-to-int v11, v11

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordX:I
    invoke-static {v10, v11}, Lcom/android/internal/widget/SPenGestureView;->access$3202(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1593
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget v11, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v11, v11

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordY:I
    invoke-static {v10, v11}, Lcom/android/internal/widget/SPenGestureView;->access$3302(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1594
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget v11, v1, Landroid/graphics/RectF;->top:F

    float-to-int v11, v11

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordY:I
    invoke-static {v10, v11}, Lcom/android/internal/widget/SPenGestureView;->access$3402(Lcom/android/internal/widget/SPenGestureView;I)I

    goto/16 :goto_0

    .line 1645
    .restart local v2       #canvasFinal:Landroid/graphics/Canvas;
    .restart local v4       #canvasForAnimationLine:Landroid/graphics/Canvas;
    .restart local v5       #canvasForCrop:Landroid/graphics/Canvas;
    .restart local v6       #dstRectForCrop:Landroid/graphics/Rect;
    .restart local v9       #srcRectForCrop:Landroid/graphics/Rect;
    :cond_a
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointX:I
    invoke-static {v10}, Lcom/android/internal/widget/SPenGestureView;->access$5200(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointY:I
    invoke-static {v11}, Lcom/android/internal/widget/SPenGestureView;->access$5300(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x4100

    iget-object v13, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$5000(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {v4, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1646
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointX:I
    invoke-static {v10}, Lcom/android/internal/widget/SPenGestureView;->access$5200(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointY:I
    invoke-static {v11}, Lcom/android/internal/widget/SPenGestureView;->access$5300(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x4080

    iget-object v13, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$5100(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {v4, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 1668
    .restart local v3       #canvasFinalForAnimation:Landroid/graphics/Canvas;
    .restart local v7       #i:I
    .restart local v8       #j:I
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1673
    .end local v8           #j:I
    :cond_c
    const/4 v7, 0x0

    :goto_5
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mDisplayWidthForMatrix:I
    invoke-static {v10}, Lcom/android/internal/widget/SPenGestureView;->access$6200(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v10

    if-ge v7, v10, :cond_e

    .line 1674
    const/4 v8, 0x0

    .restart local v8       #j:I
    :goto_6
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mDisplayHeightForMatrix:I
    invoke-static {v10}, Lcom/android/internal/widget/SPenGestureView;->access$6100(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v10

    if-ge v8, v10, :cond_d

    .line 1675
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMatrixForCroppingHorizontal:[[I
    invoke-static {v10}, Lcom/android/internal/widget/SPenGestureView;->access$6400(Lcom/android/internal/widget/SPenGestureView;)[[I

    move-result-object v10

    aget-object v10, v10, v7

    const/4 v11, -0x1

    aput v11, v10, v8

    .line 1674
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 1673
    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 1678
    .end local v8           #j:I
    :cond_e
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v11, -0x1

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointPrev:I
    invoke-static {v10, v11}, Lcom/android/internal/widget/SPenGestureView;->access$6502(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1679
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v11, -0x1

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointLast:I
    invoke-static {v10, v11}, Lcom/android/internal/widget/SPenGestureView;->access$6602(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1680
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v11, -0x1

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointPrev:I
    invoke-static {v10, v11}, Lcom/android/internal/widget/SPenGestureView;->access$6702(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1681
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v11, -0x1

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointLast:I
    invoke-static {v10, v11}, Lcom/android/internal/widget/SPenGestureView;->access$6802(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1682
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v11, -0x1

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointX:I
    invoke-static {v10, v11}, Lcom/android/internal/widget/SPenGestureView;->access$5202(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1683
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v11, -0x1

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointY:I
    invoke-static {v10, v11}, Lcom/android/internal/widget/SPenGestureView;->access$5302(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1684
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v11, -0x1

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointX:I
    invoke-static {v10, v11}, Lcom/android/internal/widget/SPenGestureView;->access$5402(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1685
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v11, -0x1

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointY:I
    invoke-static {v10, v11}, Lcom/android/internal/widget/SPenGestureView;->access$5502(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1686
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/high16 v11, -0x4080

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mStartPointXForCircle:F
    invoke-static {v10, v11}, Lcom/android/internal/widget/SPenGestureView;->access$4802(Lcom/android/internal/widget/SPenGestureView;F)F

    .line 1687
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/high16 v11, -0x4080

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mStartPointYForCircle:F
    invoke-static {v10, v11}, Lcom/android/internal/widget/SPenGestureView;->access$4902(Lcom/android/internal/widget/SPenGestureView;F)F

    .line 1688
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v11, 0x1

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mIsUsablePath:Z
    invoke-static {v10, v11}, Lcom/android/internal/widget/SPenGestureView;->access$2902(Lcom/android/internal/widget/SPenGestureView;Z)Z

    .line 1689
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v11, 0x0

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mIsUsableSecondPath:Z
    invoke-static {v10, v11}, Lcom/android/internal/widget/SPenGestureView;->access$3502(Lcom/android/internal/widget/SPenGestureView;Z)Z

    .line 1690
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v11, 0x0

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mNumColsedCurves:I
    invoke-static {v10, v11}, Lcom/android/internal/widget/SPenGestureView;->access$4702(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1692
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #calls: Lcom/android/internal/widget/SPenGestureView;->SaveImage()Z
    invoke-static {v10}, Lcom/android/internal/widget/SPenGestureView;->access$6900(Lcom/android/internal/widget/SPenGestureView;)Z

    .line 1694
    iget-object v10, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/widget/SPenGestureView;->access$7700(Lcom/android/internal/widget/SPenGestureView;)Landroid/os/Handler;

    move-result-object v10

    new-instance v11, Lcom/android/internal/widget/SPenGestureView$8$1;

    invoke-direct {v11, p0}, Lcom/android/internal/widget/SPenGestureView$8$1;-><init>(Lcom/android/internal/widget/SPenGestureView$8;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1719
    return-void

    .line 1611
    .end local v2           #canvasFinal:Landroid/graphics/Canvas;
    .end local v3           #canvasFinalForAnimation:Landroid/graphics/Canvas;
    .end local v4           #canvasForAnimationLine:Landroid/graphics/Canvas;
    .end local v5           #canvasForCrop:Landroid/graphics/Canvas;
    .end local v6           #dstRectForCrop:Landroid/graphics/Rect;
    .end local v7           #i:I
    .end local v9           #srcRectForCrop:Landroid/graphics/Rect;
    :catch_0
    move-exception v10

    goto/16 :goto_1
.end method
