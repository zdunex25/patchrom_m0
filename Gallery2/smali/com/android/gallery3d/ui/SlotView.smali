.class public Lcom/android/gallery3d/ui/SlotView;
.super Lcom/android/gallery3d/ui/GLView;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;,
        Lcom/android/gallery3d/ui/SlotView$MyGestureListener;,
        Lcom/android/gallery3d/ui/SlotView$Layout;,
        Lcom/android/gallery3d/ui/SlotView$Spec;,
        Lcom/android/gallery3d/ui/SlotView$RisingAnimation;,
        Lcom/android/gallery3d/ui/SlotView$SlotAnimation;,
        Lcom/android/gallery3d/ui/SlotView$SlotRenderer;,
        Lcom/android/gallery3d/ui/SlotView$SimpleListener;,
        Lcom/android/gallery3d/ui/SlotView$Listener;
    }
.end annotation


# instance fields
.field private mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

.field private mDownInScrolling:Z

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private final mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

.field private mListener:Lcom/android/gallery3d/ui/SlotView$Listener;

.field private mMoreAnimation:Z

.field private mOverscrollEffect:I

.field private final mPaper:Lcom/android/gallery3d/ui/Paper;

.field private mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

.field private mRequestRenderSlots:[I

.field private final mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

.field private mStartIndex:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mUIListener:Lcom/android/gallery3d/ui/UserInteractionListener;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SlotView$Spec;)V
    .locals 3
    .parameter "activity"
    .parameter "spec"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 64
    new-instance v0, Lcom/android/gallery3d/ui/Paper;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/Paper;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mPaper:Lcom/android/gallery3d/ui/Paper;

    .line 69
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/SlotView;->mMoreAnimation:Z

    .line 70
    iput-object v2, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    .line 71
    new-instance v0, Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/SlotView$Layout;-><init>(Lcom/android/gallery3d/ui/SlotView;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView;->mStartIndex:I

    .line 76
    iput v1, p0, Lcom/android/gallery3d/ui/SlotView;->mOverscrollEffect:I

    .line 81
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mRequestRenderSlots:[I

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mTempRect:Landroid/graphics/Rect;

    .line 91
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;-><init>(Lcom/android/gallery3d/ui/SlotView;Lcom/android/gallery3d/ui/SlotView$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 92
    new-instance v0, Lcom/android/gallery3d/ui/ScrollerHelper;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/ui/ScrollerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    .line 93
    new-instance v0, Lcom/android/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mHandler:Landroid/os/Handler;

    .line 94
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/ui/SlotView;->setSlotSpec(Lcom/android/gallery3d/ui/SlotView$Spec;)V

    .line 95
    return-void
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/ScrollerHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/UserInteractionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mUIListener:Lcom/android/gallery3d/ui/UserInteractionListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/ui/SlotView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView;->mOverscrollEffect:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/Paper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mPaper:Lcom/android/gallery3d/ui/Paper;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/ui/SlotView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SlotView;->mDownInScrolling:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$SlotRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Layout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mListener:Lcom/android/gallery3d/ui/SlotView$Listener;

    return-object v0
.end method

.method private static expandIntArray([II)[I
    .locals 1
    .parameter "array"
    .parameter "capacity"

    .prologue
    .line 231
    :goto_0
    array-length v0, p0

    if-ge v0, p1, :cond_0

    .line 232
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array p0, v0, [I

    goto :goto_0

    .line 234
    :cond_0
    return-object p0
.end method

.method private renderItem(Lcom/android/gallery3d/ui/GLCanvas;IIZ)I
    .locals 8
    .parameter "canvas"
    .parameter "index"
    .parameter "pass"
    .parameter "paperActive"

    .prologue
    .line 314
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 315
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, v1}, Lcom/android/gallery3d/ui/SlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    .line 316
    .local v6, rect:Landroid/graphics/Rect;
    if-eqz p4, :cond_1

    .line 317
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mPaper:Lcom/android/gallery3d/ui/Paper;

    iget v1, p0, Lcom/android/gallery3d/ui/SlotView;->mScrollX:I

    int-to-float v1, v1

    invoke-virtual {v0, v6, v1}, Lcom/android/gallery3d/ui/Paper;->getTransform(Landroid/graphics/Rect;F)[F

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyMatrix([FI)V

    .line 321
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView$SlotAnimation;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    invoke-virtual {v0, p1, p2, v6}, Lcom/android/gallery3d/ui/SlotView$SlotAnimation;->apply(Lcom/android/gallery3d/ui/GLCanvas;ILandroid/graphics/Rect;)V

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    iget v1, v6, Landroid/graphics/Rect;->right:I

    iget v2, v6, Landroid/graphics/Rect;->left:I

    sub-int v4, v1, v2

    iget v1, v6, Landroid/graphics/Rect;->bottom:I

    iget v2, v6, Landroid/graphics/Rect;->top:I

    sub-int v5, v1, v2

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->renderSlot(Lcom/android/gallery3d/ui/GLCanvas;IIII)I

    move-result v7

    .line 326
    .local v7, result:I
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 327
    return v7

    .line 319
    .end local v7           #result:I
    :cond_1
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, v6, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FFF)V

    goto :goto_0
.end method

.method private updateScrollPosition(IZ)V
    .locals 1
    .parameter "position"
    .parameter "force"

    .prologue
    .line 181
    if-nez p2, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/SlotView;->mScrollX:I

    if-ne p1, v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 183
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView;->mScrollX:I

    .line 187
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/SlotView$Layout;->setScrollPosition(I)V

    .line 188
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/SlotView;->onScrollPositionChanged(I)V

    goto :goto_0
.end method


# virtual methods
.method public addComponent(Lcom/android/gallery3d/ui/GLView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 149
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getScrollX()I
    .locals 1

    .prologue
    .line 733
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView;->mScrollX:I

    return v0
.end method

.method public getScrollY()I
    .locals 1

    .prologue
    .line 737
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView;->mScrollY:I

    return v0
.end method

.method public getSlotRect(I)Landroid/graphics/Rect;
    .locals 2
    .parameter "slotIndex"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/android/gallery3d/ui/SlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getSlotRect(ILcom/android/gallery3d/ui/GLView;)Landroid/graphics/Rect;
    .locals 5
    .parameter "slotIndex"
    .parameter "rootPane"

    .prologue
    .line 742
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 743
    .local v0, offset:Landroid/graphics/Rect;
    invoke-virtual {p2, p0, v0}, Lcom/android/gallery3d/ui/GLView;->getBoundsOf(Lcom/android/gallery3d/ui/GLView;Landroid/graphics/Rect;)Z

    .line 744
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/SlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 745
    .local v1, r:Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SlotView;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SlotView;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 747
    return-object v1
.end method

.method public getVisibleEnd()I
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView$Layout;->getVisibleEnd()I

    move-result v0

    return v0
.end method

.method public getVisibleStart()I
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView$Layout;->getVisibleStart()I

    move-result v0

    return v0
.end method

.method public makeSlotVisible(I)V
    .locals 9
    .parameter "index"

    .prologue
    .line 118
    iget-object v7, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    iget-object v8, p0, Lcom/android/gallery3d/ui/SlotView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, p1, v8}, Lcom/android/gallery3d/ui/SlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 119
    .local v1, rect:Landroid/graphics/Rect;
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView;->mScrollX:I

    .line 120
    .local v4, visibleBegin:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SlotView;->getWidth()I

    move-result v6

    .line 121
    .local v6, visibleLength:I
    add-int v5, v4, v6

    .line 122
    .local v5, visibleEnd:I
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 123
    .local v2, slotBegin:I
    iget v3, v1, Landroid/graphics/Rect;->right:I

    .line 125
    .local v3, slotEnd:I
    move v0, v4

    .line 126
    .local v0, position:I
    sub-int v7, v3, v2

    if-ge v6, v7, :cond_1

    .line 127
    move v0, v4

    .line 134
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/SlotView;->setScrollPosition(I)V

    .line 135
    return-void

    .line 128
    :cond_1
    if-ge v2, v4, :cond_2

    .line 129
    move v0, v2

    goto :goto_0

    .line 130
    :cond_2
    if-le v3, v5, :cond_0

    .line 131
    sub-int v0, v3, v6

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changeSize"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 154
    if-nez p1, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SlotView$Layout;->getVisibleStart()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SlotView$Layout;->getVisibleEnd()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 161
    .local v0, visibleIndex:I
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/ui/SlotView$Layout;->setSize(II)V

    .line 162
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/SlotView;->makeSlotVisible(I)V

    .line 163
    iget v1, p0, Lcom/android/gallery3d/ui/SlotView;->mOverscrollEffect:I

    if-nez v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mPaper:Lcom/android/gallery3d/ui/Paper;

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/ui/Paper;->setSize(II)V

    goto :goto_0
.end method

.method protected onScrollPositionChanged(I)V
    .locals 2
    .parameter "newPosition"

    .prologue
    .line 192
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SlotView$Layout;->getScrollLimit()I

    move-result v0

    .line 193
    .local v0, limit:I
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mListener:Lcom/android/gallery3d/ui/SlotView$Listener;

    invoke-interface {v1, p1, v0}, Lcom/android/gallery3d/ui/SlotView$Listener;->onScrollPositionChanged(II)V

    .line 194
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 202
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mUIListener:Lcom/android/gallery3d/ui/UserInteractionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mUIListener:Lcom/android/gallery3d/ui/UserInteractionListener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/UserInteractionListener;->onUserInteraction()V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 214
    :goto_0
    return v1

    .line 206
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ScrollerHelper;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SlotView;->mDownInScrolling:Z

    .line 207
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ScrollerHelper;->forceFinished()V

    goto :goto_0

    .line 206
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 210
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mPaper:Lcom/android/gallery3d/ui/Paper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/Paper;->onRelease()V

    .line 211
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 23
    .parameter "canvas"

    .prologue
    .line 239
    invoke-super/range {p0 .. p1}, Lcom/android/gallery3d/ui/GLView;->render(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    .line 310
    :goto_0
    return-void

    .line 242
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->prepareDrawing()V

    .line 244
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v3

    .line 245
    .local v3, animTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Lcom/android/gallery3d/ui/ScrollerHelper;->advanceAnimation(J)Z

    move-result v8

    .line 246
    .local v8, more:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Lcom/android/gallery3d/ui/SlotView$Layout;->advanceAnimation(J)Z

    move-result v20

    or-int v8, v8, v20

    .line 247
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/gallery3d/ui/SlotView;->mScrollX:I

    .line 248
    .local v12, oldX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/gallery3d/ui/ScrollerHelper;->getPosition()I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/SlotView;->updateScrollPosition(IZ)V

    .line 250
    const/4 v13, 0x0

    .line 251
    .local v13, paperActive:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView;->mOverscrollEffect:I

    move/from16 v20, v0

    if-nez v20, :cond_5

    .line 253
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/gallery3d/ui/SlotView;->mScrollX:I

    .line 254
    .local v11, newX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/gallery3d/ui/SlotView$Layout;->getScrollLimit()I

    move-result v6

    .line 255
    .local v6, limit:I
    if-lez v12, :cond_1

    if-eqz v11, :cond_2

    :cond_1
    if-ge v12, v6, :cond_4

    if-ne v11, v6, :cond_4

    .line 256
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/gallery3d/ui/ScrollerHelper;->getCurrVelocity()F

    move-result v19

    .line 257
    .local v19, v:F
    if-ne v11, v6, :cond_3

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    .line 260
    :cond_3
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->isNaN(F)Z

    move-result v20

    if-nez v20, :cond_4

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mPaper:Lcom/android/gallery3d/ui/Paper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/Paper;->edgeReached(F)V

    .line 264
    .end local v19           #v:F
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mPaper:Lcom/android/gallery3d/ui/Paper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/gallery3d/ui/Paper;->advanceAnimation()Z

    move-result v13

    .line 267
    .end local v6           #limit:I
    .end local v11           #newX:I
    :cond_5
    or-int/2addr v8, v13

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Lcom/android/gallery3d/ui/SlotView$SlotAnimation;->calculate(J)Z

    move-result v20

    or-int v8, v8, v20

    .line 273
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView;->mScrollX:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView;->mScrollY:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 275
    const/16 v16, 0x0

    .line 276
    .local v16, requestCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mRequestRenderSlots:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    move-object/from16 v21, v0

    #getter for: Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleEnd:I
    invoke-static/range {v21 .. v21}, Lcom/android/gallery3d/ui/SlotView$Layout;->access$400(Lcom/android/gallery3d/ui/SlotView$Layout;)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    move-object/from16 v22, v0

    #getter for: Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleStart:I
    invoke-static/range {v22 .. v22}, Lcom/android/gallery3d/ui/SlotView$Layout;->access$500(Lcom/android/gallery3d/ui/SlotView$Layout;)I

    move-result v22

    sub-int v21, v21, v22

    invoke-static/range {v20 .. v21}, Lcom/android/gallery3d/ui/SlotView;->expandIntArray([II)[I

    move-result-object v18

    .line 279
    .local v18, requestedSlot:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    move-object/from16 v20, v0

    #getter for: Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleEnd:I
    invoke-static/range {v20 .. v20}, Lcom/android/gallery3d/ui/SlotView$Layout;->access$400(Lcom/android/gallery3d/ui/SlotView$Layout;)I

    move-result v20

    add-int/lit8 v5, v20, -0x1

    .local v5, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    move-object/from16 v20, v0

    #getter for: Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleStart:I
    invoke-static/range {v20 .. v20}, Lcom/android/gallery3d/ui/SlotView$Layout;->access$500(Lcom/android/gallery3d/ui/SlotView$Layout;)I

    move-result v20

    move/from16 v0, v20

    if-lt v5, v0, :cond_9

    .line 280
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v5, v2, v13}, Lcom/android/gallery3d/ui/SlotView;->renderItem(Lcom/android/gallery3d/ui/GLCanvas;IIZ)I

    move-result v15

    .line 281
    .local v15, r:I
    and-int/lit8 v20, v15, 0x2

    if-eqz v20, :cond_7

    const/4 v8, 0x1

    .line 282
    :cond_7
    and-int/lit8 v20, v15, 0x1

    if-eqz v20, :cond_8

    add-int/lit8 v17, v16, 0x1

    .end local v16           #requestCount:I
    .local v17, requestCount:I
    aput v5, v18, v16

    move/from16 v16, v17

    .line 279
    .end local v17           #requestCount:I
    .restart local v16       #requestCount:I
    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 285
    .end local v15           #r:I
    :cond_9
    const/4 v14, 0x1

    .local v14, pass:I
    :goto_2
    if-eqz v16, :cond_c

    .line 286
    const/4 v9, 0x0

    .line 287
    .local v9, newCount:I
    const/4 v5, 0x0

    move v10, v9

    .end local v9           #newCount:I
    .local v10, newCount:I
    :goto_3
    move/from16 v0, v16

    if-ge v5, v0, :cond_b

    .line 288
    aget v20, v18, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v14, v13}, Lcom/android/gallery3d/ui/SlotView;->renderItem(Lcom/android/gallery3d/ui/GLCanvas;IIZ)I

    move-result v15

    .line 290
    .restart local v15       #r:I
    and-int/lit8 v20, v15, 0x2

    if-eqz v20, :cond_a

    const/4 v8, 0x1

    .line 291
    :cond_a
    and-int/lit8 v20, v15, 0x1

    if-eqz v20, :cond_f

    add-int/lit8 v9, v10, 0x1

    .end local v10           #newCount:I
    .restart local v9       #newCount:I
    aput v5, v18, v10

    .line 287
    :goto_4
    add-int/lit8 v5, v5, 0x1

    move v10, v9

    .end local v9           #newCount:I
    .restart local v10       #newCount:I
    goto :goto_3

    .line 293
    .end local v15           #r:I
    :cond_b
    move/from16 v16, v10

    .line 285
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 296
    .end local v10           #newCount:I
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView;->mScrollX:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView;->mScrollY:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 298
    if-eqz v8, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    .line 300
    :cond_d
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/gallery3d/ui/SlotView;->mUIListener:Lcom/android/gallery3d/ui/UserInteractionListener;

    .line 301
    .local v7, listener:Lcom/android/gallery3d/ui/UserInteractionListener;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/ui/SlotView;->mMoreAnimation:Z

    move/from16 v20, v0

    if-eqz v20, :cond_e

    if-nez v8, :cond_e

    if-eqz v7, :cond_e

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/gallery3d/ui/SlotView$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/android/gallery3d/ui/SlotView$1;-><init>(Lcom/android/gallery3d/ui/SlotView;Lcom/android/gallery3d/ui/UserInteractionListener;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 309
    :cond_e
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/gallery3d/ui/SlotView;->mMoreAnimation:Z

    goto/16 :goto_0

    .end local v7           #listener:Lcom/android/gallery3d/ui/UserInteractionListener;
    .restart local v10       #newCount:I
    .restart local v15       #r:I
    :cond_f
    move v9, v10

    .end local v10           #newCount:I
    .restart local v9       #newCount:I
    goto :goto_4
.end method

.method public setCenterIndex(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 106
    iget-object v3, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    #getter for: Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I
    invoke-static {v3}, Lcom/android/gallery3d/ui/SlotView$Layout;->access$300(Lcom/android/gallery3d/ui/SlotView$Layout;)I

    move-result v2

    .line 107
    .local v2, slotCount:I
    if-ltz p1, :cond_0

    if-lt p1, v2, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, v4}, Lcom/android/gallery3d/ui/SlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 111
    .local v1, rect:Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SlotView;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v0, v3, 0x2

    .line 114
    .local v0, position:I
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/SlotView;->setScrollPosition(I)V

    goto :goto_0
.end method

.method public setListener(Lcom/android/gallery3d/ui/SlotView$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/gallery3d/ui/SlotView;->mListener:Lcom/android/gallery3d/ui/SlotView$Listener;

    .line 219
    return-void
.end method

.method public setScrollPosition(I)V
    .locals 2
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView$Layout;->getScrollLimit()I

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result p1

    .line 139
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/ScrollerHelper;->setPosition(I)V

    .line 140
    invoke-direct {p0, p1, v1}, Lcom/android/gallery3d/ui/SlotView;->updateScrollPosition(IZ)V

    .line 141
    return-void
.end method

.method public setSlotCount(I)Z
    .locals 3
    .parameter "slotCount"

    .prologue
    const/4 v2, -0x1

    .line 712
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/ui/SlotView$Layout;->setSlotCount(I)Z

    move-result v0

    .line 715
    .local v0, changed:Z
    iget v1, p0, Lcom/android/gallery3d/ui/SlotView;->mStartIndex:I

    if-eq v1, v2, :cond_0

    .line 716
    iget v1, p0, Lcom/android/gallery3d/ui/SlotView;->mStartIndex:I

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/SlotView;->setCenterIndex(I)V

    .line 717
    iput v2, p0, Lcom/android/gallery3d/ui/SlotView;->mStartIndex:I

    .line 720
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/ui/SlotView;->mScrollX:I

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/SlotView;->setScrollPosition(I)V

    .line 721
    return v0
.end method

.method public setSlotRenderer(Lcom/android/gallery3d/ui/SlotView$SlotRenderer;)V
    .locals 3
    .parameter "slotDrawer"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    .line 99
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    #getter for: Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I
    invoke-static {v1}, Lcom/android/gallery3d/ui/SlotView$Layout;->access$100(Lcom/android/gallery3d/ui/SlotView$Layout;)I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    #getter for: Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I
    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView$Layout;->access$200(Lcom/android/gallery3d/ui/SlotView$Layout;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->onSlotSizeChanged(II)V

    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SlotView;->getVisibleStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SlotView;->getVisibleEnd()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->onVisibleRangeChanged(II)V

    .line 103
    :cond_0
    return-void
.end method

.method public setSlotSpec(Lcom/android/gallery3d/ui/SlotView$Spec;)V
    .locals 1
    .parameter "spec"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/SlotView$Layout;->setSlotSpec(Lcom/android/gallery3d/ui/SlotView$Spec;)V

    .line 145
    return-void
.end method

.method public startRisingAnimation()V
    .locals 1

    .prologue
    .line 175
    new-instance v0, Lcom/android/gallery3d/ui/SlotView$RisingAnimation;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/SlotView$RisingAnimation;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    .line 176
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView$SlotAnimation;->start()V

    .line 177
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    #getter for: Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I
    invoke-static {v0}, Lcom/android/gallery3d/ui/SlotView$Layout;->access$300(Lcom/android/gallery3d/ui/SlotView$Layout;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    .line 178
    :cond_0
    return-void
.end method
