.class public Lcom/android/gallery3d/app/TrimTimeBar;
.super Lcom/android/gallery3d/app/TimeBar;
.source "TrimTimeBar.java"


# instance fields
.field private mPressedThumb:I

.field private final mTrimEndScrubber:Landroid/graphics/Bitmap;

.field private mTrimEndScrubberLeft:I

.field private mTrimEndScrubberTop:I

.field private mTrimEndTime:I

.field private final mTrimStartScrubber:Landroid/graphics/Bitmap;

.field private mTrimStartScrubberLeft:I

.field private mTrimStartScrubberTop:I

.field private mTrimStartTime:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/app/TimeBar$Listener;)V
    .locals 3
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/TimeBar;-><init>(Landroid/content/Context;Lcom/android/gallery3d/app/TimeBar$Listener;)V

    .line 38
    iput v2, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mPressedThumb:I

    .line 57
    iput v2, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartTime:I

    .line 58
    iput v2, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndTime:I

    .line 59
    iput v2, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    .line 60
    iput v2, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    .line 61
    iput v2, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberTop:I

    .line 62
    iput v2, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubberTop:I

    .line 64
    invoke-virtual {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020153

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubber:Landroid/graphics/Bitmap;

    .line 66
    invoke-virtual {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020154

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubber:Landroid/graphics/Bitmap;

    .line 70
    iput v2, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mScrubberPadding:I

    .line 71
    iget v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mVPaddingInPx:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mVPaddingInPx:I

    .line 72
    return-void
.end method

.method private clampScrubber(IIII)I
    .locals 3
    .parameter "scrubberLeft"
    .parameter "offset"
    .parameter "lowerBound"
    .parameter "upperBound"

    .prologue
    .line 156
    sub-int v0, p4, p2

    .line 157
    .local v0, max:I
    sub-int v1, p3, p2

    .line 158
    .local v1, min:I
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method private getBarPosFromTime(I)I
    .locals 5
    .parameter "time"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mProgressBar:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-long v1, v1

    int-to-long v3, p1

    mul-long/2addr v1, v3

    iget v3, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTotalTime:I

    int-to-long v3, v3

    div-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getScrubberTime(II)I
    .locals 4
    .parameter "scrubberLeft"
    .parameter "offset"

    .prologue
    .line 162
    add-int v0, p1, p2

    iget-object v1, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mProgressBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget v2, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTotalTime:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private inScrubber(FFIILandroid/graphics/Bitmap;)Z
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "startX"
    .parameter "startY"
    .parameter "scrubber"

    .prologue
    .line 150
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int v1, p3, v2

    .line 151
    .local v1, scrubberRight:I
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int v0, p4, v2

    .line 152
    .local v0, scrubberBottom:I
    int-to-float v2, p3

    cmpg-float v2, v2, p1

    if-gez v2, :cond_0

    int-to-float v2, v1

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    int-to-float v2, p4

    cmpg-float v2, v2, p2

    if-gez v2, :cond_0

    int-to-float v2, v0

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initTrimTimeIfNeeded()V
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTotalTime:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndTime:I

    if-nez v0, :cond_0

    .line 114
    iget v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTotalTime:I

    iput v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndTime:I

    .line 116
    :cond_0
    return-void
.end method

.method private trimEndScrubberTipOffset()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private trimStartScrubberTipOffset()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private update()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->initTrimTimeIfNeeded()V

    .line 120
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->updatePlayedBarAndScrubberFromTime()V

    .line 121
    invoke-virtual {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->invalidate()V

    .line 122
    return-void
.end method

.method private updatePlayedBarAndScrubberFromTime()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mPlayedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 92
    iget v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTotalTime:I

    if-lez v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mPlayedBar:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartTime:I

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/TrimTimeBar;->getBarPosFromTime(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 95
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mPlayedBar:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mCurrentTime:I

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/TrimTimeBar;->getBarPosFromTime(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 96
    iget-boolean v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mScrubbing:Z

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mPlayedBar:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mScrubberLeft:I

    .line 98
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mPlayedBar:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->trimStartScrubberTipOffset()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    .line 99
    iget v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndTime:I

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/TrimTimeBar;->getBarPosFromTime(I)I

    move-result v0

    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->trimEndScrubberTipOffset()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mPlayedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mProgressBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 106
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mProgressBar:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mScrubberLeft:I

    .line 107
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mProgressBar:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->trimStartScrubberTipOffset()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    .line 108
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mProgressBar:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->trimEndScrubberTipOffset()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    goto :goto_0
.end method

.method private updateTimeFromPos()V
    .locals 2

    .prologue
    .line 219
    iget v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mScrubberLeft:I

    iget-object v1, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/app/TrimTimeBar;->getScrubberTime(II)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mCurrentTime:I

    .line 220
    iget v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->trimStartScrubberTipOffset()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/app/TrimTimeBar;->getScrubberTime(II)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartTime:I

    .line 221
    iget v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->trimEndScrubberTipOffset()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/app/TrimTimeBar;->getScrubberTime(II)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndTime:I

    .line 222
    return-void
.end method

.method private whichScrubber(FF)I
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 139
    iget v3, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    iget v4, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberTop:I

    iget-object v5, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubber:Landroid/graphics/Bitmap;

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/app/TrimTimeBar;->inScrubber(FFIILandroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    const/4 v0, 0x1

    .line 146
    :goto_0
    return v0

    .line 141
    :cond_0
    iget v3, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    iget v4, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubberTop:I

    iget-object v5, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubber:Landroid/graphics/Bitmap;

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/app/TrimTimeBar;->inScrubber(FFIILandroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    const/4 v0, 0x3

    goto :goto_0

    .line 143
    :cond_1
    iget v3, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mScrubberLeft:I

    iget v4, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mScrubberTop:I

    iget-object v5, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mScrubber:Landroid/graphics/Bitmap;

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/app/TrimTimeBar;->inScrubber(FFIILandroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    const/4 v0, 0x2

    goto :goto_0

    .line 146
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 192
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mProgressBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 193
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mPlayedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mPlayedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 195
    iget-boolean v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mShowTimes:Z

    if-eqz v0, :cond_0

    .line 196
    iget v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mCurrentTime:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/app/TrimTimeBar;->stringForTime(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTimeBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTimeBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberTop:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTimeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 201
    iget v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTotalTime:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/app/TrimTimeBar;->stringForTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTimeBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTimeBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberTop:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTimeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 209
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mShowScrubber:Z

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mScrubber:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mScrubberLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mScrubberTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 211
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubber:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 213
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubber:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubberTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 216
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v6, 0x0

    .line 168
    sub-int v4, p4, p2

    .line 169
    .local v4, w:I
    sub-int v0, p5, p3

    .line 170
    .local v0, h:I
    iget-boolean v5, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mShowTimes:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mShowScrubber:Z

    if-nez v5, :cond_0

    .line 171
    iget-object v5, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v5, v6, v6, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 186
    :goto_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->update()V

    .line 187
    return-void

    .line 173
    :cond_0
    iget-object v5, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v1, v5, 0x3

    .line 174
    .local v1, margin:I
    iget-boolean v5, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mShowTimes:Z

    if-eqz v5, :cond_1

    .line 175
    iget-object v5, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTimeBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v1, v5

    .line 177
    :cond_1
    div-int/lit8 v2, v0, 0x4

    .line 178
    .local v2, progressY:I
    iget-object v5, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v2, v5

    add-int/lit8 v3, v5, 0x1

    .line 179
    .local v3, scrubberY:I
    iput v3, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mScrubberTop:I

    .line 180
    iput v2, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberTop:I

    .line 181
    iput v2, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubberTop:I

    .line 182
    iget-object v5, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mProgressBar:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->getPaddingLeft()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->getPaddingRight()I

    move-result v7

    sub-int v7, v4, v7

    sub-int/2addr v7, v1

    add-int/lit8 v8, v2, 0x4

    invoke-virtual {v5, v6, v2, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 226
    iget-boolean v7, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mShowScrubber:Z

    if-eqz v7, :cond_0

    .line 227
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v3, v7

    .line 228
    .local v3, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v4, v7

    .line 230
    .local v4, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .end local v3           #x:I
    .end local v4           #y:I
    :cond_0
    move v5, v6

    .line 337
    :goto_0
    return v5

    .line 232
    .restart local v3       #x:I
    .restart local v4       #y:I
    :pswitch_0
    int-to-float v7, v3

    int-to-float v8, v4

    invoke-direct {p0, v7, v8}, Lcom/android/gallery3d/app/TrimTimeBar;->whichScrubber(FF)I

    move-result v7

    iput v7, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mPressedThumb:I

    .line 233
    iget v7, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mPressedThumb:I

    packed-switch v7, :pswitch_data_1

    .line 249
    :goto_1
    :pswitch_1
    iget-boolean v7, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mScrubbing:Z

    if-ne v7, v5, :cond_0

    .line 250
    iget-object v6, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mListener:Lcom/android/gallery3d/app/TimeBar$Listener;

    invoke-interface {v6}, Lcom/android/gallery3d/app/TimeBar$Listener;->onScrubbingStart()V

    goto :goto_0

    .line 237
    :pswitch_2
    iput-boolean v5, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mScrubbing:Z

    .line 238
    iget v7, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mScrubberLeft:I

    sub-int v7, v3, v7

    iput v7, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mScrubberCorrection:I

    goto :goto_1

    .line 241
    :pswitch_3
    iput-boolean v5, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mScrubbing:Z

    .line 242
    iget v7, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    sub-int v7, v3, v7

    iput v7, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mScrubberCorrection:I

    goto :goto_1

    .line 245
    :pswitch_4
    iput-boolean v5, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mScrubbing:Z

    .line 246
    iget v7, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    sub-int v7, v3, v7

    iput v7, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mScrubberCorrection:I

    goto :goto_1

    .line 255
    :pswitch_5
    iget-boolean v7, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mScrubbing:Z

    if-eqz v7, :cond_0

    .line 256
    const/4 v1, -0x1

    .line 257
    .local v1, seekToTime:I
    iget v6, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->trimStartScrubberTipOffset()I

    move-result v7

    add-int v0, v6, v7

    .line 258
    .local v0, lowerBound:I
    iget v6, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->trimEndScrubberTipOffset()I

    move-result v7

    add-int v2, v6, v7

    .line 259
    .local v2, upperBound:I
    iget v6, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mPressedThumb:I

    packed-switch v6, :pswitch_data_2

    .line 294
    :goto_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->updateTimeFromPos()V

    .line 295
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->updatePlayedBarAndScrubberFromTime()V

    .line 296
    const/4 v6, -0x1

    if-eq v1, v6, :cond_1

    .line 297
    iget-object v6, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mListener:Lcom/android/gallery3d/app/TimeBar$Listener;

    invoke-interface {v6, v1}, Lcom/android/gallery3d/app/TimeBar$Listener;->onScrubbingMove(I)V

    .line 299
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->invalidate()V

    goto :goto_0

    .line 261
    :pswitch_6
    iget v6, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mScrubberCorrection:I

    sub-int v6, v3, v6

    iput v6, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mScrubberLeft:I

    .line 262
    iget v6, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mScrubberLeft:I

    iget-object v7, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    invoke-direct {p0, v6, v7, v0, v2}, Lcom/android/gallery3d/app/TrimTimeBar;->clampScrubber(IIII)I

    move-result v6

    iput v6, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mScrubberLeft:I

    .line 266
    iget v6, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mScrubberLeft:I

    iget-object v7, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    invoke-direct {p0, v6, v7}, Lcom/android/gallery3d/app/TrimTimeBar;->getScrubberTime(II)I

    move-result v1

    .line 268
    goto :goto_2

    .line 270
    :pswitch_7
    iget v6, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mScrubberCorrection:I

    sub-int v6, v3, v6

    iput v6, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    .line 272
    iget v6, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    iget v7, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    if-le v6, v7, :cond_2

    .line 273
    iget v6, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    iput v6, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    .line 275
    :cond_2
    iget-object v6, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mProgressBar:Landroid/graphics/Rect;

    iget v0, v6, Landroid/graphics/Rect;->left:I

    .line 276
    iget v6, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->trimStartScrubberTipOffset()I

    move-result v7

    invoke-direct {p0, v6, v7, v0, v2}, Lcom/android/gallery3d/app/TrimTimeBar;->clampScrubber(IIII)I

    move-result v6

    iput v6, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    .line 280
    iget v6, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->trimStartScrubberTipOffset()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/android/gallery3d/app/TrimTimeBar;->getScrubberTime(II)I

    move-result v1

    .line 282
    goto :goto_2

    .line 284
    :pswitch_8
    iget v6, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mScrubberCorrection:I

    sub-int v6, v3, v6

    iput v6, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    .line 285
    iget-object v6, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mProgressBar:Landroid/graphics/Rect;

    iget v2, v6, Landroid/graphics/Rect;->right:I

    .line 286
    iget v6, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->trimEndScrubberTipOffset()I

    move-result v7

    invoke-direct {p0, v6, v7, v0, v2}, Lcom/android/gallery3d/app/TrimTimeBar;->clampScrubber(IIII)I

    move-result v6

    iput v6, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    .line 290
    iget v6, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->trimEndScrubberTipOffset()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/android/gallery3d/app/TrimTimeBar;->getScrubberTime(II)I

    move-result v1

    goto/16 :goto_2

    .line 305
    .end local v0           #lowerBound:I
    .end local v1           #seekToTime:I
    .end local v2           #upperBound:I
    :pswitch_9
    iget-boolean v7, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mScrubbing:Z

    if-eqz v7, :cond_0

    .line 306
    const/4 v1, 0x0

    .line 307
    .restart local v1       #seekToTime:I
    iget v7, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mPressedThumb:I

    packed-switch v7, :pswitch_data_3

    .line 325
    :goto_3
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->updateTimeFromPos()V

    .line 326
    iget-object v7, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mListener:Lcom/android/gallery3d/app/TimeBar$Listener;

    iget v8, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->trimStartScrubberTipOffset()I

    move-result v9

    invoke-direct {p0, v8, v9}, Lcom/android/gallery3d/app/TrimTimeBar;->getScrubberTime(II)I

    move-result v8

    iget v9, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->trimEndScrubberTipOffset()I

    move-result v10

    invoke-direct {p0, v9, v10}, Lcom/android/gallery3d/app/TrimTimeBar;->getScrubberTime(II)I

    move-result v9

    invoke-interface {v7, v1, v8, v9}, Lcom/android/gallery3d/app/TimeBar$Listener;->onScrubbingEnd(III)V

    .line 330
    iput-boolean v6, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mScrubbing:Z

    .line 331
    iput v6, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mPressedThumb:I

    goto/16 :goto_0

    .line 309
    :pswitch_a
    iget v7, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mScrubberLeft:I

    iget-object v8, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    invoke-direct {p0, v7, v8}, Lcom/android/gallery3d/app/TrimTimeBar;->getScrubberTime(II)I

    move-result v1

    .line 311
    goto :goto_3

    .line 313
    :pswitch_b
    iget v7, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->trimStartScrubberTipOffset()I

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/android/gallery3d/app/TrimTimeBar;->getScrubberTime(II)I

    move-result v1

    .line 315
    iget v7, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartScrubberLeft:I

    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->trimStartScrubberTipOffset()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mScrubberLeft:I

    goto :goto_3

    .line 319
    :pswitch_c
    iget v7, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->trimEndScrubberTipOffset()I

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/android/gallery3d/app/TrimTimeBar;->getScrubberTime(II)I

    move-result v1

    .line 321
    iget v7, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndScrubberLeft:I

    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->trimEndScrubberTipOffset()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mScrubberLeft:I

    goto :goto_3

    .line 230
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_9
        :pswitch_5
        :pswitch_9
    .end packed-switch

    .line 233
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch

    .line 259
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch

    .line 307
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_c
    .end packed-switch
.end method

.method public setTime(IIII)V
    .locals 1
    .parameter "currentTime"
    .parameter "totalTime"
    .parameter "trimStartTime"
    .parameter "trimEndTime"

    .prologue
    .line 127
    iget v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mCurrentTime:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTotalTime:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartTime:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndTime:I

    if-ne v0, p4, :cond_0

    .line 136
    :goto_0
    return-void

    .line 131
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mCurrentTime:I

    .line 132
    iput p2, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTotalTime:I

    .line 133
    iput p3, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimStartTime:I

    .line 134
    iput p4, p0, Lcom/android/gallery3d/app/TrimTimeBar;->mTrimEndTime:I

    .line 135
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimTimeBar;->update()V

    goto :goto_0
.end method
