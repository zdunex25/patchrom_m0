.class public Lcom/android/OriginalSettings/applications/ManageApplications;
.super Landroid/app/Fragment;
.source "ManageApplications.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/android/OriginalSettings/applications/AppClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;,
        Lcom/android/OriginalSettings/applications/ManageApplications$MyPagerAdapter;,
        Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;
    }
.end annotation


# instance fields
.field private mActivityResumed:Z

.field private mApplicationsState:Lcom/android/OriginalSettings/applications/ApplicationsState;

.field private mComputingSizeStr:Ljava/lang/CharSequence;

.field private final mContainerConnection:Landroid/content/ServiceConnection;

.field private volatile mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field private mContentContainer:Landroid/view/ViewGroup;

.field mCurTab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

.field private mCurrentPkgName:Ljava/lang/String;

.field private mDefaultListType:I

.field private mInflater:Landroid/view/LayoutInflater;

.field mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mOptionsMenu:Landroid/view/Menu;

.field mResetDialog:Landroid/app/AlertDialog;

.field private mRootView:Landroid/view/View;

.field private mShowBackground:Z

.field private mSortOrder:I

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 169
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mSortOrder:I

    .line 427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    .line 428
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurTab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    .line 449
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mShowBackground:Z

    .line 451
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mDefaultListType:I

    .line 1217
    new-instance v0, Lcom/android/OriginalSettings/applications/ManageApplications$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/applications/ManageApplications$2;-><init>(Lcom/android/OriginalSettings/applications/ManageApplications;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/applications/ManageApplications;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/applications/ManageApplications;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/OriginalSettings/applications/ManageApplications;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mActivityResumed:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/OriginalSettings/applications/ManageApplications;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mSortOrder:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/OriginalSettings/applications/ManageApplications;)Lcom/android/internal/app/IMediaContainerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/OriginalSettings/applications/ManageApplications;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/applications/ManageApplications;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/applications/ManageApplications;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/OriginalSettings/applications/ManageApplications;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    return-object v0
.end method

.method private startApplicationDetailsActivity()V
    .locals 7

    .prologue
    .line 988
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 989
    const-string v0, "package"

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/preference/BasePreferenceActivity;

    .line 992
    const-class v1, Lcom/android/OriginalSettings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090585

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lmiui/preference/BasePreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 994
    return-void
.end method


# virtual methods
.method buildResetDialog()V
    .locals 3

    .prologue
    .line 1062
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 1063
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1064
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0905a7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1065
    const v1, 0x7f0905a8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1066
    const v1, 0x7f0905a9

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1067
    const v1, 0x7f090125

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1068
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    .line 1069
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1071
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 970
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mApplicationsState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 973
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 1084
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1085
    .local v2, pm:Landroid/content/pm/PackageManager;
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v3

    .line 1087
    .local v3, nm:Landroid/app/INotificationManager;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v4

    .line 1088
    .local v4, npm:Landroid/net/NetworkPolicyManager;
    new-instance v5, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1089
    .local v5, handler:Landroid/os/Handler;
    new-instance v0, Lcom/android/OriginalSettings/applications/ManageApplications$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/applications/ManageApplications$1;-><init>(Lcom/android/OriginalSettings/applications/ManageApplications;Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Landroid/net/NetworkPolicyManager;Landroid/os/Handler;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/applications/ManageApplications$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1150
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    .end local v3           #nm:Landroid/app/INotificationManager;
    .end local v4           #npm:Landroid/net/NetworkPolicyManager;
    .end local v5           #handler:Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const/4 v5, -0x1

    const/4 v7, 0x3

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 806
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 808
    invoke-virtual {p0, v8}, Lcom/android/OriginalSettings/applications/ManageApplications;->setHasOptionsMenu(Z)V

    .line 810
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/OriginalSettings/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mApplicationsState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    .line 811
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 812
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 814
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "classname"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 816
    :goto_0
    if-nez v0, :cond_0

    .line 817
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 819
    :cond_0
    const-class v1, Lcom/android/OriginalSettings/Settings$RunningServicesActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".RunningServices"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    move v1, v8

    .line 832
    :goto_1
    if-eqz p1, :cond_8

    .line 833
    const-string v0, "sortOrder"

    iget v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mSortOrder:I

    .line 834
    const-string v0, "defaultListType"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 835
    if-eq v0, v5, :cond_7

    .line 836
    :goto_2
    const-string v1, "showBackground"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mShowBackground:Z

    .line 839
    :goto_3
    iput v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mDefaultListType:I

    .line 841
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 843
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v8}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 845
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0905c8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 846
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0905c7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mComputingSizeStr:Ljava/lang/CharSequence;

    .line 848
    new-instance v0, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mApplicationsState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0905ae

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/OriginalSettings/applications/ManageApplications;Lcom/android/OriginalSettings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/OriginalSettings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 851
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 853
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 854
    new-instance v0, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mApplicationsState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0905b0

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/OriginalSettings/applications/ManageApplications;Lcom/android/OriginalSettings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/OriginalSettings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 857
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 860
    :cond_2
    new-instance v0, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mApplicationsState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0905af

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move v4, v8

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/OriginalSettings/applications/ManageApplications;Lcom/android/OriginalSettings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/OriginalSettings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 863
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 865
    new-instance v0, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mApplicationsState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0905ad

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move v4, v7

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/OriginalSettings/applications/ManageApplications;Lcom/android/OriginalSettings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/OriginalSettings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 868
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 869
    return-void

    .line 814
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 822
    :cond_4
    const-class v1, Lcom/android/OriginalSettings/Settings$StorageUseActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, ".StorageUse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 825
    :cond_5
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mSortOrder:I

    move v1, v7

    .line 826
    goto/16 :goto_1

    .line 827
    :cond_6
    const-string v0, "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v1, v7

    .line 829
    goto/16 :goto_1

    :cond_7
    move v0, v1

    goto/16 :goto_2

    :cond_8
    move v0, v1

    goto/16 :goto_3

    :cond_9
    move v1, v4

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 998
    const-string v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateOptionsMenu in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    iput-object p1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 1002
    const v0, 0x7f0905a2

    invoke-interface {p1, v3, v6, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020122

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1005
    const/4 v0, 0x5

    const/4 v1, 0x2

    const v2, 0x7f0905a3

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020123

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1008
    const/4 v0, 0x6

    const v1, 0x7f0905a4

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1010
    const/4 v0, 0x7

    const v1, 0x7f0905a5

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1012
    const/16 v0, 0x8

    const v1, 0x7f0905a6

    invoke-interface {p1, v3, v0, v6, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0202c8

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1015
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1016
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 875
    iput-object p1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    .line 877
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f04007c

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 879
    .local v2, rootView:Landroid/view/View;
    iput-object p2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    .line 880
    iput-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    .line 882
    const v5, 0x7f0b0145

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    iput-object v5, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 883
    new-instance v0, Lcom/android/OriginalSettings/applications/ManageApplications$MyPagerAdapter;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/applications/ManageApplications$MyPagerAdapter;-><init>(Lcom/android/OriginalSettings/applications/ManageApplications;)V

    .line 884
    .local v0, adapter:Lcom/android/OriginalSettings/applications/ManageApplications$MyPagerAdapter;
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 885
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 886
    const v5, 0x7f0b0146

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/PagerTabStrip;

    .line 887
    .local v4, tabs:Landroid/support/v4/view/PagerTabStrip;
    const v5, 0x1060012

    invoke-virtual {v4, v5}, Landroid/support/v4/view/PagerTabStrip;->setTabIndicatorColorResource(I)V

    .line 891
    instance-of v5, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v5, :cond_0

    .line 892
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 895
    :cond_0
    if-eqz p3, :cond_1

    const-string v5, "resetDialog"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 896
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->buildResetDialog()V

    .line 899
    :cond_1
    if-nez p3, :cond_2

    .line 901
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 902
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    .line 903
    .local v3, tab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;
    iget v5, v3, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->mListType:I

    iget v6, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mDefaultListType:I

    if-ne v5, v6, :cond_3

    .line 904
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 910
    .end local v1           #i:I
    .end local v3           #tab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;
    :cond_2
    return-object v2

    .line 901
    .restart local v1       #i:I
    .restart local v3       #tab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1030
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1031
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 1032
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 1

    .prologue
    .line 1025
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 1026
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 959
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 963
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 964
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->detachView()V

    .line 963
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 966
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 1076
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    .line 1078
    :cond_0
    return-void
.end method

.method public onItemClick(Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "tab"
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1182
    .local p2, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p1, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v1

    if-le v1, p4, :cond_0

    .line 1183
    iget-object v1, p1, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, p4}, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 1184
    .local v0, entry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;
    iget-object v1, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    .line 1185
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->startApplicationDetailsActivity()V

    .line 1187
    .end local v0           #entry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1154
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1155
    .local v0, menuId:I
    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_3

    .line 1156
    :cond_0
    iput v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mSortOrder:I

    .line 1157
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurTab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurTab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_1

    .line 1158
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurTab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;

    iget v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v1, v3}, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    .line 1176
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->updateOptionsMenu()V

    move v1, v2

    .line 1177
    :cond_2
    return v1

    .line 1160
    :cond_3
    const/4 v3, 0x6

    if-ne v0, v3, :cond_4

    .line 1161
    iput-boolean v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mShowBackground:Z

    .line 1162
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurTab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurTab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/OriginalSettings/applications/RunningProcessesView;
    invoke-static {v3}, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->access$1000(Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;)Lcom/android/OriginalSettings/applications/RunningProcessesView;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1163
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurTab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/OriginalSettings/applications/RunningProcessesView;
    invoke-static {v3}, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->access$1000(Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;)Lcom/android/OriginalSettings/applications/RunningProcessesView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mAdapter:Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v3, v1}, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_0

    .line 1165
    :cond_4
    const/4 v3, 0x7

    if-ne v0, v3, :cond_5

    .line 1166
    iput-boolean v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mShowBackground:Z

    .line 1167
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurTab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurTab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/OriginalSettings/applications/RunningProcessesView;
    invoke-static {v1}, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->access$1000(Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;)Lcom/android/OriginalSettings/applications/RunningProcessesView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1168
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurTab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/OriginalSettings/applications/RunningProcessesView;
    invoke-static {v1}, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->access$1000(Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;)Lcom/android/OriginalSettings/applications/RunningProcessesView;

    move-result-object v1

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mAdapter:Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_0

    .line 1170
    :cond_5
    const/16 v3, 0x8

    if-ne v0, v3, :cond_2

    .line 1171
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->buildResetDialog()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 941
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 942
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mActivityResumed:Z

    .line 943
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 944
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->pause()V

    .line 943
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 946
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 1020
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1021
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 920
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 921
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mActivityResumed:Z

    .line 922
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/applications/ManageApplications;->updateCurrentTab(I)V

    .line 923
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->updateOptionsMenu()V

    .line 924
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 928
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 929
    const-string v0, "sortOrder"

    iget v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 930
    iget v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mDefaultListType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 931
    const-string v0, "defaultListType"

    iget v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mDefaultListType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 933
    :cond_0
    const-string v0, "showBackground"

    iget-boolean v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mShowBackground:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 934
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 935
    const-string v0, "resetDialog"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 937
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 915
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 916
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 950
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 951
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 953
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    .line 955
    :cond_0
    return-void
.end method

.method tabForType(I)Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;
    .locals 3
    .parameter "type"

    .prologue
    .line 976
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 977
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    .line 978
    .local v1, tab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;
    iget v2, v1, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->mListType:I

    if-ne v2, p1, :cond_0

    .line 982
    .end local v1           #tab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;
    :goto_1
    return-object v1

    .line 976
    .restart local v1       #tab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 982
    .end local v1           #tab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public updateCurrentTab(I)V
    .locals 8
    .parameter "position"

    .prologue
    .line 1190
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    .line 1191
    .local v3, tab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;
    iput-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurTab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    .line 1194
    iget-boolean v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mActivityResumed:Z

    if-eqz v4, :cond_1

    .line 1195
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurTab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    iget-object v5, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->build(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 1196
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurTab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    iget v5, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v4, v5}, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->resume(I)V

    .line 1200
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1201
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    .line 1202
    .local v2, t:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurTab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    if-eq v2, v4, :cond_0

    .line 1203
    invoke-virtual {v2}, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->pause()V

    .line 1200
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1198
    .end local v1           #i:I
    .end local v2           #t:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;
    :cond_1
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurTab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->pause()V

    goto :goto_0

    .line 1207
    .restart local v1       #i:I
    :cond_2
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurTab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 1208
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1209
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1210
    .local v0, host:Landroid/app/Activity;
    if-eqz v0, :cond_3

    .line 1211
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1213
    :cond_3
    return-void
.end method

.method updateOptionsMenu()V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1035
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    if-nez v4, :cond_0

    .line 1059
    :goto_0
    return-void

    .line 1043
    :cond_0
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurTab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurTab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    iget v4, v4, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->mListType:I

    if-ne v4, v3, :cond_3

    .line 1044
    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/applications/ManageApplications;->tabForType(I)Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    move-result-object v1

    .line 1045
    .local v1, tab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;
    if-eqz v1, :cond_1

    #getter for: Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/OriginalSettings/applications/RunningProcessesView;
    invoke-static {v1}, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->access$1000(Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;)Lcom/android/OriginalSettings/applications/RunningProcessesView;

    move-result-object v4

    if-eqz v4, :cond_1

    #getter for: Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/OriginalSettings/applications/RunningProcessesView;
    invoke-static {v1}, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->access$1000(Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;)Lcom/android/OriginalSettings/applications/RunningProcessesView;

    move-result-object v4

    iget-object v4, v4, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mAdapter:Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->getShowBackground()Z

    move-result v0

    .line 1047
    .local v0, showingBackground:Z
    :goto_1
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1048
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1049
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1050
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v5, 0x7

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-nez v0, :cond_2

    :goto_2
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1051
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .end local v0           #showingBackground:Z
    :cond_1
    move v0, v2

    .line 1045
    goto :goto_1

    .restart local v0       #showingBackground:Z
    :cond_2
    move v3, v2

    .line 1050
    goto :goto_2

    .line 1053
    .end local v0           #showingBackground:Z
    .end local v1           #tab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;
    :cond_3
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mSortOrder:I

    if-eq v4, v6, :cond_4

    move v4, v3

    :goto_3
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1054
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mSortOrder:I

    if-eq v4, v7, :cond_5

    move v4, v3

    :goto_4
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1055
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1056
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v5, 0x7

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1057
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v4, 0x8

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_4
    move v4, v2

    .line 1053
    goto :goto_3

    :cond_5
    move v4, v2

    .line 1054
    goto :goto_4
.end method
