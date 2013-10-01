.class public Lcom/android/gallery3d/ui/AlbumSlotRenderer;
.super Lcom/android/gallery3d/ui/AbstractSlotRenderer;
.source "AlbumSlotRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/AlbumSlotRenderer$1;,
        Lcom/android/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;,
        Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field private mAnimatePressedUp:Z

.field private mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

.field private mHighlightItemPath:Lcom/android/gallery3d/data/Path;

.field private mInSelectionMode:Z

.field private final mPlaceholderColor:I

.field private mPressedIndex:I

.field private final mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mSlotFilter:Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;

.field private final mSlotView:Lcom/android/gallery3d/ui/SlotView;

.field private final mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SlotView;Lcom/android/gallery3d/ui/SelectionManager;I)V
    .locals 3
    .parameter "activity"
    .parameter "slotView"
    .parameter "selectionManager"
    .parameter "placeholderColor"

    .prologue
    const/4 v2, 0x1

    .line 50
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    .line 51
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 52
    iput-object p2, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    .line 53
    iput-object p3, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 54
    iput p4, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPlaceholderColor:I

    .line 56
    new-instance v0, Lcom/android/gallery3d/ui/ColorTexture;

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPlaceholderColor:I

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/ColorTexture;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    .line 57
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    invoke-virtual {v0, v2, v2}, Lcom/android/gallery3d/ui/ColorTexture;->setSize(II)V

    .line 58
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/AlbumSlotRenderer;)Lcom/android/gallery3d/ui/SlotView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    return-object v0
.end method

.method private static checkTexture(Lcom/android/gallery3d/ui/Texture;)Lcom/android/gallery3d/ui/Texture;
    .locals 1
    .parameter "texture"

    .prologue
    .line 92
    instance-of v0, p0, Lcom/android/gallery3d/ui/TiledTexture;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/gallery3d/ui/TiledTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TiledTexture;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .end local p0
    :cond_0
    return-object p0
.end method

.method private renderOverlay(Lcom/android/gallery3d/ui/GLCanvas;ILcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;II)I
    .locals 3
    .parameter "canvas"
    .parameter "index"
    .parameter "entry"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, renderRequestFlags:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    if-ne v1, p2, :cond_2

    .line 138
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mAnimatePressedUp:Z

    if-eqz v1, :cond_1

    .line 139
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->drawPressedUpFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 140
    or-int/lit8 v0, v0, 0x2

    .line 141
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->isPressedUpFrameFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mAnimatePressedUp:Z

    .line 143
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    .line 153
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->drawPressedFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V

    goto :goto_0

    .line 148
    :cond_2
    iget-object v1, p3, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/android/gallery3d/data/Path;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    iget-object v2, p3, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/android/gallery3d/data/Path;

    if-ne v1, v2, :cond_3

    .line 149
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->drawSelectedFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V

    goto :goto_0

    .line 150
    :cond_3
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mInSelectionMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v2, p3, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->isItemSelected(Lcom/android/gallery3d/data/Path;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->drawSelectedFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V

    goto :goto_0
.end method


# virtual methods
.method public onSlotSizeChanged(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 191
    return-void
.end method

.method public onVisibleRangeChanged(II)V
    .locals 1
    .parameter "visibleStart"
    .parameter "visibleEnd"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->setActiveWindow(II)V

    .line 186
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->pause()V

    .line 174
    return-void
.end method

.method public prepareDrawing()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mInSelectionMode:Z

    .line 179
    return-void
.end method

.method public renderSlot(Lcom/android/gallery3d/ui/GLCanvas;IIII)I
    .locals 10
    .parameter "canvas"
    .parameter "index"
    .parameter "pass"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v0, 0x0

    .line 100
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotFilter:Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotFilter:Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;

    invoke-interface {v1, p2}, Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;->acceptSlot(I)Z

    move-result v1

    if-nez v1, :cond_0

    move v9, v0

    .line 131
    :goto_0
    return v9

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v1, p2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->get(I)Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    move-result-object v6

    .line 104
    .local v6, entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    const/4 v9, 0x0

    .line 106
    .local v9, renderRequestFlags:I
    iget-object v1, v6, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->content:Lcom/android/gallery3d/ui/Texture;

    invoke-static {v1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->checkTexture(Lcom/android/gallery3d/ui/Texture;)Lcom/android/gallery3d/ui/Texture;

    move-result-object v2

    .line 107
    .local v2, content:Lcom/android/gallery3d/ui/Texture;
    if-nez v2, :cond_5

    .line 108
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isWaitDisplayed:Z

    .line 115
    :cond_1
    :goto_1
    iget v5, v6, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->rotation:I

    move-object v0, p0

    move-object v1, p1

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->drawContent(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;III)V

    .line 116
    instance-of v0, v2, Lcom/android/gallery3d/ui/FadeInTexture;

    if-eqz v0, :cond_2

    check-cast v2, Lcom/android/gallery3d/ui/FadeInTexture;

    .end local v2           #content:Lcom/android/gallery3d/ui/Texture;
    invoke-virtual {v2}, Lcom/android/gallery3d/ui/FadeInTexture;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    or-int/lit8 v9, v9, 0x2

    .line 121
    :cond_2
    iget v0, v6, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->mediaType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 122
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->drawVideoOverlay(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 125
    :cond_3
    iget-boolean v0, v6, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isPanorama:Z

    if-eqz v0, :cond_4

    .line 126
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->drawPanoramaIcon(Lcom/android/gallery3d/ui/GLCanvas;II)V

    :cond_4
    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v7, p4

    move v8, p5

    .line 129
    invoke-direct/range {v3 .. v8}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->renderOverlay(Lcom/android/gallery3d/ui/GLCanvas;ILcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;II)I

    move-result v0

    or-int/2addr v9, v0

    .line 131
    goto :goto_0

    .line 110
    .restart local v2       #content:Lcom/android/gallery3d/ui/Texture;
    :cond_5
    iget-boolean v1, v6, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isWaitDisplayed:Z

    if-eqz v1, :cond_1

    .line 111
    iput-boolean v0, v6, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isWaitDisplayed:Z

    .line 112
    new-instance v2, Lcom/android/gallery3d/ui/FadeInTexture;

    .end local v2           #content:Lcom/android/gallery3d/ui/Texture;
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPlaceholderColor:I

    iget-object v1, v6, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/android/gallery3d/ui/TiledTexture;

    invoke-direct {v2, v0, v1}, Lcom/android/gallery3d/ui/FadeInTexture;-><init>(ILcom/android/gallery3d/ui/TiledTexture;)V

    .line 113
    .restart local v2       #content:Lcom/android/gallery3d/ui/Texture;
    iput-object v2, v6, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->content:Lcom/android/gallery3d/ui/Texture;

    goto :goto_1
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->resume()V

    .line 170
    return-void
.end method

.method public setHighlightItemPath(Lcom/android/gallery3d/data/Path;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    if-ne v0, p1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0
.end method

.method public setModel(Lcom/android/gallery3d/app/AlbumDataLoader;)V
    .locals 4
    .parameter "model"

    .prologue
    const/4 v3, 0x0

    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->setListener(Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;)V

    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->setSlotCount(I)Z

    .line 82
    iput-object v3, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    .line 84
    :cond_0
    if-eqz p1, :cond_1

    .line 85
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/16 v2, 0x60

    invoke-direct {v0, v1, p1, v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/app/AlbumDataLoader;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    .line 86
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    new-instance v1, Lcom/android/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;

    invoke-direct {v1, p0, v3}, Lcom/android/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;-><init>(Lcom/android/gallery3d/ui/AlbumSlotRenderer;Lcom/android/gallery3d/ui/AlbumSlotRenderer$1;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->setListener(Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;)V

    .line 87
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AlbumDataLoader;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->setSlotCount(I)Z

    .line 89
    :cond_1
    return-void
.end method

.method public setPressedIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 61
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    if-ne v0, p1, :cond_0

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    .line 63
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0
.end method

.method public setPressedUp()V
    .locals 2

    .prologue
    .line 67
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mAnimatePressedUp:Z

    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0
.end method

.method public setSlotFilter(Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;)V
    .locals 0
    .parameter "slotFilter"

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotFilter:Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;

    .line 195
    return-void
.end method
