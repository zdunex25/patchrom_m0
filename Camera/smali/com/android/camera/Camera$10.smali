.class Lcom/android/camera/Camera$10;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
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
    .line 3894
    iput-object p1, p0, Lcom/android/camera/Camera$10;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 3896
    iget-object v0, p0, Lcom/android/camera/Camera$10;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsDestroying:Z
    invoke-static {v0}, Lcom/android/camera/Camera;->access$600(Lcom/android/camera/Camera;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3905
    :goto_0
    return-void

    .line 3898
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3900
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/Camera$10;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->handleCameraTemperatureCheck()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$1600(Lcom/android/camera/Camera;)V

    goto :goto_0

    .line 3898
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
