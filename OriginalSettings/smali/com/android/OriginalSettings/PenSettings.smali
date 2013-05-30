.class public Lcom/android/OriginalSettings/PenSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "PenSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final PEN_NOTIFICATION_SOUND0:Ljava/lang/String;

.field public static mPenNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mPenNotificationListValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final packagelist:[Ljava/lang/String;


# instance fields
.field private mDetachMode:Landroid/preference/CheckBoxPreference;

.field private mDetachNoti:Landroid/preference/Preference;

.field private mPenApplication:Landroid/preference/ListPreference;

.field private mPenApplicationEntries:Ljava/util/Vector;

.field private mPenApplicationValues:Ljava/util/Vector;

.field private mPenHovering:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 81
    const/4 v0, 0x0

    sput-object v0, Lcom/android/OriginalSettings/PenSettings;->PEN_NOTIFICATION_SOUND0:Ljava/lang/String;

    .line 87
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "None"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Shortcuts toolbar"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.sec.android.app.snotebook,com.infraware.filemanager.FmFileTreeListActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.android.calendar,com.android.calendar.AllInOneActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.acrodea.crayonphysics,com.acrodea.crayonphysics.crayonphysics"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "air.com.adobe.pstouch.oem1,air.com.adobe.pstouch.oem1.AppEntry"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.infraware.PolarisOfficeStdForTablet,com.infraware.splash.SplashActivity"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/OriginalSettings/PenSettings;->packagelist:[Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/OriginalSettings/PenSettings;->mPenNotificationList:Ljava/util/ArrayList;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/OriginalSettings/PenSettings;->mPenNotificationListValues:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 101
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/PenSettings;->mPenApplicationEntries:Ljava/util/Vector;

    .line 102
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/PenSettings;->mPenApplicationValues:Ljava/util/Vector;

    return-void
.end method

.method private makePenNotificationList()V
    .locals 3

    .prologue
    .line 213
    sget-object v0, Lcom/android/OriginalSettings/PenSettings;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 214
    sget-object v0, Lcom/android/OriginalSettings/PenSettings;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090be5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    sget-object v0, Lcom/android/OriginalSettings/PenSettings;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090be6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v0, Lcom/android/OriginalSettings/PenSettings;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090be7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v0, Lcom/android/OriginalSettings/PenSettings;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090be8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v0, Lcom/android/OriginalSettings/PenSettings;->mPenNotificationListValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 220
    sget-object v0, Lcom/android/OriginalSettings/PenSettings;->mPenNotificationListValues:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/OriginalSettings/PenSettings;->PEN_NOTIFICATION_SOUND0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v0, Lcom/android/OriginalSettings/PenSettings;->mPenNotificationListValues:Ljava/util/ArrayList;

    const-string v1, "/system/media/audio/ui/Pen_att_noti1.ogg,/system/media/audio/ui/Pen_det_noti1.ogg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v0, Lcom/android/OriginalSettings/PenSettings;->mPenNotificationListValues:Ljava/util/ArrayList;

    const-string v1, "/system/media/audio/ui/Pen_att_noti2.ogg,/system/media/audio/ui/Pen_det_noti2.ogg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object v0, Lcom/android/OriginalSettings/PenSettings;->mPenNotificationListValues:Ljava/util/ArrayList;

    const-string v1, "/system/media/audio/ui/Pen_att_noti3.ogg,/system/media/audio/ui/Pen_det_noti3.ogg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    return-void
.end method

.method private setPenApplicationEntriesAndValues()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 182
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v8, Lcom/android/OriginalSettings/PenSettings;->packagelist:[Ljava/lang/String;

    array-length v8, v8

    if-ge v2, v8, :cond_3

    .line 183
    sget-object v8, Lcom/android/OriginalSettings/PenSettings;->packagelist:[Ljava/lang/String;

    aget-object v6, v8, v2

    .line 184
    .local v6, packageInfo:Ljava/lang/String;
    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 186
    .local v3, index:I
    if-lez v3, :cond_0

    .line 187
    invoke-virtual {v6, v11, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 188
    .local v7, packageName:Ljava/lang/String;
    const-string v8, "PenSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "packageName: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 191
    .local v5, mPm:Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 192
    .local v4, info:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, appName:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/OriginalSettings/PenSettings;->mPenApplicationEntries:Ljava/util/Vector;

    invoke-virtual {v8, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v8, p0, Lcom/android/OriginalSettings/PenSettings;->mPenApplicationValues:Ljava/util/Vector;

    invoke-virtual {v8, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 182
    .end local v0           #appName:Ljava/lang/String;
    .end local v4           #info:Landroid/content/pm/ApplicationInfo;
    .end local v5           #mPm:Landroid/content/pm/PackageManager;
    .end local v7           #packageName:Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 195
    .restart local v7       #packageName:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 196
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "PenSettings"

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 202
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7           #packageName:Ljava/lang/String;
    :cond_0
    const-string v8, "None"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 203
    iget-object v8, p0, Lcom/android/OriginalSettings/PenSettings;->mPenApplicationEntries:Ljava/util/Vector;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090bed

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_1
    :goto_2
    iget-object v8, p0, Lcom/android/OriginalSettings/PenSettings;->mPenApplicationValues:Ljava/util/Vector;

    invoke-virtual {v8, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 204
    :cond_2
    const-string v8, "Shortcuts toolbar"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 205
    iget-object v8, p0, Lcom/android/OriginalSettings/PenSettings;->mPenApplicationEntries:Ljava/util/Vector;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090bee

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 210
    .end local v3           #index:I
    .end local v6           #packageInfo:Ljava/lang/String;
    :cond_3
    return-void

    .line 197
    .restart local v3       #index:I
    .restart local v6       #packageInfo:Ljava/lang/String;
    .restart local v7       #packageName:Ljava/lang/String;
    :catch_1
    move-exception v8

    goto :goto_1
.end method

.method private updateDetachNotiPref()V
    .locals 5

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_detachment_notification"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, currentNotiSound:Ljava/lang/String;
    sget-object v2, Lcom/android/OriginalSettings/PenSettings;->mPenNotificationListValues:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 229
    .local v1, index:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 230
    const/4 v1, 0x1

    .line 231
    const-string v2, "PenSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDetachNotiPref() - ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] doesn\'t exist in the list."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_0
    iget-object v3, p0, Lcom/android/OriginalSettings/PenSettings;->mDetachNoti:Landroid/preference/Preference;

    sget-object v2, Lcom/android/OriginalSettings/PenSettings;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 234
    const-string v2, "PenSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDetachNotiPref()- currentNotiSound: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-void
.end method

.method private updatePenApplicationPref()V
    .locals 6

    .prologue
    .line 238
    iget-object v4, p0, Lcom/android/OriginalSettings/PenSettings;->mPenApplication:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, currentValue:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/OriginalSettings/PenSettings;->mPenApplication:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, currentEntry:Ljava/lang/String;
    const/4 v3, 0x0

    .line 241
    .local v3, summary:Ljava/lang/String;
    const-string v4, "None"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 242
    move-object v3, v0

    .line 247
    :goto_0
    iget-object v4, p0, Lcom/android/OriginalSettings/PenSettings;->mPenApplication:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 248
    return-void

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090bec

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 245
    .local v2, s:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 112
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 115
    .local v0, resolver:Landroid/content/ContentResolver;
    const v1, 0x7f070040

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/PenSettings;->addPreferencesFromResource(I)V

    .line 117
    const-string v1, "pen_hovering"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/PenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/PenSettings;->mPenHovering:Landroid/preference/CheckBoxPreference;

    .line 118
    iget-object v4, p0, Lcom/android/OriginalSettings/PenSettings;->mPenHovering:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "pen_hovering"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 120
    const-string v1, "detach_noti"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/PenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/PenSettings;->mDetachNoti:Landroid/preference/Preference;

    .line 121
    invoke-direct {p0}, Lcom/android/OriginalSettings/PenSettings;->makePenNotificationList()V

    .line 123
    const-string v1, "detect_mode"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/PenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/PenSettings;->mDetachMode:Landroid/preference/CheckBoxPreference;

    .line 124
    iget-object v1, p0, Lcom/android/OriginalSettings/PenSettings;->mDetachMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 125
    iget-object v1, p0, Lcom/android/OriginalSettings/PenSettings;->mDetachMode:Landroid/preference/CheckBoxPreference;

    const-string v4, "pen_detect_mode_disabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 127
    invoke-direct {p0}, Lcom/android/OriginalSettings/PenSettings;->setPenApplicationEntriesAndValues()V

    .line 128
    const-string v1, "application"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/PenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/PenSettings;->mPenApplication:Landroid/preference/ListPreference;

    .line 129
    iget-object v2, p0, Lcom/android/OriginalSettings/PenSettings;->mPenApplication:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/OriginalSettings/PenSettings;->mPenApplicationEntries:Ljava/util/Vector;

    iget-object v3, p0, Lcom/android/OriginalSettings/PenSettings;->mPenApplicationEntries:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 130
    iget-object v2, p0, Lcom/android/OriginalSettings/PenSettings;->mPenApplication:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/OriginalSettings/PenSettings;->mPenApplicationValues:Ljava/util/Vector;

    iget-object v3, p0, Lcom/android/OriginalSettings/PenSettings;->mPenApplicationValues:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 131
    iget-object v1, p0, Lcom/android/OriginalSettings/PenSettings;->mPenApplication:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_applications"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 132
    invoke-direct {p0}, Lcom/android/OriginalSettings/PenSettings;->updatePenApplicationPref()V

    .line 133
    iget-object v1, p0, Lcom/android/OriginalSettings/PenSettings;->mPenApplication:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 134
    return-void

    :cond_0
    move v1, v3

    .line 118
    goto :goto_0

    :cond_1
    move v2, v3

    .line 125
    goto :goto_1
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 146
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 147
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 166
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, key:Ljava/lang/String;
    const-string v3, "application"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, p2

    .line 168
    check-cast v2, Ljava/lang/String;

    .line 170
    .local v2, value:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_applications"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 171
    iget-object v3, p0, Lcom/android/OriginalSettings/PenSettings;->mPenApplication:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 172
    invoke-direct {p0}, Lcom/android/OriginalSettings/PenSettings;->updatePenApplicationPref()V

    .line 173
    const-string v3, "PenSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pen application : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_applications"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .end local v2           #value:Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 174
    .restart local v2       #value:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 175
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-boolean v3, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "PenSettings"

    const-string v4, "could not persist pen application setting"

    invoke-static {v3, v4, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 151
    iget-object v3, p0, Lcom/android/OriginalSettings/PenSettings;->mPenHovering:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 152
    iget-object v3, p0, Lcom/android/OriginalSettings/PenSettings;->mPenHovering:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 153
    .local v0, value:Z
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering"

    if-eqz v0, :cond_1

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 154
    const-string v1, "PenSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pen_hovering : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pen_hovering"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .end local v0           #value:Z
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .restart local v0       #value:Z
    :cond_1
    move v1, v2

    .line 153
    goto :goto_0

    .line 155
    .end local v0           #value:Z
    :cond_2
    iget-object v3, p0, Lcom/android/OriginalSettings/PenSettings;->mDetachMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    iget-object v3, p0, Lcom/android/OriginalSettings/PenSettings;->mDetachMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 157
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pen_detect_mode_disabled"

    if-eqz v0, :cond_3

    move v3, v1

    :goto_2
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 158
    if-eqz v0, :cond_4

    :goto_3
    invoke-static {v1}, Lcom/sec/android/hardware/SecHardwareInterface;->setEPenSavingmode(I)Z

    .line 159
    const-string v1, "PenSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "battery saving : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pen_detect_mode_disabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move v3, v2

    .line 157
    goto :goto_2

    :cond_4
    move v1, v2

    .line 158
    goto :goto_3
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 139
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 141
    invoke-direct {p0}, Lcom/android/OriginalSettings/PenSettings;->updateDetachNotiPref()V

    .line 142
    return-void
.end method
