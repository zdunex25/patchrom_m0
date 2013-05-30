.class public Lcom/android/OriginalSettings/ApnSettings;
.super Lmiui/preference/BasePreferenceActivity;
.source "ApnSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/ApnSettings$4;,
        Lcom/android/OriginalSettings/ApnSettings$RestoreApnProcessHandler;,
        Lcom/android/OriginalSettings/ApnSettings$RestoreApnUiHandler;
    }
.end annotation


# static fields
.field private static final DEFAULTAPN_URI:Landroid/net/Uri;

.field private static final PREFERAPN_URI:Landroid/net/Uri;

.field private static mRestoreDefaultApnMode:Z


# instance fields
.field private hideApnList:[Ljava/lang/String;

.field private isSprHidden:Z

.field private isVzwEditable:Z

.field private mDelayHandler:Landroid/os/Handler;

.field private mDelayRunnable:Ljava/lang/Runnable;

.field private mMobileStateFilter:Landroid/content/IntentFilter;

.field private final mMobileStateReceiver:Landroid/content/BroadcastReceiver;

.field private mRestoreApnProcessHandler:Lcom/android/OriginalSettings/ApnSettings$RestoreApnProcessHandler;

.field private mRestoreApnUiHandler:Lcom/android/OriginalSettings/ApnSettings$RestoreApnUiHandler;

.field private mSelectedKey:Ljava/lang/String;

.field private final mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherStateFilter:Landroid/content/IntentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const-string v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/OriginalSettings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    .line 93
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/OriginalSettings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lmiui/preference/BasePreferenceActivity;-><init>()V

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/ApnSettings;->mDelayHandler:Landroid/os/Handler;

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/ApnSettings;->hideApnList:[Ljava/lang/String;

    .line 118
    new-instance v0, Lcom/android/OriginalSettings/ApnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/ApnSettings$1;-><init>(Lcom/android/OriginalSettings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    .line 160
    new-instance v0, Lcom/android/OriginalSettings/ApnSettings$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/ApnSettings$2;-><init>(Lcom/android/OriginalSettings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/ApnSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 603
    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-static {p0}, Lcom/android/OriginalSettings/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/OriginalSettings/ApnSettings;->mRestoreDefaultApnMode:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    sput-boolean p0, Lcom/android/OriginalSettings/ApnSettings;->mRestoreDefaultApnMode:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/ApnSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/OriginalSettings/ApnSettings;->fillList()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/ApnSettings;)Lcom/android/OriginalSettings/ApnSettings$RestoreApnUiHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/OriginalSettings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/OriginalSettings/ApnSettings$RestoreApnUiHandler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/OriginalSettings/ApnSettings;Lcom/android/OriginalSettings/ApnSettings$RestoreApnUiHandler;)Lcom/android/OriginalSettings/ApnSettings$RestoreApnUiHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/OriginalSettings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/OriginalSettings/ApnSettings$RestoreApnUiHandler;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/ApnSettings;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/OriginalSettings/ApnSettings;->mDelayRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/ApnSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/OriginalSettings/ApnSettings;->mDelayHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/OriginalSettings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private addNewApn()V
    .locals 3

    .prologue
    .line 481
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/OriginalSettings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "vzw"

    const-string v2, "editable"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 487
    :goto_0
    return-void

    .line 486
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private fillList()V
    .locals 19

    .prologue
    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numeric=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gsm.sim.operator.numeric"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 287
    .local v4, where:Ljava/lang/String;
    const-string v1, "LGT"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "3"

    const-string v2, "ril.simtype"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 288
    const-string v4, "numeric=\"45006\""

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and carrier_enabled = 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 292
    const-string v1, "ApnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fillList: where = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_FixApn4SpecificMccMnc"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 306
    const-string v1, "21405"

    const-string v2, "gsm.sim.operator.numeric"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 307
    const-string v4, "numeric=\"21405\""

    .line 312
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "name"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "apn"

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-string v6, "type"

    aput-object v6, v3, v5

    const/4 v5, 0x0

    const-string v6, "name ASC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 316
    .local v9, cursor:Landroid/database/Cursor;
    const-string v1, "DCM"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "name"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "apn"

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-string v6, "type"

    aput-object v6, v3, v5

    const/4 v5, 0x0

    const-string v6, "_id asc"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 322
    :cond_2
    const-string v1, "apn_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/ApnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceGroup;

    .line 323
    .local v8, apnList:Landroid/preference/PreferenceGroup;
    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 325
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v12, mmsApnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/ApnSettings;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/OriginalSettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 328
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 329
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 330
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 331
    .local v13, name:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 332
    .local v7, apn:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 333
    .local v11, key:Ljava/lang/String;
    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 335
    .local v18, type:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/OriginalSettings/ApnSettings;->isHideApn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 336
    const-string v1, "ApnSettings"

    const-string v2, "HideApnlist is not added"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 294
    .end local v7           #apn:Ljava/lang/String;
    .end local v8           #apnList:Landroid/preference/PreferenceGroup;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v11           #key:Ljava/lang/String;
    .end local v12           #mmsApnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    .end local v13           #name:Ljava/lang/String;
    .end local v18           #type:Ljava/lang/String;
    :cond_3
    const-string v1, "SKT"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    const-string v4, "numeric=\"45005\""

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and carrier_enabled = 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 299
    const-string v1, "ApnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fillList: where = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 309
    :cond_4
    const-string v4, "numeric=\"21407\""

    goto/16 :goto_1

    .line 343
    .restart local v7       #apn:Ljava/lang/String;
    .restart local v8       #apnList:Landroid/preference/PreferenceGroup;
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v11       #key:Ljava/lang/String;
    .restart local v12       #mmsApnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    .restart local v13       #name:Ljava/lang/String;
    .restart local v18       #type:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/OriginalSettings/ApnSettings;->isSprHidden:Z

    if-eqz v1, :cond_9

    .line 344
    new-instance v14, Lcom/android/OriginalSettings/ApnPreference;

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v1}, Lcom/android/OriginalSettings/ApnPreference;-><init>(Landroid/content/Context;I)V

    .line 351
    .local v14, pref:Lcom/android/OriginalSettings/ApnPreference;
    :goto_3
    invoke-virtual {v14, v11}, Lcom/android/OriginalSettings/ApnPreference;->setKey(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v14, v13}, Lcom/android/OriginalSettings/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 353
    invoke-virtual {v14, v7}, Lcom/android/OriginalSettings/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 354
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Lcom/android/OriginalSettings/ApnPreference;->setPersistent(Z)V

    .line 355
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/android/OriginalSettings/ApnPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 357
    const/16 v17, 0x1

    .line 358
    .local v17, selectable:Z
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 359
    .local v16, sales_code:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 360
    const-string v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 362
    :cond_6
    const-string v1, "VZW"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 363
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/OriginalSettings/ApnSettings;->isVzwEditable:Z

    if-eqz v1, :cond_b

    .line 364
    const/16 v17, 0x1

    .line 381
    :goto_4
    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/android/OriginalSettings/ApnPreference;->setSelectable(Z)V

    .line 382
    if-eqz v17, :cond_18

    .line 383
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/OriginalSettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/OriginalSettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 384
    invoke-virtual {v14}, Lcom/android/OriginalSettings/ApnPreference;->setChecked()V

    .line 386
    :cond_7
    const-string v1, "CHM"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 388
    if-eqz v18, :cond_17

    const-string v1, "cmdm"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "cmmm"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "cmmb"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "cmmail"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "cmpim"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "hipri"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 390
    :cond_8
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_2

    .line 345
    .end local v14           #pref:Lcom/android/OriginalSettings/ApnPreference;
    .end local v16           #sales_code:Ljava/lang/String;
    .end local v17           #selectable:Z
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/OriginalSettings/ApnSettings;->isVzwEditable:Z

    if-eqz v1, :cond_a

    .line 346
    new-instance v14, Lcom/android/OriginalSettings/ApnPreference;

    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v1}, Lcom/android/OriginalSettings/ApnPreference;-><init>(Landroid/content/Context;I)V

    .restart local v14       #pref:Lcom/android/OriginalSettings/ApnPreference;
    goto/16 :goto_3

    .line 348
    .end local v14           #pref:Lcom/android/OriginalSettings/ApnPreference;
    :cond_a
    new-instance v14, Lcom/android/OriginalSettings/ApnPreference;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/OriginalSettings/ApnPreference;-><init>(Landroid/content/Context;)V

    .restart local v14       #pref:Lcom/android/OriginalSettings/ApnPreference;
    goto/16 :goto_3

    .line 367
    .restart local v16       #sales_code:Ljava/lang/String;
    .restart local v17       #selectable:Z
    :cond_b
    if-eqz v18, :cond_c

    const-string v1, "default"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 368
    :cond_c
    const/16 v17, 0x1

    goto/16 :goto_4

    .line 370
    :cond_d
    const/16 v17, 0x0

    .line 371
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Lcom/android/OriginalSettings/ApnPreference;->setEnabled(Z)V

    goto/16 :goto_4

    .line 374
    :cond_e
    const-string v1, "CHM"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 375
    if-eqz v18, :cond_f

    const-string v1, "mms"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "wap"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    :cond_f
    const/16 v17, 0x1

    :goto_5
    goto/16 :goto_4

    :cond_10
    const/16 v17, 0x0

    goto :goto_5

    .line 376
    :cond_11
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_BlockToSelectDunApnType"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 377
    if-eqz v18, :cond_12

    const-string v1, "mms"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "dun"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    :cond_12
    const/16 v17, 0x1

    :goto_6
    goto/16 :goto_4

    :cond_13
    const/16 v17, 0x0

    goto :goto_6

    .line 379
    :cond_14
    if-eqz v18, :cond_15

    const-string v1, "mms"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    :cond_15
    const/16 v17, 0x1

    :goto_7
    goto/16 :goto_4

    :cond_16
    const/16 v17, 0x0

    goto :goto_7

    .line 394
    :cond_17
    invoke-virtual {v8, v14}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 407
    :goto_8
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_2

    .line 396
    :cond_18
    const-string v1, "CHM"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 398
    if-eqz v13, :cond_1a

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CMMMS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 400
    :cond_19
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_2

    .line 405
    :cond_1a
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 409
    .end local v7           #apn:Ljava/lang/String;
    .end local v11           #key:Ljava/lang/String;
    .end local v13           #name:Ljava/lang/String;
    .end local v14           #pref:Lcom/android/OriginalSettings/ApnPreference;
    .end local v16           #sales_code:Ljava/lang/String;
    .end local v17           #selectable:Z
    .end local v18           #type:Ljava/lang/String;
    :cond_1b
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 411
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/preference/Preference;

    .line 412
    .local v15, preference:Landroid/preference/Preference;
    invoke-virtual {v8, v15}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_9

    .line 414
    .end local v15           #preference:Landroid/preference/Preference;
    :cond_1c
    return-void
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 2
    .parameter

    .prologue
    .line 174
    const-string v0, "state"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_0

    .line 176
    const-class v1, Lcom/android/internal/telephony/Phone$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone$DataState;

    .line 178
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 547
    const/4 v7, 0x0

    .line 549
    .local v7, key:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/OriginalSettings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v8

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 551
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 552
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 553
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 555
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 556
    return-object v7
.end method

.method private isHideApn(Ljava/lang/String;)Z
    .locals 7
    .parameter "apn"

    .prologue
    .line 269
    const/4 v4, 0x0

    .line 270
    .local v4, ret:Z
    iget-object v6, p0, Lcom/android/OriginalSettings/ApnSettings;->hideApnList:[Ljava/lang/String;

    if-nez v6, :cond_0

    move v5, v4

    .line 278
    .end local v4           #ret:Z
    .local v5, ret:I
    :goto_0
    return v5

    .line 272
    .end local v5           #ret:I
    .restart local v4       #ret:Z
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/ApnSettings;->hideApnList:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 273
    .local v2, item:Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 274
    const/4 v4, 0x1

    .end local v2           #item:Ljava/lang/String;
    :cond_1
    move v5, v4

    .line 278
    .restart local v5       #ret:I
    goto :goto_0

    .line 272
    .end local v5           #ret:I
    .restart local v2       #item:Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private restoreDefaultApn()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 560
    const/16 v1, 0x3e9

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/ApnSettings;->showDialog(I)V

    .line 561
    sput-boolean v4, Lcom/android/OriginalSettings/ApnSettings;->mRestoreDefaultApnMode:Z

    .line 563
    iget-object v1, p0, Lcom/android/OriginalSettings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/OriginalSettings/ApnSettings$RestoreApnUiHandler;

    if-nez v1, :cond_0

    .line 564
    new-instance v1, Lcom/android/OriginalSettings/ApnSettings$RestoreApnUiHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/OriginalSettings/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/OriginalSettings/ApnSettings;Lcom/android/OriginalSettings/ApnSettings$1;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/OriginalSettings/ApnSettings$RestoreApnUiHandler;

    .line 567
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/OriginalSettings/ApnSettings$RestoreApnProcessHandler;

    if-nez v1, :cond_1

    .line 568
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Restore default APN Handler: Process Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 570
    .local v0, restoreDefaultApnThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 571
    new-instance v1, Lcom/android/OriginalSettings/ApnSettings$RestoreApnProcessHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/OriginalSettings/ApnSettings$RestoreApnUiHandler;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/OriginalSettings/ApnSettings$RestoreApnProcessHandler;-><init>(Lcom/android/OriginalSettings/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/OriginalSettings/ApnSettings$RestoreApnProcessHandler;

    .line 575
    .end local v0           #restoreDefaultApnThread:Landroid/os/HandlerThread;
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/OriginalSettings/ApnSettings$RestoreApnProcessHandler;

    invoke-virtual {v1, v4}, Lcom/android/OriginalSettings/ApnSettings$RestoreApnProcessHandler;->sendEmptyMessage(I)Z

    .line 577
    return v4
.end method

.method private setSelectedApnKey(Ljava/lang/String;)V
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 538
    iput-object p1, p0, Lcom/android/OriginalSettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 539
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 541
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 542
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "apn_id"

    iget-object v3, p0, Lcom/android/OriginalSettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    sget-object v2, Lcom/android/OriginalSettings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 544
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/OriginalSettings/ApnSettings;->mDelayRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 264
    :cond_0
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 184
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 186
    const v4, 0x7f07000c

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/ApnSettings;->addPreferencesFromResource(I)V

    .line 187
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 189
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/OriginalSettings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    .line 194
    iget-object v4, p0, Lcom/android/OriginalSettings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.SIM_PROFILE_UPDATE_DONE"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    iget-object v4, p0, Lcom/android/OriginalSettings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.ACTION_DATA_SET_ATTACH_APN_DONE"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    iget-object v4, p0, Lcom/android/OriginalSettings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.CSC_CONNECTION_RESET_DONE"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/OriginalSettings/ApnSettings;->mTetherStateFilter:Landroid/content/IntentFilter;

    .line 202
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnSettings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 203
    .local v3, tempIntent:Landroid/content/Intent;
    const-string v4, "keyString"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, strName:Ljava/lang/String;
    const-string v4, "vzw"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, strNameVzw:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 206
    iput-boolean v7, p0, Lcom/android/OriginalSettings/ApnSettings;->isSprHidden:Z

    .line 209
    :goto_0
    if-nez v2, :cond_2

    .line 210
    iput-boolean v7, p0, Lcom/android/OriginalSettings/ApnSettings;->isVzwEditable:Z

    .line 215
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Setting_HideApnList"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 216
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Setting_HideApnList"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, hideApnString:Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/ApnSettings;->hideApnList:[Ljava/lang/String;

    .line 218
    iget-object v4, p0, Lcom/android/OriginalSettings/ApnSettings;->hideApnList:[Ljava/lang/String;

    if-nez v4, :cond_0

    .line 219
    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/OriginalSettings/ApnSettings;->hideApnList:[Ljava/lang/String;

    .line 220
    iget-object v4, p0, Lcom/android/OriginalSettings/ApnSettings;->hideApnList:[Ljava/lang/String;

    aput-object v0, v4, v7

    .line 224
    .end local v0           #hideApnString:Ljava/lang/String;
    :cond_0
    return-void

    .line 208
    :cond_1
    iput-boolean v6, p0, Lcom/android/OriginalSettings/ApnSettings;->isSprHidden:Z

    goto :goto_0

    .line 212
    :cond_2
    iput-boolean v6, p0, Lcom/android/OriginalSettings/ApnSettings;->isVzwEditable:Z

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 640
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_0

    .line 641
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 642
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0904f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 643
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 646
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const v6, 0x7f0904ec

    const v3, 0x7f02012c

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 418
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 419
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, sales_code:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    const-string v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 423
    :cond_0
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/OriginalSettings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 424
    iget-boolean v1, p0, Lcom/android/OriginalSettings/ApnSettings;->isVzwEditable:Z

    if-eqz v1, :cond_1

    .line 425
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v5, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 442
    :cond_1
    :goto_0
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0904f5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02012d

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 445
    return v5

    .line 429
    :cond_2
    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 430
    const-string v1, "3"

    const-string v2, "ril.simtype"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 431
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v5, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 436
    :cond_3
    iget-boolean v1, p0, Lcom/android/OriginalSettings/ApnSettings;->isSprHidden:Z

    if-nez v1, :cond_1

    .line 437
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v5, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 468
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 477
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 470
    :pswitch_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/ApnSettings;->addNewApn()V

    goto :goto_0

    .line 474
    :pswitch_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/ApnSettings;->restoreDefaultApn()Z

    goto :goto_0

    .line 468
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 247
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->onPause()V

    .line 249
    iget-object v0, p0, Lcom/android/OriginalSettings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/ApnSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 250
    iget-object v0, p0, Lcom/android/OriginalSettings/ApnSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/ApnSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 252
    iget-object v0, p0, Lcom/android/OriginalSettings/ApnSettings;->mDelayRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/OriginalSettings/ApnSettings;->mDelayHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/OriginalSettings/ApnSettings;->mDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/ApnSettings;->mDelayRunnable:Ljava/lang/Runnable;

    .line 256
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 507
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange(): Preference - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 511
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 534
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 500
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 501
    .local v0, pos:I
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, v0

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 502
    .local v1, url:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 503
    const/4 v2, 0x1

    return v2
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 651
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 652
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 654
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 456
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 228
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->onResume()V

    .line 230
    iget-object v0, p0, Lcom/android/OriginalSettings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/OriginalSettings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/ApnSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 231
    iget-object v0, p0, Lcom/android/OriginalSettings/ApnSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/OriginalSettings/ApnSettings;->mTetherStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/ApnSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 233
    sget-boolean v0, Lcom/android/OriginalSettings/ApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v0, :cond_0

    .line 234
    invoke-direct {p0}, Lcom/android/OriginalSettings/ApnSettings;->fillList()V

    .line 243
    :goto_0
    return-void

    .line 236
    :cond_0
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/ApnSettings;->showDialog(I)V

    goto :goto_0
.end method
