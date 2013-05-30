.class Lcom/android/OriginalSettings/Settings$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# instance fields
.field private final isDeviceDefault:Z

.field private final isTablet:Z

.field private mAuthHelper:Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

.field private final mBluetoothEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;

.field private mContext:Landroid/content/Context;

.field private final mDormantModeEnabler:Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;

.field private final mHeaderItemLayoutResID:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mMotionEnabler:Lcom/android/OriginalSettings/motion/MotionEnabler;

.field private final mPowerSavingEnabler:Lcom/android/OriginalSettings/powersavingmode/PowerSavingEnabler;

.field private mTetheredData:I

.field private final mWifiApEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

.field private final mWifiEnabler:Lcom/android/OriginalSettings/wifi/WifiEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;)V
    .locals 6
    .parameter "context"
    .parameter
    .parameter "authenticatorHelper"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, objects:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 873
    invoke-direct {p0, p1, v4, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 819
    iput v4, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mTetheredData:I

    .line 874
    iput-object p1, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    .line 875
    iput-object p3, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mAuthHelper:Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

    .line 876
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 880
    new-instance v1, Lcom/android/OriginalSettings/wifi/WifiEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/OriginalSettings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    .line 893
    iput-object v2, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mWifiApEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    .line 895
    new-instance v1, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;

    .line 896
    new-instance v1, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mDormantModeEnabler:Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;

    .line 897
    new-instance v1, Lcom/android/OriginalSettings/powersavingmode/PowerSavingEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/OriginalSettings/powersavingmode/PowerSavingEnabler;

    .line 898
    new-instance v1, Lcom/android/OriginalSettings/motion/MotionEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/OriginalSettings/motion/MotionEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mMotionEnabler:Lcom/android/OriginalSettings/motion/MotionEnabler;

    .line 901
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    :goto_0
    invoke-static {v1}, Lcom/android/OriginalSettings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v1

    if-ne v1, v3, :cond_0

    move-object v1, p1

    .line 903
    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    iget-object v5, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;

    invoke-static {v1, v2, v5}, Lcom/android/OriginalSettings/guide/GuideFragment;->setEnablersForGuide(Landroid/app/Activity;Lcom/android/OriginalSettings/wifi/WifiEnabler;Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;)V

    .line 906
    :cond_0
    sget-object v1, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 907
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v1, 0xf5

    const v2, 0x10900bd

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mHeaderItemLayoutResID:I

    .line 908
    const/16 v1, 0x11d

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->isDeviceDefault:Z

    .line 910
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x258

    if-lt v1, v2, :cond_2

    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->isTablet:Z

    .line 911
    return-void

    .end local v0           #a:Landroid/content/res/TypedArray;
    :cond_1
    move-object v1, v2

    .line 901
    goto :goto_0

    .restart local v0       #a:Landroid/content/res/TypedArray;
    :cond_2
    move v1, v4

    .line 910
    goto :goto_1
.end method

.method static getHeaderType(Landroid/preference/PreferenceActivity$Header;)I
    .locals 5
    .parameter "header"

    .prologue
    const/4 v4, 0x0

    .line 831
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 832
    const/4 v0, 0x0

    .line 841
    :goto_0
    return v0

    .line 833
    :cond_0
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0376

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0379

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b037f

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0384

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {v4}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0397

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {v4}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0377

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0378

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 839
    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    .line 841
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 853
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 847
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 848
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 916
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 917
    .local v1, header:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v1}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v2

    .line 918
    .local v2, headerType:I
    const/4 v7, 0x0

    .line 920
    .local v7, view:Landroid/view/View;
    if-nez p2, :cond_6

    .line 921
    new-instance v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;

    const/4 v8, 0x0

    invoke-direct {v3, v8}, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/OriginalSettings/Settings$1;)V

    .line 922
    .local v3, holder:Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;
    packed-switch v2, :pswitch_data_0

    .line 969
    :goto_0
    invoke-virtual {v7, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 976
    :goto_1
    packed-switch v2, :pswitch_data_1

    .line 1054
    :goto_2
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f0b0378

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 1064
    :cond_0
    return-object v7

    .line 924
    :pswitch_0
    iget-boolean v8, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->isDeviceDefault:Z

    if-eqz v8, :cond_2

    iget-boolean v8, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->isTablet:Z

    if-eqz v8, :cond_2

    .line 925
    iget v8, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mHeaderItemLayoutResID:I

    const v9, 0x109011b

    if-ne v8, v9, :cond_1

    .line 926
    iget-object v8, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x1090118

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    :goto_3
    move-object v8, v7

    .line 932
    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    goto :goto_0

    .line 928
    :cond_1
    iget-object v8, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x1090119

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    goto :goto_3

    .line 930
    :cond_2
    new-instance v7, Landroid/widget/TextView;

    .end local v7           #view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    const v10, 0x1010208

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .restart local v7       #view:Landroid/view/View;
    goto :goto_3

    .line 936
    :pswitch_1
    iget-boolean v8, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->isDeviceDefault:Z

    if-eqz v8, :cond_4

    .line 937
    iget v8, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mHeaderItemLayoutResID:I

    const v9, 0x109011b

    if-ne v8, v9, :cond_3

    .line 938
    iget-object v8, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x109011d

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 942
    :goto_4
    const v8, 0x1020006

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 943
    const v8, 0x1020016

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 944
    const v8, 0x1020010

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 945
    const v8, 0x10203db

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Switch;

    iput-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    goto/16 :goto_0

    .line 940
    :cond_3
    iget-object v8, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x109011e

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    goto :goto_4

    .line 947
    :cond_4
    iget-object v8, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f0400aa

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 948
    const v8, 0x7f0b0035

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 949
    const v8, 0x1020016

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 951
    const v8, 0x1020010

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 953
    const v8, 0x7f0b01e2

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Switch;

    iput-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    goto/16 :goto_0

    .line 958
    :pswitch_2
    iget-boolean v8, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->isDeviceDefault:Z

    if-eqz v8, :cond_5

    .line 959
    iget-object v8, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v9, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mHeaderItemLayoutResID:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 962
    :goto_5
    const v8, 0x1020006

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 963
    const v8, 0x1020016

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 965
    const v8, 0x1020010

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 961
    :cond_5
    iget-object v8, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x10900bd

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    goto :goto_5

    .line 971
    .end local v3           #holder:Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;
    :cond_6
    move-object v7, p2

    .line 972
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;

    .restart local v3       #holder:Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;
    goto/16 :goto_1

    .line 978
    :pswitch_3
    iget-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 984
    :pswitch_4
    iget-boolean v8, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->isDeviceDefault:Z

    if-eqz v8, :cond_8

    .line 985
    iget v8, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mHeaderItemLayoutResID:I

    const v9, 0x109011b

    if-ne v8, v9, :cond_7

    .line 986
    iget-object v8, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x109011d

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 990
    :goto_6
    const v8, 0x1020006

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 991
    const v8, 0x1020016

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 992
    const v8, 0x1020010

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 993
    const v8, 0x10203db

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Switch;

    iput-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    .line 994
    invoke-virtual {v7, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1005
    :goto_7
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f0b0376

    cmp-long v8, v8, v10

    if-nez v8, :cond_9

    .line 1006
    iget-object v8, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    iget-object v9, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v8, v9}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 1029
    :goto_8
    :pswitch_5
    iget-object v8, v1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v8, :cond_f

    iget-object v8, v1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1031
    iget-object v8, v1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1033
    .local v0, accType:Ljava/lang/String;
    iget-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 1034
    .local v5, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f0019

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1036
    iget v8, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v8, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1037
    iget-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1038
    iget-object v8, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mAuthHelper:Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1039
    .local v4, icon:Landroid/graphics/drawable/Drawable;
    iget-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1043
    .end local v0           #accType:Ljava/lang/String;
    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    .end local v5           #lp:Landroid/view/ViewGroup$LayoutParams;
    :goto_9
    iget-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1044
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1045
    .local v6, summary:Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 1046
    iget-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1047
    iget-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 988
    .end local v6           #summary:Ljava/lang/CharSequence;
    :cond_7
    iget-object v8, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x109011e

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    goto/16 :goto_6

    .line 996
    :cond_8
    iget-object v8, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f0400aa

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 997
    const v8, 0x7f0b0035

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 998
    const v8, 0x1020016

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 999
    const v8, 0x1020010

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 1000
    const v8, 0x7f0b01e2

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Switch;

    iput-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    .line 1001
    invoke-virtual {v7, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 1007
    :cond_9
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f0b0377

    cmp-long v8, v8, v10

    if-nez v8, :cond_a

    .line 1010
    :cond_a
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f0b0378

    cmp-long v8, v8, v10

    if-nez v8, :cond_b

    .line 1016
    :cond_b
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f0b037f

    cmp-long v8, v8, v10

    if-nez v8, :cond_c

    .line 1017
    iget-object v8, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mDormantModeEnabler:Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;

    iget-object v9, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v8, v9}, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_8

    .line 1018
    :cond_c
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f0b0384

    cmp-long v8, v8, v10

    if-nez v8, :cond_d

    .line 1019
    iget-object v8, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/OriginalSettings/powersavingmode/PowerSavingEnabler;

    iget-object v9, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v8, v9}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_8

    .line 1020
    :cond_d
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f0b0397

    cmp-long v8, v8, v10

    if-nez v8, :cond_e

    .line 1021
    iget-object v8, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mMotionEnabler:Lcom/android/OriginalSettings/motion/MotionEnabler;

    iget-object v9, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v8, v9}, Lcom/android/OriginalSettings/motion/MotionEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_8

    .line 1023
    :cond_e
    iget-object v8, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;

    iget-object v9, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v8, v9}, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_8

    .line 1041
    :cond_f
    iget-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v9, v1, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 1049
    .restart local v6       #summary:Ljava/lang/CharSequence;
    :cond_10
    iget-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 922
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 976
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 863
    const/4 v0, 0x3

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 868
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 858
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->pause()V

    .line 1089
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mWifiApEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_0

    .line 1095
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->pause()V

    .line 1096
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/OriginalSettings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingEnabler;->pause()V

    .line 1097
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mDormantModeEnabler:Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->pause()V

    .line 1098
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mMotionEnabler:Lcom/android/OriginalSettings/motion/MotionEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/motion/MotionEnabler;->pause()V

    .line 1099
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->resume()V

    .line 1075
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mWifiApEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_0

    .line 1081
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->resume()V

    .line 1082
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mDormantModeEnabler:Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->resume()V

    .line 1083
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/OriginalSettings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingEnabler;->resume()V

    .line 1084
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mMotionEnabler:Lcom/android/OriginalSettings/motion/MotionEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/motion/MotionEnabler;->resume()V

    .line 1085
    return-void
.end method

.method public setEnablersForGuide(Lcom/android/OriginalSettings/Settings;)V
    .locals 2
    .parameter "settings"

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    iget-object v1, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;

    invoke-static {p1, v0, v1}, Lcom/android/OriginalSettings/guide/GuideFragment;->setEnablersForGuide(Landroid/app/Activity;Lcom/android/OriginalSettings/wifi/WifiEnabler;Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;)V

    .line 1119
    return-void
.end method

.method public setSoftapEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/4 v2, 0x1

    .line 1102
    if-eqz p1, :cond_0

    .line 1103
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mWifiApEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->secSetSoftapEnabled(Z)V

    .line 1108
    :goto_0
    return-void

    .line 1105
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mWifiApEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 1106
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mWifiApEnabler:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    goto :goto_0
.end method
