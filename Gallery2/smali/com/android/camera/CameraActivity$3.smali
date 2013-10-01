.class Lcom/android/camera/CameraActivity$3;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/camera/CameraActivity$3;->this$0:Lcom/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/camera/CameraActivity$3;->this$0:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/CameraActivity$3;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    #setter for: Lcom/android/camera/CameraActivity;->mCameraSwitchAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0, v1}, Lcom/android/camera/CameraActivity;->access$302(Lcom/android/camera/CameraActivity;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 198
    iget-object v0, p0, Lcom/android/camera/CameraActivity$3;->this$0:Lcom/android/camera/CameraActivity;

    #getter for: Lcom/android/camera/CameraActivity;->mCameraSwitchAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$300(Lcom/android/camera/CameraActivity;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 199
    iget-object v0, p0, Lcom/android/camera/CameraActivity$3;->this$0:Lcom/android/camera/CameraActivity;

    #getter for: Lcom/android/camera/CameraActivity;->mCameraSwitchAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$300(Lcom/android/camera/CameraActivity;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 200
    return-void

    .line 196
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
