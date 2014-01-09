.class final Lcom/sec/android/app/camera/Camera$GestureListener;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GestureListener"
.end annotation


# instance fields
.field DISTANCE:I

.field VELOCITY:I

.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 1
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$GestureListener;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/app/camera/Camera$GestureListener;->DISTANCE:I

    .line 321
    const/16 v0, 0xfa

    iput v0, p0, Lcom/sec/android/app/camera/Camera$GestureListener;->VELOCITY:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 319
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera$GestureListener;-><init>(Lcom/sec/android/app/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/16 v6, -0x7d0

    const/4 v5, 0x1

    .line 324
    const/4 v0, 0x0

    .line 326
    .local v0, ret:Landroid/graphics/Point;
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$GestureListener;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v1

    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->doesFaceRectContainsThisPoint(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$GestureListener;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3, v5}, Lcom/sec/android/app/camera/CameraEngine;->handleDoubleTap(IIZ)V

    .line 332
    :goto_0
    return v5

    .line 331
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$GestureListener;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v6, v6, v2}, Lcom/sec/android/app/camera/CameraEngine;->handleDoubleTap(IIZ)V

    goto :goto_0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 336
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 354
    const-string v0, "Camera"

    const-string v1, "onDown"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v0, 0x0

    .line 359
    const-string v1, "Camera"

    const-string v2, "onFling"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$GestureListener;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/Camera$GestureListener;->DISTANCE:I

    .line 361
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$GestureListener;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/Camera$GestureListener;->VELOCITY:I

    .line 365
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$GestureListener;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->isPanoramaCapturing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 377
    :cond_0
    :goto_0
    return v0

    .line 368
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 371
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/Camera$GestureListener;->VELOCITY:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 372
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/Camera$GestureListener;->DISTANCE:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/Camera$GestureListener;->DISTANCE:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 373
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$GestureListener;->this$0:Lcom/sec/android/app/camera/Camera;

    const-string v1, "quickview"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/Camera;->onLaunchGallery(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 377
    :cond_3
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 376
    :cond_4
    const-string v0, "Camera"

    const-string v1, "Fling slow"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 381
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 384
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 388
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "e"

    .prologue
    .line 340
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$GestureListener;->this$0:Lcom/sec/android/app/camera/Camera;

    #calls: Lcom/sec/android/app/camera/Camera;->isScreenReaderActive()Z
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$200(Lcom/sec/android/app/camera/Camera;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 341
    const/4 v0, 0x0

    .line 342
    .local v0, ret:Landroid/graphics/Point;
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$GestureListener;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v2

    new-instance v3, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->doesFaceRectContainsThisPoint(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$GestureListener;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09015c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$GestureListener;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 349
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
    .line 391
    const-string v0, "Camera"

    const-string v1, "onSingleTapUp"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const/4 v0, 0x0

    return v0
.end method
