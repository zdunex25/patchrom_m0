.class public Lcom/android/gallery3d/app/MovieActivity;
.super Landroid/app/Activity;
.source "MovieActivity.java"


# instance fields
.field private mFinishOnCompletion:Z

.field private mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

.field private mTreatUpAsBack:Z

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/MovieActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mFinishOnCompletion:Z

    return v0
.end method

.method private createShareIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 185
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const-string v1, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 188
    return-object v0
.end method

.method private initializeActionBar(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 128
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    .line 129
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    .line 130
    .local v8, actionBar:Landroid/app/ActionBar;
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieActivity;->setActionBarLogoFromIntent(Landroid/content/Intent;)V

    .line 131
    invoke-virtual {v8, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 135
    const-string v3, "android.intent.extra.TITLE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 136
    .local v9, title:Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 137
    invoke-virtual {v8, v9}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 164
    :goto_0
    return-void

    .line 141
    :cond_0
    new-instance v0, Lcom/android/gallery3d/app/MovieActivity$2;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v0, p0, v3, v8}, Lcom/android/gallery3d/app/MovieActivity$2;-><init>(Lcom/android/gallery3d/app/MovieActivity;Landroid/content/ContentResolver;Landroid/app/ActionBar;)V

    .line 160
    .local v0, queryHandler:Landroid/content/AsyncQueryHandler;
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "_display_name"

    aput-object v5, v4, v1

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setActionBarLogoFromIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 120
    const-string v1, "logo-bitmap"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 121
    .local v0, logo:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 125
    :cond_0
    return-void
.end method

.method private setSystemUiVisibility(Landroid/view/View;)V
    .locals 1
    .parameter "rootView"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_VIEW_SYSTEM_UI_FLAG_LAYOUT_STABLE:Z

    if-eqz v0, :cond_0

    .line 68
    const/16 v0, 0x700

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->requestWindowFeature(I)Z

    .line 79
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->requestWindowFeature(I)Z

    .line 81
    const v0, 0x7f04001f

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->setContentView(I)V

    .line 82
    const v0, 0x7f10006c

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 84
    .local v2, rootView:Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/MovieActivity;->setSystemUiVisibility(Landroid/view/View;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 87
    .local v7, intent:Landroid/content/Intent;
    invoke-direct {p0, v7}, Lcom/android/gallery3d/app/MovieActivity;->initializeActionBar(Landroid/content/Intent;)V

    .line 88
    const-string v0, "android.intent.extra.finishOnCompletion"

    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mFinishOnCompletion:Z

    .line 90
    const-string v0, "treat-up-as-back"

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mTreatUpAsBack:Z

    .line 91
    new-instance v0, Lcom/android/gallery3d/app/MovieActivity$1;

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    iget-boolean v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mFinishOnCompletion:Z

    if-nez v3, :cond_1

    :goto_0
    move-object v1, p0

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/app/MovieActivity$1;-><init>(Lcom/android/gallery3d/app/MovieActivity;Landroid/view/View;Lcom/android/gallery3d/app/MovieActivity;Landroid/net/Uri;Landroid/os/Bundle;Z)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    .line 100
    const-string v0, "android.intent.extra.screenOrientation"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const-string v0, "android.intent.extra.screenOrientation"

    const/4 v1, -0x1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 104
    .local v8, orientation:I
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getRequestedOrientation()I

    move-result v0

    if-eq v8, v0, :cond_0

    .line 105
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/app/MovieActivity;->setRequestedOrientation(I)V

    .line 108
    .end local v8           #orientation:I
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 109
    .local v9, win:Landroid/view/Window;
    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    .line 110
    .local v10, winParams:Landroid/view/WindowManager$LayoutParams;
    const/4 v0, 0x0

    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 111
    iget v0, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 112
    invoke-virtual {v9, v10}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 116
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    return-void

    .end local v9           #win:Landroid/view/Window;
    .end local v10           #winParams:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    move v6, v1

    .line 91
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    .line 168
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 169
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f120008

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 173
    const v1, 0x7f1000e9

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 174
    .local v0, shareItem:Landroid/view/MenuItem;
    const-string v1, "content"

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 176
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v1

    check-cast v1, Landroid/widget/ShareActionProvider;

    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->createShareIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 181
    :goto_0
    return v3

    .line 179
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer;->onDestroy()V

    .line 246
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 247
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/app/MoviePlayer;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/app/MoviePlayer;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 193
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 194
    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    .line 195
    iget-boolean v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mTreatUpAsBack:Z

    if-eqz v1, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->finish()V

    .line 207
    :goto_0
    return v0

    .line 198
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/gallery3d/app/Gallery;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/MovieActivity;->startActivity(Landroid/content/Intent;)V

    .line 199
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->finish()V

    goto :goto_0

    .line 202
    :cond_1
    const v2, 0x7f1000e9

    if-ne v1, v2, :cond_2

    .line 203
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->createShareIntent()Landroid/content/Intent;

    move-result-object v1

    const v2, 0x7f0a01aa

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/MovieActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/MovieActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 207
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer;->onPause()V

    .line 228
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 229
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer;->onResume()V

    .line 234
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 235
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 239
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 240
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/MoviePlayer;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 241
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 212
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 215
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 216
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 220
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 222
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 223
    return-void
.end method
