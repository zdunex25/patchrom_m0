.class public Lcom/sec/android/glview/TwGLStringTexture;
.super Lcom/sec/android/glview/TwGLTexture;
.source "TwGLStringTexture.java"


# static fields
.field private static final CHAR_ZERO_WIDTH_SPACE:C = '\u200b'

.field private static DEFAULT_LINE_SPACE:I

.field private static DEFAULT_PADDING:I

.field private static NUM_OF_ELLIPSIS_CHARACTER:I

.field private static final mShadowColor:I


# instance fields
.field private mBold:Z

.field private mCanvas:Landroid/graphics/Canvas;

.field private mColor:I

.field private mHAlign:I

.field private mHeight:I

.field private mMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private mPaint:Landroid/graphics/Paint;

.field private mShadow:Z

.field private mSize:F

.field private mStringHeight:I

.field private mStringWidth:I

.field private mText:Ljava/lang/String;

.field private mVAlign:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    .line 45
    const/4 v0, 0x5

    sput v0, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_LINE_SPACE:I

    .line 47
    const/4 v0, 0x3

    sput v0, Lcom/sec/android/glview/TwGLStringTexture;->NUM_OF_ELLIPSIS_CHARACTER:I

    .line 91
    const/16 v0, 0xff

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowColor:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFIILjava/lang/String;FIZ)V
    .locals 3
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "hAlign"
    .parameter "vAlign"
    .parameter "text"
    .parameter "textSize"
    .parameter "color"
    .parameter "shadow"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 141
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 64
    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    .line 67
    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    .line 70
    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    .line 73
    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    .line 76
    iput v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHAlign:I

    .line 79
    iput v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mVAlign:I

    .line 82
    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    .line 84
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    .line 86
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mBold:Z

    .line 88
    iput v2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mSize:F

    .line 143
    iput-object p8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    .line 144
    iput p9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mSize:F

    .line 145
    iput p10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    .line 146
    iput-boolean p11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    .line 148
    iput p6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHAlign:I

    .line 149
    iput p7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mVAlign:I

    .line 151
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    .line 152
    cmpl-float v0, p9, v2

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p10}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 157
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 159
    float-to-int v0, p4

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    .line 160
    float-to-int v0, p5

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    .line 162
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    .line 163
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    .line 164
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;FIZ)V
    .locals 3
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "text"
    .parameter "textSize"
    .parameter "color"
    .parameter "shadow"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 64
    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    .line 67
    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    .line 70
    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    .line 73
    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    .line 76
    iput v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHAlign:I

    .line 79
    iput v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mVAlign:I

    .line 82
    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    .line 84
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    .line 86
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mBold:Z

    .line 88
    iput v2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mSize:F

    .line 106
    iput-object p4, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    .line 107
    iput p5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mSize:F

    .line 108
    iput p6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    .line 109
    iput-boolean p7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    .line 111
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    .line 112
    cmpl-float v0, p5, v2

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p6}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 117
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 119
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    .line 120
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    .line 122
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    .line 123
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    .line 124
    return-void
.end method

.method private getBreakIndex(Ljava/lang/String;I)I
    .locals 5
    .parameter "string"
    .parameter "fieldWidth"

    .prologue
    .line 643
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 644
    .local v0, end:I
    iget-object v3, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    float-to-int v1, v3

    .line 645
    .local v1, stringWidth:I
    const/4 v2, 0x0

    .line 647
    .local v2, subString:Ljava/lang/String;
    if-ge v1, p2, :cond_0

    .line 648
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 657
    :goto_0
    return v3

    .line 652
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 653
    iget-object v3, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 654
    iget-object v3, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    float-to-int v1, v3

    .line 655
    if-gt v1, p2, :cond_0

    move v3, v0

    .line 657
    goto :goto_0
.end method

.method private getIndexOfDelimiters(Ljava/lang/String;I)I
    .locals 5
    .parameter "string"
    .parameter "index"

    .prologue
    const/4 v4, -0x1

    .line 577
    const/4 v0, -0x1

    .line 578
    .local v0, end:I
    const-string v3, " "

    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 579
    .local v1, spaceIndex:I
    const/16 v3, 0x200b

    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 581
    .local v2, zeroWidthSpaceIndex:I
    if-ne v1, v4, :cond_0

    if-eq v2, v4, :cond_1

    .line 582
    :cond_0
    if-gt v1, v2, :cond_3

    .line 583
    if-ne v1, v4, :cond_2

    .line 584
    move v0, v2

    .line 594
    :cond_1
    :goto_0
    return v0

    .line 586
    :cond_2
    move v0, v1

    goto :goto_0

    .line 588
    :cond_3
    if-ne v2, v4, :cond_4

    .line 589
    move v0, v1

    goto :goto_0

    .line 591
    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method private getLastIndexOfDelimiters(Ljava/lang/String;I)I
    .locals 5
    .parameter "string"
    .parameter "index"

    .prologue
    const/4 v4, -0x1

    .line 598
    const/4 v0, -0x1

    .line 600
    .local v0, end:I
    const-string v3, " "

    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v1

    .line 601
    .local v1, spaceIndex:I
    const/16 v3, 0x200b

    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    .line 603
    .local v2, zeroWidthSpaceIndex:I
    if-ne v1, v4, :cond_0

    if-eq v2, v4, :cond_1

    .line 604
    :cond_0
    if-lt v1, v2, :cond_2

    .line 605
    if-eqz v1, :cond_1

    .line 606
    move v0, v1

    .line 612
    :cond_1
    :goto_0
    return v0

    .line 608
    :cond_2
    if-eqz v2, :cond_1

    .line 609
    move v0, v2

    goto :goto_0
.end method

.method private getNumOfNewLineChar(Ljava/lang/String;)I
    .locals 5
    .parameter "string"

    .prologue
    const/4 v4, -0x1

    .line 563
    const/4 v0, 0x0

    .line 564
    .local v0, numOfNewLine:I
    const/4 v1, 0x0

    .line 567
    .local v1, start:I
    :cond_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 568
    if-eq v1, v4, :cond_1

    .line 569
    add-int/lit8 v0, v0, 0x1

    .line 570
    add-int/lit8 v1, v1, 0x1

    .line 572
    :cond_1
    if-ne v1, v4, :cond_0

    .line 573
    return v0
.end method

.method private insertEllipsis(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .parameter "string"
    .parameter "fieldWidth"

    .prologue
    .line 616
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sget v6, Lcom/sec/android/glview/TwGLStringTexture;->NUM_OF_ELLIPSIS_CHARACTER:I

    sub-int v1, v5, v6

    .line 617
    .local v1, end:I
    const/4 v4, 0x0

    .line 618
    .local v4, stringWidth:I
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 619
    .local v0, concatString:Ljava/lang/String;
    const/4 v3, 0x0

    .line 621
    .local v3, resultString:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Landroid/util/FloatMath;->ceil(F)F

    move-result v5

    float-to-int v5, v5

    if-lt v5, p2, :cond_0

    if-gez v1, :cond_1

    .line 639
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 625
    .restart local p1
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    sget v5, Lcom/sec/android/glview/TwGLStringTexture;->NUM_OF_ELLIPSIS_CHARACTER:I

    if-ge v2, v5, :cond_2

    .line 626
    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 625
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 630
    :cond_2
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Landroid/util/FloatMath;->ceil(F)F

    move-result v5

    float-to-int v5, v5

    if-lt v5, p2, :cond_3

    move-object p1, v0

    .line 631
    goto :goto_0

    .line 635
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 636
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Landroid/util/FloatMath;->ceil(F)F

    move-result v5

    float-to-int v4, v5

    .line 637
    add-int/lit8 v1, v1, -0x1

    .line 638
    if-lt p2, v4, :cond_3

    move-object p1, v3

    .line 639
    goto :goto_0
.end method

.method private wordBreak(I)Ljava/util/List;
    .locals 14
    .parameter "availableRows"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v13, 0xa

    const/4 v12, -0x1

    .line 447
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 448
    .local v4, resultStringArray:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 449
    .local v8, subString:Ljava/lang/String;
    const/4 v7, 0x0

    .line 450
    .local v7, stringLength:I
    const/4 v6, 0x0

    .line 451
    .local v6, start:I
    const/4 v0, 0x0

    .line 452
    .local v0, end:I
    const/4 v5, 0x0

    .line 453
    .local v5, row:I
    const/4 v3, 0x0

    .line 454
    .local v3, numOfNewLineChar:I
    const/4 v1, 0x0

    .line 455
    .local v1, index:I
    const/4 v2, 0x0

    .line 458
    .local v2, isDone:Z
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/sec/android/glview/TwGLStringTexture;->getNumOfNewLineChar(Ljava/lang/String;)I

    move-result v3

    .line 459
    const/4 v6, 0x0

    .line 460
    add-int/lit8 v10, v3, 0x1

    if-ne p1, v10, :cond_2

    .line 462
    :cond_0
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v13, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 463
    if-eq v0, v12, :cond_1

    .line 464
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    add-int/lit8 v6, v0, 0x1

    .line 468
    :cond_1
    if-ne v0, v12, :cond_0

    .line 469
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    :goto_0
    return-object v4

    .line 472
    :cond_2
    const/4 v6, 0x0

    .line 473
    const/4 v0, 0x0

    .line 478
    :cond_3
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    add-int/lit8 v11, v0, 0x1

    invoke-direct {p0, v10, v11}, Lcom/sec/android/glview/TwGLStringTexture;->getIndexOfDelimiters(Ljava/lang/String;I)I

    move-result v0

    .line 483
    if-eq v0, v12, :cond_5

    .line 484
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 485
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    invoke-static {v10}, Landroid/util/FloatMath;->ceil(F)F

    move-result v10

    float-to-int v7, v10

    .line 493
    :goto_1
    invoke-virtual {v8, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 494
    if-eq v1, v12, :cond_6

    .line 495
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    add-int/lit8 v6, v1, 0x1

    .line 497
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 558
    :cond_4
    :goto_2
    if-eqz v2, :cond_3

    goto :goto_0

    .line 487
    :cond_5
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    .line 488
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 489
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    invoke-static {v10}, Landroid/util/FloatMath;->ceil(F)F

    move-result v10

    float-to-int v7, v10

    goto :goto_1

    .line 498
    :cond_6
    iget v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    if-le v7, v10, :cond_11

    .line 499
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v0, v10, :cond_c

    .line 501
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    add-int/lit8 v11, v0, -0x1

    invoke-direct {p0, v10, v11}, Lcom/sec/android/glview/TwGLStringTexture;->getLastIndexOfDelimiters(Ljava/lang/String;I)I

    move-result v0

    .line 506
    if-eq v0, v12, :cond_7

    add-int/lit8 v10, v0, 0x1

    if-ne v6, v10, :cond_a

    .line 507
    :cond_7
    add-int/lit8 v10, v5, 0x1

    if-le p1, v10, :cond_9

    .line 508
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    invoke-direct {p0, v10, v11}, Lcom/sec/android/glview/TwGLStringTexture;->getBreakIndex(Ljava/lang/String;I)I

    move-result v0

    .line 509
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    add-int/lit8 v0, v0, -0x1

    .line 551
    :cond_8
    :goto_3
    add-int/lit8 v6, v0, 0x1

    .line 552
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_2

    .line 512
    :cond_9
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    invoke-direct {p0, v10, v11}, Lcom/sec/android/glview/TwGLStringTexture;->insertEllipsis(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    const/4 v2, 0x1

    goto :goto_3

    .line 515
    :cond_a
    add-int/lit8 v10, v0, 0x1

    if-eq v6, v10, :cond_8

    .line 516
    add-int/lit8 v10, v5, 0x1

    if-le p1, v10, :cond_b

    .line 517
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 519
    :cond_b
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    invoke-direct {p0, v10, v11}, Lcom/sec/android/glview/TwGLStringTexture;->insertEllipsis(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    const/4 v2, 0x1

    goto :goto_3

    .line 524
    :cond_c
    move v9, v0

    .line 527
    .local v9, tempEnd:I
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    add-int/lit8 v11, v0, -0x1

    invoke-direct {p0, v10, v11}, Lcom/sec/android/glview/TwGLStringTexture;->getLastIndexOfDelimiters(Ljava/lang/String;I)I

    move-result v0

    .line 532
    if-eq v0, v12, :cond_d

    add-int/lit8 v10, v0, 0x1

    if-ne v6, v10, :cond_f

    .line 533
    :cond_d
    move v0, v9

    .line 534
    add-int/lit8 v10, v5, 0x1

    if-le p1, v10, :cond_e

    .line 535
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    invoke-direct {p0, v10, v11}, Lcom/sec/android/glview/TwGLStringTexture;->getBreakIndex(Ljava/lang/String;I)I

    move-result v0

    .line 536
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 539
    :cond_e
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    invoke-direct {p0, v10, v11}, Lcom/sec/android/glview/TwGLStringTexture;->insertEllipsis(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 543
    :cond_f
    add-int/lit8 v10, v5, 0x1

    if-le p1, v10, :cond_10

    .line 544
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 546
    :cond_10
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    invoke-direct {p0, v10, v11}, Lcom/sec/android/glview/TwGLStringTexture;->insertEllipsis(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 553
    .end local v9           #tempEnd:I
    :cond_11
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v0, v10, :cond_4

    .line 554
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    const/4 v2, 0x1

    goto/16 :goto_2
.end method


# virtual methods
.method public getAvailableRows()I
    .locals 2

    .prologue
    .line 175
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    iget v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getStringHeight()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    return v0
.end method

.method public getStringWidth()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    return-object v0
.end method

.method protected loadBitmap()Landroid/graphics/Bitmap;
    .locals 12

    .prologue
    .line 183
    const/4 v4, 0x0

    .line 185
    .local v4, top:I
    iget v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    iget v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 186
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    .line 187
    const/4 v3, 0x0

    .line 189
    .local v3, resultString:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    iget v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    if-lt v7, v8, :cond_0

    iget-object v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/sec/android/glview/TwGLStringTexture;->getNumOfNewLineChar(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_7

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->getAvailableRows()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/sec/android/glview/TwGLStringTexture;->wordBreak(I)Ljava/util/List;

    move-result-object v3

    .line 192
    if-eqz v3, :cond_8

    .line 193
    iget v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    mul-int/2addr v7, v8

    sget v8, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_LINE_SPACE:I

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    mul-int/2addr v8, v9

    add-int v6, v7, v8

    .line 194
    .local v6, totalStringHeight:I
    iget v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    sub-int/2addr v7, v6

    div-int/lit8 v5, v7, 0x2

    .line 195
    .local v5, topPadding:I
    iget v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    iget v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    mul-int/2addr v8, v9

    sub-int/2addr v7, v8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    div-int v2, v7, v8

    .line 197
    .local v2, lineSpace:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_8

    .line 198
    iget v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mVAlign:I

    packed-switch v7, :pswitch_data_0

    .line 224
    :goto_1
    iget v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHAlign:I

    packed-switch v7, :pswitch_data_1

    .line 197
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    :pswitch_0
    if-nez v1, :cond_1

    .line 201
    iget v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    mul-int/2addr v7, v1

    iget-object v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v8, v8, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v4, v7, v8

    goto :goto_1

    .line 203
    :cond_1
    iget v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    mul-int/2addr v7, v1

    sget v8, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_LINE_SPACE:I

    add-int/lit8 v9, v1, -0x1

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v8, v8, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v4, v7, v8

    .line 205
    goto :goto_1

    .line 207
    :pswitch_1
    sget v7, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_LINE_SPACE:I

    if-le v2, v7, :cond_2

    .line 208
    iget v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    mul-int/2addr v7, v1

    add-int/2addr v7, v5

    sget v8, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_LINE_SPACE:I

    mul-int/2addr v8, v1

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v8, v8, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v4, v7, v8

    goto :goto_1

    .line 210
    :cond_2
    add-int/lit8 v7, v1, 0x1

    mul-int/2addr v7, v2

    iget v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    mul-int/2addr v8, v1

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v8, v8, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v4, v7, v8

    .line 212
    goto :goto_1

    .line 214
    :pswitch_2
    if-nez v1, :cond_3

    .line 215
    iget v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    iget v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v1

    mul-int/2addr v8, v9

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v8, v8, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v7, v8

    sget v8, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    sub-int v4, v7, v8

    goto :goto_1

    .line 217
    :cond_3
    iget v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    iget v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v1

    mul-int/2addr v8, v9

    sub-int/2addr v7, v8

    sget v8, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_LINE_SPACE:I

    add-int/lit8 v9, v1, -0x1

    mul-int/2addr v8, v9

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v8, v8, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v7, v8

    sget v8, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    sub-int v4, v7, v8

    .line 220
    goto :goto_1

    .line 226
    :pswitch_3
    iget-object v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 227
    iget-object v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-boolean v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mBold:Z

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 228
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    if-eqz v7, :cond_4

    .line 229
    iget-object v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget v8, Lcom/sec/android/glview/TwGLStringTexture;->mShadowColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 230
    iget-object v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    sget v9, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    add-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    add-int/lit8 v10, v4, 0x1

    int-to-float v10, v10

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v7, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 231
    iget-object v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 234
    :cond_4
    iget-object v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    sget v9, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    int-to-float v9, v9

    int-to-float v10, v4

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v7, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 237
    :pswitch_4
    iget-object v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 238
    iget-object v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-boolean v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mBold:Z

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 239
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    if-eqz v7, :cond_5

    .line 240
    iget-object v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget v8, Lcom/sec/android/glview/TwGLStringTexture;->mShadowColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 241
    iget-object v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    div-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    add-int/lit8 v10, v4, 0x1

    int-to-float v10, v10

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v7, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 242
    iget-object v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 244
    :cond_5
    iget-object v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    int-to-float v10, v4

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v7, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 247
    :pswitch_5
    iget-object v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 248
    iget-object v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-boolean v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mBold:Z

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 249
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    if-eqz v7, :cond_6

    .line 250
    iget-object v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget v8, Lcom/sec/android/glview/TwGLStringTexture;->mShadowColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 251
    iget-object v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    sget v10, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    add-int/lit8 v10, v4, 0x1

    int-to-float v10, v10

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v7, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 252
    iget-object v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 254
    :cond_6
    iget-object v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    sget v10, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    int-to-float v10, v4

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v7, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 262
    .end local v1           #i:I
    .end local v2           #lineSpace:I
    .end local v5           #topPadding:I
    .end local v6           #totalStringHeight:I
    :cond_7
    iget v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mVAlign:I

    packed-switch v7, :pswitch_data_2

    .line 276
    :goto_3
    iget v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHAlign:I

    packed-switch v7, :pswitch_data_3

    .line 311
    :cond_8
    :goto_4
    return-object v0

    .line 264
    :pswitch_6
    iget-object v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v7, v7, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v4, v7

    .line 265
    goto :goto_3

    .line 267
    :pswitch_7
    iget v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    iget-object v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v8, v8, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v9, v9, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v8, v9

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    iget-object v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v8, v8, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v4, v7, v8

    .line 268
    goto :goto_3

    .line 270
    :pswitch_8
    iget v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    iget-object v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v8, v8, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int v4, v7, v8

    .line 271
    goto :goto_3

    .line 278
    :pswitch_9
    iget-object v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 279
    iget-object v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-boolean v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mBold:Z

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 280
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    if-eqz v7, :cond_9

    .line 281
    iget-object v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget v8, Lcom/sec/android/glview/TwGLStringTexture;->mShadowColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 282
    iget-object v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    iget-object v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    sget v9, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    add-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    add-int/lit8 v10, v4, 0x1

    int-to-float v10, v10

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 283
    iget-object v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 285
    :cond_9
    iget-object v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    iget-object v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    sget v9, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    int-to-float v9, v9

    int-to-float v10, v4

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 288
    :pswitch_a
    iget-object v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 289
    iget-object v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-boolean v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mBold:Z

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 290
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    if-eqz v7, :cond_a

    .line 291
    iget-object v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget v8, Lcom/sec/android/glview/TwGLStringTexture;->mShadowColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 292
    iget-object v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    iget-object v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    div-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    add-int/lit8 v10, v4, 0x1

    int-to-float v10, v10

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 293
    iget-object v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 295
    :cond_a
    iget-object v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    iget-object v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    int-to-float v10, v4

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 298
    :pswitch_b
    iget-object v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 299
    iget-object v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-boolean v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mBold:Z

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 300
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    if-eqz v7, :cond_b

    .line 301
    iget-object v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget v8, Lcom/sec/android/glview/TwGLStringTexture;->mShadowColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 302
    iget-object v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    iget-object v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    sget v10, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    add-int/lit8 v10, v4, 0x1

    int-to-float v10, v10

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 303
    iget-object v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 305
    :cond_b
    iget-object v7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    iget-object v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    sget v10, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    int-to-float v10, v4

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 224
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 262
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 276
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public setAlign(II)V
    .locals 0
    .parameter "hAlign"
    .parameter "vAlign"

    .prologue
    .line 418
    iput p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHAlign:I

    .line 419
    iput p2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mVAlign:I

    .line 420
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    .line 421
    return-void
.end method

.method public setBold(Z)V
    .locals 0
    .parameter "bold"

    .prologue
    .line 402
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mBold:Z

    .line 403
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    .line 404
    return-void
.end method

.method public setBoldColor(ZI)V
    .locals 0
    .parameter "bold"
    .parameter "color"

    .prologue
    .line 412
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mBold:Z

    .line 413
    iput p2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    .line 414
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    .line 415
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 407
    iput p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    .line 408
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    .line 409
    return-void
.end method

.method public setFontSize(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 381
    int-to-float v0, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mSize:F

    .line 382
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 384
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 386
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    .line 387
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    .line 389
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->getSizeSpecified()Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    .line 391
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    .line 393
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    .line 394
    return-void
.end method

.method public setLayout(II)V
    .locals 1
    .parameter "hAlign"
    .parameter "vAlign"

    .prologue
    .line 328
    packed-switch p1, :pswitch_data_0

    .line 335
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHAlign:I

    .line 338
    :goto_0
    packed-switch p2, :pswitch_data_1

    .line 345
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mVAlign:I

    .line 348
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    .line 349
    return-void

    .line 332
    :pswitch_0
    iput p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHAlign:I

    goto :goto_0

    .line 342
    :pswitch_1
    iput p2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mVAlign:I

    goto :goto_1

    .line 328
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 338
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setShadowVisibility(Z)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 397
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    .line 398
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    .line 399
    return-void
.end method

.method public setSize(FF)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 315
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLTexture;->setSize(FF)V

    .line 316
    float-to-int v0, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    .line 317
    float-to-int v0, p2

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    .line 318
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    .line 319
    return-void
.end method

.method public setStrokeStyle(F)V
    .locals 2
    .parameter "width"

    .prologue
    .line 424
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 426
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 428
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    .line 430
    :cond_0
    return-void
.end method

.method public declared-synchronized setText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 352
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    .line 353
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    .line 354
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->getSizeGiven()Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    .line 356
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    int-to-float v1, v1

    invoke-super {p0, v0, v1}, Lcom/sec/android/glview/TwGLTexture;->setSize(FF)V

    .line 358
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    monitor-exit p0

    return-void

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setText(Ljava/lang/String;FI)V
    .locals 2
    .parameter "text"
    .parameter "textSize"
    .parameter "color"

    .prologue
    .line 362
    iput-object p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    .line 363
    iput p2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mSize:F

    .line 364
    iput p3, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    .line 366
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 368
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 370
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    .line 371
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    .line 373
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->getSizeSpecified()Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    .line 375
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    .line 377
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLStringTexture;->reLoad()Z

    .line 378
    return-void
.end method
