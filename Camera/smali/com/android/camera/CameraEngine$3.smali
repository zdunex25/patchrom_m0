.class Lcom/android/camera/CameraEngine$3;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraEngine;->doStartEngineAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraEngine;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 1503
    iput-object p1, p0, Lcom/android/camera/CameraEngine$3;->this$0:Lcom/android/camera/CameraEngine;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/android/camera/CameraEngine$3;->this$0:Lcom/android/camera/CameraEngine;

    #calls: Lcom/android/camera/CameraEngine;->openCameraDevice()V
    invoke-static {v0}, Lcom/android/camera/CameraEngine;->access$1100(Lcom/android/camera/CameraEngine;)V

    .line 1506
    iget-object v0, p0, Lcom/android/camera/CameraEngine$3;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 1509
    return-void
.end method
