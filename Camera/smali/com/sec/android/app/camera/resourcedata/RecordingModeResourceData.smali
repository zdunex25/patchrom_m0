.class public Lcom/android/camera/resourcedata/RecordingModeResourceData;
.super Lcom/android/camera/resourcedata/MenuResourceBase;
.source "RecordingModeResourceData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RecordingModeResourceData"


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
    .locals 7
    .parameter "activityContext"

    .prologue
    .line 50
    const/16 v4, 0xbb9

    const v5, 0x7f0900ba

    invoke-direct {p0, v4, v5}, Lcom/android/camera/resourcedata/MenuResourceBase;-><init>(II)V

    .line 34
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/camera/resourcedata/RecordingModeResourceData;->mCommandIdList:Ljava/util/ArrayList;

    .line 52
    iput-object p1, p0, Lcom/android/camera/resourcedata/RecordingModeResourceData;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    .line 54
    invoke-direct {p0}, Lcom/android/camera/resourcedata/RecordingModeResourceData;->initCommandIdList()V

    .line 56
    iget-object v4, p0, Lcom/android/camera/resourcedata/RecordingModeResourceData;->mCommandIdList:Ljava/util/ArrayList;

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

    .line 57
    .local v1, commandId:I
    iget-object v4, p0, Lcom/android/camera/resourcedata/RecordingModeResourceData;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/android/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/MenuResourceDepot;->mResourceIDMap:Lcom/android/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v4, v1}, Lcom/android/camera/resourcedata/ResourceIDMap;->get(I)Lcom/android/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v3

    .line 58
    .local v3, resIDs:Lcom/android/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    if-nez v3, :cond_0

    .line 59
    const-string v4, "RecordingModeResourceData"

    const-string v5, "Cannot find resource ID"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 63
    :cond_0
    new-instance v0, Lcom/android/camera/resourcedata/MenuResourceBundle;

    const/4 v4, 0x5

    new-array v4, v4, [I

    const/4 v5, 0x0

    iget v6, v3, Lcom/android/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v6, v4, v5

    const/4 v5, 0x1

    iget v6, v3, Lcom/android/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v6, v4, v5

    const/4 v5, 0x2

    iget v6, v3, Lcom/android/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v6, v4, v5

    const/4 v5, 0x3

    iget v6, v3, Lcom/android/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v6, v4, v5

    const/4 v5, 0x4

    aput v1, v4, v5

    invoke-direct {v0, v4}, Lcom/android/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 65
    .local v0, bundle:Lcom/android/camera/resourcedata/MenuResourceBundle;
    iget-object v4, p0, Lcom/android/camera/resourcedata/MenuResourceBase;->mMenuResource:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    .end local v0           #bundle:Lcom/android/camera/resourcedata/MenuResourceBundle;
    .end local v1           #commandId:I
    .end local v3           #resIDs:Lcom/android/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_1
    return-void
.end method

.method private initCommandIdList()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/resourcedata/RecordingModeResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0xc1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lcom/android/camera/resourcedata/RecordingModeResourceData;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/android/camera/resourcedata/RecordingModeResourceData;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->isMmsCapable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_DisableMMS"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/android/camera/resourcedata/RecordingModeResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0xc1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUpResources()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/resourcedata/MenuResourceBase;->mMenuResource:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 72
    iget-object v0, p0, Lcom/android/camera/resourcedata/RecordingModeResourceData;->mCommandIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/resourcedata/RecordingModeResourceData;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    .line 74
    return-void
.end method
