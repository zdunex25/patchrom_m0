.class public Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "DormantmodeSettings.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static DIALOG_CURRENT_TIMEPICKER:I


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mAlarmandTimePref:Landroid/preference/CheckBoxPreference;

.field private mAllowedContactsPref:Landroid/preference/ListPreference;

.field private mAllowedListPref:Landroid/preference/Preference;

.field private mAlwaysPref:Landroid/preference/CheckBoxPreference;

.field private mContext:Landroid/content/Context;

.field private mDormantModeEnabler:Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;

.field private final mDormantModeObserver:Landroid/database/ContentObserver;

.field private mEndhour:I

.field private mEndmin:I

.field private mFilter:Landroid/content/IntentFilter;

.field private mHelpPref:Landroid/preference/Preference;

.field private mIncomingCallPref:Landroid/preference/CheckBoxPreference;

.field private mLedIndicatorPref:Landroid/preference/CheckBoxPreference;

.field private mNotificationsPref:Landroid/preference/CheckBoxPreference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSetTimPref:Landroid/preference/PreferenceCategory;

.field private mSetTimeDialogPref:Landroid/preference/Preference;

.field private mStarthour:I

.field private mStartmin:I

.field private mTimeFromBtn:Landroid/widget/Button;

.field private mTimePickerDlg:Landroid/app/Dialog;

.field private mTimeToBtn:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    sput v0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->DIALOG_CURRENT_TIMEPICKER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 93
    new-instance v0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings$1;-><init>(Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mDormantModeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private TimeFormat(II)Ljava/lang/StringBuilder;
    .locals 7
    .parameter "hour"
    .parameter "mine"

    .prologue
    const/16 v5, 0xc

    .line 453
    const-string v0, ""

    .line 455
    .local v0, mTimeAMPM:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 456
    if-ge p1, v5, :cond_2

    .line 457
    if-nez p1, :cond_0

    add-int/lit8 p1, p1, 0xc

    .line 458
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090d66

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 465
    :cond_1
    :goto_0
    new-instance v4, Ljava/text/DecimalFormat;

    const-string v5, "00"

    invoke-direct {v4, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v5, p1

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, mTimeHour:Ljava/lang/String;
    new-instance v4, Ljava/text/DecimalFormat;

    const-string v5, "00"

    invoke-direct {v4, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v5, p2

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    .line 468
    .local v2, mTimeMin:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 470
    .local v3, setTime:Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 471
    return-object v3

    .line 460
    .end local v1           #mTimeHour:Ljava/lang/String;
    .end local v2           #mTimeMin:Ljava/lang/String;
    .end local v3           #setTime:Ljava/lang/StringBuilder;
    :cond_2
    if-eq p1, v5, :cond_3

    add-int/lit8 p1, p1, -0xc

    .line 461
    :cond_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090d67

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mTimeFromBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mTimeFromBtn:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mStarthour:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mStartmin:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->setStartTime(II)V

    return-void
.end method

.method static synthetic access$402(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    sput p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->DIALOG_CURRENT_TIMEPICKER:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mTimeToBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mTimeToBtn:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mEndhour:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mEndmin:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->setEndTime(II)V

    return-void
.end method

.method private setAllowListsummery(Ljava/lang/String;)V
    .locals 6
    .parameter "value"

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0072

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 477
    .local v3, values:[Ljava/lang/String;
    const v2, 0x7f0a0071

    .line 478
    .local v2, summaryArrayResId:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0071

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 479
    .local v1, summaries:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 481
    aget-object v4, v3, v0

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 482
    iget-object v4, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 479
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 485
    :cond_1
    iget-object v4, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 486
    return-void
.end method

.method private setEndTime(II)V
    .locals 3
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dormant_end_hour"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 442
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dormant_end_min"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 444
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->TimeFormat(II)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 446
    .local v0, EndTime:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mTimeToBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 449
    return-void
.end method

.method private setStartTime(II)V
    .locals 3
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dormant_start_hour"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 432
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dormant_start_min"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 434
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->TimeFormat(II)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 436
    .local v0, StartTime:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mTimeFromBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 438
    return-void
.end method


# virtual methods
.method initDromantswitchBtn()V
    .locals 8

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 270
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 271
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 273
    instance-of v3, v0, Lmiui/preference/BasePreferenceActivity;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 274
    check-cast v2, Lmiui/preference/BasePreferenceActivity;

    .line 275
    .local v2, preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 277
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 278
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 280
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 285
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mActionBarLayout:Landroid/view/View;

    .line 287
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    :cond_0
    new-instance v3, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;

    iget-object v4, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v3, v0, v4}, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v3, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mDormantModeEnabler:Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;

    .line 289
    return-void
.end method

.method public initPref()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 174
    const-string v0, "dormant_mode_help"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mHelpPref:Landroid/preference/Preference;

    .line 176
    iget-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mHelpPref:Landroid/preference/Preference;

    const v3, 0x7f040051

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 177
    iget-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mHelpPref:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 179
    const-string v0, "disable_incoming_calls"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mIncomingCallPref:Landroid/preference/CheckBoxPreference;

    .line 180
    iget-object v3, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mIncomingCallPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "dormant_disable_incoming_calls"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 182
    const-string v0, "disable_notifications"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mNotificationsPref:Landroid/preference/CheckBoxPreference;

    .line 183
    iget-object v3, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mNotificationsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "dormant_disable_notifications"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 185
    const-string v0, "disable_alarm_and_timer"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mAlarmandTimePref:Landroid/preference/CheckBoxPreference;

    .line 186
    iget-object v3, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mAlarmandTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "dormant_disable_alarm_and_timer"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 188
    const-string v0, "disable_led_indicator"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mLedIndicatorPref:Landroid/preference/CheckBoxPreference;

    .line 189
    iget-object v3, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mLedIndicatorPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "dormant_disable_led_indicator"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 191
    const-string v0, "always"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    .line 192
    iget-object v3, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "dormant_always"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 194
    const-string v0, "allowed_contacts"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    .line 195
    iget-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dormant_allow_list"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 198
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dormant_allow_list"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->setAllowListsummery(Ljava/lang/String;)V

    .line 200
    const-string v0, "allowed_list"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mAllowedListPref:Landroid/preference/Preference;

    .line 201
    iget-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mAllowedListPref:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Custom"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 204
    const-string v0, "set_time_category"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mSetTimPref:Landroid/preference/PreferenceCategory;

    .line 206
    iget-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings$3;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings$3;-><init>(Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    .line 233
    iget-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_6

    :goto_5
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 234
    iget-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    const v1, 0x7f040054

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 235
    iget-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mSetTimPref:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 241
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 180
    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 183
    goto/16 :goto_1

    :cond_3
    move v0, v2

    .line 186
    goto/16 :goto_2

    :cond_4
    move v0, v2

    .line 189
    goto/16 :goto_3

    :cond_5
    move v0, v2

    .line 192
    goto/16 :goto_4

    :cond_6
    move v1, v2

    .line 233
    goto :goto_5
.end method

.method public isAllOptionDisabled()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 344
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dormant_disable_incoming_calls"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 345
    .local v1, incoming:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dormant_disable_notifications"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 346
    .local v3, notification:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dormant_disable_alarm_and_timer"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 347
    .local v0, alarm:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dormant_disable_led_indicator"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 349
    .local v2, indicator:I
    const-string v5, "DormantModeSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAllOptionDisabled()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    if-nez v1, :cond_0

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    .line 351
    const/4 v4, 0x1

    .line 353
    :cond_0
    return v4
.end method

.method loadDormantTime()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 292
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dormant_start_hour"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mStarthour:I

    .line 293
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dormant_end_hour"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mEndhour:I

    .line 294
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dormant_start_min"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mStartmin:I

    .line 295
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dormant_end_min"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mEndmin:I

    .line 296
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
    const v0, 0x7f070025

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->addPreferencesFromResource(I)V

    .line 108
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mContext:Landroid/content/Context;

    .line 109
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.settings.DORMANTMODE_ACTIVITY_LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mFilter:Landroid/content/IntentFilter;

    .line 110
    new-instance v0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings$2;-><init>(Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 119
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->initDromantswitchBtn()V

    .line 120
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->initPref()V

    .line 121
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->updateDormantmodepage()V

    .line 122
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "id"

    .prologue
    .line 359
    packed-switch p1, :pswitch_data_0

    .line 373
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    .line 377
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    return-object v0

    .line 361
    :pswitch_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 362
    .local v6, calendar:Ljava/util/Calendar;
    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v3, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mStarthour:I

    iget v4, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mStartmin:I

    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    goto :goto_0

    .line 367
    .end local v6           #calendar:Ljava/util/Calendar;
    :pswitch_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 368
    .restart local v6       #calendar:Ljava/util/Calendar;
    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v3, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mEndhour:I

    iget v4, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mEndmin:I

    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    goto :goto_0

    .line 359
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 142
    const-string v1, "DormantModeSettings"

    const-string v2, "onPause() "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 144
    iget-object v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 146
    iget-object v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dormant_switch_onoff"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 147
    .local v0, state:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->isAllOptionDisabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    if-ne v4, v0, :cond_0

    .line 150
    iget-object v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090d6b

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mDormantModeEnabler:Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->pause()V

    .line 156
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mDormantModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 157
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 409
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 410
    const-string v1, "allowed_contacts"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    check-cast p2, Ljava/lang/String;

    .line 413
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dormant_allow_list"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 414
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->setAllowListsummery(Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mAllowedListPref:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Custom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    :goto_0
    const-string v0, "Custom"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomList;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 421
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 422
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->startActivity(Landroid/content/Intent;)V

    .line 423
    const-string v0, "DormantModeSettings"

    const-string v1, "ALLOW_TYPE_CUSTOME"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 416
    :catch_0
    move-exception v0

    .line 417
    const-string v1, "DormantModeSettings"

    const-string v2, "could not set KEY_ALLOW_LIST"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 301
    iget-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mIncomingCallPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 302
    iget-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mIncomingCallPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 303
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dormant_disable_incoming_calls"

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 331
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->isAllOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mIncomingCallPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mNotificationsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mAlarmandTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mLedIndicatorPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 334
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f090d6b

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 339
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_2
    move v0, v2

    .line 303
    goto :goto_0

    .line 305
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mNotificationsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 306
    iget-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mNotificationsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 307
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dormant_disable_notifications"

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_3

    .line 309
    :cond_5
    iget-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mAlarmandTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 310
    iget-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mAlarmandTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 311
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dormant_disable_alarm_and_timer"

    if-eqz v0, :cond_6

    move v0, v1

    :goto_4
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_4

    .line 313
    :cond_7
    iget-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mLedIndicatorPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 314
    iget-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mLedIndicatorPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 315
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dormant_disable_led_indicator"

    if-eqz v0, :cond_8

    move v0, v1

    :goto_5
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_8
    move v0, v2

    goto :goto_5

    .line 317
    :cond_9
    iget-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 318
    iget-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 319
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dormant_always"

    if-eqz v0, :cond_a

    move v0, v1

    :goto_6
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 320
    iget-object v3, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    :goto_7
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 322
    const-string v0, "DormantModeSettings"

    const-string v3, "Broadcast intent : android.settings.DORMANTMODE_CHANGED"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.settings.DORMANTMODE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 324
    iget-object v3, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_a
    move v0, v2

    .line 319
    goto :goto_6

    :cond_b
    move v0, v2

    .line 320
    goto :goto_7

    .line 325
    :cond_c
    iget-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mAllowedListPref:Landroid/preference/Preference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomList;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 327
    const/high16 v3, 0x400

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 328
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 336
    :cond_d
    iget-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 126
    const-string v0, "DormantModeSettings"

    const-string v1, "onResume() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 128
    iget-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mDormantModeEnabler:Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/dormantmode/DormantModeEnabler;->resume()V

    .line 132
    iget-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 133
    iget-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dormant_switch_onoff"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mDormantModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 138
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 161
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onStop()V

    .line 162
    const-string v0, "DormantModeSettings"

    const-string v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 170
    :cond_1
    return-void
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 4
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    const/4 v3, 0x1

    .line 382
    sget v1, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->DIALOG_CURRENT_TIMEPICKER:I

    if-ne v1, v3, :cond_2

    .line 383
    iput p2, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mStarthour:I

    .line 384
    iput p3, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mStartmin:I

    .line 385
    invoke-direct {p0, p2, p3}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->setStartTime(II)V

    .line 391
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mStarthour:I

    iget v2, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mEndhour:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mStartmin:I

    iget v2, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mEndmin:I

    if-ne v1, v2, :cond_1

    .line 392
    iget v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mEndmin:I

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_3

    .line 393
    iget v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mEndhour:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x18

    iput v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mEndhour:I

    .line 394
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mEndmin:I

    .line 395
    iget v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mEndhour:I

    iget v2, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mEndmin:I

    invoke-direct {p0, v1, v2}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->setEndTime(II)V

    .line 400
    :goto_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090d60

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 402
    :cond_1
    const-string v1, "DormantModeSettings"

    const-string v2, "Broadcast intent : android.settings.DORMANTMODE_CHANGED"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DORMANTMODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 404
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 405
    return-void

    .line 386
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    sget v1, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->DIALOG_CURRENT_TIMEPICKER:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 387
    iput p2, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mEndhour:I

    .line 388
    iput p3, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mEndmin:I

    .line 389
    invoke-direct {p0, p2, p3}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->setEndTime(II)V

    goto :goto_0

    .line 397
    :cond_3
    iget v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mEndmin:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mEndmin:I

    .line 398
    iget v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mEndhour:I

    iget v2, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mEndmin:I

    invoke-direct {p0, v1, v2}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->setEndTime(II)V

    goto :goto_1
.end method

.method updateDormantmodepage()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 244
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dormant_switch_onoff"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 247
    .local v0, State:I
    if-nez v0, :cond_0

    .line 248
    iget-object v2, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mIncomingCallPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 249
    iget-object v2, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mNotificationsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 250
    iget-object v2, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mAlarmandTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 251
    iget-object v2, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mLedIndicatorPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 252
    iget-object v2, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 253
    iget-object v2, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 254
    iget-object v2, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 255
    iget-object v2, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mAllowedListPref:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 267
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v3, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 258
    iget-object v3, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mIncomingCallPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 259
    iget-object v3, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mNotificationsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 260
    iget-object v3, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mAlarmandTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 261
    iget-object v3, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mLedIndicatorPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 262
    iget-object v3, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 263
    iget-object v3, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 264
    iget-object v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 265
    iget-object v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mAllowedListPref:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Custom"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method
