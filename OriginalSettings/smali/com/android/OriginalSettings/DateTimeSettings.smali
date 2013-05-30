.class public Lcom/android/OriginalSettings/DateTimeSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "DateTimeSettings.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/DateTimeSettings$ConfirmAutoTimeAndTimezoneFragment;,
        Lcom/android/OriginalSettings/DateTimeSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static resources:Landroid/content/res/Resources;


# instance fields
.field private mAutoTimePref:Landroid/preference/CheckBoxPreference;

.field private mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

.field private mDateFormat:Landroid/preference/ListPreference;

.field private mDatePref:Landroid/preference/Preference;

.field private mDummyDate:Ljava/util/Calendar;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSettingsObserver:Lcom/android/OriginalSettings/DateTimeSettings$SettingsObserver;

.field private mTime24Pref:Landroid/preference/Preference;

.field private mTimePref:Landroid/preference/Preference;

.field private mTimeZone:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 662
    new-instance v0, Lcom/android/OriginalSettings/DateTimeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DateTimeSettings$1;-><init>(Lcom/android/OriginalSettings/DateTimeSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 677
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/DateTimeSettings;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/DateTimeSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/DateTimeSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/DateTimeSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/DateTimeSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->applyEDMDateTimeChangePolicy()V

    return-void
.end method

.method private applyEDMDateTimeChangePolicy()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 203
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 204
    .local v4, intent:Landroid/content/Intent;
    const-string v6, "firstRun"

    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 206
    .local v5, isFirstRun:Z
    if-ne v5, v7, :cond_0

    .line 250
    :goto_0
    return-void

    .line 210
    :cond_0
    const-string v6, "auto_time"

    invoke-direct {p0, v6}, Lcom/android/OriginalSettings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    .line 211
    .local v1, autoEnabled:Z
    const-string v6, "auto_time_zone"

    invoke-direct {p0, v6}, Lcom/android/OriginalSettings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v2

    .line 213
    .local v2, autoZoneEnabled:Z
    const-string v6, "enterprise_policy"

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/DateTimeSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->getDateTimePolicy()Landroid/app/enterprise/DateTimePolicy;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/DateTimePolicy;->isDateTimeChangeEnabled()Z

    move-result v3

    .line 216
    .local v3, dateTimeChangeEnabled:Z
    if-nez v3, :cond_1

    .line 217
    iget-object v6, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 218
    iget-object v6, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 219
    iget-object v6, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 220
    iget-object v6, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 221
    iget-object v6, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 225
    :cond_1
    const-string v6, "CTC"

    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 226
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 227
    .local v0, activePhone:I
    const/4 v6, 0x4

    if-lt v0, v6, :cond_2

    .line 228
    iget-object v6, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 229
    iget-object v6, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 230
    iget-object v6, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 231
    iget-object v6, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 232
    iget-object v6, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 235
    :cond_2
    iget-object v9, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v1, :cond_4

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 236
    iget-object v9, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v1, :cond_5

    move v6, v7

    :goto_2
    invoke-virtual {v9, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 237
    iget-object v6, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v2, :cond_3

    move v8, v7

    :cond_3
    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 238
    iget-object v6, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 239
    iget-object v6, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_4
    move v6, v8

    .line 235
    goto :goto_1

    :cond_5
    move v6, v8

    .line 236
    goto :goto_2

    .line 243
    .end local v0           #activePhone:I
    :cond_6
    iget-object v9, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v1, :cond_8

    move v6, v7

    :goto_3
    invoke-virtual {v9, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 244
    iget-object v9, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v1, :cond_9

    move v6, v7

    :goto_4
    invoke-virtual {v9, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 245
    iget-object v6, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v2, :cond_7

    move v8, v7

    :cond_7
    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 246
    iget-object v6, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 247
    iget-object v6, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_8
    move v6, v8

    .line 243
    goto :goto_3

    :cond_9
    move v6, v8

    .line 244
    goto :goto_4
.end method

.method private static formatOffset(I)[C
    .locals 10
    .parameter "off"

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    .line 626
    div-int/lit16 v3, p0, 0x3e8

    div-int/lit8 p0, v3, 0x3c

    .line 628
    const/16 v3, 0x9

    new-array v0, v3, [C

    .line 629
    .local v0, buf:[C
    const/4 v3, 0x0

    const/16 v4, 0x47

    aput-char v4, v0, v3

    .line 630
    const/4 v3, 0x1

    const/16 v4, 0x4d

    aput-char v4, v0, v3

    .line 631
    const/4 v3, 0x2

    const/16 v4, 0x54

    aput-char v4, v0, v3

    .line 633
    if-gez p0, :cond_0

    .line 634
    const/16 v3, 0x2d

    aput-char v3, v0, v5

    .line 635
    neg-int p0, p0

    .line 640
    :goto_0
    div-int/lit8 v1, p0, 0x3c

    .line 641
    .local v1, hours:I
    rem-int/lit8 v2, p0, 0x3c

    .line 643
    .local v2, minutes:I
    const/16 v3, 0x9

    if-le v1, v3, :cond_1

    .line 644
    div-int/lit8 v3, v1, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    aput-char v3, v0, v6

    .line 645
    rem-int/lit8 v3, v1, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    aput-char v3, v0, v7

    .line 647
    const/16 v3, 0x3a

    aput-char v3, v0, v8

    .line 649
    div-int/lit8 v3, v2, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    aput-char v3, v0, v9

    .line 650
    const/16 v3, 0x8

    rem-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 659
    :goto_1
    return-object v0

    .line 637
    .end local v1           #hours:I
    .end local v2           #minutes:I
    :cond_0
    const/16 v3, 0x2b

    aput-char v3, v0, v5

    goto :goto_0

    .line 652
    .restart local v1       #hours:I
    .restart local v2       #minutes:I
    :cond_1
    rem-int/lit8 v3, v1, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    aput-char v3, v0, v6

    .line 654
    const/16 v3, 0x3a

    aput-char v3, v0, v7

    .line 656
    div-int/lit8 v3, v2, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    aput-char v3, v0, v8

    .line 657
    rem-int/lit8 v3, v2, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    aput-char v3, v0, v9

    goto :goto_1
.end method

.method private getAutoState(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 530
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 532
    :cond_0
    :goto_0
    return v1

    .line 531
    :catch_0
    move-exception v0

    .line 532
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private getDateFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getTimeZoneName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "id"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 595
    :try_start_0
    sget-object v3, Lcom/android/OriginalSettings/DateTimeSettings;->resources:Landroid/content/res/Resources;

    const v4, 0x7f070060

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 596
    .local v2, xrp:Landroid/content/res/XmlResourceParser;
    :cond_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 597
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    .line 598
    :goto_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v6, :cond_2

    .line 599
    :goto_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v5, :cond_1

    .line 600
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 605
    :cond_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "timezone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 606
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 607
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object p0

    .line 616
    :cond_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 622
    .end local v2           #xrp:Landroid/content/res/XmlResourceParser;
    :goto_2
    return-object p0

    .line 603
    .restart local v2       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_3
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 617
    .end local v2           #xrp:Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v1

    .line 618
    .local v1, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "DateTimeSettings"

    const-string v4, "Ill-formatted timezones.xml file"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 611
    .end local v1           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_4
    :goto_3
    :try_start_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v6, :cond_5

    .line 612
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 619
    .end local v2           #xrp:Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v0

    .line 620
    .local v0, ioe:Ljava/io/IOException;
    const-string v3, "DateTimeSettings"

    const-string v4, "Unable to read timezones.xml file"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 614
    .end local v0           #ioe:Ljava/io/IOException;
    .restart local v2       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_5
    :try_start_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method static getTimeZoneText(Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 7
    .parameter "tz"

    .prologue
    .line 566
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v5}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    .line 567
    .local v2, daylight:Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 579
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 580
    .local v0, date:J
    invoke-virtual {p0, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    invoke-static {v5}, Lcom/android/OriginalSettings/DateTimeSettings;->formatOffset(I)[C

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    const/4 v5, 0x1

    invoke-virtual {p0, v2, v5}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v3

    .line 583
    .local v3, mTimeZoneDisplayName:Ljava/lang/String;
    const-string v5, "GMT"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 584
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/OriginalSettings/DateTimeSettings;->getTimeZoneName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    :goto_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 586
    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private initUI()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 152
    const-string v4, "auto_time"

    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v0

    .line 153
    .local v0, autoTimeEnabled:Z
    const-string v4, "auto_time_zone"

    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    .line 155
    .local v1, autoTimeZoneEnabled:Z
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 156
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "firstRun"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 158
    .local v3, isFirstRun:Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    .line 160
    const-string v4, "auto_time"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/CheckBoxPreference;

    .line 161
    iget-object v4, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 162
    const-string v4, "auto_zone"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    .line 165
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/OriginalSettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v3, :cond_2

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 167
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/OriginalSettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 169
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "auto_time_zone"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 171
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "auto_time"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 173
    const/4 v0, 0x0

    .line 175
    :cond_1
    const/4 v1, 0x0

    .line 177
    :cond_2
    iget-object v4, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 179
    const-string v4, "time"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    .line 180
    const-string v4, "24 hour"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    .line 181
    const-string v4, "timezone"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    .line 182
    const-string v4, "date"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    .line 183
    const-string v4, "date_format"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    .line 184
    if-eqz v3, :cond_3

    .line 185
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 186
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 189
    :cond_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->updateDateFormatEntries()V

    .line 192
    iget-object v7, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v0, :cond_4

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 193
    iget-object v7, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v0, :cond_5

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 194
    iget-object v4, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v1, :cond_6

    :goto_2
    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 197
    invoke-direct {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->applyEDMDateTimeChangePolicy()V

    .line 199
    return-void

    :cond_4
    move v4, v6

    .line 192
    goto :goto_0

    :cond_5
    move v4, v6

    .line 193
    goto :goto_1

    :cond_6
    move v5, v6

    .line 194
    goto :goto_2
.end method

.method private is24Hour()Z
    .locals 1

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private set24Hour(Z)V
    .locals 3
    .parameter "is24Hour"

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    if-eqz p1, :cond_0

    const-string v0, "24"

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 521
    return-void

    .line 518
    :cond_0
    const-string v0, "12"

    goto :goto_0
.end method

.method static setDate(III)V
    .locals 7
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 539
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 541
    .local v0, c:Ljava/util/Calendar;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, p0}, Ljava/util/Calendar;->set(II)V

    .line 542
    const/4 v3, 0x2

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 543
    const/4 v3, 0x5

    invoke-virtual {v0, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 544
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 546
    .local v1, when:J
    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 547
    invoke-static {v1, v2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 549
    :cond_0
    return-void
.end method

.method static setTime(II)V
    .locals 7
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    const/4 v4, 0x0

    .line 552
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 554
    .local v0, c:Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v0, v3, p0}, Ljava/util/Calendar;->set(II)V

    .line 555
    const/16 v3, 0xc

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 556
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 557
    const/16 v3, 0xe

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 558
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 560
    .local v1, when:J
    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 561
    invoke-static {v1, v2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 563
    :cond_0
    return-void
.end method

.method private timeUpdated()V
    .locals 2

    .prologue
    .line 507
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 508
    .local v0, timeChanged:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 509
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 504
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 134
    const v0, 0x7f07001c

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/DateTimeSettings;->addPreferencesFromResource(I)V

    .line 135
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/android/OriginalSettings/DateTimeSettings;->resources:Landroid/content/res/Resources;

    .line 136
    invoke-direct {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->initUI()V

    .line 139
    new-instance v0, Lcom/android/OriginalSettings/DateTimeSettings$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/OriginalSettings/DateTimeSettings$SettingsObserver;-><init>(Lcom/android/OriginalSettings/DateTimeSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mSettingsObserver:Lcom/android/OriginalSettings/DateTimeSettings$SettingsObserver;

    .line 141
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 11
    .parameter "id"

    .prologue
    const/16 v10, 0xb

    const/4 v9, 0x1

    .line 420
    packed-switch p1, :pswitch_data_0

    .line 451
    const/4 v0, 0x0

    .line 455
    .local v0, d:Landroid/app/Dialog;
    :goto_0
    return-object v0

    .line 422
    .end local v0           #d:Landroid/app/Dialog;
    :pswitch_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 423
    .local v6, calendar:Ljava/util/Calendar;
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v2, 0x2

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v2, 0x5

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 430
    .restart local v0       #d:Landroid/app/Dialog;
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 431
    .local v8, mTime:Landroid/text/format/Time;
    const/4 v1, 0x0

    const/16 v2, 0x7d0

    invoke-virtual {v8, v9, v1, v2}, Landroid/text/format/Time;->set(III)V

    move-object v7, v0

    .line 432
    check-cast v7, Landroid/app/DatePickerDialog;

    .line 433
    .local v7, mDatePickerDialog:Landroid/app/DatePickerDialog;
    invoke-virtual {v7}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 435
    const/16 v1, 0x1f

    const/16 v2, 0x7f4

    invoke-virtual {v8, v1, v10, v2}, Landroid/text/format/Time;->set(III)V

    .line 436
    invoke-virtual {v7}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/DatePicker;->setMaxDate(J)V

    goto :goto_0

    .line 441
    .end local v0           #d:Landroid/app/Dialog;
    .end local v6           #calendar:Ljava/util/Calendar;
    .end local v7           #mDatePickerDialog:Landroid/app/DatePickerDialog;
    .end local v8           #mTime:Landroid/text/format/Time;
    :pswitch_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 442
    .restart local v6       #calendar:Ljava/util/Calendar;
    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v2, 0xc

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 448
    .restart local v0       #d:Landroid/app/Dialog;
    goto :goto_0

    .line 420
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 2
    .parameter "view"
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 343
    const-string v1, "auto_time"

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    invoke-static {p2, p3, p4}, Lcom/android/OriginalSettings/DateTimeSettings;->setDate(III)V

    .line 349
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 350
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 146
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onDestroy()V

    .line 147
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mSettingsObserver:Lcom/android/OriginalSettings/DateTimeSettings$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 148
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 274
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 275
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 276
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 278
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 486
    iget-object v0, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 487
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/DateTimeSettings;->showDialog(I)V

    .line 497
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 488
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    .line 490
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/DateTimeSettings;->removeDialog(I)V

    .line 491
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/DateTimeSettings;->showDialog(I)V

    goto :goto_0

    .line 492
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/DateTimeSettings;->set24Hour(Z)V

    .line 494
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 495
    invoke-direct {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->timeUpdated()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 255
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 257
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 260
    iget-object v1, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->is24Hour()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 263
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 264
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 266
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 269
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 270
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 10
    .parameter "preferences"
    .parameter "key"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 376
    const-string v5, "date_format"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 377
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900ca

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, format:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "date_format"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 381
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 414
    .end local v2           #format:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    const-string v5, "auto_time"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 383
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 384
    .local v0, autoEnabled:Z
    const-string v5, "DateTimeSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onSharedPreferenceChanged KEY_AUTO_TIME preferences.getBoolean() return : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 387
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "firstRun"

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 388
    .local v4, isFirstRun:Z
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isDomesticModel()Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v4, :cond_2

    .line 390
    invoke-static {p0}, Lcom/android/OriginalSettings/DateTimeSettings$ConfirmAutoTimeAndTimezoneFragment;->show(Lcom/android/OriginalSettings/DateTimeSettings;)V

    .line 393
    :cond_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "auto_time"

    if-eqz v0, :cond_3

    move v5, v6

    :goto_1
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 395
    iget-object v8, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v0, :cond_4

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 396
    iget-object v5, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v0, :cond_5

    :goto_3
    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 399
    invoke-direct {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->applyEDMDateTimeChangePolicy()V

    goto :goto_0

    :cond_3
    move v5, v7

    .line 393
    goto :goto_1

    :cond_4
    move v5, v7

    .line 395
    goto :goto_2

    :cond_5
    move v6, v7

    .line 396
    goto :goto_3

    .line 401
    .end local v0           #autoEnabled:Z
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #isFirstRun:Z
    :cond_6
    const-string v5, "auto_zone"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 402
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 403
    .local v1, autoZoneEnabled:Z
    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isDomesticModel()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 404
    invoke-static {p0}, Lcom/android/OriginalSettings/DateTimeSettings$ConfirmAutoTimeAndTimezoneFragment;->show(Lcom/android/OriginalSettings/DateTimeSettings;)V

    .line 406
    :cond_7
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "auto_time_zone"

    if-eqz v1, :cond_8

    move v5, v6

    :goto_4
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 408
    iget-object v5, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v1, :cond_9

    :goto_5
    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 411
    invoke-direct {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->applyEDMDateTimeChangePolicy()V

    goto/16 :goto_0

    :cond_8
    move v5, v7

    .line 406
    goto :goto_4

    :cond_9
    move v6, v7

    .line 408
    goto :goto_5
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 2
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 358
    const-string v1, "auto_time"

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    invoke-static {p2, p3}, Lcom/android/OriginalSettings/DateTimeSettings;->setTime(II)V

    .line 364
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 365
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public updateDateFormatEntries()V
    .locals 14

    .prologue
    const v13, 0x7f0a0001

    const/4 v12, 0x1

    const/4 v5, 0x0

    .line 303
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 304
    .local v8, dateFormats:[Ljava/lang/String;
    array-length v1, v8

    new-array v10, v1, [Ljava/lang/String;

    .line 305
    .local v10, formattedDates:[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->getDateFormat()Ljava/lang/String;

    move-result-object v7

    .line 308
    .local v7, currentFormat:Ljava/lang/String;
    if-nez v7, :cond_0

    .line 309
    const-string v7, ""

    .line 312
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 313
    .local v0, dummydate_for_dateformat:Ljava/util/Calendar;
    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/16 v4, 0xd

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 315
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    array-length v1, v10

    if-ge v11, v1, :cond_2

    .line 321
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    aget-object v2, v8, v11

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 325
    .local v9, formatted:Ljava/lang/String;
    aget-object v1, v8, v11

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 326
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900cb

    new-array v3, v12, [Ljava/lang/Object;

    aput-object v9, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v11

    .line 315
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 329
    :cond_1
    aput-object v9, v10, v11

    goto :goto_1

    .line 334
    .end local v9           #formatted:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v1, v10}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 335
    iget-object v1, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v1, v13}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 336
    iget-object v1, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v1, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method public updateTimeAndDateDisplay(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 281
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v9

    .line 282
    .local v9, shortDateFormat:Ljava/text/DateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 283
    .local v8, now:Ljava/util/Calendar;
    iget-object v0, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 284
    iget-object v0, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/16 v4, 0xd

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 285
    iget-object v0, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    .line 286
    .local v7, dummyDate:Ljava/util/Date;
    iget-object v0, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Lcom/android/OriginalSettings/DateTimeSettings;->getTimeZoneText(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v0, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v0, p0, Lcom/android/OriginalSettings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v9, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 292
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->updateDateFormatEntries()V

    .line 296
    invoke-direct {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->applyEDMDateTimeChangePolicy()V

    .line 299
    return-void
.end method
