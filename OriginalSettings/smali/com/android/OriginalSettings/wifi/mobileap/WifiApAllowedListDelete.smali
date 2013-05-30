.class public Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "WifiApAllowedListDelete.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mActionView:Landroid/view/View;

.field private mDeviceList:Landroid/preference/PreferenceScreen;

.field private mIsPrefClick:Z

.field private mIsTablet:Z

.field private mMenuItemOk:Landroid/view/MenuItem;

.field private mOkTextView:Landroid/widget/TextView;

.field private mRemoveButton:Landroid/view/View;

.field private mSelectAll:Landroid/preference/CheckBoxPreference;

.field private okDisableOpacity:F

.field private okEnableOpacity:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mIsPrefClick:Z

    .line 69
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->okEnableOpacity:F

    .line 70
    const v0, 0x3ecccccd

    iput v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->okDisableOpacity:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->removeSelectedList()V

    return-void
.end method

.method private isAllDeviceChecked()Z
    .locals 2

    .prologue
    .line 252
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 253
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    const/4 v1, 0x0

    .line 256
    :goto_1
    return v1

    .line 252
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private reloadWhiteList()V
    .locals 4

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 218
    .local v1, wm:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 219
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 220
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v0, Landroid/os/Message;->what:I

    .line 222
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 224
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private removeSelectedList()V
    .locals 4

    .prologue
    .line 206
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 207
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 208
    .local v1, pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 209
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v2

    .line 210
    .local v2, wl:Landroid/net/wifi/WifiApWhiteList;
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiApWhiteList;->removeWhiteList(Ljava/lang/String;)I

    .line 206
    .end local v2           #wl:Landroid/net/wifi/WifiApWhiteList;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    .end local v1           #pref:Landroid/preference/CheckBoxPreference;
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->reloadWhiteList()V

    .line 214
    return-void
.end method

.method private updateList()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 260
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 261
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 262
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemOk:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemOk:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 265
    :cond_0
    iget-boolean v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-nez v1, :cond_1

    .line 266
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mRemoveButton:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 267
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mOkTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 268
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mOkTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->okEnableOpacity:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 282
    :cond_1
    return-void

    .line 272
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemOk:Landroid/view/MenuItem;

    if-eqz v1, :cond_3

    .line 273
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemOk:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 275
    :cond_3
    iget-boolean v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-nez v1, :cond_4

    .line 276
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mRemoveButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 277
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mOkTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 278
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mOkTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->okDisableOpacity:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 260
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateOptionsMenuIcon(Z)V
    .locals 2
    .parameter "showIcon"

    .prologue
    const/4 v1, 0x0

    .line 182
    if-eqz p1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->setHasOptionsMenu(Z)V

    .line 189
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 187
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->setHasOptionsMenu(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/16 v12, 0x10

    const/4 v9, 0x1

    const/4 v13, -0x2

    const/4 v10, 0x0

    .line 80
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 83
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 85
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-static {v1}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    .line 87
    const-string v8, "WifiApSettings"

    const-string v11, "WifiApAllowedListDelete onActivityCreated"

    invoke-static {v8, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-boolean v8, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-nez v8, :cond_0

    .line 89
    const/16 v8, 0x8

    invoke-virtual {v0, v10, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 95
    :cond_0
    const-string v8, "device_list_category"

    invoke-virtual {p0, v8}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    .line 97
    iget-boolean v8, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-eqz v8, :cond_1

    .line 98
    invoke-virtual {p0, v9}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->setHasOptionsMenu(Z)V

    .line 130
    :goto_0
    new-instance v8, Landroid/preference/CheckBoxPreference;

    invoke-direct {v8, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mSelectAll:Landroid/preference/CheckBoxPreference;

    .line 131
    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mSelectAll:Landroid/preference/CheckBoxPreference;

    const v11, 0x7f0400cc

    invoke-virtual {v8, v11}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    .line 132
    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mSelectAll:Landroid/preference/CheckBoxPreference;

    const v11, 0x7f0907a0

    invoke-virtual {v8, v11}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 133
    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    iget-object v11, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 134
    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 136
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v6

    .line 137
    .local v6, whiteList:Landroid/net/wifi/WifiApWhiteList;
    invoke-virtual {v6}, Landroid/net/wifi/WifiApWhiteList;->getIterator()Ljava/util/Iterator;

    move-result-object v5

    .line 138
    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    if-eqz v5, :cond_2

    .line 139
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 140
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    .line 141
    .local v7, wl:Landroid/net/wifi/WifiApWhiteList$WhiteList;
    new-instance v3, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDeleteDevice;

    invoke-direct {v3, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDeleteDevice;-><init>(Landroid/content/Context;)V

    .line 142
    .local v3, dev:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v7}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {v7}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedDeleteDevice;->setSummary(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 146
    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 100
    .end local v3           #dev:Landroid/preference/CheckBoxPreference;
    .end local v5           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    .end local v6           #whiteList:Landroid/net/wifi/WifiApWhiteList;
    .end local v7           #wl:Landroid/net/wifi/WifiApWhiteList$WhiteList;
    :cond_1
    const-string v8, "layout_inflater"

    invoke-virtual {v1, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 101
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v8, 0x7f04010a

    const/4 v11, 0x0

    invoke-virtual {v4, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    .line 102
    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    const v11, 0x7f0b0339

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mRemoveButton:Landroid/view/View;

    .line 103
    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mRemoveButton:Landroid/view/View;

    const v11, 0x7f0b033a

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mOkTextView:Landroid/widget/TextView;

    .line 104
    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mOkTextView:Landroid/widget/TextView;

    const v11, 0x7f0902e2

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(I)V

    .line 105
    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mOkTextView:Landroid/widget/TextView;

    iget v11, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->okDisableOpacity:F

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setAlpha(F)V

    .line 106
    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mRemoveButton:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 107
    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mRemoveButton:Landroid/view/View;

    new-instance v11, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete$1;

    invoke-direct {v11, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete$1;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;)V

    invoke-virtual {v8, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    const v11, 0x7f0b0337

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 116
    .local v2, cancelButton:Landroid/view/View;
    new-instance v8, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete$2;

    invoke-direct {v8, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete$2;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    invoke-virtual {v0, v12, v12}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 124
    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    new-instance v11, Landroid/app/ActionBar$LayoutParams;

    const/16 v12, 0x15

    invoke-direct {v11, v13, v13, v12}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v8, v11}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto/16 :goto_0

    .line 149
    .end local v2           #cancelButton:Landroid/view/View;
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    .restart local v5       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    .restart local v6       #whiteList:Landroid/net/wifi/WifiApWhiteList;
    :cond_2
    iget-boolean v8, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-nez v8, :cond_3

    .line 150
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x2

    if-ne v8, v11, :cond_4

    move v8, v9

    :goto_2
    invoke-direct {p0, v8}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->updateOptionsMenuIcon(Z)V

    .line 152
    :cond_3
    return-void

    :cond_4
    move v8, v10

    .line 150
    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-nez v0, :cond_0

    .line 175
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->updateOptionsMenuIcon(Z)V

    .line 176
    :cond_0
    const-string v0, "WifiApSettings"

    const-string v1, "updateList due to onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->updateList()V

    .line 178
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 179
    return-void

    .line 175
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v0, 0x7f070073

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->addPreferencesFromResource(I)V

    .line 76
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 156
    const/4 v1, 0x1

    const v2, 0x7f090125

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02007d

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 160
    const/4 v1, 0x2

    const v2, 0x7f0902e2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemOk:Landroid/view/MenuItem;

    .line 161
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemOk:Landroid/view/MenuItem;

    const v2, 0x7f02007e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 162
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemOk:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 164
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemOk:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 170
    :cond_0
    return-void

    .line 164
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 193
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 202
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 195
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->finish()V

    goto :goto_0

    .line 198
    :pswitch_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->removeSelectedList()V

    .line 199
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->finish()V

    goto :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "checked"

    .prologue
    const/4 v4, 0x1

    .line 233
    iget-boolean v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mIsPrefClick:Z

    if-eqz v2, :cond_0

    .line 248
    .end local p1
    .end local p2
    :goto_0
    return v4

    .line 235
    .restart local p1
    .restart local p2
    :cond_0
    iput-boolean v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mIsPrefClick:Z

    .line 236
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 237
    .local v1, isChecked:Z
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mSelectAll:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_1

    .line 238
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 239
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    check-cast v2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 242
    .end local v0           #i:I
    :cond_1
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 243
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->isAllDeviceChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 245
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->mIsPrefClick:Z

    .line 247
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedListDelete;->updateList()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 228
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 229
    return-void
.end method
