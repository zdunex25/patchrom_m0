.class public Lcom/android/gallery3d/ui/DownUpDetector;
.super Ljava/lang/Object;
.source "DownUpDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/DownUpDetector$DownUpListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/gallery3d/ui/DownUpDetector$DownUpListener;

.field private mStillDown:Z


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/DownUpDetector$DownUpListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/gallery3d/ui/DownUpDetector;->mListener:Lcom/android/gallery3d/ui/DownUpDetector$DownUpListener;

    .line 32
    return-void
.end method

.method private setState(ZLandroid/view/MotionEvent;)V
    .locals 1
    .parameter "down"
    .parameter "e"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/DownUpDetector;->mStillDown:Z

    if-ne p1, v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 36
    :cond_0
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/DownUpDetector;->mStillDown:Z

    .line 37
    if-eqz p1, :cond_1

    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/ui/DownUpDetector;->mListener:Lcom/android/gallery3d/ui/DownUpDetector$DownUpListener;

    invoke-interface {v0, p2}, Lcom/android/gallery3d/ui/DownUpDetector$DownUpListener;->onDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/DownUpDetector;->mListener:Lcom/android/gallery3d/ui/DownUpDetector$DownUpListener;

    invoke-interface {v0, p2}, Lcom/android/gallery3d/ui/DownUpDetector$DownUpListener;->onUp(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "ev"

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 56
    :goto_0
    :pswitch_0
    return-void

    .line 47
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/ui/DownUpDetector;->setState(ZLandroid/view/MotionEvent;)V

    goto :goto_0

    .line 53
    :pswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/ui/DownUpDetector;->setState(ZLandroid/view/MotionEvent;)V

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
