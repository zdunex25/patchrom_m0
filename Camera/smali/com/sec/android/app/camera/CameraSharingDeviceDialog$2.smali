.class Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;
.super Ljava/lang/Object;
.source "CameraSharingDeviceDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraSharingDeviceDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->this$0:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 194
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->this$0:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    #getter for: Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->mUserList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->access$100(Lcom/sec/android/app/camera/CameraSharingDeviceDialog;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 195
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->this$0:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    #getter for: Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->mUserList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->access$100(Lcom/sec/android/app/camera/CameraSharingDeviceDialog;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/shareshot/User;

    .line 197
    .local v3, user:Lcom/samsung/shareshot/User;
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->this$0:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    #getter for: Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->DeviceCheckStatus:[Z
    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->access$000(Lcom/sec/android/app/camera/CameraSharingDeviceDialog;)[Z

    move-result-object v4

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_1

    .line 198
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->this$0:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/Camera;

    iget-object v4, v4, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v4, :cond_0

    .line 199
    invoke-virtual {v3}, Lcom/samsung/shareshot/User;->onSelected()V

    .line 201
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->this$0:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/Camera;

    iget-object v4, v4, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-virtual {v3}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/dmc/ux/db/UserInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/samsung/shareshot/IShareShotService;->activateUser(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->this$0:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/Camera;

    iget-object v4, v4, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lcom/sec/android/app/camera/Camera$UserWrapper;->selectUser(Lcom/samsung/shareshot/User;Z)V

    .line 218
    :cond_0
    :goto_2
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 219
    .local v2, msg:Landroid/os/Message;
    const/16 v4, 0xcf

    iput v4, v2, Landroid/os/Message;->what:I

    .line 220
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->this$0:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/Camera;

    iget-object v4, v4, Lcom/sec/android/app/camera/Camera;->mActivieUserHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    .end local v2           #msg:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 203
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 207
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->this$0:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    #getter for: Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->DeviceCheckStatus:[Z
    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->access$000(Lcom/sec/android/app/camera/CameraSharingDeviceDialog;)[Z

    move-result-object v4

    aget-boolean v4, v4, v1

    if-nez v4, :cond_0

    .line 208
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->this$0:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/Camera;

    iget-object v4, v4, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v4, :cond_0

    .line 209
    invoke-virtual {v3}, Lcom/samsung/shareshot/User;->onUnSelected()V

    .line 211
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->this$0:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/Camera;

    iget-object v4, v4, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-virtual {v3}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/dmc/ux/db/UserInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/samsung/shareshot/IShareShotService;->cancelActivateUser(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 215
    :goto_3
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->this$0:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/Camera;

    iget-object v4, v4, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/sec/android/app/camera/Camera$UserWrapper;->selectUser(Lcom/samsung/shareshot/User;Z)V

    goto :goto_2

    .line 212
    :catch_1
    move-exception v0

    .line 213
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 222
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v3           #user:Lcom/samsung/shareshot/User;
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->this$0:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->dismiss()V

    .line 223
    return-void
.end method
