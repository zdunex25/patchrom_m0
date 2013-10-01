.class public Lcom/android/gallery3d/app/SlideshowPage;
.super Lcom/android/gallery3d/app/ActivityState;
.source "SlideshowPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;,
        Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;,
        Lcom/android/gallery3d/app/SlideshowPage$Slide;,
        Lcom/android/gallery3d/app/SlideshowPage$Model;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIsActive:Z

.field private mModel:Lcom/android/gallery3d/app/SlideshowPage$Model;

.field private mPendingSlide:Lcom/android/gallery3d/app/SlideshowPage$Slide;

.field private final mResultIntent:Landroid/content/Intent;

.field private final mRootPane:Lcom/android/gallery3d/ui/GLView;

.field private mSlideshowView:Lcom/android/gallery3d/ui/SlideshowView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/gallery3d/app/ActivityState;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mPendingSlide:Lcom/android/gallery3d/app/SlideshowPage$Slide;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mIsActive:Z

    .line 85
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mResultIntent:Landroid/content/Intent;

    .line 92
    new-instance v0, Lcom/android/gallery3d/app/SlideshowPage$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/SlideshowPage$1;-><init>(Lcom/android/gallery3d/app/SlideshowPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    .line 310
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/SlideshowPage;)Lcom/android/gallery3d/ui/SlideshowView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mSlideshowView:Lcom/android/gallery3d/ui/SlideshowView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/SlideshowPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/gallery3d/app/SlideshowPage;->showPendingBitmap()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/SlideshowPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/gallery3d/app/SlideshowPage;->loadNextBitmap()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/gallery3d/app/SlideshowPage;Lcom/android/gallery3d/app/SlideshowPage$Slide;)Lcom/android/gallery3d/app/SlideshowPage$Slide;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/gallery3d/app/SlideshowPage;->mPendingSlide:Lcom/android/gallery3d/app/SlideshowPage$Slide;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/SlideshowPage;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/data/MediaSet;I)Lcom/android/gallery3d/data/MediaItem;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-static {p0, p1}, Lcom/android/gallery3d/app/SlideshowPage;->findMediaItem(Lcom/android/gallery3d/data/MediaSet;I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method private static findMediaItem(Lcom/android/gallery3d/data/MediaSet;I)Lcom/android/gallery3d/data/MediaItem;
    .locals 6
    .parameter "mediaSet"
    .parameter "index"

    .prologue
    .line 228
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v3

    .local v3, n:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 229
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v4

    .line 230
    .local v4, subset:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v0

    .line 231
    .local v0, count:I
    if-ge p1, v0, :cond_0

    .line 232
    invoke-static {v4, p1}, Lcom/android/gallery3d/app/SlideshowPage;->findMediaItem(Lcom/android/gallery3d/data/MediaSet;I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v5

    .line 237
    .end local v0           #count:I
    .end local v4           #subset:Lcom/android/gallery3d/data/MediaSet;
    :goto_1
    return-object v5

    .line 234
    .restart local v0       #count:I
    .restart local v4       #subset:Lcom/android/gallery3d/data/MediaSet;
    :cond_0
    sub-int/2addr p1, v0

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    .end local v0           #count:I
    .end local v4           #subset:Lcom/android/gallery3d/data/MediaSet;
    :cond_1
    const/4 v5, 0x1

    invoke-virtual {p0, p1, v5}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v2

    .line 237
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/MediaItem;

    goto :goto_1
.end method

.method private initializeData(Landroid/os/Bundle;)V
    .locals 12
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 198
    const-string v7, "random-order"

    invoke-virtual {p1, v7, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 201
    .local v5, random:Z
    const-string v7, "media-set-path"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, mediaPath:Ljava/lang/String;
    const/4 v7, 0x1

    invoke-static {v2, v7}, Lcom/android/gallery3d/app/FilterUtils;->newFilterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 203
    iget-object v7, p0, Lcom/android/gallery3d/app/SlideshowPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    .line 205
    .local v3, mediaSet:Lcom/android/gallery3d/data/MediaSet;
    if-eqz v5, :cond_0

    .line 206
    const-string v7, "repeat"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 207
    .local v6, repeat:Z
    new-instance v7, Lcom/android/gallery3d/app/SlideshowDataAdapter;

    iget-object v8, p0, Lcom/android/gallery3d/app/SlideshowPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v9, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;

    invoke-direct {v9, v3, v6}, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;-><init>(Lcom/android/gallery3d/data/MediaSet;Z)V

    invoke-direct {v7, v8, v9, v10, v4}, Lcom/android/gallery3d/app/SlideshowDataAdapter;-><init>(Lcom/android/gallery3d/app/GalleryContext;Lcom/android/gallery3d/app/SlideshowDataAdapter$SlideshowSource;ILcom/android/gallery3d/data/Path;)V

    iput-object v7, p0, Lcom/android/gallery3d/app/SlideshowPage;->mModel:Lcom/android/gallery3d/app/SlideshowPage$Model;

    .line 209
    iget-object v7, p0, Lcom/android/gallery3d/app/SlideshowPage;->mResultIntent:Landroid/content/Intent;

    const-string v8, "photo-index"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v11, v7}, Lcom/android/gallery3d/app/SlideshowPage;->setStateResult(ILandroid/content/Intent;)V

    .line 219
    :goto_0
    return-void

    .line 211
    .end local v6           #repeat:Z
    :cond_0
    const-string v7, "photo-index"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 212
    .local v0, index:I
    const-string v7, "media-item-path"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, itemPath:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    .line 214
    .local v4, path:Lcom/android/gallery3d/data/Path;
    :cond_1
    const-string v7, "repeat"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 215
    .restart local v6       #repeat:Z
    new-instance v7, Lcom/android/gallery3d/app/SlideshowDataAdapter;

    iget-object v8, p0, Lcom/android/gallery3d/app/SlideshowPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v9, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;

    invoke-direct {v9, v3, v6}, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;-><init>(Lcom/android/gallery3d/data/MediaSet;Z)V

    invoke-direct {v7, v8, v9, v0, v4}, Lcom/android/gallery3d/app/SlideshowDataAdapter;-><init>(Lcom/android/gallery3d/app/GalleryContext;Lcom/android/gallery3d/app/SlideshowDataAdapter$SlideshowSource;ILcom/android/gallery3d/data/Path;)V

    iput-object v7, p0, Lcom/android/gallery3d/app/SlideshowPage;->mModel:Lcom/android/gallery3d/app/SlideshowPage$Model;

    .line 217
    iget-object v7, p0, Lcom/android/gallery3d/app/SlideshowPage;->mResultIntent:Landroid/content/Intent;

    const-string v8, "photo-index"

    invoke-virtual {v7, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v11, v7}, Lcom/android/gallery3d/app/SlideshowPage;->setStateResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method private initializeViews()V
    .locals 2

    .prologue
    .line 222
    new-instance v0, Lcom/android/gallery3d/ui/SlideshowView;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/SlideshowView;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mSlideshowView:Lcom/android/gallery3d/ui/SlideshowView;

    .line 223
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage;->mSlideshowView:Lcom/android/gallery3d/ui/SlideshowView;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 224
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/SlideshowPage;->setContentPane(Lcom/android/gallery3d/ui/GLView;)V

    .line 225
    return-void
.end method

.method private loadNextBitmap()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mModel:Lcom/android/gallery3d/app/SlideshowPage$Model;

    new-instance v1, Lcom/android/gallery3d/app/SlideshowPage$3;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/SlideshowPage$3;-><init>(Lcom/android/gallery3d/app/SlideshowPage;)V

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/SlideshowPage$Model;->nextSlide(Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    .line 151
    return-void
.end method

.method private showPendingBitmap()V
    .locals 5

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mPendingSlide:Lcom/android/gallery3d/app/SlideshowPage$Slide;

    .line 158
    .local v0, slide:Lcom/android/gallery3d/app/SlideshowPage$Slide;
    if-nez v0, :cond_1

    .line 159
    iget-boolean v1, p0, Lcom/android/gallery3d/app/SlideshowPage;->mIsActive:Z

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage;->mSlideshowView:Lcom/android/gallery3d/ui/SlideshowView;

    iget-object v2, v0, Lcom/android/gallery3d/app/SlideshowPage$Slide;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lcom/android/gallery3d/app/SlideshowPage$Slide;->item:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/ui/SlideshowView;->next(Landroid/graphics/Bitmap;I)V

    .line 167
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/gallery3d/app/SlideshowPage;->mResultIntent:Landroid/content/Intent;

    const-string v3, "media-item-path"

    iget-object v4, v0, Lcom/android/gallery3d/app/SlideshowPage$Slide;->item:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "photo-index"

    iget v4, v0, Lcom/android/gallery3d/app/SlideshowPage$Slide;->index:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/gallery3d/app/SlideshowPage;->setStateResult(ILandroid/content/Intent;)V

    .line 170
    iget-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method protected getBackgroundColorId()I
    .locals 1

    .prologue
    .line 89
    const v0, 0x7f0b0022

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2
    .parameter "data"
    .parameter "restoreState"

    .prologue
    .line 114
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 115
    iget v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mFlags:I

    or-int/lit8 v0, v0, 0x33

    iput v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mFlags:I

    .line 117
    const-string v0, "dream"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mFlags:I

    .line 125
    :goto_0
    new-instance v0, Lcom/android/gallery3d/app/SlideshowPage$2;

    iget-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/SlideshowPage$2;-><init>(Lcom/android/gallery3d/app/SlideshowPage;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    .line 139
    invoke-direct {p0}, Lcom/android/gallery3d/app/SlideshowPage;->initializeViews()V

    .line 140
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/SlideshowPage;->initializeData(Landroid/os/Bundle;)V

    .line 141
    return-void

    .line 122
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mFlags:I

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 175
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onPause()V

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mIsActive:Z

    .line 177
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mModel:Lcom/android/gallery3d/app/SlideshowPage$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/app/SlideshowPage$Model;->pause()V

    .line 178
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mSlideshowView:Lcom/android/gallery3d/ui/SlideshowView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlideshowView;->release()V

    .line 180
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 181
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 182
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 186
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onResume()V

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mIsActive:Z

    .line 188
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mModel:Lcom/android/gallery3d/app/SlideshowPage$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/app/SlideshowPage$Model;->resume()V

    .line 190
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mPendingSlide:Lcom/android/gallery3d/app/SlideshowPage$Slide;

    if-eqz v0, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/android/gallery3d/app/SlideshowPage;->showPendingBitmap()V

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/SlideshowPage;->loadNextBitmap()V

    goto :goto_0
.end method
