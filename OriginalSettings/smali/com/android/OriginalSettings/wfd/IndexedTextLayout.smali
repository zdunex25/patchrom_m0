.class public Lcom/android/OriginalSettings/wfd/IndexedTextLayout;
.super Landroid/widget/LinearLayout;
.source "IndexedTextLayout.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsTablet:Z

.field private mTextIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;->mIsTablet:Z

    .line 23
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;->init(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 27
    iput-object p1, p0, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;->mContext:Landroid/content/Context;

    .line 28
    iput v0, p0, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;->mTextIndex:I

    .line 29
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;->setOrientation(I)V

    .line 30
    return-void
.end method

.method private setLayoutTextStyle()Landroid/widget/TextView;
    .locals 5

    .prologue
    .line 57
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 58
    .local v2, ll:Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 60
    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 61
    .local v1, indexTextView:Landroid/widget/TextView;
    new-instance v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 63
    .local v0, contentTextView:Landroid/widget/TextView;
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;->setTextStyle(Landroid/widget/TextView;)V

    .line 64
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;->setTextStyle(Landroid/widget/TextView;)V

    .line 66
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 67
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 68
    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;->addView(Landroid/view/View;)V

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;->mTextIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget v3, p0, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;->mTextIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;->mTextIndex:I

    .line 72
    return-object v0
.end method

.method private setTextStyle(Landroid/widget/TextView;)V
    .locals 1
    .parameter "indexTextView"

    .prologue
    .line 89
    const/high16 v0, 0x4190

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 90
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "#000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    const-string v0, "#d7d7d7"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public addContent(I)V
    .locals 4
    .parameter "strId"

    .prologue
    .line 46
    const-string v2, "IndexedTextLayout"

    const-string v3, "add Content in IndexedTextLayout"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;->setLayoutTextStyle()Landroid/widget/TextView;

    move-result-object v0

    .line 50
    .local v0, contentTextView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, str:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;->invalidate()V

    .line 54
    return-void
.end method

.method public addContent(Ljava/lang/String;)V
    .locals 3
    .parameter "str"

    .prologue
    .line 76
    const-string v1, "IndexedTextLayout"

    const-string v2, "add Content in IndexedTextLayout"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;->setLayoutTextStyle()Landroid/widget/TextView;

    move-result-object v0

    .line 79
    .local v0, contentTextView:Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;->invalidate()V

    .line 82
    return-void
.end method

.method public setIsTablet(Z)V
    .locals 0
    .parameter "tablet"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;->mIsTablet:Z

    .line 86
    return-void
.end method

.method public setText(I)V
    .locals 4
    .parameter "strId"

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, str:Ljava/lang/String;
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 36
    .local v1, ll:Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 37
    .local v0, contentTextView:Landroid/widget/TextView;
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;->setTextStyle(Landroid/widget/TextView;)V

    .line 38
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 39
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;->addView(Landroid/view/View;)V

    .line 40
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;->invalidate()V

    .line 43
    return-void
.end method
