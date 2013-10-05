.class Lcom/android/camera/CamcorderEngine$1;
.super Landroid/os/Handler;
.source "CamcorderEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CamcorderEngine;
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
    .line 159
    iput-object p1, p0, Lcom/android/camera/CamcorderEngine$1;->this$0:Lcom/android/camera/CamcorderEngine;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 161
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 169
    :goto_0
    return-void

    .line 164
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine$1;->this$0:Lcom/android/camera/CamcorderEngine;

    iget-object v0, v0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camcorder;

    invoke-virtual {v0}, Lcom/android/camera/Camcorder;->hideFocusIndicator()V

    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
