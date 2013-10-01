.class public Lcom/android/gallery3d/app/PhotoPageBottomControls;
.super Ljava/lang/Object;
.source "PhotoPageBottomControls.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/PhotoPageBottomControls$Delegate;
    }
.end annotation


# instance fields
.field private mContainer:Landroid/view/ViewGroup;

.field private mContainerAnimIn:Landroid/view/animation/Animation;

.field private mContainerAnimOut:Landroid/view/animation/Animation;

.field private mContainerVisible:Z

.field private mControlsVisible:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDelegate:Lcom/android/gallery3d/app/PhotoPageBottomControls$Delegate;

.field private mParentLayout:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/PhotoPageBottomControls$Delegate;Landroid/content/Context;Landroid/widget/RelativeLayout;)V
    .locals 9
    .parameter "delegate"
    .parameter "context"
    .parameter "layout"

    .prologue
    const-wide/16 v7, 0xc8

    const/high16 v6, 0x3f80

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v5, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainerVisible:Z

    .line 46
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mControlsVisible:Ljava/util/Map;

    .line 48
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v4, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v3, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainerAnimIn:Landroid/view/animation/Animation;

    .line 49
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v6, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v3, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainerAnimOut:Landroid/view/animation/Animation;

    .line 61
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mDelegate:Lcom/android/gallery3d/app/PhotoPageBottomControls$Delegate;

    .line 62
    iput-object p3, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mParentLayout:Landroid/view/ViewGroup;

    .line 64
    const-string v3, "layout_inflater"

    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 66
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f040037

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    .line 68
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mParentLayout:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 70
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 71
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 72
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mControlsVisible:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 76
    .end local v0           #child:Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainerAnimIn:Landroid/view/animation/Animation;

    invoke-virtual {v3, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 77
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainerAnimOut:Landroid/view/animation/Animation;

    invoke-virtual {v3, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 79
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mDelegate:Lcom/android/gallery3d/app/PhotoPageBottomControls$Delegate;

    invoke-interface {v3}, Lcom/android/gallery3d/app/PhotoPageBottomControls$Delegate;->refreshBottomControlsWhenReady()V

    .line 80
    return-void
.end method

.method private static getControlAnimForVisibility(Z)Landroid/view/animation/Animation;
    .locals 3
    .parameter "visible"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 54
    if-eqz p0, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 56
    .local v0, anim:Landroid/view/animation/Animation;
    :goto_0
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 57
    return-object v0

    .line 54
    .end local v0           #anim:Landroid/view/animation/Animation;
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_0
.end method

.method private hide()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainerAnimOut:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainerAnimOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 86
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 87
    return-void
.end method

.method private show()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 91
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainerAnimIn:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 92
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainerAnimIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 93
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 94
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mParentLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 128
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mControlsVisible:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 129
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainerVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mControlsVisible:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mDelegate:Lcom/android/gallery3d/app/PhotoPageBottomControls$Delegate;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/PhotoPageBottomControls$Delegate;->onBottomControlClicked(I)V

    .line 136
    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 97
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mDelegate:Lcom/android/gallery3d/app/PhotoPageBottomControls$Delegate;

    invoke-interface {v6}, Lcom/android/gallery3d/app/PhotoPageBottomControls$Delegate;->canDisplayBottomControls()Z

    move-result v5

    .line 98
    .local v5, visible:Z
    iget-boolean v6, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainerVisible:Z

    if-eq v5, v6, :cond_1

    const/4 v0, 0x1

    .line 99
    .local v0, containerVisibilityChanged:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 100
    if-eqz v5, :cond_2

    .line 101
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPageBottomControls;->show()V

    .line 105
    :goto_1
    iput-boolean v5, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainerVisible:Z

    .line 107
    :cond_0
    iget-boolean v6, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainerVisible:Z

    if-nez v6, :cond_3

    .line 124
    :goto_2
    return-void

    .end local v0           #containerVisibilityChanged:Z
    :cond_1
    move v0, v7

    .line 98
    goto :goto_0

    .line 103
    .restart local v0       #containerVisibilityChanged:Z
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPageBottomControls;->hide()V

    goto :goto_1

    .line 110
    :cond_3
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mControlsVisible:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 111
    .local v1, control:Landroid/view/View;
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mControlsVisible:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 112
    .local v4, prevVisibility:Ljava/lang/Boolean;
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mDelegate:Lcom/android/gallery3d/app/PhotoPageBottomControls$Delegate;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v8

    invoke-interface {v6, v8}, Lcom/android/gallery3d/app/PhotoPageBottomControls$Delegate;->canDisplayBottomControl(I)Z

    move-result v2

    .line 113
    .local v2, curVisibility:Z
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eq v6, v2, :cond_4

    .line 114
    if-nez v0, :cond_5

    .line 115
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 116
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPageBottomControls;->getControlAnimForVisibility(Z)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 118
    :cond_5
    if-eqz v2, :cond_6

    move v6, v7

    :goto_4
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mControlsVisible:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 118
    :cond_6
    const/4 v6, 0x4

    goto :goto_4

    .line 123
    .end local v1           #control:Landroid/view/View;
    .end local v2           #curVisibility:Z
    .end local v4           #prevVisibility:Ljava/lang/Boolean;
    :cond_7
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_2
.end method
