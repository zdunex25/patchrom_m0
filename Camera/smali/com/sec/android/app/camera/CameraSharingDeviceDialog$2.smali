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

.field final synthetic val$mDeviceCount:I

.field final synthetic val$mDeviceData:[Lcom/samsung/shareshot/User;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraSharingDeviceDialog;I[Lcom/samsung/shareshot/User;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->this$0:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    iput p2, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->val$mDeviceCount:I

    iput-object p3, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->val$mDeviceData:[Lcom/samsung/shareshot/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 167
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->val$mDeviceCount:I

    if-ge v1, v2, :cond_2

    .line 168
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->this$0:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    #getter for: Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->DeviceCheckStatus:[Z
    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->access$000(Lcom/sec/android/app/camera/CameraSharingDeviceDialog;)[Z

    move-result-object v2

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    .line 169
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->this$0:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->val$mDeviceData:[Lcom/samsung/shareshot/User;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/samsung/shareshot/User;->onSelected()V

    .line 172
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->this$0:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->val$mDeviceData:[Lcom/samsung/shareshot/User;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/dmc/ux/db/UserInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/shareshot/IShareShotService;->activateUser(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->this$0:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->val$mDeviceData:[Lcom/samsung/shareshot/User;

    aget-object v3, v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/Camera$UserWrapper;->selectUser(Lcom/samsung/shareshot/User;Z)V

    .line 167
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 175
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 179
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->this$0:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    #getter for: Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->DeviceCheckStatus:[Z
    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->access$000(Lcom/sec/android/app/camera/CameraSharingDeviceDialog;)[Z

    move-result-object v2

    aget-boolean v2, v2, v1

    if-nez v2, :cond_0

    .line 180
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->this$0:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v2, :cond_0

    .line 181
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->val$mDeviceData:[Lcom/samsung/shareshot/User;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/samsung/shareshot/User;->onUnSelected()V

    .line 183
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->this$0:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->val$mDeviceData:[Lcom/samsung/shareshot/User;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/dmc/ux/db/UserInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/shareshot/IShareShotService;->cancelActivateUser(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 188
    :goto_3
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->this$0:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->val$mDeviceData:[Lcom/samsung/shareshot/User;

    aget-object v3, v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/Camera$UserWrapper;->selectUser(Lcom/samsung/shareshot/User;Z)V

    goto :goto_2

    .line 184
    :catch_1
    move-exception v0

    .line 186
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 193
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->this$0:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->dismiss()V

    .line 194
    return-void
.end method
