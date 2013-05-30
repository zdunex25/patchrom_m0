.class public final Lcom/android/OriginalSettings/guide/GuideFragment;
.super Landroid/app/Fragment;
.source "GuideFragment.java"

# interfaces
.implements Lcom/android/OriginalSettings/guide/GuideFragmentCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/guide/GuideFragment$1;,
        Lcom/android/OriginalSettings/guide/GuideFragment$WrappedEnabler;,
        Lcom/android/OriginalSettings/guide/GuideFragment$GuideModes;
    }
.end annotation


# static fields
.field private static sIsInGuideMode:Z


# instance fields
.field private mGuider:Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;

.field private mIsInGuideMode:Z

.field private mMode:Lcom/android/OriginalSettings/guide/GuideFragment$GuideModes;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/OriginalSettings/guide/GuideFragment;->sIsInGuideMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 311
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mIsInGuideMode:Z

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mMode:Lcom/android/OriginalSettings/guide/GuideFragment$GuideModes;

    .line 313
    return-void
.end method

.method private static completeGuide(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 231
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 232
    return-void
.end method

.method public static deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 7
    .parameter "activity"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const v6, 0x7f0b0007

    .line 175
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 178
    .local v1, fm:Landroid/app/FragmentManager;
    const-string v4, "GuideFragment"

    invoke-virtual {v1, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/OriginalSettings/guide/GuideFragment;

    .line 182
    .local v2, frag:Lcom/android/OriginalSettings/guide/GuideFragment;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lcom/android/OriginalSettings/guide/GuideModeHelper;->getGuideModeFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    if-eqz v2, :cond_2

    .line 184
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 186
    invoke-static {p0}, Lcom/android/OriginalSettings/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v3

    .line 188
    .local v3, layout:Landroid/view/ViewGroup;
    if-eqz v3, :cond_0

    .line 189
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 192
    :cond_0
    sput-boolean v5, Lcom/android/OriginalSettings/guide/GuideFragment;->sIsInGuideMode:Z

    .line 195
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lcom/android/OriginalSettings/guide/GuideModeHelper;->isGuideCompleted(Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 196
    invoke-static {p0}, Lcom/android/OriginalSettings/guide/GuideFragment;->completeGuide(Landroid/app/Activity;)V

    .line 223
    .end local v3           #layout:Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    return-void

    .line 200
    :cond_2
    if-nez v2, :cond_1

    .line 201
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/OriginalSettings/guide/GuideFragment;->newInstance(Landroid/content/Intent;Landroid/content/Context;)Lcom/android/OriginalSettings/guide/GuideFragment;

    move-result-object v2

    .line 203
    if-eqz v2, :cond_4

    .line 205
    invoke-static {p0}, Lcom/android/OriginalSettings/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v3

    .line 207
    .restart local v3       #layout:Landroid/view/ViewGroup;
    if-eqz v3, :cond_3

    .line 208
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 210
    .local v0, container:Landroid/widget/FrameLayout;
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setId(I)V

    .line 211
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 214
    .end local v0           #container:Landroid/widget/FrameLayout;
    :cond_3
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    const-string v5, "GuideFragment"

    invoke-virtual {v4, v6, v2, v5}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 217
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/OriginalSettings/guide/GuideFragment;->sIsInGuideMode:Z

    goto :goto_0

    .line 219
    .end local v3           #layout:Landroid/view/ViewGroup;
    :cond_4
    sput-boolean v5, Lcom/android/OriginalSettings/guide/GuideFragment;->sIsInGuideMode:Z

    goto :goto_0
.end method

.method public static findGuideFragment(Landroid/app/Activity;)Lcom/android/OriginalSettings/guide/GuideFragment;
    .locals 2
    .parameter "activity"

    .prologue
    .line 529
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "GuideFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/guide/GuideFragment;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;
    .locals 3
    .parameter "activity"

    .prologue
    .line 259
    const/4 v1, 0x0

    .line 261
    .local v1, retval:Landroid/view/ViewGroup;
    instance-of v2, p0, Landroid/app/ListActivity;

    if-eqz v2, :cond_0

    .line 263
    check-cast p0, Landroid/app/ListActivity;

    .end local p0
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 265
    .local v0, parent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 266
    check-cast v1, Landroid/view/ViewGroup;

    .line 270
    .end local v0           #parent:Landroid/view/ViewParent;
    :cond_0
    return-object v1
.end method

.method private getDialogOnClickListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mGuider:Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mGuider:Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;

    instance-of v0, v0, Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mGuider:Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initFragment(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/GuideFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/OriginalSettings/guide/GuideModeHelper;->getGuideModeFromIntent(Landroid/os/Bundle;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, guideMode:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/GuideFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/OriginalSettings/guide/GuideModeHelper;->isInGuideMode(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v2

    .line 361
    .local v2, isInSettingsGuide:Z
    invoke-static {v1}, Lcom/android/OriginalSettings/guide/GuideModeHelper;->isGuideModeWiFi(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 362
    if-eqz v2, :cond_2

    sget-object v3, Lcom/android/OriginalSettings/guide/GuideFragment$GuideModes;->WIFI_SETTINGS:Lcom/android/OriginalSettings/guide/GuideFragment$GuideModes;

    :goto_0
    iput-object v3, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mMode:Lcom/android/OriginalSettings/guide/GuideFragment$GuideModes;

    .line 367
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/GuideFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 369
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_5

    .line 407
    :cond_1
    :goto_2
    return-void

    .line 362
    .end local v0           #activity:Landroid/app/Activity;
    :cond_2
    sget-object v3, Lcom/android/OriginalSettings/guide/GuideFragment$GuideModes;->WIFI:Lcom/android/OriginalSettings/guide/GuideFragment$GuideModes;

    goto :goto_0

    .line 363
    :cond_3
    invoke-static {v1}, Lcom/android/OriginalSettings/guide/GuideModeHelper;->isGuideModeBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 364
    if-eqz v2, :cond_4

    sget-object v3, Lcom/android/OriginalSettings/guide/GuideFragment$GuideModes;->BLUETOOTH_SETTING:Lcom/android/OriginalSettings/guide/GuideFragment$GuideModes;

    :goto_3
    iput-object v3, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mMode:Lcom/android/OriginalSettings/guide/GuideFragment$GuideModes;

    goto :goto_1

    :cond_4
    sget-object v3, Lcom/android/OriginalSettings/guide/GuideFragment$GuideModes;->BLUETOOTH:Lcom/android/OriginalSettings/guide/GuideFragment$GuideModes;

    goto :goto_3

    .line 373
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_5
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/GuideFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/android/OriginalSettings/guide/GuideModeHelper;->isGuideCompleted(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 374
    invoke-static {v0}, Lcom/android/OriginalSettings/guide/GuideFragment;->completeGuide(Landroid/app/Activity;)V

    goto :goto_2

    .line 378
    :cond_6
    iget-object v3, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mMode:Lcom/android/OriginalSettings/guide/GuideFragment$GuideModes;

    if-eqz v3, :cond_1

    .line 379
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mIsInGuideMode:Z

    .line 381
    sget-object v3, Lcom/android/OriginalSettings/guide/GuideFragment$1;->$SwitchMap$com$android$settings$guide$GuideFragment$GuideModes:[I

    iget-object v4, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mMode:Lcom/android/OriginalSettings/guide/GuideFragment$GuideModes;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/guide/GuideFragment$GuideModes;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 403
    :goto_4
    iget-object v3, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mGuider:Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;

    if-eqz v3, :cond_1

    .line 404
    iget-object v3, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mGuider:Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;

    invoke-interface {v3}, Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;->showHelpDialog()V

    goto :goto_2

    .line 383
    :pswitch_0
    new-instance v3, Lcom/android/OriginalSettings/guide/BtGuider;

    invoke-direct {v3, v0}, Lcom/android/OriginalSettings/guide/BtGuider;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mGuider:Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;

    goto :goto_4

    .line 387
    :pswitch_1
    new-instance v3, Lcom/android/OriginalSettings/guide/BtSettingsGuider;

    invoke-direct {v3, v0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mGuider:Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;

    goto :goto_4

    .line 391
    :pswitch_2
    new-instance v3, Lcom/android/OriginalSettings/guide/WifiGuider;

    invoke-direct {v3, v0}, Lcom/android/OriginalSettings/guide/WifiGuider;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mGuider:Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;

    goto :goto_4

    .line 395
    :pswitch_3
    new-instance v3, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;

    invoke-direct {v3, v0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mGuider:Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;

    goto :goto_4

    .line 381
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static isInGuideMode(Landroid/app/Activity;)Z
    .locals 1
    .parameter "parentActivity"

    .prologue
    .line 281
    sget-boolean v0, Lcom/android/OriginalSettings/guide/GuideFragment;->sIsInGuideMode:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/OriginalSettings/guide/GuideFragment;->findGuideFragment(Landroid/app/Activity;)Lcom/android/OriginalSettings/guide/GuideFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance(Landroid/content/Intent;Landroid/content/Context;)Lcom/android/OriginalSettings/guide/GuideFragment;
    .locals 3
    .parameter "settingsIntent"
    .parameter "context"

    .prologue
    .line 293
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/android/OriginalSettings/guide/GuideModeHelper;->getGuideModeFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 297
    const/4 v1, 0x0

    .line 307
    :goto_0
    return-object v1

    .line 300
    :cond_0
    new-instance v1, Lcom/android/OriginalSettings/guide/GuideFragment;

    invoke-direct {v1}, Lcom/android/OriginalSettings/guide/GuideFragment;-><init>()V

    .line 303
    .local v1, f:Lcom/android/OriginalSettings/guide/GuideFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 304
    .local v0, args:Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 305
    invoke-virtual {v1, v0}, Lcom/android/OriginalSettings/guide/GuideFragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static onApDisableClick(Landroid/content/DialogInterface;ILandroid/app/Activity;)V
    .locals 2
    .parameter "dialog"
    .parameter "which"
    .parameter "activity"

    .prologue
    .line 57
    invoke-static {p2}, Lcom/android/OriginalSettings/guide/GuideFragment;->findGuideFragment(Landroid/app/Activity;)Lcom/android/OriginalSettings/guide/GuideFragment;

    move-result-object v1

    invoke-direct {v1}, Lcom/android/OriginalSettings/guide/GuideFragment;->getDialogOnClickListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    .line 60
    .local v0, listener:Landroid/content/DialogInterface$OnClickListener;
    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0, p0, p1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 63
    :cond_0
    return-void
.end method

.method public static setEnablersForGuide(Landroid/app/Activity;Lcom/android/OriginalSettings/wifi/WifiEnabler;Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;)V
    .locals 3
    .parameter "activity"
    .parameter "mWifiEnabler"
    .parameter "mBluetoothEnabler"

    .prologue
    .line 244
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "GuideFragment"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/guide/GuideFragmentCallback;

    move-object v0, v1

    check-cast v0, Lcom/android/OriginalSettings/guide/GuideFragmentCallback;

    .line 247
    .local v0, guide:Lcom/android/OriginalSettings/guide/GuideFragmentCallback;
    if-eqz v0, :cond_0

    .line 248
    invoke-interface {v0, p2, p1}, Lcom/android/OriginalSettings/guide/GuideFragmentCallback;->setEnablers(Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;Lcom/android/OriginalSettings/wifi/WifiEnabler;)V

    .line 250
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyEvent"

    .prologue
    .line 484
    const/4 v1, 0x0

    .line 485
    .local v1, result:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 487
    .local v0, keyCode:I
    iget-object v2, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mMode:Lcom/android/OriginalSettings/guide/GuideFragment$GuideModes;

    if-eqz v2, :cond_0

    .line 488
    packed-switch v0, :pswitch_data_0

    .line 495
    iget-object v2, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mGuider:Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;

    if-eqz v2, :cond_0

    .line 496
    iget-object v2, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mGuider:Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;

    invoke-interface {v2, v0, p1}, Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;->onKey(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 502
    :cond_0
    :goto_0
    return v1

    .line 491
    :pswitch_0
    const/4 v1, 0x0

    .line 492
    goto :goto_0

    .line 488
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 470
    const/4 v0, 0x0

    .line 472
    .local v0, result:Z
    iget-object v1, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mMode:Lcom/android/OriginalSettings/guide/GuideFragment$GuideModes;

    sget-object v2, Lcom/android/OriginalSettings/guide/GuideFragment$GuideModes;->BLUETOOTH:Lcom/android/OriginalSettings/guide/GuideFragment$GuideModes;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mMode:Lcom/android/OriginalSettings/guide/GuideFragment$GuideModes;

    sget-object v2, Lcom/android/OriginalSettings/guide/GuideFragment$GuideModes;->WIFI:Lcom/android/OriginalSettings/guide/GuideFragment$GuideModes;

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 474
    const/4 v0, 0x1

    .line 479
    :goto_0
    return v0

    .line 476
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOnDismissListener()Landroid/content/DialogInterface$OnDismissListener;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mGuider:Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mGuider:Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;

    instance-of v0, v0, Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mGuider:Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;

    check-cast v0, Landroid/content/DialogInterface$OnDismissListener;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOnKeyListener()Landroid/content/DialogInterface$OnKeyListener;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mGuider:Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mGuider:Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;

    instance-of v0, v0, Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mGuider:Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;

    check-cast v0, Landroid/content/DialogInterface$OnKeyListener;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOnShowListener()Landroid/content/DialogInterface$OnShowListener;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mGuider:Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mGuider:Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;

    instance-of v0, v0, Landroid/content/DialogInterface$OnShowListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mGuider:Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;

    check-cast v0, Landroid/content/DialogInterface$OnShowListener;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 329
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 331
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mMode:Lcom/android/OriginalSettings/guide/GuideFragment$GuideModes;

    if-nez v0, :cond_0

    .line 332
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/guide/GuideFragment;->initFragment(Landroid/os/Bundle;)V

    .line 334
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mGuider:Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mGuider:Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;

    invoke-interface {v0, p1}, Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;->onActivityCreated(Landroid/os/Bundle;)V

    .line 338
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 342
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 344
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mMode:Lcom/android/OriginalSettings/guide/GuideFragment$GuideModes;

    if-nez v0, :cond_0

    .line 345
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/guide/GuideFragment;->initFragment(Landroid/os/Bundle;)V

    .line 347
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 446
    iget-boolean v0, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mIsInGuideMode:Z

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mGuider:Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;

    invoke-interface {v0, p1}, Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 450
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 451
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 317
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 319
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mGuider:Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mGuider:Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;

    invoke-interface {v0, p1}, Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;->onCreate(Landroid/os/Bundle;)V

    .line 323
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/guide/GuideFragment;->setHasOptionsMenu(Z)V

    .line 324
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/guide/GuideFragment;->setRetainInstance(Z)V

    .line 325
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 459
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 461
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mGuider:Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mGuider:Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;

    invoke-interface {v0}, Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;->onDestroy()V

    .line 463
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mGuider:Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;

    .line 465
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mGuider:Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mGuider:Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;

    invoke-interface {v0, p1}, Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    .line 598
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 437
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 439
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mGuider:Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mGuider:Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;

    invoke-interface {v0}, Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;->onPause()V

    .line 442
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mGuider:Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mGuider:Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;

    invoke-interface {v0, p1}, Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 590
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 420
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 422
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mGuider:Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;

    if-nez v0, :cond_1

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    iget-boolean v0, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mIsInGuideMode:Z

    if-eqz v0, :cond_2

    .line 427
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mGuider:Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;

    invoke-interface {v0}, Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;->onResume()V

    goto :goto_0

    .line 429
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mGuider:Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mGuider:Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;

    invoke-interface {v0}, Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;->finish()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 411
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 413
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mGuider:Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;

    if-nez v0, :cond_0

    .line 416
    :cond_0
    return-void
.end method

.method public setEnablers(Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;Lcom/android/OriginalSettings/wifi/WifiEnabler;)V
    .locals 4
    .parameter "enablerBT"
    .parameter "enablerWiFi"

    .prologue
    .line 509
    new-instance v0, Lcom/android/OriginalSettings/guide/GuideFragment$WrappedEnabler;

    iget-object v1, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mMode:Lcom/android/OriginalSettings/guide/GuideFragment$GuideModes;

    iget-object v2, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mMode:Lcom/android/OriginalSettings/guide/GuideFragment$GuideModes;

    sget-object v3, Lcom/android/OriginalSettings/guide/GuideFragment$GuideModes;->BLUETOOTH:Lcom/android/OriginalSettings/guide/GuideFragment$GuideModes;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mMode:Lcom/android/OriginalSettings/guide/GuideFragment$GuideModes;

    sget-object v3, Lcom/android/OriginalSettings/guide/GuideFragment$GuideModes;->BLUETOOTH_SETTING:Lcom/android/OriginalSettings/guide/GuideFragment$GuideModes;

    if-ne v2, v3, :cond_1

    :cond_0
    move-object p2, p1

    .end local p2
    :cond_1
    invoke-direct {v0, v1, p2}, Lcom/android/OriginalSettings/guide/GuideFragment$WrappedEnabler;-><init>(Lcom/android/OriginalSettings/guide/GuideFragment$GuideModes;Ljava/lang/Object;)V

    .line 513
    .local v0, enabler:Lcom/android/OriginalSettings/guide/GuideFragment$WrappedEnabler;
    iget-object v1, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mGuider:Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;

    if-eqz v1, :cond_2

    .line 514
    iget-object v1, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mGuider:Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;

    invoke-interface {v1, v0}, Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;->setEnabler(Lcom/android/OriginalSettings/guide/GuideFragment$WrappedEnabler;)V

    .line 516
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/GuideFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 517
    iget-object v1, p0, Lcom/android/OriginalSettings/guide/GuideFragment;->mGuider:Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;

    invoke-interface {v1}, Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;->showHelpDialog()V

    .line 520
    :cond_2
    return-void
.end method
