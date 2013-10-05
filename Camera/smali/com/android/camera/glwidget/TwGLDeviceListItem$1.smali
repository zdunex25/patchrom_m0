.class Lcom/android/camera/glwidget/TwGLDeviceListItem$1;
.super Ljava/util/TimerTask;
.source "TwGLDeviceListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/glwidget/TwGLDeviceListItem;->animationAfterClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/glwidget/TwGLDeviceListItem;


# direct methods
.method constructor <init>(Lcom/android/camera/glwidget/TwGLDeviceListItem;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/camera/glwidget/TwGLDeviceListItem$1;->this$0:Lcom/android/camera/glwidget/TwGLDeviceListItem;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 334
    iget-object v4, p0, Lcom/android/camera/glwidget/TwGLDeviceListItem$1;->this$0:Lcom/android/camera/glwidget/TwGLDeviceListItem;

    #getter for: Lcom/android/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;
    invoke-static {v4}, Lcom/android/camera/glwidget/TwGLDeviceListItem;->access$100(Lcom/android/camera/glwidget/TwGLDeviceListItem;)Lcom/android/camera/AbstractCameraActivity;

    move-result-object v4

    check-cast v4, Lcom/android/camera/Camera;

    iget-object v4, v4, Lcom/android/camera/Camera;->mUserWrapper:Lcom/android/camera/Camera$UserWrapper;

    iget-object v4, v4, Lcom/android/camera/Camera$UserWrapper;->mTimeout:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/camera/glwidget/TwGLDeviceListItem$1;->this$0:Lcom/android/camera/glwidget/TwGLDeviceListItem;

    #getter for: Lcom/android/camera/glwidget/TwGLDeviceListItem;->mDataMac:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/camera/glwidget/TwGLDeviceListItem;->access$000(Lcom/android/camera/glwidget/TwGLDeviceListItem;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    iget-object v4, p0, Lcom/android/camera/glwidget/TwGLDeviceListItem$1;->this$0:Lcom/android/camera/glwidget/TwGLDeviceListItem;

    #getter for: Lcom/android/camera/glwidget/TwGLDeviceListItem;->mWaitingIcon:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v4}, Lcom/android/camera/glwidget/TwGLDeviceListItem;->access$200(Lcom/android/camera/glwidget/TwGLDeviceListItem;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 336
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 337
    .local v2, msg:Landroid/os/Message;
    const/16 v4, 0xce

    iput v4, v2, Landroid/os/Message;->what:I

    .line 338
    iget-object v4, p0, Lcom/android/camera/glwidget/TwGLDeviceListItem$1;->this$0:Lcom/android/camera/glwidget/TwGLDeviceListItem;

    #getter for: Lcom/android/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;
    invoke-static {v4}, Lcom/android/camera/glwidget/TwGLDeviceListItem;->access$300(Lcom/android/camera/glwidget/TwGLDeviceListItem;)Lcom/samsung/shareshot/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/dmc/ux/db/UserInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, mac:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/glwidget/TwGLDeviceListItem$1;->this$0:Lcom/android/camera/glwidget/TwGLDeviceListItem;

    #getter for: Lcom/android/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;
    invoke-static {v4}, Lcom/android/camera/glwidget/TwGLDeviceListItem;->access$100(Lcom/android/camera/glwidget/TwGLDeviceListItem;)Lcom/android/camera/AbstractCameraActivity;

    move-result-object v4

    check-cast v4, Lcom/android/camera/Camera;

    iget-object v4, v4, Lcom/android/camera/Camera;->mUserWrapper:Lcom/android/camera/Camera$UserWrapper;

    invoke-virtual {v4, v1}, Lcom/android/camera/Camera$UserWrapper;->searchUser(Ljava/lang/String;)Lcom/samsung/shareshot/User;

    move-result-object v3

    .line 341
    .local v3, user:Lcom/samsung/shareshot/User;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/samsung/shareshot/User;->isActivate()Z

    move-result v4

    if-nez v4, :cond_0

    .line 342
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 343
    iget-object v4, p0, Lcom/android/camera/glwidget/TwGLDeviceListItem$1;->this$0:Lcom/android/camera/glwidget/TwGLDeviceListItem;

    #getter for: Lcom/android/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;
    invoke-static {v4}, Lcom/android/camera/glwidget/TwGLDeviceListItem;->access$300(Lcom/android/camera/glwidget/TwGLDeviceListItem;)Lcom/samsung/shareshot/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/shareshot/User;->onUnSelected()V

    .line 344
    iget-object v4, p0, Lcom/android/camera/glwidget/TwGLDeviceListItem$1;->this$0:Lcom/android/camera/glwidget/TwGLDeviceListItem;

    #getter for: Lcom/android/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;
    invoke-static {v4}, Lcom/android/camera/glwidget/TwGLDeviceListItem;->access$100(Lcom/android/camera/glwidget/TwGLDeviceListItem;)Lcom/android/camera/AbstractCameraActivity;

    move-result-object v4

    check-cast v4, Lcom/android/camera/Camera;

    iget-object v4, v4, Lcom/android/camera/Camera;->mUserWrapper:Lcom/android/camera/Camera$UserWrapper;

    iget-object v5, p0, Lcom/android/camera/glwidget/TwGLDeviceListItem$1;->this$0:Lcom/android/camera/glwidget/TwGLDeviceListItem;

    #getter for: Lcom/android/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;
    invoke-static {v5}, Lcom/android/camera/glwidget/TwGLDeviceListItem;->access$300(Lcom/android/camera/glwidget/TwGLDeviceListItem;)Lcom/samsung/shareshot/User;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/Camera$UserWrapper;->selectUser(Lcom/samsung/shareshot/User;Z)V

    .line 345
    iget-object v4, p0, Lcom/android/camera/glwidget/TwGLDeviceListItem$1;->this$0:Lcom/android/camera/glwidget/TwGLDeviceListItem;

    #getter for: Lcom/android/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;
    invoke-static {v4}, Lcom/android/camera/glwidget/TwGLDeviceListItem;->access$100(Lcom/android/camera/glwidget/TwGLDeviceListItem;)Lcom/android/camera/AbstractCameraActivity;

    move-result-object v4

    check-cast v4, Lcom/android/camera/Camera;

    iget-object v4, v4, Lcom/android/camera/Camera;->mActivieUserHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    .end local v3           #user:Lcom/samsung/shareshot/User;
    :cond_0
    :goto_0
    return-void

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method
