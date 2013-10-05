.class public Lcom/android/camera/command/LaunchSceneModeMenuCommand;
.super Lcom/android/camera/command/LaunchListTypeMenuCommand;
.source "LaunchSceneModeMenuCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LaunchSceneModeMenuCommand"


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
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/android/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/android/camera/MenuResourceDepot;Lcom/android/camera/resourcedata/MenuResourceBase;)V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/command/LaunchSceneModeMenuCommand;->mSlideDirection:I

    .line 49
    iput-object p1, p0, Lcom/android/camera/command/LaunchSceneModeMenuCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    .line 50
    iput-object p2, p0, Lcom/android/camera/command/LaunchSceneModeMenuCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 51
    iput-object p3, p0, Lcom/android/camera/command/LaunchSceneModeMenuCommand;->mMenuDepot:Lcom/android/camera/MenuResourceDepot;

    .line 52
    iput-object p4, p0, Lcom/android/camera/command/LaunchSceneModeMenuCommand;->mResourceData:Lcom/android/camera/resourcedata/MenuResourceBase;

    .line 53
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 9

    .prologue
    const/16 v8, 0x44

    const/4 v2, 0x2

    .line 57
    iget-object v1, p0, Lcom/android/camera/command/LaunchSceneModeMenuCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->isPreviewStarted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 58
    const-string v1, "LaunchSceneModeMenuCommand"

    const-string v2, "return isStartPreview.."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/android/camera/command/LaunchSceneModeMenuCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getIsLaunchGallery()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    const-string v1, "LaunchSceneModeMenuCommand"

    const-string v2, "return getIsLaunchGallery.."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 67
    :cond_2
    iget-object v1, p0, Lcom/android/camera/command/LaunchSceneModeMenuCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    instance-of v1, v1, Lcom/android/camera/Camera;

    if-eqz v1, :cond_3

    .line 68
    iget-object v1, p0, Lcom/android/camera/command/LaunchSceneModeMenuCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v1, Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 69
    const-string v1, "LaunchSceneModeMenuCommand"

    const-string v2, "return isCapturing.."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 73
    :cond_3
    iget-object v1, p0, Lcom/android/camera/command/LaunchSceneModeMenuCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v1, Lcom/android/camera/Camcorder;

    invoke-virtual {v1}, Lcom/android/camera/Camcorder;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 74
    const-string v1, "LaunchSceneModeMenuCommand"

    const-string v2, "return isRecording.."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 79
    :cond_4
    const/4 v0, 0x0

    .line 80
    .local v0, menu:Lcom/android/camera/MenuBase;
    iget-object v1, p0, Lcom/android/camera/command/LaunchSceneModeMenuCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getBurstMode()I

    move-result v1

    if-nez v1, :cond_6

    .line 81
    iget-object v1, p0, Lcom/android/camera/command/LaunchSceneModeMenuCommand;->mMenuDepot:Lcom/android/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #menu:Lcom/android/camera/MenuBase;
    check-cast v0, Lcom/android/camera/MenuBase;

    .line 82
    .restart local v0       #menu:Lcom/android/camera/MenuBase;
    if-nez v0, :cond_5

    .line 83
    new-instance v1, Lcom/android/camera/resourcedata/SceneModeResourceData;

    iget-object v3, p0, Lcom/android/camera/command/LaunchSceneModeMenuCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v1, v3}, Lcom/android/camera/resourcedata/SceneModeResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    iput-object v1, p0, Lcom/android/camera/command/LaunchSceneModeMenuCommand;->mResourceData:Lcom/android/camera/resourcedata/MenuResourceBase;

    .line 84
    new-instance v0, Lcom/android/camera/glwidget/TwGLListTypeMenu;

    .end local v0           #menu:Lcom/android/camera/MenuBase;
    iget-object v1, p0, Lcom/android/camera/command/LaunchSceneModeMenuCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    iget-object v3, p0, Lcom/android/camera/command/LaunchSceneModeMenuCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/android/camera/command/LaunchSceneModeMenuCommand;->mResourceData:Lcom/android/camera/resourcedata/MenuResourceBase;

    iget-object v5, p0, Lcom/android/camera/command/LaunchSceneModeMenuCommand;->mMenuDepot:Lcom/android/camera/MenuResourceDepot;

    iget v6, p0, Lcom/android/camera/command/MenuCommand;->mZOrder:I

    iget v7, p0, Lcom/android/camera/command/LaunchSceneModeMenuCommand;->mSlideDirection:I

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/glwidget/TwGLListTypeMenu;-><init>(Lcom/android/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/android/camera/resourcedata/MenuResourceBase;Lcom/android/camera/MenuResourceDepot;II)V

    .line 85
    .restart local v0       #menu:Lcom/android/camera/MenuBase;
    iget-object v1, p0, Lcom/android/camera/command/LaunchSceneModeMenuCommand;->mMenuDepot:Lcom/android/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_5
    :goto_1
    if-eqz v0, :cond_0

    .line 99
    iget v1, p0, Lcom/android/camera/command/MenuCommand;->mZOrder:I

    invoke-virtual {v0, v1}, Lcom/android/camera/MenuBase;->setZorder(I)V

    .line 100
    iget-object v1, p0, Lcom/android/camera/command/MenuCommand;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/android/camera/MenuBase;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    .line 101
    iget v1, p0, Lcom/android/camera/command/MenuCommand;->mLaunchX:F

    iget v2, p0, Lcom/android/camera/command/MenuCommand;->mLaunchY:F

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/MenuBase;->setLaunchPosition(FF)V

    move-object v1, v0

    .line 102
    check-cast v1, Lcom/android/camera/glwidget/TwGLListTypeMenu;

    invoke-virtual {v1}, Lcom/android/camera/glwidget/TwGLListTypeMenu;->refreshMenuPosition()V

    .line 104
    invoke-virtual {v0}, Lcom/android/camera/MenuBase;->isActive()Z

    move-result v1

    if-nez v1, :cond_7

    .line 105
    invoke-virtual {v0}, Lcom/android/camera/MenuBase;->showMenu()V

    goto/16 :goto_0

    .line 88
    :cond_6
    iget-object v1, p0, Lcom/android/camera/command/LaunchSceneModeMenuCommand;->mMenuDepot:Lcom/android/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #menu:Lcom/android/camera/MenuBase;
    check-cast v0, Lcom/android/camera/MenuBase;

    .line 89
    .restart local v0       #menu:Lcom/android/camera/MenuBase;
    if-nez v0, :cond_5

    .line 90
    new-instance v1, Lcom/android/camera/resourcedata/SceneModeBurstResourceData;

    iget-object v2, p0, Lcom/android/camera/command/LaunchSceneModeMenuCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v1, v2}, Lcom/android/camera/resourcedata/SceneModeBurstResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    iput-object v1, p0, Lcom/android/camera/command/LaunchSceneModeMenuCommand;->mResourceData:Lcom/android/camera/resourcedata/MenuResourceBase;

    .line 91
    new-instance v0, Lcom/android/camera/glwidget/TwGLListTypeMenu;

    .end local v0           #menu:Lcom/android/camera/MenuBase;
    iget-object v1, p0, Lcom/android/camera/command/LaunchSceneModeMenuCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    iget-object v3, p0, Lcom/android/camera/command/LaunchSceneModeMenuCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/android/camera/command/LaunchSceneModeMenuCommand;->mResourceData:Lcom/android/camera/resourcedata/MenuResourceBase;

    iget-object v5, p0, Lcom/android/camera/command/LaunchSceneModeMenuCommand;->mMenuDepot:Lcom/android/camera/MenuResourceDepot;

    iget v6, p0, Lcom/android/camera/command/MenuCommand;->mZOrder:I

    iget v7, p0, Lcom/android/camera/command/LaunchSceneModeMenuCommand;->mSlideDirection:I

    move v2, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/glwidget/TwGLListTypeMenu;-><init>(Lcom/android/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/android/camera/resourcedata/MenuResourceBase;Lcom/android/camera/MenuResourceDepot;II)V

    .line 92
    .restart local v0       #menu:Lcom/android/camera/MenuBase;
    iget-object v1, p0, Lcom/android/camera/command/LaunchSceneModeMenuCommand;->mMenuDepot:Lcom/android/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 107
    :cond_7
    iget-object v1, p0, Lcom/android/camera/command/LaunchSceneModeMenuCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0
.end method
