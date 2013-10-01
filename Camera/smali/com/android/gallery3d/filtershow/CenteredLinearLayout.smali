.class public Lcom/android/gallery3d/filtershow/CenteredLinearLayout;
.super Landroid/widget/LinearLayout;
.source "CenteredLinearLayout.java"


# instance fields
.field private final mMaxWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/CenteredLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/gallery3d/R$styleable;->CenteredLinearLayout:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 34
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/CenteredLinearLayout;->mMaxWidth:I

    .line 35
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 39
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 40
    .local v2, parentWidth:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 41
    .local v1, parentHeight:I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/CenteredLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 42
    .local v3, r:Landroid/content/res/Resources;
    const/4 v5, 0x1

    int-to-float v6, v2

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    .line 44
    .local v4, value:F
    iget v5, p0, Lcom/android/gallery3d/filtershow/CenteredLinearLayout;->mMaxWidth:I

    if-lez v5, :cond_0

    iget v5, p0, Lcom/android/gallery3d/filtershow/CenteredLinearLayout;->mMaxWidth:I

    if-le v2, v5, :cond_0

    .line 45
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 46
    .local v0, measureMode:I
    iget v5, p0, Lcom/android/gallery3d/filtershow/CenteredLinearLayout;->mMaxWidth:I

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 48
    .end local v0           #measureMode:I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 49
    return-void
.end method
