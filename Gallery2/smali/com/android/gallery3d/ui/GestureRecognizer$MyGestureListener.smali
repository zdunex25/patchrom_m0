.class Lcom/android/gallery3d/ui/GestureRecognizer$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/GestureRecognizer;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/GestureRecognizer;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/gallery3d/ui/GestureRecognizer$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/GestureRecognizer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/GestureRecognizer;Lcom/android/gallery3d/ui/GestureRecognizer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/GestureRecognizer$MyGestureListener;-><init>(Lcom/android/gallery3d/ui/GestureRecognizer;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/ui/GestureRecognizer$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/GestureRecognizer;

    #getter for: Lcom/android/gallery3d/ui/GestureRecognizer;->mListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/android/gallery3d/ui/GestureRecognizer;->access$300(Lcom/android/gallery3d/ui/GestureRecognizer;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/GestureRecognizer$Listener;->onDoubleTap(FF)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/gallery3d/ui/GestureRecognizer$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/GestureRecognizer;

    #getter for: Lcom/android/gallery3d/ui/GestureRecognizer;->mListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/android/gallery3d/ui/GestureRecognizer;->access$300(Lcom/android/gallery3d/ui/GestureRecognizer;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lcom/android/gallery3d/ui/GestureRecognizer$Listener;->onFling(FF)Z

    move-result v0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter "e1"
    .parameter "e2"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/ui/GestureRecognizer$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/GestureRecognizer;

    #getter for: Lcom/android/gallery3d/ui/GestureRecognizer;->mListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/android/gallery3d/ui/GestureRecognizer;->access$300(Lcom/android/gallery3d/ui/GestureRecognizer;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-interface {v0, p3, p4, v1, v2}, Lcom/android/gallery3d/ui/GestureRecognizer$Listener;->onScroll(FFFF)Z

    move-result v0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/ui/GestureRecognizer$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/GestureRecognizer;

    #getter for: Lcom/android/gallery3d/ui/GestureRecognizer;->mListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/android/gallery3d/ui/GestureRecognizer;->access$300(Lcom/android/gallery3d/ui/GestureRecognizer;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/GestureRecognizer$Listener;->onSingleTapUp(FF)Z

    move-result v0

    return v0
.end method
