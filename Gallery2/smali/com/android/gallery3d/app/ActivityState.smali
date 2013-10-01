.class public abstract Lcom/android/gallery3d/app/ActivityState;
.super Ljava/lang/Object;
.source "ActivityState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/ActivityState$ResultEntry;
    }
.end annotation


# instance fields
.field protected mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field protected mBackgroundColor:[F

.field private mContentPane:Lcom/android/gallery3d/ui/GLView;

.field private mContentResolver:Landroid/content/ContentResolver;

.field protected mData:Landroid/os/Bundle;

.field private mDestroyed:Z

.field protected mFlags:I

.field protected mHapticsEnabled:Z

.field private mIntroAnimation:Lcom/android/gallery3d/anim/StateTransitionAnimation;

.field mIsFinishing:Z

.field private mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

.field private mPlugged:Z

.field mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mReceivedResults:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

.field protected mResult:Lcom/android/gallery3d/app/ActivityState$ResultEntry;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean v0, p0, Lcom/android/gallery3d/app/ActivityState;->mDestroyed:Z

    .line 69
    iput-boolean v0, p0, Lcom/android/gallery3d/app/ActivityState;->mPlugged:Z

    .line 70
    iput-boolean v0, p0, Lcom/android/gallery3d/app/ActivityState;->mIsFinishing:Z

    .line 74
    sget-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->None:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    iput-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    .line 139
    new-instance v0, Lcom/android/gallery3d/app/ActivityState$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/ActivityState$1;-><init>(Lcom/android/gallery3d/app/ActivityState;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/ActivityState;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ActivityState;->mPlugged:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/gallery3d/app/ActivityState;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/gallery3d/app/ActivityState;->mPlugged:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/ActivityState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/gallery3d/app/ActivityState;->setScreenFlags()V

    return-void
.end method

.method private setScreenFlags()V
    .locals 4

    .prologue
    .line 155
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 156
    .local v1, win:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 157
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    iget v2, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/gallery3d/app/ActivityState;->mPlugged:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 159
    :cond_0
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 163
    :goto_0
    iget v2, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_2

    .line 164
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 168
    :goto_1
    iget v2, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_3

    .line 169
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x8

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 173
    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 174
    return-void

    .line 161
    :cond_1
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x81

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 166
    :cond_2
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    .line 171
    :cond_3
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x80001

    and-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2
.end method


# virtual methods
.method protected clearStateResult()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method protected getBackgroundColor()[F
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mBackgroundColor:[F

    return-object v0
.end method

.method protected getBackgroundColorId()I
    .locals 1

    .prologue
    .line 124
    const v0, 0x7f0b0015

    return v0
.end method

.method public getData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    return-object v0
.end method

.method protected getSupportMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method initialize(Lcom/android/gallery3d/app/AbstractGalleryActivity;Landroid/os/Bundle;)V
    .locals 1
    .parameter "activity"
    .parameter "data"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 94
    iput-object p2, p0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    .line 95
    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mContentResolver:Landroid/content/ContentResolver;

    .line 96
    return-void
.end method

.method isDestroyed()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ActivityState;->mDestroyed:Z

    return v0
.end method

.method protected onBackPressed()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    .line 104
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 113
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2
    .parameter "data"
    .parameter "storedState"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getBackgroundColorId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->intColorToFloatARGBArray(I)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mBackgroundColor:[F

    .line 134
    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/ActivityState;->mDestroyed:Z

    .line 271
    return-void
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 188
    iget v0, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    sget-object v1, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->None:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    if-eq v0, v1, :cond_1

    .line 192
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v0

    const-string v1, "transition-in"

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 193
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mContentPane:Lcom/android/gallery3d/ui/GLView;

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->prepareFadeOutTexture(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/GLView;)V

    .line 194
    sget-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->None:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    iput-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    .line 196
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 249
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v1

    const-string v2, "fade_texture"

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/TransitionStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/RawTexture;

    .line 251
    .local v0, fade:Lcom/android/gallery3d/ui/RawTexture;
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v1

    const-string v2, "transition-in"

    sget-object v3, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->None:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/app/TransitionStore;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    iput-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    .line 253
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    sget-object v2, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->None:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    if-eq v1, v2, :cond_0

    .line 254
    new-instance v1, Lcom/android/gallery3d/anim/StateTransitionAnimation;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    invoke-direct {v1, v2, v0}, Lcom/android/gallery3d/anim/StateTransitionAnimation;-><init>(Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;Lcom/android/gallery3d/ui/RawTexture;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mIntroAnimation:Lcom/android/gallery3d/anim/StateTransitionAnimation;

    .line 255
    sget-object v1, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->None:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    iput-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    .line 257
    :cond_0
    return-void
.end method

.method protected onSaveState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 116
    return-void
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 119
    return-void
.end method

.method resume()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 200
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 201
    .local v1, activity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 202
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 203
    iget v7, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3

    .line 204
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 208
    :goto_0
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v6

    .line 209
    .local v6, stateCount:I
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v10

    if-le v6, v8, :cond_4

    move v7, v8

    :goto_1
    invoke-virtual {v10, v7, v8}, Lcom/android/gallery3d/app/GalleryActionBar;->setDisplayOptions(ZZ)V

    .line 211
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 214
    .end local v6           #stateCount:I
    :cond_0
    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->invalidateOptionsMenu()V

    .line 216
    invoke-direct {p0}, Lcom/android/gallery3d/app/ActivityState;->setScreenFlags()V

    .line 218
    iget v7, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_5

    move v5, v8

    .line 219
    .local v5, lightsOut:Z
    :goto_2
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v7

    invoke-interface {v7, v5}, Lcom/android/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    .line 221
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mReceivedResults:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

    .line 222
    .local v3, entry:Lcom/android/gallery3d/app/ActivityState$ResultEntry;
    if-eqz v3, :cond_1

    .line 223
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mReceivedResults:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

    .line 224
    iget v7, v3, Lcom/android/gallery3d/app/ActivityState$ResultEntry;->requestCode:I

    iget v10, v3, Lcom/android/gallery3d/app/ActivityState$ResultEntry;->resultCode:I

    iget-object v11, v3, Lcom/android/gallery3d/app/ActivityState$ResultEntry;->resultData:Landroid/content/Intent;

    invoke-virtual {p0, v7, v10, v11}, Lcom/android/gallery3d/app/ActivityState;->onStateResult(IILandroid/content/Intent;)V

    .line 227
    :cond_1
    iget v7, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_2

    .line 229
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 230
    .local v4, filter:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v7, v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 235
    .end local v4           #filter:Landroid/content/IntentFilter;
    :cond_2
    :try_start_0
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "haptic_feedback_enabled"

    invoke-static {v7, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_6

    :goto_3
    iput-boolean v8, p0, Lcom/android/gallery3d/app/ActivityState;->mHapticsEnabled:Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_4
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->onResume()V

    .line 244
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/gallery3d/app/TransitionStore;->clear()V

    .line 245
    return-void

    .line 206
    .end local v3           #entry:Lcom/android/gallery3d/app/ActivityState$ResultEntry;
    .end local v5           #lightsOut:Z
    :cond_3
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    goto :goto_0

    .restart local v6       #stateCount:I
    :cond_4
    move v7, v9

    .line 209
    goto :goto_1

    .end local v6           #stateCount:I
    :cond_5
    move v5, v9

    .line 218
    goto :goto_2

    .restart local v3       #entry:Lcom/android/gallery3d/app/ActivityState$ResultEntry;
    .restart local v5       #lightsOut:Z
    :cond_6
    move v8, v9

    .line 235
    goto :goto_3

    .line 237
    :catch_0
    move-exception v2

    .line 238
    .local v2, e:Landroid/provider/Settings$SettingNotFoundException;
    iput-boolean v9, p0, Lcom/android/gallery3d/app/ActivityState;->mHapticsEnabled:Z

    goto :goto_4
.end method

.method protected setContentPane(Lcom/android/gallery3d/ui/GLView;)V
    .locals 2
    .parameter "content"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/gallery3d/app/ActivityState;->mContentPane:Lcom/android/gallery3d/ui/GLView;

    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mIntroAnimation:Lcom/android/gallery3d/anim/StateTransitionAnimation;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mContentPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mIntroAnimation:Lcom/android/gallery3d/anim/StateTransitionAnimation;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLView;->setIntroAnimation(Lcom/android/gallery3d/anim/StateTransitionAnimation;)V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mIntroAnimation:Lcom/android/gallery3d/anim/StateTransitionAnimation;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mContentPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getBackgroundColor()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLView;->setBackgroundColor([F)V

    .line 89
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mContentPane:Lcom/android/gallery3d/ui/GLView;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLRoot;->setContentPane(Lcom/android/gallery3d/ui/GLView;)V

    .line 90
    return-void
.end method

.method protected setStateResult(ILandroid/content/Intent;)V
    .locals 1
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mResult:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

    if-nez v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mResult:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

    iput p1, v0, Lcom/android/gallery3d/app/ActivityState$ResultEntry;->resultCode:I

    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mResult:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

    iput-object p2, v0, Lcom/android/gallery3d/app/ActivityState$ResultEntry;->resultData:Landroid/content/Intent;

    goto :goto_0
.end method

.method protected transitionOnNextPause(Ljava/lang/Class;Ljava/lang/Class;Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/gallery3d/app/ActivityState;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/gallery3d/app/ActivityState;",
            ">;",
            "Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;",
            ")V"
        }
    .end annotation

    .prologue
    .line 178
    const-class v0, Lcom/android/gallery3d/app/PhotoPage;

    if-ne p1, v0, :cond_0

    const-class v0, Lcom/android/gallery3d/app/AlbumPage;

    if-ne p2, v0, :cond_0

    .line 179
    sget-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->Outgoing:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    iput-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    .line 185
    :goto_0
    return-void

    .line 180
    :cond_0
    const-class v0, Lcom/android/gallery3d/app/AlbumPage;

    if-ne p1, v0, :cond_1

    const-class v0, Lcom/android/gallery3d/app/PhotoPage;

    if-ne p2, v0, :cond_1

    .line 181
    sget-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->PhotoIncoming:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    iput-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    goto :goto_0

    .line 183
    :cond_1
    iput-object p3, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    goto :goto_0
.end method
