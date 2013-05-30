.class Landroid/webkit/WebMagnifier;
.super Landroid/view/View;
.source "WebMagnifier.java"


# static fields
.field private static final BOUNDARY_STOROKE_WIDTH:F = 3.0f

.field private static final DEBUG:Z = false

.field private static final DEFAULT_ZOOM_SCALE:F = 1.2f

.field private static final DISABLE_ENLARGEMENT:Z = false

.field private static final FLEXIBLE_ZOOM_RATE:F = 0.6f

.field private static final LOGTAG:Ljava/lang/String; = "WebMagnifier"

.field private static final MAGNIFIER_PADDING:I = 0x4

.field private static final ROUND_DIAMETER:F = 10.0f

.field private static final STROKE_WIDTH:I = 0x1

.field private static final USE_BITMAP_ENLARGEMENT:Z = true

.field private static mBitmap:Landroid/graphics/Bitmap;

.field private static mBmCanvas:Landroid/graphics/Canvas;

.field private static mMagnifierHeight:I

.field private static mMagnifierWidth:I

.field private static mRectCurSel:Landroid/graphics/Rect;

.field private static mTailHeight:I

.field private static mTailWidth:I

.field private static mfFlexibleZoomScale:F

.field private static mfWebViewZoomScale:F


# instance fields
.field mAdjustY:I

.field private mBgPath:Landroid/graphics/Path;

.field private mBoundaryPaint:Landroid/graphics/Paint;

.field private mGarbageBgPath:Landroid/graphics/Path;

.field mHandleHeight:I

.field private mMagnifierPath:Landroid/graphics/Path;

.field private mMagnifierRect:Landroid/graphics/Rect;

.field mMode:I

.field private mMoves:Ljava/util/ArrayList;

.field private mPathBgFill:Landroid/graphics/Path;

.field private mShowX:I

.field private mShowY:I

.field private mSrcView:Landroid/view/View;

.field private mSrcX:I

.field private mSrcY:I

.field private mViewHeight:I

.field private mViewWidth:I

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewClassic:Landroid/webkit/WebViewClassic;

.field mbShow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 61
    sput-object v1, Landroid/webkit/WebMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    .line 62
    sput-object v1, Landroid/webkit/WebMagnifier;->mBmCanvas:Landroid/graphics/Canvas;

    .line 72
    sput v0, Landroid/webkit/WebMagnifier;->mMagnifierWidth:I

    .line 73
    sput v0, Landroid/webkit/WebMagnifier;->mMagnifierHeight:I

    .line 74
    sput v0, Landroid/webkit/WebMagnifier;->mTailWidth:I

    .line 75
    sput v0, Landroid/webkit/WebMagnifier;->mTailHeight:I

    .line 77
    sput-object v1, Landroid/webkit/WebMagnifier;->mRectCurSel:Landroid/graphics/Rect;

    .line 78
    const v0, 0x3f99999a

    sput v0, Landroid/webkit/WebMagnifier;->mfFlexibleZoomScale:F

    .line 79
    const/4 v0, 0x0

    sput v0, Landroid/webkit/WebMagnifier;->mfWebViewZoomScale:F

    return-void
.end method

.method constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 3
    .parameter "webViewClassic"

    .prologue
    const/4 v2, 0x0

    .line 112
    invoke-virtual {p1}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 97
    iput v2, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    iput v2, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    .line 100
    iput v2, p0, Landroid/webkit/WebMagnifier;->mViewWidth:I

    iput v2, p0, Landroid/webkit/WebMagnifier;->mViewHeight:I

    .line 104
    iput v2, p0, Landroid/webkit/WebMagnifier;->mAdjustY:I

    .line 106
    iput v2, p0, Landroid/webkit/WebMagnifier;->mMode:I

    .line 107
    iput v2, p0, Landroid/webkit/WebMagnifier;->mHandleHeight:I

    .line 109
    iput-boolean v2, p0, Landroid/webkit/WebMagnifier;->mbShow:Z

    .line 114
    iput-object p1, p0, Landroid/webkit/WebMagnifier;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    .line 115
    iget-object v1, p0, Landroid/webkit/WebMagnifier;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/WebMagnifier;->mWebView:Landroid/webkit/WebView;

    .line 116
    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/webkit/WebMagnifier;->setPadding(IIII)V

    .line 119
    iget-object v1, p0, Landroid/webkit/WebMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 120
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x105006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Landroid/webkit/WebMagnifier;->mMagnifierWidth:I

    .line 121
    const v1, 0x105006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Landroid/webkit/WebMagnifier;->mMagnifierHeight:I

    .line 122
    const v1, 0x105006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Landroid/webkit/WebMagnifier;->mTailWidth:I

    .line 123
    const v1, 0x105006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Landroid/webkit/WebMagnifier;->mTailHeight:I

    .line 126
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/webkit/WebMagnifier;->mBoundaryPaint:Landroid/graphics/Paint;

    .line 127
    iget-object v1, p0, Landroid/webkit/WebMagnifier;->mBoundaryPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 128
    iget-object v1, p0, Landroid/webkit/WebMagnifier;->mBoundaryPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4040

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 129
    iget-object v1, p0, Landroid/webkit/WebMagnifier;->mBoundaryPaint:Landroid/graphics/Paint;

    const v2, -0xff0001

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    .line 133
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/webkit/WebMagnifier;->mGarbageBgPath:Landroid/graphics/Path;

    .line 134
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/webkit/WebMagnifier;->mMagnifierPath:Landroid/graphics/Path;

    .line 135
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/webkit/WebMagnifier;->mMagnifierRect:Landroid/graphics/Rect;

    .line 136
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/webkit/WebMagnifier;->mPathBgFill:Landroid/graphics/Path;

    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/webkit/WebMagnifier;->mMoves:Ljava/util/ArrayList;

    .line 139
    return-void
.end method

.method private drawMagnifierContents(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 236
    sget v6, Landroid/webkit/WebMagnifier;->mMagnifierWidth:I

    int-to-float v6, v6

    sget v7, Landroid/webkit/WebMagnifier;->mfFlexibleZoomScale:F

    div-float/2addr v6, v7

    float-to-int v5, v6

    .line 237
    .local v5, zoomarea_width:I
    sget v6, Landroid/webkit/WebMagnifier;->mMagnifierHeight:I

    int-to-float v6, v6

    sget v7, Landroid/webkit/WebMagnifier;->mfFlexibleZoomScale:F

    div-float/2addr v6, v7

    float-to-int v4, v6

    .line 239
    .local v4, zoomarea_height:I
    const/4 v6, 0x2

    new-array v3, v6, [I

    .line 240
    .local v3, winloc:[I
    iget-object v6, p0, Landroid/webkit/WebMagnifier;->mWebView:Landroid/webkit/WebView;

    if-nez v6, :cond_0

    .line 241
    const-string v6, "WebMagnifier"

    const-string v7, "show : mWebView is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v6, p0, Landroid/webkit/WebMagnifier;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6, v3}, Landroid/webkit/WebView;->getLocationInWindow([I)V

    .line 246
    new-instance v2, Landroid/graphics/RectF;

    iget v6, p0, Landroid/webkit/WebMagnifier;->mSrcX:I

    aget v7, v3, v9

    add-int/2addr v6, v7

    div-int/lit8 v7, v5, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Landroid/webkit/WebMagnifier;->mSrcY:I

    aget v8, v3, v10

    add-int/2addr v7, v8

    div-int/lit8 v8, v4, 0x2

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/webkit/WebMagnifier;->mAdjustY:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Landroid/webkit/WebMagnifier;->mSrcX:I

    aget v9, v3, v9

    add-int/2addr v8, v9

    div-int/lit8 v9, v5, 0x2

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Landroid/webkit/WebMagnifier;->mSrcY:I

    aget v10, v3, v10

    add-int/2addr v9, v10

    div-int/lit8 v10, v4, 0x2

    add-int/2addr v9, v10

    iget v10, p0, Landroid/webkit/WebMagnifier;->mAdjustY:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-direct {v2, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 251
    .local v2, srcRect:Landroid/graphics/RectF;
    new-instance v0, Landroid/graphics/RectF;

    iget v6, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    int-to-float v6, v6

    iget v7, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    int-to-float v7, v7

    iget v8, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    sget v9, Landroid/webkit/WebMagnifier;->mMagnifierWidth:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    sget v10, Landroid/webkit/WebMagnifier;->mMagnifierHeight:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-direct {v0, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 258
    .local v0, destRect:Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 259
    .local v1, matrix:Landroid/graphics/Matrix;
    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v2, v0, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 267
    iget-object v6, p0, Landroid/webkit/WebMagnifier;->mSrcView:Landroid/view/View;

    sget-object v7, Landroid/webkit/WebMagnifier;->mBmCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v7}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 268
    sget-object v6, Landroid/webkit/WebMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v1, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private setShowXY(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 277
    iput p1, p0, Landroid/webkit/WebMagnifier;->mSrcX:I

    .line 278
    iput p2, p0, Landroid/webkit/WebMagnifier;->mSrcY:I

    .line 281
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 282
    .local v0, winloc:[I
    iget-object v1, p0, Landroid/webkit/WebMagnifier;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->getLocationOnScreen([I)V

    .line 284
    const/4 v1, 0x0

    aget v1, v0, v1

    add-int/2addr v1, p1

    sget v2, Landroid/webkit/WebMagnifier;->mMagnifierWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    .line 285
    const/4 v1, 0x1

    aget v1, v0, v1

    add-int/2addr v1, p2

    sget v2, Landroid/webkit/WebMagnifier;->mMagnifierHeight:I

    sub-int/2addr v1, v2

    sget v2, Landroid/webkit/WebMagnifier;->mTailHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    .line 286
    iget v1, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    iget v2, p0, Landroid/webkit/WebMagnifier;->mHandleHeight:I

    add-int/lit8 v2, v2, 0x1e

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    .line 288
    invoke-direct {p0}, Landroid/webkit/WebMagnifier;->updateDrawingPath()V

    .line 289
    return-void
.end method

.method private updateDrawingPath()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/high16 v12, 0x4120

    .line 199
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 200
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mGarbageBgPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 203
    sget v5, Landroid/webkit/WebMagnifier;->mMagnifierWidth:I

    add-int/lit8 v4, v5, -0x1

    .line 204
    .local v4, w:I
    sget v5, Landroid/webkit/WebMagnifier;->mMagnifierHeight:I

    add-int/lit8 v0, v5, -0x1

    .line 205
    .local v0, h:I
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/RectF;

    iget v7, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    iget v8, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    iget v9, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    add-int/2addr v9, v4

    int-to-float v9, v9

    iget v10, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/2addr v10, v0

    int-to-float v10, v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v12, v12, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 208
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    iget v6, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    div-int/lit8 v7, v4, 0x2

    sget v8, Landroid/webkit/WebMagnifier;->mTailWidth:I

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/2addr v7, v0

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 209
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    iget v6, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/2addr v7, v0

    sget v8, Landroid/webkit/WebMagnifier;->mTailHeight:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 210
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    iget v6, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    div-int/lit8 v7, v4, 0x2

    sget v8, Landroid/webkit/WebMagnifier;->mTailWidth:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/2addr v7, v0

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 212
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mGarbageBgPath:Landroid/graphics/Path;

    iget v6, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    sget v7, Landroid/webkit/WebMagnifier;->mTailWidth:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    iget v7, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/2addr v7, v0

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 213
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mGarbageBgPath:Landroid/graphics/Path;

    iget v6, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    sget v7, Landroid/webkit/WebMagnifier;->mTailWidth:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    iget v7, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/2addr v7, v0

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 215
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mMagnifierPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 216
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mMagnifierPath:Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/RectF;

    iget v7, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    add-int/lit8 v7, v7, 0x4

    int-to-float v7, v7

    iget v8, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/lit8 v8, v8, 0x4

    int-to-float v8, v8

    iget v9, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    sget v10, Landroid/webkit/WebMagnifier;->mMagnifierWidth:I

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x4

    int-to-float v9, v9

    iget v10, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    sget v11, Landroid/webkit/WebMagnifier;->mMagnifierHeight:I

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, -0x4

    int-to-float v10, v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v12, v12, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 220
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mMagnifierRect:Landroid/graphics/Rect;

    iget v6, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    add-int/lit8 v6, v6, 0x4

    iget v7, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/lit8 v7, v7, 0x4

    iget v8, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    sget v9, Landroid/webkit/WebMagnifier;->mMagnifierWidth:I

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x4

    iget v9, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    sget v10, Landroid/webkit/WebMagnifier;->mMagnifierHeight:I

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 224
    new-instance v2, Landroid/graphics/Region;

    iget v5, p0, Landroid/webkit/WebMagnifier;->mViewWidth:I

    iget v6, p0, Landroid/webkit/WebMagnifier;->mViewHeight:I

    invoke-direct {v2, v13, v13, v5, v6}, Landroid/graphics/Region;-><init>(IIII)V

    .line 226
    .local v2, regionClip:Landroid/graphics/Region;
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    .line 227
    .local v1, regionBgFill:Landroid/graphics/Region;
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    .line 228
    .local v3, regionMagnifier:Landroid/graphics/Region;
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    invoke-virtual {v1, v5, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 229
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mMagnifierPath:Landroid/graphics/Path;

    invoke-virtual {v3, v5, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 230
    sget-object v5, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 231
    invoke-virtual {v1}, Landroid/graphics/Region;->getBoundaryPath()Landroid/graphics/Path;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/WebMagnifier;->mPathBgFill:Landroid/graphics/Path;

    .line 233
    return-void
.end method

.method private updateZoomScale()V
    .locals 4

    .prologue
    const/high16 v3, 0x4000

    .line 294
    sget-object v0, Landroid/webkit/WebMagnifier;->mRectCurSel:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sget v1, Landroid/webkit/WebMagnifier;->mfWebViewZoomScale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 295
    :cond_0
    const v0, 0x3f99999a

    sput v0, Landroid/webkit/WebMagnifier;->mfFlexibleZoomScale:F

    .line 308
    :cond_1
    :goto_0
    return-void

    .line 298
    :cond_2
    sget v0, Landroid/webkit/WebMagnifier;->mMagnifierHeight:I

    int-to-float v0, v0

    const v1, 0x3f19999a

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    sget-object v1, Landroid/webkit/WebMagnifier;->mRectCurSel:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    sget v2, Landroid/webkit/WebMagnifier;->mfWebViewZoomScale:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    sput v0, Landroid/webkit/WebMagnifier;->mfFlexibleZoomScale:F

    .line 299
    sget v0, Landroid/webkit/WebMagnifier;->mfFlexibleZoomScale:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    .line 300
    sput v3, Landroid/webkit/WebMagnifier;->mfFlexibleZoomScale:F

    goto :goto_0
.end method


# virtual methods
.method hide()V
    .locals 6

    .prologue
    const/16 v5, 0xa5

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 392
    iget-boolean v1, p0, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebMagnifier;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    if-nez v1, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebMagnifier;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v1, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    .line 397
    .local v0, handler:Landroid/os/Handler;
    const/4 v1, 0x1

    iget-object v2, p0, Landroid/webkit/WebMagnifier;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-ne v1, v2, :cond_2

    .line 398
    iget-object v1, p0, Landroid/webkit/WebMagnifier;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 401
    :cond_2
    iput v3, p0, Landroid/webkit/WebMagnifier;->mSrcX:I

    .line 402
    iput v3, p0, Landroid/webkit/WebMagnifier;->mSrcY:I

    .line 403
    iput v3, p0, Landroid/webkit/WebMagnifier;->mAdjustY:I

    .line 404
    iput v3, p0, Landroid/webkit/WebMagnifier;->mMode:I

    .line 405
    iput v3, p0, Landroid/webkit/WebMagnifier;->mHandleHeight:I

    .line 406
    iget-object v1, p0, Landroid/webkit/WebMagnifier;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 410
    const v1, 0x3f99999a

    sput v1, Landroid/webkit/WebMagnifier;->mfFlexibleZoomScale:F

    .line 411
    sput-object v4, Landroid/webkit/WebMagnifier;->mRectCurSel:Landroid/graphics/Rect;

    .line 414
    sput-object v4, Landroid/webkit/WebMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    .line 415
    sput-object v4, Landroid/webkit/WebMagnifier;->mBmCanvas:Landroid/graphics/Canvas;

    .line 417
    iput-boolean v3, p0, Landroid/webkit/WebMagnifier;->mbShow:Z

    goto :goto_0
.end method

.method move()V
    .locals 3

    .prologue
    .line 435
    iget-boolean v1, p0, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-nez v1, :cond_0

    .line 451
    :goto_0
    return-void

    .line 438
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebMagnifier;->mMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 439
    const-string v1, "WebMagnifier"

    const-string v2, "move() is called with NO data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 442
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebMagnifier;->mMoves:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/webkit/WebMagnifier;->mMoves:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 443
    .local v0, point:[I
    if-nez v0, :cond_2

    .line 444
    const-string v1, "WebMagnifier"

    const-string v2, "Acquired move data is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 447
    :cond_2
    iget-object v1, p0, Landroid/webkit/WebMagnifier;->mMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 449
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-direct {p0, v1, v2}, Landroid/webkit/WebMagnifier;->setShowXY(II)V

    .line 450
    invoke-virtual {p0}, Landroid/webkit/WebMagnifier;->invalidate()V

    goto :goto_0
.end method

.method move(II)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v4, 0xa5

    const/4 v3, 0x0

    .line 421
    const/4 v2, 0x2

    new-array v1, v2, [I

    aput p1, v1, v3

    const/4 v2, 0x1

    aput p2, v1, v2

    .line 422
    .local v1, point:[I
    iget-object v2, p0, Landroid/webkit/WebMagnifier;->mMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    iget-object v2, p0, Landroid/webkit/WebMagnifier;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    if-nez v2, :cond_1

    .line 424
    const-string v2, "WebMagnifier"

    const-string v3, "show : mWebView is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    iget-object v2, p0, Landroid/webkit/WebMagnifier;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v2, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    .line 428
    .local v0, handler:Landroid/os/Handler;
    iget-object v2, p0, Landroid/webkit/WebMagnifier;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 429
    iget-object v2, p0, Landroid/webkit/WebMagnifier;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, v4, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, -0x1

    const/high16 v5, -0x100

    .line 145
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 146
    iget-object v4, p0, Landroid/webkit/WebMagnifier;->mWebView:Landroid/webkit/WebView;

    if-nez v4, :cond_1

    .line 147
    const-string v4, "WebMagnifier"

    const-string v5, "onDraw : called after WebView is destroyed"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-boolean v4, p0, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-eqz v4, :cond_0

    .line 157
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 159
    .local v2, saveCount:I
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 160
    .local v1, paint:Landroid/graphics/Paint;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 161
    const/high16 v4, 0x3f80

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 164
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 166
    .local v3, saveDrawCount:I
    iget-object v4, p0, Landroid/webkit/WebMagnifier;->mMagnifierRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 167
    invoke-direct {p0, p1}, Landroid/webkit/WebMagnifier;->drawMagnifierContents(Landroid/graphics/Canvas;)V

    .line 168
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 171
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 172
    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    iget-object v4, p0, Landroid/webkit/WebMagnifier;->mPathBgFill:Landroid/graphics/Path;

    invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 176
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 177
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 178
    iget-object v4, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 180
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 183
    .local v0, gPaint:Landroid/graphics/Paint;
    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 184
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 185
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 186
    const/high16 v4, 0x4000

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 187
    iget-object v4, p0, Landroid/webkit/WebMagnifier;->mGarbageBgPath:Landroid/graphics/Path;

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 190
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 191
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 192
    iget-object v4, p0, Landroid/webkit/WebMagnifier;->mMagnifierPath:Landroid/graphics/Path;

    invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 194
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method setWebView(Landroid/webkit/WebView;)V
    .locals 1
    .parameter "webView"

    .prologue
    .line 311
    if-nez p1, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebMagnifier;->hide()V

    .line 312
    :cond_0
    iput-object p1, p0, Landroid/webkit/WebMagnifier;->mWebView:Landroid/webkit/WebView;

    .line 313
    iget-object v0, p0, Landroid/webkit/WebMagnifier;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Landroid/webkit/WebMagnifier;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebMagnifier;->mContext:Landroid/content/Context;

    .line 316
    :cond_1
    return-void
.end method

.method declared-synchronized show(II)V
    .locals 12
    .parameter "x"
    .parameter "y"

    .prologue
    .line 327
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/webkit/WebMagnifier;->mWebView:Landroid/webkit/WebView;

    if-nez v1, :cond_1

    .line 328
    const-string v1, "WebMagnifier"

    const-string v2, "show : mWebView is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 331
    :cond_1
    :try_start_1
    iget-object v10, p0, Landroid/webkit/WebMagnifier;->mWebView:Landroid/webkit/WebView;

    .line 337
    .local v10, srcView:Landroid/view/View;
    :goto_1
    if-eqz v10, :cond_2

    .line 338
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_2

    .line 339
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    .end local v10           #srcView:Landroid/view/View;
    check-cast v10, Landroid/view/View;

    .restart local v10       #srcView:Landroid/view/View;
    goto :goto_1

    .line 344
    :cond_2
    if-nez v10, :cond_3

    .line 345
    const-string v1, "WebMagnifier"

    const-string v2, "show : Cannot find Decor View."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 327
    .end local v10           #srcView:Landroid/view/View;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 348
    .restart local v10       #srcView:Landroid/view/View;
    :cond_3
    :try_start_2
    iput-object v10, p0, Landroid/webkit/WebMagnifier;->mSrcView:Landroid/view/View;

    .line 350
    iget-object v1, p0, Landroid/webkit/WebMagnifier;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager;

    .line 351
    .local v11, windowManager:Landroid/view/WindowManager;
    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    .line 352
    .local v8, display:Landroid/view/Display;
    invoke-virtual {v8}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Landroid/webkit/WebMagnifier;->mViewWidth:I

    .line 353
    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Landroid/webkit/WebMagnifier;->mViewHeight:I

    .line 355
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebMagnifier;->setShowXY(II)V

    .line 358
    iget-boolean v1, p0, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-nez v1, :cond_0

    .line 361
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Landroid/webkit/WebMagnifier;->mViewWidth:I

    iget v2, p0, Landroid/webkit/WebMagnifier;->mViewHeight:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x3e8

    const/16 v6, 0x218

    const/4 v7, -0x3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 372
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 374
    :try_start_3
    invoke-interface {v11, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 380
    :goto_2
    :try_start_4
    iget v1, p0, Landroid/webkit/WebMagnifier;->mViewWidth:I

    iget v2, p0, Landroid/webkit/WebMagnifier;->mViewHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Landroid/webkit/WebMagnifier;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1

    .line 385
    :try_start_5
    new-instance v1, Landroid/graphics/Canvas;

    sget-object v2, Landroid/webkit/WebMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sput-object v1, Landroid/webkit/WebMagnifier;->mBmCanvas:Landroid/graphics/Canvas;

    .line 387
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebMagnifier;->mbShow:Z

    goto :goto_0

    .line 375
    :catch_0
    move-exception v9

    .line 376
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 381
    .end local v9           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v9

    .line 382
    .local v9, e:Ljava/lang/OutOfMemoryError;
    const-string v1, "WebMagnifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show: OutOfMemory. Cannot draw contens("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/webkit/WebMagnifier;->mViewWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/webkit/WebMagnifier;->mViewHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method

.method show(IILandroid/graphics/Rect;F)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "rtCurSel"
    .parameter "fZoomScale"

    .prologue
    .line 319
    sput-object p3, Landroid/webkit/WebMagnifier;->mRectCurSel:Landroid/graphics/Rect;

    .line 320
    sput p4, Landroid/webkit/WebMagnifier;->mfWebViewZoomScale:F

    .line 321
    invoke-direct {p0}, Landroid/webkit/WebMagnifier;->updateZoomScale()V

    .line 323
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebMagnifier;->show(II)V

    .line 324
    return-void
.end method
