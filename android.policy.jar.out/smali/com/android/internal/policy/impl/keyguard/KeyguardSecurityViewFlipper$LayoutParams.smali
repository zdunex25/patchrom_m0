.class public Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "KeyguardSecurityViewFlipper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public maxHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public maxWidth:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "c"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 268
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 270
    sget-object v1, Lcom/android/internal/R$styleable;->KeyguardSecurityViewFlipper_Layout:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 272
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxWidth:I

    .line 274
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxHeight:I

    .line 276
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 277
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter "other"

    .prologue
    .line 257
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper$LayoutParams;)V
    .locals 1
    .parameter "other"

    .prologue
    .line 261
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 263
    iget v0, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxWidth:I

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxWidth:I

    .line 264
    iget v0, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxHeight:I

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxHeight:I

    .line 265
    return-void
.end method
