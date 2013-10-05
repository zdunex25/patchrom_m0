.class public Lcom/android/camera/resourcedata/ISOResourceData;
.super Lcom/android/camera/resourcedata/MenuResourceBase;
.source "ISOResourceData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ISOResourceData"


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
    .line 49
    const/16 v4, 0xa

    const v5, 0x7f0900b2

    invoke-direct {p0, v4, v5}, Lcom/android/camera/resourcedata/MenuResourceBase;-><init>(II)V

    .line 32
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/camera/resourcedata/ISOResourceData;->mCommandIdList:Ljava/util/ArrayList;

    .line 51
    iput-object p1, p0, Lcom/android/camera/resourcedata/ISOResourceData;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    .line 53
    invoke-direct {p0}, Lcom/android/camera/resourcedata/ISOResourceData;->initCommandIdList()V

    .line 55
    iget-object v4, p0, Lcom/android/camera/resourcedata/ISOResourceData;->mCommandIdList:Ljava/util/ArrayList;

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

    .line 56
    .local v1, commandId:I
    iget-object v4, p0, Lcom/android/camera/resourcedata/ISOResourceData;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/android/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/MenuResourceDepot;->mResourceIDMap:Lcom/android/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v4, v1}, Lcom/android/camera/resourcedata/ResourceIDMap;->get(I)Lcom/android/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v3

    .line 57
    .local v3, resIDs:Lcom/android/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    if-nez v3, :cond_0

    .line 58
    const-string v4, "ISOResourceData"

    const-string v5, "Cannot find resource ID"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
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

    .line 64
    .local v0, bundle:Lcom/android/camera/resourcedata/MenuResourceBundle;
    iget-object v4, p0, Lcom/android/camera/resourcedata/MenuResourceBase;->mMenuResource:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    .end local v0           #bundle:Lcom/android/camera/resourcedata/MenuResourceBundle;
    .end local v1           #commandId:I
    .end local v3           #resIDs:Lcom/android/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_1
    return-void
.end method

.method private initCommandIdList()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/resourcedata/ISOResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x44c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v0, p0, Lcom/android/camera/resourcedata/ISOResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x44e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p0, Lcom/android/camera/resourcedata/ISOResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x44f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lcom/android/camera/resourcedata/ISOResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x450

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    const-string v0, "800"

    const-string v1, "800"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/android/camera/resourcedata/ISOResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x451

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_0
    const-string v0, "800"

    const-string v1, "1600"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/android/camera/resourcedata/ISOResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x453

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_1
    return-void
.end method


# virtual methods
.method public cleanUpResources()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/resourcedata/MenuResourceBase;->mMenuResource:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 71
    iget-object v0, p0, Lcom/android/camera/resourcedata/ISOResourceData;->mCommandIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 72
    return-void
.end method
