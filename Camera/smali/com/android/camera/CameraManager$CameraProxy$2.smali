.class Lcom/android/camera/CameraManager$CameraProxy$2;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraManager$CameraProxy;->takePicture2(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/CameraManager$CameraProxy;

.field final synthetic val$cameraState:I

.field final synthetic val$focusState:I

.field final synthetic val$jpeg:Landroid/hardware/Camera$PictureCallback;

.field final synthetic val$postview:Landroid/hardware/Camera$PictureCallback;

.field final synthetic val$raw:Landroid/hardware/Camera$PictureCallback;

.field final synthetic val$shutter:Landroid/hardware/Camera$ShutterCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraManager$CameraProxy;Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 411
    iput-object p1, p0, Lcom/android/camera/CameraManager$CameraProxy$2;->this$1:Lcom/android/camera/CameraManager$CameraProxy;

    iput-object p2, p0, Lcom/android/camera/CameraManager$CameraProxy$2;->val$shutter:Landroid/hardware/Camera$ShutterCallback;

    iput-object p3, p0, Lcom/android/camera/CameraManager$CameraProxy$2;->val$raw:Landroid/hardware/Camera$PictureCallback;

    iput-object p4, p0, Lcom/android/camera/CameraManager$CameraProxy$2;->val$postview:Landroid/hardware/Camera$PictureCallback;

    iput-object p5, p0, Lcom/android/camera/CameraManager$CameraProxy$2;->val$jpeg:Landroid/hardware/Camera$PictureCallback;

    iput p6, p0, Lcom/android/camera/CameraManager$CameraProxy$2;->val$cameraState:I

    iput p7, p0, Lcom/android/camera/CameraManager$CameraProxy$2;->val$focusState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 415
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraProxy$2;->this$1:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, v1, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraProxy$2;->val$shutter:Landroid/hardware/Camera$ShutterCallback;

    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraProxy$2;->val$raw:Landroid/hardware/Camera$PictureCallback;

    iget-object v4, p0, Lcom/android/camera/CameraManager$CameraProxy$2;->val$postview:Landroid/hardware/Camera$PictureCallback;

    iget-object v5, p0, Lcom/android/camera/CameraManager$CameraProxy$2;->val$jpeg:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraProxy$2;->this$1:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, v1, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v1}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 422
    return-void

    .line 416
    :catch_0
    move-exception v0

    .line 417
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "CameraManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "take picture failed; cameraState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/CameraManager$CameraProxy$2;->val$cameraState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", focusState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/CameraManager$CameraProxy$2;->val$focusState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    throw v0
.end method
