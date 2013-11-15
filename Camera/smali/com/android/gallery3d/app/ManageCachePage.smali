.class public Lcom/android/gallery3d/app/ManageCachePage;
.super Lcom/android/gallery3d/app/ActivityState;
.source "ManageCachePage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/gallery3d/app/EyePosition$EyePositionListener;
.implements Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
.implements Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;


# instance fields
.field private mAlbumCountToMakeAvailableOffline:I

.field private mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

.field private mCacheStorageInfo:Lcom/android/gallery3d/ui/CacheStorageUsageInfo;

.field private mEyePosition:Lcom/android/gallery3d/app/EyePosition;

.field private mFooterContent:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mLayoutReady:Z

.field private mMediaSet:Lcom/android/gallery3d/data/MediaSet;

.field private mRootPane:Lcom/android/gallery3d/ui/GLView;

.field protected mSelectionDrawer:Lcom/android/gallery3d/ui/ManageCacheDrawer;

.field protected mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mSlotView:Lcom/android/gallery3d/ui/SlotView;

.field private mUpdateStorageInfo:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateStorageInfoJob:Lcom/android/gallery3d/util/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mX:F

.field private mY:F

.field private mZ:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/gallery3d/app/ActivityState;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mLayoutReady:Z

    .line 94
    new-instance v0, Lcom/android/gallery3d/app/ManageCachePage$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/ManageCachePage$1;-><init>(Lcom/android/gallery3d/app/ManageCachePage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    .line 247
    new-instance v0, Lcom/android/gallery3d/app/ManageCachePage$3;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/ManageCachePage$3;-><init>(Lcom/android/gallery3d/app/ManageCachePage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mUpdateStorageInfoJob:Lcom/android/gallery3d/util/ThreadPool$Job;

    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/ManageCachePage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mLayoutReady:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/gallery3d/app/ManageCachePage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mLayoutReady:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/ManageCachePage;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/ManageCachePage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/ManageCachePage;->onDown(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/ManageCachePage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/gallery3d/app/ManageCachePage;->onUp()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/ManageCachePage;)Lcom/android/gallery3d/app/EyePosition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mEyePosition:Lcom/android/gallery3d/app/EyePosition;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/ManageCachePage;)Lcom/android/gallery3d/ui/SlotView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/ManageCachePage;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mX:F

    return v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/ManageCachePage;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mY:F

    return v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/ManageCachePage;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mZ:F

    return v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/ManageCachePage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/gallery3d/app/ManageCachePage;->refreshCacheStorageInfo()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/ManageCachePage;)Lcom/android/gallery3d/ui/GLView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/ManageCachePage;)Lcom/android/gallery3d/ui/CacheStorageUsageInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mCacheStorageInfo:Lcom/android/gallery3d/ui/CacheStorageUsageInfo;

    return-object v0
.end method

.method private initializeData(Landroid/os/Bundle;)V
    .locals 5
    .parameter "data"

    .prologue
    .line 272
    const-string v1, "media-path"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, mediaPath:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    .line 274
    iget-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v2, p0, Lcom/android/gallery3d/app/ManageCachePage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->setSourceMediaSet(Lcom/android/gallery3d/data/MediaSet;)V

    .line 277
    iget-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 278
    iget-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    .line 280
    new-instance v1, Lcom/android/gallery3d/app/AlbumSetDataLoader;

    iget-object v2, p0, Lcom/android/gallery3d/app/ManageCachePage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/android/gallery3d/app/ManageCachePage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    const/16 v4, 0x100

    invoke-direct {v1, v2, v3, v4}, Lcom/android/gallery3d/app/AlbumSetDataLoader;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/data/MediaSet;I)V

    iput-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    .line 282
    iget-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mSelectionDrawer:Lcom/android/gallery3d/ui/ManageCacheDrawer;

    iget-object v2, p0, Lcom/android/gallery3d/app/ManageCachePage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/ManageCacheDrawer;->setModel(Lcom/android/gallery3d/app/AlbumSetDataLoader;)V

    .line 283
    return-void
.end method

.method private initializeFooterViews()V
    .locals 4

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 319
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 320
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f04001b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/ManageCachePage;->mFooterContent:Landroid/view/View;

    .line 322
    iget-object v2, p0, Lcom/android/gallery3d/app/ManageCachePage;->mFooterContent:Landroid/view/View;

    const v3, 0x7f100066

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    invoke-direct {p0}, Lcom/android/gallery3d/app/ManageCachePage;->refreshCacheStorageInfo()V

    .line 324
    return-void
.end method

.method private initializeViews()V
    .locals 9

    .prologue
    .line 286
    iget-object v7, p0, Lcom/android/gallery3d/app/ManageCachePage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 288
    .local v7, activity:Landroid/app/Activity;
    new-instance v0, Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Z)V

    iput-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 289
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/ui/SelectionManager;->setSelectionListener(Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;)V

    .line 291
    invoke-static {v7}, Lcom/android/gallery3d/app/Config$ManageCachePage;->get(Landroid/content/Context;)Lcom/android/gallery3d/app/Config$ManageCachePage;

    move-result-object v8

    .line 292
    .local v8, config:Lcom/android/gallery3d/app/Config$ManageCachePage;
    new-instance v0, Lcom/android/gallery3d/ui/SlotView;

    iget-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, v8, Lcom/android/gallery3d/app/Config$ManageCachePage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/SlotView;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SlotView$Spec;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    .line 293
    new-instance v0, Lcom/android/gallery3d/ui/ManageCacheDrawer;

    iget-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/ManageCachePage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v3, p0, Lcom/android/gallery3d/app/ManageCachePage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget-object v4, v8, Lcom/android/gallery3d/app/Config$ManageCachePage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    iget v5, v8, Lcom/android/gallery3d/app/Config$ManageCachePage;->cachePinSize:I

    iget v6, v8, Lcom/android/gallery3d/app/Config$ManageCachePage;->cachePinMargin:I

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/ui/ManageCacheDrawer;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;Lcom/android/gallery3d/ui/SlotView;Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;II)V

    iput-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mSelectionDrawer:Lcom/android/gallery3d/ui/ManageCacheDrawer;

    .line 295
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mSelectionDrawer:Lcom/android/gallery3d/ui/ManageCacheDrawer;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->setSlotRenderer(Lcom/android/gallery3d/ui/SlotView$SlotRenderer;)V

    .line 296
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    new-instance v1, Lcom/android/gallery3d/app/ManageCachePage$4;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/ManageCachePage$4;-><init>(Lcom/android/gallery3d/app/ManageCachePage;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->setListener(Lcom/android/gallery3d/ui/SlotView$Listener;)V

    .line 312
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 313
    invoke-direct {p0}, Lcom/android/gallery3d/app/ManageCachePage;->initializeFooterViews()V

    .line 314
    return-void
.end method

.method private onDown(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mSelectionDrawer:Lcom/android/gallery3d/ui/ManageCacheDrawer;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/ManageCacheDrawer;->setPressedIndex(I)V

    .line 151
    return-void
.end method

.method private onUp()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mSelectionDrawer:Lcom/android/gallery3d/ui/ManageCacheDrawer;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ManageCacheDrawer;->setPressedIndex(I)V

    .line 155
    return-void
.end method

.method private refreshCacheStorageInfo()V
    .locals 17

    .prologue
    .line 365
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/ManageCachePage;->mFooterContent:Landroid/view/View;

    const v14, 0x7f100065

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    .line 366
    .local v7, progressBar:Landroid/widget/ProgressBar;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/ManageCachePage;->mFooterContent:Landroid/view/View;

    const v14, 0x7f100064

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 367
    .local v8, status:Landroid/widget/TextView;
    const/16 v13, 0x2710

    invoke-virtual {v7, v13}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 368
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/ManageCachePage;->mCacheStorageInfo:Lcom/android/gallery3d/ui/CacheStorageUsageInfo;

    invoke-virtual {v13}, Lcom/android/gallery3d/ui/CacheStorageUsageInfo;->getTotalBytes()J

    move-result-wide v9

    .line 369
    .local v9, totalBytes:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/ManageCachePage;->mCacheStorageInfo:Lcom/android/gallery3d/ui/CacheStorageUsageInfo;

    invoke-virtual {v13}, Lcom/android/gallery3d/ui/CacheStorageUsageInfo;->getUsedBytes()J

    move-result-wide v11

    .line 370
    .local v11, usedBytes:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/ManageCachePage;->mCacheStorageInfo:Lcom/android/gallery3d/ui/CacheStorageUsageInfo;

    invoke-virtual {v13}, Lcom/android/gallery3d/ui/CacheStorageUsageInfo;->getExpectedUsedBytes()J

    move-result-wide v2

    .line 371
    .local v2, expectedBytes:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/ManageCachePage;->mCacheStorageInfo:Lcom/android/gallery3d/ui/CacheStorageUsageInfo;

    invoke-virtual {v13}, Lcom/android/gallery3d/ui/CacheStorageUsageInfo;->getFreeBytes()J

    move-result-wide v4

    .line 373
    .local v4, freeBytes:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/app/ManageCachePage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 374
    .local v1, activity:Landroid/app/Activity;
    const-wide/16 v13, 0x0

    cmp-long v13, v9, v13

    if-nez v13, :cond_0

    .line 375
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 376
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 379
    const v13, 0x7f0a021a

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "-"

    aput-object v16, v14, v15

    invoke-virtual {v1, v13, v14}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 380
    .local v6, label:Ljava/lang/String;
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    :goto_0
    return-void

    .line 382
    .end local v6           #label:Ljava/lang/String;
    :cond_0
    const-wide/16 v13, 0x2710

    mul-long/2addr v13, v11

    div-long/2addr v13, v9

    long-to-int v13, v13

    invoke-virtual {v7, v13}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 383
    const-wide/16 v13, 0x2710

    mul-long/2addr v13, v2

    div-long/2addr v13, v9

    long-to-int v13, v13

    invoke-virtual {v7, v13}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 385
    const v13, 0x7f0a021a

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v1, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v1, v13, v14}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 387
    .restart local v6       #label:Ljava/lang/String;
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showToast()V
    .locals 4

    .prologue
    .line 348
    iget v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mAlbumCountToMakeAvailableOffline:I

    if-lez v1, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 350
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110004

    iget v3, p0, Lcom/android/gallery3d/app/ManageCachePage;->mAlbumCountToMakeAvailableOffline:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 355
    .end local v0           #activity:Landroid/app/Activity;
    :cond_0
    return-void
.end method

.method private showToastForLocalAlbum()V
    .locals 3

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 359
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0215

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 362
    return-void
.end method


# virtual methods
.method protected getBackgroundColorId()I
    .locals 1

    .prologue
    .line 91
    const v0, 0x7f0b001f

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 328
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f100066

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 329
    iget-object v3, p0, Lcom/android/gallery3d/app/ManageCachePage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v2

    .line 330
    .local v2, root:Lcom/android/gallery3d/ui/GLRoot;
    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 332
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/app/ManageCachePage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 333
    .local v0, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 334
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ManageCachePage;->onBackPressed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 345
    :goto_0
    return-void

    .line 337
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/ManageCachePage;->showToast()V

    .line 339
    new-instance v1, Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v3, p0, Lcom/android/gallery3d/app/ManageCachePage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v4, p0, Lcom/android/gallery3d/app/ManageCachePage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-direct {v1, v3, v4}, Lcom/android/gallery3d/ui/MenuExecutor;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V

    .line 340
    .local v1, menuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;
    const/high16 v3, 0x7f10

    const v4, 0x7f0a01d7

    invoke-virtual {v1, v3, v4, p0}, Lcom/android/gallery3d/ui/MenuExecutor;->startAction(IILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    goto :goto_0

    .end local v0           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .end local v1           #menuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;
    :catchall_0
    move-exception v3

    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v3
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "config"

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/android/gallery3d/app/ManageCachePage;->initializeFooterViews()V

    .line 222
    iget-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f100063

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 223
    .local v0, layout:Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 224
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 225
    iget-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mFooterContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 227
    :cond_0
    return-void
.end method

.method public onConfirmDialogDismissed(Z)V
    .locals 0
    .parameter "confirmed"

    .prologue
    .line 410
    return-void
.end method

.method public onConfirmDialogShown()V
    .locals 0

    .prologue
    .line 414
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2
    .parameter "data"
    .parameter "restoreState"

    .prologue
    .line 195
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 196
    new-instance v0, Lcom/android/gallery3d/ui/CacheStorageUsageInfo;

    iget-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/CacheStorageUsageInfo;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mCacheStorageInfo:Lcom/android/gallery3d/ui/CacheStorageUsageInfo;

    .line 197
    invoke-direct {p0}, Lcom/android/gallery3d/app/ManageCachePage;->initializeViews()V

    .line 198
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/ManageCachePage;->initializeData(Landroid/os/Bundle;)V

    .line 199
    new-instance v0, Lcom/android/gallery3d/app/EyePosition;

    iget-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/gallery3d/app/EyePosition;-><init>(Landroid/content/Context;Lcom/android/gallery3d/app/EyePosition$EyePositionListener;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mEyePosition:Lcom/android/gallery3d/app/EyePosition;

    .line 200
    new-instance v0, Lcom/android/gallery3d/app/ManageCachePage$2;

    iget-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/ManageCachePage$2;-><init>(Lcom/android/gallery3d/app/ManageCachePage;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mHandler:Landroid/os/Handler;

    .line 216
    return-void
.end method

.method public onEyePositionChanged(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->lockRendering()V

    .line 142
    iput p1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mX:F

    .line 143
    iput p2, p0, Lcom/android/gallery3d/app/ManageCachePage;->mY:F

    .line 144
    iput p3, p0, Lcom/android/gallery3d/app/ManageCachePage;->mZ:F

    .line 145
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->unlockRendering()V

    .line 146
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 147
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 231
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onPause()V

    .line 232
    iget-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->pause()V

    .line 233
    iget-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mSelectionDrawer:Lcom/android/gallery3d/ui/ManageCacheDrawer;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/ManageCacheDrawer;->pause()V

    .line 234
    iget-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mEyePosition:Lcom/android/gallery3d/app/EyePosition;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/EyePosition;->pause()V

    .line 236
    iget-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mUpdateStorageInfo:Lcom/android/gallery3d/util/Future;

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mUpdateStorageInfo:Lcom/android/gallery3d/util/Future;

    invoke-interface {v1}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 238
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mUpdateStorageInfo:Lcom/android/gallery3d/util/Future;

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 242
    iget-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f100063

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 243
    .local v0, layout:Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 244
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 245
    return-void
.end method

.method public onProgressComplete(I)V
    .locals 0
    .parameter "result"

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ManageCachePage;->onBackPressed()V

    .line 394
    return-void
.end method

.method public onProgressStart()V
    .locals 0

    .prologue
    .line 418
    return-void
.end method

.method public onProgressUpdate(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 398
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 260
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onResume()V

    .line 261
    iget-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/ManageCachePage;->setContentPane(Lcom/android/gallery3d/ui/GLView;)V

    .line 262
    iget-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->resume()V

    .line 263
    iget-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mSelectionDrawer:Lcom/android/gallery3d/ui/ManageCacheDrawer;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/ManageCacheDrawer;->resume()V

    .line 264
    iget-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mEyePosition:Lcom/android/gallery3d/app/EyePosition;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/EyePosition;->resume()V

    .line 265
    iget-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/ManageCachePage;->mUpdateStorageInfoJob:Lcom/android/gallery3d/util/ThreadPool$Job;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;)Lcom/android/gallery3d/util/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mUpdateStorageInfo:Lcom/android/gallery3d/util/Future;

    .line 266
    iget-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f100063

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 267
    .local v0, layout:Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mFooterContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 268
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 269
    return-void
.end method

.method public onSelectionChange(Lcom/android/gallery3d/data/Path;Z)V
    .locals 0
    .parameter "path"
    .parameter "selected"

    .prologue
    .line 406
    return-void
.end method

.method public onSelectionModeChange(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 402
    return-void
.end method

.method public onSingleTapUp(I)V
    .locals 8
    .parameter "slotIndex"

    .prologue
    .line 158
    iget-object v6, p0, Lcom/android/gallery3d/app/ManageCachePage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v6, p1}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v5

    .line 159
    .local v5, targetSet:Lcom/android/gallery3d/data/MediaSet;
    if-nez v5, :cond_0

    .line 191
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaSet;->getSupportedOperations()I

    move-result v6

    and-int/lit16 v6, v6, 0x100

    if-nez v6, :cond_1

    .line 165
    invoke-direct {p0}, Lcom/android/gallery3d/app/ManageCachePage;->showToastForLocalAlbum()V

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 170
    .local v2, path:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaSet;->getCacheFlag()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    const/4 v0, 0x1

    .line 172
    .local v0, isFullyCached:Z
    :goto_1
    iget-object v6, p0, Lcom/android/gallery3d/app/ManageCachePage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6, v2}, Lcom/android/gallery3d/ui/SelectionManager;->isItemSelected(Lcom/android/gallery3d/data/Path;)Z

    move-result v1

    .line 174
    .local v1, isSelected:Z
    if-nez v0, :cond_2

    .line 177
    if-eqz v1, :cond_5

    .line 178
    iget v6, p0, Lcom/android/gallery3d/app/ManageCachePage;->mAlbumCountToMakeAvailableOffline:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/android/gallery3d/app/ManageCachePage;->mAlbumCountToMakeAvailableOffline:I

    .line 184
    :cond_2
    :goto_2
    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaSet;->getCacheSize()J

    move-result-wide v3

    .line 185
    .local v3, sizeOfTarget:J
    iget-object v6, p0, Lcom/android/gallery3d/app/ManageCachePage;->mCacheStorageInfo:Lcom/android/gallery3d/ui/CacheStorageUsageInfo;

    xor-int v7, v0, v1

    if-eqz v7, :cond_3

    neg-long v3, v3

    .end local v3           #sizeOfTarget:J
    :cond_3
    invoke-virtual {v6, v3, v4}, Lcom/android/gallery3d/ui/CacheStorageUsageInfo;->increaseTargetCacheSize(J)V

    .line 187
    invoke-direct {p0}, Lcom/android/gallery3d/app/ManageCachePage;->refreshCacheStorageInfo()V

    .line 189
    iget-object v6, p0, Lcom/android/gallery3d/app/ManageCachePage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6, v2}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 190
    iget-object v6, p0, Lcom/android/gallery3d/app/ManageCachePage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0

    .line 170
    .end local v0           #isFullyCached:Z
    .end local v1           #isSelected:Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 180
    .restart local v0       #isFullyCached:Z
    .restart local v1       #isSelected:Z
    :cond_5
    iget v6, p0, Lcom/android/gallery3d/app/ManageCachePage;->mAlbumCountToMakeAvailableOffline:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/gallery3d/app/ManageCachePage;->mAlbumCountToMakeAvailableOffline:I

    goto :goto_2
.end method
