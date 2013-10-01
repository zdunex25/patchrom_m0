.class public Lcom/android/gallery3d/filtershow/ui/ImageButtonTitle;
.super Landroid/widget/ImageButton;
.source "ImageButtonTitle.java"


# static fields
.field private static gPaint:Landroid/graphics/Paint;

.field private static mTextPadding:I

.field private static mTextSize:I


# instance fields
.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0x18

    sput v0, Lcom/android/gallery3d/filtershow/ui/ImageButtonTitle;->mTextSize:I

    .line 32
    const/16 v0, 0x14

    sput v0, Lcom/android/gallery3d/filtershow/ui/ImageButtonTitle;->mTextPadding:I

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/gallery3d/filtershow/ui/ImageButtonTitle;->gPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageButtonTitle;->mText:Ljava/lang/String;

    .line 49
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageButtonTitle;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/gallery3d/R$styleable;->ImageButtonTitle:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageButtonTitle;->mText:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public static setTextPadding(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 40
    sput p0, Lcom/android/gallery3d/filtershow/ui/ImageButtonTitle;->mTextPadding:I

    .line 41
    return-void
.end method

.method public static setTextSize(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 36
    sput p0, Lcom/android/gallery3d/filtershow/ui/ImageButtonTitle;->mTextSize:I

    .line 37
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageButtonTitle;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/16 v4, 0xff

    .line 61
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 62
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/ui/ImageButtonTitle;->mText:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 63
    sget-object v3, Lcom/android/gallery3d/filtershow/ui/ImageButtonTitle;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 64
    sget-object v3, Lcom/android/gallery3d/filtershow/ui/ImageButtonTitle;->gPaint:Landroid/graphics/Paint;

    sget v4, Lcom/android/gallery3d/filtershow/ui/ImageButtonTitle;->mTextSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 65
    sget-object v3, Lcom/android/gallery3d/filtershow/ui/ImageButtonTitle;->gPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/ui/ImageButtonTitle;->mText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 66
    .local v0, textWidth:F
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageButtonTitle;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    float-to-int v1, v3

    .line 67
    .local v1, x:I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageButtonTitle;->getHeight()I

    move-result v3

    sget v4, Lcom/android/gallery3d/filtershow/ui/ImageButtonTitle;->mTextPadding:I

    sub-int v2, v3, v4

    .line 69
    .local v2, y:I
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/ui/ImageButtonTitle;->mText:Ljava/lang/String;

    int-to-float v4, v1

    int-to-float v5, v2

    sget-object v6, Lcom/android/gallery3d/filtershow/ui/ImageButtonTitle;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 71
    .end local v0           #textWidth:F
    .end local v1           #x:I
    .end local v2           #y:I
    :cond_0
    return-void
.end method
