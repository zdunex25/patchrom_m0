.class public Lcom/android/camera/command/LaunchSnSSettingMenuCommand;
.super Lcom/android/camera/command/MenuCommand;
.source "LaunchSnSSettingMenuCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LaunchSnSMenuCommand"

.field public static sAnchor:Lcom/sec/android/glview/TwGLImage;


# instance fields
.field private mActivityContext:Lcom/android/camera/AbstractCameraActivity;

.field private mMenuDepot:Lcom/android/camera/MenuResourceDepot;

.field private mParentView:Lcom/sec/android/glview/TwGLViewGroup;

.field private mResourceData:Lcom/android/camera/resourcedata/MenuResourceBase;

.field private mSlideDirection:I


# direct methods
.method public constructor <init>(Lcom/android/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/android/camera/MenuResourceDepot;Lcom/android/camera/resourcedata/MenuResourceBase;)V
    .locals 2
    .parameter "activityContext"
    .parameter "glParentView"
    .parameter "menuDepot"
    .parameter "res"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/camera/command/MenuCommand;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/command/LaunchSnSSettingMenuCommand;->mSlideDirection:I

    .line 47
    const-string v0, "LaunchSnSMenuCommand"

    const-string v1, "LaunchSnSMenuCommand Constructor!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iput-object p1, p0, Lcom/android/camera/command/LaunchSnSSettingMenuCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    .line 50
    iput-object p2, p0, Lcom/android/camera/command/LaunchSnSSettingMenuCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 51
    iput-object p3, p0, Lcom/android/camera/command/LaunchSnSSettingMenuCommand;->mMenuDepot:Lcom/android/camera/MenuResourceDepot;

    .line 52
    iput-object p4, p0, Lcom/android/camera/command/LaunchSnSSettingMenuCommand;->mResourceData:Lcom/android/camera/resourcedata/MenuResourceBase;

    .line 53
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 8

    .prologue
    .line 65
    iget-object v1, p0, Lcom/android/camera/command/LaunchSnSSettingMenuCommand;->mMenuDepot:Lcom/android/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/camera/command/LaunchSnSSettingMenuCommand;->mResourceData:Lcom/android/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2}, Lcom/android/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/MenuBase;

    .line 66
    .local v0, menu:Lcom/android/camera/MenuBase;
    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu;

    .end local v0           #menu:Lcom/android/camera/MenuBase;
    iget-object v1, p0, Lcom/android/camera/command/LaunchSnSSettingMenuCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    iget-object v2, p0, Lcom/android/camera/command/LaunchSnSSettingMenuCommand;->mResourceData:Lcom/android/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2}, Lcom/android/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/command/LaunchSnSSettingMenuCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/android/camera/command/LaunchSnSSettingMenuCommand;->mResourceData:Lcom/android/camera/resourcedata/MenuResourceBase;

    iget-object v5, p0, Lcom/android/camera/command/LaunchSnSSettingMenuCommand;->mMenuDepot:Lcom/android/camera/MenuResourceDepot;

    iget v6, p0, Lcom/android/camera/command/MenuCommand;->mZOrder:I

    iget v7, p0, Lcom/android/camera/command/LaunchSnSSettingMenuCommand;->mSlideDirection:I

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/glwidget/TwGLShootAndShareSettingMenu;-><init>(Lcom/android/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/android/camera/resourcedata/MenuResourceBase;Lcom/android/camera/MenuResourceDepot;II)V

    .line 68
    .restart local v0       #menu:Lcom/android/camera/MenuBase;
    iget-object v1, p0, Lcom/android/camera/command/LaunchSnSSettingMenuCommand;->mMenuDepot:Lcom/android/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/camera/command/LaunchSnSSettingMenuCommand;->mResourceData:Lcom/android/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2}, Lcom/android/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_0
    iget v1, p0, Lcom/android/camera/command/MenuCommand;->mZOrder:I

    invoke-virtual {v0, v1}, Lcom/android/camera/MenuBase;->setZorder(I)V

    .line 71
    iget-object v1, p0, Lcom/android/camera/command/MenuCommand;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/android/camera/MenuBase;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    .line 73
    invoke-virtual {v0}, Lcom/android/camera/MenuBase;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 74
    invoke-virtual {v0}, Lcom/android/camera/MenuBase;->showMenu()V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/android/camera/command/LaunchSnSSettingMenuCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0
.end method

.method public setSliderDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 60
    iput p1, p0, Lcom/android/camera/command/LaunchSnSSettingMenuCommand;->mSlideDirection:I

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
