.class Lcom/android/gallery3d/ui/StringTexture;
.super Lcom/android/gallery3d/ui/CanvasTexture;
.source "StringTexture.java"


# instance fields
.field private final mMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private final mPaint:Landroid/text/TextPaint;

.field private final mText:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;II)V
    .locals 0
    .parameter "text"
    .parameter "paint"
    .parameter "metrics"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 39
    invoke-direct {p0, p4, p5}, Lcom/android/gallery3d/ui/CanvasTexture;-><init>(II)V

    .line 40
    iput-object p1, p0, Lcom/android/gallery3d/ui/StringTexture;->mText:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/android/gallery3d/ui/StringTexture;->mPaint:Landroid/text/TextPaint;

    .line 42
    iput-object p3, p0, Lcom/android/gallery3d/ui/StringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 43
    return-void
.end method

.method public static getDefaultPaint(FI)Landroid/text/TextPaint;
    .locals 4
    .parameter "textSize"
    .parameter "color"

    .prologue
    const/4 v3, 0x0

    .line 46
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 47
    .local v0, paint:Landroid/text/TextPaint;
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 48
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 49
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 50
    const/high16 v1, 0x4000

    const/high16 v2, -0x100

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 51
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;FI)Lcom/android/gallery3d/ui/StringTexture;
    .locals 1
    .parameter "text"
    .parameter "textSize"
    .parameter "color"

    .prologue
    .line 56
    invoke-static {p1, p2}, Lcom/android/gallery3d/ui/StringTexture;->getDefaultPaint(FI)Landroid/text/TextPaint;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;FIFZ)Lcom/android/gallery3d/ui/StringTexture;
    .locals 2
    .parameter "text"
    .parameter "textSize"
    .parameter "color"
    .parameter "lengthLimit"
    .parameter "isBold"

    .prologue
    .line 62
    invoke-static {p1, p2}, Lcom/android/gallery3d/ui/StringTexture;->getDefaultPaint(FI)Landroid/text/TextPaint;

    move-result-object v0

    .line 63
    .local v0, paint:Landroid/text/TextPaint;
    if-eqz p4, :cond_0

    .line 64
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 66
    :cond_0
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-lez v1, :cond_1

    .line 67
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p0, v0, p3, v1}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 70
    :cond_1
    invoke-static {p0, v0}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v1

    return-object v1
.end method

.method private static newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/android/gallery3d/ui/StringTexture;
    .locals 6
    .parameter "text"
    .parameter "paint"

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    .line 75
    .local v3, metrics:Landroid/graphics/Paint$FontMetricsInt;
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v4, v0

    .line 76
    .local v4, width:I
    iget v0, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v1, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v5, v0, v1

    .line 78
    .local v5, height:I
    if-gtz v4, :cond_0

    const/4 v4, 0x1

    .line 79
    :cond_0
    if-gtz v5, :cond_1

    const/4 v5, 0x1

    .line 80
    :cond_1
    new-instance v0, Lcom/android/gallery3d/ui/StringTexture;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/StringTexture;-><init>(Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;II)V

    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "canvas"
    .parameter "backing"

    .prologue
    const/4 v2, 0x0

    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/ui/StringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 86
    iget-object v0, p0, Lcom/android/gallery3d/ui/StringTexture;->mText:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/gallery3d/ui/StringTexture;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 87
    return-void
.end method
