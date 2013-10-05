.class public Lcom/android/camera/command/LaunchHDROptionMenuCommand;
.super Lcom/android/camera/command/MenuCommand;
.source "LaunchHDROptionMenuCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LaunchHDROptionMenuCommand"


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

    iput v0, p0, Lcom/android/camera/command/LaunchHDROptionMenuCommand;->mSlideDirection:I

    .line 44
    iput-object p1, p0, Lcom/android/camera/command/LaunchHDROptionMenuCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    .line 45
    iput-object p2, p0, Lcom/android/camera/command/LaunchHDROptionMenuCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 46
    iput-object p3, p0, Lcom/android/camera/command/LaunchHDROptionMenuCommand;->mMenuDepot:Lcom/android/camera/MenuResourceDepot;

    .line 47
    iput-object p4, p0, Lcom/android/camera/command/LaunchHDROptionMenuCommand;->mResourceData:Lcom/android/camera/resourcedata/MenuResourceBase;

    .line 48
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 8

    .prologue
    .line 60
    iget-object v1, p0, Lcom/android/camera/command/LaunchHDROptionMenuCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->isPreviewStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    const-string v1, "LaunchHDROptionMenuCommand"

    const-string v2, "return isStartPreview.."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/android/camera/command/LaunchHDROptionMenuCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getIsLaunchGallery()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    const-string v1, "LaunchHDROptionMenuCommand"

    const-string v2, "return getIsLaunchGallery.."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/android/camera/command/LaunchHDROptionMenuCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    instance-of v1, v1, Lcom/android/camera/Camera;

    if-eqz v1, :cond_2

    .line 71
    iget-object v1, p0, Lcom/android/camera/command/LaunchHDROptionMenuCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v1, Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 72
    const-string v1, "LaunchHDROptionMenuCommand"

    const-string v2, "return isCapturing.."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 76
    :cond_2
    iget-object v1, p0, Lcom/android/camera/command/LaunchHDROptionMenuCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v1, Lcom/android/camera/Camcorder;

    invoke-virtual {v1}, Lcom/android/camera/Camcorder;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 77
    const-string v1, "LaunchHDROptionMenuCommand"

    const-string v2, "return isRecording.."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    :cond_3
    iget-object v1, p0, Lcom/android/camera/command/LaunchHDROptionMenuCommand;->mMenuDepot:Lcom/android/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/camera/command/LaunchHDROptionMenuCommand;->mResourceData:Lcom/android/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2}, Lcom/android/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/MenuBase;

    .line 83
    .local v0, menu:Lcom/android/camera/MenuBase;
    if-nez v0, :cond_4

    .line 84
    new-instance v0, Lcom/android/camera/glwidget/TwGLHDROptionMenu;

    .end local v0           #menu:Lcom/android/camera/MenuBase;
    iget-object v1, p0, Lcom/android/camera/command/LaunchHDROptionMenuCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    iget-object v2, p0, Lcom/android/camera/command/LaunchHDROptionMenuCommand;->mResourceData:Lcom/android/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2}, Lcom/android/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/command/LaunchHDROptionMenuCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/android/camera/command/LaunchHDROptionMenuCommand;->mResourceData:Lcom/android/camera/resourcedata/MenuResourceBase;

    iget-object v5, p0, Lcom/android/camera/command/LaunchHDROptionMenuCommand;->mMenuDepot:Lcom/android/camera/MenuResourceDepot;

    iget v6, p0, Lcom/android/camera/command/MenuCommand;->mZOrder:I

    iget v7, p0, Lcom/android/camera/command/LaunchHDROptionMenuCommand;->mSlideDirection:I

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/glwidget/TwGLHDROptionMenu;-><init>(Lcom/android/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/android/camera/resourcedata/MenuResourceBase;Lcom/android/camera/MenuResourceDepot;II)V

    .line 85
    .restart local v0       #menu:Lcom/android/camera/MenuBase;
    iget-object v1, p0, Lcom/android/camera/command/LaunchHDROptionMenuCommand;->mMenuDepot:Lcom/android/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/camera/command/LaunchHDROptionMenuCommand;->mResourceData:Lcom/android/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2}, Lcom/android/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_4
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/camera/MenuBase;->setZorder(I)V

    .line 88
    iget-object v1, p0, Lcom/android/camera/command/MenuCommand;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/android/camera/MenuBase;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    .line 90
    invoke-virtual {v0}, Lcom/android/camera/MenuBase;->isActive()Z

    move-result v1

    if-nez v1, :cond_5

    .line 91
    invoke-virtual {v0}, Lcom/android/camera/MenuBase;->showMenu()V

    goto/16 :goto_0

    .line 93
    :cond_5
    iget-object v1, p0, Lcom/android/camera/command/LaunchHDROptionMenuCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0
.end method

.method public setSliderDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/camera/command/LaunchHDROptionMenuCommand;->mSlideDirection:I

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
