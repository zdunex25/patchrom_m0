.class public Lcom/android/camera/resourcedata/BackCameraShootingModeResourceData;
.super Lcom/android/camera/resourcedata/MenuResourceBase;
.source "BackCameraShootingModeResourceData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShootingModeResourceData"


# instance fields
.field private mActivityContext:Lcom/android/camera/AbstractCameraActivity;

.field private mCommandIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/AbstractCameraActivity;)V
    .locals 8
    .parameter "activityContext"

    .prologue
    const/4 v7, 0x1

    .line 245
    const v4, 0x7f0900b6

    invoke-direct {p0, v7, v4}, Lcom/android/camera/resourcedata/MenuResourceBase;-><init>(II)V

    .line 65
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/camera/resourcedata/BackCameraShootingModeResourceData;->mCommandIdList:Ljava/util/ArrayList;

    .line 249
    iput-object p1, p0, Lcom/android/camera/resourcedata/BackCameraShootingModeResourceData;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    .line 253
    invoke-direct {p0}, Lcom/android/camera/resourcedata/BackCameraShootingModeResourceData;->initCommandIdList()V

    .line 257
    iget-object v4, p0, Lcom/android/camera/resourcedata/BackCameraShootingModeResourceData;->mCommandIdList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 259
    .local v1, commandId:I
    invoke-virtual {p1}, Lcom/android/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/android/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/MenuResourceDepot;->mResourceIDMap:Lcom/android/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v4, v1}, Lcom/android/camera/resourcedata/ResourceIDMap;->get(I)Lcom/android/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v3

    .line 261
    .local v3, resIDs:Lcom/android/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    if-nez v3, :cond_0

    .line 263
    const-string v4, "ShootingModeResourceData"

    const-string v5, "Cannot find resource ID"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 271
    :cond_0
    new-instance v0, Lcom/android/camera/resourcedata/MenuResourceBundle;

    const/4 v4, 0x5

    new-array v4, v4, [I

    const/4 v5, 0x0

    iget v6, v3, Lcom/android/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v6, v4, v5

    iget v5, v3, Lcom/android/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v5, v4, v7

    const/4 v5, 0x2

    iget v6, v3, Lcom/android/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v6, v4, v5

    const/4 v5, 0x3

    iget v6, v3, Lcom/android/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v6, v4, v5

    const/4 v5, 0x4

    aput v1, v4, v5

    invoke-direct {v0, v4}, Lcom/android/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 275
    .local v0, bundle:Lcom/android/camera/resourcedata/MenuResourceBundle;
    iget-object v4, p0, Lcom/android/camera/resourcedata/MenuResourceBase;->mMenuResource:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 279
    .end local v0           #bundle:Lcom/android/camera/resourcedata/MenuResourceBundle;
    .end local v1           #commandId:I
    .end local v3           #resIDs:Lcom/android/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_1
    return-void
.end method

.method private initCommandIdList()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/camera/resourcedata/BackCameraShootingModeResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x12c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcom/android/camera/resourcedata/BackCameraShootingModeResourceData;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/camera/resourcedata/BackCameraShootingModeResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x140

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/camera/resourcedata/BackCameraShootingModeResourceData;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/android/camera/resourcedata/BackCameraShootingModeResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x141

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/android/camera/resourcedata/BackCameraShootingModeResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x13e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Lcom/android/camera/resourcedata/BackCameraShootingModeResourceData;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/android/camera/resourcedata/BackCameraShootingModeResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x12e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 148
    :cond_2
    iget-object v0, p0, Lcom/android/camera/resourcedata/BackCameraShootingModeResourceData;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 150
    iget-object v0, p0, Lcom/android/camera/resourcedata/BackCameraShootingModeResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x13a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_3
    iget-object v0, p0, Lcom/android/camera/resourcedata/BackCameraShootingModeResourceData;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 161
    iget-object v0, p0, Lcom/android/camera/resourcedata/BackCameraShootingModeResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x13d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_4
    iget-object v0, p0, Lcom/android/camera/resourcedata/BackCameraShootingModeResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x133

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v0, p0, Lcom/android/camera/resourcedata/BackCameraShootingModeResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x12f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v0, p0, Lcom/android/camera/resourcedata/BackCameraShootingModeResourceData;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 189
    iget-object v0, p0, Lcom/android/camera/resourcedata/BackCameraShootingModeResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x13f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_5
    return-void
.end method


# virtual methods
.method public cleanUpResources()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/camera/resourcedata/MenuResourceBase;->mMenuResource:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 289
    iget-object v0, p0, Lcom/android/camera/resourcedata/BackCameraShootingModeResourceData;->mCommandIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 291
    return-void
.end method
