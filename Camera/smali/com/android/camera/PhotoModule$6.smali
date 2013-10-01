.class Lcom/android/camera/PhotoModule$6;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/hardware/Camera$FaceDetectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoModule;->startFaceDetection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 775
    iput-object p1, p0, Lcom/android/camera/PhotoModule$6;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 1
    .parameter "faces"
    .parameter "camera"

    .prologue
    .line 778
    iget-object v0, p0, Lcom/android/camera/PhotoModule$6;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$3500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/FaceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setFaces([Landroid/hardware/Camera$Face;)V

    .line 779
    return-void
.end method
