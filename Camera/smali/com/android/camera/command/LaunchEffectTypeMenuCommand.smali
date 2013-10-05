.class public Lcom/android/camera/command/LaunchEffectTypeMenuCommand;
.super Lcom/android/camera/command/MenuCommand;
.source "LaunchEffectTypeMenuCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LaunchEffectTypeMenuCommand"


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
    .line 48
    invoke-direct {p0}, Lcom/android/camera/command/MenuCommand;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mSlideDirection:I

    .line 49
    iput-object p1, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    .line 50
    iput-object p2, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 51
    iput-object p3, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mMenuDepot:Lcom/android/camera/MenuResourceDepot;

    .line 52
    iput-object p4, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mResourceData:Lcom/android/camera/resourcedata/MenuResourceBase;

    .line 53
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 11

    .prologue
    const/16 v10, 0xbd9

    const/16 v9, 0xbc0

    const/16 v2, 0x52

    const/16 v8, 0x8

    .line 65
    iget-object v1, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->isPreviewStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    const-string v1, "LaunchEffectTypeMenuCommand"

    const-string v2, "return isStartPreview.."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getIsLaunchGallery()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    const-string v1, "LaunchEffectTypeMenuCommand"

    const-string v2, "return getIsLaunchGallery.."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    instance-of v1, v1, Lcom/android/camera/Camera;

    if-eqz v1, :cond_2

    .line 76
    iget-object v1, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v1, Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 77
    const-string v1, "LaunchEffectTypeMenuCommand"

    const-string v2, "return isCapturing.."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    :cond_2
    iget-object v1, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v1, Lcom/android/camera/Camcorder;

    invoke-virtual {v1}, Lcom/android/camera/Camcorder;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 82
    const-string v1, "LaunchEffectTypeMenuCommand"

    const-string v2, "return isRecording.."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 87
    :cond_3
    iget-object v1, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->isAutoFocusing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 88
    const-string v1, "LaunchEffectTypeMenuCommand"

    const-string v2, "return isAutoFocusing.."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    :cond_4
    const/4 v0, 0x0

    .line 93
    .local v0, menu:Lcom/android/camera/MenuBase;
    iget-object v1, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getMode()I

    move-result v1

    if-nez v1, :cond_7

    .line 94
    iget-object v1, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 95
    iget-object v1, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mMenuDepot:Lcom/android/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #menu:Lcom/android/camera/MenuBase;
    check-cast v0, Lcom/android/camera/MenuBase;

    .line 96
    .restart local v0       #menu:Lcom/android/camera/MenuBase;
    if-nez v0, :cond_5

    .line 97
    new-instance v1, Lcom/android/camera/resourcedata/FrontEffectResourceData;

    iget-object v3, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v1, v3}, Lcom/android/camera/resourcedata/FrontEffectResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    iput-object v1, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mResourceData:Lcom/android/camera/resourcedata/MenuResourceBase;

    .line 98
    new-instance v0, Lcom/android/camera/glwidget/TwGLThumnailListMenu;

    .end local v0           #menu:Lcom/android/camera/MenuBase;
    iget-object v1, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    iget-object v3, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mResourceData:Lcom/android/camera/resourcedata/MenuResourceBase;

    iget-object v5, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mMenuDepot:Lcom/android/camera/MenuResourceDepot;

    iget v6, p0, Lcom/android/camera/command/MenuCommand;->mZOrder:I

    iget v7, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mSlideDirection:I

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/glwidget/TwGLThumnailListMenu;-><init>(Lcom/android/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/android/camera/resourcedata/MenuResourceBase;Lcom/android/camera/MenuResourceDepot;II)V

    .line 99
    .restart local v0       #menu:Lcom/android/camera/MenuBase;
    iget-object v1, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mMenuDepot:Lcom/android/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_5
    :goto_1
    iget v1, p0, Lcom/android/camera/command/MenuCommand;->mZOrder:I

    invoke-virtual {v0, v1}, Lcom/android/camera/MenuBase;->setZorder(I)V

    .line 128
    iget-object v1, p0, Lcom/android/camera/command/MenuCommand;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/android/camera/MenuBase;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    .line 129
    iget v1, p0, Lcom/android/camera/command/MenuCommand;->mLaunchX:F

    iget v2, p0, Lcom/android/camera/command/MenuCommand;->mLaunchY:F

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/MenuBase;->setLaunchPosition(FF)V

    .line 131
    invoke-virtual {v0}, Lcom/android/camera/MenuBase;->isActive()Z

    move-result v1

    if-nez v1, :cond_9

    .line 132
    invoke-virtual {v0}, Lcom/android/camera/MenuBase;->showMenu()V

    goto/16 :goto_0

    .line 102
    :cond_6
    iget-object v1, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mMenuDepot:Lcom/android/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #menu:Lcom/android/camera/MenuBase;
    check-cast v0, Lcom/android/camera/MenuBase;

    .line 103
    .restart local v0       #menu:Lcom/android/camera/MenuBase;
    if-nez v0, :cond_5

    .line 104
    new-instance v1, Lcom/android/camera/resourcedata/EffectResourceData;

    iget-object v2, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v1, v2}, Lcom/android/camera/resourcedata/EffectResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    iput-object v1, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mResourceData:Lcom/android/camera/resourcedata/MenuResourceBase;

    .line 105
    new-instance v0, Lcom/android/camera/glwidget/TwGLThumnailListMenu;

    .end local v0           #menu:Lcom/android/camera/MenuBase;
    iget-object v1, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    iget-object v3, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mResourceData:Lcom/android/camera/resourcedata/MenuResourceBase;

    iget-object v5, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mMenuDepot:Lcom/android/camera/MenuResourceDepot;

    iget v6, p0, Lcom/android/camera/command/MenuCommand;->mZOrder:I

    iget v7, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mSlideDirection:I

    move v2, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/glwidget/TwGLThumnailListMenu;-><init>(Lcom/android/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/android/camera/resourcedata/MenuResourceBase;Lcom/android/camera/MenuResourceDepot;II)V

    .line 106
    .restart local v0       #menu:Lcom/android/camera/MenuBase;
    iget-object v1, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mMenuDepot:Lcom/android/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 110
    :cond_7
    iget-object v1, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 111
    iget-object v1, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mMenuDepot:Lcom/android/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #menu:Lcom/android/camera/MenuBase;
    check-cast v0, Lcom/android/camera/MenuBase;

    .line 112
    .restart local v0       #menu:Lcom/android/camera/MenuBase;
    if-nez v0, :cond_5

    .line 113
    new-instance v1, Lcom/android/camera/resourcedata/FrontCamcorderEffectResourceData;

    iget-object v2, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v1, v2}, Lcom/android/camera/resourcedata/FrontCamcorderEffectResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    iput-object v1, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mResourceData:Lcom/android/camera/resourcedata/MenuResourceBase;

    .line 114
    new-instance v0, Lcom/android/camera/glwidget/TwGLThumnailListMenu;

    .end local v0           #menu:Lcom/android/camera/MenuBase;
    iget-object v1, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    iget-object v3, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mResourceData:Lcom/android/camera/resourcedata/MenuResourceBase;

    iget-object v5, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mMenuDepot:Lcom/android/camera/MenuResourceDepot;

    iget v6, p0, Lcom/android/camera/command/MenuCommand;->mZOrder:I

    iget v7, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mSlideDirection:I

    move v2, v10

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/glwidget/TwGLThumnailListMenu;-><init>(Lcom/android/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/android/camera/resourcedata/MenuResourceBase;Lcom/android/camera/MenuResourceDepot;II)V

    .line 115
    .restart local v0       #menu:Lcom/android/camera/MenuBase;
    iget-object v1, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mMenuDepot:Lcom/android/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 118
    :cond_8
    iget-object v1, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mMenuDepot:Lcom/android/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #menu:Lcom/android/camera/MenuBase;
    check-cast v0, Lcom/android/camera/MenuBase;

    .line 119
    .restart local v0       #menu:Lcom/android/camera/MenuBase;
    if-nez v0, :cond_5

    .line 120
    new-instance v1, Lcom/android/camera/resourcedata/CamcorderEffectResourceData;

    iget-object v2, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v1, v2}, Lcom/android/camera/resourcedata/CamcorderEffectResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    iput-object v1, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mResourceData:Lcom/android/camera/resourcedata/MenuResourceBase;

    .line 121
    new-instance v0, Lcom/android/camera/glwidget/TwGLThumnailListMenu;

    .end local v0           #menu:Lcom/android/camera/MenuBase;
    iget-object v1, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    iget-object v3, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mResourceData:Lcom/android/camera/resourcedata/MenuResourceBase;

    iget-object v5, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mMenuDepot:Lcom/android/camera/MenuResourceDepot;

    iget v6, p0, Lcom/android/camera/command/MenuCommand;->mZOrder:I

    iget v7, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mSlideDirection:I

    move v2, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/glwidget/TwGLThumnailListMenu;-><init>(Lcom/android/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/android/camera/resourcedata/MenuResourceBase;Lcom/android/camera/MenuResourceDepot;II)V

    .line 122
    .restart local v0       #menu:Lcom/android/camera/MenuBase;
    iget-object v1, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mMenuDepot:Lcom/android/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 134
    :cond_9
    iget-object v1, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0
.end method

.method public setSliderDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 60
    iput p1, p0, Lcom/android/camera/command/LaunchEffectTypeMenuCommand;->mSlideDirection:I

    .line 61
    return-void
.end method

.method public setZOrder(I)V
    .locals 0
    .parameter "zOrder"

    .prologue
    .line 56
    iput p1, p0, Lcom/android/camera/command/MenuCommand;->mZOrder:I

    .line 57
    return-void
.end method
