.class public Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;
.super Lcom/android/OriginalSettings/BaseActivity;
.source "DateTimeSettingsSetupWizard.java"

# interfaces
.implements Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAutoDateTimeButton:Landroid/widget/CompoundButton;

.field private mDatePicker:Landroid/widget/DatePicker;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectedTimeZone:Ljava/util/TimeZone;

.field private mTimePicker:Landroid/widget/TimePicker;

.field private mTimeZoneAdapter:Landroid/widget/SimpleAdapter;

.field private mTimeZoneButton:Landroid/widget/Button;

.field private mTimeZonePopup:Landroid/widget/ListPopupWindow;

.field private mUsingXLargeLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/OriginalSettings/BaseActivity;-><init>()V

    .line 358
    new-instance v0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard$1;-><init>(Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->updateTimeAndDateDisplay()V

    return-void
.end method

.method private is24Hour()Z
    .locals 1

    .prologue
    .line 367
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isAutoDateTimeEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 330
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    .line 332
    :goto_0
    return v1

    .line 330
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private showTimezonePicker(I)V
    .locals 4
    .parameter "anchorViewId"

    .prologue
    .line 314
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 315
    .local v0, anchorView:Landroid/view/View;
    if-nez v0, :cond_0

    .line 316
    sget-object v1, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find zone picker anchor view "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :goto_0
    return-void

    .line 319
    :cond_0
    new-instance v1, Landroid/widget/ListPopupWindow;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    .line 320
    iget-object v1, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 321
    iget-object v1, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 322
    iget-object v1, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    iget-object v2, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimeZoneAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 323
    iget-object v1, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, p0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 324
    iget-object v1, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 325
    iget-object v1, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_0
.end method

.method private updateTimeAndDateDisplay()V
    .locals 5

    .prologue
    .line 347
    iget-boolean v1, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    if-nez v1, :cond_0

    .line 356
    :goto_0
    return-void

    .line 350
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 351
    .local v0, now:Ljava/util/Calendar;
    iget-object v1, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimeZoneButton:Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 352
    iget-object v1, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 354
    iget-object v1, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 355
    iget-object v1, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    goto :goto_0
.end method


# virtual methods
.method public initUiForXl()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 125
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    .line 126
    .local v5, tz:Ljava/util/TimeZone;
    iput-object v5, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mSelectedTimeZone:Ljava/util/TimeZone;

    .line 127
    const v6, 0x7f0b009e

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimeZoneButton:Landroid/widget/Button;

    .line 128
    iget-object v6, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimeZoneButton:Landroid/widget/Button;

    invoke-virtual {v5}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v6, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimeZoneButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 134
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "extra_initial_auto_datetime_value"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 135
    const-string v6, "extra_initial_auto_datetime_value"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 136
    .local v0, autoDateTimeEnabled:Z
    sget-object v6, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "initUiForXl(), has EXTRA_INITIAL_AUTO_DATETIME_VALUE and autoDateTimeEnabled : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :goto_0
    const v6, 0x7f0b00a0

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CompoundButton;

    iput-object v6, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    .line 143
    iget-object v6, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    invoke-virtual {v6, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 144
    iget-object v6, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    invoke-virtual {v6, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 146
    const v6, 0x7f0b00a4

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TimePicker;

    iput-object v6, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    .line 148
    iget-object v6, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    invoke-direct {p0}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->is24Hour()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 149
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 150
    .local v3, now:Ljava/util/Calendar;
    iget-object v6, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    const/16 v9, 0xb

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 151
    iget-object v6, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    const/16 v9, 0xc

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 153
    iget-object v9, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    if-nez v0, :cond_3

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/widget/TimePicker;->setEnabled(Z)V

    .line 154
    const v6, 0x7f0b00a2

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/DatePicker;

    iput-object v6, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    .line 155
    iget-object v9, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    if-nez v0, :cond_4

    move v6, v7

    :goto_2
    invoke-virtual {v9, v6}, Landroid/widget/DatePicker;->setEnabled(Z)V

    .line 156
    iget-object v6, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v6, v8}, Landroid/widget/DatePicker;->setCalendarViewShown(Z)V

    .line 159
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/OriginalSettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 160
    const v6, 0x7f0b009f

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 161
    .local v2, layout:Landroid/widget/LinearLayout;
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 162
    iget-object v6, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v6, v7}, Landroid/widget/TimePicker;->setEnabled(Z)V

    .line 163
    iget-object v6, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v6, v7}, Landroid/widget/DatePicker;->setEnabled(Z)V

    .line 164
    iget-object v6, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    invoke-virtual {v6, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 165
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "auto_time"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 166
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "auto_time_zone"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 167
    sget-object v6, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    const-string v7, "isWifiOnly is true, remove Automatic date and time layout and set AUTO_TIME and AUTO_TIME_ZONE to false"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .end local v2           #layout:Landroid/widget/LinearLayout;
    :cond_0
    const-string v6, "input_method"

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    iput-object v6, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 172
    const v6, 0x7f0b003d

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    const v6, 0x7f0b0040

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 174
    .local v4, skipButton:Landroid/widget/Button;
    if-eqz v4, :cond_1

    .line 175
    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    :cond_1
    return-void

    .line 138
    .end local v0           #autoDateTimeEnabled:Z
    .end local v3           #now:Ljava/util/Calendar;
    .end local v4           #skipButton:Landroid/widget/Button;
    :cond_2
    invoke-direct {p0}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->isAutoDateTimeEnabled()Z

    move-result v0

    .line 139
    .restart local v0       #autoDateTimeEnabled:Z
    sget-object v6, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "initUiForXl(), has not EXTRA_INITIAL_AUTO_DATETIME_VALUE and autoDateTimeEnabled : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .restart local v3       #now:Ljava/util/Calendar;
    :cond_3
    move v6, v8

    .line 153
    goto/16 :goto_1

    :cond_4
    move v6, v8

    .line 155
    goto/16 :goto_2
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 239
    move v0, p2

    .line 253
    .local v0, autoEnabled:Z
    iget-object v2, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    if-ne p1, v2, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "auto_time"

    if-eqz p2, :cond_2

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 257
    iget-object v5, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    if-nez v0, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/TimePicker;->setEnabled(Z)V

    .line 258
    iget-object v2, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    if-nez v0, :cond_4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/DatePicker;->setEnabled(Z)V

    .line 260
    :cond_0
    if-eqz v0, :cond_1

    .line 261
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 262
    .local v1, focusedView:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 263
    iget-object v2, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 264
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 267
    .end local v1           #focusedView:Landroid/view/View;
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 254
    goto :goto_0

    :cond_3
    move v2, v4

    .line 257
    goto :goto_1

    :cond_4
    move v3, v4

    .line 258
    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 200
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 235
    :goto_0
    return-void

    .line 202
    :sswitch_0
    const v2, 0x7f0b009e

    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->showTimezonePicker(I)V

    goto :goto_0

    .line 206
    :sswitch_1
    iget-object v2, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mSelectedTimeZone:Ljava/util/TimeZone;

    if-eqz v2, :cond_0

    .line 207
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 208
    .local v1, systemTimeZone:Ljava/util/TimeZone;
    iget-object v2, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mSelectedTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 209
    sget-object v2, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    const-string v3, "Another TimeZone is selected by a user. Changing system TimeZone."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 212
    .local v0, alarm:Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mSelectedTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 215
    .end local v0           #alarm:Landroid/app/AlarmManager;
    .end local v1           #systemTimeZone:Ljava/util/TimeZone;
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    if-eqz v2, :cond_1

    .line 216
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_time"

    iget-object v2, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 218
    iget-object v2, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    .line 219
    iget-object v2, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->clearFocus()V

    .line 220
    iget-object v2, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v3}, Landroid/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v4}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/OriginalSettings/DateTimeSettings;->setDate(III)V

    .line 223
    iget-object v2, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v2}, Landroid/widget/TimePicker;->clearFocus()V

    .line 224
    iget-object v2, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v2}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v3}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/OriginalSettings/DateTimeSettings;->setTime(II)V

    .line 230
    :cond_1
    :sswitch_2
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->setResult(I)V

    .line 231
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->finish()V

    goto/16 :goto_0

    .line 216
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 200
    :sswitch_data_0
    .sparse-switch
        0x7f0b003d -> :sswitch_1
        0x7f0b0040 -> :sswitch_2
        0x7f0b009e -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 84
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->requestWindowFeature(I)Z

    .line 85
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isDomesticModel()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_time"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 90
    :cond_0
    const v3, 0x7f040044

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->setContentView(I)V

    .line 94
    const v3, 0x7f0b009e

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    :goto_0
    iput-boolean v1, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    .line 95
    iget-boolean v1, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    if-eqz v1, :cond_3

    .line 96
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->initUiForXl()V

    .line 100
    :goto_1
    const v1, 0x7f040045

    invoke-static {p0, v2, v1}, Lcom/android/OriginalSettings/ZonePicker;->constructTimezoneAdapter(Landroid/content/Context;ZI)Landroid/widget/SimpleAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimeZoneAdapter:Landroid/widget/SimpleAdapter;

    .line 108
    iget-boolean v1, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    if-nez v1, :cond_1

    .line 109
    const v1, 0x7f0b009a

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 110
    .local v0, layoutRoot:Landroid/view/View;
    const/high16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 112
    .end local v0           #layoutRoot:Landroid/view/View;
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 94
    goto :goto_0

    .line 98
    :cond_3
    const v1, 0x7f0b003d

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/OriginalSettings/ZonePicker;->obtainTimeZoneFromItem(Ljava/lang/Object;)Ljava/util/TimeZone;

    move-result-object v3

    .line 272
    .local v3, tz:Ljava/util/TimeZone;
    iget-boolean v4, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    if-eqz v4, :cond_1

    .line 273
    iput-object v3, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mSelectedTimeZone:Ljava/util/TimeZone;

    .line 274
    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 275
    .local v1, now:Ljava/util/Calendar;
    iget-object v4, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimeZoneButton:Landroid/widget/Button;

    if-eqz v4, :cond_0

    .line 276
    iget-object v4, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimeZoneButton:Landroid/widget/Button;

    invoke-virtual {v3}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 279
    :cond_0
    iget-object v4, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x5

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 281
    iget-object v4, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 282
    iget-object v4, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    const/16 v5, 0xc

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 292
    .end local v1           #now:Ljava/util/Calendar;
    :goto_0
    iget-object v4, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 293
    return-void

    .line 286
    :cond_1
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 287
    .local v0, alarm:Landroid/app/AlarmManager;
    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f0b009c

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/OriginalSettings/DateTimeSettings;

    .line 290
    .local v2, settingsFragment:Lcom/android/OriginalSettings/DateTimeSettings;
    invoke-virtual {v2, p0}, Lcom/android/OriginalSettings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onPause()V

    .line 194
    iget-boolean v0, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 196
    :cond_0
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "caller"
    .parameter "pref"

    .prologue
    .line 309
    const v0, 0x7f0b009b

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->showTimezonePicker(I)V

    .line 310
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 181
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onResume()V

    .line 182
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 183
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    iget-boolean v1, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    if-nez v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 189
    :cond_0
    return-void
.end method
