.class Lcom/android/camera/CameraActivity$2;
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
    .line 184
    iput-object p1, p0, Lcom/android/camera/CameraActivity$2;->this$0:Lcom/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/camera/CameraActivity$2;->this$0:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/CameraActivity$2;->this$0:Lcom/android/camera/CameraActivity;

    #getter for: Lcom/android/camera/CameraActivity;->mFadeInCameraScreenNail:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/camera/CameraActivity;->access$200(Lcom/android/camera/CameraActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 189
    return-void
.end method
