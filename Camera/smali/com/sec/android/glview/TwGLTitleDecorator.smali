.class public Lcom/sec/android/glview/TwGLTitleDecorator;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLTitleDecorator.java"


# instance fields
.field private mTitleView:Lcom/sec/android/glview/TwGLView;


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;)V
    .locals 1
    .parameter "glContext"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTitleDecorator;->mTitleView:Lcom/sec/android/glview/TwGLView;

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF)V
    .locals 1
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 53
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTitleDecorator;->mTitleView:Lcom/sec/android/glview/TwGLView;

    .line 54
    return-void
.end method


# virtual methods
.method public addView(Lcom/sec/android/glview/TwGLView;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 75
    if-nez p1, :cond_0

    .line 76
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    .line 79
    .local v1, paddings:Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 81
    .local v0, childPaddings:Landroid/graphics/Rect;
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 82
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 83
    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    .line 84
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 85
    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->getRight()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->getLeft()F

    move-result v4

    sub-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    .line 86
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 87
    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->getBottom()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->getTop()F

    move-result v4

    sub-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    .line 88
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 90
    :cond_4
    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLView;->setPaddings(Landroid/graphics/Rect;)V

    .line 92
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 94
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    .line 95
    :cond_5
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLTitleDecorator;->mTitleView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/glview/TwGLTitleDecorator;->mTitleView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getLayoutY()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->getPaddings()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setSize(FF)V

    .line 97
    :cond_6
    return-void
.end method

.method public getContentAreaHeight()F
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTitleDecorator;->mTitleView:Lcom/sec/android/glview/TwGLView;

    if-nez v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 116
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTitleDecorator;->mTitleView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTitleDecorator;->mTitleView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLView;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    .line 105
    return-void
.end method

.method public setTitle(Lcom/sec/android/glview/TwGLView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 62
    if-nez p1, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 65
    :cond_0
    iput-object p0, p1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 66
    iget-object v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    iput-object p1, p0, Lcom/sec/android/glview/TwGLTitleDecorator;->mTitleView:Lcom/sec/android/glview/TwGLView;

    .line 68
    return-void
.end method
