.class public Lcom/android/camera/ui/CameraSwitcher;
.super Lcom/android/camera/ui/RotateImageView;
.source "CameraSwitcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/CameraSwitcher$CameraSwitchListener;
    }
.end annotation


# instance fields
.field private mCurrentIndex:I

.field private mDrawIds:[I

.field private mHideAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mIndicator:Landroid/graphics/drawable/Drawable;

.field private mItemSize:I

.field private mListener:Lcom/android/camera/ui/CameraSwitcher$CameraSwitchListener;

.field private mNeedsAnimationSetup:Z

.field private mParent:Landroid/view/View;

.field private mPopup:Landroid/view/View;

.field private mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mShowingPopup:Z

.field private mTranslationX:F

.field private mTranslationY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 59
    iput v0, p0, Lcom/android/camera/ui/CameraSwitcher;->mTranslationX:F

    .line 60
    iput v0, p0, Lcom/android/camera/ui/CameraSwitcher;->mTranslationY:F

    .line 67
    invoke-direct {p0, p1}, Lcom/android/camera/ui/CameraSwitcher;->init(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    iput v0, p0, Lcom/android/camera/ui/CameraSwitcher;->mTranslationX:F

    .line 60
    iput v0, p0, Lcom/android/camera/ui/CameraSwitcher;->mTranslationY:F

    .line 72
    invoke-direct {p0, p1}, Lcom/android/camera/ui/CameraSwitcher;->init(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/CameraSwitcher;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/camera/ui/CameraSwitcher;->onCameraSelected(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ui/CameraSwitcher;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    return-object v0
.end method

.method private animateHidePopup()Z
    .locals 5

    .prologue
    const-wide/16 v3, 0xc8

    const v2, 0x3e99999a

    .line 236
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_VIEW_PROPERTY_ANIMATOR:Z

    if-nez v0, :cond_0

    .line 237
    const/4 v0, 0x0

    .line 259
    :goto_0
    return v0

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitcher;->mHideAnimationListener:Landroid/animation/Animator$AnimatorListener;

    if-nez v0, :cond_1

    .line 240
    new-instance v0, Lcom/android/camera/ui/CameraSwitcher$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/CameraSwitcher$2;-><init>(Lcom/android/camera/ui/CameraSwitcher;)V

    iput-object v0, p0, Lcom/android/camera/ui/CameraSwitcher;->mHideAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/CameraSwitcher;->mTranslationX:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/CameraSwitcher;->mTranslationY:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/CameraSwitcher;->mHideAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 257
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSwitcher;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 259
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private animateShowPopup()Z
    .locals 5

    .prologue
    const-wide/16 v3, 0xc8

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    .line 263
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_VIEW_PROPERTY_ANIMATOR:Z

    if-nez v0, :cond_0

    .line 264
    const/4 v0, 0x0

    .line 289
    :goto_0
    return v0

    .line 266
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraSwitcher;->mNeedsAnimationSetup:Z

    if-eqz v0, :cond_1

    .line 267
    invoke-direct {p0}, Lcom/android/camera/ui/CameraSwitcher;->popupAnimationSetup()V

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitcher;->mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    if-nez v0, :cond_2

    .line 270
    new-instance v0, Lcom/android/camera/ui/CameraSwitcher$3;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/CameraSwitcher$3;-><init>(Lcom/android/camera/ui/CameraSwitcher;)V

    iput-object v0, p0, Lcom/android/camera/ui/CameraSwitcher;->mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 280
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 287
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSwitcher;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/CameraSwitcher;->mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 289
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private hidePopup()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 170
    iput-boolean v0, p0, Lcom/android/camera/ui/CameraSwitcher;->mShowingPopup:Z

    .line 171
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraSwitcher;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/CameraSwitcher;->animateHidePopup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitcher;->mParent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 176
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/CameraSwitcher;->mItemSize:I

    .line 77
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/CameraSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraSwitcher;->mIndicator:Landroid/graphics/drawable/Drawable;

    .line 79
    return-void
.end method

.method private initPopup()V
    .locals 7

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSwitcher;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040042

    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSwitcher;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/ui/CameraSwitcher;->mParent:Landroid/view/View;

    .line 118
    iget-object v4, p0, Lcom/android/camera/ui/CameraSwitcher;->mParent:Landroid/view/View;

    const v5, 0x7f10000a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 119
    .local v0, content:Landroid/widget/LinearLayout;
    iput-object v0, p0, Lcom/android/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    .line 120
    iget-object v4, p0, Lcom/android/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 121
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/camera/ui/CameraSwitcher;->mNeedsAnimationSetup:Z

    .line 122
    iget-object v4, p0, Lcom/android/camera/ui/CameraSwitcher;->mDrawIds:[I

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 123
    new-instance v3, Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSwitcher;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 124
    .local v3, item:Lcom/android/camera/ui/RotateImageView;
    iget-object v4, p0, Lcom/android/camera/ui/CameraSwitcher;->mDrawIds:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 125
    const v4, 0x7f020004

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/RotateImageView;->setBackgroundResource(I)V

    .line 126
    move v2, v1

    .line 127
    .local v2, index:I
    new-instance v4, Lcom/android/camera/ui/CameraSwitcher$1;

    invoke-direct {v4, p0, v2}, Lcom/android/camera/ui/CameraSwitcher$1;-><init>(Lcom/android/camera/ui/CameraSwitcher;I)V

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v4, p0, Lcom/android/camera/ui/CameraSwitcher;->mDrawIds:[I

    aget v4, v4, v1

    packed-switch v4, :pswitch_data_0

    .line 153
    :goto_1
    :pswitch_0
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/android/camera/ui/CameraSwitcher;->mItemSize:I

    iget v6, p0, Lcom/android/camera/ui/CameraSwitcher;->mItemSize:I

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 135
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSwitcher;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0107

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/RotateImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 139
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSwitcher;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0108

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/RotateImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 143
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSwitcher;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0109

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/RotateImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 147
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSwitcher;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a010a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/RotateImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 155
    .end local v2           #index:I
    .end local v3           #item:Lcom/android/camera/ui/RotateImageView;
    :cond_0
    return-void

    .line 133
    :pswitch_data_0
    .packed-switch 0x7f0200d8
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method private onCameraSelected(I)V
    .locals 1
    .parameter "ix"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/camera/ui/CameraSwitcher;->hidePopup()V

    .line 102
    iget v0, p0, Lcom/android/camera/ui/CameraSwitcher;->mCurrentIndex:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitcher;->mListener:Lcom/android/camera/ui/CameraSwitcher$CameraSwitchListener;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/CameraSwitcher;->setCurrentIndex(I)V

    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitcher;->mListener:Lcom/android/camera/ui/CameraSwitcher$CameraSwitchListener;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/CameraSwitcher$CameraSwitchListener;->onCameraSelected(I)V

    .line 106
    :cond_0
    return-void
.end method

.method private popupAnimationSetup()V
    .locals 2

    .prologue
    const v1, 0x3e99999a

    .line 224
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_VIEW_PROPERTY_ANIMATOR:Z

    if-nez v0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/CameraSwitcher;->updateInitialTranslations()V

    .line 228
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 229
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 230
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    iget v1, p0, Lcom/android/camera/ui/CameraSwitcher;->mTranslationX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 231
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    iget v1, p0, Lcom/android/camera/ui/CameraSwitcher;->mTranslationY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/CameraSwitcher;->mNeedsAnimationSetup:Z

    goto :goto_0
.end method

.method private showSwitcher()V
    .locals 2

    .prologue
    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/CameraSwitcher;->mShowingPopup:Z

    .line 180
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    if-nez v0, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/android/camera/ui/CameraSwitcher;->initPopup()V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    invoke-direct {p0}, Lcom/android/camera/ui/CameraSwitcher;->animateShowPopup()Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraSwitcher;->setVisibility(I)V

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitcher;->mParent:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 188
    return-void
.end method

.method private updateInitialTranslations()V
    .locals 2

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSwitcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSwitcher;->getWidth()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/ui/CameraSwitcher;->mTranslationX:F

    .line 217
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSwitcher;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/ui/CameraSwitcher;->mTranslationY:F

    .line 222
    :goto_0
    return-void

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSwitcher;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/ui/CameraSwitcher;->mTranslationX:F

    .line 220
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSwitcher;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/ui/CameraSwitcher;->mTranslationY:F

    goto :goto_0
.end method


# virtual methods
.method public closePopup()V
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSwitcher;->showsPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/android/camera/ui/CameraSwitcher;->hidePopup()V

    .line 200
    :cond_0
    return-void
.end method

.method public isInsidePopup(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "evt"

    .prologue
    const/4 v0, 0x0

    .line 162
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSwitcher;->showsPopup()Z

    move-result v1

    if-nez v1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/camera/ui/CameraSwitcher;->showSwitcher()V

    .line 97
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitcher;->mListener:Lcom/android/camera/ui/CameraSwitcher$CameraSwitchListener;

    invoke-interface {v0}, Lcom/android/camera/ui/CameraSwitcher$CameraSwitchListener;->onShowSwitcherPopup()V

    .line 98
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/android/camera/ui/RotateImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 111
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitcher;->mIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSwitcher;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 112
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitcher;->mIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 113
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSwitcher;->closePopup()V

    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public setCurrentIndex(I)V
    .locals 1
    .parameter "i"

    .prologue
    .line 86
    iput p1, p0, Lcom/android/camera/ui/CameraSwitcher;->mCurrentIndex:I

    .line 87
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitcher;->mDrawIds:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraSwitcher;->setImageResource(I)V

    .line 88
    return-void
.end method

.method public setDrawIds([I)V
    .locals 0
    .parameter "drawids"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/camera/ui/CameraSwitcher;->mDrawIds:[I

    .line 83
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 4
    .parameter "degree"
    .parameter "animate"

    .prologue
    .line 204
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 205
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 206
    .local v0, content:Landroid/view/ViewGroup;
    if-nez v0, :cond_1

    .line 211
    :cond_0
    return-void

    .line 207
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 208
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/RotateImageView;

    .line 209
    .local v2, iv:Lcom/android/camera/ui/RotateImageView;
    invoke-virtual {v2, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setSwitchListener(Lcom/android/camera/ui/CameraSwitcher$CameraSwitchListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/camera/ui/CameraSwitcher;->mListener:Lcom/android/camera/ui/CameraSwitcher$CameraSwitchListener;

    .line 92
    return-void
.end method

.method public showsPopup()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraSwitcher;->mShowingPopup:Z

    return v0
.end method
