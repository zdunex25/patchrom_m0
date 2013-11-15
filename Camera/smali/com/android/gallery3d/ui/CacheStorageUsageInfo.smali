.class public Lcom/android/gallery3d/ui/CacheStorageUsageInfo;
.super Ljava/lang/Object;
.source "CacheStorageUsageInfo.java"


# instance fields
.field private mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field private mContext:Landroid/content/Context;

.field private mTargetCacheBytes:J

.field private mTotalBytes:J

.field private mUsedBytes:J

.field private mUsedCacheBytes:J

.field private mUserChangeDelta:J


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/gallery3d/ui/CacheStorageUsageInfo;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 49
    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/CacheStorageUsageInfo;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method


# virtual methods
.method public getExpectedUsedBytes()J
    .locals 4

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/android/gallery3d/ui/CacheStorageUsageInfo;->mUsedBytes:J

    iget-wide v2, p0, Lcom/android/gallery3d/ui/CacheStorageUsageInfo;->mUsedCacheBytes:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/gallery3d/ui/CacheStorageUsageInfo;->mTargetCacheBytes:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/gallery3d/ui/CacheStorageUsageInfo;->mUserChangeDelta:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getFreeBytes()J
    .locals 4

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/android/gallery3d/ui/CacheStorageUsageInfo;->mTotalBytes:J

    iget-wide v2, p0, Lcom/android/gallery3d/ui/CacheStorageUsageInfo;->mUsedBytes:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalBytes()J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/android/gallery3d/ui/CacheStorageUsageInfo;->mTotalBytes:J

    return-wide v0
.end method

.method public getUsedBytes()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/android/gallery3d/ui/CacheStorageUsageInfo;->mUsedBytes:J

    return-wide v0
.end method

.method public increaseTargetCacheSize(J)V
    .locals 2
    .parameter "delta"

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/android/gallery3d/ui/CacheStorageUsageInfo;->mUserChangeDelta:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/gallery3d/ui/CacheStorageUsageInfo;->mUserChangeDelta:J

    .line 54
    return-void
.end method

.method public loadStorageInfo(Lcom/android/gallery3d/util/ThreadPool$JobContext;)V
    .locals 11
    .parameter "jc"

    .prologue
    .line 57
    iget-object v9, p0, Lcom/android/gallery3d/ui/CacheStorageUsageInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    .line 58
    .local v4, cacheDir:Ljava/io/File;
    if-nez v4, :cond_0

    .line 59
    iget-object v9, p0, Lcom/android/gallery3d/ui/CacheStorageUsageInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    .line 62
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 63
    .local v5, path:Ljava/lang/String;
    new-instance v6, Landroid/os/StatFs;

    invoke-direct {v6, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 64
    .local v6, stat:Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v2, v9

    .line 65
    .local v2, blockSize:J
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    int-to-long v0, v9

    .line 66
    .local v0, availableBlocks:J
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I

    move-result v9

    int-to-long v7, v9

    .line 68
    .local v7, totalBlocks:J
    mul-long v9, v2, v7

    iput-wide v9, p0, Lcom/android/gallery3d/ui/CacheStorageUsageInfo;->mTotalBytes:J

    .line 69
    sub-long v9, v7, v0

    mul-long/2addr v9, v2

    iput-wide v9, p0, Lcom/android/gallery3d/ui/CacheStorageUsageInfo;->mUsedBytes:J

    .line 70
    iget-object v9, p0, Lcom/android/gallery3d/ui/CacheStorageUsageInfo;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/gallery3d/data/DataManager;->getTotalUsedCacheSize()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/gallery3d/ui/CacheStorageUsageInfo;->mUsedCacheBytes:J

    .line 71
    iget-object v9, p0, Lcom/android/gallery3d/ui/CacheStorageUsageInfo;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/gallery3d/data/DataManager;->getTotalTargetCacheSize()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/gallery3d/ui/CacheStorageUsageInfo;->mTargetCacheBytes:J

    .line 72
    return-void
.end method
