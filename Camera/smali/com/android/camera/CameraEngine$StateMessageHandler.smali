.class public Lcom/android/camera/CameraEngine$StateMessageHandler;
.super Landroid/os/Handler;
.source "CameraEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StateMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraEngine;


# direct methods
.method protected constructor <init>(Lcom/android/camera/CameraEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/camera/CameraEngine$StateMessageHandler;->this$0:Lcom/android/camera/CameraEngine;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 248
    const-string v0, "CameraEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got message..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/android/camera/CameraEngine$StateMessageHandler;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mCurrentState:Lcom/android/camera/AbstractCeState;

    if-nez v0, :cond_0

    .line 253
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraEngine$StateMessageHandler;->this$0:Lcom/android/camera/CameraEngine;

    iget-object v0, v0, Lcom/android/camera/CameraEngine;->mCurrentState:Lcom/android/camera/AbstractCeState;

    invoke-virtual {v0, p1}, Lcom/android/camera/AbstractCeState;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
