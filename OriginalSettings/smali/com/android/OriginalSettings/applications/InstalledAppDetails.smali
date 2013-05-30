.class public Lcom/android/OriginalSettings/applications/InstalledAppDetails;
.super Landroid/app/Fragment;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/OriginalSettings/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/applications/InstalledAppDetails$DisableChanger;,
        Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;,
        Lcom/android/OriginalSettings/applications/InstalledAppDetails$PackageMoveObserver;,
        Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearCacheObserver;,
        Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearUserDataObserver;
    }
.end annotation


# static fields
.field private static final SPRINT_NO_DISABLE_APP_LIST:[Ljava/lang/String;


# instance fields
.field private mActivitiesButton:Landroid/widget/Button;

.field private mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

.field private mAppSize:Landroid/widget/TextView;

.field private mAppVersion:Landroid/widget/TextView;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAskCompatibilityCB:Landroid/widget/CheckBox;

.field private mCacheSize:Landroid/widget/TextView;

.field private mCanBeOnSdCardChecker:Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;

.field private mCanClearData:Z

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mClearCacheButton:Landroid/widget/Button;

.field private mClearCacheObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearCacheObserver;

.field private mClearDataButton:Landroid/widget/Button;

.field private mClearDataObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearUserDataObserver;

.field private mComputingStr:Ljava/lang/CharSequence;

.field private mDataSize:Landroid/widget/TextView;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEnableCompatibilityCB:Landroid/widget/CheckBox;

.field private mExternalCodeSize:Landroid/widget/TextView;

.field private mExternalDataSize:Landroid/widget/TextView;

.field private mForceStopButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mHaveSizes:Z

.field private mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

.field private mLastCacheSize:J

.field private mLastCodeSize:J

.field private mLastDataSize:J

.field private mLastExternalCodeSize:J

.field private mLastExternalDataSize:J

.field private mLastTotalSize:J

.field private mMoveAppButton:Landroid/widget/Button;

.field private mMoveInProgress:Z

.field private mNotificationSwitch:Landroid/widget/CompoundButton;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPackageMoveObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$PackageMoveObserver;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRootView:Landroid/view/View;

.field private mScreenCompatSection:Landroid/view/View;

.field private mSession:Lcom/android/OriginalSettings/applications/ApplicationsState$Session;

.field private mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

.field private mTotalSize:Landroid/widget/TextView;

.field private mUninstallButton:Landroid/widget/Button;

.field private mUpdatedSysApp:Z

.field private mUsbManager:Landroid/hardware/usb/IUsbManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 113
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.mms"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.sec.android.gallery3d"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.android.providers.media"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.sprint.w.installer"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.sprint.zone"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.coremobility.app.vnotes"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.locationlabs.v3client"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.sprint.dsa"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.birdstep.android.cm"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.sprint.ce.updater"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.telespree.android.client"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->SPRINT_NO_DISABLE_APP_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, -0x1

    .line 103
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    .line 143
    iput-boolean v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 144
    iput-boolean v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCanClearData:Z

    .line 168
    iput-boolean v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mHaveSizes:Z

    .line 169
    iput-wide v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 170
    iput-wide v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastDataSize:J

    .line 171
    iput-wide v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    .line 172
    iput-wide v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    .line 173
    iput-wide v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastCacheSize:J

    .line 174
    iput-wide v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastTotalSize:J

    .line 206
    new-instance v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$1;-><init>(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    .line 1070
    new-instance v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$2;-><init>(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    .line 1114
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->processClearMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/OriginalSettings/applications/InstalledAppDetails;I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getMoveErrMsg(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)Landroid/widget/CompoundButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/OriginalSettings/applications/InstalledAppDetails;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->setNotificationsEnabled(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/OriginalSettings/applications/InstalledAppDetails;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)Lcom/android/OriginalSettings/applications/ApplicationsState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->processMoveMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->initiateClearUserData()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/applications/InstalledAppDetails;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/OriginalSettings/applications/InstalledAppDetails;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/OriginalSettings/applications/InstalledAppDetails;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method private applyKioskModePolicy(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 1233
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    if-nez v1, :cond_0

    .line 1234
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    .line 1236
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-virtual {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->getKioskHomePackage()Ljava/lang/String;

    move-result-object v0

    .line 1237
    .local v0, kioskPackage:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1238
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1240
    :cond_1
    return-void
.end method

.method private checkForceStop()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 1083
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1085
    invoke-direct {p0, v5}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    .line 1098
    :goto_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->updateButtonsForOperator()V

    .line 1099
    return-void

    .line 1086
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x20

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 1089
    invoke-direct {p0, v6}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto :goto_0

    .line 1091
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v3, "package"

    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1093
    const-string v0, "android.intent.extra.PACKAGES"

    new-array v3, v6, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1094
    const-string v0, "android.intent.extra.UID"

    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1095
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 4
    .parameter "pkgName"

    .prologue
    .line 1059
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1061
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 1062
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    invoke-virtual {v2, p1}, Lcom/android/OriginalSettings/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;)V

    .line 1063
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    invoke-virtual {v2, p1}, Lcom/android/OriginalSettings/applications/ApplicationsState;->getEntry(Ljava/lang/String;)Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    move-result-object v1

    .line 1064
    .local v1, newEnt:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;
    if-eqz v1, :cond_0

    .line 1065
    iput-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    .line 1067
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->checkForceStop()V

    .line 1068
    return-void
.end method

.method private getMoveErrMsg(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "errCode"

    .prologue
    .line 279
    packed-switch p1, :pswitch_data_0

    .line 293
    const-string v0, ""

    :goto_0
    return-object v0

    .line 281
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0905cf

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 283
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0905d0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 285
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0905d1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 287
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0905d2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 289
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0905d3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 291
    :pswitch_5
    const-string v0, ""

    goto :goto_0

    .line 279
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 2
    .parameter "size"

    .prologue
    .line 254
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mInvalidSizeStr:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initDataButtons()V
    .locals 4

    .prologue
    const v3, 0x7f090598

    const/4 v2, 0x0

    .line 261
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x41

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 266
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 267
    iput-boolean v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCanClearData:Z

    .line 276
    :goto_0
    return-void

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v1, 0x7f0905aa

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 274
    :goto_1
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 272
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method private initMoveButton()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 297
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 298
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 321
    :goto_0
    return-void

    .line 301
    :cond_0
    const/4 v0, 0x0

    .line 302
    .local v0, dataOnly:Z
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    if-eqz v4, :cond_1

    move v0, v2

    .line 303
    :goto_1
    const/4 v1, 0x1

    .line 304
    .local v1, moveDisable:Z
    if-eqz v0, :cond_2

    .line 305
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v5, 0x7f0905cb

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 315
    :goto_2
    if-eqz v1, :cond_5

    .line 316
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .end local v1           #moveDisable:Z
    :cond_1
    move v0, v3

    .line 302
    goto :goto_1

    .line 306
    .restart local v1       #moveDisable:Z
    :cond_2
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x4

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 307
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v5, 0x7f0905cc

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 309
    const/4 v1, 0x0

    goto :goto_2

    .line 311
    :cond_3
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v5, 0x7f0905cd

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 312
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;->init()V

    .line 313
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;

    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;->check(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-nez v4, :cond_4

    move v1, v2

    :goto_3
    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_3

    .line 318
    :cond_5
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private initNotificationButton()V
    .locals 4

    .prologue
    .line 439
    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 441
    .local v1, nm:Landroid/app/INotificationManager;
    const/4 v0, 0x1

    .line 443
    .local v0, enabled:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 447
    :goto_0
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 449
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->isThisASystemPackage()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.sec.android.fotaclient"

    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 450
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 455
    :goto_1
    return-void

    .line 452
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 453
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1

    .line 444
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private initUninstallButtons()V
    .locals 17

    .prologue
    .line 334
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v14, v14, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v14, v14, 0x80

    if-eqz v14, :cond_4

    const/4 v14, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 335
    const/4 v6, 0x1

    .line 336
    .local v6, enabled:Z
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v14, :cond_5

    .line 337
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v15, 0x7f090599

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setText(I)V

    .line 407
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v15, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 408
    const/4 v6, 0x0

    .line 411
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v14}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v15, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/app/enterprise/ApplicationPolicy;->getApplicationUninstallationEnabled(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 412
    const/4 v6, 0x0

    .line 431
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v14, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 432
    if-eqz v6, :cond_3

    .line 434
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    :cond_3
    return-void

    .line 334
    .end local v6           #enabled:Z
    :cond_4
    const/4 v14, 0x0

    goto :goto_0

    .line 339
    .restart local v6       #enabled:Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v14, v14, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_e

    .line 340
    const/4 v6, 0x0

    .line 346
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const-string v15, "android"

    const/16 v16, 0x40

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v13

    .line 348
    .local v13, sys:Landroid/content/pm/PackageInfo;
    new-instance v9, Landroid/content/Intent;

    const-string v14, "android.intent.action.MAIN"

    invoke-direct {v9, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    .local v9, intent:Landroid/content/Intent;
    const-string v14, "android.intent.category.HOME"

    invoke-virtual {v9, v14}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v14, v14, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const/4 v15, 0x0

    invoke-virtual {v14, v9, v15}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 352
    .local v7, homes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v7, :cond_6

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    if-gtz v14, :cond_7

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->isThisASystemPackage()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 354
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v15, 0x7f090596

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setText(I)V

    .line 365
    :goto_2
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v12

    .line 366
    .local v12, sales_code:Ljava/lang/String;
    const-string v14, "SPR"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    const-string v14, "BST"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    const-string v14, "VMU"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 368
    :cond_8
    sget-object v4, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->SPRINT_NO_DISABLE_APP_LIST:[Ljava/lang/String;

    .local v4, arr$:[Ljava/lang/String;
    array-length v10, v4

    .local v10, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_3
    if-ge v8, v10, :cond_9

    aget-object v11, v4, v8

    .line 369
    .local v11, pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v14, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 370
    const/4 v6, 0x0

    .line 387
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v10           #len$:I
    .end local v11           #pkgName:Ljava/lang/String;
    :cond_9
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeature_Setting_RemoveDisableButtonInAppMgr"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    .line 388
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeature_Setting_RemoveDisableButtonInAppMgr"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 389
    .local v2, BlockPackageString:Ljava/lang/String;
    const-string v14, ","

    invoke-virtual {v2, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 390
    .local v1, BlockPackageList:[Ljava/lang/String;
    move-object v4, v1

    .restart local v4       #arr$:[Ljava/lang/String;
    array-length v10, v4

    .restart local v10       #len$:I
    const/4 v8, 0x0

    .restart local v8       #i$:I
    :goto_4
    if-ge v8, v10, :cond_0

    aget-object v3, v4, v8

    .line 391
    .local v3, app:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v14, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 392
    const/4 v6, 0x0

    .line 393
    goto/16 :goto_1

    .line 355
    .end local v1           #BlockPackageList:[Ljava/lang/String;
    .end local v2           #BlockPackageString:Ljava/lang/String;
    .end local v3           #app:Ljava/lang/String;
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v10           #len$:I
    .end local v12           #sales_code:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v14, v14, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v14, v14, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v14, :cond_b

    .line 356
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v15, 0x7f090596

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setText(I)V

    .line 357
    const/4 v6, 0x1

    goto :goto_2

    .line 359
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v15, 0x7f090597

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setText(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    const/4 v6, 0x1

    goto/16 :goto_2

    .line 368
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v8       #i$:I
    .restart local v10       #len$:I
    .restart local v11       #pkgName:Ljava/lang/String;
    .restart local v12       #sales_code:Ljava/lang/String;
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 390
    .end local v11           #pkgName:Ljava/lang/String;
    .restart local v1       #BlockPackageList:[Ljava/lang/String;
    .restart local v2       #BlockPackageString:Ljava/lang/String;
    .restart local v3       #app:Ljava/lang/String;
    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 397
    .end local v1           #BlockPackageList:[Ljava/lang/String;
    .end local v2           #BlockPackageString:Ljava/lang/String;
    .end local v3           #app:Ljava/lang/String;
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v7           #homes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8           #i$:I
    .end local v9           #intent:Landroid/content/Intent;
    .end local v10           #len$:I
    .end local v12           #sales_code:Ljava/lang/String;
    .end local v13           #sys:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v5

    .line 398
    .local v5, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v14, "InstalledAppDetails"

    const-string v15, "Unable to get package info"

    invoke-static {v14, v15, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 402
    .end local v5           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v15, 0x7f090595

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_1
.end method

.method private initiateClearUserData()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 886
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 888
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 889
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing user data for package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearUserDataObserver;

    if-nez v0, :cond_0

    .line 891
    new-instance v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearUserDataObserver;-><init>(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearUserDataObserver;

    .line 893
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 895
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v0

    .line 896
    if-nez v0, :cond_1

    .line 898
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldnt clear application user data for package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    const/4 v0, 0x4

    invoke-direct {p0, v0, v4}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->showDialogInner(II)V

    .line 903
    :goto_0
    return-void

    .line 901
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v1, 0x7f0905b5

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private isThisASystemPackage()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 325
    :try_start_0
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const-string v4, "android"

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 326
    .local v1, sys:Landroid/content/pm/PackageInfo;
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 329
    .end local v1           #sys:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v2

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private processClearMsg(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 841
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 842
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 843
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v3, 0x7f090598

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 844
    if-ne v0, v4, :cond_0

    .line 845
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cleared user data for package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 850
    :goto_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->checkForceStop()V

    .line 851
    return-void

    .line 848
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private processMoveMsg(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 867
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 868
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 870
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 871
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 872
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Moved resources for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 878
    :goto_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->refreshUi()Z

    .line 879
    return-void

    .line 876
    :cond_0
    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0
.end method

.method private refreshButtons()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 854
    iget-boolean v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    if-nez v0, :cond_0

    .line 855
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->initUninstallButtons()V

    .line 856
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->initDataButtons()V

    .line 857
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->initMoveButton()V

    .line 858
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->initNotificationButton()V

    .line 864
    :goto_0
    return-void

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v1, 0x7f0905ce

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 861
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 862
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private refreshSizeInfo()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const-wide/16 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 768
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v6, -0x2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v4, v4, v10

    if-nez v4, :cond_2

    .line 770
    :cond_0
    iput-wide v10, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastTotalSize:J

    iput-wide v10, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastCacheSize:J

    iput-wide v10, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastDataSize:J

    iput-wide v10, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 771
    iget-boolean v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mHaveSizes:Z

    if-nez v4, :cond_1

    .line 772
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 773
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 774
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 775
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 777
    :cond_1
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 778
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 833
    :goto_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->updateButtonsForOperator()V

    .line 834
    return-void

    .line 781
    :cond_2
    iput-boolean v9, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mHaveSizes:Z

    .line 782
    iget-wide v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastCodeSize:J

    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->codeSize:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 783
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->codeSize:J

    iput-wide v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 784
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v5, v5, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->codeSize:J

    invoke-direct {p0, v5, v6}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 786
    :cond_3
    iget-wide v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastDataSize:J

    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->dataSize:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    .line 787
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->dataSize:J

    iput-wide v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastDataSize:J

    .line 788
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v5, v5, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->dataSize:J

    invoke-direct {p0, v5, v6}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 790
    :cond_4
    iget-wide v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    .line 791
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    iput-wide v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    .line 792
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v5, v5, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    invoke-direct {p0, v5, v6}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 794
    :cond_5
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->externalCacheSize:J

    sub-long v2, v4, v6

    .line 795
    .local v2, nonCacheExtDataSize:J
    iget-wide v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_6

    .line 796
    iput-wide v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    .line 797
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 799
    :cond_6
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->cacheSize:J

    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->externalCacheSize:J

    add-long v0, v4, v6

    .line 800
    .local v0, cacheSize:J
    iget-wide v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastCacheSize:J

    cmp-long v4, v4, v0

    if-eqz v4, :cond_7

    .line 801
    iput-wide v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastCacheSize:J

    .line 802
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 804
    :cond_7
    iget-wide v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastTotalSize:J

    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_8

    .line 805
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->size:J

    iput-wide v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastTotalSize:J

    .line 806
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v5, v5, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->size:J

    invoke-direct {p0, v5, v6}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 809
    :cond_8
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->dataSize:J

    add-long/2addr v4, v2

    cmp-long v4, v4, v12

    if-lez v4, :cond_9

    iget-boolean v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCanClearData:Z

    if-nez v4, :cond_a

    .line 810
    :cond_9
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 826
    :goto_1
    cmp-long v4, v0, v12

    if-gtz v4, :cond_d

    .line 827
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 814
    :cond_a
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v4, :cond_c

    .line 815
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v4, :cond_b

    .line 816
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 824
    :goto_2
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 818
    :cond_b
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    .line 821
    :cond_c
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    .line 829
    :cond_d
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 830
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private refreshUi()Z
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 582
    iget-boolean v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    if-eqz v0, :cond_1

    move v4, v5

    .line 749
    :cond_0
    :goto_0
    return v4

    .line 585
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 586
    if-eqz v0, :cond_3

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 587
    :goto_1
    if-nez v1, :cond_17

    .line 588
    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 590
    :goto_2
    if-eqz v0, :cond_17

    .line 591
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 594
    :goto_3
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/applications/ApplicationsState;->getEntry(Ljava/lang/String;)Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    .line 596
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_0

    .line 602
    :try_start_0
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x2240

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 615
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 616
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0, v6, v2}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 620
    :try_start_1
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0, v2}, Landroid/hardware/usb/IUsbManager;->hasDefaults(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    move v3, v0

    .line 624
    :goto_4
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v7

    .line 627
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v1, 0x7f0b0114

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 628
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v8, 0x7f0b0115

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 629
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_2

    if-eqz v3, :cond_5

    :cond_2
    move v6, v5

    .line 630
    :goto_5
    if-nez v6, :cond_6

    if-nez v7, :cond_6

    .line 631
    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 670
    :goto_6
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 672
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getPackageScreenCompatMode(Ljava/lang/String;)I

    .line 683
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mScreenCompatSection:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 687
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v1, 0x7f0b011a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 688
    new-instance v1, Landroid/widget/AppSecurityPermissions;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Landroid/widget/AppSecurityPermissions;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 689
    invoke-virtual {v1}, Landroid/widget/AppSecurityPermissions;->getPermissionCount()I

    move-result v3

    if-lez v3, :cond_16

    .line 690
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 692
    const v3, 0x7f0b011c

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 694
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 695
    invoke-virtual {v1}, Landroid/widget/AppSecurityPermissions;->getPermissionsView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 698
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 699
    if-eqz v1, :cond_11

    array-length v0, v1

    if-le v0, v5, :cond_11

    .line 700
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v0, v4

    .line 701
    :goto_7
    array-length v3, v1

    if-ge v0, v3, :cond_10

    .line 702
    aget-object v3, v1, v0

    .line 703
    iget-object v7, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 701
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 586
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 588
    :cond_4
    const-string v2, "intent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto/16 :goto_2

    .line 606
    :catch_0
    move-exception v0

    .line 607
    const-string v1, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception when retrieving package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 621
    :catch_1
    move-exception v0

    .line 622
    const-string v1, "InstalledAppDetails"

    const-string v3, "mUsbManager.hasDefaults"

    invoke-static {v1, v3, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v4

    goto/16 :goto_4

    :cond_5
    move v6, v4

    .line 629
    goto/16 :goto_5

    .line 633
    :cond_6
    if-eqz v7, :cond_b

    if-eqz v6, :cond_b

    move v3, v5

    .line 635
    :goto_9
    if-eqz v7, :cond_c

    .line 636
    const v8, 0x7f090588

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    .line 641
    :goto_a
    const/4 v0, 0x0

    .line 642
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f000b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 644
    if-eqz v6, :cond_8

    .line 645
    const v6, 0x7f09059a

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 646
    new-instance v9, Landroid/text/SpannableString;

    invoke-direct {v9, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 647
    if-eqz v3, :cond_7

    .line 648
    new-instance v10, Landroid/text/style/BulletSpan;

    invoke-direct {v10, v8}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v9, v10, v4, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 650
    :cond_7
    if-nez v0, :cond_d

    new-array v0, v11, [Ljava/lang/CharSequence;

    aput-object v9, v0, v4

    const-string v6, "\n"

    aput-object v6, v0, v5

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 653
    :cond_8
    :goto_b
    if-eqz v7, :cond_a

    .line 654
    const v6, 0x7f09059b

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 656
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 657
    if-eqz v3, :cond_9

    .line 658
    new-instance v3, Landroid/text/style/BulletSpan;

    invoke-direct {v3, v8}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v7, v3, v4, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 661
    :cond_9
    if-nez v0, :cond_e

    new-array v0, v11, [Ljava/lang/CharSequence;

    aput-object v7, v0, v4

    const-string v3, "\n"

    aput-object v3, v0, v5

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 664
    :cond_a
    :goto_c
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 665
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 666
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    :cond_b
    move v3, v4

    .line 633
    goto :goto_9

    .line 638
    :cond_c
    const v8, 0x7f090587

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_a

    .line 650
    :cond_d
    new-array v6, v13, [Ljava/lang/CharSequence;

    aput-object v0, v6, v4

    const-string v0, "\n"

    aput-object v0, v6, v5

    aput-object v9, v6, v11

    const-string v0, "\n"

    aput-object v0, v6, v12

    invoke-static {v6}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_b

    .line 661
    :cond_e
    new-array v3, v13, [Ljava/lang/CharSequence;

    aput-object v0, v3, v4

    const-string v0, "\n"

    aput-object v0, v3, v5

    aput-object v7, v3, v11

    const-string v0, "\n"

    aput-object v0, v3, v12

    invoke-static {v3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c

    .line 707
    :cond_f
    :try_start_2
    iget-object v7, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v3, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 708
    iget-object v7, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_8

    .line 709
    :catch_2
    move-exception v3

    goto/16 :goto_8

    .line 712
    :cond_10
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 713
    if-lez v7, :cond_11

    .line 714
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 716
    if-ne v7, v5, :cond_12

    .line 717
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 730
    :goto_d
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v3, 0x7f0b011b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 732
    const v3, 0x7f0905c2

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v4

    aput-object v1, v6, v5

    invoke-virtual {v8, v3, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 740
    :cond_11
    :goto_e
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->checkForceStop()V

    .line 741
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V

    .line 742
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->refreshButtons()V

    .line 743
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->refreshSizeInfo()V

    .line 746
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->applyKioskModePolicy(Ljava/lang/String;)V

    move v4, v5

    .line 749
    goto/16 :goto_0

    .line 718
    :cond_12
    if-ne v7, v11, :cond_13

    .line 719
    const v0, 0x7f0905c3

    new-array v1, v11, [Ljava/lang/Object;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-virtual {v8, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_d

    .line 722
    :cond_13
    add-int/lit8 v0, v7, -0x2

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 723
    add-int/lit8 v0, v7, -0x3

    move-object v3, v1

    move v1, v0

    :goto_f
    if-ltz v1, :cond_15

    .line 724
    if-nez v1, :cond_14

    const v0, 0x7f0905c5

    :goto_10
    new-array v9, v11, [Ljava/lang/Object;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v9, v4

    aput-object v3, v9, v5

    invoke-virtual {v8, v0, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 723
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_f

    .line 724
    :cond_14
    const v0, 0x7f0905c6

    goto :goto_10

    .line 727
    :cond_15
    const v0, 0x7f0905c4

    new-array v1, v11, [Ljava/lang/Object;

    aput-object v3, v1, v4

    add-int/lit8 v3, v7, -0x1

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-virtual {v8, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_d

    .line 737
    :cond_16
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_e

    :cond_17
    move-object v2, v1

    goto/16 :goto_3
.end method

.method private resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 753
    const v0, 0x7f090587

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 754
    const v0, 0x7f09059c

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 756
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 757
    return-void
.end method

.method private setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V
    .locals 9
    .parameter "pkgInfo"

    .prologue
    const/4 v8, 0x0

    .line 518
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v4, 0x7f0b00ff

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 519
    .local v0, appSnippet:Landroid/view/View;
    const v3, 0x7f0b007e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 520
    .local v1, icon:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    invoke-virtual {v3, v4}, Lcom/android/OriginalSettings/applications/ApplicationsState;->ensureIcon(Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;)V

    .line 521
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 523
    const v3, 0x7f0b0137

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 524
    .local v2, label:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    const v3, 0x7f0b0147

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    .line 528
    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 529
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 530
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0905ca

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    :goto_0
    return-void

    .line 533
    :cond_0
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setIntentAndFinish(ZZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 761
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 762
    const-string v0, "chg"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 763
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/preference/BasePreferenceActivity;

    .line 764
    const/4 v2, -0x1

    invoke-virtual {v0, p0, v2, v1}, Lmiui/preference/BasePreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 765
    return-void
.end method

.method private setNotificationsEnabled(Z)V
    .locals 6
    .parameter "enabled"

    .prologue
    .line 1135
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 1136
    .local v3, packageName:Ljava/lang/String;
    const-string v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v2

    .line 1139
    .local v2, nm:Landroid/app/INotificationManager;
    :try_start_0
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 1140
    .local v0, enable:Z
    invoke-interface {v2, v3, p1}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1144
    .end local v0           #enable:Z
    :goto_0
    return-void

    .line 1141
    :catch_0
    move-exception v1

    .line 1142
    .local v1, ex:Landroid/os/RemoteException;
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    if-nez p1, :cond_0

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private showDialogInner(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 906
    invoke-static {p1, p2}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;->newInstance(II)Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;

    move-result-object v0

    .line 907
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 908
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 909
    return-void
.end method

.method private uninstallPkg(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1053
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1054
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->startActivity(Landroid/content/Intent;)V

    .line 1055
    invoke-direct {p0, v3, v3}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 1056
    return-void
.end method

.method private updateButtonsForOperator()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1104
    const-string v0, "com.wssyncmldm"

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.sec.android.fotaclient"

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1106
    :cond_0
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 1107
    const-string v1, "TMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1108
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1109
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1112
    :cond_2
    return-void
.end method

.method private updateForceStopButton(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1079
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1080
    return-void
.end method


# virtual methods
.method public onAllSizesComputed()V
    .locals 0

    .prologue
    .line 555
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1214
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 1215
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1217
    .local v0, am:Landroid/app/ActivityManager;
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAskCompatibilityCB:Landroid/widget/CheckBox;

    if-ne p1, v4, :cond_1

    .line 1218
    invoke-virtual {v0, v1, p2}, Landroid/app/ActivityManager;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 1229
    :cond_0
    :goto_0
    return-void

    .line 1219
    :cond_1
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mEnableCompatibilityCB:Landroid/widget/CheckBox;

    if-ne p1, v4, :cond_3

    .line 1220
    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    .line 1222
    :cond_3
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    if-ne p1, v4, :cond_0

    .line 1223
    if-nez p2, :cond_4

    .line 1224
    const/16 v2, 0x8

    invoke-direct {p0, v2, v3}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 1226
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->setNotificationsEnabled(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1151
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 1152
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_4

    .line 1153
    iget-boolean v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v3, :cond_1

    .line 1154
    invoke-direct {p0, v0, v4}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->showDialogInner(II)V

    .line 1210
    :cond_0
    :goto_0
    return-void

    .line 1156
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 1157
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_2

    .line 1158
    const/4 v0, 0x7

    invoke-direct {p0, v0, v4}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 1160
    :cond_2
    new-instance v2, Lcom/android/OriginalSettings/applications/InstalledAppDetails$DisableChanger;

    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v2, p0, v0, v4}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/OriginalSettings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-virtual {v2, v1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1165
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;)V

    goto :goto_0

    .line 1168
    :cond_4
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_5

    .line 1169
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 1171
    :try_start_0
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0, v2}, Landroid/hardware/usb/IUsbManager;->clearDefaults(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1175
    :goto_1
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, v2, v4}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    .line 1176
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v1, 0x7f0b0114

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1178
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v2, 0x7f0b0115

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1179
    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto :goto_0

    .line 1172
    :catch_0
    move-exception v0

    .line 1173
    const-string v1, "InstalledAppDetails"

    const-string v3, "mUsbManager.clearDefaults"

    invoke-static {v1, v3, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1180
    :cond_5
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_7

    .line 1181
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1182
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1183
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1184
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1186
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1189
    :cond_6
    invoke-direct {p0, v1, v4}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_0

    .line 1191
    :cond_7
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_9

    .line 1193
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearCacheObserver;

    if-nez v0, :cond_8

    .line 1194
    new-instance v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearCacheObserver;-><init>(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearCacheObserver;

    .line 1196
    :cond_8
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    goto/16 :goto_0

    .line 1197
    :cond_9
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_a

    .line 1198
    const/4 v0, 0x5

    invoke-direct {p0, v0, v4}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_0

    .line 1200
    :cond_a
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_0

    .line 1201
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$PackageMoveObserver;

    if-nez v2, :cond_b

    .line 1202
    new-instance v2, Lcom/android/OriginalSettings/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$PackageMoveObserver;-><init>(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)V

    iput-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$PackageMoveObserver;

    .line 1204
    :cond_b
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x4

    and-int/2addr v2, v3

    if-eqz v2, :cond_c

    move v0, v1

    .line 1206
    :cond_c
    iput-boolean v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 1207
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->refreshButtons()V

    .line 1208
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/pm/PackageManager;->movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 460
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 462
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/OriginalSettings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/OriginalSettings/applications/ApplicationsState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    .line 463
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    invoke-virtual {v1, p0}, Lcom/android/OriginalSettings/applications/ApplicationsState;->newSession(Lcom/android/OriginalSettings/applications/ApplicationsState$Callbacks;)Lcom/android/OriginalSettings/applications/ApplicationsState$Session;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mSession:Lcom/android/OriginalSettings/applications/ApplicationsState$Session;

    .line 464
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    .line 465
    const-string v1, "usb"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 466
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 467
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 468
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 470
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 472
    new-instance v1, Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;

    invoke-direct {v1}, Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;-><init>()V

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;

    .line 473
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const v6, 0x7f0b0193

    const v5, 0x7f0b0192

    .line 477
    const v3, 0x7f04006a

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    .line 479
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0905c7

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    .line 482
    const v3, 0x7f0b0104

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    .line 483
    const v3, 0x7f0b0106

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    .line 484
    const v3, 0x7f0b010b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    .line 485
    const v3, 0x7f0b0108

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    .line 486
    const v3, 0x7f0b010d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    .line 489
    const v3, 0x7f0b0100

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 490
    .local v0, btnPanel:Landroid/view/View;
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    .line 491
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const v4, 0x7f09058f

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 492
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    .line 493
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 496
    const v3, 0x7f0b010e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 497
    .local v1, data_buttons_panel:Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    .line 498
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    .line 501
    const v3, 0x7f0b0112

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    .line 502
    const v3, 0x7f0b0113

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    .line 504
    const v3, 0x7f0b0116

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    .line 507
    const v3, 0x7f0b0117

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mScreenCompatSection:Landroid/view/View;

    .line 508
    const v3, 0x7f0b0118

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAskCompatibilityCB:Landroid/widget/CheckBox;

    .line 509
    const v3, 0x7f0b0119

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mEnableCompatibilityCB:Landroid/widget/CheckBox;

    .line 511
    const v3, 0x7f0b0101

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CompoundButton;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    .line 513
    return-object v2
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 559
    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .prologue
    .line 563
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->refreshUi()Z

    .line 564
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->refreshSizeInfo()V

    .line 575
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 549
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 550
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mSession:Lcom/android/OriginalSettings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/applications/ApplicationsState$Session;->pause()V

    .line 551
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 568
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;>;"
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 539
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 541
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mSession:Lcom/android/OriginalSettings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/applications/ApplicationsState$Session;->resume()V

    .line 542
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 543
    invoke-direct {p0, v1, v1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 545
    :cond_0
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .parameter "running"

    .prologue
    .line 579
    return-void
.end method
