.class public Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;
.super Lcom/android/OriginalSettings/BaseActivity;
.source "WifiOffloadDialog.java"


# instance fields
.field private am:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field public mLaunchFromSetup:Z

.field private orientation:I

.field private packageName:Ljava/lang/String;

.field public searching_progress:Landroid/widget/ProgressBar;

.field public searching_text:Landroid/widget/TextView;

.field taskID:I

.field private userPress:I

.field wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 24
    invoke-direct {p0}, Lcom/android/OriginalSettings/BaseActivity;-><init>()V

    .line 28
    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->am:Landroid/app/ActivityManager;

    .line 29
    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->packageName:Ljava/lang/String;

    .line 30
    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->taskID:I

    .line 31
    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->userPress:I

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->userPress:I

    return p1
.end method

.method private getTopActivityFromStack()Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->am:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initialize()V
    .locals 6

    .prologue
    .line 76
    const v4, 0x7f0b0331

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 77
    .local v0, dontDisturb:Landroid/widget/Button;
    new-instance v4, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog$1;

    invoke-direct {v4, p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog$1;-><init>(Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const-string v4, "wifioffload"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiOffloadManager;

    iput-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    .line 90
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    iput-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->am:Landroid/app/ActivityManager;

    .line 91
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    if-eqz v4, :cond_0

    .line 92
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiOffloadManager;->getLastPkgName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->packageName:Ljava/lang/String;

    .line 93
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiOffloadManager;->notifyDialogDisplayed(I)V

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->getTaskId()I

    move-result v4

    iput v4, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->taskID:I

    .line 98
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 99
    .local v1, frame:Landroid/widget/FrameLayout;
    const v4, 0x7f0b032d

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setId(I)V

    .line 100
    new-instance v3, Lcom/android/OriginalSettings/wifi/WifiSettings;

    invoke-direct {v3}, Lcom/android/OriginalSettings/wifi/WifiSettings;-><init>()V

    .line 101
    .local v3, newFrag:Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 102
    .local v2, ft:Landroid/app/FragmentTransaction;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v4

    invoke-virtual {v2, v4, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 103
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 105
    const v4, 0x7f0b0330

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->searching_text:Landroid/widget/TextView;

    .line 106
    const v4, 0x7f0b032f

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->searching_progress:Landroid/widget/ProgressBar;

    .line 107
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 147
    iput v3, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->userPress:I

    .line 148
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    if-eqz v1, :cond_0

    .line 149
    const-string v1, "WifiOffloadDialog"

    const-string v2, "Offload onBackKeyPressed()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiOffloadManager;->startDontUseWiFiPressedTimer()V

    .line 151
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiOffloadManager;->setDontuseWifiPressed(Z)V

    .line 153
    :cond_0
    iget-boolean v1, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-eqz v1, :cond_1

    .line 155
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.setupwizard.DATA_SETUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, paygDataSetupIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->finish()V

    .line 161
    .end local v0           #paygDataSetupIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 159
    :cond_1
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 189
    const-string v0, "WifiOffloadDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged() ===>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 191
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-nez v0, :cond_0

    .line 192
    iget v0, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->orientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 193
    const v0, 0x7f040108

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->setContentView(I)V

    .line 194
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->initialize()V

    .line 197
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->orientation:I

    .line 198
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 43
    iput-object p0, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mContext:Landroid/content/Context;

    .line 44
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 45
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "WIFI_OFFLOAD_DO_NOT_DISTURB"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 46
    .local v1, status:I
    const-string v2, "LAUNCH_SETUPWIZARD"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    .line 47
    iget-boolean v2, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-eqz v2, :cond_0

    .line 48
    const-string v2, "WifiOffloadDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " %%%%%%%%%%%%%%%%%%%%%%%%%%    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    if-ne v1, v6, :cond_1

    .line 50
    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->requestWindowFeature(I)Z

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x100

    invoke-virtual {v2, v3, v5}, Landroid/view/Window;->setFlags(II)V

    .line 55
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const-string v2, "WifiOffloadDialog"

    const-string v3, "Offload, Dialog comes....!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const v2, 0x7f040108

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->setContentView(I)V

    .line 70
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->initialize()V

    .line 72
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    .line 166
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onDestroy()V

    .line 167
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 111
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onPause()V

    .line 113
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->getTaskId()I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->taskID:I

    .line 115
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->userPress:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 116
    const-string v0, "WifiOffloadDialog"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->getTopActivityFromStack()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->getTopActivityFromStack()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const-string v0, "WifiOffloadDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dialog TaskID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->taskID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    iget v1, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->taskID:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiOffloadManager;->checkAppNeedsMoveToFront(I)V

    .line 124
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 128
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onResume()V

    .line 130
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    if-eqz v1, :cond_0

    .line 131
    iget-boolean v1, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-nez v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiOffloadManager;->getLastPkgName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->packageName:Ljava/lang/String;

    .line 133
    const-string v1, "WifiOffloadDialog"

    const-string v2, "onResume()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiOffloadManager;->notifyDialogDisplayed(I)V

    .line 140
    :cond_0
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 141
    .local v0, mStatusBar:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 143
    :cond_1
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 2

    .prologue
    .line 179
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onUserLeaveHint()V

    .line 180
    const-string v0, "WifiOffloadDialog"

    const-string v1, "onUserLeaveHint()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-nez v0, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->getTopActivityFromStack()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.launcher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->finish()V

    .line 185
    :cond_0
    return-void
.end method
