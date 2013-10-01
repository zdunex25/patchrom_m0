.class public Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
.source "ImageSmallFilter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field protected static mBackgroundColor:I

.field protected static mMargin:I

.field protected static mTextMargin:I


# instance fields
.field private mController:Lcom/android/gallery3d/filtershow/FilterShowActivity;

.field protected mImageFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

.field protected mIsSelected:Z

.field private mNullFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

.field protected final mPaint:Landroid/graphics/Paint;

.field protected final mSelectedBackgroundColor:I

.field private mSetBorder:Z

.field private mShowTitle:Z

.field protected final mTextColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0xc

    sput v0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mMargin:I

    .line 44
    const/16 v0, 0x8

    sput v0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mTextMargin:I

    .line 45
    const v0, -0xffff01

    sput v0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mBackgroundColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 68
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mController:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 36
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mImageFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mShowTitle:Z

    .line 38
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mSetBorder:Z

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    .line 40
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mIsSelected:Z

    .line 46
    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mSelectedBackgroundColor:I

    .line 47
    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mTextColor:I

    .line 69
    invoke-virtual {p0, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mController:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 36
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mImageFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mShowTitle:Z

    .line 38
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mSetBorder:Z

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    .line 40
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mIsSelected:Z

    .line 46
    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mSelectedBackgroundColor:I

    .line 47
    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mTextColor:I

    .line 64
    invoke-virtual {p0, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-void
.end method

.method public static setDefaultBackgroundColor(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 59
    sput p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mBackgroundColor:I

    .line 60
    return-void
.end method

.method public static setMargin(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 51
    sput p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mMargin:I

    .line 52
    return-void
.end method

.method public static setTextMargin(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 55
    sput p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mTextMargin:I

    .line 56
    return-void
.end method


# virtual methods
.method public drawImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 8
    .parameter "canvas"
    .parameter "image"
    .parameter "destination"

    .prologue
    const/high16 v7, 0x4000

    .line 194
    if-eqz p2, :cond_0

    .line 195
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 196
    .local v1, iw:I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 197
    .local v0, ih:I
    const/4 v4, 0x0

    .line 198
    .local v4, x:I
    const/4 v5, 0x0

    .line 199
    .local v5, y:I
    const/4 v2, 0x0

    .line 200
    .local v2, size:I
    const/4 v3, 0x0

    .line 201
    .local v3, source:Landroid/graphics/Rect;
    if-le v1, v0, :cond_1

    .line 202
    move v2, v0

    .line 203
    sub-int v6, v1, v2

    int-to-float v6, v6

    div-float/2addr v6, v7

    float-to-int v4, v6

    .line 204
    const/4 v5, 0x0

    .line 210
    :goto_0
    new-instance v3, Landroid/graphics/Rect;

    .end local v3           #source:Landroid/graphics/Rect;
    add-int v6, v4, v2

    add-int v7, v5, v2

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 211
    .restart local v3       #source:Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v3, p3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 213
    .end local v0           #ih:I
    .end local v1           #iw:I
    .end local v2           #size:I
    .end local v3           #source:Landroid/graphics/Rect;
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_0
    return-void

    .line 206
    .restart local v0       #ih:I
    .restart local v1       #iw:I
    .restart local v2       #size:I
    .restart local v3       #source:Landroid/graphics/Rect;
    .restart local v4       #x:I
    .restart local v5       #y:I
    :cond_1
    move v2, v1

    .line 207
    const/4 v4, 0x0

    .line 208
    sub-int v6, v0, v2

    int-to-float v6, v6

    div-float/2addr v6, v7

    float-to-int v5, v6

    goto :goto_0
.end method

.method public getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mController:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mImageFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    if-eqz v0, :cond_2

    .line 117
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mIsSelected:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mNullFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mNullFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->onClick(Landroid/view/View;)V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mController:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mImageFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    iget-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mSetBorder:Z

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->useImageFilter(Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;Lcom/android/gallery3d/filtershow/filters/ImageFilter;Z)V

    goto :goto_0

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    if-eqz v0, :cond_0

    .line 124
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mIsSelected:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mNullFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    if-eqz v0, :cond_3

    .line 125
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mNullFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mController:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-virtual {v0, p0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->useImagePreset(Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const/4 v11, -0x1

    .line 176
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->requestFilteredImages()V

    .line 177
    sget v0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 178
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mImageFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    .line 179
    .local v8, textWidth:F
    sget v0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mTextSize:I

    sget v1, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mTextPadding:I

    mul-int/lit8 v1, v1, 0x2

    add-int v7, v0, v1

    .line 180
    .local v7, h:I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v8

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    float-to-int v9, v0

    .line 181
    .local v9, x:I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->getHeight()I

    move-result v10

    .line 182
    .local v10, y:I
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mIsSelected:Z

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 184
    const/4 v1, 0x0

    sget v0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mMargin:I

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->getWidth()I

    move-result v0

    sget v4, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mMargin:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 186
    :cond_0
    new-instance v6, Landroid/graphics/Rect;

    sget v0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mMargin:I

    sget v1, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mMargin:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->getWidth()I

    move-result v2

    sget v3, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mMargin:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->getWidth()I

    move-result v3

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 187
    .local v6, destination:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->getFilteredImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v6}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 188
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 189
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 190
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mImageFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object v0

    int-to-float v1, v9

    sget v2, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mTextMargin:I

    sub-int v2, v10, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 191
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 98
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 99
    .local v2, parentWidth:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 100
    .local v1, parentHeight:I
    sget v3, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mTextSize:I

    sget v4, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mTextPadding:I

    add-int v0, v3, v4

    .line 101
    .local v0, h:I
    sub-int v3, v1, v0

    invoke-virtual {p0, v3, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setMeasuredDimension(II)V

    .line 102
    return-void
.end method

.method public setBorder(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mSetBorder:Z

    .line 90
    return-void
.end method

.method public setController(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mController:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 94
    return-void
.end method

.method public setImageFilter(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V
    .locals 2
    .parameter "filter"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mImageFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 74
    new-instance v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setName(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 77
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mImageFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->add(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    .line 78
    return-void
.end method

.method public setNulfilter(Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;)V
    .locals 0
    .parameter "nullFilter"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mNullFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    .line 111
    return-void
.end method

.method public setSelected(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mIsSelected:Z

    if-eq v0, p1, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->invalidate()V

    .line 85
    :cond_0
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mIsSelected:Z

    .line 86
    return-void
.end method

.method public setShowTitle(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mShowTitle:Z

    .line 143
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->invalidate()V

    .line 144
    return-void
.end method

.method public showControls()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public showHires()Z
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public showTitle()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->mShowTitle:Z

    return v0
.end method

.method public updateGeometryFlags()Z
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public updateImagePresets(Z)V
    .locals 1
    .parameter "force"

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v0

    .line 169
    .local v0, preset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    if-nez v0, :cond_0

    .line 172
    :cond_0
    return-void
.end method
