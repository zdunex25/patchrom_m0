.class Lcom/sec/android/app/camera/widget/TwScaleZoomRect$1;
.super Landroid/view/OrientationEventListener;
.source "TwScaleZoomRect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/TwScaleZoomRect;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect$1;->this$0:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 120
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    const/4 v1, 0x0

    .line 125
    .local v1, degree:I
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect$1;->this$0:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    #calls: Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->roundOrientation(I)I
    invoke-static {v2, p1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->access$000(Lcom/sec/android/app/camera/widget/TwScaleZoomRect;I)I

    move-result v2

    add-int/lit8 v1, v2, 0x5a

    .line 130
    const/16 v2, 0x168

    if-lt v1, v2, :cond_2

    .line 131
    add-int/lit16 v1, v1, -0x168

    .line 133
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect$1;->this$0:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    #getter for: Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLastOrientation:I
    invoke-static {v2}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->access$100(Lcom/sec/android/app/camera/widget/TwScaleZoomRect;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 136
    const/4 v0, 0x1

    .line 140
    .local v0, autoRotation:Z
    const/4 v0, 0x1

    .line 143
    if-eqz v0, :cond_0

    .line 144
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect$1;->this$0:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    #setter for: Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLastOrientation:I
    invoke-static {v2, v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->access$102(Lcom/sec/android/app/camera/widget/TwScaleZoomRect;I)I

    .line 145
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect$1;->this$0:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->invalidate()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    .end local v0           #autoRotation:Z
    :catch_0
    move-exception v2

    goto :goto_0
.end method
