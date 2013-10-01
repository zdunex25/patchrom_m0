.class public Lcom/android/gallery3d/app/AlbumPage;
.super Lcom/android/gallery3d/app/ActivityState;
.source "AlbumPage.java"

# interfaces
.implements Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;
.implements Lcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;
.implements Lcom/android/gallery3d/data/MediaSet$SyncListener;
.implements Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;,
        Lcom/android/gallery3d/app/AlbumPage$MyLoadingListener;
    }
.end annotation


# instance fields
.field private mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

.field private mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

.field private mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

.field private mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

.field private mDetailsSource:Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;

.field private mFocusIndex:I

.field private mGetContent:Z

.field private mHandler:Landroid/os/Handler;

.field private mInCameraAndWantQuitOnPause:Z

.field private mInCameraApp:Z

.field private mInitialSynced:Z

.field private mIsActive:Z

.field private mLaunchedFromPhotoPage:Z

.field private mLoadingBits:I

.field private mLoadingFailed:Z

.field private mMediaSet:Lcom/android/gallery3d/data/MediaSet;

.field private mMediaSetPath:Lcom/android/gallery3d/data/Path;

.field private mOpenCenter:Lcom/android/gallery3d/ui/RelativePosition;

.field private mParentMediaSetString:Ljava/lang/String;

.field private mPositionProvider:Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

.field private mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

.field private final mRootPane:Lcom/android/gallery3d/ui/GLView;

.field protected mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mShowClusterMenu:Z

.field private mShowDetails:Z

.field private mSlotView:Lcom/android/gallery3d/ui/SlotView;

.field private mSyncResult:I

.field private mSyncTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUserDistance:F

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Lcom/android/gallery3d/app/ActivityState;-><init>()V

    .line 83
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mIsActive:Z

    .line 98
    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mFocusIndex:I

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    .line 109
    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mLoadingBits:I

    .line 110
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mInitialSynced:Z

    .line 113
    new-instance v0, Lcom/android/gallery3d/ui/RelativePosition;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/RelativePosition;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mOpenCenter:Lcom/android/gallery3d/ui/RelativePosition;

    .line 119
    new-instance v0, Lcom/android/gallery3d/app/AlbumPage$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumPage$1;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mPositionProvider:Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

    .line 147
    new-instance v0, Lcom/android/gallery3d/app/AlbumPage$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumPage$2;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    .line 757
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/SlotView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/app/AlbumDataLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/AlbumPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->onDown(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/AlbumPage;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->onUp(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/app/AlbumPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->onSingleTapUp(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/app/AlbumPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->hideDetails()V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/gallery3d/app/AlbumPage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSyncResult:I

    return p1
.end method

.method static synthetic access$1602(Lcom/android/gallery3d/app/AlbumPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/gallery3d/app/AlbumPage;->mInitialSynced:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/app/AlbumPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->clearLoadingBit(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/app/AlbumPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mLoadingFailed:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/gallery3d/app/AlbumPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/gallery3d/app/AlbumPage;->mLoadingFailed:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/app/AlbumPage;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->showSyncErrorIfNecessary(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/AlbumPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowDetails:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/app/AlbumPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->setLoadingBit(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/DetailsHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/AlbumSlotRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/RelativePosition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mOpenCenter:Lcom/android/gallery3d/ui/RelativePosition;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/AlbumPage;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mUserDistance:F

    return v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/ui/PhotoFallbackEffect;)Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/AlbumPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->pickPhoto(I)V

    return-void
.end method

.method private clearLoadingBit(I)V
    .locals 3
    .parameter

    .prologue
    .line 731
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mLoadingBits:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mLoadingBits:I

    .line 732
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mLoadingBits:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumDataLoader;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 734
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 735
    const-string v1, "empty-album"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 736
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/app/AlbumPage;->setStateResult(ILandroid/content/Intent;)V

    .line 737
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    .line 740
    :cond_0
    return-void
.end method

.method private hideDetails()V
    .locals 2

    .prologue
    .line 537
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowDetails:Z

    .line 538
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->hide()V

    .line 539
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setHighlightItemPath(Lcom/android/gallery3d/data/Path;)V

    .line 540
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    .line 541
    return-void
.end method

.method private initializeData(Landroid/os/Bundle;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 510
    const-string v0, "media-path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    .line 511
    const-string v0, "parent-media-path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mParentMediaSetString:Ljava/lang/String;

    .line 512
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    .line 513
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    if-nez v0, :cond_0

    .line 514
    const-string v0, "MediaSet is null. Path = %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/gallery3d/common/Utils;->fail(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager;->setSourceMediaSet(Lcom/android/gallery3d/data/MediaSet;)V

    .line 517
    new-instance v0, Lcom/android/gallery3d/app/AlbumDataLoader;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/app/AlbumDataLoader;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/data/MediaSet;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    .line 518
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    new-instance v1, Lcom/android/gallery3d/app/AlbumPage$MyLoadingListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/app/AlbumPage$MyLoadingListener;-><init>(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/app/AlbumPage$1;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/AlbumDataLoader;->setLoadingListener(Lcom/android/gallery3d/app/LoadingListener;)V

    .line 519
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setModel(Lcom/android/gallery3d/app/AlbumDataLoader;)V

    .line 520
    return-void
.end method

.method private initializeViews()V
    .locals 6

    .prologue
    .line 471
    new-instance v1, Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/SelectionManager;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Z)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 472
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/ui/SelectionManager;->setSelectionListener(Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;)V

    .line 473
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/android/gallery3d/app/Config$AlbumPage;->get(Landroid/content/Context;)Lcom/android/gallery3d/app/Config$AlbumPage;

    move-result-object v0

    .line 474
    .local v0, config:Lcom/android/gallery3d/app/Config$AlbumPage;
    new-instance v1, Lcom/android/gallery3d/ui/SlotView;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, v0, Lcom/android/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/SlotView;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SlotView$Spec;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    .line 475
    new-instance v1, Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget v5, v0, Lcom/android/gallery3d/app/Config$AlbumPage;->placeholderColor:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SlotView;Lcom/android/gallery3d/ui/SelectionManager;I)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    .line 477
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SlotView;->setSlotRenderer(Lcom/android/gallery3d/ui/SlotView$SlotRenderer;)V

    .line 478
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 479
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    new-instance v2, Lcom/android/gallery3d/app/AlbumPage$4;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/AlbumPage$4;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SlotView;->setListener(Lcom/android/gallery3d/ui/SlotView$Listener;)V

    .line 500
    new-instance v1, Lcom/android/gallery3d/ui/ActionModeHandler;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/ActionModeHandler;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    .line 501
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    new-instance v2, Lcom/android/gallery3d/app/AlbumPage$5;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/AlbumPage$5;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/ActionModeHandler;->setActionModeListener(Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;)V

    .line 507
    return-void
.end method

.method private onDown(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setPressedIndex(I)V

    .line 239
    return-void
.end method

.method private onGetContent(Lcom/android/gallery3d/data/MediaItem;)V
    .locals 8
    .parameter "item"

    .prologue
    const/4 v7, 0x1

    .line 316
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    .line 317
    .local v1, dm:Lcom/android/gallery3d/data/DataManager;
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 318
    .local v0, activity:Landroid/app/Activity;
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mData:Landroid/os/Bundle;

    const-string v5, "crop"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 320
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v3

    .line 321
    .local v3, uri:Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.camera.action.CROP"

    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v5, 0x200

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumPage;->getData()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    .line 324
    .local v2, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mData:Landroid/os/Bundle;

    const-string v5, "output"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    if-nez v4, :cond_0

    .line 325
    const-string v4, "return-data"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 327
    :cond_0
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 328
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 335
    .end local v3           #uri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 330
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 332
    .restart local v2       #intent:Landroid/content/Intent;
    const/4 v4, -0x1

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 333
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private onSingleTapUp(I)V
    .locals 5
    .parameter "slotIndex"

    .prologue
    const/4 v3, 0x0

    .line 251
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mIsActive:Z

    if-nez v1, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 254
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/app/AlbumDataLoader;->get(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 255
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    .line 256
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 257
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0

    .line 260
    .end local v0           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setPressedIndex(I)V

    .line 261
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setPressedUp()V

    .line 262
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xb4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private onUp(Z)V
    .locals 2
    .parameter "followedByLongPress"

    .prologue
    .line 242
    if-eqz p1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setPressedIndex(I)V

    .line 248
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setPressedUp()V

    goto :goto_0
.end method

.method private onUpPressed()V
    .locals 3

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mInCameraApp:Z

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->startGalleryActivity(Landroid/content/Context;)V

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 228
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_0

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mParentMediaSetString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 230
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumPage;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 231
    const-string v1, "media-path"

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mParentMediaSetString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v1, p0, v2, v0}, Lcom/android/gallery3d/app/StateManager;->switchState(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private pickPhoto(I)V
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 268
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/app/AlbumPage;->pickPhoto(IZ)V

    .line 269
    return-void
.end method

.method private pickPhoto(IZ)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 272
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mIsActive:Z

    if-nez v0, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    if-nez p2, :cond_2

    .line 276
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/android/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/AlbumDataLoader;->get(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 280
    if-eqz v0, :cond_0

    .line 281
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mGetContent:Z

    if-eqz v1, :cond_3

    .line 282
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/AlbumPage;->onGetContent(Lcom/android/gallery3d/data/MediaItem;)V

    goto :goto_0

    .line 283
    :cond_3
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mLaunchedFromPhotoPage:Z

    if-eqz v1, :cond_4

    .line 284
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v0

    .line 285
    const-string v1, "albumpage-transition"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 288
    const-string v1, "index-hint"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 289
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumPage;->onBackPressed()V

    goto :goto_0

    .line 293
    :cond_4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 294
    const-string v2, "index-hint"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 295
    const-string v2, "open-animation-rect"

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v3, p1, v4}, Lcom/android/gallery3d/ui/SlotView;->getSlotRect(ILcom/android/gallery3d/ui/GLView;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 297
    const-string v2, "media-set-path"

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v2, "media-item-path"

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v0, "albumpage-transition"

    invoke-virtual {v1, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 303
    const-string v0, "start-in-filmstrip"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 305
    const-string v0, "in_camera_roll"

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->isCameraRoll()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 306
    if-eqz p2, :cond_5

    .line 307
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v2, Lcom/android/gallery3d/app/PhotoPage;

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/gallery3d/app/StateManager;->switchState(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 309
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v2, Lcom/android/gallery3d/app/PhotoPage;

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method private prepareAnimationBackToFilmstrip(I)V
    .locals 5
    .parameter "slotIndex"

    .prologue
    .line 572
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/app/AlbumDataLoader;->isActive(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 579
    :cond_0
    :goto_0
    return-void

    .line 573
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/app/AlbumDataLoader;->get(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 574
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    .line 575
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v1

    .line 576
    .local v1, transitions:Lcom/android/gallery3d/app/TransitionStore;
    const-string v2, "index-hint"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 577
    const-string v2, "open-animation-rect"

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v3, p1, v4}, Lcom/android/gallery3d/ui/SlotView;->getSlotRect(ILcom/android/gallery3d/ui/GLView;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private setLoadingBit(I)V
    .locals 1
    .parameter "loadTaskBit"

    .prologue
    .line 727
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mLoadingBits:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mLoadingBits:I

    .line 728
    return-void
.end method

.method private showDetails()V
    .locals 4

    .prologue
    .line 523
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowDetails:Z

    .line 524
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    if-nez v0, :cond_0

    .line 525
    new-instance v0, Lcom/android/gallery3d/ui/DetailsHelper;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsSource:Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/DetailsHelper;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    .line 526
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    new-instance v1, Lcom/android/gallery3d/app/AlbumPage$6;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/AlbumPage$6;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/DetailsHelper;->setCloseListener(Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;)V

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->show()V

    .line 534
    return-void
.end method

.method private showSyncErrorIfNecessary(Z)V
    .locals 3
    .parameter

    .prologue
    .line 719
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mLoadingBits:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSyncResult:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mIsActive:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumDataLoader;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f0a01ca

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 724
    :cond_1
    return-void
.end method

.method private switchToFilmstrip()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 582
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AlbumDataLoader;->size()I

    move-result v1

    if-ge v1, v2, :cond_0

    .line 590
    :goto_0
    return-void

    .line 583
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SlotView;->getVisibleStart()I

    move-result v0

    .line 584
    .local v0, targetPhoto:I
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/AlbumPage;->prepareAnimationBackToFilmstrip(I)V

    .line 585
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mLaunchedFromPhotoPage:Z

    if-eqz v1, :cond_1

    .line 586
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumPage;->onBackPressed()V

    goto :goto_0

    .line 588
    :cond_1
    invoke-direct {p0, v0, v2}, Lcom/android/gallery3d/app/AlbumPage;->pickPhoto(IZ)V

    goto :goto_0
.end method


# virtual methods
.method public doCluster(I)V
    .locals 4
    .parameter

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/FilterUtils;->newClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 350
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumPage;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 351
    const-string v2, "media-path"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowClusterMenu:Z

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 354
    const-string v2, "set-title"

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v2, "set-subtitle"

    invoke-static {v0, p1}, Lcom/android/gallery3d/app/GalleryActionBar;->getClusterByTypeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v2, Lcom/android/gallery3d/app/AlbumSetPage;

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 362
    return-void
.end method

.method protected getBackgroundColorId()I
    .locals 1

    .prologue
    .line 144
    const v0, 0x7f0b001b

    return v0
.end method

.method public onAlbumModeSelected(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 787
    if-nez p1, :cond_0

    .line 788
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->switchToFilmstrip()V

    .line 790
    :cond_0
    return-void
.end method

.method protected onBackPressed()V
    .locals 3

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowDetails:Z

    if-eqz v0, :cond_0

    .line 205
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->hideDetails()V

    .line 222
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 209
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mLaunchedFromPhotoPage:Z

    if-eqz v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v0

    const-string v1, "albumpage-transition"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/app/TransitionStore;->putIfNotPresent(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 216
    :cond_2
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mInCameraApp:Z

    if-eqz v0, :cond_3

    .line 217
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_0

    .line 219
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->onUpPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 366
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 367
    const v0, 0x3e99999a

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->meterToPixel(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mUserDistance:F

    .line 368
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->initializeViews()V

    .line 369
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->initializeData(Landroid/os/Bundle;)V

    .line 370
    const-string v0, "get-content"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mGetContent:Z

    .line 371
    const-string v0, "cluster-menu"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowClusterMenu:Z

    .line 372
    new-instance v0, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;-><init>(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/app/AlbumPage$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsSource:Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;

    .line 373
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 374
    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mVibrator:Landroid/os/Vibrator;

    .line 377
    const-string v0, "auto-select-all"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->selectAll()V

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/android/gallery3d/app/PhotoPage;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mLaunchedFromPhotoPage:Z

    .line 383
    const-string v0, "app-bridge"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mInCameraApp:Z

    .line 385
    new-instance v0, Lcom/android/gallery3d/app/AlbumPage$3;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/AlbumPage$3;-><init>(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;

    .line 398
    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 545
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v0

    .line 546
    .local v0, actionBar:Lcom/android/gallery3d/app/GalleryActionBar;
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumPage;->getSupportMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 547
    .local v1, inflator:Landroid/view/MenuInflater;
    iget-boolean v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mGetContent:Z

    if-eqz v3, :cond_0

    .line 548
    const v3, 0x7f12000b

    invoke-virtual {v1, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 549
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mData:Landroid/os/Bundle;

    const-string v5, "type-bits"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 551
    .local v2, typeBits:I
    invoke-static {v2}, Lcom/android/gallery3d/util/GalleryUtils;->getSelectionModePrompt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(I)V

    .line 567
    .end local v2           #typeBits:I
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/app/GalleryActionBar;->setSubtitle(Ljava/lang/String;)V

    .line 568
    return v4

    .line 553
    :cond_0
    const/high16 v3, 0x7f12

    invoke-virtual {v1, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 554
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(Ljava/lang/String;)V

    .line 556
    const v3, 0x7f1000c4

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    instance-of v3, v3, Lcom/android/gallery3d/data/MtpDevice;

    if-nez v3, :cond_2

    move v3, v4

    :goto_1
    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 559
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    invoke-static {v0, v3, v4}, Lcom/android/gallery3d/app/FilterUtils;->setupMenuItems(Lcom/android/gallery3d/app/GalleryActionBar;Lcom/android/gallery3d/data/Path;Z)V

    .line 561
    const v3, 0x7f1000c6

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v6, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowClusterMenu:Z

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 562
    const v3, 0x7f1000c3

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    invoke-static {v6}, Lcom/android/gallery3d/util/MediaSetUtils;->isCameraSource(Lcom/android/gallery3d/data/Path;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6}, Lcom/android/gallery3d/util/GalleryUtils;->isCameraAvailable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v4

    :cond_1
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    move v3, v5

    .line 556
    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 464
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onDestroy()V

    .line 465
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/AlbumDataLoader;->setLoadingListener(Lcom/android/gallery3d/app/LoadingListener;)V

    .line 468
    :cond_0
    return-void
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 594
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 633
    :goto_0
    return v0

    .line 596
    :sswitch_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->onUpPressed()V

    goto :goto_0

    .line 600
    :sswitch_1
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    goto :goto_0

    .line 603
    :sswitch_2
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 604
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    goto :goto_0

    .line 607
    :sswitch_3
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/app/GalleryActionBar;->showClusterDialog(Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;)V

    goto :goto_0

    .line 611
    :sswitch_4
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mInCameraAndWantQuitOnPause:Z

    .line 612
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 613
    const-string v2, "media-set-path"

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    const-string v2, "repeat"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 616
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/android/gallery3d/app/SlideshowPage;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 621
    :sswitch_5
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowDetails:Z

    if-eqz v1, :cond_0

    .line 622
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->hideDetails()V

    goto :goto_0

    .line 624
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->showDetails()V

    goto :goto_0

    .line 629
    :sswitch_6
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/android/gallery3d/util/GalleryUtils;->startCameraActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 594
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f1000c3 -> :sswitch_6
        0x7f1000c4 -> :sswitch_4
        0x7f1000c5 -> :sswitch_2
        0x7f1000c6 -> :sswitch_3
        0x7f1000f2 -> :sswitch_5
        0x7f1000f5 -> :sswitch_1
    .end sparse-switch
.end method

.method public onLongTap(I)V
    .locals 3
    .parameter "slotIndex"

    .prologue
    .line 338
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mGetContent:Z

    if-eqz v1, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/app/AlbumDataLoader;->get(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 340
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    .line 341
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 342
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 343
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 439
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onPause()V

    .line 440
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mIsActive:Z

    .line 442
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setSlotFilter(Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;)V

    .line 447
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumDataLoader;->pause()V

    .line 448
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->pause()V

    .line 449
    invoke-static {}, Lcom/android/gallery3d/ui/DetailsHelper;->pause()V

    .line 450
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mGetContent:Z

    if-nez v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/GalleryActionBar;->disableAlbumModeMenu(Z)V

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    if-eqz v0, :cond_2

    .line 455
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 456
    iput-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    .line 457
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/AlbumPage;->clearLoadingBit(I)V

    .line 459
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->pause()V

    .line 460
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 402
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onResume()V

    .line 403
    iput-boolean v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mIsActive:Z

    .line 405
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v2

    const-string v5, "resume_animation"

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/app/TransitionStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    iput-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    .line 406
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    if-eqz v2, :cond_0

    .line 407
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setSlotFilter(Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;)V

    .line 408
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumPage;->mPositionProvider:Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->setPositionProvider(Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;)V

    .line 409
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->start()V

    .line 412
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/AlbumPage;->setContentPane(Lcom/android/gallery3d/ui/GLView;)V

    .line 414
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v2

    if-le v2, v3, :cond_3

    move v2, v3

    :goto_0
    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumPage;->mParentMediaSetString:Ljava/lang/String;

    if-eqz v5, :cond_4

    move v5, v3

    :goto_1
    or-int v1, v2, v5

    .line 416
    .local v1, enableHomeButton:Z
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v0

    .line 417
    .local v0, actionBar:Lcom/android/gallery3d/app/GalleryActionBar;
    invoke-virtual {v0, v1, v4}, Lcom/android/gallery3d/app/GalleryActionBar;->setDisplayOptions(ZZ)V

    .line 418
    iget-boolean v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mGetContent:Z

    if-nez v2, :cond_1

    .line 419
    invoke-virtual {v0, v3, p0}, Lcom/android/gallery3d/app/GalleryActionBar;->enableAlbumModeMenu(ILcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;)V

    .line 423
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/AlbumPage;->setLoadingBit(I)V

    .line 424
    iput-boolean v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mLoadingFailed:Z

    .line 425
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AlbumDataLoader;->resume()V

    .line 427
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->resume()V

    .line 428
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setPressedIndex(I)V

    .line 429
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/ActionModeHandler;->resume()V

    .line 430
    iget-boolean v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mInitialSynced:Z

    if-nez v2, :cond_2

    .line 431
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/AlbumPage;->setLoadingBit(I)V

    .line 432
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v2, p0}, Lcom/android/gallery3d/data/MediaSet;->requestSync(Lcom/android/gallery3d/data/MediaSet$SyncListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    .line 434
    :cond_2
    iget-boolean v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mInCameraApp:Z

    iput-boolean v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mInCameraAndWantQuitOnPause:Z

    .line 435
    return-void

    .end local v0           #actionBar:Lcom/android/gallery3d/app/GalleryActionBar;
    .end local v1           #enableHomeButton:Z
    :cond_3
    move v2, v4

    .line 414
    goto :goto_0

    :cond_4
    move v5, v4

    goto :goto_1
.end method

.method public onSelectionChange(Lcom/android/gallery3d/data/Path;Z)V
    .locals 6
    .parameter "path"
    .parameter "selected"

    .prologue
    .line 683
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    .line 684
    .local v0, count:I
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110001

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 686
    .local v1, format:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    .line 687
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v2, p1, p2}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSupportedOperation(Lcom/android/gallery3d/data/Path;Z)V

    .line 688
    return-void
.end method

.method public onSelectionModeChange(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 662
    packed-switch p1, :pswitch_data_0

    .line 679
    :cond_0
    :goto_0
    return-void

    .line 664
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->startActionMode()V

    .line 665
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mHapticsEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 669
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->finishActionMode()V

    .line 670
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    .line 674
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSupportedOperation()V

    .line 675
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    .line 662
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "request"
    .parameter "result"
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    .line 639
    packed-switch p1, :pswitch_data_0

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 642
    :pswitch_0
    if-eqz p3, :cond_0

    .line 643
    const-string v0, "photo-index"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mFocusIndex:I

    .line 644
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mFocusIndex:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->setCenterIndex(I)V

    goto :goto_0

    .line 648
    :pswitch_1
    if-eqz p3, :cond_0

    .line 649
    const-string v0, "return-index-hint"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mFocusIndex:I

    .line 650
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mFocusIndex:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->makeSlotVisible(I)V

    goto :goto_0

    .line 654
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->startRisingAnimation()V

    goto :goto_0

    .line 639
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSyncDone(Lcom/android/gallery3d/data/MediaSet;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 692
    const-string v0, "AlbumPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSyncDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/android/gallery3d/app/AlbumPage$7;

    invoke-direct {v1, p0, p2}, Lcom/android/gallery3d/app/AlbumPage$7;-><init>(Lcom/android/gallery3d/app/AlbumPage;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 711
    return-void
.end method
