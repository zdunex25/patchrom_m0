.class Lcom/android/camera/CamcorderEngine$2;
.super Ljava/lang/Object;
.source "CamcorderEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CamcorderEngine;->doStartEngineAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CamcorderEngine;


# direct methods
.method constructor <init>(Lcom/android/camera/CamcorderEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 441
    iput-object p1, p0, Lcom/android/camera/CamcorderEngine$2;->this$0:Lcom/android/camera/CamcorderEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine$2;->this$0:Lcom/android/camera/CamcorderEngine;

    #calls: Lcom/android/camera/CamcorderEngine;->openCameraDevice()V
    invoke-static {v0}, Lcom/android/camera/CamcorderEngine;->access$100(Lcom/android/camera/CamcorderEngine;)V

    .line 444
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine$2;->this$0:Lcom/android/camera/CamcorderEngine;

    iget-object v0, v0, Lcom/android/camera/CamcorderEngine;->mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 445
    return-void
.end method
