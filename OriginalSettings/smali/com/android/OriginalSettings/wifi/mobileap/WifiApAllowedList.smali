.class public Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "WifiApAllowedList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActionView:Landroid/view/View;

.field private mActivity:Landroid/app/Activity;

.field private mAddButton:Landroid/view/View;

.field private mAddlistMenuItem:Landroid/view/MenuItem;

.field private mCurrentSelected:Landroid/preference/Preference;

.field private mDeleteButton:Landroid/view/View;

.field private mDeleteIcon:Landroid/widget/ImageView;

.field private mDeleteMenuItem:Landroid/view/MenuItem;

.field private mDeviceList:Landroid/preference/PreferenceScreen;

.field private mEmptyLandscape:Landroid/view/View;

.field private mEmptyPortrait:Landroid/view/View;

.field private mIsTablet:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 60
    const-string v0, "WifiApAllowedList"

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mAddButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->startDeletePreference()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeleteButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mCurrentSelected:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->reloadWhiteList()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    return-void
.end method

.method private reloadWhiteList()V
    .locals 3

    .prologue
    .line 333
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 334
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 335
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 337
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 339
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private startDeletePreference()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 216
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    check-cast v0, Lmiui/preference/BasePreferenceActivity;

    const-class v1, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0902e2

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lmiui/preference/BasePreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 219
    return-void
.end method

.method private updateEmptyView(Z)V
    .locals 3
    .parameter "isLand"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 246
    if-eqz p1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mEmptyLandscape:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mEmptyPortrait:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 253
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mEmptyLandscape:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mEmptyPortrait:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateOptionsMenuIcon(Z)V
    .locals 5
    .parameter "showIcon"

    .prologue
    const/4 v4, -0x2

    .line 256
    if-eqz p1, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 258
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->setHasOptionsMenu(Z)V

    .line 266
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 264
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->setHasOptionsMenu(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v11

    iput-object v11, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    .line 106
    const-string v11, "wifi"

    invoke-virtual {p0, v11}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiManager;

    iput-object v11, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 107
    iget-object v11, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-static {v11}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    .line 109
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->getListView()Landroid/widget/ListView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 110
    .local v6, listAdapter:Landroid/widget/ListAdapter;
    iget-object v11, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 111
    .local v3, inflate:Landroid/view/LayoutInflater;
    const v11, 0x7f0400f5

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 112
    .local v9, view:Landroid/widget/LinearLayout;
    const v11, 0x1020004

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 113
    .local v1, emptyView:Landroid/widget/FrameLayout;
    const v11, 0x7f0b02c2

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mEmptyPortrait:Landroid/view/View;

    .line 114
    const v11, 0x7f0b02c6

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mEmptyLandscape:Landroid/view/View;

    .line 116
    const v11, 0x102000a

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    .line 117
    .local v7, lv:Landroid/widget/ListView;
    invoke-virtual {v7, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 118
    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->getView()Landroid/view/View;

    move-result-object v0

    .local v0, currentView:Landroid/view/View;
    move-object v11, v0

    .line 121
    check-cast v11, Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 122
    check-cast v0, Landroid/widget/LinearLayout;

    .end local v0           #currentView:Landroid/view/View;
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 124
    const-string v11, "device_list_category"

    invoke-virtual {p0, v11}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceScreen;

    iput-object v11, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    .line 126
    iget-boolean v11, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-eqz v11, :cond_1

    .line 127
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->setHasOptionsMenu(Z)V

    .line 207
    :goto_0
    iget-object v11, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->orientation:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_3

    const/4 v5, 0x1

    .line 209
    .local v5, isLand:Z
    :goto_1
    iget-boolean v11, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v11, :cond_0

    .line 210
    invoke-direct {p0, v5}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->updateOptionsMenuIcon(Z)V

    .line 211
    :cond_0
    invoke-direct {p0, v5}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->updateEmptyView(Z)V

    .line 212
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->updateList()V

    .line 213
    return-void

    .line 129
    .end local v5           #isLand:Z
    :cond_1
    iget-object v11, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v10, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 130
    .local v10, width:I
    iget-object v11, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v2, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 131
    .local v2, height:I
    if-ge v10, v2, :cond_2

    move v8, v10

    .line 132
    .local v8, screenWidth:I
    :goto_2
    iget-object v11, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 133
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v11, 0x7f0400f6

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    .line 134
    iget-object v11, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    const v12, 0x7f0b02cc

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mAddButton:Landroid/view/View;

    .line 135
    iget-object v11, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mAddButton:Landroid/view/View;

    new-instance v12, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList$1;

    invoke-direct {v12, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList$1;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v11, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mAddButton:Landroid/view/View;

    new-instance v12, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList$2;

    invoke-direct {v12, p0, v8}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList$2;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;I)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 157
    iget-object v11, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mAddButton:Landroid/view/View;

    new-instance v12, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList$3;

    invoke-direct {v12, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList$3;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 171
    iget-object v11, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    const v12, 0x7f0b02ca

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeleteButton:Landroid/view/View;

    .line 172
    iget-object v11, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    const v12, 0x7f0b02cb

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeleteIcon:Landroid/widget/ImageView;

    .line 173
    iget-object v11, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeleteButton:Landroid/view/View;

    new-instance v12, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList$4;

    invoke-direct {v12, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList$4;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v11, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeleteButton:Landroid/view/View;

    new-instance v12, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList$5;

    invoke-direct {v12, p0, v8}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList$5;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;I)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 190
    iget-object v11, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeleteButton:Landroid/view/View;

    new-instance v12, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList$6;

    invoke-direct {v12, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList$6;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 204
    iget-object v11, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v11

    const/16 v12, 0x10

    const/16 v13, 0x10

    invoke-virtual {v11, v12, v13}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    goto/16 :goto_0

    .end local v4           #inflater:Landroid/view/LayoutInflater;
    .end local v8           #screenWidth:I
    :cond_2
    move v8, v2

    .line 131
    goto/16 :goto_2

    .line 207
    .end local v2           #height:I
    .end local v10           #width:I
    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 388
    packed-switch p2, :pswitch_data_0

    .line 418
    .end local p1
    :goto_0
    return-void

    .restart local p1
    :pswitch_0
    move-object v7, p1

    .line 390
    check-cast v7, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v7}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->getMac()Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, mac:Ljava/lang/String;
    check-cast p1, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;

    .end local p1
    invoke-virtual {p1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->getName()Ljava/lang/String;

    move-result-object v4

    .line 392
    .local v4, name:Ljava/lang/String;
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v6

    .line 394
    .local v6, whiteList:Landroid/net/wifi/WifiApWhiteList;
    invoke-virtual {v6, v2, v4}, Landroid/net/wifi/WifiApWhiteList;->addWhiteList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    packed-switch v7, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 396
    :pswitch_2
    new-instance v1, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;

    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v7, v2, v4, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;)V

    .line 397
    .local v1, device:Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 398
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->reloadWhiteList()V

    .line 399
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->updateList()V

    goto :goto_0

    .line 402
    .end local v1           #device:Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;
    :pswitch_3
    const/4 v7, 0x3

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    goto :goto_0

    .line 405
    :pswitch_4
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "#ff"

    const-string v9, "#"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, color:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0902d0

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<font color="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ">"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "</font>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v2, v9, v10

    const/4 v10, 0x2

    invoke-virtual {v6, v2}, Landroid/net/wifi/WifiApWhiteList;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 409
    .local v3, msgAdd:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 410
    .local v5, toastAdd:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 388
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch

    .line 394
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 239
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v0, :cond_0

    .line 240
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->updateOptionsMenuIcon(Z)V

    .line 241
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_2

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->updateEmptyView(Z)V

    .line 242
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 243
    return-void

    :cond_1
    move v0, v2

    .line 240
    goto :goto_0

    :cond_2
    move v1, v2

    .line 241
    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v0, 0x7f070073

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->addPreferencesFromResource(I)V

    .line 94
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "dialogId"

    .prologue
    const/4 v3, 0x0

    .line 288
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 289
    new-instance v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    move-object v4, v3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 329
    :goto_0
    return-object v0

    .line 291
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 292
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 293
    .local v6, deleteDeviceDialog:Landroid/app/AlertDialog$Builder;
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mCurrentSelected:Landroid/preference/Preference;

    check-cast v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;->getMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0902c7

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090034

    new-instance v2, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList$8;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList$8;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090125

    new-instance v2, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList$7;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList$7;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 310
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 312
    .end local v6           #deleteDeviceDialog:Landroid/app/AlertDialog$Builder;
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 313
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 314
    .local v7, macWarnDialog:Landroid/app/AlertDialog$Builder;
    const v0, 0x1040014

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0902ea

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0902e9

    new-instance v2, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList$10;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList$10;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList$9;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList$9;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 327
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .end local v7           #macWarnDialog:Landroid/app/AlertDialog$Builder;
    :cond_2
    move-object v0, v3

    .line 329
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 223
    const/4 v0, 0x1

    const v1, 0x7f0902e2

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    .line 224
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f020093

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 225
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 227
    const/4 v0, 0x2

    const v1, 0x7f0902c1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mAddlistMenuItem:Landroid/view/MenuItem;

    .line 228
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mAddlistMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f020076

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 229
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mAddlistMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 231
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f020092

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 233
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 235
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 270
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 283
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 272
    :pswitch_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->startDeletePreference()V

    goto :goto_0

    .line 275
    :pswitch_1
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    .line 276
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    goto :goto_0

    .line 278
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0902fa

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 279
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 270
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "screen"
    .parameter "preference"

    .prologue
    .line 381
    iput-object p2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mCurrentSelected:Landroid/preference/Preference;

    .line 382
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    .line 383
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 343
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 344
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->updateList()V

    .line 345
    return-void
.end method

.method public updateList()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 348
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 349
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v1

    .line 350
    .local v1, whiteList:Landroid/net/wifi/WifiApWhiteList;
    invoke-virtual {v1}, Landroid/net/wifi/WifiApWhiteList;->getIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 351
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    if-eqz v0, :cond_0

    .line 352
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 353
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    .line 355
    .local v2, wl:Landroid/net/wifi/WifiApWhiteList$WhiteList;
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    new-instance v4, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;

    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDevice;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 358
    .end local v2           #wl:Landroid/net/wifi/WifiApWhiteList$WhiteList;
    :cond_0
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 359
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    if-eqz v3, :cond_1

    .line 360
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    const v4, 0x7f020093

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 361
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 363
    :cond_1
    iget-boolean v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v3, :cond_2

    .line 364
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 365
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeleteIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 377
    :cond_2
    :goto_1
    return-void

    .line 368
    :cond_3
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    if-eqz v3, :cond_4

    .line 369
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    const v4, 0x7f020092

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 370
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 372
    :cond_4
    iget-boolean v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v3, :cond_2

    .line 373
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 374
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeleteIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1
.end method
