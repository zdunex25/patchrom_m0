.class public Lcom/android/OriginalSettings/InformationTicker;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "InformationTicker.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mContentsType:Landroid/preference/ListPreference;

.field private mContentsTypeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mFacebookAutoRefresh:Landroid/preference/ListPreference;

.field private mOldValue:I

.field private mSlidingSpeed:Landroid/preference/ListPreference;

.field private mTickerSetting:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsTypeList:Ljava/util/ArrayList;

    return-void
.end method

.method private static AppServiceOff(I)I
    .locals 0
    .parameter "value"

    .prologue
    .line 520
    xor-int/lit8 p0, p0, 0x1

    .line 521
    return p0
.end method

.method private static AppServiceOn(I)I
    .locals 0
    .parameter "value"

    .prologue
    .line 515
    or-int/lit8 p0, p0, 0x1

    .line 516
    return p0
.end method

.method private sendAutoRefreshRate(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 562
    return-void
.end method

.method private sendContentsType(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 577
    return-void
.end method

.method private sendInfoTickerNotiToFacebook(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 605
    return-void
.end method

.method private updateFacebookState()V
    .locals 0

    .prologue
    .line 527
    return-void
.end method

.method private updateState()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 316
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 318
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v7, "contents_type"

    invoke-static {v1, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 319
    .local v0, contentsType:I
    iget-object v7, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    if-eqz v7, :cond_0

    .line 320
    iget-object v7, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 321
    iget-object v7, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 324
    :cond_0
    const-string v7, "sliding_speed"

    invoke-static {v1, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 325
    .local v3, slidingSpeed:I
    iget-object v7, p0, Lcom/android/OriginalSettings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 326
    iget-object v7, p0, Lcom/android/OriginalSettings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/OriginalSettings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 328
    const/4 v4, 0x0

    .line 329
    .local v4, summary:Ljava/lang/String;
    if-nez v0, :cond_5

    .line 330
    const v7, 0x7f0909b0

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/InformationTicker;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 345
    :goto_0
    iget-object v7, p0, Lcom/android/OriginalSettings/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 347
    invoke-direct {p0}, Lcom/android/OriginalSettings/InformationTicker;->updateFacebookState()V

    .line 349
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "information_ticker"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_7

    move v2, v5

    .line 350
    .local v2, saved_value:Z
    :goto_1
    iget-object v7, p0, Lcom/android/OriginalSettings/InformationTicker;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v7, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 352
    if-eqz v2, :cond_8

    .line 353
    iget-object v7, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    if-eqz v7, :cond_1

    .line 354
    iget-object v7, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v7, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 355
    :cond_1
    iget-object v7, p0, Lcom/android/OriginalSettings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v7, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 356
    iget-object v7, p0, Lcom/android/OriginalSettings/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    if-eqz v7, :cond_2

    .line 357
    iget-object v7, p0, Lcom/android/OriginalSettings/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 358
    :cond_2
    iget-object v7, p0, Lcom/android/OriginalSettings/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    if-eqz v7, :cond_3

    .line 359
    iget-object v7, p0, Lcom/android/OriginalSettings/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v7, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 370
    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    iget-object v7, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsTypeList:Ljava/util/ArrayList;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsTypeList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v5, :cond_4

    .line 371
    iget-object v5, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 372
    :cond_4
    return-void

    .line 331
    .end local v2           #saved_value:Z
    :cond_5
    if-ne v0, v5, :cond_6

    .line 332
    const v7, 0x7f0909b1

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/InformationTicker;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 341
    :cond_6
    const-string v7, "InformationTicker"

    const-string v8, "contentsType is out of bound"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    move v2, v6

    .line 349
    goto :goto_1

    .line 361
    .restart local v2       #saved_value:Z
    :cond_8
    iget-object v7, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    if-eqz v7, :cond_9

    .line 362
    iget-object v7, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v7, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 363
    :cond_9
    iget-object v7, p0, Lcom/android/OriginalSettings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v7, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 364
    iget-object v7, p0, Lcom/android/OriginalSettings/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    if-eqz v7, :cond_a

    .line 365
    iget-object v7, p0, Lcom/android/OriginalSettings/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 366
    :cond_a
    iget-object v7, p0, Lcom/android/OriginalSettings/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    if-eqz v7, :cond_3

    .line 367
    iget-object v7, p0, Lcom/android/OriginalSettings/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v7, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 156
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 157
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/OriginalSettings/InformationTicker;->mActionBarSwitch:Landroid/widget/Switch;

    .line 159
    instance-of v3, v0, Lmiui/preference/BasePreferenceActivity;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 160
    check-cast v2, Lmiui/preference/BasePreferenceActivity;

    .line 161
    .local v2, preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    invoke-virtual {v2}, Lmiui/preference/BasePreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lmiui/preference/BasePreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_1

    .line 162
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 164
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/OriginalSettings/InformationTicker;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 165
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 167
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/InformationTicker;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 171
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f0909a9

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 175
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    :cond_1
    iget-object v3, p0, Lcom/android/OriginalSettings/InformationTicker;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 176
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 177
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 11
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 181
    const-string v6, "InformationTicker"

    const-string v9, "onCheckChanged"

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 188
    .local v5, value:Ljava/lang/Boolean;
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isChinaModel()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 189
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 190
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "sn_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/OriginalSettings/InformationTicker;->AppServiceOn(I)I

    move-result v3

    .line 194
    .local v3, mAppServiceStatus:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "sn_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 196
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 197
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/OriginalSettings/InformationTicker;->AppServiceOn(I)I

    move-result v3

    .line 201
    :goto_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 203
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.sec.android.daemonapp.ap.sinanews.intent.action.SERVICE_ON_OFF"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    .local v1, intent_nw:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 205
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.sec.android.daemonapp.stockclock.action.CURRENT_STOCK_DATA"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    .local v2, intent_st:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 257
    :goto_2
    invoke-direct {p0, v5}, Lcom/android/OriginalSettings/InformationTicker;->sendInfoTickerNotiToFacebook(Ljava/lang/Boolean;)V

    .line 259
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "information_ticker"

    if-eqz p2, :cond_c

    move v6, v7

    :goto_3
    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 261
    if-eqz p2, :cond_d

    .line 262
    iget-object v6, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    if-eqz v6, :cond_0

    .line 263
    iget-object v6, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 264
    :cond_0
    iget-object v6, p0, Lcom/android/OriginalSettings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 265
    iget-object v6, p0, Lcom/android/OriginalSettings/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 266
    iget-object v6, p0, Lcom/android/OriginalSettings/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    if-eqz v6, :cond_1

    .line 267
    iget-object v6, p0, Lcom/android/OriginalSettings/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 276
    :cond_1
    :goto_4
    iget-object v6, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsTypeList:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    if-eqz p2, :cond_2

    iget-object v6, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsTypeList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v7, :cond_2

    .line 277
    iget-object v6, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 301
    :cond_2
    return-void

    .line 192
    .end local v1           #intent_nw:Landroid/content/Intent;
    .end local v2           #intent_st:Landroid/content/Intent;
    .end local v3           #mAppServiceStatus:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "sn_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/OriginalSettings/InformationTicker;->AppServiceOff(I)I

    move-result v3

    .restart local v3       #mAppServiceStatus:I
    goto/16 :goto_0

    .line 199
    :cond_4
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/OriginalSettings/InformationTicker;->AppServiceOff(I)I

    move-result v3

    goto/16 :goto_1

    .line 207
    .end local v3           #mAppServiceStatus:I
    :cond_5
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isDomesticModel()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 208
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 209
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "yonhap_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/OriginalSettings/InformationTicker;->AppServiceOn(I)I

    move-result v3

    .line 213
    .restart local v3       #mAppServiceStatus:I
    :goto_5
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "yonhap_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 215
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 216
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/OriginalSettings/InformationTicker;->AppServiceOn(I)I

    move-result v3

    .line 220
    :goto_6
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 222
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.sec.android.daemonapp.ap.yonhapnews.intent.action.SERVICE_ON_OFF"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .restart local v1       #intent_nw:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.daemonapp.ap.yonhapnews"

    const-string v9, "com.sec.android.daemonapp.ap.yonhapnews.DaemonReceiver"

    invoke-direct {v0, v6, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 226
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 228
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.sec.android.daemonapp.stockclock.action.CURRENT_STOCK_DATA"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    .restart local v2       #intent_st:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 211
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v1           #intent_nw:Landroid/content/Intent;
    .end local v2           #intent_st:Landroid/content/Intent;
    .end local v3           #mAppServiceStatus:I
    :cond_6
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "yonhap_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/OriginalSettings/InformationTicker;->AppServiceOff(I)I

    move-result v3

    .restart local v3       #mAppServiceStatus:I
    goto :goto_5

    .line 218
    :cond_7
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/OriginalSettings/InformationTicker;->AppServiceOff(I)I

    move-result v3

    goto :goto_6

    .line 231
    .end local v3           #mAppServiceStatus:I
    :cond_8
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 232
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "yh_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/OriginalSettings/InformationTicker;->AppServiceOn(I)I

    move-result v3

    .line 236
    .restart local v3       #mAppServiceStatus:I
    :goto_7
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "yh_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 238
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 239
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/OriginalSettings/InformationTicker;->AppServiceOn(I)I

    move-result v3

    .line 243
    :goto_8
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 245
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.sec.android.daemonapp.ap.yahoonews.intent.action.SERVICE_ON_OFF"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    .restart local v1       #intent_nw:Landroid/content/Intent;
    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 247
    .local v4, salesCode:Ljava/lang/String;
    const-string v6, "DCM"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 248
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.daemonapp.ap.camobile"

    const-string v9, "com.sec.android.daemonapp.ap.camobile.DaemonReceiver"

    invoke-direct {v0, v6, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .restart local v0       #component:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 252
    .end local v0           #component:Landroid/content/ComponentName;
    :cond_9
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 253
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.sec.android.daemonapp.stockclock.action.CURRENT_STOCK_DATA"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    .restart local v2       #intent_st:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 234
    .end local v1           #intent_nw:Landroid/content/Intent;
    .end local v2           #intent_st:Landroid/content/Intent;
    .end local v3           #mAppServiceStatus:I
    .end local v4           #salesCode:Ljava/lang/String;
    :cond_a
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "yh_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/OriginalSettings/InformationTicker;->AppServiceOff(I)I

    move-result v3

    .restart local v3       #mAppServiceStatus:I
    goto :goto_7

    .line 241
    :cond_b
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/OriginalSettings/InformationTicker;->AppServiceOff(I)I

    move-result v3

    goto :goto_8

    .restart local v1       #intent_nw:Landroid/content/Intent;
    .restart local v2       #intent_st:Landroid/content/Intent;
    :cond_c
    move v6, v8

    .line 259
    goto/16 :goto_3

    .line 269
    :cond_d
    iget-object v6, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    if-eqz v6, :cond_e

    .line 270
    iget-object v6, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 271
    :cond_e
    iget-object v6, p0, Lcom/android/OriginalSettings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 272
    iget-object v6, p0, Lcom/android/OriginalSettings/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 273
    iget-object v6, p0, Lcom/android/OriginalSettings/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    if-eqz v6, :cond_1

    .line 274
    iget-object v6, p0, Lcom/android/OriginalSettings/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_4
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const v6, 0x7f07002d

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/InformationTicker;->addPreferencesFromResource(I)V

    .line 102
    const-string v6, "contents_type"

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/InformationTicker;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    .line 103
    iget-object v6, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 105
    const-string v6, "CHM"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "DCM"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 112
    :cond_1
    const-string v6, "sliding_speed"

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/InformationTicker;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/OriginalSettings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    .line 113
    iget-object v6, p0, Lcom/android/OriginalSettings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 115
    const-string v6, "ticker_settings"

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/InformationTicker;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/OriginalSettings/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    .line 117
    const-string v6, "facebook_auto_refresh"

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/InformationTicker;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/OriginalSettings/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    .line 118
    iget-object v6, p0, Lcom/android/OriginalSettings/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 122
    const-string v6, "InformationTicker"

    const-string v7, "GLOBALCONFIG_SETTINGS_SUPPORT_INFORMATION_TICKER_FOR_FACEBOOK is not supported"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v6, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 124
    .local v1, entries:[Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 125
    .local v5, values:[Ljava/lang/CharSequence;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v3, revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v4, revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_3

    .line 129
    const-string v6, "Facebook"

    aget-object v7, v1, v2

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 131
    const-string v6, "InformationTicker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "This is : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v1, v2

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    aget-object v6, v1, v2

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    aget-object v6, v5, v2

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    :cond_3
    iget-object v7, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 138
    iget-object v7, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "contents_type"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 141
    .local v0, contentsType:I
    iget-object v6, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    if-eqz v6, :cond_4

    .line 142
    iget-object v6, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 143
    iget-object v6, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 146
    :cond_4
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/OriginalSettings/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 152
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 312
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 313
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v6, 0x1

    .line 428
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, key:Ljava/lang/String;
    const-string v3, "contents_type"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 432
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 433
    .local v2, value:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "contents_type"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/OriginalSettings/InformationTicker;->mOldValue:I

    .line 435
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "contents_type"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 436
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/InformationTicker;->sendContentsType(I)V

    .line 438
    iget-object v3, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 439
    const-string v3, "InformationTicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mContentsType.getEntry() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v3, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/OriginalSettings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 442
    const/4 v1, 0x0

    .line 443
    .local v1, summary:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 444
    const v3, 0x7f0909b0

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/InformationTicker;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 459
    :goto_0
    iget-object v3, p0, Lcom/android/OriginalSettings/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 460
    invoke-direct {p0}, Lcom/android/OriginalSettings/InformationTicker;->updateFacebookState()V

    .line 511
    .end local v1           #summary:Ljava/lang/String;
    .end local v2           #value:I
    :cond_0
    :goto_1
    return v6

    .line 445
    .restart local v1       #summary:Ljava/lang/String;
    .restart local v2       #value:I
    :cond_1
    if-ne v2, v6, :cond_2

    .line 446
    const v3, 0x7f0909b1

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/InformationTicker;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 455
    :cond_2
    const-string v3, "InformationTicker"

    const-string v4, "objValue is out of bound"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 497
    .end local v1           #summary:Ljava/lang/String;
    .end local v2           #value:I
    .restart local p2
    :cond_3
    const-string v3, "sliding_speed"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 498
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 499
    .restart local v2       #value:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sliding_speed"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 500
    iget-object v3, p0, Lcom/android/OriginalSettings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 501
    const-string v3, "InformationTicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSlidingSpeed.getEntry() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v3, p0, Lcom/android/OriginalSettings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/OriginalSettings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 503
    .end local v2           #value:I
    .restart local p2
    :cond_4
    const-string v3, "facebook_auto_refresh"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 504
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 505
    .restart local v2       #value:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "information_ticker_auto_refresh"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 506
    iget-object v3, p0, Lcom/android/OriginalSettings/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 507
    const-string v3, "InformationTicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFacebookAutoRefresh.getEntry() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v3, p0, Lcom/android/OriginalSettings/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/OriginalSettings/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 509
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/InformationTicker;->sendAutoRefreshRate(I)V

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 376
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ticker_settings"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 377
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "contents_type"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 378
    .local v1, contentType:I
    if-nez v1, :cond_4

    .line 382
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 383
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    const-string v6, "SETTING_MODE"

    const/4 v7, 0x2

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 386
    invoke-virtual {p0}, Lcom/android/OriginalSettings/InformationTicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 388
    .local v4, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 389
    .local v5, salesCode:Ljava/lang/String;
    const-string v6, "DCM"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 390
    const-string v6, "com.sec.android.daemonapp.ap.camobile"

    const/16 v7, 0x80

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 391
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.daemonapp.ap.camobile"

    const-string v7, "com.sec.android.daemonapp.ap.camobile.activity.SettingsNews"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    .local v0, cn:Landroid/content/ComponentName;
    :goto_0
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 403
    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/InformationTicker;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v1           #contentType:I
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    .end local v5           #salesCode:Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    return v6

    .line 392
    .restart local v1       #contentType:I
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v4       #pm:Landroid/content/pm/PackageManager;
    .restart local v5       #salesCode:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isChinaModel()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 393
    const-string v6, "com.sec.android.daemonapp.ap.sinanews"

    const/16 v7, 0x80

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 394
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.daemonapp.ap.sinanews"

    const-string v7, "com.sec.android.daemonapp.ap.sinanews.DaemonConfigure"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #cn:Landroid/content/ComponentName;
    goto :goto_0

    .line 395
    .end local v0           #cn:Landroid/content/ComponentName;
    :cond_2
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isDomesticModel()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 396
    const-string v6, "com.sec.android.daemonapp.ap.yonhapnews"

    const/16 v7, 0x80

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 397
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.daemonapp.ap.yonhapnews"

    const-string v7, "com.sec.android.daemonapp.ap.yonhapnews.activity.SettingsNews"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #cn:Landroid/content/ComponentName;
    goto :goto_0

    .line 399
    .end local v0           #cn:Landroid/content/ComponentName;
    :cond_3
    const-string v6, "com.sec.android.daemonapp.ap.yahoonews"

    const/16 v7, 0x80

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 400
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.daemonapp.ap.yahoonews"

    const-string v7, "com.sec.android.daemonapp.ap.yahoonews.activity.SettingsNews"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v0       #cn:Landroid/content/ComponentName;
    goto :goto_0

    .line 404
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v5           #salesCode:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 405
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "InformationTicker"

    const-string v7, "[NameNotFoundException] news daemon not installed !!!!!"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 407
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    :cond_4
    const/4 v6, 0x1

    if-ne v1, v6, :cond_7

    .line 409
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isChinaModel()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 410
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.sec.android.daemonapp.ap.sinastock.stockclock.MENUSETTING"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 416
    .restart local v3       #intent:Landroid/content/Intent;
    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/InformationTicker;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 411
    .end local v3           #intent:Landroid/content/Intent;
    :cond_5
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isDomesticModel()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 412
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.sec.android.daemonapp.ap.edaily.stockclock.MENUSETTING"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v3       #intent:Landroid/content/Intent;
    goto :goto_2

    .line 414
    .end local v3           #intent:Landroid/content/Intent;
    :cond_6
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.sec.android.daemonapp.ap.yahoostock.stockclock.MENUSETTING"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v3       #intent:Landroid/content/Intent;
    goto :goto_2

    .line 421
    .end local v3           #intent:Landroid/content/Intent;
    :cond_7
    const-string v6, "InformationTicker"

    const-string v7, "contentsType is out of bound"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 305
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 307
    invoke-direct {p0}, Lcom/android/OriginalSettings/InformationTicker;->updateState()V

    .line 308
    return-void
.end method
