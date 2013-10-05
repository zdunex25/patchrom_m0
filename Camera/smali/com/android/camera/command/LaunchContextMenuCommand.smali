.class public Lcom/android/camera/command/LaunchContextMenuCommand;
.super Lcom/android/camera/command/MenuCommand;
.source "LaunchContextMenuCommand.java"


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
    .line 39
    invoke-direct {p0}, Lcom/android/camera/command/MenuCommand;-><init>()V

    .line 35
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/command/LaunchContextMenuCommand;->mSlideDirection:I

    .line 40
    iput-object p1, p0, Lcom/android/camera/command/LaunchContextMenuCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    .line 41
    iput-object p2, p0, Lcom/android/camera/command/LaunchContextMenuCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 42
    iput-object p3, p0, Lcom/android/camera/command/LaunchContextMenuCommand;->mMenuDepot:Lcom/android/camera/MenuResourceDepot;

    .line 43
    iput-object p4, p0, Lcom/android/camera/command/LaunchContextMenuCommand;->mResourceData:Lcom/android/camera/resourcedata/MenuResourceBase;

    .line 44
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 8

    .prologue
    .line 56
    iget-object v1, p0, Lcom/android/camera/command/LaunchContextMenuCommand;->mMenuDepot:Lcom/android/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/camera/command/LaunchContextMenuCommand;->mResourceData:Lcom/android/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2}, Lcom/android/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/MenuBase;

    .line 57
    .local v0, menu:Lcom/android/camera/MenuBase;
    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/android/camera/glwidget/TwGLContextMenu;

    .end local v0           #menu:Lcom/android/camera/MenuBase;
    iget-object v1, p0, Lcom/android/camera/command/LaunchContextMenuCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    iget-object v2, p0, Lcom/android/camera/command/LaunchContextMenuCommand;->mResourceData:Lcom/android/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2}, Lcom/android/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/command/LaunchContextMenuCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/android/camera/command/LaunchContextMenuCommand;->mResourceData:Lcom/android/camera/resourcedata/MenuResourceBase;

    iget-object v5, p0, Lcom/android/camera/command/LaunchContextMenuCommand;->mMenuDepot:Lcom/android/camera/MenuResourceDepot;

    iget v6, p0, Lcom/android/camera/command/MenuCommand;->mZOrder:I

    iget v7, p0, Lcom/android/camera/command/LaunchContextMenuCommand;->mSlideDirection:I

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/glwidget/TwGLContextMenu;-><init>(Lcom/android/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/android/camera/resourcedata/MenuResourceBase;Lcom/android/camera/MenuResourceDepot;II)V

    .line 59
    .restart local v0       #menu:Lcom/android/camera/MenuBase;
    iget-object v1, p0, Lcom/android/camera/command/LaunchContextMenuCommand;->mMenuDepot:Lcom/android/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/camera/command/LaunchContextMenuCommand;->mResourceData:Lcom/android/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2}, Lcom/android/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_0
    iget v1, p0, Lcom/android/camera/command/MenuCommand;->mZOrder:I

    invoke-virtual {v0, v1}, Lcom/android/camera/MenuBase;->setZorder(I)V

    .line 62
    invoke-virtual {v0}, Lcom/android/camera/MenuBase;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 63
    invoke-virtual {v0}, Lcom/android/camera/MenuBase;->showMenu()V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/android/camera/command/LaunchContextMenuCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0
.end method

.method public setSliderDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 51
    iput p1, p0, Lcom/android/camera/command/LaunchContextMenuCommand;->mSlideDirection:I

    .line 52
    return-void
.end method

.method public setZOrder(I)V
    .locals 0
    .parameter "zOrder"

    .prologue
    .line 47
    iput p1, p0, Lcom/android/camera/command/MenuCommand;->mZOrder:I

    .line 48
    return-void
.end method
