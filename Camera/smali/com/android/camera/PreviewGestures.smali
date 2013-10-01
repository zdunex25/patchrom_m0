.class public Lcom/android/camera/PreviewGestures;
.super Ljava/lang/Object;
.source "PreviewGestures.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mCurrent:Landroid/view/MotionEvent;

.field private mDown:Landroid/view/MotionEvent;

.field private mEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mLocation:[I

.field private mMode:I

.field private mModule:Lcom/android/camera/CameraModule;

.field private mOrientation:I

.field private mOverlay:Lcom/android/camera/ui/RenderOverlay;

.field private mPie:Lcom/android/camera/ui/PieRenderer;

.field private mReceivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mScale:Landroid/view/ScaleGestureDetector;

.field private mSlop:I

.field private mTapTimeout:I

.field private mZoom:Lcom/android/camera/ui/ZoomRenderer;

.field private mZoomOnly:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/CameraModule;Lcom/android/camera/ui/ZoomRenderer;Lcom/android/camera/ui/PieRenderer;)V
    .locals 2
    .parameter "ctx"
    .parameter "module"
    .parameter "zoom"
    .parameter "pie"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/android/camera/PreviewGestures$1;

    invoke-direct {v0, p0}, Lcom/android/camera/PreviewGestures$1;-><init>(Lcom/android/camera/PreviewGestures;)V

    iput-object v0, p0, Lcom/android/camera/PreviewGestures;->mHandler:Landroid/os/Handler;

    .line 76
    iput-object p1, p0, Lcom/android/camera/PreviewGestures;->mActivity:Lcom/android/camera/CameraActivity;

    .line 77
    iput-object p2, p0, Lcom/android/camera/PreviewGestures;->mModule:Lcom/android/camera/CameraModule;

    .line 78
    iput-object p4, p0, Lcom/android/camera/PreviewGestures;->mPie:Lcom/android/camera/ui/PieRenderer;

    .line 79
    iput-object p3, p0, Lcom/android/camera/PreviewGestures;->mZoom:Lcom/android/camera/ui/ZoomRenderer;

    .line 80
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/camera/PreviewGestures;->mMode:I

    .line 81
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    .line 82
    invoke-virtual {p1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/PreviewGestures;->mSlop:I

    .line 83
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    iput v0, p0, Lcom/android/camera/PreviewGestures;->mTapTimeout:I

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PreviewGestures;->mEnabled:Z

    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/camera/PreviewGestures;->mLocation:[I

    .line 86
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/PreviewGestures;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/android/camera/PreviewGestures;->mMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/PreviewGestures;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/camera/PreviewGestures;->openPie()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/PreviewGestures;)Landroid/view/MotionEvent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    return-object v0
.end method

.method private cancelPie()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 297
    return-void
.end method

.method private checkReceivers(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "m"

    .prologue
    .line 233
    iget-object v2, p0, Lcom/android/camera/PreviewGestures;->mReceivers:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 234
    iget-object v2, p0, Lcom/android/camera/PreviewGestures;->mReceivers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 235
    .local v1, receiver:Landroid/view/View;
    invoke-direct {p0, p1, v1}, Lcom/android/camera/PreviewGestures;->isInside(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    const/4 v2, 0x1

    .line 240
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #receiver:Landroid/view/View;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isInside(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 5
    .parameter "evt"
    .parameter "v"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 273
    iget-object v2, p0, Lcom/android/camera/PreviewGestures;->mLocation:[I

    invoke-virtual {p2, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 274
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/PreviewGestures;->mLocation:[I

    aget v3, v3, v1

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/PreviewGestures;->mLocation:[I

    aget v3, v3, v1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/PreviewGestures;->mLocation:[I

    aget v3, v3, v0

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/PreviewGestures;->mLocation:[I

    aget v3, v3, v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isSwipe(Landroid/view/MotionEvent;Z)Z
    .locals 8
    .parameter "m"
    .parameter "left"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const v7, 0x3f19999a

    const/4 v6, 0x0

    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, dx:F
    const/4 v1, 0x0

    .line 247
    .local v1, dy:F
    iget v4, p0, Lcom/android/camera/PreviewGestures;->mOrientation:I

    sparse-switch v4, :sswitch_data_0

    .line 265
    :goto_0
    if-eqz p2, :cond_2

    .line 266
    cmpg-float v4, v0, v6

    if-gez v4, :cond_1

    neg-float v4, v0

    div-float v4, v1, v4

    cmpg-float v4, v4, v7

    if-gez v4, :cond_1

    .line 268
    :cond_0
    :goto_1
    return v2

    .line 249
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/android/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float v0, v4, v5

    .line 250
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/android/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 251
    goto :goto_0

    .line 253
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/android/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    neg-float v0, v4

    .line 254
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/android/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 255
    goto :goto_0

    .line 257
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/android/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    neg-float v0, v4

    .line 258
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/android/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 259
    goto :goto_0

    .line 261
    :sswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/android/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float v0, v4, v5

    .line 262
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/android/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 266
    goto :goto_1

    .line 268
    :cond_2
    cmpl-float v4, v0, v6

    if-lez v4, :cond_3

    div-float v4, v1, v0

    cmpg-float v4, v4, v7

    if-ltz v4, :cond_0

    :cond_3
    move v2, v3

    goto :goto_1

    .line 247
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private makeCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 2
    .parameter "m"

    .prologue
    .line 284
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 285
    .local v0, c:Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 286
    return-object v0
.end method

.method private openPie()V
    .locals 3

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    invoke-virtual {v1}, Lcom/android/camera/ui/RenderOverlay;->getWindowPositionX()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/PreviewGestures;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    invoke-virtual {v2}, Lcom/android/camera/ui/RenderOverlay;->getWindowPositionY()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 292
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    iget-object v2, p0, Lcom/android/camera/PreviewGestures;->mPie:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/RenderOverlay;->directDispatchTouch(Landroid/view/MotionEvent;Lcom/android/camera/ui/RenderOverlay$Renderer;)Z

    .line 293
    return-void
.end method

.method private sendToPie(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "m"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/RenderOverlay;->getWindowPositionX()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    invoke-virtual {v1}, Lcom/android/camera/ui/RenderOverlay;->getWindowPositionY()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 302
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mPie:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/ui/RenderOverlay;->directDispatchTouch(Landroid/view/MotionEvent;Lcom/android/camera/ui/RenderOverlay$Renderer;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addTouchReceiver(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mReceivers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PreviewGestures;->mReceivers:Ljava/util/List;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mReceivers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method public cancelActivityTouchHandling(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {p0, p1}, Lcom/android/camera/PreviewGestures;->makeCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 281
    return-void
.end method

.method public clearTouchReceivers()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mReceivers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mReceivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 118
    :cond_0
    return-void
.end method

.method public dispatchTouch(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "m"

    .prologue
    const/4 v4, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 121
    iget-boolean v3, p0, Lcom/android/camera/PreviewGestures;->mEnabled:Z

    if-nez v3, :cond_0

    .line 122
    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, p1}, Lcom/android/camera/CameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 228
    :goto_0
    return v0

    .line 124
    :cond_0
    iput-object p1, p0, Lcom/android/camera/PreviewGestures;->mCurrent:Landroid/view/MotionEvent;

    .line 125
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-nez v3, :cond_5

    .line 126
    invoke-direct {p0, p1}, Lcom/android/camera/PreviewGestures;->checkReceivers(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    iput v6, p0, Lcom/android/camera/PreviewGestures;->mMode:I

    .line 128
    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, p1}, Lcom/android/camera/CameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 130
    :cond_1
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/camera/PreviewGestures;->mMode:I

    .line 131
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    .line 132
    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mPie:Lcom/android/camera/ui/PieRenderer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mPie:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v1}, Lcom/android/camera/ui/PieRenderer;->showsItems()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 133
    iput v2, p0, Lcom/android/camera/PreviewGestures;->mMode:I

    .line 134
    invoke-direct {p0, p1}, Lcom/android/camera/PreviewGestures;->sendToPie(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 136
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mPie:Lcom/android/camera/ui/PieRenderer;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/PreviewGestures;->mZoomOnly:Z

    if-nez v1, :cond_3

    .line 137
    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 139
    :cond_3
    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mZoom:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v1, :cond_4

    .line 140
    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 143
    :cond_4
    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, p1}, Lcom/android/camera/CameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 145
    :cond_5
    iget v3, p0, Lcom/android/camera/PreviewGestures;->mMode:I

    if-nez v3, :cond_6

    move v0, v1

    .line 146
    goto :goto_0

    .line 147
    :cond_6
    iget v3, p0, Lcom/android/camera/PreviewGestures;->mMode:I

    if-ne v3, v2, :cond_9

    .line 148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-ne v4, v1, :cond_8

    .line 149
    invoke-direct {p0, p1}, Lcom/android/camera/PreviewGestures;->makeCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/PreviewGestures;->sendToPie(Landroid/view/MotionEvent;)Z

    .line 150
    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mZoom:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v1, :cond_7

    .line 151
    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0, v1}, Lcom/android/camera/PreviewGestures;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    :cond_7
    move v0, v2

    .line 156
    goto :goto_0

    .line 154
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/camera/PreviewGestures;->sendToPie(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 157
    :cond_9
    iget v3, p0, Lcom/android/camera/PreviewGestures;->mMode:I

    if-ne v3, v5, :cond_b

    .line 158
    iget-object v3, p0, Lcom/android/camera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 159
    iget-object v3, p0, Lcom/android/camera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v3

    if-nez v3, :cond_a

    const/4 v3, 0x6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-ne v3, v4, :cond_a

    .line 160
    iput v1, p0, Lcom/android/camera/PreviewGestures;->mMode:I

    .line 161
    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0, v1}, Lcom/android/camera/PreviewGestures;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    :cond_a
    move v0, v2

    .line 163
    goto/16 :goto_0

    .line 164
    :cond_b
    iget v3, p0, Lcom/android/camera/PreviewGestures;->mMode:I

    if-ne v3, v6, :cond_c

    .line 165
    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, p1}, Lcom/android/camera/CameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 169
    :cond_c
    iget-object v3, p0, Lcom/android/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    if-nez v3, :cond_d

    move v0, v2

    .line 170
    goto/16 :goto_0

    .line 172
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v4, v3, :cond_10

    .line 173
    iget-boolean v3, p0, Lcom/android/camera/PreviewGestures;->mZoomOnly:Z

    if-nez v3, :cond_e

    .line 174
    invoke-direct {p0}, Lcom/android/camera/PreviewGestures;->cancelPie()V

    .line 175
    invoke-direct {p0, p1}, Lcom/android/camera/PreviewGestures;->makeCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/camera/PreviewGestures;->sendToPie(Landroid/view/MotionEvent;)Z

    .line 177
    :cond_e
    iget-object v3, p0, Lcom/android/camera/PreviewGestures;->mZoom:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v3, :cond_f

    .line 178
    iget-object v3, p0, Lcom/android/camera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 179
    iget-object v3, p0, Lcom/android/camera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0, v3}, Lcom/android/camera/PreviewGestures;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    .line 188
    :cond_f
    :goto_1
    iget-object v3, p0, Lcom/android/camera/PreviewGestures;->mZoom:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v3, :cond_11

    .line 189
    iget-object v3, p0, Lcom/android/camera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 190
    .local v0, res:Z
    iget-object v3, p0, Lcom/android/camera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 191
    invoke-direct {p0}, Lcom/android/camera/PreviewGestures;->cancelPie()V

    .line 192
    invoke-virtual {p0, p1}, Lcom/android/camera/PreviewGestures;->cancelActivityTouchHandling(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 181
    .end local v0           #res:Z
    :cond_10
    iget v3, p0, Lcom/android/camera/PreviewGestures;->mMode:I

    if-ne v3, v5, :cond_f

    iget-object v3, p0, Lcom/android/camera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v3

    if-nez v3, :cond_f

    const/4 v3, 0x6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-ne v3, v4, :cond_f

    .line 184
    iget-object v3, p0, Lcom/android/camera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 185
    iget-object v3, p0, Lcom/android/camera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0, v3}, Lcom/android/camera/PreviewGestures;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    goto :goto_1

    .line 196
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v2, v3, :cond_13

    .line 197
    invoke-direct {p0}, Lcom/android/camera/PreviewGestures;->cancelPie()V

    .line 198
    invoke-virtual {p0, p1}, Lcom/android/camera/PreviewGestures;->cancelActivityTouchHandling(Landroid/view/MotionEvent;)V

    .line 200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget v1, p0, Lcom/android/camera/PreviewGestures;->mTapTimeout:I

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-gez v1, :cond_12

    .line 201
    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mModule:Lcom/android/camera/CameraModule;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/android/camera/PreviewGestures;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    invoke-virtual {v5}, Lcom/android/camera/ui/RenderOverlay;->getWindowPositionX()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/camera/PreviewGestures;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    invoke-virtual {v6}, Lcom/android/camera/ui/RenderOverlay;->getWindowPositionY()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-interface {v1, v3, v4, v5}, Lcom/android/camera/CameraModule;->onSingleTapUp(Landroid/view/View;II)V

    move v0, v2

    .line 204
    goto/16 :goto_0

    .line 206
    :cond_12
    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, p1}, Lcom/android/camera/CameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 208
    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v5, v3, :cond_16

    .line 209
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/android/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/android/camera/PreviewGestures;->mSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/android/camera/PreviewGestures;->mSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_16

    .line 212
    :cond_14
    invoke-direct {p0}, Lcom/android/camera/PreviewGestures;->cancelPie()V

    .line 213
    invoke-direct {p0, p1, v2}, Lcom/android/camera/PreviewGestures;->isSwipe(Landroid/view/MotionEvent;Z)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 214
    iput v6, p0, Lcom/android/camera/PreviewGestures;->mMode:I

    .line 215
    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, p1}, Lcom/android/camera/CameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 217
    :cond_15
    invoke-virtual {p0, p1}, Lcom/android/camera/PreviewGestures;->cancelActivityTouchHandling(Landroid/view/MotionEvent;)V

    .line 218
    invoke-direct {p0, p1, v1}, Lcom/android/camera/PreviewGestures;->isSwipe(Landroid/view/MotionEvent;Z)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 219
    iput v1, p0, Lcom/android/camera/PreviewGestures;->mMode:I

    :cond_16
    :goto_2
    move v0, v1

    .line 228
    goto/16 :goto_0

    .line 220
    :cond_17
    iget-boolean v3, p0, Lcom/android/camera/PreviewGestures;->mZoomOnly:Z

    if-nez v3, :cond_16

    .line 221
    iput v2, p0, Lcom/android/camera/PreviewGestures;->mMode:I

    .line 222
    invoke-direct {p0}, Lcom/android/camera/PreviewGestures;->openPie()V

    .line 223
    invoke-direct {p0, p1}, Lcom/android/camera/PreviewGestures;->sendToPie(Landroid/view/MotionEvent;)Z

    goto :goto_2
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .parameter "detector"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mZoom:Lcom/android/camera/ui/ZoomRenderer;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ZoomRenderer;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .parameter "detector"

    .prologue
    const/4 v1, 0x2

    .line 312
    iget v0, p0, Lcom/android/camera/PreviewGestures;->mMode:I

    if-eq v0, v1, :cond_0

    .line 313
    iput v1, p0, Lcom/android/camera/PreviewGestures;->mMode:I

    .line 314
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mCurrent:Landroid/view/MotionEvent;

    invoke-virtual {p0, v0}, Lcom/android/camera/PreviewGestures;->cancelActivityTouchHandling(Landroid/view/MotionEvent;)V

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mCurrent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 317
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mZoom:Lcom/android/camera/ui/ZoomRenderer;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ZoomRenderer;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    .line 319
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2
    .parameter "detector"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mCurrent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mZoom:Lcom/android/camera/ui/ZoomRenderer;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ZoomRenderer;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 328
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/camera/PreviewGestures;->mEnabled:Z

    .line 98
    if-nez p1, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/android/camera/PreviewGestures;->cancelPie()V

    .line 101
    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 93
    iput p1, p0, Lcom/android/camera/PreviewGestures;->mOrientation:I

    .line 94
    return-void
.end method

.method public setRenderOverlay(Lcom/android/camera/ui/RenderOverlay;)V
    .locals 0
    .parameter "overlay"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/camera/PreviewGestures;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    .line 90
    return-void
.end method

.method public setZoomOnly(Z)V
    .locals 0
    .parameter "zoom"

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/camera/PreviewGestures;->mZoomOnly:Z

    .line 105
    return-void
.end method
