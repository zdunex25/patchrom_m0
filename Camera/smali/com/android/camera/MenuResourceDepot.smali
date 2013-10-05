.class public Lcom/android/camera/MenuResourceDepot;
.super Ljava/lang/Object;
.source "MenuResourceDepot.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MenuResourceDepot"


# instance fields
.field protected mActivityContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/camera/AbstractCameraActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyView:Lcom/android/camera/EmptyView;

.field private mGLCamcorderRecordingMenu:Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;

.field public mMenus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/camera/MenuBase;",
            ">;"
        }
    .end annotation
.end field

.field public mResourceIDMap:Lcom/android/camera/resourcedata/ResourceIDMap;

.field private mResources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/camera/resourcedata/MenuResourceBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/AbstractCameraActivity;)V
    .locals 1
    .parameter "activityContext"

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object v0, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    .line 107
    iput-object v0, p0, Lcom/android/camera/MenuResourceDepot;->mEmptyView:Lcom/android/camera/EmptyView;

    .line 109
    iput-object v0, p0, Lcom/android/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    .line 113
    new-instance v0, Lcom/android/camera/resourcedata/ResourceIDMap;

    invoke-direct {v0}, Lcom/android/camera/resourcedata/ResourceIDMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/MenuResourceDepot;->mResourceIDMap:Lcom/android/camera/resourcedata/ResourceIDMap;

    .line 116
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    .line 117
    return-void
.end method

.method private clearAllMenus()V
    .locals 5

    .prologue
    .line 444
    const-string v3, "MenuResourceDepot"

    const-string v4, "clearAllMenus"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v3, p0, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 447
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 448
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 449
    .local v0, id:I
    iget-object v3, p0, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/MenuBase;

    .line 450
    .local v2, menu:Lcom/android/camera/MenuBase;
    invoke-virtual {v2}, Lcom/android/camera/MenuBase;->clear()V

    .line 451
    const-string v3, "MenuResourceDepot"

    const-string v4, "clearing..."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 453
    .end local v0           #id:I
    .end local v2           #menu:Lcom/android/camera/MenuBase;
    :cond_0
    return-void
.end method


# virtual methods
.method public clearInvisibleViews()V
    .locals 6

    .prologue
    .line 120
    const-string v4, "MenuResourceDepot"

    const-string v5, "clearInvisibleViews"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v4, p0, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 124
    .local v3, menusClone:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/camera/MenuBase;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 126
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 127
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 128
    .local v0, id:I
    iget-object v4, p0, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/MenuBase;

    .line 129
    .local v2, menu:Lcom/android/camera/MenuBase;
    invoke-virtual {v2}, Lcom/android/camera/MenuBase;->isActive()Z

    move-result v4

    if-nez v4, :cond_0

    .line 130
    instance-of v4, v2, Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;

    if-nez v4, :cond_0

    .line 132
    iget-object v4, p0, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v4, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v4, v2}, Lcom/android/camera/AbstractCameraActivity;->removeMenu(Lcom/android/camera/MenuBase;)V

    .line 134
    invoke-virtual {v2}, Lcom/android/camera/MenuBase;->clearGLView()V

    .line 135
    invoke-virtual {v2}, Lcom/android/camera/MenuBase;->clear()V

    goto :goto_0

    .line 138
    .end local v0           #id:I
    .end local v2           #menu:Lcom/android/camera/MenuBase;
    :cond_1
    return-void
.end method

.method public closeVisibleViews()V
    .locals 5

    .prologue
    .line 155
    const-string v3, "MenuResourceDepot"

    const-string v4, "closeVisibleViews"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v3, p0, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 159
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 160
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 161
    .local v0, id:I
    iget-object v3, p0, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/MenuBase;

    .line 162
    .local v2, menu:Lcom/android/camera/MenuBase;
    invoke-virtual {v2}, Lcom/android/camera/MenuBase;->getVisibility()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/camera/MenuBase;->getZorder()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/android/camera/MenuBase;->getZorder()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 163
    iget-object v3, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0

    .line 166
    .end local v0           #id:I
    .end local v2           #menu:Lcom/android/camera/MenuBase;
    :cond_1
    return-void
.end method

.method public getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/android/camera/MenuBase;
    .locals 7
    .parameter "layoutId"
    .parameter "baseLayout"

    .prologue
    const/4 v0, 0x0

    .line 383
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_0

    .line 398
    :goto_0
    return-object v0

    .line 386
    :cond_0
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/AbstractCameraActivity;

    .line 388
    .local v1, context:Lcom/android/camera/AbstractCameraActivity;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 391
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/MenuResourceDepot;->mEmptyView:Lcom/android/camera/EmptyView;

    if-nez v0, :cond_1

    .line 392
    new-instance v0, Lcom/android/camera/EmptyView;

    const v3, 0x7f0b0013

    const/4 v6, 0x5

    move v2, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/EmptyView;-><init>(Lcom/android/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/android/camera/MenuResourceDepot;I)V

    iput-object v0, p0, Lcom/android/camera/MenuResourceDepot;->mEmptyView:Lcom/android/camera/EmptyView;

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/android/camera/MenuResourceDepot;->mEmptyView:Lcom/android/camera/EmptyView;

    goto :goto_0

    .line 388
    nop

    :pswitch_data_0
    .packed-switch 0x7f030006
        :pswitch_0
    .end packed-switch
.end method

.method public getMenuByViewId(ILcom/sec/android/glview/TwGLViewGroup;)Lcom/android/camera/MenuBase;
    .locals 6
    .parameter "viewId"
    .parameter "glParentView"

    .prologue
    const/4 v0, 0x0

    .line 403
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_0

    .line 417
    :goto_0
    return-object v0

    .line 407
    :cond_0
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/AbstractCameraActivity;

    .line 409
    .local v1, context:Lcom/android/camera/AbstractCameraActivity;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 411
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;

    if-nez v0, :cond_1

    .line 412
    new-instance v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;

    const/4 v5, 0x4

    move v2, p1

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;-><init>(Lcom/android/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/android/camera/MenuResourceDepot;I)V

    iput-object v0, p0, Lcom/android/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/android/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;

    goto :goto_0

    .line 409
    :pswitch_data_0
    .packed-switch 0xbd3
        :pswitch_0
    .end packed-switch
.end method

.method public getResource(I)Lcom/android/camera/resourcedata/MenuResourceBase;
    .locals 4
    .parameter "id"

    .prologue
    .line 169
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/resourcedata/MenuResourceBase;

    .line 170
    .local v0, res:Lcom/android/camera/resourcedata/MenuResourceBase;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 378
    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    .local v1, res:Lcom/android/camera/resourcedata/MenuResourceBase;
    :goto_0
    return-object v1

    .line 173
    .end local v1           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 375
    :goto_1
    if-eqz v0, :cond_1

    .line 376
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/android/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v1, v0

    .line 378
    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    .restart local v1       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto :goto_0

    .line 175
    .end local v1           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    :sswitch_0
    new-instance v0, Lcom/android/camera/resourcedata/ContextMenuResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/ContextMenuResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 176
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 178
    :sswitch_1
    new-instance v0, Lcom/android/camera/resourcedata/CameraSideMenuResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/CameraSideMenuResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 179
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 181
    :sswitch_2
    new-instance v0, Lcom/android/camera/resourcedata/BackCameraShootingModeResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/BackCameraShootingModeResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 182
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 184
    :sswitch_3
    new-instance v0, Lcom/android/camera/resourcedata/SceneModeResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/SceneModeResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 185
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 187
    :sswitch_4
    new-instance v0, Lcom/android/camera/resourcedata/FlashModeResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/FlashModeResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 188
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 190
    :sswitch_5
    new-instance v0, Lcom/android/camera/resourcedata/BackCameraResolutionResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/BackCameraResolutionResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 191
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 193
    :sswitch_6
    new-instance v0, Lcom/android/camera/resourcedata/FocusModeResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/FocusModeResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 194
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 196
    :sswitch_7
    new-instance v0, Lcom/android/camera/resourcedata/TimerResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/TimerResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 197
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 199
    :sswitch_8
    new-instance v0, Lcom/android/camera/resourcedata/EffectResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/EffectResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 200
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 202
    :sswitch_9
    new-instance v0, Lcom/android/camera/resourcedata/WhiteBalanceResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/WhiteBalanceResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 203
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 205
    :sswitch_a
    new-instance v0, Lcom/android/camera/resourcedata/ISOResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/ISOResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 206
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 208
    :sswitch_b
    new-instance v0, Lcom/android/camera/resourcedata/ExposuremeterResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/ExposuremeterResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 209
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 211
    :sswitch_c
    new-instance v0, Lcom/android/camera/resourcedata/ExposureValueResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/ExposureValueResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 212
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 214
    :sswitch_d
    new-instance v0, Lcom/android/camera/resourcedata/AntiShakeResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/AntiShakeResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 215
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 217
    :sswitch_e
    new-instance v0, Lcom/android/camera/resourcedata/CameraAutoContrastResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/CameraAutoContrastResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 218
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 220
    :sswitch_f
    new-instance v0, Lcom/android/camera/resourcedata/CameraAdjustContrastResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/CameraAdjustContrastResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 221
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 223
    :sswitch_10
    new-instance v0, Lcom/android/camera/resourcedata/CameraAdjustSaturationResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/CameraAdjustSaturationResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 224
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 226
    :sswitch_11
    new-instance v0, Lcom/android/camera/resourcedata/BlinkDetectionResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/BlinkDetectionResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 227
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 229
    :sswitch_12
    new-instance v0, Lcom/android/camera/resourcedata/CameraQualityResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/CameraQualityResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 230
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 232
    :sswitch_13
    new-instance v0, Lcom/android/camera/resourcedata/ReviewResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/ReviewResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 233
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 235
    :sswitch_14
    new-instance v0, Lcom/android/camera/resourcedata/VolumeKeyResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/VolumeKeyResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 236
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 238
    :sswitch_15
    new-instance v0, Lcom/android/camera/resourcedata/VoiceCommandResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/VoiceCommandResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 239
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 241
    :sswitch_16
    new-instance v0, Lcom/android/camera/resourcedata/SnSMenuResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/SnSMenuResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 242
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 244
    :sswitch_17
    new-instance v0, Lcom/android/camera/resourcedata/GpsResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/GpsResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 245
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 247
    :sswitch_18
    new-instance v0, Lcom/android/camera/resourcedata/FlipMenuResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/FlipMenuResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 248
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 250
    :sswitch_19
    new-instance v0, Lcom/android/camera/resourcedata/GuideLineResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/GuideLineResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 251
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 253
    :sswitch_1a
    new-instance v0, Lcom/android/camera/resourcedata/ShutterSoundResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/ShutterSoundResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 254
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 256
    :sswitch_1b
    new-instance v0, Lcom/android/camera/resourcedata/CameraStorageResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/CameraStorageResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 257
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 259
    :sswitch_1c
    new-instance v0, Lcom/android/camera/resourcedata/CameraSettingsMenuResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/CameraSettingsMenuResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 260
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 262
    :sswitch_1d
    new-instance v0, Lcom/android/camera/resourcedata/CameraEditableShortcutResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/CameraEditableShortcutResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 263
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 265
    :sswitch_1e
    new-instance v0, Lcom/android/camera/resourcedata/OutdoorVisibilityResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/OutdoorVisibilityResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 266
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 268
    :sswitch_1f
    new-instance v0, Lcom/android/camera/resourcedata/RecordingModeResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/RecordingModeResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 269
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 271
    :sswitch_20
    new-instance v0, Lcom/android/camera/resourcedata/BackCamcorderResolutionResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/BackCamcorderResolutionResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 272
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 274
    :sswitch_21
    new-instance v0, Lcom/android/camera/resourcedata/CamcorderFlashModeResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/CamcorderFlashModeResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 275
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 277
    :sswitch_22
    new-instance v0, Lcom/android/camera/resourcedata/CamcorderWhiteBalanceResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/CamcorderWhiteBalanceResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 278
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 280
    :sswitch_23
    new-instance v0, Lcom/android/camera/resourcedata/CamcorderEffectResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/CamcorderEffectResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 281
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 283
    :sswitch_24
    new-instance v0, Lcom/android/camera/resourcedata/CamcorderTimerResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/CamcorderTimerResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 284
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 286
    :sswitch_25
    new-instance v0, Lcom/android/camera/resourcedata/CamcorderQualityResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/CamcorderQualityResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 287
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 289
    :sswitch_26
    new-instance v0, Lcom/android/camera/resourcedata/CamcorderSpeedResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/CamcorderSpeedResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 290
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 292
    :sswitch_27
    new-instance v0, Lcom/android/camera/resourcedata/AudioRecordingResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/AudioRecordingResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 293
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 295
    :sswitch_28
    new-instance v0, Lcom/android/camera/resourcedata/CamcorderAutoContrastResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/CamcorderAutoContrastResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 296
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 298
    :sswitch_29
    new-instance v0, Lcom/android/camera/resourcedata/CamcorderAdjustContrastResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/CamcorderAdjustContrastResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 299
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 301
    :sswitch_2a
    new-instance v0, Lcom/android/camera/resourcedata/CamcorderAdjustSaturationResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/CamcorderAdjustSaturationResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 302
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 304
    :sswitch_2b
    new-instance v0, Lcom/android/camera/resourcedata/CamcorderGuideLineResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/CamcorderGuideLineResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 305
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 307
    :sswitch_2c
    new-instance v0, Lcom/android/camera/resourcedata/CamcorderReviewResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/CamcorderReviewResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 308
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 310
    :sswitch_2d
    new-instance v0, Lcom/android/camera/resourcedata/CamcorderVolumeKeyResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/CamcorderVolumeKeyResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 311
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 313
    :sswitch_2e
    new-instance v0, Lcom/android/camera/resourcedata/CamcorderVoiceCommandResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/CamcorderVoiceCommandResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 314
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 316
    :sswitch_2f
    new-instance v0, Lcom/android/camera/resourcedata/CamcorderOutdoorVisibilityResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/CamcorderOutdoorVisibilityResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 317
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 319
    :sswitch_30
    new-instance v0, Lcom/android/camera/resourcedata/CamcorderSettingsMenuResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/CamcorderSettingsMenuResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 320
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 322
    :sswitch_31
    new-instance v0, Lcom/android/camera/resourcedata/CamcorderEditableShortcutResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/CamcorderEditableShortcutResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 323
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 325
    :sswitch_32
    new-instance v0, Lcom/android/camera/resourcedata/CamcorderSideMenuResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/CamcorderSideMenuResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 326
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 328
    :sswitch_33
    new-instance v0, Lcom/android/camera/resourcedata/CamcorderExposureValueResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/CamcorderExposureValueResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 329
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 331
    :sswitch_34
    new-instance v0, Lcom/android/camera/resourcedata/CamcorderStorageResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/CamcorderStorageResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 332
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 335
    :sswitch_35
    new-instance v0, Lcom/android/camera/resourcedata/ZoomValueResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/ZoomValueResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 336
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 338
    :sswitch_36
    new-instance v0, Lcom/android/camera/resourcedata/CamcorderAntiShakeResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/CamcorderAntiShakeResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 339
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 341
    :sswitch_37
    new-instance v0, Lcom/android/camera/resourcedata/EffectRecorderMenuResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/EffectRecorderMenuResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 342
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 347
    :sswitch_38
    new-instance v0, Lcom/android/camera/resourcedata/BurstModeResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/BurstModeResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 348
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 350
    :sswitch_39
    new-instance v0, Lcom/android/camera/resourcedata/ContextualFilenameResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/ContextualFilenameResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 351
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 353
    :sswitch_3a
    new-instance v0, Lcom/android/camera/resourcedata/CamcorderContextualFilenameResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/CamcorderContextualFilenameResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 354
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 356
    :sswitch_3b
    new-instance v0, Lcom/android/camera/resourcedata/CamcorderGpsResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/CamcorderGpsResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 357
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 359
    :sswitch_3c
    new-instance v0, Lcom/android/camera/resourcedata/AutoShareShotResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/AutoShareShotResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 360
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 362
    :sswitch_3d
    new-instance v0, Lcom/android/camera/resourcedata/CameraHDRSettingsMenuResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/CameraHDRSettingsMenuResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 363
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 365
    :sswitch_3e
    new-instance v0, Lcom/android/camera/resourcedata/HDRIntensityModeResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/HDRIntensityModeResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 366
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 368
    :sswitch_3f
    new-instance v0, Lcom/android/camera/resourcedata/HDRPictureModeResourceData;

    .end local v0           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/android/camera/resourcedata/HDRPictureModeResourceData;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 369
    .restart local v0       #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 173
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_c
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_11
        0x10 -> :sswitch_12
        0x11 -> :sswitch_13
        0x12 -> :sswitch_35
        0x13 -> :sswitch_19
        0x14 -> :sswitch_17
        0x15 -> :sswitch_1a
        0x16 -> :sswitch_1b
        0x1b -> :sswitch_1c
        0x23 -> :sswitch_1e
        0x27 -> :sswitch_0
        0x28 -> :sswitch_1d
        0x29 -> :sswitch_1
        0x33 -> :sswitch_18
        0x35 -> :sswitch_16
        0x3f -> :sswitch_38
        0x40 -> :sswitch_39
        0x42 -> :sswitch_3c
        0x43 -> :sswitch_15
        0x46 -> :sswitch_14
        0x47 -> :sswitch_3d
        0x48 -> :sswitch_3e
        0x49 -> :sswitch_3f
        0x4a -> :sswitch_f
        0x4b -> :sswitch_10
        0xbb9 -> :sswitch_1f
        0xbbb -> :sswitch_21
        0xbbc -> :sswitch_20
        0xbbe -> :sswitch_24
        0xbbf -> :sswitch_22
        0xbc0 -> :sswitch_23
        0xbc1 -> :sswitch_33
        0xbc2 -> :sswitch_28
        0xbc3 -> :sswitch_25
        0xbc4 -> :sswitch_35
        0xbc9 -> :sswitch_34
        0xbcb -> :sswitch_27
        0xbcc -> :sswitch_2b
        0xbcd -> :sswitch_2c
        0xbcf -> :sswitch_2f
        0xbd0 -> :sswitch_30
        0xbd1 -> :sswitch_31
        0xbd2 -> :sswitch_32
        0xbd6 -> :sswitch_36
        0xbd7 -> :sswitch_26
        0xbd8 -> :sswitch_37
        0xbdb -> :sswitch_3a
        0xbdc -> :sswitch_3b
        0xbde -> :sswitch_2e
        0xbdf -> :sswitch_2d
        0xbe0 -> :sswitch_29
        0xbe1 -> :sswitch_2a
    .end sparse-switch
.end method

.method public isGLShootingModeMenu(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 141
    sparse-switch p1, :sswitch_data_0

    .line 150
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 148
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 141
    nop

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x41 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 456
    const-string v2, "MenuResourceDepot"

    const-string v3, "onDestroy"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iput-object v4, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    .line 460
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mEmptyView:Lcom/android/camera/EmptyView;

    if-eqz v2, :cond_0

    .line 461
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mEmptyView:Lcom/android/camera/EmptyView;

    invoke-virtual {v2}, Lcom/android/camera/EmptyView;->clear()V

    .line 462
    iput-object v4, p0, Lcom/android/camera/MenuResourceDepot;->mEmptyView:Lcom/android/camera/EmptyView;

    .line 465
    :cond_0
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;

    if-eqz v2, :cond_1

    .line 466
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;

    invoke-virtual {v2}, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->clear()V

    .line 467
    iput-object v4, p0, Lcom/android/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;

    .line 470
    :cond_1
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    if-eqz v2, :cond_2

    .line 471
    invoke-direct {p0}, Lcom/android/camera/MenuResourceDepot;->clearAllMenus()V

    .line 472
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 473
    iput-object v4, p0, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    .line 475
    :cond_2
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    if-eqz v2, :cond_4

    .line 476
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/resourcedata/MenuResourceBase;

    .line 477
    .local v1, res:Lcom/android/camera/resourcedata/MenuResourceBase;
    invoke-virtual {v1}, Lcom/android/camera/resourcedata/MenuResourceBase;->cleanUpResources()V

    goto :goto_0

    .line 479
    .end local v1           #res:Lcom/android/camera/resourcedata/MenuResourceBase;
    :cond_3
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 480
    iput-object v4, p0, Lcom/android/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    .line 482
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mResourceIDMap:Lcom/android/camera/resourcedata/ResourceIDMap;

    if-eqz v2, :cond_5

    .line 483
    iget-object v2, p0, Lcom/android/camera/MenuResourceDepot;->mResourceIDMap:Lcom/android/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v2}, Lcom/android/camera/resourcedata/ResourceIDMap;->clear()V

    .line 484
    iput-object v4, p0, Lcom/android/camera/MenuResourceDepot;->mResourceIDMap:Lcom/android/camera/resourcedata/ResourceIDMap;

    .line 486
    :cond_5
    return-void
.end method

.method public resetMenuByViewId(ILcom/sec/android/glview/TwGLViewGroup;)V
    .locals 6
    .parameter "viewId"
    .parameter "glParentView"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/android/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/AbstractCameraActivity;

    .line 428
    .local v1, context:Lcom/android/camera/AbstractCameraActivity;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 430
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/android/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;

    invoke-virtual {v0}, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->clear()V

    .line 432
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;

    .line 434
    new-instance v0, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;

    const/4 v5, 0x4

    move v2, p1

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;-><init>(Lcom/android/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/android/camera/MenuResourceDepot;I)V

    iput-object v0, p0, Lcom/android/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;

    .line 436
    iget-object v0, p0, Lcom/android/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;

    invoke-virtual {v0}, Lcom/android/camera/glwidget/TwGLCamcorderRecordingMenu;->onHideMenu()V

    goto :goto_0

    .line 428
    :pswitch_data_0
    .packed-switch 0xbd3
        :pswitch_0
    .end packed-switch
.end method
