.class public Lcom/android/gallery3d/filtershow/ui/FramedTextButton;
.super Landroid/widget/ImageButton;
.source "FramedTextButton.java"


# static fields
.field private static gPaint:Landroid/graphics/Paint;

.field private static gPath:Landroid/graphics/Path;

.field private static mTextPadding:I

.field private static mTextSize:I

.field private static mTrianglePadding:I

.field private static mTriangleSize:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x18

    sput v0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mTextSize:I

    .line 34
    const/16 v0, 0x14

    sput v0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mTextPadding:I

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->gPath:Landroid/graphics/Path;

    .line 37
    const/4 v0, 0x2

    sput v0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mTrianglePadding:I

    .line 38
    const/16 v0, 0x1e

    sput v0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mTriangleSize:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mText:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mContext:Landroid/content/Context;

    .line 87
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mContext:Landroid/content/Context;

    .line 88
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/gallery3d/R$styleable;->ImageButtonTitle:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 91
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mText:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public static setTextSize(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 43
    sput p0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mTextSize:I

    .line 44
    return-void
.end method

.method public static setTrianglePadding(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 51
    sput p0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mTrianglePadding:I

    .line 52
    return-void
.end method

.method public static setTriangleSize(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 55
    sput p0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mTriangleSize:I

    .line 56
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/high16 v13, 0x4000

    const/16 v12, 0xff

    .line 100
    sget-object v0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    const/16 v1, 0x60

    invoke-virtual {v0, v1, v12, v12, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 101
    sget-object v0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 102
    sget-object v0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->getWidth()I

    move-result v9

    .line 104
    .local v9, w:I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->getHeight()I

    move-result v7

    .line 105
    .local v7, h:I
    sget v0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mTextPadding:I

    int-to-float v1, v0

    sget v0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mTextPadding:I

    int-to-float v2, v0

    sget v0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mTextPadding:I

    sub-int v0, v9, v0

    int-to-float v3, v0

    sget v0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mTextPadding:I

    sub-int v0, v7, v0

    int-to-float v4, v0

    sget-object v5, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 107
    sget-object v0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->gPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 108
    sget-object v0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->gPath:Landroid/graphics/Path;

    sget v1, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mTextPadding:I

    sub-int v1, v9, v1

    sget v2, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mTrianglePadding:I

    sub-int/2addr v1, v2

    sget v2, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mTriangleSize:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mTextPadding:I

    sub-int v2, v7, v2

    sget v3, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mTrianglePadding:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 110
    sget-object v0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->gPath:Landroid/graphics/Path;

    sget v1, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mTextPadding:I

    sub-int v1, v9, v1

    sget v2, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mTrianglePadding:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mTextPadding:I

    sub-int v2, v7, v2

    sget v3, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mTrianglePadding:I

    sub-int/2addr v2, v3

    sget v3, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mTriangleSize:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 112
    sget-object v0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->gPath:Landroid/graphics/Path;

    sget v1, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mTextPadding:I

    sub-int v1, v9, v1

    sget v2, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mTrianglePadding:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mTextPadding:I

    sub-int v2, v7, v2

    sget v3, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mTrianglePadding:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 114
    sget-object v0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->gPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 115
    sget-object v0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    const/16 v1, 0x80

    invoke-virtual {v0, v1, v12, v12, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 116
    sget-object v0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 117
    sget-object v0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 118
    sget-object v0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->gPath:Landroid/graphics/Path;

    sget-object v1, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 119
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 120
    sget-object v0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 121
    sget-object v0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v12, v12, v12, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 122
    sget-object v0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 123
    sget-object v0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    .line 124
    .local v8, textWidth:F
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 125
    .local v6, bounds:Landroid/graphics/Rect;
    sget-object v0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mText:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 126
    int-to-float v0, v9

    sub-float/2addr v0, v8

    div-float/2addr v0, v13

    float-to-int v10, v0

    .line 127
    .local v10, x:I
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v0, v7

    div-int/lit8 v11, v0, 0x2

    .line 129
    .local v11, y:I
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mText:Ljava/lang/String;

    int-to-float v1, v10

    int-to-float v2, v11

    sget-object v3, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 131
    .end local v6           #bounds:Landroid/graphics/Rect;
    .end local v8           #textWidth:F
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mText:Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->invalidate()V

    .line 61
    return-void
.end method

.method public setTextFrom(I)V
    .locals 2
    .parameter "itemId"

    .prologue
    .line 64
    packed-switch p1, :pswitch_data_0

    .line 82
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->invalidate()V

    .line 83
    return-void

    .line 66
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0159

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mContext:Landroid/content/Context;

    const v1, 0x7f0a015a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mContext:Landroid/content/Context;

    const v1, 0x7f0a015b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :pswitch_3
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->mContext:Landroid/content/Context;

    const v1, 0x7f0a015c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x7f1000df
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
