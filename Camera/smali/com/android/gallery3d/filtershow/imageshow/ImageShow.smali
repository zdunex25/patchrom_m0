.class public Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
.super Landroid/view/View;
.source "ImageShow.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/android/gallery3d/filtershow/ui/SliderListener;


# static fields
.field private static UNVEIL_HORIZONTAL:I

.field private static UNVEIL_VERTICAL:I

.field private static mBackgroundColor:I

.field private static mOriginalText:Ljava/lang/String;

.field private static mOriginalTextMargin:I

.field private static mOriginalTextSize:I

.field protected static mTextPadding:I

.field protected static mTextSize:I


# instance fields
.field private final USE_BACKGROUND_IMAGE:Z

.field private final USE_SLIDER_GESTURE:Z

.field private mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

.field private mBackgroundImage:Landroid/graphics/Bitmap;

.field private mController:Lcom/android/gallery3d/filtershow/PanelController;

.field private mCurrentFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

.field private mDirtyGeometry:Z

.field private mFilteredImage:Landroid/graphics/Bitmap;

.field private mFiltersOnlyImage:Landroid/graphics/Bitmap;

.field private mGeometryOnlyImage:Landroid/graphics/Bitmap;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mHistoryAdapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;

.field private mImageBounds:Landroid/graphics/Rect;

.field protected mImageFiltersOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

.field protected mImageGeometryOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

.field protected mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

.field protected mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

.field private mImageStateAdapter:Lcom/android/gallery3d/filtershow/ImageStateAdapter;

.field private mImportantToast:Z

.field protected mPaint:Landroid/graphics/Paint;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mShowControls:Z

.field private mShowOriginal:Z

.field private mShowOriginalDirection:I

.field private mShowToast:Z

.field protected mSliderController:Lcom/android/gallery3d/filtershow/ui/SliderController;

.field private mToast:Ljava/lang/String;

.field private mTouchDownX:I

.field private mTouchDownY:I

.field private mTouchShowOriginal:Z

.field private mTouchShowOriginalDate:J

.field private final mTouchShowOriginalDelayMax:J

.field private final mTouchShowOriginalDelayMin:J

.field protected mTouchX:F

.field protected mTouchY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0x18

    sput v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTextSize:I

    .line 59
    const/16 v0, 0x14

    sput v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTextPadding:I

    .line 71
    const/high16 v0, -0x1

    sput v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mBackgroundColor:I

    .line 93
    const/4 v0, 0x1

    sput v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->UNVEIL_HORIZONTAL:I

    .line 94
    const/4 v0, 0x2

    sput v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->UNVEIL_VERTICAL:I

    .line 101
    const/16 v0, 0x8

    sput v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalTextMargin:I

    .line 102
    const/16 v0, 0x1a

    sput v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalTextSize:I

    .line 103
    const-string v0, "Original"

    sput-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 260
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    .line 61
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 62
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageGeometryOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 63
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageFiltersOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 65
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .line 66
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mCurrentFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 67
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mDirtyGeometry:Z

    .line 69
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mBackgroundImage:Landroid/graphics/Bitmap;

    .line 70
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->USE_BACKGROUND_IMAGE:Z

    .line 73
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mGeometryOnlyImage:Landroid/graphics/Bitmap;

    .line 74
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mFiltersOnlyImage:Landroid/graphics/Bitmap;

    .line 75
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mFilteredImage:Landroid/graphics/Bitmap;

    .line 77
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->USE_SLIDER_GESTURE:Z

    .line 79
    new-instance v0, Lcom/android/gallery3d/filtershow/ui/SliderController;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/ui/SliderController;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mSliderController:Lcom/android/gallery3d/filtershow/ui/SliderController;

    .line 81
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mGestureDetector:Landroid/view/GestureDetector;

    .line 83
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mHistoryAdapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;

    .line 84
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageStateAdapter:Lcom/android/gallery3d/filtershow/ImageStateAdapter;

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    .line 88
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginal:Z

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginalDate:J

    .line 90
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginalDelayMin:J

    .line 91
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginalDelayMax:J

    .line 92
    iput v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowOriginalDirection:I

    .line 96
    iput v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchDownX:I

    .line 97
    iput v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchDownY:I

    .line 98
    iput v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchX:F

    .line 99
    iput v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchY:F

    .line 113
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowControls:Z

    .line 114
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowOriginal:Z

    .line 115
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    .line 116
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowToast:Z

    .line 117
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImportantToast:Z

    .line 119
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mSeekBar:Landroid/widget/SeekBar;

    .line 120
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mController:Lcom/android/gallery3d/filtershow/PanelController;

    .line 122
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 152
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mHandler:Landroid/os/Handler;

    .line 264
    new-instance v0, Lcom/android/gallery3d/filtershow/HistoryAdapter;

    const v1, 0x7f040013

    const v2, 0x7f100058

    invoke-direct {v0, p1, v1, v2}, Lcom/android/gallery3d/filtershow/HistoryAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mHistoryAdapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;

    .line 266
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setupGestureDetector(Landroid/content/Context;)V

    .line 267
    check-cast p1, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .end local p1
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 268
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 247
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    .line 61
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 62
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageGeometryOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 63
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageFiltersOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 65
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .line 66
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mCurrentFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 67
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mDirtyGeometry:Z

    .line 69
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mBackgroundImage:Landroid/graphics/Bitmap;

    .line 70
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->USE_BACKGROUND_IMAGE:Z

    .line 73
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mGeometryOnlyImage:Landroid/graphics/Bitmap;

    .line 74
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mFiltersOnlyImage:Landroid/graphics/Bitmap;

    .line 75
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mFilteredImage:Landroid/graphics/Bitmap;

    .line 77
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->USE_SLIDER_GESTURE:Z

    .line 79
    new-instance v0, Lcom/android/gallery3d/filtershow/ui/SliderController;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/ui/SliderController;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mSliderController:Lcom/android/gallery3d/filtershow/ui/SliderController;

    .line 81
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mGestureDetector:Landroid/view/GestureDetector;

    .line 83
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mHistoryAdapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;

    .line 84
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageStateAdapter:Lcom/android/gallery3d/filtershow/ImageStateAdapter;

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    .line 88
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginal:Z

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginalDate:J

    .line 90
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginalDelayMin:J

    .line 91
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginalDelayMax:J

    .line 92
    iput v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowOriginalDirection:I

    .line 96
    iput v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchDownX:I

    .line 97
    iput v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchDownY:I

    .line 98
    iput v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchX:F

    .line 99
    iput v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchY:F

    .line 113
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowControls:Z

    .line 114
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowOriginal:Z

    .line 115
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    .line 116
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowToast:Z

    .line 117
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImportantToast:Z

    .line 119
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mSeekBar:Landroid/widget/SeekBar;

    .line 120
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mController:Lcom/android/gallery3d/filtershow/PanelController;

    .line 122
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 152
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mHandler:Landroid/os/Handler;

    .line 251
    new-instance v0, Lcom/android/gallery3d/filtershow/HistoryAdapter;

    const v1, 0x7f040013

    const v2, 0x7f100058

    invoke-direct {v0, p1, v1, v2}, Lcom/android/gallery3d/filtershow/HistoryAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mHistoryAdapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;

    .line 253
    new-instance v0, Lcom/android/gallery3d/filtershow/ImageStateAdapter;

    const v1, 0x7f040014

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/filtershow/ImageStateAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageStateAdapter:Lcom/android/gallery3d/filtershow/ImageStateAdapter;

    .line 255
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setupGestureDetector(Landroid/content/Context;)V

    .line 256
    check-cast p1, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .end local p1
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 257
    return-void
.end method

.method static synthetic access$002(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowToast:Z

    return p1
.end method

.method private imageSizeChanged(Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter "image"

    .prologue
    const/4 v6, 0x0

    .line 626
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v5

    if-nez v5, :cond_1

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v4, v5

    .line 629
    .local v4, w:F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v1, v5

    .line 630
    .local v1, h:F
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v5

    iget-object v0, v5, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 631
    .local v0, geo:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v2

    .line 632
    .local v2, pb:Landroid/graphics/RectF;
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    cmpl-float v5, v4, v5

    if-nez v5, :cond_2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_0

    .line 635
    :cond_2
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v6, v6, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 636
    .local v3, r:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v5

    iget-object v5, v5, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v5, v3}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->setPhotoBounds(Landroid/graphics/RectF;)V

    .line 637
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v5

    iget-object v5, v5, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v5, v3}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->setCropBounds(Landroid/graphics/RectF;)V

    .line 638
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setDirtyGeometryFlag()V

    goto :goto_0
.end method

.method private parameterToUI(IIII)I
    .locals 2
    .parameter "parameter"
    .parameter "minp"
    .parameter "maxp"
    .parameter "uimax"

    .prologue
    .line 167
    sub-int v0, p1, p2

    mul-int/2addr v0, p4

    sub-int v1, p3, p2

    div-int/2addr v0, v1

    return v0
.end method

.method public static setDefaultBackgroundColor(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 125
    sput p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mBackgroundColor:I

    .line 126
    return-void
.end method

.method private setDirtyGeometryFlag()V
    .locals 1

    .prologue
    .line 614
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mDirtyGeometry:Z

    .line 615
    return-void
.end method

.method public static setOriginalText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 149
    sput-object p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalText:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public static setOriginalTextMargin(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 141
    sput p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalTextMargin:I

    .line 142
    return-void
.end method

.method public static setOriginalTextSize(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 145
    sput p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalTextSize:I

    .line 146
    return-void
.end method

.method public static setTextPadding(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 137
    sput p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTextPadding:I

    .line 138
    return-void
.end method

.method public static setTextSize(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 133
    sput p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTextSize:I

    .line 134
    return-void
.end method

.method private uiToParameter(IIII)I
    .locals 1
    .parameter "ui"
    .parameter "minp"
    .parameter "maxp"
    .parameter "uimax"

    .prologue
    .line 171
    sub-int v0, p3, p2

    mul-int/2addr v0, p1

    div-int/2addr v0, p4

    add-int/2addr v0, p2

    return v0
.end method


# virtual methods
.method protected clearDirtyGeometryFlag()V
    .locals 1

    .prologue
    .line 618
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mDirtyGeometry:Z

    .line 619
    return-void
.end method

.method public defaultDrawImage(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getFilteredImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 360
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getGeometryOnlyImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->drawPartialImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 361
    return-void
.end method

.method public drawBackground(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 553
    sget v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 555
    return-void
.end method

.method public drawImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 12
    .parameter "canvas"
    .parameter "image"

    .prologue
    const/4 v9, 0x0

    const/high16 v11, 0x4000

    .line 471
    if-eqz p2, :cond_0

    .line 472
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v2, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 475
    .local v2, s:Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-static {v7, v8, v9, v10}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scale(FFFF)F

    move-result v3

    .line 478
    .local v3, scale:F
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float v6, v7, v3

    .line 479
    .local v6, w:F
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float v1, v7, v3

    .line 480
    .local v1, h:F
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v1

    div-float v5, v7, v11

    .line 481
    .local v5, ty:F
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v6

    div-float v4, v7, v11

    .line 483
    .local v4, tx:F
    new-instance v0, Landroid/graphics/Rect;

    float-to-int v7, v4

    float-to-int v8, v5

    add-float v9, v6, v4

    float-to-int v9, v9

    add-float v10, v1, v5

    float-to-int v10, v10

    invoke-direct {v0, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 485
    .local v0, d:Landroid/graphics/Rect;
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    .line 486
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v2, v0, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 488
    .end local v0           #d:Landroid/graphics/Rect;
    .end local v1           #h:F
    .end local v2           #s:Landroid/graphics/Rect;
    .end local v3           #scale:F
    .end local v4           #tx:F
    .end local v5           #ty:F
    .end local v6           #w:F
    :cond_0
    return-void
.end method

.method public drawPartialImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 11
    .parameter "canvas"
    .parameter "image"

    .prologue
    const/high16 v10, -0x100

    const/high16 v4, 0x3f80

    .line 491
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginal:Z

    if-nez v0, :cond_0

    .line 539
    :goto_0
    return-void

    .line 493
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 494
    if-eqz p2, :cond_2

    .line 495
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowOriginalDirection:I

    if-nez v0, :cond_1

    .line 496
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchY:F

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchDownY:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchX:F

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchDownX:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 497
    sget v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->UNVEIL_VERTICAL:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowOriginalDirection:I

    .line 503
    :cond_1
    :goto_1
    const/4 v8, 0x0

    .line 504
    .local v8, px:I
    const/4 v9, 0x0

    .line 505
    .local v9, py:I
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowOriginalDirection:I

    sget v1, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->UNVEIL_VERTICAL:I

    if-ne v0, v1, :cond_4

    .line 506
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 507
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchY:F

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v9, v0

    .line 513
    :goto_2
    new-instance v7, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v8

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v9

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 515
    .local v7, d:Landroid/graphics/Rect;
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 516
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 517
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 518
    .local v5, paint:Landroid/graphics/Paint;
    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 520
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowOriginalDirection:I

    sget v1, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->UNVEIL_VERTICAL:I

    if-ne v0, v1, :cond_5

    .line 521
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchY:F

    sub-float v2, v0, v4

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchY:F

    sub-float v4, v0, v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 528
    :goto_3
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 529
    .local v6, bounds:Landroid/graphics/Rect;
    sget v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalTextSize:I

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 530
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalText:Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v5, v0, v1, v2, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 531
    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 532
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalText:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sget v2, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalTextMargin:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalTextMargin:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 534
    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 535
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalText:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sget v2, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalTextMargin:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mOriginalTextMargin:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 538
    .end local v5           #paint:Landroid/graphics/Paint;
    .end local v6           #bounds:Landroid/graphics/Rect;
    .end local v7           #d:Landroid/graphics/Rect;
    .end local v8           #px:I
    .end local v9           #py:I
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 499
    :cond_3
    sget v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->UNVEIL_HORIZONTAL:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowOriginalDirection:I

    goto/16 :goto_1

    .line 509
    .restart local v8       #px:I
    .restart local v9       #py:I
    :cond_4
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchX:F

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v8, v0

    .line 510
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v9

    goto/16 :goto_2

    .line 524
    .restart local v5       #paint:Landroid/graphics/Paint;
    .restart local v7       #d:Landroid/graphics/Rect;
    :cond_5
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchX:F

    sub-float v1, v0, v4

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchX:F

    sub-float v3, v0, v4

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_3
.end method

.method public drawToast(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0xff

    .line 335
    iget-boolean v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowToast:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 336
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 337
    .local v0, paint:Landroid/graphics/Paint;
    const/high16 v4, 0x4300

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 338
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 339
    .local v1, textWidth:F
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    float-to-int v2, v4

    .line 340
    .local v2, toastX:I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x4040

    div-float/2addr v4, v5

    float-to-int v3, v4

    .line 342
    .local v3, toastY:I
    invoke-virtual {v0, v7, v8, v8, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 343
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    add-int/lit8 v5, v2, -0x2

    int-to-float v5, v5

    add-int/lit8 v6, v3, -0x2

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 344
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    add-int/lit8 v5, v2, -0x2

    int-to-float v5, v5

    int-to-float v6, v3

    invoke-virtual {p1, v4, v5, v6, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 345
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    int-to-float v5, v2

    add-int/lit8 v6, v3, -0x2

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 346
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    add-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    add-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 347
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    add-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    int-to-float v6, v3

    invoke-virtual {p1, v4, v5, v6, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 348
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    int-to-float v5, v2

    add-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 349
    iget-boolean v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImportantToast:Z

    if-eqz v4, :cond_1

    .line 350
    const/16 v4, 0xc8

    invoke-virtual {v0, v7, v4, v8, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 354
    :goto_0
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {p1, v4, v5, v6, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 356
    .end local v0           #paint:Landroid/graphics/Paint;
    .end local v1           #textWidth:F
    .end local v2           #toastX:I
    .end local v3           #toastY:I
    :cond_0
    return-void

    .line 352
    .restart local v0       #paint:Landroid/graphics/Paint;
    .restart local v1       #textWidth:F
    .restart local v2       #toastX:I
    .restart local v3       #toastY:I
    :cond_1
    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    goto :goto_0
.end method

.method public getCurrentFilter()Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mCurrentFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    return-object v0
.end method

.method public getDefaultBackgroundColor()I
    .locals 1

    .prologue
    .line 129
    sget v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mBackgroundColor:I

    return v0
.end method

.method protected getDirtyGeometryFlag()Z
    .locals 1

    .prologue
    .line 622
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mDirtyGeometry:Z

    return v0
.end method

.method public getDisplayedImageBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFilteredImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mFilteredImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getFiltersOnlyImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mFiltersOnlyImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected getGeometry()Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    iget-object v1, v1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;-><init>(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;)V

    return-object v0
.end method

.method public getGeometryOnlyImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mGeometryOnlyImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHistory()Lcom/android/gallery3d/filtershow/HistoryAdapter;
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mHistoryAdapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;

    return-object v0
.end method

.method public getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    return-object v0
.end method

.method public getImageStateAdapter()Landroid/widget/ArrayAdapter;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageStateAdapter:Lcom/android/gallery3d/filtershow/ImageStateAdapter;

    return-object v0
.end method

.method public getPanelController()Lcom/android/gallery3d/filtershow/PanelController;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mController:Lcom/android/gallery3d/filtershow/PanelController;

    return-object v0
.end method

.method public hasModifications()Z
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v0

    if-nez v0, :cond_0

    .line 192
    const/4 v0, 0x0

    .line 194
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->hasModifications()Z

    move-result v0

    goto :goto_0
.end method

.method public imageLoaded()V
    .locals 0

    .prologue
    .line 657
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->updateImage()V

    .line 658
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->invalidate()V

    .line 659
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 780
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 786
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 798
    const/4 v0, 0x0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/16 v5, 0xc8

    const/4 v4, 0x0

    .line 365
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->drawBackground(Landroid/graphics/Canvas;)V

    .line 366
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->requestFilteredImages()V

    .line 367
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->defaultDrawImage(Landroid/graphics/Canvas;)V

    .line 369
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->showTitle()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 371
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 373
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getWidth()I

    move-result v1

    sget v2, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTextSize:I

    sget v3, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTextPadding:I

    add-int/2addr v2, v3

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 374
    .local v0, textRect:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 375
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2, v5, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 376
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->name()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTextPadding:I

    int-to-float v2, v2

    const/high16 v3, 0x3fc0

    sget v4, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTextPadding:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 380
    .end local v0           #textRect:Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->showControls()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 386
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->drawToast(Landroid/graphics/Canvas;)V

    .line 387
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter "startEvent"
    .parameter "endEvent"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 803
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->isShowingHistoryPanel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->isShowingHistoryPanel()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 805
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginal:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginal:Z

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginalDate:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 809
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->toggleHistoryPanel()V

    .line 812
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 717
    new-instance v1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mHistoryAdapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Z)V

    .line 719
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mHistoryAdapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->setCurrentPreset(I)V

    .line 720
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 819
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 276
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 277
    .local v1, parentWidth:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 278
    .local v0, parentHeight:I
    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setMeasuredDimension(II)V

    .line 283
    return-void
.end method

.method public onNewValue(I)V
    .locals 4
    .parameter "parameter"

    .prologue
    .line 217
    const/16 v0, 0x64

    .line 218
    .local v0, maxp:I
    const/16 v1, -0x64

    .line 219
    .local v1, minp:I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setParameter(I)V

    .line 221
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getMaxParameter()I

    move-result v0

    .line 222
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getMinParameter()I

    move-result v1

    .line 224
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 225
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->resetImageForPreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 226
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageStateAdapter:Lcom/android/gallery3d/filtershow/ImageStateAdapter;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->fillImageStateAdapter(Lcom/android/gallery3d/filtershow/ImageStateAdapter;)V

    .line 228
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getPanelController()Lcom/android/gallery3d/filtershow/PanelController;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 229
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getPanelController()Lcom/android/gallery3d/filtershow/PanelController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/filtershow/PanelController;->onNewValue(I)V

    .line 231
    :cond_2
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->updateSeekBar(III)V

    .line 232
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->invalidate()V

    .line 233
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .parameter "arg0"
    .parameter "progress"
    .parameter "arg2"

    .prologue
    .line 755
    move v2, p2

    .line 756
    .local v2, parameter:I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 757
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getMaxParameter()I

    move-result v0

    .line 758
    .local v0, maxp:I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getMinParameter()I

    move-result v1

    .line 759
    .local v1, minp:I
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    invoke-direct {p0, p2, v1, v0, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->uiToParameter(IIII)I

    move-result v2

    .line 762
    .end local v0           #maxp:I
    .end local v1           #minp:I
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onNewValue(I)V

    .line 763
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 824
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 831
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 792
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 836
    const/4 v0, 0x0

    return v0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 769
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 775
    return-void
.end method

.method public onTouchDown(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 237
    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchX:F

    .line 238
    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchY:F

    .line 239
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->invalidate()V

    .line 240
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 671
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 675
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v2, :cond_0

    .line 676
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 678
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 679
    .local v0, ex:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 680
    .local v1, ey:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 681
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchDownX:I

    .line 682
    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchDownY:I

    .line 683
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginalDate:J

    .line 684
    iput v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowOriginalDirection:I

    .line 686
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 687
    int-to-float v2, v0

    iput v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchX:F

    .line 688
    int-to-float v2, v1

    iput v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchY:F

    .line 689
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->isShowingHistoryPanel()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginalDate:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 692
    iput-boolean v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginal:Z

    .line 695
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v7, :cond_3

    .line 696
    iput-boolean v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchShowOriginal:Z

    .line 697
    iput v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchDownX:I

    .line 698
    iput v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchDownY:I

    .line 699
    iput v8, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchX:F

    .line 700
    iput v8, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mTouchY:F

    .line 702
    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->invalidate()V

    .line 703
    return v7
.end method

.method public onTouchUp()V
    .locals 0

    .prologue
    .line 244
    return-void
.end method

.method public requestFilteredImages()V
    .locals 4

    .prologue
    .line 425
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    if-eqz v1, :cond_3

    .line 426
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->showHires()Z

    move-result v3

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getImageForPreset(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;Lcom/android/gallery3d/filtershow/presets/ImagePreset;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 429
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 430
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mFilteredImage:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->invalidate()V

    .line 433
    :cond_0
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mFilteredImage:Landroid/graphics/Bitmap;

    .line 436
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->updateImagePresets(Z)V

    .line 437
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageGeometryOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    if-eqz v1, :cond_2

    .line 438
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageGeometryOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->showHires()Z

    move-result v3

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getImageForPreset(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;Lcom/android/gallery3d/filtershow/presets/ImagePreset;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 440
    if-eqz v0, :cond_2

    .line 441
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mGeometryOnlyImage:Landroid/graphics/Bitmap;

    .line 444
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageFiltersOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    if-eqz v1, :cond_3

    .line 445
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageFiltersOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->showHires()Z

    move-result v3

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getImageForPreset(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;Lcom/android/gallery3d/filtershow/presets/ImagePreset;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 447
    if-eqz v0, :cond_3

    .line 448
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mFiltersOnlyImage:Landroid/graphics/Bitmap;

    .line 453
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowOriginal:Z

    if-eqz v1, :cond_4

    .line 454
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mGeometryOnlyImage:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mFilteredImage:Landroid/graphics/Bitmap;

    .line 456
    :cond_4
    return-void
.end method

.method public resetImageCaches(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V
    .locals 1
    .parameter "caller"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    if-nez v0, :cond_0

    .line 394
    :goto_0
    return-void

    .line 393
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->updateImagePresets(Z)V

    goto :goto_0
.end method

.method public resetParameter()V
    .locals 2

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v0

    .line 199
    .local v0, currentFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getDefaultParameter()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onNewValue(I)V

    .line 205
    :cond_0
    return-void
.end method

.method public saveImage(Lcom/android/gallery3d/filtershow/FilterShowActivity;Ljava/io/File;)V
    .locals 2
    .parameter "filterShowActivity"
    .parameter "file"

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->saveImage(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Lcom/android/gallery3d/filtershow/FilterShowActivity;Ljava/io/File;)V

    .line 667
    return-void
.end method

.method public select()V
    .locals 4

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getParameter()I

    move-result v2

    .line 157
    .local v2, parameter:I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getMaxParameter()I

    move-result v0

    .line 158
    .local v0, maxp:I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getMinParameter()I

    move-result v1

    .line 159
    .local v1, minp:I
    invoke-virtual {p0, v2, v1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->updateSeekBar(III)V

    .line 161
    .end local v0           #maxp:I
    .end local v1           #minp:I
    .end local v2           #parameter:I
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v3, :cond_1

    .line 162
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 164
    :cond_1
    return-void
.end method

.method public setCurrentFilter(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mCurrentFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 291
    return-void
.end method

.method public setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V
    .locals 2
    .parameter "loader"

    .prologue
    .line 604
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .line 605
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->addListener(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 607
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 611
    :cond_0
    return-void
.end method

.method public setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V
    .locals 1
    .parameter "preset"

    .prologue
    .line 584
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Z)V

    .line 585
    return-void
.end method

.method public setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Z)V
    .locals 2
    .parameter "preset"
    .parameter "addToHistory"

    .prologue
    .line 588
    if-nez p1, :cond_0

    .line 601
    :goto_0
    return-void

    .line 591
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 592
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 593
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->updateImagePresets(Z)V

    .line 594
    if-eqz p2, :cond_1

    .line 595
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mHistoryAdapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->addHistoryItem(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 597
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setEndpoint(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 598
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->updateImage()V

    .line 599
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageStateAdapter:Lcom/android/gallery3d/filtershow/ImageStateAdapter;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->fillImageStateAdapter(Lcom/android/gallery3d/filtershow/ImageStateAdapter;)V

    .line 600
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->invalidate()V

    goto :goto_0
.end method

.method public setPanelController(Lcom/android/gallery3d/filtershow/PanelController;)V
    .locals 0
    .parameter "controller"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mController:Lcom/android/gallery3d/filtershow/PanelController;

    .line 209
    return-void
.end method

.method public setSeekBar(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mSeekBar:Landroid/widget/SeekBar;

    .line 287
    return-void
.end method

.method public setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
    .locals 2
    .parameter "value"

    .prologue
    .line 558
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowControls:Z

    .line 559
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowControls:Z

    if-eqz v0, :cond_1

    .line 560
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 568
    :cond_0
    :goto_0
    return-object p0

    .line 564
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public setupGestureDetector(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 271
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mGestureDetector:Landroid/view/GestureDetector;

    .line 272
    return-void
.end method

.method public showControls()Z
    .locals 1

    .prologue
    .line 572
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowControls:Z

    return v0
.end method

.method public showHires()Z
    .locals 1

    .prologue
    .line 576
    const/4 v0, 0x1

    return v0
.end method

.method public showTitle()Z
    .locals 1

    .prologue
    .line 580
    const/4 v0, 0x0

    return v0
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 302
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->showToast(Ljava/lang/String;Z)V

    .line 303
    return-void
.end method

.method public showToast(Ljava/lang/String;Z)V
    .locals 4
    .parameter "text"
    .parameter "important"

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mShowToast:Z

    .line 308
    iput-boolean p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImportantToast:Z

    .line 309
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->invalidate()V

    .line 311
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow$1;-><init>(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 318
    return-void
.end method

.method public unselect()V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public updateFilteredImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 662
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mFilteredImage:Landroid/graphics/Bitmap;

    .line 663
    return-void
.end method

.method public updateGeometryFlags()Z
    .locals 1

    .prologue
    .line 642
    const/4 v0, 0x1

    return v0
.end method

.method public updateImage()V
    .locals 2

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->updateGeometryFlags()Z

    move-result v1

    if-nez v1, :cond_1

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOriginalBitmapLarge()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 650
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 651
    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->imageSizeChanged(Landroid/graphics/Bitmap;)V

    .line 652
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->invalidate()V

    goto :goto_0
.end method

.method public updateImagePresets(Z)V
    .locals 6
    .parameter "force"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 397
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    .line 398
    .local v1, preset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    if-nez v1, :cond_1

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    if-eqz p1, :cond_2

    .line 402
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->resetImageForPreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 404
    :cond_2
    if-nez p1, :cond_3

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageGeometryOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    if-nez v2, :cond_5

    .line 405
    :cond_3
    new-instance v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 406
    .local v0, newPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setDoApplyFilters(Z)V

    .line 407
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageGeometryOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageGeometryOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->same(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 409
    :cond_4
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageGeometryOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 410
    iput-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mGeometryOnlyImage:Landroid/graphics/Bitmap;

    .line 413
    .end local v0           #newPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    :cond_5
    if-nez p1, :cond_6

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageFiltersOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    if-nez v2, :cond_0

    .line 414
    :cond_6
    new-instance v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 415
    .restart local v0       #newPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setDoApplyGeometry(Z)V

    .line 416
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageFiltersOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageFiltersOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->same(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 418
    :cond_7
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageFiltersOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 419
    iput-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mFiltersOnlyImage:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public updateSeekBar(III)V
    .locals 3
    .parameter "parameter"
    .parameter "minp"
    .parameter "maxp"

    .prologue
    .line 175
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v2, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    .line 179
    .local v1, seekMax:I
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->parameterToUI(IIII)I

    move-result v0

    .line 180
    .local v0, progress:I
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 181
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getPanelController()Lcom/android/gallery3d/filtershow/PanelController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getPanelController()Lcom/android/gallery3d/filtershow/PanelController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/filtershow/PanelController;->onNewValue(I)V

    goto :goto_0
.end method
