.class Lcom/android/camera/glwidget/TwGLPostViewBlink$1;
.super Ljava/lang/Object;
.source "TwGLPostViewBlink.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/glwidget/TwGLPostViewBlink;->setAnimationStep(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/glwidget/TwGLPostViewBlink;


# direct methods
.method constructor <init>(Lcom/android/camera/glwidget/TwGLPostViewBlink;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/camera/glwidget/TwGLPostViewBlink$1;->this$0:Lcom/android/camera/glwidget/TwGLPostViewBlink;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)Z
    .locals 2
    .parameter "animation"

    .prologue
    const v1, 0xffff

    .line 112
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLPostViewBlink$1;->this$0:Lcom/android/camera/glwidget/TwGLPostViewBlink;

    #getter for: Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;
    invoke-static {v0}, Lcom/android/camera/glwidget/TwGLPostViewBlink;->access$000(Lcom/android/camera/glwidget/TwGLPostViewBlink;)Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLPostViewBlink$1;->this$0:Lcom/android/camera/glwidget/TwGLPostViewBlink;

    #getter for: Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;
    invoke-static {v0}, Lcom/android/camera/glwidget/TwGLPostViewBlink;->access$100(Lcom/android/camera/glwidget/TwGLPostViewBlink;)Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;->onProgress(I)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLPostViewBlink$1;->this$0:Lcom/android/camera/glwidget/TwGLPostViewBlink;

    #calls: Lcom/android/camera/glwidget/TwGLPostViewBlink;->playAnimation(I)V
    invoke-static {v0, v1}, Lcom/android/camera/glwidget/TwGLPostViewBlink;->access$200(Lcom/android/camera/glwidget/TwGLPostViewBlink;I)V

    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)Z
    .locals 1
    .parameter "animation"

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method
