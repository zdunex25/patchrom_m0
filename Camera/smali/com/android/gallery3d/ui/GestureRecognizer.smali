.class public Lcom/android/gallery3d/ui/GestureRecognizer;
.super Ljava/lang/Object;
.source "GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/GestureRecognizer$1;,
        Lcom/android/gallery3d/ui/GestureRecognizer$MyDownUpListener;,
        Lcom/android/gallery3d/ui/GestureRecognizer$MyScaleListener;,
        Lcom/android/gallery3d/ui/GestureRecognizer$MyGestureListener;,
        Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    }
.end annotation


# instance fields
.field private final mDownUpDetector:Lcom/android/gallery3d/ui/DownUpDetector;

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

.field private final mScaleDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/ui/GestureRecognizer$Listener;)V
    .locals 4
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p2, p0, Lcom/android/gallery3d/ui/GestureRecognizer;->mListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    .line 50
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/gallery3d/ui/GestureRecognizer$MyGestureListener;

    invoke-direct {v1, p0, v3}, Lcom/android/gallery3d/ui/GestureRecognizer$MyGestureListener;-><init>(Lcom/android/gallery3d/ui/GestureRecognizer;Lcom/android/gallery3d/ui/GestureRecognizer$1;)V

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v3, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GestureRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    .line 52
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/android/gallery3d/ui/GestureRecognizer$MyScaleListener;

    invoke-direct {v1, p0, v3}, Lcom/android/gallery3d/ui/GestureRecognizer$MyScaleListener;-><init>(Lcom/android/gallery3d/ui/GestureRecognizer;Lcom/android/gallery3d/ui/GestureRecognizer$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 54
    new-instance v0, Lcom/android/gallery3d/ui/DownUpDetector;

    new-instance v1, Lcom/android/gallery3d/ui/GestureRecognizer$MyDownUpListener;

    invoke-direct {v1, p0, v3}, Lcom/android/gallery3d/ui/GestureRecognizer$MyDownUpListener;-><init>(Lcom/android/gallery3d/ui/GestureRecognizer;Lcom/android/gallery3d/ui/GestureRecognizer$1;)V

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/DownUpDetector;-><init>(Lcom/android/gallery3d/ui/DownUpDetector$DownUpListener;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GestureRecognizer;->mDownUpDetector:Lcom/android/gallery3d/ui/DownUpDetector;

    .line 55
    return-void
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/GestureRecognizer;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/gallery3d/ui/GestureRecognizer;->mListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    return-object v0
.end method


# virtual methods
.method public cancelScale()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 69
    .local v0, now:J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 71
    .local v8, cancelEvent:Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/android/gallery3d/ui/GestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, v8}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 72
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 73
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/ui/GestureRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 59
    iget-object v0, p0, Lcom/android/gallery3d/ui/GestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/ui/GestureRecognizer;->mDownUpDetector:Lcom/android/gallery3d/ui/DownUpDetector;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/DownUpDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 61
    return-void
.end method
