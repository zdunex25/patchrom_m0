.class Lcom/sec/android/app/camera/Camera$12;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 5144
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$12;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 5148
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$12;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {p2}, Lcom/samsung/shareshot/IShareShotService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/shareshot/IShareShotService;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    .line 5149
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$12;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-nez v1, :cond_1

    .line 5165
    :cond_0
    :goto_0
    return-void

    .line 5151
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$12;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    .line 5153
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$12;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v1}, Lcom/samsung/shareshot/IShareShotService;->isJoinedIn()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5154
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$12;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v1}, Lcom/samsung/shareshot/IShareShotService;->joinIn()V

    .line 5157
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$12;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-boolean v1, v1, Lcom/sec/android/app/camera/Camera;->mRespondNoti:Z

    if-eqz v1, :cond_0

    .line 5158
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$12;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sec/android/app/camera/Camera;->mRespondNoti:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5159
    :catch_0
    move-exception v0

    .line 5161
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 5156
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$12;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$12;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v2}, Lcom/samsung/shareshot/IShareShotService;->getUserList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera$UserWrapper;->setUserList(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 5169
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$12;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    .line 5170
    return-void
.end method
