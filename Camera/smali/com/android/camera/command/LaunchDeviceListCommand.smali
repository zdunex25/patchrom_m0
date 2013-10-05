.class public Lcom/android/camera/command/LaunchDeviceListCommand;
.super Lcom/android/camera/command/MenuCommand;
.source "LaunchDeviceListCommand.java"


# static fields
.field public static sAnchor:Lcom/sec/android/glview/TwGLImage;


# instance fields
.field private mActivityContext:Lcom/android/camera/AbstractCameraActivity;

.field private mMenuDepot:Lcom/android/camera/MenuResourceDepot;

.field private mParentView:Lcom/sec/android/glview/TwGLViewGroup;

.field private mResourceData:Lcom/android/camera/resourcedata/MenuResourceBase;

.field private mSlideDirection:I


# direct methods
.method public constructor <init>(Lcom/android/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/android/camera/MenuResourceDepot;Lcom/android/camera/resourcedata/MenuResourceBase;)V
    .locals 1
    .parameter "activityContext"
    .parameter "glParentView"
    .parameter "menuDepot"
    .parameter "res"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/camera/command/MenuCommand;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/command/LaunchDeviceListCommand;->mSlideDirection:I

    .line 44
    iput-object p1, p0, Lcom/android/camera/command/LaunchDeviceListCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    .line 45
    iput-object p2, p0, Lcom/android/camera/command/LaunchDeviceListCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 46
    iput-object p3, p0, Lcom/android/camera/command/LaunchDeviceListCommand;->mMenuDepot:Lcom/android/camera/MenuResourceDepot;

    .line 47
    iput-object p4, p0, Lcom/android/camera/command/LaunchDeviceListCommand;->mResourceData:Lcom/android/camera/resourcedata/MenuResourceBase;

    .line 48
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 10

    .prologue
    const/16 v2, 0x36

    .line 60
    iget-object v1, p0, Lcom/android/camera/command/LaunchDeviceListCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v1, Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->checkWifiConnection()Z

    move-result v9

    .line 61
    .local v9, wifidirectON:Z
    if-nez v9, :cond_0

    .line 88
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/android/camera/command/LaunchDeviceListCommand;->mMenuDepot:Lcom/android/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/MenuBase;

    .line 65
    .local v0, menu:Lcom/android/camera/MenuBase;
    if-nez v0, :cond_1

    .line 66
    new-instance v0, Lcom/android/camera/glwidget/TwGLDeviceListMenu;

    .end local v0           #menu:Lcom/android/camera/MenuBase;
    iget-object v1, p0, Lcom/android/camera/command/LaunchDeviceListCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    iget-object v3, p0, Lcom/android/camera/command/LaunchDeviceListCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/android/camera/command/LaunchDeviceListCommand;->mResourceData:Lcom/android/camera/resourcedata/MenuResourceBase;

    iget-object v5, p0, Lcom/android/camera/command/LaunchDeviceListCommand;->mMenuDepot:Lcom/android/camera/MenuResourceDepot;

    const/4 v6, 0x2

    iget v7, p0, Lcom/android/camera/command/LaunchDeviceListCommand;->mSlideDirection:I

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/glwidget/TwGLDeviceListMenu;-><init>(Lcom/android/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/android/camera/resourcedata/MenuResourceBase;Lcom/android/camera/MenuResourceDepot;II)V

    .line 67
    .restart local v0       #menu:Lcom/android/camera/MenuBase;
    iget-object v1, p0, Lcom/android/camera/command/LaunchDeviceListCommand;->mMenuDepot:Lcom/android/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/android/camera/command/MenuCommand;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/android/camera/MenuBase;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    .line 71
    iget v1, p0, Lcom/android/camera/command/MenuCommand;->mZOrder:I

    invoke-virtual {v0, v1}, Lcom/android/camera/MenuBase;->setZorder(I)V

    .line 72
    iget v1, p0, Lcom/android/camera/command/MenuCommand;->mLaunchX:F

    iget v2, p0, Lcom/android/camera/command/MenuCommand;->mLaunchY:F

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/MenuBase;->setLaunchPosition(FF)V

    .line 74
    iget-object v1, p0, Lcom/android/camera/command/LaunchDeviceListCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v1, Lcom/android/camera/Camera;

    iget-object v1, v1, Lcom/android/camera/Camera;->mUserWrapper:Lcom/android/camera/Camera$UserWrapper;

    invoke-virtual {v1}, Lcom/android/camera/Camera$UserWrapper;->getUserCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 75
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/MenuBase;->isActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    iget-object v1, p0, Lcom/android/camera/command/LaunchDeviceListCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->processBack()V

    .line 78
    :cond_2
    iget-object v1, p0, Lcom/android/camera/command/LaunchDeviceListCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090133

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 79
    .local v8, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/command/LaunchDeviceListCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const/4 v2, 0x0

    invoke-static {v1, v8, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 83
    .end local v8           #text:Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Lcom/android/camera/MenuBase;->isActive()Z

    move-result v1

    if-nez v1, :cond_4

    .line 84
    invoke-virtual {v0}, Lcom/android/camera/MenuBase;->showMenu()V

    goto :goto_0

    .line 86
    :cond_4
    iget-object v1, p0, Lcom/android/camera/command/LaunchDeviceListCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0
.end method

.method public setSliderDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/camera/command/LaunchDeviceListCommand;->mSlideDirection:I

    .line 56
    return-void
.end method

.method public setZOrder(I)V
    .locals 0
    .parameter "zOrder"

    .prologue
    .line 51
    iput p1, p0, Lcom/android/camera/command/MenuCommand;->mZOrder:I

    .line 52
    return-void
.end method
