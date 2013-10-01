.class Lcom/android/camera/PanoProgressBar;
.super Landroid/widget/ImageView;
.source "PanoProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;
    }
.end annotation


# instance fields
.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private mDirection:I

.field private final mDoneAreaPaint:Landroid/graphics/Paint;

.field private mDrawBounds:Landroid/graphics/RectF;

.field private mHeight:F

.field private final mIndicatorPaint:Landroid/graphics/Paint;

.field private mIndicatorWidth:F

.field private mLeftMostProgress:F

.field private mListener:Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;

.field private mMaxProgress:F

.field private mProgress:F

.field private mProgressOffset:F

.field private mRightMostProgress:F

.field private mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v2, 0xff

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    .line 33
    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mMaxProgress:F

    .line 34
    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mLeftMostProgress:F

    .line 35
    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mRightMostProgress:F

    .line 36
    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mProgressOffset:F

    .line 37
    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mIndicatorWidth:F

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PanoProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PanoProgressBar;->mDoneAreaPaint:Landroid/graphics/Paint;

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PanoProgressBar;->mIndicatorPaint:Landroid/graphics/Paint;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PanoProgressBar;->mListener:Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;

    .line 53
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mDoneAreaPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mDoneAreaPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 56
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 59
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mIndicatorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 62
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    .line 63
    return-void
.end method

.method private setDirection(I)V
    .locals 2
    .parameter "direction"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    if-eq v0, p1, :cond_1

    .line 71
    iput p1, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    .line 72
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mListener:Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mListener:Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;

    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    invoke-interface {v0, v1}, Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;->onDirectionChange(I)V

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/PanoProgressBar;->invalidate()V

    .line 77
    :cond_1
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/camera/PanoProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 168
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    if-eqz v0, :cond_0

    .line 170
    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mLeftMostProgress:F

    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/android/camera/PanoProgressBar;->mRightMostProgress:F

    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/android/camera/PanoProgressBar;->mDoneAreaPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 175
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 176
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    iget v2, p0, Lcom/android/camera/PanoProgressBar;->mIndicatorWidth:F

    sub-float/2addr v0, v2

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 177
    .local v1, l:F
    iget v3, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    .line 182
    .local v3, r:F
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/android/camera/PanoProgressBar;->mIndicatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 186
    .end local v1           #l:F
    .end local v3           #r:F
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 187
    return-void

    .line 179
    :cond_1
    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    .line 180
    .restart local v1       #l:F
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    iget v2, p0, Lcom/android/camera/PanoProgressBar;->mIndicatorWidth:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/android/camera/PanoProgressBar;->mWidth:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .restart local v3       #r:F
    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v3, 0x0

    .line 101
    int-to-float v0, p1

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mWidth:F

    .line 102
    int-to-float v0, p2

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mHeight:F

    .line 103
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mWidth:F

    iget v2, p0, Lcom/android/camera/PanoProgressBar;->mHeight:F

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 104
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 158
    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    .line 159
    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mProgressOffset:F

    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/PanoProgressBar;->setDirection(I)V

    .line 161
    invoke-virtual {p0}, Lcom/android/camera/PanoProgressBar;->invalidate()V

    .line 162
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    invoke-virtual {p0}, Lcom/android/camera/PanoProgressBar;->invalidate()V

    .line 87
    return-void
.end method

.method public setDoneColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mDoneAreaPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    invoke-virtual {p0}, Lcom/android/camera/PanoProgressBar;->invalidate()V

    .line 92
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    invoke-virtual {p0}, Lcom/android/camera/PanoProgressBar;->invalidate()V

    .line 97
    return-void
.end method

.method public setIndicatorWidth(F)V
    .locals 0
    .parameter "w"

    .prologue
    .line 111
    iput p1, p0, Lcom/android/camera/PanoProgressBar;->mIndicatorWidth:F

    .line 112
    invoke-virtual {p0}, Lcom/android/camera/PanoProgressBar;->invalidate()V

    .line 113
    return-void
.end method

.method public setMaxProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 107
    int-to-float v0, p1

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mMaxProgress:F

    .line 108
    return-void
.end method

.method public setOnDirectionChangeListener(Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/camera/PanoProgressBar;->mListener:Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;

    .line 67
    return-void
.end method

.method public setProgress(I)V
    .locals 4
    .parameter "progress"

    .prologue
    const/4 v3, 0x1

    .line 133
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    if-nez v0, :cond_0

    .line 134
    const/16 v0, 0xa

    if-le p1, v0, :cond_4

    .line 135
    invoke-virtual {p0, v3}, Lcom/android/camera/PanoProgressBar;->setRightIncreasing(Z)V

    .line 141
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    if-eqz v0, :cond_3

    .line 142
    int-to-float v0, p1

    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mWidth:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mMaxProgress:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mProgressOffset:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    .line 144
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mWidth:F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    .line 145
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 147
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mRightMostProgress:F

    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mRightMostProgress:F

    .line 149
    :cond_1
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    if-ne v0, v3, :cond_2

    .line 151
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mLeftMostProgress:F

    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mLeftMostProgress:F

    .line 153
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/PanoProgressBar;->invalidate()V

    .line 155
    :cond_3
    return-void

    .line 136
    :cond_4
    const/16 v0, -0xa

    if-ge p1, v0, :cond_0

    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/PanoProgressBar;->setRightIncreasing(Z)V

    goto :goto_0
.end method

.method public setRightIncreasing(Z)V
    .locals 1
    .parameter "rightIncreasing"

    .prologue
    const/4 v0, 0x0

    .line 116
    if-eqz p1, :cond_0

    .line 117
    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mLeftMostProgress:F

    .line 118
    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mRightMostProgress:F

    .line 119
    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mProgressOffset:F

    .line 120
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/PanoProgressBar;->setDirection(I)V

    .line 127
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/PanoProgressBar;->invalidate()V

    .line 128
    return-void

    .line 122
    :cond_0
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mWidth:F

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mLeftMostProgress:F

    .line 123
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mWidth:F

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mRightMostProgress:F

    .line 124
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mWidth:F

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mProgressOffset:F

    .line 125
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/PanoProgressBar;->setDirection(I)V

    goto :goto_0
.end method
