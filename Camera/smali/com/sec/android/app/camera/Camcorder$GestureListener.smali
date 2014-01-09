.class final Lcom/sec/android/app/camera/Camcorder$GestureListener;
.super Ljava/lang/Object;
.source "Camcorder.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camcorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GestureListener"
.end annotation


# instance fields
.field DISTANCE:I

.field VELOCITY:I

.field final synthetic this$0:Lcom/sec/android/app/camera/Camcorder;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/Camcorder;)V
    .locals 1
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder$GestureListener;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/app/camera/Camcorder$GestureListener;->DISTANCE:I

    .line 215
    const/16 v0, 0xfa

    iput v0, p0, Lcom/sec/android/app/camera/Camcorder$GestureListener;->VELOCITY:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/Camcorder;Lcom/sec/android/app/camera/Camcorder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camcorder$GestureListener;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 231
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

    .line 235
    const-string v1, "Camcorder"

    const-string v2, "onFling"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$GestureListener;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camcorder;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/Camcorder$GestureListener;->DISTANCE:I

    .line 237
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$GestureListener;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camcorder;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/Camcorder$GestureListener;->VELOCITY:I

    .line 242
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$GestureListener;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camcorder;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    :cond_0
    :goto_0
    return v0

    .line 245
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 248
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/Camcorder$GestureListener;->VELOCITY:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 249
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/Camcorder$GestureListener;->DISTANCE:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/Camcorder$GestureListener;->DISTANCE:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$GestureListener;->this$0:Lcom/sec/android/app/camera/Camcorder;

    const-string v1, "quickview"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder;->onLaunchGallery(Ljava/lang/String;)V

    .line 254
    :cond_3
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 253
    :cond_4
    const-string v0, "Camcorder"

    const-string v1, "Fling slow"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 258
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 265
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method
