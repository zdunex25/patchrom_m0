.class Lcom/android/gallery3d/ui/CropView$DetectFaceTask;
.super Ljava/lang/Thread;
.source "CropView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/CropView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DetectFaceTask"
.end annotation


# instance fields
.field private final mFaceBitmap:Landroid/graphics/Bitmap;

.field private mFaceCount:I

.field private final mFaces:[Landroid/media/FaceDetector$Face;

.field final synthetic this$0:Lcom/android/gallery3d/ui/CropView;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/CropView;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter
    .parameter "bitmap"

    .prologue
    .line 669
    iput-object p1, p0, Lcom/android/gallery3d/ui/CropView$DetectFaceTask;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 665
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/media/FaceDetector$Face;

    iput-object v0, p0, Lcom/android/gallery3d/ui/CropView$DetectFaceTask;->mFaces:[Landroid/media/FaceDetector$Face;

    .line 670
    iput-object p2, p0, Lcom/android/gallery3d/ui/CropView$DetectFaceTask;->mFaceBitmap:Landroid/graphics/Bitmap;

    .line 671
    const-string v0, "face-detect"

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/CropView$DetectFaceTask;->setName(Ljava/lang/String;)V

    .line 672
    return-void
.end method

.method private getFaceRect(Landroid/media/FaceDetector$Face;)Landroid/graphics/RectF;
    .locals 13
    .parameter "face"

    .prologue
    .line 685
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    .line 686
    .local v3, point:Landroid/graphics/PointF;
    invoke-virtual {p1, v3}, Landroid/media/FaceDetector$Face;->getMidPoint(Landroid/graphics/PointF;)V

    .line 688
    iget-object v9, p0, Lcom/android/gallery3d/ui/CropView$DetectFaceTask;->mFaceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 689
    .local v8, width:I
    iget-object v9, p0, Lcom/android/gallery3d/ui/CropView$DetectFaceTask;->mFaceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 690
    .local v2, height:I
    invoke-virtual {p1}, Landroid/media/FaceDetector$Face;->eyesDistance()F

    move-result v9

    const/high16 v10, 0x4000

    mul-float v5, v9, v10

    .line 691
    .local v5, rx:F
    move v6, v5

    .line 692
    .local v6, ry:F
    iget-object v9, p0, Lcom/android/gallery3d/ui/CropView$DetectFaceTask;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mAspectRatio:F
    invoke-static {v9}, Lcom/android/gallery3d/ui/CropView;->access$800(Lcom/android/gallery3d/ui/CropView;)F

    move-result v0

    .line 693
    .local v0, aspect:F
    const/high16 v9, -0x4080

    cmpl-float v9, v0, v9

    if-eqz v9, :cond_0

    .line 694
    const/high16 v9, 0x3f80

    cmpl-float v9, v0, v9

    if-lez v9, :cond_2

    .line 695
    mul-float v5, v6, v0

    .line 701
    :cond_0
    :goto_0
    new-instance v4, Landroid/graphics/RectF;

    iget v9, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v9, v5

    iget v10, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v10, v6

    iget v11, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v11, v5

    iget v12, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v12, v6

    invoke-direct {v4, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 703
    .local v4, r:Landroid/graphics/RectF;
    const/4 v9, 0x0

    const/4 v10, 0x0

    int-to-float v11, v8

    int-to-float v12, v2

    invoke-virtual {v4, v9, v10, v11, v12}, Landroid/graphics/RectF;->intersect(FFFF)Z

    .line 705
    const/high16 v9, -0x4080

    cmpl-float v9, v0, v9

    if-eqz v9, :cond_1

    .line 706
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v9

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v10

    div-float/2addr v9, v10

    cmpl-float v9, v9, v0

    if-lez v9, :cond_3

    .line 707
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v9

    mul-float v7, v9, v0

    .line 708
    .local v7, w:F
    iget v9, v4, Landroid/graphics/RectF;->left:F

    iget v10, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v9, v10

    sub-float/2addr v9, v7

    const/high16 v10, 0x3f00

    mul-float/2addr v9, v10

    iput v9, v4, Landroid/graphics/RectF;->left:F

    .line 709
    iget v9, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v9, v7

    iput v9, v4, Landroid/graphics/RectF;->right:F

    .line 717
    .end local v7           #w:F
    :cond_1
    :goto_1
    iget v9, v4, Landroid/graphics/RectF;->left:F

    int-to-float v10, v8

    div-float/2addr v9, v10

    iput v9, v4, Landroid/graphics/RectF;->left:F

    .line 718
    iget v9, v4, Landroid/graphics/RectF;->right:F

    int-to-float v10, v8

    div-float/2addr v9, v10

    iput v9, v4, Landroid/graphics/RectF;->right:F

    .line 719
    iget v9, v4, Landroid/graphics/RectF;->top:F

    int-to-float v10, v2

    div-float/2addr v9, v10

    iput v9, v4, Landroid/graphics/RectF;->top:F

    .line 720
    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v10, v2

    div-float/2addr v9, v10

    iput v9, v4, Landroid/graphics/RectF;->bottom:F

    .line 721
    return-object v4

    .line 697
    .end local v4           #r:Landroid/graphics/RectF;
    :cond_2
    div-float v6, v5, v0

    goto :goto_0

    .line 711
    .restart local v4       #r:Landroid/graphics/RectF;
    :cond_3
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v9

    div-float v1, v9, v0

    .line 712
    .local v1, h:F
    iget v9, v4, Landroid/graphics/RectF;->top:F

    iget v10, v4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v9, v10

    sub-float/2addr v9, v1

    const/high16 v10, 0x3f00

    mul-float/2addr v9, v10

    iput v9, v4, Landroid/graphics/RectF;->top:F

    .line 713
    iget v9, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v9, v1

    iput v9, v4, Landroid/graphics/RectF;->bottom:F

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 676
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView$DetectFaceTask;->mFaceBitmap:Landroid/graphics/Bitmap;

    .line 677
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/media/FaceDetector;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Landroid/media/FaceDetector;-><init>(III)V

    .line 679
    .local v1, detector:Landroid/media/FaceDetector;
    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView$DetectFaceTask;->mFaces:[Landroid/media/FaceDetector$Face;

    invoke-virtual {v1, v0, v2}, Landroid/media/FaceDetector;->findFaces(Landroid/graphics/Bitmap;[Landroid/media/FaceDetector$Face;)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/ui/CropView$DetectFaceTask;->mFaceCount:I

    .line 680
    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView$DetectFaceTask;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/gallery3d/ui/CropView;->access$1200(Lcom/android/gallery3d/ui/CropView;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/CropView$DetectFaceTask;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mMainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/gallery3d/ui/CropView;->access$1200(Lcom/android/gallery3d/ui/CropView;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 682
    return-void
.end method

.method public updateFaces()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 725
    iget v2, p0, Lcom/android/gallery3d/ui/CropView$DetectFaceTask;->mFaceCount:I

    if-le v2, v3, :cond_1

    .line 726
    const/4 v0, 0x0

    .local v0, i:I
    iget v1, p0, Lcom/android/gallery3d/ui/CropView$DetectFaceTask;->mFaceCount:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 727
    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView$DetectFaceTask;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mFaceDetectionView:Lcom/android/gallery3d/ui/CropView$FaceHighlightView;
    invoke-static {v2}, Lcom/android/gallery3d/ui/CropView;->access$1300(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/CropView$FaceHighlightView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/CropView$DetectFaceTask;->mFaces:[Landroid/media/FaceDetector$Face;

    aget-object v3, v3, v0

    invoke-direct {p0, v3}, Lcom/android/gallery3d/ui/CropView$DetectFaceTask;->getFaceRect(Landroid/media/FaceDetector$Face;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/CropView$FaceHighlightView;->addFace(Landroid/graphics/RectF;)V

    .line 726
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 729
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView$DetectFaceTask;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mFaceDetectionView:Lcom/android/gallery3d/ui/CropView$FaceHighlightView;
    invoke-static {v2}, Lcom/android/gallery3d/ui/CropView;->access$1300(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/CropView$FaceHighlightView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/ui/CropView$FaceHighlightView;->setVisibility(I)V

    .line 730
    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView$DetectFaceTask;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/android/gallery3d/ui/CropView;->access$700(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a01b4

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 740
    .end local v0           #i:I
    .end local v1           #n:I
    :goto_1
    return-void

    .line 732
    :cond_1
    iget v2, p0, Lcom/android/gallery3d/ui/CropView$DetectFaceTask;->mFaceCount:I

    if-ne v2, v3, :cond_2

    .line 733
    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView$DetectFaceTask;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mFaceDetectionView:Lcom/android/gallery3d/ui/CropView$FaceHighlightView;
    invoke-static {v2}, Lcom/android/gallery3d/ui/CropView;->access$1300(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/CropView$FaceHighlightView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/CropView$FaceHighlightView;->setVisibility(I)V

    .line 734
    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView$DetectFaceTask;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;
    invoke-static {v2}, Lcom/android/gallery3d/ui/CropView;->access$400(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/CropView$DetectFaceTask;->mFaces:[Landroid/media/FaceDetector$Face;

    aget-object v3, v3, v4

    invoke-direct {p0, v3}, Lcom/android/gallery3d/ui/CropView$DetectFaceTask;->getFaceRect(Landroid/media/FaceDetector$Face;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->setRectangle(Landroid/graphics/RectF;)V

    .line 735
    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView$DetectFaceTask;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;
    invoke-static {v2}, Lcom/android/gallery3d/ui/CropView;->access$400(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->setVisibility(I)V

    goto :goto_1

    .line 737
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView$DetectFaceTask;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;
    invoke-static {v2}, Lcom/android/gallery3d/ui/CropView;->access$400(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->setInitRectangle()V

    .line 738
    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView$DetectFaceTask;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;
    invoke-static {v2}, Lcom/android/gallery3d/ui/CropView;->access$400(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->setVisibility(I)V

    goto :goto_1
.end method
