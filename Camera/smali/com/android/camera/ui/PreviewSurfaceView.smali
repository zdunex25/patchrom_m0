.class public Lcom/android/camera/ui/PreviewSurfaceView;
.super Landroid/view/SurfaceView;
.source "PreviewSurfaceView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PreviewSurfaceView;->setZOrderMediaOverlay(Z)V

    .line 31
    invoke-virtual {p0}, Lcom/android/camera/ui/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 32
    return-void
.end method

.method private setLayoutSize(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/camera/ui/PreviewSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 44
    .local v0, p:Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, p1, :cond_0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, p1, :cond_1

    .line 45
    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 46
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PreviewSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    :cond_1
    return-void
.end method


# virtual methods
.method public expand()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/camera/ui/PreviewSurfaceView;->setLayoutSize(I)V

    .line 40
    return-void
.end method

.method public shrink()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/ui/PreviewSurfaceView;->setLayoutSize(I)V

    .line 36
    return-void
.end method
