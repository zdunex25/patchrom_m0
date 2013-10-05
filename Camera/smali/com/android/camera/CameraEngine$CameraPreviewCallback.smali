.class Lcom/android/camera/CameraEngine$CameraPreviewCallback;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Lcom/sec/android/seccamera/SecCamera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CameraPreviewCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraEngine;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 1789
    iput-object p1, p0, Lcom/android/camera/CameraEngine$CameraPreviewCallback;->this$0:Lcom/android/camera/CameraEngine;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLcom/sec/android/seccamera/SecCamera;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 1791
    iget-object v0, p0, Lcom/android/camera/CameraEngine$CameraPreviewCallback;->this$0:Lcom/android/camera/CameraEngine;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/CameraEngine;->mIsFinishOneShotPreviewCallback:Z
    invoke-static {v0, v1}, Lcom/android/camera/CameraEngine;->access$1402(Lcom/android/camera/CameraEngine;Z)Z

    .line 1797
    return-void
.end method
