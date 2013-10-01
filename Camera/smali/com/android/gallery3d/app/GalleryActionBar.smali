.class public Lcom/android/gallery3d/app/GalleryActionBar;
.super Ljava/lang/Object;
.source "GalleryActionBar.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/GalleryActionBar$AlbumModeAdapter;,
        Lcom/android/gallery3d/app/GalleryActionBar$ClusterAdapter;,
        Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;,
        Lcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;,
        Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;
    }
.end annotation


# static fields
.field private static final sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBarMenu:Landroid/view/Menu;

.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field private mAdapter:Lcom/android/gallery3d/app/GalleryActionBar$ClusterAdapter;

.field private mAlbumModeAdapter:Lcom/android/gallery3d/app/GalleryActionBar$AlbumModeAdapter;

.field private mAlbumModeListener:Lcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;

.field private mAlbumModes:[Ljava/lang/CharSequence;

.field private mClusterRunner:Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;

.field private mContext:Landroid/content/Context;

.field private mCurrentIndex:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLastAlbumModeSelected:I

.field private mShareActionProvider:Landroid/widget/ShareActionProvider;

.field private mShareIntent:Landroid/content/Intent;

.field private mSharePanoramaActionProvider:Landroid/widget/ShareActionProvider;

.field private mSharePanoramaIntent:Landroid/content/Intent;

.field private mTitles:[Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 97
    const/4 v0, 0x5

    new-array v11, v0, [Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    new-instance v0, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    const v4, 0x7f0a020d

    const v5, 0x7f0a01c5

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;-><init>(IZZII)V

    aput-object v0, v11, v3

    new-instance v4, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    const v8, 0x7f0a020f

    const v9, 0x7f0a01da

    const v10, 0x7f0a01c1

    move v5, v13

    move v6, v1

    move v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;-><init>(IZZIII)V

    aput-object v4, v11, v1

    new-instance v4, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    const v8, 0x7f0a020e

    const v9, 0x7f0a01d9

    const v10, 0x7f0a01c2

    move v5, v12

    move v6, v1

    move v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;-><init>(IZZIII)V

    aput-object v4, v11, v12

    const/4 v0, 0x3

    new-instance v4, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    const/16 v5, 0x20

    const v8, 0x7f0a0210

    const v9, 0x7f0a01c4

    move v6, v1

    move v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;-><init>(IZZII)V

    aput-object v4, v11, v0

    new-instance v4, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    const/16 v5, 0x8

    const v8, 0x7f0a0211

    const v9, 0x7f0a01c3

    move v6, v1

    move v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;-><init>(IZZII)V

    aput-object v4, v11, v13

    sput-object v11, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/android/gallery3d/app/GalleryActionBar$ClusterAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/GalleryActionBar$ClusterAdapter;-><init>(Lcom/android/gallery3d/app/GalleryActionBar;Lcom/android/gallery3d/app/GalleryActionBar$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mAdapter:Lcom/android/gallery3d/app/GalleryActionBar$ClusterAdapter;

    .line 189
    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    .line 190
    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mContext:Landroid/content/Context;

    .line 191
    iput-object p1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 192
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mInflater:Landroid/view/LayoutInflater;

    .line 193
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mCurrentIndex:I

    .line 194
    return-void
.end method

.method static synthetic access$100()[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/GalleryActionBar;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/GalleryActionBar;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mAlbumModes:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/GalleryActionBar;)Landroid/app/ActionBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/GalleryActionBar;)Lcom/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method private createDialogData()V
    .locals 7

    .prologue
    .line 197
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v4, titles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActions:Ljava/util/ArrayList;

    .line 199
    sget-object v0, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    .local v0, arr$:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 200
    .local v2, item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    iget-boolean v5, v2, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->enabled:Z

    if-eqz v5, :cond_0

    iget-boolean v5, v2, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->visible:Z

    if-eqz v5, :cond_0

    .line 201
    iget-object v5, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mContext:Landroid/content/Context;

    iget v6, v2, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->dialogTitle:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v5, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActions:Ljava/util/ArrayList;

    iget v6, v2, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->action:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    .end local v2           #item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mTitles:[Ljava/lang/CharSequence;

    .line 206
    iget-object v5, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mTitles:[Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 207
    return-void
.end method

.method public static getClusterByTypeString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "type"

    .prologue
    .line 180
    sget-object v0, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    .local v0, arr$:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 181
    .local v2, item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    iget v4, v2, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->action:I

    if-ne v4, p1, :cond_0

    .line 182
    iget v4, v2, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->clusterBy:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 185
    .end local v2           #item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    :goto_1
    return-object v4

    .line 180
    .restart local v2       #item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    .end local v2           #item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 352
    :cond_0
    return-void
.end method

.method public createActionBarMenu(ILandroid/view/Menu;)V
    .locals 3
    .parameter "menuRes"
    .parameter "menu"

    .prologue
    .line 399
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 400
    iput-object p2, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBarMenu:Landroid/view/Menu;

    .line 402
    const v1, 0x7f1000eb

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 403
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 404
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v1

    check-cast v1, Landroid/widget/ShareActionProvider;

    iput-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mSharePanoramaActionProvider:Landroid/widget/ShareActionProvider;

    .line 406
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mSharePanoramaActionProvider:Landroid/widget/ShareActionProvider;

    const-string v2, "panorama_share_history.xml"

    invoke-virtual {v1, v2}, Landroid/widget/ShareActionProvider;->setShareHistoryFileName(Ljava/lang/String;)V

    .line 408
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mSharePanoramaActionProvider:Landroid/widget/ShareActionProvider;

    iget-object v2, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mSharePanoramaIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 411
    :cond_0
    const v1, 0x7f1000e9

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 412
    if-eqz v0, :cond_1

    .line 413
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v1

    check-cast v1, Landroid/widget/ShareActionProvider;

    iput-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    .line 415
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    const-string v2, "share_history.xml"

    invoke-virtual {v1, v2}, Landroid/widget/ShareActionProvider;->setShareHistoryFileName(Ljava/lang/String;)V

    .line 417
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    iget-object v2, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mShareIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 419
    :cond_1
    return-void
.end method

.method public disableAlbumModeMenu(Z)V
    .locals 2
    .parameter "hideMenu"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mAlbumModeListener:Lcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;

    .line 287
    if-eqz p1, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 291
    :cond_0
    return-void
.end method

.method public disableClusterMenu(Z)V
    .locals 2
    .parameter "hideMenu"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mClusterRunner:Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;

    .line 252
    if-eqz p1, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 256
    :cond_0
    return-void
.end method

.method public enableAlbumModeMenu(ILcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;)V
    .locals 6
    .parameter "selected"
    .parameter "listener"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 266
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_1

    .line 267
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mAlbumModeAdapter:Lcom/android/gallery3d/app/GalleryActionBar$AlbumModeAdapter;

    if-nez v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 270
    .local v0, res:Landroid/content/res/Resources;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const v3, 0x7f0a021e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const v2, 0x7f0a021f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mAlbumModes:[Ljava/lang/CharSequence;

    .line 273
    new-instance v1, Lcom/android/gallery3d/app/GalleryActionBar$AlbumModeAdapter;

    invoke-direct {v1, p0, v5}, Lcom/android/gallery3d/app/GalleryActionBar$AlbumModeAdapter;-><init>(Lcom/android/gallery3d/app/GalleryActionBar;Lcom/android/gallery3d/app/GalleryActionBar$1;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mAlbumModeAdapter:Lcom/android/gallery3d/app/GalleryActionBar$AlbumModeAdapter;

    .line 275
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_0
    iput-object v5, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mAlbumModeListener:Lcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;

    .line 276
    iput p1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mLastAlbumModeSelected:I

    .line 277
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    iget-object v2, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mAlbumModeAdapter:Lcom/android/gallery3d/app/GalleryActionBar$AlbumModeAdapter;

    invoke-virtual {v1, v2, p0}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 278
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 279
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 280
    iput-object p2, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mAlbumModeListener:Lcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;

    .line 282
    :cond_1
    return-void
.end method

.method public enableClusterMenu(ILcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;)V
    .locals 2
    .parameter "action"
    .parameter "runner"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mClusterRunner:Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;

    .line 239
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mAdapter:Lcom/android/gallery3d/app/GalleryActionBar$ClusterAdapter;

    invoke-virtual {v0, v1, p0}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 240
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 241
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/GalleryActionBar;->setSelectedAction(I)Z

    .line 242
    iput-object p2, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mClusterRunner:Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;

    .line 244
    :cond_0
    return-void
.end method

.method public getClusterTypeAction()I
    .locals 2

    .prologue
    .line 232
    sget-object v0, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    iget v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mCurrentIndex:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->action:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBarMenu:Landroid/view/Menu;

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 348
    :cond_0
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 2

    .prologue
    .line 259
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mAlbumModeListener:Lcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;

    if-eqz v1, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mAlbumModeListener:Lcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;

    .line 261
    .local v0, listener:Lcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;
    iget v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mLastAlbumModeSelected:I

    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/app/GalleryActionBar;->enableAlbumModeMenu(ILcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;)V

    .line 263
    .end local v0           #listener:Lcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;
    :cond_0
    return-void
.end method

.method public onNavigationItemSelected(IJ)Z
    .locals 2
    .parameter "itemPosition"
    .parameter "itemId"

    .prologue
    .line 374
    iget v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mCurrentIndex:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mClusterRunner:Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mAlbumModeListener:Lcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;

    if-eqz v0, :cond_2

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 380
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mAlbumModeListener:Lcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;

    if-eqz v0, :cond_3

    .line 381
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mAlbumModeListener:Lcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;->onAlbumModeSelected(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 389
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 383
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mClusterRunner:Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;

    sget-object v1, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->action:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;->doCluster(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 386
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v0
.end method

.method public removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 356
    :cond_0
    return-void
.end method

.method public setClusterItemEnabled(IZ)V
    .locals 5
    .parameter "id"
    .parameter "enabled"

    .prologue
    .line 214
    sget-object v0, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    .local v0, arr$:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 215
    .local v2, item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    iget v4, v2, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->action:I

    if-ne v4, p1, :cond_1

    .line 216
    iput-boolean p2, v2, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->enabled:Z

    .line 220
    .end local v2           #item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    :cond_0
    return-void

    .line 214
    .restart local v2       #item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setClusterItemVisibility(IZ)V
    .locals 5
    .parameter "id"
    .parameter "visible"

    .prologue
    .line 223
    sget-object v0, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    .local v0, arr$:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 224
    .local v2, item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    iget v4, v2, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->action:I

    if-ne v4, p1, :cond_1

    .line 225
    iput-boolean p2, v2, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->visible:Z

    .line 229
    .end local v2           #item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    :cond_0
    return-void

    .line 223
    .restart local v2       #item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setDisplayOptions(ZZ)V
    .locals 3
    .parameter "displayHomeAsUp"
    .parameter "showTitle"

    .prologue
    .line 318
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-nez v1, :cond_0

    .line 326
    :goto_0
    return-void

    .line 319
    :cond_0
    const/4 v0, 0x0

    .line 320
    .local v0, options:I
    if-eqz p1, :cond_1

    or-int/lit8 v0, v0, 0x4

    .line 321
    :cond_1
    if-eqz p2, :cond_2

    or-int/lit8 v0, v0, 0x8

    .line 323
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    const/16 v2, 0xc

    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 325
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto :goto_0
.end method

.method public setSelectedAction(I)Z
    .locals 5
    .parameter "type"

    .prologue
    const/4 v3, 0x0

    .line 359
    iget-object v4, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-nez v4, :cond_1

    .line 369
    :cond_0
    :goto_0
    return v3

    .line 361
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    sget-object v4, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    array-length v2, v4

    .local v2, n:I
    :goto_1
    if-ge v0, v2, :cond_0

    .line 362
    sget-object v4, Lcom/android/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    aget-object v1, v4, v0

    .line 363
    .local v1, item:Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;
    iget v4, v1, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->action:I

    if-ne v4, p1, :cond_2

    .line 364
    iget-object v3, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 365
    iput v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mCurrentIndex:I

    .line 366
    const/4 v3, 0x1

    goto :goto_0

    .line 361
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setShareIntents(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 1
    .parameter "sharePanoramaIntent"
    .parameter "shareIntent"

    .prologue
    .line 426
    iput-object p1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mSharePanoramaIntent:Landroid/content/Intent;

    .line 427
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mSharePanoramaActionProvider:Landroid/widget/ShareActionProvider;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mSharePanoramaActionProvider:Landroid/widget/ShareActionProvider;

    invoke-virtual {v0, p1}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 430
    :cond_0
    iput-object p2, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mShareIntent:Landroid/content/Intent;

    .line 431
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    if-eqz v0, :cond_1

    .line 432
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    invoke-virtual {v0, p2}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 434
    :cond_1
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 340
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 2
    .parameter "titleId"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 336
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 330
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 344
    :cond_0
    return-void
.end method

.method public showClusterDialog(Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;)V
    .locals 4
    .parameter "clusterRunner"

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/android/gallery3d/app/GalleryActionBar;->createDialogData()V

    .line 295
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mActions:Ljava/util/ArrayList;

    .line 296
    .local v0, actions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0212

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/GalleryActionBar;->mTitles:[Ljava/lang/CharSequence;

    new-instance v3, Lcom/android/gallery3d/app/GalleryActionBar$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/android/gallery3d/app/GalleryActionBar$1;-><init>(Lcom/android/gallery3d/app/GalleryActionBar;Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 310
    return-void
.end method
