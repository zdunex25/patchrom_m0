.class Lcom/android/camera/AbstractCameraActivity$hoverclass;
.super Ljava/lang/Object;
.source "AbstractCameraActivity.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/AbstractCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "hoverclass"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/AbstractCameraActivity;


# direct methods
.method private constructor <init>(Lcom/android/camera/AbstractCameraActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 772
    iput-object p1, p0, Lcom/android/camera/AbstractCameraActivity$hoverclass;->this$0:Lcom/android/camera/AbstractCameraActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/AbstractCameraActivity;Lcom/android/camera/AbstractCameraActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 772
    invoke-direct {p0, p1}, Lcom/android/camera/AbstractCameraActivity$hoverclass;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/camera/AbstractCameraActivity$hoverclass;->this$0:Lcom/android/camera/AbstractCameraActivity;

    iget-object v0, v0, Lcom/android/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/android/camera/AbstractCameraActivity$hoverclass;->this$0:Lcom/android/camera/AbstractCameraActivity;

    iget-object v0, v0, Lcom/android/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLContext;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 780
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
