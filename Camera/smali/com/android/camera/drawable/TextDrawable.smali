.class public Lcom/android/camera/drawable/TextDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TextDrawable.java"


# instance fields
.field private mIntrinsicHeight:I

.field private mIntrinsicWidth:I

.field private mPaint:Landroid/graphics/Paint;

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "res"
    .parameter "text"

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 41
    iput-object p2, p0, Lcom/android/camera/drawable/TextDrawable;->mText:Ljava/lang/CharSequence;

    .line 42
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/drawable/TextDrawable;->mPaint:Landroid/graphics/Paint;

    .line 43
    iget-object v1, p0, Lcom/android/camera/drawable/TextDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    iget-object v1, p0, Lcom/android/camera/drawable/TextDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 45
    const/4 v1, 0x2

    const/high16 v2, 0x4170

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 47
    .local v0, textSize:F
    iget-object v1, p0, Lcom/android/camera/drawable/TextDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 48
    iget-object v1, p0, Lcom/android/camera/drawable/TextDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/camera/drawable/TextDrawable;->mText:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/drawable/TextDrawable;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0

    add-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/android/camera/drawable/TextDrawable;->mIntrinsicWidth:I

    .line 49
    iget-object v1, p0, Lcom/android/camera/drawable/TextDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/drawable/TextDrawable;->mIntrinsicHeight:I

    .line 50
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/camera/drawable/TextDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 55
    .local v7, bounds:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/camera/drawable/TextDrawable;->mText:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/drawable/TextDrawable;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/camera/drawable/TextDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 57
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/android/camera/drawable/TextDrawable;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/android/camera/drawable/TextDrawable;->mIntrinsicWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/drawable/TextDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/camera/drawable/TextDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 77
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "filter"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/camera/drawable/TextDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 82
    return-void
.end method
