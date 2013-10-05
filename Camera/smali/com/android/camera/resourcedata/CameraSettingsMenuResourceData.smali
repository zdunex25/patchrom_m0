.class public Lcom/android/camera/resourcedata/CameraSettingsMenuResourceData;
.super Lcom/android/camera/resourcedata/MenuResourceBase;
.source "CameraSettingsMenuResourceData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraSettingsMenuResourceData"


# instance fields
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
    .line 129
    const/16 v4, 0x1b

    const v5, 0x7f090018

    invoke-direct {p0, v4, v5}, Lcom/android/camera/resourcedata/MenuResourceBase;-><init>(II)V

    .line 37
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/camera/resourcedata/CameraSettingsMenuResourceData;->mCommandIdList:Ljava/util/ArrayList;

    .line 38
    const/4 v4, 0x0

    .line 131
    invoke-direct {p0, p1}, Lcom/android/camera/resourcedata/CameraSettingsMenuResourceData;->initCommandIdList(Lcom/android/camera/AbstractCameraActivity;)V

    .line 133
    iget-object v4, p0, Lcom/android/camera/resourcedata/CameraSettingsMenuResourceData;->mCommandIdList:Ljava/util/ArrayList;

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

    .line 134
    .local v1, commandId:I
    invoke-virtual {p1}, Lcom/android/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/android/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/MenuResourceDepot;->mResourceIDMap:Lcom/android/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v4, v1}, Lcom/android/camera/resourcedata/ResourceIDMap;->get(I)Lcom/android/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v3

    .line 135
    .local v3, resIDs:Lcom/android/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    if-nez v3, :cond_0

    .line 136
    const-string v4, "CameraSettingsMenuResourceData"

    const-string v5, "Cannot find resource ID"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
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

    .line 142
    .local v0, bundle:Lcom/android/camera/resourcedata/MenuResourceBundle;
    iget-object v4, p0, Lcom/android/camera/resourcedata/MenuResourceBase;->mMenuResource:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    .end local v0           #bundle:Lcom/android/camera/resourcedata/MenuResourceBundle;
    .end local v1           #commandId:I
    .end local v3           #resIDs:Lcom/android/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_1
    return-void
.end method

.method private initCommandIdList(Lcom/android/camera/AbstractCameraActivity;)V
    .locals 5
    .parameter "activityContext"

    .prologue
    .line 41
    iget-object v2, p0, Lcom/android/camera/resourcedata/CameraSettingsMenuResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v3, 0x32

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v2, p0, Lcom/android/camera/resourcedata/CameraSettingsMenuResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v3, 0x3f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Camera_DisableGPSMenu"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    iget-object v2, p0, Lcom/android/camera/resourcedata/CameraSettingsMenuResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_0
    iget-object v2, p0, Lcom/android/camera/resourcedata/CameraSettingsMenuResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v3, 0x24

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v2, p0, Lcom/android/camera/resourcedata/CameraSettingsMenuResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v2, p0, Lcom/android/camera/resourcedata/CameraSettingsMenuResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v2, p0, Lcom/android/camera/resourcedata/CameraSettingsMenuResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v2, p0, Lcom/android/camera/resourcedata/CameraSettingsMenuResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v2, p0, Lcom/android/camera/resourcedata/CameraSettingsMenuResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v2, p0, Lcom/android/camera/resourcedata/CameraSettingsMenuResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v2, p0, Lcom/android/camera/resourcedata/CameraSettingsMenuResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v2, p0, Lcom/android/camera/resourcedata/CameraSettingsMenuResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v2, p0, Lcom/android/camera/resourcedata/CameraSettingsMenuResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v2, p0, Lcom/android/camera/resourcedata/CameraSettingsMenuResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v2, p0, Lcom/android/camera/resourcedata/CameraSettingsMenuResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v2, p0, Lcom/android/camera/resourcedata/CameraSettingsMenuResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v3, 0x23

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v2, p0, Lcom/android/camera/resourcedata/CameraSettingsMenuResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v2, p0, Lcom/android/camera/resourcedata/CameraSettingsMenuResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v3, 0x13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v2, p0, Lcom/android/camera/resourcedata/CameraSettingsMenuResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v3, 0x42

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v2, p0, Lcom/android/camera/resourcedata/CameraSettingsMenuResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v3, 0xd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Camera_ShutterSoundMenu"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    iget-object v2, p0, Lcom/android/camera/resourcedata/CameraSettingsMenuResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v3, 0x15

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_1
    iget-object v2, p0, Lcom/android/camera/resourcedata/CameraSettingsMenuResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v3, 0x40

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    goto :goto_1

    .line 104
    const/4 v1, 0x1

    .line 106
    .local v1, isVoiceTalkAvailable:Z
    :try_start_0
    invoke-virtual {p1}, Lcom/android/camera/AbstractCameraActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.vlingo.midas"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    if-eqz v1, :cond_2

    .line 113
    iget-object v2, p0, Lcom/android/camera/resourcedata/CameraSettingsMenuResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v3, 0x43

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .end local v1           #isVoiceTalkAvailable:Z
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/camera/resourcedata/CameraSettingsMenuResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v3, 0x33

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v2, p0, Lcom/android/camera/resourcedata/CameraSettingsMenuResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v2, p0, Lcom/android/camera/resourcedata/CameraSettingsMenuResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v3, 0x16

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v2, p0, Lcom/android/camera/resourcedata/CameraSettingsMenuResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    return-void

    .line 107
    .restart local v1       #isVoiceTalkAvailable:Z
    :catch_0
    move-exception v0

    .line 108
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "CameraSettingsMenuResourceData"

    const-string v3, "vlingo package is not installed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cleanUpResources()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/camera/resourcedata/MenuResourceBase;->mMenuResource:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 149
    iget-object v0, p0, Lcom/android/camera/resourcedata/CameraSettingsMenuResourceData;->mCommandIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 150
    return-void
.end method
