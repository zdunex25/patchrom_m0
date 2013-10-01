.class public Lcom/android/gallery3d/ui/UndoBarView;
.super Lcom/android/gallery3d/ui/GLView;
.source "UndoBarView.java"


# static fields
.field private static ANIM_TIME:J


# instance fields
.field private mAlpha:F

.field private mAnimationStartTime:J

.field private final mBarHeight:I

.field private final mBarMargin:I

.field private final mClickRegion:I

.field private final mDeletedText:Lcom/android/gallery3d/ui/StringTexture;

.field private final mDeletedTextMargin:I

.field private mDownOnButton:Z

.field private mFromAlpha:F

.field private final mIconMargin:I

.field private final mIconSize:I

.field private mOnClickListener:Lcom/android/gallery3d/ui/GLView$OnClickListener;

.field private final mPanel:Lcom/android/gallery3d/ui/NinePatchTexture;

.field private final mSeparatorBottomMargin:I

.field private final mSeparatorRightMargin:I

.field private final mSeparatorTopMargin:I

.field private final mSeparatorWidth:I

.field private mToAlpha:F

.field private final mUndoIcon:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mUndoText:Lcom/android/gallery3d/ui/StringTexture;

.field private final mUndoTextMargin:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 161
    const-wide/16 v0, 0xc8

    sput-wide v0, Lcom/android/gallery3d/ui/UndoBarView;->ANIM_TIME:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/16 v3, 0xc

    const/16 v2, 0xa

    const/4 v5, 0x1

    const/16 v4, 0x10

    .line 58
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 162
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/ui/UndoBarView;->mAnimationStartTime:J

    .line 59
    const/16 v0, 0x30

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/UndoBarView;->mBarHeight:I

    .line 60
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/UndoBarView;->mBarMargin:I

    .line 61
    invoke-static {v4}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/UndoBarView;->mUndoTextMargin:I

    .line 62
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/UndoBarView;->mIconMargin:I

    .line 63
    const/16 v0, 0x20

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/UndoBarView;->mIconSize:I

    .line 64
    invoke-static {v3}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/UndoBarView;->mSeparatorRightMargin:I

    .line 65
    invoke-static {v2}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/UndoBarView;->mSeparatorTopMargin:I

    .line 66
    invoke-static {v2}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/UndoBarView;->mSeparatorBottomMargin:I

    .line 67
    invoke-static {v5}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/UndoBarView;->mSeparatorWidth:I

    .line 68
    invoke-static {v4}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/UndoBarView;->mDeletedTextMargin:I

    .line 70
    new-instance v0, Lcom/android/gallery3d/ui/NinePatchTexture;

    const v1, 0x7f02010c

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/UndoBarView;->mPanel:Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 71
    const v0, 0x7f0a01ae

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v1

    int-to-float v1, v1

    const v2, -0x555556

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v5}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FIFZ)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/UndoBarView;->mUndoText:Lcom/android/gallery3d/ui/StringTexture;

    .line 73
    const v0, 0x7f0a01ad

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/UndoBarView;->mDeletedText:Lcom/android/gallery3d/ui/StringTexture;

    .line 76
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    const v1, 0x7f0200a3

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/UndoBarView;->mUndoIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 78
    iget v0, p0, Lcom/android/gallery3d/ui/UndoBarView;->mBarMargin:I

    iget v1, p0, Lcom/android/gallery3d/ui/UndoBarView;->mUndoTextMargin:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/gallery3d/ui/UndoBarView;->mUndoText:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/ui/UndoBarView;->mIconMargin:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/ui/UndoBarView;->mIconSize:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/ui/UndoBarView;->mSeparatorRightMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/ui/UndoBarView;->mClickRegion:I

    .line 80
    return-void
.end method

.method private advanceAnimation()V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    .line 192
    iget-wide v1, p0, Lcom/android/gallery3d/ui/UndoBarView;->mAnimationStartTime:J

    cmp-long v1, v1, v6

    if-nez v1, :cond_0

    .line 206
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/gallery3d/ui/UndoBarView;->mAnimationStartTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    sget-wide v2, Lcom/android/gallery3d/ui/UndoBarView;->ANIM_TIME:J

    long-to-float v2, v2

    div-float v0, v1, v2

    .line 196
    .local v0, delta:F
    iget v1, p0, Lcom/android/gallery3d/ui/UndoBarView;->mFromAlpha:F

    iget v2, p0, Lcom/android/gallery3d/ui/UndoBarView;->mToAlpha:F

    iget v3, p0, Lcom/android/gallery3d/ui/UndoBarView;->mFromAlpha:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .end local v0           #delta:F
    :goto_1
    add-float/2addr v1, v0

    iput v1, p0, Lcom/android/gallery3d/ui/UndoBarView;->mAlpha:F

    .line 197
    iget v1, p0, Lcom/android/gallery3d/ui/UndoBarView;->mAlpha:F

    const/high16 v2, 0x3f80

    invoke-static {v1, v5, v2}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/UndoBarView;->mAlpha:F

    .line 199
    iget v1, p0, Lcom/android/gallery3d/ui/UndoBarView;->mAlpha:F

    iget v2, p0, Lcom/android/gallery3d/ui/UndoBarView;->mToAlpha:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 200
    iput-wide v6, p0, Lcom/android/gallery3d/ui/UndoBarView;->mAnimationStartTime:J

    .line 201
    iget v1, p0, Lcom/android/gallery3d/ui/UndoBarView;->mAlpha:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_1

    .line 202
    const/4 v1, 0x1

    invoke-super {p0, v1}, Lcom/android/gallery3d/ui/GLView;->setVisibility(I)V

    .line 205
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/UndoBarView;->invalidate()V

    goto :goto_0

    .line 196
    .restart local v0       #delta:F
    :cond_2
    neg-float v0, v0

    goto :goto_1
.end method

.method private static getTargetAlpha(I)F
    .locals 1
    .parameter "visibility"

    .prologue
    .line 167
    if-nez p0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inUndoButton(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    .line 149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 150
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 151
    .local v3, y:F
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/UndoBarView;->getWidth()I

    move-result v1

    .line 152
    .local v1, w:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/UndoBarView;->getHeight()I

    move-result v0

    .line 153
    .local v0, h:I
    iget v4, p0, Lcom/android/gallery3d/ui/UndoBarView;->mClickRegion:I

    sub-int v4, v1, v4

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_0

    int-to-float v4, v1

    cmpg-float v4, v2, v4

    if-gez v4, :cond_0

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_0

    int-to-float v4, v0

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public animateVisibility(I)V
    .locals 5
    .parameter "visibility"

    .prologue
    const-wide/16 v3, -0x1

    .line 179
    invoke-static {p1}, Lcom/android/gallery3d/ui/UndoBarView;->getTargetAlpha(I)F

    move-result v0

    .line 180
    .local v0, target:F
    iget-wide v1, p0, Lcom/android/gallery3d/ui/UndoBarView;->mAnimationStartTime:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/gallery3d/ui/UndoBarView;->mAlpha:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-wide v1, p0, Lcom/android/gallery3d/ui/UndoBarView;->mAnimationStartTime:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/gallery3d/ui/UndoBarView;->mToAlpha:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    .line 183
    :cond_2
    iget v1, p0, Lcom/android/gallery3d/ui/UndoBarView;->mAlpha:F

    iput v1, p0, Lcom/android/gallery3d/ui/UndoBarView;->mFromAlpha:F

    .line 184
    iput v0, p0, Lcom/android/gallery3d/ui/UndoBarView;->mToAlpha:F

    .line 185
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->startTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/gallery3d/ui/UndoBarView;->mAnimationStartTime:J

    .line 187
    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/android/gallery3d/ui/GLView;->setVisibility(I)V

    .line 188
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/UndoBarView;->invalidate()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 88
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/gallery3d/ui/UndoBarView;->mBarHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/ui/UndoBarView;->setMeasuredSize(II)V

    .line 89
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 144
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 130
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/UndoBarView;->inUndoButton(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/UndoBarView;->mDownOnButton:Z

    goto :goto_0

    .line 133
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/UndoBarView;->mDownOnButton:Z

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/gallery3d/ui/UndoBarView;->mOnClickListener:Lcom/android/gallery3d/ui/GLView$OnClickListener;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/UndoBarView;->inUndoButton(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/android/gallery3d/ui/UndoBarView;->mOnClickListener:Lcom/android/gallery3d/ui/GLView$OnClickListener;

    invoke-interface {v0, p0}, Lcom/android/gallery3d/ui/GLView$OnClickListener;->onClick(Lcom/android/gallery3d/ui/GLView;)V

    .line 137
    :cond_1
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/UndoBarView;->mDownOnButton:Z

    goto :goto_0

    .line 141
    :pswitch_3
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/UndoBarView;->mDownOnButton:Z

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/GLView;->render(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 94
    invoke-direct {p0}, Lcom/android/gallery3d/ui/UndoBarView;->advanceAnimation()V

    .line 96
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 97
    iget v0, p0, Lcom/android/gallery3d/ui/UndoBarView;->mAlpha:F

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyAlpha(F)V

    .line 99
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/UndoBarView;->getWidth()I

    move-result v11

    .line 100
    .local v11, w:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/UndoBarView;->getHeight()I

    move-result v10

    .line 101
    .local v10, h:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/UndoBarView;->mPanel:Lcom/android/gallery3d/ui/NinePatchTexture;

    iget v2, p0, Lcom/android/gallery3d/ui/UndoBarView;->mBarMargin:I

    const/4 v3, 0x0

    iget v1, p0, Lcom/android/gallery3d/ui/UndoBarView;->mBarMargin:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v4, v11, v1

    iget v5, p0, Lcom/android/gallery3d/ui/UndoBarView;->mBarHeight:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/NinePatchTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 103
    iget v0, p0, Lcom/android/gallery3d/ui/UndoBarView;->mBarMargin:I

    sub-int v2, v11, v0

    .line 106
    .local v2, x:I
    iget v0, p0, Lcom/android/gallery3d/ui/UndoBarView;->mUndoTextMargin:I

    iget-object v1, p0, Lcom/android/gallery3d/ui/UndoBarView;->mUndoText:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v2, v0

    .line 107
    iget v0, p0, Lcom/android/gallery3d/ui/UndoBarView;->mBarHeight:I

    iget-object v1, p0, Lcom/android/gallery3d/ui/UndoBarView;->mUndoText:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/StringTexture;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v3, v0, 0x2

    .line 108
    .local v3, y:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/UndoBarView;->mUndoText:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/gallery3d/ui/StringTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 110
    iget v0, p0, Lcom/android/gallery3d/ui/UndoBarView;->mIconMargin:I

    iget v1, p0, Lcom/android/gallery3d/ui/UndoBarView;->mIconSize:I

    add-int/2addr v0, v1

    sub-int/2addr v2, v0

    .line 111
    iget v0, p0, Lcom/android/gallery3d/ui/UndoBarView;->mBarHeight:I

    iget v1, p0, Lcom/android/gallery3d/ui/UndoBarView;->mIconSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v3, v0, 0x2

    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/ui/UndoBarView;->mUndoIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    iget v4, p0, Lcom/android/gallery3d/ui/UndoBarView;->mIconSize:I

    iget v5, p0, Lcom/android/gallery3d/ui/UndoBarView;->mIconSize:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/ResourceTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 114
    iget v0, p0, Lcom/android/gallery3d/ui/UndoBarView;->mSeparatorRightMargin:I

    iget v1, p0, Lcom/android/gallery3d/ui/UndoBarView;->mSeparatorWidth:I

    add-int/2addr v0, v1

    sub-int/2addr v2, v0

    .line 115
    iget v3, p0, Lcom/android/gallery3d/ui/UndoBarView;->mSeparatorTopMargin:I

    .line 116
    int-to-float v5, v2

    int-to-float v6, v3

    iget v0, p0, Lcom/android/gallery3d/ui/UndoBarView;->mSeparatorWidth:I

    int-to-float v7, v0

    iget v0, p0, Lcom/android/gallery3d/ui/UndoBarView;->mBarHeight:I

    iget v1, p0, Lcom/android/gallery3d/ui/UndoBarView;->mSeparatorTopMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/ui/UndoBarView;->mSeparatorBottomMargin:I

    sub-int/2addr v0, v1

    int-to-float v8, v0

    const v9, -0x555556

    move-object v4, p1

    invoke-interface/range {v4 .. v9}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    .line 119
    iget v0, p0, Lcom/android/gallery3d/ui/UndoBarView;->mBarMargin:I

    iget v1, p0, Lcom/android/gallery3d/ui/UndoBarView;->mDeletedTextMargin:I

    add-int v2, v0, v1

    .line 120
    iget v0, p0, Lcom/android/gallery3d/ui/UndoBarView;->mBarHeight:I

    iget-object v1, p0, Lcom/android/gallery3d/ui/UndoBarView;->mDeletedText:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/StringTexture;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v3, v0, 0x2

    .line 121
    iget-object v0, p0, Lcom/android/gallery3d/ui/UndoBarView;->mDeletedText:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/gallery3d/ui/StringTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 123
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 124
    return-void
.end method

.method public setOnClickListener(Lcom/android/gallery3d/ui/GLView$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/gallery3d/ui/UndoBarView;->mOnClickListener:Lcom/android/gallery3d/ui/GLView$OnClickListener;

    .line 84
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 172
    invoke-static {p1}, Lcom/android/gallery3d/ui/UndoBarView;->getTargetAlpha(I)F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/UndoBarView;->mAlpha:F

    .line 173
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/ui/UndoBarView;->mAnimationStartTime:J

    .line 174
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/GLView;->setVisibility(I)V

    .line 175
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/UndoBarView;->invalidate()V

    .line 176
    return-void
.end method
