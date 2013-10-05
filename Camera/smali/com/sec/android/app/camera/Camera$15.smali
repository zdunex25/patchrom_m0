.class Lcom/android/camera/Camera$15;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->startBlinkShutterAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 6320
    iput-object p1, p0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(I)V
    .locals 2
    .parameter "step"

    .prologue
    .line 6323
    packed-switch p1, :pswitch_data_0

    .line 6333
    :cond_0
    :goto_0
    return-void

    .line 6325
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$2400(Lcom/android/camera/Camera;)Lcom/sec/android/glview/TwGLAniViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6326
    iget-object v0, p0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_1

    .line 6327
    iget-object v0, p0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$2400(Lcom/android/camera/Camera;)Lcom/sec/android/glview/TwGLAniViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 6328
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$2400(Lcom/android/camera/Camera;)Lcom/sec/android/glview/TwGLAniViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLAniViewGroup;->clear()V

    .line 6329
    iget-object v0, p0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$2402(Lcom/android/camera/Camera;Lcom/sec/android/glview/TwGLAniViewGroup;)Lcom/sec/android/glview/TwGLAniViewGroup;

    goto :goto_0

    .line 6323
    nop

    :pswitch_data_0
    .packed-switch 0xffff
        :pswitch_0
    .end packed-switch
.end method
