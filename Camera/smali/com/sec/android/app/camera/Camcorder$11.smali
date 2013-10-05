.class Lcom/android/camera/Camcorder$11;
.super Landroid/os/UEventObserver;
.source "Camcorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camcorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camcorder;


# direct methods
.method constructor <init>(Lcom/android/camera/Camcorder;)V
    .locals 0
    .parameter

    .prologue
    .line 3203
    iput-object p1, p0, Lcom/android/camera/Camcorder$11;->this$0:Lcom/android/camera/Camcorder;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 3206
    const-string v0, "Camcorder"

    const-string v1, "onUEvent on mCameraTemperatureObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3207
    iget-object v0, p0, Lcom/android/camera/Camcorder$11;->this$0:Lcom/android/camera/Camcorder;

    iget-object v0, v0, Lcom/android/camera/Camcorder;->mCameraTemperatureHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3208
    iget-object v0, p0, Lcom/android/camera/Camcorder$11;->this$0:Lcom/android/camera/Camcorder;

    iget-object v0, v0, Lcom/android/camera/Camcorder;->mCameraTemperatureHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3209
    return-void
.end method
