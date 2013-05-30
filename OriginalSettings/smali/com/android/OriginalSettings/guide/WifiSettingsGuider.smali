.class public Lcom/android/OriginalSettings/guide/WifiSettingsGuider;
.super Lcom/android/OriginalSettings/guide/GuiderBase;
.source "WifiSettingsGuider.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Lcom/android/OriginalSettings/guide/GuiderLifecyrcleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/guide/WifiSettingsGuider$7;,
        Lcom/android/OriginalSettings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;,
        Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;
    }
.end annotation


# instance fields
.field private mClosed:Z

.field private mConnecting:Z

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mEmptyScanResultAttempts:I

.field private mEnableScanMenuItem:Z

.field private mFirstStart:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestorePrevDialog:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

.field private mSecurityDialogRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/AlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mShowedDialog:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

.field private final mWiFiIntentFilter:Landroid/content/IntentFilter;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private onCloseHelpDialogListener:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/guide/GuiderBase;-><init>(Landroid/app/Activity;)V

    .line 71
    sget-object v0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    .line 72
    sget-object v0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    .line 73
    iput-boolean v1, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mClosed:Z

    .line 76
    iput-boolean v3, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mFirstStart:Z

    .line 77
    iput-boolean v3, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mConnecting:Z

    .line 78
    iput v1, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    .line 80
    iput-object v2, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    .line 81
    iput-object v2, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 89
    iput-boolean v1, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mEnableScanMenuItem:Z

    .line 94
    iput-object v2, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    .line 104
    new-instance v0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$1;-><init>(Lcom/android/OriginalSettings/guide/WifiSettingsGuider;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 112
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    .line 113
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 120
    return-void
.end method

.method static synthetic access$002(Lcom/android/OriginalSettings/guide/WifiSettingsGuider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mClosed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/guide/WifiSettingsGuider;)Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/guide/WifiSettingsGuider;)Lcom/android/OriginalSettings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    return-object v0
.end method

.method private initHelpDialogContent(II)V
    .locals 5
    .parameter "resID"
    .parameter "layout"

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 441
    .local v1, bubbleView:Landroid/view/View;
    const v3, 0x7f0b0006

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 443
    .local v2, summary:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 445
    iget-object v3, p0, Lcom/android/OriginalSettings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {v3, v1}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->setContentView(Landroid/view/View;)V

    .line 447
    const v3, 0x7f0b0002

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 450
    .local v0, btnClose:Landroid/widget/ImageButton;
    if-eqz v0, :cond_0

    .line 451
    new-instance v3, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$5;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$5;-><init>(Lcom/android/OriginalSettings/guide/WifiSettingsGuider;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    :cond_0
    return-void
.end method

.method private invalidateHelpDialog(Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;)V
    .locals 6
    .parameter "type"

    .prologue
    .line 368
    const/4 v0, -0x1

    .line 369
    .local v0, layout:I
    const/4 v1, -0x1

    .line 371
    .local v1, resID:I
    iget-object v2, p0, Lcom/android/OriginalSettings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    if-nez v2, :cond_0

    .line 430
    :goto_0
    return-void

    .line 375
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->setFocus(Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;)V

    .line 377
    sget-object v2, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$7;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 429
    :cond_1
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->initHelpDialogContent(II)V

    goto :goto_0

    .line 379
    :pswitch_0
    const v1, 0x7f090cf3

    .line 380
    const v0, 0x7f040063

    .line 381
    goto :goto_1

    .line 383
    :pswitch_1
    const v1, 0x7f090cf6

    .line 384
    const v0, 0x7f040067

    .line 385
    goto :goto_1

    .line 387
    :pswitch_2
    const v1, 0x7f090cf5

    .line 388
    const v0, 0x7f040067

    .line 389
    goto :goto_1

    .line 391
    :pswitch_3
    const v1, 0x7f090cf4

    .line 392
    const v0, 0x7f040067

    .line 393
    goto :goto_1

    .line 395
    :pswitch_4
    const v1, 0x7f090cf8

    .line 396
    const v0, 0x7f040064

    .line 397
    goto :goto_1

    .line 399
    :pswitch_5
    const v1, 0x7f090cf7

    .line 400
    const v0, 0x7f040067

    .line 401
    goto :goto_1

    .line 403
    :pswitch_6
    const v1, 0x7f090cf2

    .line 404
    const v0, 0x7f040062

    .line 408
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 411
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$4;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$4;-><init>(Lcom/android/OriginalSettings/guide/WifiSettingsGuider;)V

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 377
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method private restoreSecurityDialogFocus()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 729
    iget-object v6, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlertDialog;

    move-object v4, v6

    .line 731
    .local v4, securityDialog:Landroid/app/AlertDialog;
    :goto_0
    if-eqz v4, :cond_3

    .line 732
    const v6, 0x7f0b02ff

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 733
    .local v0, identity:Landroid/view/View;
    const v6, 0x7f0b0317

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 734
    .local v1, identityContainer:Landroid/view/View;
    move-object v5, v0

    .line 736
    .local v5, viewToFocus:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_1

    .line 739
    :cond_0
    const v6, 0x7f0b0293

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 742
    :cond_1
    if-eqz v5, :cond_2

    .line 743
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 745
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    .line 747
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v8, "input_method"

    invoke-virtual {v6, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 748
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 753
    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    const/4 v6, -0x2

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    .line 755
    .local v3, negativeButton:Landroid/widget/Button;
    if-eqz v3, :cond_3

    .line 756
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 760
    .end local v0           #identity:Landroid/view/View;
    .end local v1           #identityContainer:Landroid/view/View;
    .end local v3           #negativeButton:Landroid/widget/Button;
    .end local v5           #viewToFocus:Landroid/view/View;
    :cond_3
    iput-object v7, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    .line 761
    return-void

    .end local v4           #securityDialog:Landroid/app/AlertDialog;
    :cond_4
    move-object v4, v7

    .line 729
    goto :goto_0
.end method

.method private setFocus(Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 881
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 883
    .local v1, activity:Landroid/app/Activity;
    sget-object v3, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$7;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 907
    :cond_0
    :goto_0
    return-void

    .line 885
    :pswitch_0
    if-eqz v1, :cond_0

    .line 886
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 888
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 889
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 891
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 892
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 883
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method private setGuidedActionBarClickable(Z)V
    .locals 4
    .parameter "clickable"

    .prologue
    .line 587
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 588
    .local v1, activity:Landroid/app/Activity;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 590
    .local v0, ab:Landroid/app/ActionBar;
    :goto_0
    if-eqz v0, :cond_1

    .line 591
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 593
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 594
    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eq v3, p1, :cond_0

    .line 595
    invoke-virtual {v2, p1}, Landroid/view/View;->setClickable(Z)V

    .line 596
    invoke-virtual {v2, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 599
    :cond_0
    if-eqz p1, :cond_1

    .line 600
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 604
    .end local v2           #v:Landroid/view/View;
    :cond_1
    return-void

    .line 588
    .end local v0           #ab:Landroid/app/ActionBar;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setScanOptionEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 614
    iput-boolean p1, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mEnableScanMenuItem:Z

    .line 616
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 618
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 619
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 621
    :cond_0
    return-void
.end method

.method private showHelpDialog(IIILcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;Z)V
    .locals 2
    .parameter "resID"
    .parameter "layout"
    .parameter "touchtransparency"
    .parameter "type"
    .parameter "needShowWrongToast"

    .prologue
    .line 356
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    .line 357
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {v0, p3}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->setTouchTransparencyMode(I)V

    .line 358
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {v0, p5}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 359
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 361
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->initHelpDialogContent(II)V

    .line 363
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->show()V

    .line 364
    iput-object p4, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    .line 365
    return-void
.end method


# virtual methods
.method protected dismissAndRestorePreviousHelpDialog(Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_2

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, p1, :cond_1

    .line 341
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->dismissHelpDialog(Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;)V

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 346
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;)V

    .line 349
    :cond_2
    return-void
.end method

.method public dismissHelpDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 278
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->dismiss()V

    .line 280
    iput-object v2, p0, Lcom/android/OriginalSettings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    .line 282
    sget-object v0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$7;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    iget-object v1, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 298
    :goto_0
    sget-object v0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    .line 299
    iput-object v2, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    .line 301
    :cond_0
    return-void

    .line 284
    :sswitch_0
    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->setGuidedActionBarClickable(Z)V

    goto :goto_0

    .line 287
    :sswitch_1
    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    goto :goto_0

    .line 290
    :sswitch_2
    invoke-direct {p0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->restoreSecurityDialogFocus()V

    .line 291
    iput-object v2, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 282
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x6 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public dismissHelpDialog(Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;)V
    .locals 3
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 309
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, p1, :cond_0

    .line 310
    sget-object v0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$7;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 326
    :goto_0
    sget-object v0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    .line 327
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 329
    :cond_0
    return-void

    .line 312
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->setGuidedActionBarClickable(Z)V

    goto :goto_0

    .line 315
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    goto :goto_0

    .line 310
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 465
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 470
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 471
    iget-object v4, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 474
    .local v2, network:Landroid/net/NetworkInfo;
    iget-object v4, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_3

    .line 478
    iget v4, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    if-lt v4, v7, :cond_2

    .line 479
    sget-object v4, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;->NO_NETWORK:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;)V

    .line 544
    .end local v2           #network:Landroid/net/NetworkInfo;
    :cond_1
    :goto_0
    return-void

    .line 481
    .restart local v2       #network:Landroid/net/NetworkInfo;
    :cond_2
    sget-object v4, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 484
    :cond_3
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-nez v4, :cond_4

    .line 485
    iput v6, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    .line 486
    iget-boolean v4, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mClosed:Z

    if-nez v4, :cond_1

    .line 487
    sget-object v4, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;->FOUND_NETWORK:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 490
    :cond_4
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mFirstStart:Z

    if-eqz v4, :cond_5

    .line 491
    iput v6, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    .line 492
    iput-boolean v6, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mFirstStart:Z

    .line 493
    sget-object v4, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_AUTOMATICALLY:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 495
    :cond_5
    iget-object v4, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 496
    iput v6, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    goto :goto_0

    .line 500
    .end local v2           #network:Landroid/net/NetworkInfo;
    :cond_6
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 501
    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 504
    .local v1, info:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mFirstStart:Z

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mConnecting:Z

    if-eqz v4, :cond_7

    .line 505
    iput-boolean v6, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mFirstStart:Z

    .line 506
    sget-object v4, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_AUTOMATICALLY:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 507
    :cond_7
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mConnecting:Z

    if-nez v4, :cond_8

    .line 508
    sget-object v4, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_SUCCESSFULLY:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 509
    :cond_8
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_1

    .line 510
    iput-boolean v6, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mFirstStart:Z

    .line 511
    iput-boolean v6, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mConnecting:Z

    .line 514
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    sget-object v5, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_AUTOMATICALLY:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    if-eq v4, v5, :cond_9

    iget-object v4, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    sget-object v5, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_SUCCESSFULLY:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    if-ne v4, v5, :cond_1

    .line 518
    :cond_9
    iget-object v4, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    .line 520
    sget-object v4, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;->FOUND_NETWORK:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;)V

    goto/16 :goto_0

    .line 522
    :cond_a
    sget-object v4, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;)V

    goto/16 :goto_0

    .line 527
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_b
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 531
    const-string v4, "wifi_state"

    const/4 v5, 0x4

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 536
    .local v3, state:I
    const/4 v4, 0x3

    if-eq v3, v4, :cond_c

    if-eq v3, v7, :cond_c

    iget-object v4, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-nez v4, :cond_c

    .line 539
    sget-object v4, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;)V

    goto/16 :goto_0

    .line 541
    :cond_c
    sget-object v4, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->dismissHelpDialog(Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;)V

    goto/16 :goto_0
.end method

.method public isWifiDialogSecured(Landroid/app/AlertDialog;)Z
    .locals 3
    .parameter "dialog"

    .prologue
    .line 630
    const/4 v0, 0x0

    .line 631
    .local v0, result:Z
    const v2, 0x7f0b02f5

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 633
    .local v1, view:Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 634
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 637
    :cond_0
    :goto_0
    return v0

    .line 634
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 155
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialogInterface"
    .parameter "which"

    .prologue
    .line 696
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 698
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->showCompleteDialog()V

    .line 700
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->invalidateHelpDialog(Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;)V

    .line 176
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 124
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 126
    iput-boolean v3, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mFirstStart:Z

    .line 127
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mConnecting:Z

    .line 129
    iput v2, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    .line 130
    iput-boolean v2, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mClosed:Z

    .line 131
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 136
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->finish()V

    .line 137
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 688
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->isWifiDialogSecured(Landroid/app/AlertDialog;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 689
    sget-object v0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;->SECURITY:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->dismissAndRestorePreviousHelpDialog(Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;)V

    .line 690
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    .line 692
    :cond_0
    return-void
.end method

.method public onKey(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x6f

    const/16 v5, 0x42

    .line 775
    const/4 v1, 0x0

    .line 776
    .local v1, isHandled:Z
    const/4 v2, 0x1

    .line 780
    .local v2, passToView:Z
    sget-object v3, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$7;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    iget-object v4, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 858
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    .line 859
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 861
    .local v0, focus:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 862
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_5

    .line 863
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 870
    .end local v0           #focus:Landroid/view/View;
    :cond_1
    :goto_1
    return v1

    .line 783
    :pswitch_0
    if-eq p1, v6, :cond_2

    if-eq p1, v5, :cond_2

    const/16 v3, 0x17

    if-eq p1, v3, :cond_2

    const/16 v3, 0x14

    if-eq p1, v3, :cond_2

    const/16 v3, 0x15

    if-eq p1, v3, :cond_2

    const/16 v3, 0x16

    if-eq p1, v3, :cond_2

    const/16 v3, 0x13

    if-eq p1, v3, :cond_2

    const/16 v3, 0x75

    if-eq p1, v3, :cond_2

    const/16 v3, 0x76

    if-eq p1, v3, :cond_2

    const/16 v3, 0x3d

    if-eq p1, v3, :cond_2

    const/16 v3, 0x5c

    if-eq p1, v3, :cond_2

    const/16 v3, 0x5d

    if-eq p1, v3, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    const/16 v3, 0x7b

    if-eq p1, v3, :cond_2

    const/16 v3, 0x7a

    if-eq p1, v3, :cond_2

    .line 798
    const/4 v1, 0x1

    goto :goto_0

    .line 799
    :cond_2
    if-ne p1, v5, :cond_0

    .line 800
    const/4 v2, 0x0

    .line 801
    const/4 v1, 0x1

    .line 803
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-static {v3, v4}, Lcom/android/OriginalSettings/guide/GuideModeHelper;->emulateTouchOnFocusedView(Landroid/app/Activity;Lcom/sec/android/touchwiz/widget/TwHelpDialog;)V

    goto :goto_0

    .line 809
    :pswitch_1
    if-ne p1, v6, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v7, :cond_3

    .line 811
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 812
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->showCompleteDialog()V

    .line 814
    :cond_3
    const/4 v2, 0x0

    .line 815
    const/4 v1, 0x1

    .line 816
    goto :goto_0

    .line 819
    :pswitch_2
    const/4 v2, 0x0

    .line 820
    const/4 v1, 0x1

    .line 821
    goto :goto_0

    .line 827
    :pswitch_3
    if-ne p1, v6, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v7, :cond_4

    .line 829
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 830
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->showCompleteDialog()V

    .line 831
    const/4 v2, 0x0

    .line 832
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 834
    :cond_4
    if-ne p1, v5, :cond_0

    .line 835
    const/4 v2, 0x0

    .line 836
    const/4 v1, 0x1

    .line 838
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-static {v3, v4}, Lcom/android/OriginalSettings/guide/GuideModeHelper;->emulateTouchOnFocusedView(Landroid/app/Activity;Lcom/sec/android/touchwiz/widget/TwHelpDialog;)V

    goto/16 :goto_0

    .line 845
    :pswitch_4
    if-ne p1, v5, :cond_0

    .line 846
    const/4 v2, 0x0

    .line 847
    const/4 v1, 0x1

    .line 849
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-static {v3, v4}, Lcom/android/OriginalSettings/guide/GuideModeHelper;->emulateTouchOnFocusedView(Landroid/app/Activity;Lcom/sec/android/touchwiz/widget/TwHelpDialog;)V

    goto/16 :goto_0

    .line 865
    .restart local v0       #focus:Landroid/view/View;
    :cond_5
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_1

    .line 780
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "dialogInterface"
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    .line 708
    const/4 v0, 0x0

    .line 710
    .local v0, retval:Z
    iget-object v1, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    sget-object v2, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;->SECURITY:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    if-ne v1, v2, :cond_2

    .line 712
    const/16 v1, 0x6f

    if-eq p2, v1, :cond_0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 715
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 718
    :cond_1
    const/4 v0, 0x1

    .line 721
    :cond_2
    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 766
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_0

    .line 768
    iget v0, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    .line 769
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    .line 771
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 169
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 159
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 161
    .local v0, scan:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 162
    iget-boolean v1, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mEnableScanMenuItem:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 164
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 142
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    sget-object v3, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->setGuidedActionBarClickable(Z)V

    .line 143
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    sget-object v3, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, v3, :cond_2

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    .line 145
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    sget-object v0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;)V

    .line 150
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 142
    goto :goto_0

    :cond_2
    move v1, v2

    .line 143
    goto :goto_1
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 5
    .parameter "dialog"

    .prologue
    const/4 v4, 0x1

    .line 661
    instance-of v2, p1, Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Landroid/app/AlertDialog;

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->isWifiDialogSecured(Landroid/app/AlertDialog;)Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 663
    sget-object v2, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;->SECURITY:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;)V

    .line 665
    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v2, p1

    check-cast v2, Landroid/app/AlertDialog;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    .line 669
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1
    const/4 v2, -0x2

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 671
    .local v1, negativeButton:Landroid/widget/Button;
    if-eqz v1, :cond_0

    .line 672
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 673
    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    .line 676
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 677
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/widget/Button;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 680
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v1           #negativeButton:Landroid/widget/Button;
    :cond_0
    return-void
.end method

.method public setEnabler(Lcom/android/OriginalSettings/guide/GuideFragment$WrappedEnabler;)V
    .locals 1
    .parameter "enabler"

    .prologue
    .line 642
    iput-object p1, p0, Lcom/android/OriginalSettings/guide/GuiderBase;->mEnabler:Lcom/android/OriginalSettings/guide/GuideFragment$WrappedEnabler;

    .line 644
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuiderBase;->mEnabler:Lcom/android/OriginalSettings/guide/GuideFragment$WrappedEnabler;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuiderBase;->mEnabler:Lcom/android/OriginalSettings/guide/GuideFragment$WrappedEnabler;

    invoke-virtual {v0, p0}, Lcom/android/OriginalSettings/guide/GuideFragment$WrappedEnabler;->setOnEnablerSwitchListener(Lcom/android/OriginalSettings/guide/OnInternalSwitcherListener;)V

    .line 647
    :cond_0
    return-void
.end method

.method public showCompleteDialog()V
    .locals 4

    .prologue
    .line 548
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 551
    .local v0, builderstart:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090cfa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090cf9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902c4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$6;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$6;-><init>(Lcom/android/OriginalSettings/guide/WifiSettingsGuider;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 569
    return-void
.end method

.method public showHelpDialog()V
    .locals 0

    .prologue
    .line 652
    return-void
.end method

.method public showHelpDialog(Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;)V
    .locals 8
    .parameter "type"

    .prologue
    const/4 v5, 0x0

    const v2, 0x7f040067

    const/16 v3, 0x65

    const/4 v7, 0x1

    .line 185
    sget-object v0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    if-ne p1, v0, :cond_1

    move v0, v7

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    .line 187
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, p1, :cond_2

    .line 274
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v5

    .line 185
    goto :goto_0

    .line 191
    :cond_2
    iget-object v6, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    .line 193
    .local v6, showedtype:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->dismissHelpDialog(Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;)V

    .line 194
    sget-object v0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    .line 196
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->setFocus(Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;)V

    .line 198
    sget-object v0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$7;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 231
    :goto_2
    sget-object v0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    if-ne p1, v0, :cond_3

    move v0, v7

    :goto_3
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->setGuidedActionBarClickable(Z)V

    .line 233
    sget-object v0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$7;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 235
    :pswitch_0
    const v1, 0x7f090cf3

    const v2, 0x7f040063

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->showHelpDialog(IIILcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto :goto_1

    .line 200
    :pswitch_1
    iput-object v6, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;

    goto :goto_2

    .line 206
    :pswitch_2
    new-instance v0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$2;-><init>(Lcom/android/OriginalSettings/guide/WifiSettingsGuider;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    goto :goto_2

    .line 216
    :pswitch_3
    new-instance v0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$3;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider$3;-><init>(Lcom/android/OriginalSettings/guide/WifiSettingsGuider;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/android/OriginalSettings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    goto :goto_2

    :cond_3
    move v0, v5

    .line 231
    goto :goto_3

    .line 240
    :pswitch_4
    const v1, 0x7f090cf6

    move-object v0, p0

    move-object v4, p1

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->showHelpDialog(IIILcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto :goto_1

    .line 244
    :pswitch_5
    const v1, 0x7f090cf5

    move-object v0, p0

    move-object v4, p1

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->showHelpDialog(IIILcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto :goto_1

    .line 248
    :pswitch_6
    const v1, 0x7f090cf4

    move-object v0, p0

    move-object v4, p1

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->showHelpDialog(IIILcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto :goto_1

    .line 252
    :pswitch_7
    const v1, 0x7f090cf8

    const v2, 0x7f040064

    move-object v0, p0

    move-object v4, p1

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->showHelpDialog(IIILcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto :goto_1

    .line 256
    :pswitch_8
    const v1, 0x7f090cf7

    move-object v0, p0

    move-object v4, p1

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->showHelpDialog(IIILcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto/16 :goto_1

    .line 260
    :pswitch_9
    const v1, 0x7f090cf2

    const v2, 0x7f040062

    move-object v0, p0

    move-object v4, p1

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->showHelpDialog(IIILcom/android/OriginalSettings/guide/WifiSettingsGuider$GuideStates;Z)V

    .line 263
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/OriginalSettings/guide/GuideModeHelper;->drawActionPointerForSwitcher(Lcom/sec/android/touchwiz/widget/TwHelpDialog;Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 198
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 233
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method
