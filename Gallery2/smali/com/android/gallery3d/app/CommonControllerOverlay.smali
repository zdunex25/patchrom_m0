.class public abstract Lcom/android/gallery3d/app/CommonControllerOverlay;
.super Landroid/widget/FrameLayout;
.source "CommonControllerOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/gallery3d/app/ControllerOverlay;
.implements Lcom/android/gallery3d/app/TimeBar$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/CommonControllerOverlay$State;
    }
.end annotation


# instance fields
.field protected final mBackground:Landroid/view/View;

.field protected mCanReplay:Z

.field protected final mErrorView:Landroid/widget/TextView;

.field protected mListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

.field protected final mLoadingView:Landroid/widget/LinearLayout;

.field protected mMainView:Landroid/view/View;

.field protected final mPlayPauseReplayView:Landroid/widget/ImageView;

.field protected mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

.field protected mTimeBar:Lcom/android/gallery3d/app/TimeBar;

.field private final mWindowInsets:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v6, -0x2

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 69
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 66
    iput-boolean v8, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mCanReplay:Z

    .line 247
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mWindowInsets:Landroid/graphics/Rect;

    .line 71
    sget-object v5, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->LOADING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    iput-object v5, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    .line 73
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 75
    .local v4, wrapContent:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 78
    .local v1, matchParent:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v5, Landroid/view/View;

    invoke-direct {v5, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mBackground:Landroid/view/View;

    .line 79
    iget-object v5, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mBackground:Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0049

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 80
    iget-object v5, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mBackground:Landroid/view/View;

    invoke-virtual {p0, v5, v1}, Lcom/android/gallery3d/app/CommonControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/CommonControllerOverlay;->createTimeBar(Landroid/content/Context;)V

    .line 85
    iget-object v5, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {p0, v5, v4}, Lcom/android/gallery3d/app/CommonControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mLoadingView:Landroid/widget/LinearLayout;

    .line 88
    iget-object v5, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mLoadingView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 89
    iget-object v5, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mLoadingView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 90
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-direct {v3, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 91
    .local v3, spinner:Landroid/widget/ProgressBar;
    invoke-virtual {v3, v8}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 92
    iget-object v5, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mLoadingView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/CommonControllerOverlay;->createOverlayTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    .line 94
    .local v0, loadingText:Landroid/widget/TextView;
    const v5, 0x7f0a018b

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 95
    iget-object v5, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mLoadingView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iget-object v5, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mLoadingView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v5, v4}, Lcom/android/gallery3d/app/CommonControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    .line 99
    iget-object v5, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    const v6, 0x7f0200e1

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    iget-object v5, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    const v6, 0x7f020007

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 101
    iget-object v5, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 102
    iget-object v5, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 103
    iget-object v5, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 104
    iget-object v5, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v5, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v4}, Lcom/android/gallery3d/app/CommonControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/CommonControllerOverlay;->createOverlayTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mErrorView:Landroid/widget/TextView;

    .line 108
    iget-object v5, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {p0, v5, v1}, Lcom/android/gallery3d/app/CommonControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 113
    .local v2, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/CommonControllerOverlay;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->hide()V

    .line 115
    return-void
.end method

.method private createOverlayTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 4
    .parameter "context"

    .prologue
    const/16 v3, 0xf

    const/4 v2, 0x0

    .line 120
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 121
    .local v0, view:Landroid/widget/TextView;
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 122
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 124
    return-object v0
.end method

.method private layoutCenteredView(Landroid/view/View;IIII)V
    .locals 6
    .parameter "view"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 290
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 291
    .local v3, cw:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 292
    .local v0, ch:I
    sub-int v4, p4, p2

    sub-int/2addr v4, v3

    div-int/lit8 v1, v4, 0x2

    .line 293
    .local v1, cl:I
    sub-int v4, p5, p3

    sub-int/2addr v4, v0

    div-int/lit8 v2, v4, 0x2

    .line 294
    .local v2, ct:I
    add-int v4, v1, v3

    add-int v5, v2, v0

    invoke-virtual {p1, v1, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 295
    return-void
.end method

.method private showMainView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 193
    iput-object p1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mMainView:Landroid/view/View;

    .line 194
    iget-object v3, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mErrorView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mMainView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mErrorView:Landroid/widget/TextView;

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    iget-object v3, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mLoadingView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mMainView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mLoadingView:Landroid/widget/LinearLayout;

    if-ne v0, v4, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mMainView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    if-ne v3, v4, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->show()V

    .line 199
    return-void

    :cond_0
    move v0, v2

    .line 194
    goto :goto_0

    :cond_1
    move v0, v2

    .line 195
    goto :goto_1

    :cond_2
    move v1, v2

    .line 196
    goto :goto_2
.end method


# virtual methods
.method protected abstract createTimeBar(Landroid/content/Context;)V
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "insets"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mWindowInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 254
    const/4 v0, 0x1

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 139
    return-object p0
.end method

.method public hide()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 183
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mLoadingView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/TimeBar;->setVisibility(I)V

    .line 187
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/CommonControllerOverlay;->setVisibility(I)V

    .line 188
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->setFocusable(Z)V

    .line 189
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->requestFocus()Z

    .line 190
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->ENDED:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-ne v0, v1, :cond_1

    .line 213
    iget-boolean v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mCanReplay:Z

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onReplay()V

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PAUSED:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-ne v0, v1, :cond_0

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onPlayPause()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 225
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 259
    iget-object v7, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mWindowInsets:Landroid/graphics/Rect;

    .line 260
    .local v7, insets:Landroid/graphics/Rect;
    iget v9, v7, Landroid/graphics/Rect;->left:I

    .line 261
    .local v9, pl:I
    iget v10, v7, Landroid/graphics/Rect;->right:I

    .line 262
    .local v10, pr:I
    iget v11, v7, Landroid/graphics/Rect;->top:I

    .line 263
    .local v11, pt:I
    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 265
    .local v8, pb:I
    sub-int v5, p5, p3

    .line 266
    .local v5, h:I
    sub-int v4, p4, p2

    .line 267
    .local v4, w:I
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v6, 0x1

    .line 269
    .local v6, error:Z
    :goto_0
    sub-int v12, v5, v8

    .line 274
    .local v12, y:I
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mBackground:Landroid/view/View;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/TimeBar;->getBarHeight()I

    move-result v2

    sub-int v2, v12, v2

    invoke-virtual {v0, v1, v2, v4, v12}, Landroid/view/View;->layout(IIII)V

    .line 275
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    iget-object v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/TimeBar;->getPreferredHeight()I

    move-result v1

    sub-int v1, v12, v1

    sub-int v2, v4, v10

    invoke-virtual {v0, v9, v1, v2, v12}, Lcom/android/gallery3d/app/TimeBar;->layout(IIII)V

    .line 279
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/TimeBar;->requestLayout()V

    .line 282
    iget-object v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/app/CommonControllerOverlay;->layoutCenteredView(Landroid/view/View;IIII)V

    .line 284
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mMainView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 285
    iget-object v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mMainView:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/app/CommonControllerOverlay;->layoutCenteredView(Landroid/view/View;IIII)V

    .line 287
    :cond_0
    return-void

    .line 267
    .end local v6           #error:Z
    .end local v12           #y:I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 299
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 300
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/app/CommonControllerOverlay;->measureChildren(II)V

    .line 301
    return-void
.end method

.method public onScrubbingEnd(III)V
    .locals 1
    .parameter "time"
    .parameter "trimStartTime"
    .parameter "trimEndTime"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onSeekEnd(III)V

    .line 332
    return-void
.end method

.method public onScrubbingMove(I)V
    .locals 1
    .parameter "time"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onSeekMove(I)V

    .line 327
    return-void
.end method

.method public onScrubbingStart()V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onSeekStart()V

    .line 322
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 230
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    const/4 v0, 0x1

    .line 233
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCanReplay(Z)V
    .locals 0
    .parameter "canReplay"

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mCanReplay:Z

    .line 135
    return-void
.end method

.method public setListener(Lcom/android/gallery3d/app/ControllerOverlay$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    .line 130
    return-void
.end method

.method public setTimes(IIII)V
    .locals 1
    .parameter "currentTime"
    .parameter "totalTime"
    .parameter "trimStartTime"
    .parameter "trimEndTime"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/gallery3d/app/TimeBar;->setTime(IIII)V

    .line 180
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 203
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->updateViews()V

    .line 204
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->setVisibility(I)V

    .line 205
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->setFocusable(Z)V

    .line 206
    return-void
.end method

.method public showEnded()V
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->ENDED:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    .line 157
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 158
    return-void
.end method

.method public showErrorMessage(Ljava/lang/String;)V
    .locals 4
    .parameter "message"

    .prologue
    .line 168
    sget-object v1, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->ERROR:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    iput-object v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    .line 169
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e2aaaab

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 170
    .local v0, padding:I
    iget-object v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mErrorView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 172
    iget-object v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mErrorView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/CommonControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 174
    return-void
.end method

.method public showLoading()V
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->LOADING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    .line 163
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mLoadingView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 164
    return-void
.end method

.method public showPaused()V
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PAUSED:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    .line 151
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 152
    return-void
.end method

.method public showPlaying()V
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    .line 145
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 146
    return-void
.end method

.method protected updateViews()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 304
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/TimeBar;->setVisibility(I)V

    .line 306
    iget-object v2, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v3, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PAUSED:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-ne v0, v3, :cond_1

    const v0, 0x7f0200e1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 310
    iget-object v2, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v3, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->LOADING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v3, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->ERROR:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v3, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->ENDED:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-ne v0, v3, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mCanReplay:Z

    if-eqz v0, :cond_3

    :cond_0
    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 314
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->requestLayout()V

    .line 315
    return-void

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v3, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-ne v0, v3, :cond_2

    const v0, 0x7f0200e0

    goto :goto_0

    :cond_2
    const v0, 0x7f0200e2

    goto :goto_0

    .line 310
    :cond_3
    const/16 v0, 0x8

    goto :goto_1
.end method
