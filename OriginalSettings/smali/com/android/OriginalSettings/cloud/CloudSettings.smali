.class public Lcom/android/OriginalSettings/cloud/CloudSettings;
.super Ljava/lang/Object;
.source "CloudSettings.java"


# static fields
.field private static mInstance:Lcom/android/OriginalSettings/cloud/CloudSettings;


# instance fields
.field private accountName:Ljava/lang/String;

.field private isWifiOnly:Z

.field private numberOfDisplayingPhotos:I

.field private photoSync:Z

.field private storageUsage:Ljava/lang/String;

.field private venderId:I

.field private videoSync:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 228
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 230
    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 236
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 237
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/cloud/CloudSettings;->parceCloudSettings(Landroid/os/Bundle;)V

    .line 238
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/OriginalSettings/cloud/CloudSettings;
    .locals 3

    .prologue
    .line 204
    const-class v1, Lcom/android/OriginalSettings/cloud/CloudSettings;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/OriginalSettings/cloud/CloudSettings;->mInstance:Lcom/android/OriginalSettings/cloud/CloudSettings;

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Lcom/android/OriginalSettings/cloud/CloudSettings;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/OriginalSettings/cloud/CloudSettings;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/OriginalSettings/cloud/CloudSettings;->mInstance:Lcom/android/OriginalSettings/cloud/CloudSettings;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/os/Bundle;)Lcom/android/OriginalSettings/cloud/CloudSettings;
    .locals 2
    .parameter "bundle"

    .prologue
    .line 217
    const-class v1, Lcom/android/OriginalSettings/cloud/CloudSettings;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/OriginalSettings/cloud/CloudSettings;->mInstance:Lcom/android/OriginalSettings/cloud/CloudSettings;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Lcom/android/OriginalSettings/cloud/CloudSettings;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/cloud/CloudSettings;-><init>(Landroid/os/Bundle;)V

    sput-object v0, Lcom/android/OriginalSettings/cloud/CloudSettings;->mInstance:Lcom/android/OriginalSettings/cloud/CloudSettings;

    .line 222
    :goto_0
    sget-object v0, Lcom/android/OriginalSettings/cloud/CloudSettings;->mInstance:Lcom/android/OriginalSettings/cloud/CloudSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 220
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/OriginalSettings/cloud/CloudSettings;->mInstance:Lcom/android/OriginalSettings/cloud/CloudSettings;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/cloud/CloudSettings;->parceCloudSettings(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private parceCloudSettings(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 167
    if-eqz p1, :cond_0

    .line 168
    const-string v0, "storageVender"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/cloud/CloudSettings;->venderId:I

    .line 169
    const-string v0, "accountName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/cloud/CloudSettings;->accountName:Ljava/lang/String;

    .line 170
    const-string v0, "photoSync"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/cloud/CloudSettings;->photoSync:Z

    .line 171
    const-string v0, "videoSync"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/cloud/CloudSettings;->videoSync:Z

    .line 172
    const-string v0, "numberOfDisplayingPhotos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/cloud/CloudSettings;->numberOfDisplayingPhotos:I

    .line 174
    const-string v0, "wifiOnly"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/cloud/CloudSettings;->isWifiOnly:Z

    .line 189
    :cond_0
    return-void
.end method


# virtual methods
.method public getStorageUsage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/OriginalSettings/cloud/CloudSettings;->storageUsage:Ljava/lang/String;

    return-object v0
.end method

.method public isAccountSet()Z
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/OriginalSettings/cloud/CloudSettings;->accountName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhotoSync()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/OriginalSettings/cloud/CloudSettings;->photoSync:Z

    return v0
.end method

.method public isVideoSync()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/OriginalSettings/cloud/CloudSettings;->videoSync:Z

    return v0
.end method

.method public setStorageUsage(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 192
    if-eqz p1, :cond_0

    .line 193
    const-string v0, "storageVender"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/cloud/CloudSettings;->venderId:I

    .line 194
    const-string v0, "storageUsage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/cloud/CloudSettings;->storageUsage:Ljava/lang/String;

    .line 196
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .local v0, stringBuilder:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storageVender--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/cloud/CloudSettings;->venderId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accountName--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/cloud/CloudSettings;->accountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "photoSync--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/OriginalSettings/cloud/CloudSettings;->photoSync:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoSync--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/OriginalSettings/cloud/CloudSettings;->videoSync:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numberOfDisplayingPhotos--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/cloud/CloudSettings;->numberOfDisplayingPhotos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storageUsage--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/cloud/CloudSettings;->storageUsage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wifiOnly  --"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/OriginalSettings/cloud/CloudSettings;->isWifiOnly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
