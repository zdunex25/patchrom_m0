.class final Lcom/android/camera/Camera$GestureListener;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GestureListener"
.end annotation


# instance fields
.field DISTANCE:I

.field VELOCITY:I

.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/camera/Camera;)V
    .locals 1
    .parameter

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/camera/Camera$GestureListener;->this$0:Lcom/android/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 381
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/camera/Camera$GestureListener;->DISTANCE:I

    .line 382
    const/16 v0, 0xfa

    iput v0, p0, Lcom/android/camera/Camera$GestureListener;->VELOCITY:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 380
    invoke-direct {p0, p1}, Lcom/android/camera/Camera$GestureListener;-><init>(Lcom/android/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/16 v6, -0x7d0

    const/4 v5, 0x1

    .line 385
    const/4 v0, 0x0

    .line 387
    .local v0, ret:Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/camera/Camera$GestureListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mGLCameraBaseIndicators:Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$000(Lcom/android/camera/Camera;)Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v1

    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;->doesFaceRectContainsThisPoint(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v1, p0, Lcom/android/camera/Camera$GestureListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraEngine:Lcom/android/camera/CameraEngine;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$100(Lcom/android/camera/Camera;)Lcom/android/camera/CameraEngine;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/camera/CameraEngine;->handleDoubleTap(IIZ)V

    .line 393
    :goto_0
    return v5

    .line 392
    :cond_0
    iget-object v1, p0, Lcom/android/camera/Camera$GestureListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraEngine:Lcom/android/camera/CameraEngine;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$100(Lcom/android/camera/Camera;)Lcom/android/camera/CameraEngine;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v6, v6, v2}, Lcom/android/camera/CameraEngine;->handleDoubleTap(IIZ)V

    goto :goto_0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 397
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 415
    const-string v0, "Camera"

    const-string v1, "onDown"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 420
    const-string v0, "Camera"

    const-string v1, "onFling"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v0, p0, Lcom/android/camera/Camera$GestureListener;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/Camera$GestureListener;->DISTANCE:I

    .line 422
    iget-object v0, p0, Lcom/android/camera/Camera$GestureListener;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/Camera$GestureListener;->VELOCITY:I

    .line 424
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 455
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 458
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 462
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "e"

    .prologue
    .line 401
    iget-object v2, p0, Lcom/android/camera/Camera$GestureListener;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->isScreenReaderActive()Z
    invoke-static {v2}, Lcom/android/camera/Camera;->access$200(Lcom/android/camera/Camera;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 402
    const/4 v0, 0x0

    .line 403
    .local v0, ret:Landroid/graphics/Point;
    iget-object v2, p0, Lcom/android/camera/Camera$GestureListener;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mGLCameraBaseIndicators:Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$000(Lcom/android/camera/Camera;)Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v2

    new-instance v3, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;->doesFaceRectContainsThisPoint(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v2, p0, Lcom/android/camera/Camera$GestureListener;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09017a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 406
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/Camera$GestureListener;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 410
    .end local v0           #ret:Landroid/graphics/Point;
    .end local v1           #text:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 465
    const-string v0, "Camera"

    const-string v1, "onSingleTapUp"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const/4 v0, 0x0

    return v0
.end method
