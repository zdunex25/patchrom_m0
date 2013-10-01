.class public Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;
.super Lcom/android/gallery3d/ui/AbstractSlotRenderer;
.source "AlbumSetSlotRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$1;,
        Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$MyCacheListener;,
        Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field private mAnimatePressedUp:Z

.field private final mCameraOverlay:Lcom/android/gallery3d/ui/ResourceTexture;

.field protected mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

.field private mHighlightItemPath:Lcom/android/gallery3d/data/Path;

.field private mInSelectionMode:Z

.field protected final mLabelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

.field private final mPlaceholderColor:I

.field private mPressedIndex:I

.field private final mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mSlotView:Lcom/android/gallery3d/ui/SlotView;

.field private final mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;Lcom/android/gallery3d/ui/SlotView;Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;I)V
    .locals 3
    .parameter "activity"
    .parameter "selectionManager"
    .parameter "slotView"
    .parameter "labelSpec"
    .parameter "placeholderColor"

    .prologue
    const/4 v2, 0x1

    .line 64
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    .line 65
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 66
    iput-object p2, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 67
    iput-object p3, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    .line 68
    iput-object p4, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    .line 69
    iput p5, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPlaceholderColor:I

    .line 71
    new-instance v0, Lcom/android/gallery3d/ui/ColorTexture;

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPlaceholderColor:I

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/ColorTexture;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    invoke-virtual {v0, v2, v2}, Lcom/android/gallery3d/ui/ColorTexture;->setSize(II)V

    .line 73
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    const v1, 0x7f02006c

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mCameraOverlay:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 75
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;)Lcom/android/gallery3d/ui/SlotView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    return-object v0
.end method

.method private static checkContentTexture(Lcom/android/gallery3d/ui/Texture;)Lcom/android/gallery3d/ui/Texture;
    .locals 1
    .parameter "texture"

    .prologue
    .line 117
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

.method private static checkLabelTexture(Lcom/android/gallery3d/ui/Texture;)Lcom/android/gallery3d/ui/Texture;
    .locals 1
    .parameter "texture"

    .prologue
    .line 110
    instance-of v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/gallery3d/ui/UploadedTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/UploadedTexture;->isUploading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .end local p0
    :cond_0
    return-object p0
.end method


# virtual methods
.method public onSlotSizeChanged(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->onSlotSizeChanged(II)V

    .line 234
    :cond_0
    return-void
.end method

.method public onVisibleRangeChanged(II)V
    .locals 1
    .parameter "visibleStart"
    .parameter "visibleEnd"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->setActiveWindow(II)V

    .line 227
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->pause()V

    .line 216
    return-void
.end method

.method public prepareDrawing()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mInSelectionMode:Z

    .line 199
    return-void
.end method

.method protected renderContent(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I
    .locals 7
    .parameter "canvas"
    .parameter "entry"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 163
    const/4 v6, 0x0

    .line 165
    .local v6, renderRequestFlags:I
    iget-object v0, p2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->content:Lcom/android/gallery3d/ui/Texture;

    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->checkContentTexture(Lcom/android/gallery3d/ui/Texture;)Lcom/android/gallery3d/ui/Texture;

    move-result-object v2

    .line 166
    .local v2, content:Lcom/android/gallery3d/ui/Texture;
    if-nez v2, :cond_2

    .line 167
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isWaitLoadingDisplayed:Z

    .line 174
    :cond_0
    :goto_0
    iget v5, p2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->rotation:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->drawContent(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;III)V

    .line 175
    instance-of v0, v2, Lcom/android/gallery3d/ui/FadeInTexture;

    if-eqz v0, :cond_1

    check-cast v2, Lcom/android/gallery3d/ui/FadeInTexture;

    .end local v2           #content:Lcom/android/gallery3d/ui/Texture;
    invoke-virtual {v2}, Lcom/android/gallery3d/ui/FadeInTexture;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    or-int/lit8 v6, v6, 0x2

    .line 180
    :cond_1
    return v6

    .line 169
    .restart local v2       #content:Lcom/android/gallery3d/ui/Texture;
    :cond_2
    iget-boolean v0, p2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isWaitLoadingDisplayed:Z

    if-eqz v0, :cond_0

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isWaitLoadingDisplayed:Z

    .line 171
    new-instance v2, Lcom/android/gallery3d/ui/FadeInTexture;

    .end local v2           #content:Lcom/android/gallery3d/ui/Texture;
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPlaceholderColor:I

    iget-object v1, p2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/android/gallery3d/ui/TiledTexture;

    invoke-direct {v2, v0, v1}, Lcom/android/gallery3d/ui/FadeInTexture;-><init>(ILcom/android/gallery3d/ui/TiledTexture;)V

    .line 172
    .restart local v2       #content:Lcom/android/gallery3d/ui/Texture;
    iput-object v2, p2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->content:Lcom/android/gallery3d/ui/Texture;

    goto :goto_0
.end method

.method protected renderLabel(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I
    .locals 7
    .parameter "canvas"
    .parameter "entry"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 185
    iget-object v1, p2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-static {v1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->checkLabelTexture(Lcom/android/gallery3d/ui/Texture;)Lcom/android/gallery3d/ui/Texture;

    move-result-object v0

    .line 186
    .local v0, content:Lcom/android/gallery3d/ui/Texture;
    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    .line 189
    :cond_0
    invoke-static {}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->getBorderSize()I

    move-result v6

    .line 190
    .local v6, b:I
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    iget v5, v1, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    .line 191
    .local v5, h:I
    neg-int v2, v6

    sub-int v1, p4, v5

    add-int v3, v1, v6

    add-int v1, p3, v6

    add-int v4, v1, v6

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 193
    const/4 v1, 0x0

    return v1
.end method

.method protected renderOverlay(Lcom/android/gallery3d/ui/GLCanvas;ILcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I
    .locals 8
    .parameter "canvas"
    .parameter "index"
    .parameter "entry"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 135
    const/4 v6, 0x0

    .line 136
    .local v6, renderRequestFlags:I
    iget-object v0, p3, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/android/gallery3d/data/MediaSet;

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->isCameraRoll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    iget v0, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    sub-int v7, p5, v0

    .line 138
    .local v7, uncoveredHeight:I
    div-int/lit8 v4, v7, 0x2

    .line 139
    .local v4, dim:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mCameraOverlay:Lcom/android/gallery3d/ui/ResourceTexture;

    sub-int v1, p4, v4

    div-int/lit8 v2, v1, 0x2

    sub-int v1, v7, v4

    div-int/lit8 v3, v1, 0x2

    move-object v1, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/ResourceTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 142
    .end local v4           #dim:I
    .end local v7           #uncoveredHeight:I
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    if-ne v0, p2, :cond_3

    .line 143
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mAnimatePressedUp:Z

    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->drawPressedUpFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 145
    or-int/lit8 v6, v6, 0x2

    .line 146
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->isPressedUpFrameFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mAnimatePressedUp:Z

    .line 148
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    .line 158
    :cond_1
    :goto_0
    return v6

    .line 151
    :cond_2
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->drawPressedFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V

    goto :goto_0

    .line 153
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    iget-object v1, p3, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setPath:Lcom/android/gallery3d/data/Path;

    if-ne v0, v1, :cond_4

    .line 154
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->drawSelectedFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V

    goto :goto_0

    .line 155
    :cond_4
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mInSelectionMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v1, p3, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager;->isItemSelected(Lcom/android/gallery3d/data/Path;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->drawSelectedFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V

    goto :goto_0
.end method

.method public renderSlot(Lcom/android/gallery3d/ui/GLCanvas;IIII)I
    .locals 7
    .parameter "canvas"
    .parameter "index"
    .parameter "pass"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0, p2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->get(I)Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v3

    .line 126
    .local v3, entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    const/4 v6, 0x0

    .line 127
    .local v6, renderRequestFlags:I
    invoke-virtual {p0, p1, v3, p4, p5}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->renderContent(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I

    move-result v0

    or-int/2addr v6, v0

    .line 128
    invoke-virtual {p0, p1, v3, p4, p5}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->renderLabel(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I

    move-result v0

    or-int/2addr v6, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    .line 129
    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->renderOverlay(Lcom/android/gallery3d/ui/GLCanvas;ILcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I

    move-result v0

    or-int/2addr v6, v0

    .line 130
    return v6
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->resume()V

    .line 220
    return-void
.end method

.method public setHighlightItemPath(Lcom/android/gallery3d/data/Path;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    if-ne v0, p1, :cond_0

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    .line 92
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0
.end method

.method public setModel(Lcom/android/gallery3d/app/AlbumSetDataLoader;)V
    .locals 5
    .parameter "model"

    .prologue
    const/4 v4, 0x0

    .line 96
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->setListener(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;)V

    .line 98
    iput-object v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    .line 99
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->setSlotCount(I)Z

    .line 101
    :cond_0
    if-eqz p1, :cond_1

    .line 102
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const/16 v3, 0x60

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/app/AlbumSetDataLoader;Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    .line 104
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    new-instance v1, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$MyCacheListener;

    invoke-direct {v1, p0, v4}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$MyCacheListener;-><init>(Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$1;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->setListener(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;)V

    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->setSlotCount(I)Z

    .line 107
    :cond_1
    return-void
.end method

.method public setPressedIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    if-ne v0, p1, :cond_0

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    .line 80
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0
.end method

.method public setPressedUp()V
    .locals 2

    .prologue
    .line 84
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mAnimatePressedUp:Z

    .line 86
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0
.end method
