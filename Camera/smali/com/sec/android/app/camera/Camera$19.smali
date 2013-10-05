.class Lcom/android/camera/Camera$19;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 6565
    iput-object p1, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 6569
    iget-object v0, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    invoke-static {p2}, Lcom/samsung/shareshot/IShareShotCallbackRegister$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/shareshot/IShareShotCallbackRegister;

    move-result-object v1

    #setter for: Lcom/android/camera/Camera;->iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$2502(Lcom/android/camera/Camera;Lcom/samsung/shareshot/IShareShotCallbackRegister;)Lcom/samsung/shareshot/IShareShotCallbackRegister;

    .line 6571
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$2500(Lcom/android/camera/Camera;)Lcom/samsung/shareshot/IShareShotCallbackRegister;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->callback:Lcom/samsung/shareshot/IShareShotServiceCallback;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$2600(Lcom/android/camera/Camera;)Lcom/samsung/shareshot/IShareShotServiceCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/shareshot/IShareShotCallbackRegister;->registerCallback(Lcom/samsung/shareshot/IShareShotServiceCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6575
    :goto_0
    return-void

    .line 6572
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 6579
    iget-object v1, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$2500(Lcom/android/camera/Camera;)Lcom/samsung/shareshot/IShareShotCallbackRegister;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6581
    :try_start_0
    const-string v1, "Camera"

    const-string v2, ">>>>>>onServiceDisconnected>>>>so unregister call back"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6582
    iget-object v1, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$2500(Lcom/android/camera/Camera;)Lcom/samsung/shareshot/IShareShotCallbackRegister;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->callback:Lcom/samsung/shareshot/IShareShotServiceCallback;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$2600(Lcom/android/camera/Camera;)Lcom/samsung/shareshot/IShareShotServiceCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/shareshot/IShareShotCallbackRegister;->unregisterCallback(Lcom/samsung/shareshot/IShareShotServiceCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6587
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    const/4 v2, 0x0

    #setter for: Lcom/android/camera/Camera;->iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;
    invoke-static {v1, v2}, Lcom/android/camera/Camera;->access$2502(Lcom/android/camera/Camera;Lcom/samsung/shareshot/IShareShotCallbackRegister;)Lcom/samsung/shareshot/IShareShotCallbackRegister;

    .line 6588
    return-void

    .line 6583
    :catch_0
    move-exception v0

    .line 6585
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
