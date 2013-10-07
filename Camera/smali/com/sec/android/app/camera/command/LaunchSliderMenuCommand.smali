.class public Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "LaunchSliderMenuCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LaunchSliderMenuCommand"


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

.field private mParentView:Lcom/sec/android/glview/TwGLViewGroup;

.field private mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mSlideDirection:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V
    .locals 1
    .parameter "activityContext"
    .parameter "glParentView"
    .parameter "menuDepot"
    .parameter "res"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mSlideDirection:I

    .line 42
    iput-object p1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 43
    iput-object p2, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 44
    iput-object p3, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 45
    iput-object p4, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 46
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 8

    .prologue
    const/16 v3, 0xbc1

    .line 58
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIsLaunchGallery()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    const-string v1, "LaunchSliderMenuCommand"

    const-string v2, "return getIsLaunchGallery.."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    const-string v1, "LaunchSliderMenuCommand"

    const-string v2, "return isCapturing.."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    instance-of v1, v1, Lcom/sec/android/app/camera/Camcorder;

    if-eqz v1, :cond_3

    .line 70
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camcorder;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 71
    const-string v1, "LaunchSliderMenuCommand"

    const-string v2, "return isRecording.."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 76
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    .line 77
    .local v0, menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    if-nez v0, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 78
    :cond_4
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    .end local v0           #menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget-object v5, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget v6, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mZOrder:I

    iget v7, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mSlideDirection:I

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V

    .line 79
    .restart local v0       #menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setOnExposureValueChangedListener(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;)V

    .line 80
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_5
    :goto_1
    if-eqz v0, :cond_0

    .line 98
    iget v1, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mZOrder:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setZorder(I)V

    .line 99
    iget-object v1, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    .line 101
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->isActive()Z

    move-result v1

    if-nez v1, :cond_b

    .line 102
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->showMenu()V

    goto/16 :goto_0

    .line 81
    :cond_6
    if-nez v0, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_7

    .line 82
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    .end local v0           #menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget-object v5, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget v6, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mZOrder:I

    iget v7, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mSlideDirection:I

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V

    .line 83
    .restart local v0       #menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setOnZoomValueChangedListener(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;)V

    .line 84
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 85
    :cond_7
    if-nez v0, :cond_9

    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v1

    const/16 v2, 0x4a

    if-eq v1, v2, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v1

    const/16 v2, 0xbe0

    if-ne v1, v2, :cond_9

    .line 86
    :cond_8
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    .end local v0           #menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget-object v5, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget v6, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mZOrder:I

    iget v7, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mSlideDirection:I

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V

    .line 87
    .restart local v0       #menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setOnAdjustContrastChangedListener(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnAdjustContrastMenuSelectListener;)V

    .line 88
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 89
    :cond_9
    if-nez v0, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v1

    const/16 v2, 0x4b

    if-eq v1, v2, :cond_a

    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v1

    const/16 v2, 0xbe1

    if-ne v1, v2, :cond_5

    .line 90
    :cond_a
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    .end local v0           #menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget-object v5, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget v6, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mZOrder:I

    iget v7, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mSlideDirection:I

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V

    .line 91
    .restart local v0       #menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setOnAdjustSaturationChangedListener(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnAdjustSaturationMenuSelectListener;)V

    .line 92
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 104
    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0
.end method

.method public setSliderDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 53
    iput p1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mSlideDirection:I

    .line 54
    return-void
.end method

.method public setZOrder(I)V
    .locals 0
    .parameter "zOrder"

    .prologue
    .line 49
    iput p1, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mZOrder:I

    .line 50
    return-void
.end method
