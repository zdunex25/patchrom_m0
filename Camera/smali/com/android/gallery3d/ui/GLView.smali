.class public Lcom/android/gallery3d/ui/GLView;
.super Ljava/lang/Object;
.source "GLView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/GLView$OnClickListener;
    }
.end annotation


# instance fields
.field private mAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

.field private mBackgroundColor:[F

.field protected final mBounds:Landroid/graphics/Rect;

.field private mComponents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/ui/GLView;",
            ">;"
        }
    .end annotation
.end field

.field private mLastHeightSpec:I

.field private mLastWidthSpec:I

.field protected mMeasuredHeight:I

.field protected mMeasuredWidth:I

.field private mMotionTarget:Lcom/android/gallery3d/ui/GLView;

.field protected final mPaddings:Landroid/graphics/Rect;

.field protected mParent:Lcom/android/gallery3d/ui/GLView;

.field private mRoot:Lcom/android/gallery3d/ui/GLRoot;

.field protected mScrollHeight:I

.field protected mScrollWidth:I

.field protected mScrollX:I

.field protected mScrollY:I

.field private mTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation;

.field private mViewFlags:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mPaddings:Landroid/graphics/Rect;

    .line 68
    iput v1, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    .line 70
    iput v1, p0, Lcom/android/gallery3d/ui/GLView;->mMeasuredWidth:I

    .line 71
    iput v1, p0, Lcom/android/gallery3d/ui/GLView;->mMeasuredHeight:I

    .line 73
    iput v2, p0, Lcom/android/gallery3d/ui/GLView;->mLastWidthSpec:I

    .line 74
    iput v2, p0, Lcom/android/gallery3d/ui/GLView;->mLastHeightSpec:I

    .line 76
    iput v1, p0, Lcom/android/gallery3d/ui/GLView;->mScrollY:I

    .line 77
    iput v1, p0, Lcom/android/gallery3d/ui/GLView;->mScrollX:I

    .line 78
    iput v1, p0, Lcom/android/gallery3d/ui/GLView;->mScrollHeight:I

    .line 79
    iput v1, p0, Lcom/android/gallery3d/ui/GLView;->mScrollWidth:I

    return-void
.end method

.method private setBounds(IIII)Z
    .locals 4
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 358
    sub-int v1, p3, p1

    iget-object v2, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_0

    sub-int v1, p4, p2

    iget-object v2, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 360
    .local v0, sizeChanged:Z
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 361
    return v0

    .line 358
    .end local v0           #sizeChanged:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addComponent(Lcom/android/gallery3d/ui/GLView;)V
    .locals 1
    .parameter "component"

    .prologue
    .line 141
    iget-object v0, p1, Lcom/android/gallery3d/ui/GLView;->mParent:Lcom/android/gallery3d/ui/GLView;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    iput-object p0, p1, Lcom/android/gallery3d/ui/GLView;->mParent:Lcom/android/gallery3d/ui/GLView;

    .line 151
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/ui/GLView;->onAttachToRoot(Lcom/android/gallery3d/ui/GLRoot;)V

    .line 154
    :cond_2
    return-void
.end method

.method public attachToRoot(Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 1
    .parameter "root"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mParent:Lcom/android/gallery3d/ui/GLView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/GLView;->onAttachToRoot(Lcom/android/gallery3d/ui/GLRoot;)V

    .line 117
    return-void

    .line 115
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public detachFromRoot()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mParent:Lcom/android/gallery3d/ui/GLView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 122
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->onDetachFromRoot()V

    .line 123
    return-void

    .line 121
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    .line 311
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v2, v0

    .line 312
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v3, v0

    .line 313
    .local v3, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    .line 314
    .local v10, action:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mMotionTarget:Lcom/android/gallery3d/ui/GLView;

    if-eqz v0, :cond_0

    .line 315
    if-nez v10, :cond_2

    .line 316
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 317
    .local v1, cancel:Landroid/view/MotionEvent;
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 318
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLView;->mMotionTarget:Lcom/android/gallery3d/ui/GLView;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/android/gallery3d/ui/GLView;Z)Z

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mMotionTarget:Lcom/android/gallery3d/ui/GLView;

    .line 329
    .end local v1           #cancel:Landroid/view/MotionEvent;
    :cond_0
    if-nez v10, :cond_6

    .line 331
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getComponentCount()I

    move-result v0

    add-int/lit8 v11, v0, -0x1

    .local v11, i:I
    :goto_0
    if-ltz v11, :cond_6

    .line 332
    invoke-virtual {p0, v11}, Lcom/android/gallery3d/ui/GLView;->getComponent(I)Lcom/android/gallery3d/ui/GLView;

    move-result-object v8

    .line 333
    .local v8, component:Lcom/android/gallery3d/ui/GLView;
    invoke-virtual {v8}, Lcom/android/gallery3d/ui/GLView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    .line 331
    :cond_1
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    .line 321
    .end local v8           #component:Lcom/android/gallery3d/ui/GLView;
    .end local v11           #i:I
    :cond_2
    iget-object v8, p0, Lcom/android/gallery3d/ui/GLView;->mMotionTarget:Lcom/android/gallery3d/ui/GLView;

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move v6, v2

    move v7, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/android/gallery3d/ui/GLView;Z)Z

    .line 322
    const/4 v0, 0x3

    if-eq v10, v0, :cond_3

    const/4 v0, 0x1

    if-ne v10, v0, :cond_4

    .line 324
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mMotionTarget:Lcom/android/gallery3d/ui/GLView;

    .line 326
    :cond_4
    const/4 v0, 0x1

    .line 340
    :goto_1
    return v0

    .line 334
    .restart local v8       #component:Lcom/android/gallery3d/ui/GLView;
    .restart local v11       #i:I
    :cond_5
    const/4 v9, 0x1

    move-object v4, p0

    move-object v5, p1

    move v6, v2

    move v7, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/android/gallery3d/ui/GLView;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    iput-object v8, p0, Lcom/android/gallery3d/ui/GLView;->mMotionTarget:Lcom/android/gallery3d/ui/GLView;

    .line 336
    const/4 v0, 0x1

    goto :goto_1

    .line 340
    .end local v8           #component:Lcom/android/gallery3d/ui/GLView;
    .end local v11           #i:I
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/GLView;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/android/gallery3d/ui/GLView;Z)Z
    .locals 5
    .parameter "event"
    .parameter "x"
    .parameter "y"
    .parameter "component"
    .parameter "checkBounds"

    .prologue
    .line 296
    iget-object v1, p4, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    .line 297
    .local v1, rect:Landroid/graphics/Rect;
    iget v0, v1, Landroid/graphics/Rect;->left:I

    .line 298
    .local v0, left:I
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 299
    .local v2, top:I
    if-eqz p5, :cond_0

    invoke-virtual {v1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 300
    :cond_0
    neg-int v3, v0

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 301
    invoke-virtual {p4, p1}, Lcom/android/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 302
    int-to-float v3, v0

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 303
    const/4 v3, 0x1

    .line 307
    :goto_0
    return v3

    .line 305
    :cond_1
    int-to-float v3, v0

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 307
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getBackgroundColor()[F
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mBackgroundColor:[F

    return-object v0
.end method

.method public getBoundsOf(Lcom/android/gallery3d/ui/GLView;Landroid/graphics/Rect;)Z
    .locals 6
    .parameter "descendant"
    .parameter "out"

    .prologue
    .line 406
    const/4 v2, 0x0

    .line 407
    .local v2, xoffset:I
    const/4 v3, 0x0

    .line 408
    .local v3, yoffset:I
    move-object v1, p1

    .line 409
    .local v1, view:Lcom/android/gallery3d/ui/GLView;
    :goto_0
    if-eq v1, p0, :cond_1

    .line 410
    if-nez v1, :cond_0

    const/4 v4, 0x0

    .line 418
    :goto_1
    return v4

    .line 411
    :cond_0
    iget-object v0, v1, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    .line 412
    .local v0, bounds:Landroid/graphics/Rect;
    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v4

    .line 413
    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    .line 414
    iget-object v1, v1, Lcom/android/gallery3d/ui/GLView;->mParent:Lcom/android/gallery3d/ui/GLView;

    .line 415
    goto :goto_0

    .line 416
    .end local v0           #bounds:Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 418
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public getComponent(I)Lcom/android/gallery3d/ui/GLView;
    .locals 1
    .parameter "index"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/GLView;

    return-object v0
.end method

.method public getComponentCount()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGLRoot()Lcom/android/gallery3d/ui/GLRoot;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getMeasuredHeight()I
    .locals 1

    .prologue
    .line 395
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mMeasuredHeight:I

    return v0
.end method

.method public getMeasuredWidth()I
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mMeasuredWidth:I

    return v0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 206
    .local v0, root:Lcom/android/gallery3d/ui/GLRoot;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->requestRender()V

    .line 207
    :cond_0
    return-void
.end method

.method public layout(IIII)V
    .locals 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 348
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/ui/GLView;->setBounds(IIII)Z

    move-result v1

    .line 349
    .local v1, sizeChanged:Z
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 354
    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/GLView;->onLayout(ZIIII)V

    .line 355
    return-void
.end method

.method public lockRendering()V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 448
    :cond_0
    return-void
.end method

.method public measure(II)V
    .locals 3
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 365
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mLastWidthSpec:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mLastHeightSpec:I

    if-ne p2, v0, :cond_1

    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    .line 379
    :cond_0
    return-void

    .line 370
    :cond_1
    iput p1, p0, Lcom/android/gallery3d/ui/GLView;->mLastWidthSpec:I

    .line 371
    iput p2, p0, Lcom/android/gallery3d/ui/GLView;->mLastHeightSpec:I

    .line 373
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    .line 374
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/ui/GLView;->onMeasure(II)V

    .line 375
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 376
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should call setMeasuredSize() in onMeasure()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onAttachToRoot(Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 3
    .parameter "root"

    .prologue
    .line 431
    iput-object p1, p0, Lcom/android/gallery3d/ui/GLView;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    .line 432
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getComponentCount()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 433
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/GLView;->getComponent(I)Lcom/android/gallery3d/ui/GLView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/ui/GLView;->onAttachToRoot(Lcom/android/gallery3d/ui/GLRoot;)V

    .line 432
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 435
    :cond_0
    return-void
.end method

.method protected onDetachFromRoot()V
    .locals 3

    .prologue
    .line 438
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getComponentCount()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 439
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/GLView;->getComponent(I)Lcom/android/gallery3d/ui/GLView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/GLView;->onDetachFromRoot()V

    .line 438
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 441
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/gallery3d/ui/GLView;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    .line 442
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changeSize"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 400
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 382
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method protected onVisibilityChanged(I)V
    .locals 4
    .parameter "visibility"

    .prologue
    .line 422
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getComponentCount()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 423
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/GLView;->getComponent(I)Lcom/android/gallery3d/ui/GLView;

    move-result-object v0

    .line 424
    .local v0, child:Lcom/android/gallery3d/ui/GLView;
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 425
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/GLView;->onVisibilityChanged(I)V

    .line 422
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 428
    .end local v0           #child:Lcom/android/gallery3d/ui/GLView;
    :cond_1
    return-void
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 224
    const/4 v2, 0x0

    .line 225
    .local v2, transitionActive:Z
    iget-object v3, p0, Lcom/android/gallery3d/ui/GLView;->mTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/ui/GLView;->mTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation;

    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/anim/StateTransitionAnimation;->calculate(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 227
    iget-object v3, p0, Lcom/android/gallery3d/ui/GLView;->mTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation;

    invoke-virtual {v3}, Lcom/android/gallery3d/anim/StateTransitionAnimation;->isActive()Z

    move-result v2

    .line 229
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/GLView;->renderBackground(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 230
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->save()V

    .line 231
    if-eqz v2, :cond_1

    .line 232
    iget-object v3, p0, Lcom/android/gallery3d/ui/GLView;->mTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation;

    invoke-virtual {v3, p0, p1}, Lcom/android/gallery3d/anim/StateTransitionAnimation;->applyContentTransform(Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 234
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getComponentCount()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 235
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/GLView;->getComponent(I)Lcom/android/gallery3d/ui/GLView;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/android/gallery3d/ui/GLView;->renderChild(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/GLView;)V

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_2
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 238
    if-eqz v2, :cond_3

    .line 239
    iget-object v3, p0, Lcom/android/gallery3d/ui/GLView;->mTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation;

    invoke-virtual {v3, p0, p1}, Lcom/android/gallery3d/anim/StateTransitionAnimation;->applyOverlay(Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 241
    :cond_3
    return-void
.end method

.method protected renderBackground(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mBackgroundColor:[F

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mBackgroundColor:[F

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->clearBuffer([F)V

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation;

    invoke-virtual {v0}, Lcom/android/gallery3d/anim/StateTransitionAnimation;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation;

    invoke-virtual {v0, p0, p1}, Lcom/android/gallery3d/anim/StateTransitionAnimation;->applyBackground(Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 264
    :cond_1
    return-void
.end method

.method protected renderChild(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/GLView;)V
    .locals 5
    .parameter "canvas"
    .parameter "component"

    .prologue
    .line 267
    invoke-virtual {p2}, Lcom/android/gallery3d/ui/GLView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p2, Lcom/android/gallery3d/ui/GLView;->mAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

    if-nez v3, :cond_0

    .line 288
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v3, p2, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/gallery3d/ui/GLView;->mScrollX:I

    sub-int v1, v3, v4

    .line 271
    .local v1, xoffset:I
    iget-object v3, p2, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/gallery3d/ui/GLView;->mScrollY:I

    sub-int v2, v3, v4

    .line 273
    .local v2, yoffset:I
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-interface {p1, v3, v4}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 275
    iget-object v0, p2, Lcom/android/gallery3d/ui/GLView;->mAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

    .line 276
    .local v0, anim:Lcom/android/gallery3d/anim/CanvasAnimation;
    if-eqz v0, :cond_1

    .line 277
    invoke-virtual {v0}, Lcom/android/gallery3d/anim/CanvasAnimation;->getCanvasSaveFlags()I

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 278
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/gallery3d/anim/CanvasAnimation;->calculate(J)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 279
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 283
    :goto_1
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/anim/CanvasAnimation;->apply(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 285
    :cond_1
    invoke-virtual {p2, p1}, Lcom/android/gallery3d/ui/GLView;->render(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 286
    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 287
    :cond_2
    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    invoke-interface {p1, v3, v4}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    goto :goto_0

    .line 281
    :cond_3
    const/4 v3, 0x0

    iput-object v3, p2, Lcom/android/gallery3d/ui/GLView;->mAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

    goto :goto_1
.end method

.method public requestLayout()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 211
    iget v1, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    .line 212
    iput v2, p0, Lcom/android/gallery3d/ui/GLView;->mLastHeightSpec:I

    .line 213
    iput v2, p0, Lcom/android/gallery3d/ui/GLView;->mLastWidthSpec:I

    .line 214
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLView;->mParent:Lcom/android/gallery3d/ui/GLView;

    if-eqz v1, :cond_1

    .line 215
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLView;->mParent:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLView;->requestLayout()V

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 219
    .local v0, root:Lcom/android/gallery3d/ui/GLRoot;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->requestLayoutContentPane()V

    goto :goto_0
.end method

.method public setBackgroundColor([F)V
    .locals 0
    .parameter "color"

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/gallery3d/ui/GLView;->mBackgroundColor:[F

    .line 254
    return-void
.end method

.method public setIntroAnimation(Lcom/android/gallery3d/anim/StateTransitionAnimation;)V
    .locals 1
    .parameter "intro"

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/gallery3d/ui/GLView;->mTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation;

    .line 245
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation;

    invoke-virtual {v0}, Lcom/android/gallery3d/anim/StateTransitionAnimation;->start()V

    .line 246
    :cond_0
    return-void
.end method

.method protected setMeasuredSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 385
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    .line 386
    iput p1, p0, Lcom/android/gallery3d/ui/GLView;->mMeasuredWidth:I

    .line 387
    iput p2, p0, Lcom/android/gallery3d/ui/GLView;->mMeasuredHeight:I

    .line 388
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getVisibility()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 99
    :cond_0
    if-nez p1, :cond_1

    .line 100
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    .line 104
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/GLView;->onVisibilityChanged(I)V

    .line 105
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    .line 102
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    goto :goto_1
.end method

.method public unlockRendering()V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 454
    :cond_0
    return-void
.end method
