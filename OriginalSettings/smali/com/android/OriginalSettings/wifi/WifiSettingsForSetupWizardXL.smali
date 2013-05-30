.class public Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;
.super Lcom/android/OriginalSettings/BaseActivity;
.source "WifiSettingsForSetupWizardXL.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DEBUG:Z

.field private static final sNetworkStateMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Landroid/net/NetworkInfo$DetailedState;",
            "Landroid/net/NetworkInfo$DetailedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAddNetworkButton:Landroid/widget/Button;

.field private mBackButton:Landroid/widget/Button;

.field private mBottomPadding:Landroid/view/View;

.field private mChannel:Landroid/net/wifi/WifiManager$Channel;

.field private mConnectButton:Landroid/widget/Button;

.field private mConnectingStatusLayout:Landroid/view/View;

.field private mConnectingStatusView:Landroid/widget/TextView;

.field private mContentPadding:Landroid/view/View;

.field private mEditingTitle:Ljava/lang/CharSequence;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mNetworkName:Ljava/lang/CharSequence;

.field private mPreviousNetworkState:Landroid/net/NetworkInfo$DetailedState;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRefreshButton:Landroid/widget/Button;

.field private mScreenState:I

.field private mSkipOrNextButton:Landroid/widget/Button;

.field private mTitleView:Landroid/widget/TextView;

.field private mTopDividerNoProgress:Landroid/view/View;

.field private mTopPadding:Landroid/view/View;

.field private mWifiConfig:Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiSettings:Lcom/android/OriginalSettings/wifi/WifiSettings;

.field private mWifiSettingsFragmentLayout:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 53
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->DEBUG:Z

    .line 59
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    .line 63
    sget-object v0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/OriginalSettings/BaseActivity;-><init>()V

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 137
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mPreviousNetworkState:Landroid/net/NetworkInfo$DetailedState;

    return-void
.end method

.method private hideSoftwareKeyboard()V
    .locals 4

    .prologue
    .line 246
    sget-boolean v1, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SetupWizard"

    const-string v2, "Hiding software keyboard."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 248
    .local v0, focusedView:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 249
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 251
    :cond_1
    return-void
.end method

.method private initViews()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 163
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 165
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "firstRun"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    const v2, 0x7f0b009a

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 167
    .local v1, layoutRoot:Landroid/view/View;
    const/high16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 169
    .end local v1           #layoutRoot:Landroid/view/View;
    :cond_0
    const-string v2, "extra_prefs_landscape_lock"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 170
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->setRequestedOrientation(I)V

    .line 172
    :cond_1
    const-string v2, "extra_prefs_portrait_lock"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 173
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->setRequestedOrientation(I)V

    .line 176
    :cond_2
    const v2, 0x7f0b034a

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    .line 177
    const v2, 0x7f0b034b

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    .line 178
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 179
    const v2, 0x7f0b034c

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mTopDividerNoProgress:Landroid/view/View;

    .line 180
    const v2, 0x7f0b0355

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mBottomPadding:Landroid/view/View;

    .line 182
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 183
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 184
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mTopDividerNoProgress:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 186
    const v2, 0x7f0b0357

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    .line 187
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    const v2, 0x7f0b035b

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    .line 189
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    const v2, 0x7f0b035a

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    .line 191
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    const v2, 0x7f0b0359

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    .line 193
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    const v2, 0x7f0b0358

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    .line 195
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    const v2, 0x7f0b0349

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mTopPadding:Landroid/view/View;

    .line 198
    const v2, 0x7f0b034e

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mContentPadding:Landroid/view/View;

    .line 200
    const v2, 0x7f0b034f

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    .line 201
    const v2, 0x7f0b0352

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusLayout:Landroid/view/View;

    .line 202
    const v2, 0x7f0b0353

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusView:Landroid/widget/TextView;

    .line 203
    return-void
.end method

.method private onAddNetworkButtonPressed()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/OriginalSettings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->onAddNetworkPressed()V

    .line 415
    return-void
.end method

.method private onBackButtonPressed()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 576
    iget v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    if-eq v4, v11, :cond_0

    iget v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 577
    :cond_0
    sget-boolean v4, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "SetupWizard"

    const-string v5, "Back button pressed after connect action."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_1
    iput v8, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 582
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->restoreFirstVisibilityState()V

    .line 584
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 585
    invoke-virtual {p0, v8}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->changeNextButtonState(Z)V

    .line 589
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->showScanningState()V

    .line 593
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 594
    .local v1, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 595
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    sget-boolean v4, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 596
    const-string v4, "SetupWizard"

    const-string v5, "forgeting Wi-Fi network \"%s\" (id: %d)"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v7, v6, v8

    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_2
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    new-instance v7, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL$1;

    invoke-direct {v7, p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL$1;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;)V

    invoke-virtual {v4, v5, v6, v7}, Landroid/net/wifi/WifiManager;->forget(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 608
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_3
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 609
    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->refreshAccessPoints(Z)V

    .line 624
    .end local v1           #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :goto_1
    invoke-virtual {p0, v8}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 625
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusLayout:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 626
    const v4, 0x7f0b0351

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 627
    .local v3, parent:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 628
    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 629
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;

    .line 630
    return-void

    .line 611
    .end local v3           #parent:Landroid/view/ViewGroup;
    :cond_4
    iput v8, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 612
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/OriginalSettings/wifi/WifiSettings;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/wifi/WifiSettings;->resumeWifiScan()V

    .line 614
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->restoreFirstVisibilityState()V

    .line 616
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 617
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 618
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 619
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedProgressBar()V

    .line 620
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 621
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mBottomPadding:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private onEapNetworkSelected()V
    .locals 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 534
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    const v1, 0x7f090754

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 535
    return-void
.end method

.method private refreshAccessPoints(Z)V
    .locals 1
    .parameter "disconnectNetwork"

    .prologue
    .line 669
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->showScanningState()V

    .line 671
    if-eqz p1, :cond_0

    .line 672
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/OriginalSettings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->refreshAccessPoints()V

    .line 676
    return-void
.end method

.method private restoreFirstVisibilityState()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 206
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->showDefaultTitle()V

    .line 207
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 212
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 213
    return-void
.end method

.method private showConnectingProgressBar()V
    .locals 2

    .prologue
    .line 748
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->showTopDividerWithProgressBar()V

    .line 749
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 750
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 751
    return-void
.end method

.method private showConnectingState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 310
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 312
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mEditingTitle:Ljava/lang/CharSequence;

    .line 315
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->showConnectingTitle()V

    .line 316
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->showConnectingProgressBar()V

    .line 318
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 319
    return-void
.end method

.method private showConnectingTitle()V
    .locals 5

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/OriginalSettings/wifi/WifiConfigController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/OriginalSettings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/OriginalSettings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    .line 378
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f09074c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    return-void

    .line 374
    :cond_1
    const-string v0, "SetupWizard"

    const-string v1, "Unexpected null found (WifiController or WifiConfig is null). Ignore them."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showDefaultTitle()V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f09074a

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    return-void
.end method

.method private showDisconnectedProgressBar()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 724
    iget v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    if-nez v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 726
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 727
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mTopDividerNoProgress:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 734
    :goto_0
    return-void

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 730
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 731
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 732
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mTopDividerNoProgress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showScanningProgressBar()V
    .locals 2

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->showTopDividerWithProgressBar()V

    .line 741
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 742
    return-void
.end method

.method private showScanningState()V
    .locals 2

    .prologue
    .line 408
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 409
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 410
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->showScanningProgressBar()V

    .line 411
    return-void
.end method

.method private showTopDividerWithProgressBar()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 402
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mTopDividerNoProgress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mBottomPadding:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 405
    return-void
.end method


# virtual methods
.method changeNextButtonState(Z)V
    .locals 2
    .parameter "connected"

    .prologue
    .line 636
    if-eqz p1, :cond_0

    .line 637
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    const v1, 0x7f090753

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 641
    :goto_0
    return-void

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    const v1, 0x7f090752

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method initSecurityFields(Landroid/view/View;I)Z
    .locals 6
    .parameter "view"
    .parameter "accessPointSecurity"

    .prologue
    const v5, 0x7f0b02f1

    const v4, 0x7f0b02f0

    const/4 v1, 0x1

    const/16 v3, 0x8

    const/4 v0, 0x0

    .line 486
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 487
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 488
    const v2, 0x7f0b02f3

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 489
    const v2, 0x7f0b02f4

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 491
    const/4 v2, 0x3

    if-ne p2, v2, :cond_1

    .line 492
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 493
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->hideSoftwareKeyboard()V

    .line 498
    const v1, 0x7f0b02f2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 499
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 504
    :goto_0
    const v1, 0x7f0b02f5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 505
    const v1, 0x7f0b02f3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 506
    const v1, 0x7f0b02f4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 507
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->onEapNetworkSelected()V

    .line 529
    :goto_1
    return v0

    .line 502
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 513
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 514
    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 519
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;

    if-eqz v0, :cond_3

    .line 520
    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    if-ne p2, v1, :cond_4

    .line 522
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;

    const v2, 0x7f0b0293

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;->requestFocusAndShowKeyboard(I)V

    :cond_3
    :goto_2
    move v0, v1

    .line 529
    goto :goto_1

    .line 524
    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;

    const v2, 0x7f0b02d3

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;->requestFocusAndShowKeyboard(I)V

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    .line 217
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->hideSoftwareKeyboard()V

    .line 218
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 219
    sget-boolean v0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SetupWizard"

    const-string v1, "AddNetwork button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->onAddNetworkButtonPressed()V

    .line 243
    .end local p1
    :cond_1
    :goto_0
    return-void

    .line 221
    .restart local p1
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 222
    sget-boolean v0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "SetupWizard"

    const-string v1, "Refresh button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->refreshAccessPoints(Z)V

    goto :goto_0

    .line 224
    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_7

    .line 225
    sget-boolean v0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "SetupWizard"

    const-string v1, "Skip/Next button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_5
    const v0, 0x7f090752

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast p1, Landroid/widget/Button;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 229
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 231
    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->setResult(I)V

    .line 235
    :goto_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->finish()V

    goto :goto_0

    .line 233
    :cond_6
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->setResult(I)V

    goto :goto_1

    .line 236
    .restart local p1
    :cond_7
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_9

    .line 237
    sget-boolean v0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->DEBUG:Z

    if-eqz v0, :cond_8

    const-string v0, "SetupWizard"

    const-string v1, "Connect button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_8
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->onConnectButtonPressed()V

    goto :goto_0

    .line 239
    :cond_9
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 240
    sget-boolean v0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->DEBUG:Z

    if-eqz v0, :cond_a

    const-string v0, "SetupWizard"

    const-string v1, "Back button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_a
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->onBackButtonPressed()V

    goto :goto_0
.end method

.method onConnectButtonPressed()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 546
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 548
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/OriginalSettings/wifi/WifiSettings;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/OriginalSettings/wifi/WifiConfigController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->submit(Lcom/android/OriginalSettings/wifi/WifiConfigController;)V

    .line 556
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->showConnectingState()V

    .line 559
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 560
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    const v2, 0x7f090754

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 562
    const v1, 0x7f0b0351

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 563
    .local v0, parent:Landroid/view/ViewGroup;
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 564
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 565
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusView:Landroid/widget/TextView;

    const v2, 0x7f090764

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 567
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 568
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 569
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 570
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 571
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 572
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 141
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 142
    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->requestWindowFeature(I)Z

    .line 143
    const v0, 0x7f040112

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->setContentView(I)V

    .line 145
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 146
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/net/wifi/WifiManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/WifiManager$ChannelListener;)Landroid/net/wifi/WifiManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    .line 149
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 151
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0b0350

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/wifi/WifiSettings;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/OriginalSettings/wifi/WifiSettings;

    .line 153
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 155
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->initViews()V

    .line 159
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->showScanningState()V

    .line 160
    return-void
.end method

.method setPaddingVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mTopPadding:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 718
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->mContentPadding:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 719
    return-void
.end method
