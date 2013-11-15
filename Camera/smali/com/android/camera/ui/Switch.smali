.class public Lcom/android/camera/ui/Switch;
.super Landroid/widget/CompoundButton;
.source "Switch.java"


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mMinFlingVelocity:I

.field private mOffLayout:Landroid/text/Layout;

.field private mOnLayout:Landroid/text/Layout;

.field private mSwitchBottom:I

.field private mSwitchHeight:I

.field private mSwitchLeft:I

.field private mSwitchMinWidth:I

.field private mSwitchPadding:I

.field private mSwitchRight:I

.field private mSwitchTextMaxWidth:I

.field private mSwitchTop:I

.field private mSwitchWidth:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTextColors:Landroid/content/res/ColorStateList;

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOn:Ljava/lang/CharSequence;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbPosition:F

.field private mThumbTextPadding:I

.field private mThumbWidth:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 94
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/android/camera/ui/Switch;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 106
    const v0, 0x7f01000b

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ui/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 119
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ui/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 91
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 121
    new-instance v3, Landroid/text/TextPaint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v3, p0, Lcom/android/camera/ui/Switch;->mTextPaint:Landroid/text/TextPaint;

    .line 122
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 123
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 124
    .local v1, dm:Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/android/camera/ui/Switch;->mTextPaint:Landroid/text/TextPaint;

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    iput v4, v3, Landroid/text/TextPaint;->density:F

    .line 125
    const v3, 0x7f020155

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ui/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 126
    const v3, 0x7f02015a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 127
    const v3, 0x7f0a010f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ui/Switch;->mTextOn:Ljava/lang/CharSequence;

    .line 128
    const v3, 0x7f0a0110

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ui/Switch;->mTextOff:Ljava/lang/CharSequence;

    .line 129
    const v3, 0x7f0e001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/Switch;->mThumbTextPadding:I

    .line 130
    const v3, 0x7f0e001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/Switch;->mSwitchMinWidth:I

    .line 131
    const v3, 0x7f0e001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/Switch;->mSwitchTextMaxWidth:I

    .line 132
    const v3, 0x7f0e001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/Switch;->mSwitchPadding:I

    .line 133
    const v3, 0x1030101

    invoke-virtual {p0, p1, v3}, Lcom/android/camera/ui/Switch;->setSwitchTextAppearance(Landroid/content/Context;I)V

    .line 135
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 136
    .local v0, config:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/Switch;->mTouchSlop:I

    .line 137
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/Switch;->mMinFlingVelocity:I

    .line 140
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->refreshDrawableState()V

    .line 141
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->isChecked()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/Switch;->setChecked(Z)V

    .line 142
    return-void
.end method

.method private animateThumbToCheckedState(Z)V
    .locals 0
    .parameter "newCheckedState"

    .prologue
    .line 324
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/Switch;->setChecked(Z)V

    .line 325
    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "ev"

    .prologue
    .line 290
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 291
    .local v0, cancel:Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 292
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 293
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 294
    return-void
.end method

.method private getTargetCheckedState()Z
    .locals 2

    .prologue
    .line 328
    iget v0, p0, Lcom/android/camera/ui/Switch;->mThumbPosition:F

    invoke-direct {p0}, Lcom/android/camera/ui/Switch;->getThumbScrollRange()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getThumbScrollRange()I
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/camera/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 438
    const/4 v0, 0x0

    .line 441
    :goto_0
    return v0

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 441
    iget v0, p0, Lcom/android/camera/ui/Switch;->mSwitchWidth:I

    iget v1, p0, Lcom/android/camera/ui/Switch;->mThumbWidth:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private hitThumb(FF)Z
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 213
    iget-object v4, p0, Lcom/android/camera/ui/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/android/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 214
    iget v4, p0, Lcom/android/camera/ui/Switch;->mSwitchTop:I

    iget v5, p0, Lcom/android/camera/ui/Switch;->mTouchSlop:I

    sub-int v3, v4, v5

    .line 215
    .local v3, thumbTop:I
    iget v4, p0, Lcom/android/camera/ui/Switch;->mSwitchLeft:I

    iget v5, p0, Lcom/android/camera/ui/Switch;->mThumbPosition:F

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/Switch;->mTouchSlop:I

    sub-int v1, v4, v5

    .line 216
    .local v1, thumbLeft:I
    iget v4, p0, Lcom/android/camera/ui/Switch;->mThumbWidth:I

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/Switch;->mTouchSlop:I

    add-int v2, v4, v5

    .line 218
    .local v2, thumbRight:I
    iget v4, p0, Lcom/android/camera/ui/Switch;->mSwitchBottom:I

    iget v5, p0, Lcom/android/camera/ui/Switch;->mTouchSlop:I

    add-int v0, v4, v5

    .line 219
    .local v0, thumbBottom:I
    int-to-float v4, v1

    cmpl-float v4, p1, v4

    if-lez v4, :cond_0

    int-to-float v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    int-to-float v4, v3

    cmpl-float v4, p2, v4

    if-lez v4, :cond_0

    int-to-float v4, v0

    cmpg-float v4, p2, v4

    if-gez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private makeLayout(Ljava/lang/CharSequence;I)Landroid/text/Layout;
    .locals 12
    .parameter "text"
    .parameter "maxWidth"

    .prologue
    .line 200
    iget-object v1, p0, Lcom/android/camera/ui/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {p1, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v5, v1

    .line 201
    .local v5, actual_width:I
    new-instance v0, Landroid/text/StaticLayout;

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/Switch;->mTextPaint:Landroid/text/TextPaint;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    const/4 v9, 0x1

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v5, p2}, Ljava/lang/Math;->min(II)I

    move-result v11

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 206
    .local v0, l:Landroid/text/StaticLayout;
    return-object v0
.end method

.method private setThumbPosition(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 332
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/Switch;->getThumbScrollRange()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    iput v0, p0, Lcom/android/camera/ui/Switch;->mThumbPosition:F

    .line 333
    return-void

    .line 332
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .locals 7
    .parameter "ev"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 302
    iput v4, p0, Lcom/android/camera/ui/Switch;->mTouchMode:I

    .line 304
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    .line 306
    .local v0, commitChange:Z
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/camera/ui/Switch;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    .line 308
    if-eqz v0, :cond_3

    .line 310
    iget-object v5, p0, Lcom/android/camera/ui/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 311
    iget-object v5, p0, Lcom/android/camera/ui/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .line 312
    .local v2, xvel:F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/android/camera/ui/Switch;->mMinFlingVelocity:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 313
    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_1

    move v1, v3

    .line 317
    .local v1, newState:Z
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/camera/ui/Switch;->animateThumbToCheckedState(Z)V

    .line 321
    .end local v1           #newState:Z
    .end local v2           #xvel:F
    :goto_2
    return-void

    .end local v0           #commitChange:Z
    :cond_0
    move v0, v4

    .line 304
    goto :goto_0

    .restart local v0       #commitChange:Z
    .restart local v2       #xvel:F
    :cond_1
    move v1, v4

    .line 313
    goto :goto_1

    .line 315
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/ui/Switch;->getTargetCheckedState()Z

    move-result v1

    .restart local v1       #newState:Z
    goto :goto_1

    .line 319
    .end local v1           #newState:Z
    .end local v2           #xvel:F
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/camera/ui/Switch;->animateThumbToCheckedState(Z)V

    goto :goto_2
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 456
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 458
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->getDrawableState()[I

    move-result-object v0

    .line 462
    .local v0, myDrawableState:[I
    iget-object v1, p0, Lcom/android/camera/ui/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 463
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 465
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->invalidate()V

    .line 466
    return-void
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .prologue
    .line 429
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v1

    iget v2, p0, Lcom/android/camera/ui/Switch;->mSwitchWidth:I

    add-int v0, v1, v2

    .line 430
    .local v0, padding:I
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 431
    iget v1, p0, Lcom/android/camera/ui/Switch;->mSwitchPadding:I

    add-int/2addr v0, v1

    .line 433
    :cond_0
    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 476
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 477
    iget-object v0, p0, Lcom/android/camera/ui/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 478
    iget-object v0, p0, Lcom/android/camera/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 479
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .parameter "extraSpace"

    .prologue
    .line 446
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 448
    .local v0, drawableState:[I
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    sget-object v1, Lcom/android/camera/ui/Switch;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/android/camera/ui/Switch;->mergeDrawableStates([I[I)[I

    .line 451
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .parameter "canvas"

    .prologue
    .line 383
    invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 386
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/ui/Switch;->mSwitchLeft:I

    .line 387
    .local v6, switchLeft:I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/camera/ui/Switch;->mSwitchTop:I

    .line 388
    .local v9, switchTop:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/camera/ui/Switch;->mSwitchRight:I

    .line 389
    .local v7, switchRight:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/ui/Switch;->mSwitchBottom:I

    .line 391
    .local v1, switchBottom:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v6, v9, v7, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 392
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 394
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 396
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 397
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    add-int v3, v6, v13

    .line 398
    .local v3, switchInnerLeft:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    add-int v5, v9, v13

    .line 399
    .local v5, switchInnerTop:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    sub-int v4, v7, v13

    .line 400
    .local v4, switchInnerRight:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v1, v13

    .line 401
    .local v2, switchInnerBottom:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v9, v4, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 403
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 404
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/ui/Switch;->mThumbPosition:F

    const/high16 v14, 0x3f00

    add-float/2addr v13, v14

    float-to-int v11, v13

    .line 405
    .local v11, thumbPos:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    sub-int v13, v3, v13

    add-int v10, v13, v11

    .line 406
    .local v10, thumbLeft:I
    add-int v13, v3, v11

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/ui/Switch;->mThumbWidth:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    add-int v12, v13, v14

    .line 408
    .local v12, thumbRight:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v10, v9, v12, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 409
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    if-eqz v13, :cond_0

    .line 413
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/Switch;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/Switch;->getDrawableState()[I

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/text/TextPaint;->setColor(I)V

    .line 416
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/Switch;->getDrawableState()[I

    move-result-object v14

    iput-object v14, v13, Landroid/text/TextPaint;->drawableState:[I

    .line 418
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/Switch;->getTargetCheckedState()Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/ui/Switch;->mOnLayout:Landroid/text/Layout;

    .line 420
    .local v8, switchText:Landroid/text/Layout;
    :goto_0
    add-int v13, v10, v12

    div-int/lit8 v13, v13, 0x2

    invoke-virtual {v8}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    int-to-float v13, v13

    add-int v14, v5, v2

    div-int/lit8 v14, v14, 0x2

    invoke-virtual {v8}, Landroid/text/Layout;->getHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    int-to-float v14, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 422
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 424
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 425
    return-void

    .line 418
    .end local v8           #switchText:Landroid/text/Layout;
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/ui/Switch;->mOffLayout:Landroid/text/Layout;

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 484
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 485
    const-class v0, Lcom/android/camera/ui/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 486
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 491
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 492
    const-class v0, Lcom/android/camera/ui/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 493
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/Switch;->mTextOn:Ljava/lang/CharSequence;

    .line 494
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 495
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 496
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 497
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 504
    :cond_0
    :goto_1
    return-void

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/Switch;->mTextOff:Ljava/lang/CharSequence;

    goto :goto_0

    .line 499
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 500
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 344
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 346
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->isChecked()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/camera/ui/Switch;->setThumbPosition(Z)V

    .line 351
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->getPaddingRight()I

    move-result v5

    sub-int v2, v4, v5

    .line 352
    .local v2, switchRight:I
    iget v4, p0, Lcom/android/camera/ui/Switch;->mSwitchWidth:I

    sub-int v1, v2, v4

    .line 354
    .local v1, switchLeft:I
    const/4 v3, 0x0

    .line 355
    .local v3, switchTop:I
    const/4 v0, 0x0

    .line 356
    .local v0, switchBottom:I
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->getGravity()I

    move-result v4

    and-int/lit8 v4, v4, 0x70

    sparse-switch v4, :sswitch_data_0

    .line 359
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->getPaddingTop()I

    move-result v3

    .line 360
    iget v4, p0, Lcom/android/camera/ui/Switch;->mSwitchHeight:I

    add-int v0, v3, v4

    .line 375
    :goto_0
    iput v1, p0, Lcom/android/camera/ui/Switch;->mSwitchLeft:I

    .line 376
    iput v3, p0, Lcom/android/camera/ui/Switch;->mSwitchTop:I

    .line 377
    iput v0, p0, Lcom/android/camera/ui/Switch;->mSwitchBottom:I

    .line 378
    iput v2, p0, Lcom/android/camera/ui/Switch;->mSwitchRight:I

    .line 379
    return-void

    .line 364
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/android/camera/ui/Switch;->mSwitchHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 366
    iget v4, p0, Lcom/android/camera/ui/Switch;->mSwitchHeight:I

    add-int v0, v3, v4

    .line 367
    goto :goto_0

    .line 370
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 371
    iget v4, p0, Lcom/android/camera/ui/Switch;->mSwitchHeight:I

    sub-int v3, v0, v4

    goto :goto_0

    .line 356
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 160
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 161
    .local v5, widthMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 162
    .local v6, widthSize:I
    iget-object v7, p0, Lcom/android/camera/ui/Switch;->mOnLayout:Landroid/text/Layout;

    if-nez v7, :cond_0

    .line 163
    iget-object v7, p0, Lcom/android/camera/ui/Switch;->mTextOn:Ljava/lang/CharSequence;

    iget v8, p0, Lcom/android/camera/ui/Switch;->mSwitchTextMaxWidth:I

    invoke-direct {p0, v7, v8}, Lcom/android/camera/ui/Switch;->makeLayout(Ljava/lang/CharSequence;I)Landroid/text/Layout;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/ui/Switch;->mOnLayout:Landroid/text/Layout;

    .line 165
    :cond_0
    iget-object v7, p0, Lcom/android/camera/ui/Switch;->mOffLayout:Landroid/text/Layout;

    if-nez v7, :cond_1

    .line 166
    iget-object v7, p0, Lcom/android/camera/ui/Switch;->mTextOff:Ljava/lang/CharSequence;

    iget v8, p0, Lcom/android/camera/ui/Switch;->mSwitchTextMaxWidth:I

    invoke-direct {p0, v7, v8}, Lcom/android/camera/ui/Switch;->makeLayout(Ljava/lang/CharSequence;I)Landroid/text/Layout;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/ui/Switch;->mOffLayout:Landroid/text/Layout;

    .line 169
    :cond_1
    iget-object v7, p0, Lcom/android/camera/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/android/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 170
    iget v7, p0, Lcom/android/camera/ui/Switch;->mSwitchTextMaxWidth:I

    iget-object v8, p0, Lcom/android/camera/ui/Switch;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v8}, Landroid/text/Layout;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/android/camera/ui/Switch;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v9}, Landroid/text/Layout;->getWidth()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 172
    .local v0, maxTextWidth:I
    iget v7, p0, Lcom/android/camera/ui/Switch;->mSwitchMinWidth:I

    mul-int/lit8 v8, v0, 0x2

    iget v9, p0, Lcom/android/camera/ui/Switch;->mThumbTextPadding:I

    mul-int/lit8 v9, v9, 0x4

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/camera/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 174
    .local v4, switchWidth:I
    iget-object v7, p0, Lcom/android/camera/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 176
    .local v3, switchHeight:I
    iget v7, p0, Lcom/android/camera/ui/Switch;->mThumbTextPadding:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v0

    iput v7, p0, Lcom/android/camera/ui/Switch;->mThumbWidth:I

    .line 178
    iput v4, p0, Lcom/android/camera/ui/Switch;->mSwitchWidth:I

    .line 179
    iput v3, p0, Lcom/android/camera/ui/Switch;->mSwitchHeight:I

    .line 181
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 182
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->getMeasuredHeight()I

    move-result v1

    .line 183
    .local v1, measuredHeight:I
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->getMeasuredWidth()I

    move-result v2

    .line 184
    .local v2, measuredWidth:I
    if-ge v1, v3, :cond_2

    .line 185
    invoke-virtual {p0, v2, v3}, Lcom/android/camera/ui/Switch;->setMeasuredDimension(II)V

    .line 187
    :cond_2
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "event"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ui/Switch;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 194
    .local v0, text:Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_0
    return-void

    .line 193
    .end local v0           #text:Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/Switch;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x1

    .line 224
    iget-object v6, p0, Lcom/android/camera/ui/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 225
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 226
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 286
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :cond_1
    :goto_1
    return v5

    .line 228
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 229
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 230
    .local v4, y:F
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0, v3, v4}, Lcom/android/camera/ui/Switch;->hitThumb(FF)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 231
    iput v5, p0, Lcom/android/camera/ui/Switch;->mTouchMode:I

    .line 232
    iput v3, p0, Lcom/android/camera/ui/Switch;->mTouchX:F

    .line 233
    iput v4, p0, Lcom/android/camera/ui/Switch;->mTouchY:F

    goto :goto_0

    .line 239
    .end local v3           #x:F
    .end local v4           #y:F
    :pswitch_2
    iget v6, p0, Lcom/android/camera/ui/Switch;->mTouchMode:I

    packed-switch v6, :pswitch_data_1

    goto :goto_0

    .line 245
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 246
    .restart local v3       #x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 247
    .restart local v4       #y:F
    iget v6, p0, Lcom/android/camera/ui/Switch;->mTouchX:F

    sub-float v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/camera/ui/Switch;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_2

    iget v6, p0, Lcom/android/camera/ui/Switch;->mTouchY:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/camera/ui/Switch;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 249
    :cond_2
    iput v8, p0, Lcom/android/camera/ui/Switch;->mTouchMode:I

    .line 250
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 251
    iput v3, p0, Lcom/android/camera/ui/Switch;->mTouchX:F

    .line 252
    iput v4, p0, Lcom/android/camera/ui/Switch;->mTouchY:F

    goto :goto_1

    .line 259
    .end local v3           #x:F
    .end local v4           #y:F
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 260
    .restart local v3       #x:F
    iget v6, p0, Lcom/android/camera/ui/Switch;->mTouchX:F

    sub-float v1, v3, v6

    .line 261
    .local v1, dx:F
    const/4 v6, 0x0

    iget v7, p0, Lcom/android/camera/ui/Switch;->mThumbPosition:F

    add-float/2addr v7, v1

    invoke-direct {p0}, Lcom/android/camera/ui/Switch;->getThumbScrollRange()I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 263
    .local v2, newPos:F
    iget v6, p0, Lcom/android/camera/ui/Switch;->mThumbPosition:F

    cmpl-float v6, v2, v6

    if-eqz v6, :cond_1

    .line 264
    iput v2, p0, Lcom/android/camera/ui/Switch;->mThumbPosition:F

    .line 265
    iput v3, p0, Lcom/android/camera/ui/Switch;->mTouchX:F

    .line 266
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->invalidate()V

    goto :goto_1

    .line 276
    .end local v1           #dx:F
    .end local v2           #newPos:F
    .end local v3           #x:F
    :pswitch_5
    iget v6, p0, Lcom/android/camera/ui/Switch;->mTouchMode:I

    if-ne v6, v8, :cond_3

    .line 277
    invoke-direct {p0, p1}, Lcom/android/camera/ui/Switch;->stopDrag(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 280
    :cond_3
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/camera/ui/Switch;->mTouchMode:I

    .line 281
    iget-object v5, p0, Lcom/android/camera/ui/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    .line 226
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 239
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 337
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 338
    invoke-direct {p0, p1}, Lcom/android/camera/ui/Switch;->setThumbPosition(Z)V

    .line 339
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->invalidate()V

    .line 340
    return-void
.end method

.method public setSwitchTextAppearance(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "resid"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 150
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    .line 151
    const v2, 0x7f0e001e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 152
    .local v1, ts:I
    int-to-float v2, v1

    iget-object v3, p0, Lcom/android/camera/ui/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSize()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/android/camera/ui/Switch;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 154
    invoke-virtual {p0}, Lcom/android/camera/ui/Switch;->requestLayout()V

    .line 156
    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 470
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
