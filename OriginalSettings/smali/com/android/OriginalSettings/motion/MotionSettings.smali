.class public Lcom/android/OriginalSettings/motion/MotionSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "MotionSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mAdvancedSettings:Landroid/preference/Preference;

.field private mAirCallAccept:Landroid/preference/CheckBoxPreference;

.field private mAirClip:Landroid/preference/CheckBoxPreference;

.field private mAirGlanceView:Landroid/preference/CheckBoxPreference;

.field private mAirItemMove:Landroid/preference/CheckBoxPreference;

.field private mAirMotionCategory:Landroid/preference/PreferenceCategory;

.field private mAirMotionScroll:Landroid/preference/CheckBoxPreference;

.field private mAirMotionTutorial:Landroid/preference/Preference;

.field private mAirMotionTutorialCategory:Landroid/preference/PreferenceCategory;

.field private mAirNoteSwap:Landroid/preference/CheckBoxPreference;

.field private mAirWebNavigate:Landroid/preference/CheckBoxPreference;

.field private mDoubleTap:Landroid/preference/CheckBoxPreference;

.field private mGlanceView:Landroid/preference/CheckBoxPreference;

.field private mMotionTutorialCategory:Landroid/preference/PreferenceCategory;

.field private mMotionUnlockDialog:Landroid/app/AlertDialog;

.field private mPalmSwipe:Landroid/preference/CheckBoxPreference;

.field private mPalmTouch:Landroid/preference/CheckBoxPreference;

.field private mPan:Landroid/preference/CheckBoxPreference;

.field private mPanToBrowseImage:Landroid/preference/CheckBoxPreference;

.field private mPickUp:Landroid/preference/CheckBoxPreference;

.field private mPickUpToCallOut:Landroid/preference/CheckBoxPreference;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSensitivitySettings:Landroid/preference/Preference;

.field private mShake:Landroid/preference/CheckBoxPreference;

.field private mSurfaceTutorialCategory:Landroid/preference/PreferenceCategory;

.field private mTapAndTwist:Landroid/preference/CheckBoxPreference;

.field private mTilt:Landroid/preference/CheckBoxPreference;

.field private mTiltToScrollList:Landroid/preference/CheckBoxPreference;

.field private mTurnOver:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/motion/MotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/motion/MotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/motion/MotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/motion/MotionSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/motion/MotionSettings;->broadcastMotionChanged(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/motion/MotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/motion/MotionSettings;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private broadcastMotionChanged(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 482
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 483
    .local v0, motion_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 484
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 485
    return-void
.end method

.method private sendGlanceViewCheck(Z)V
    .locals 4
    .parameter "value"

    .prologue
    .line 488
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.GlanceViewChanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 489
    .local v0, i:Landroid/content/Intent;
    const-string v1, "GlanceViewState"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 490
    const-string v1, "MotionsSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GlanceViewState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 492
    return-void
.end method

.method private showMotionUnlockDialog(I)V
    .locals 4
    .parameter "message_res_id"

    .prologue
    const/4 v3, 0x0

    .line 455
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 457
    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    .line 460
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090a20

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0905b8

    new-instance v2, Lcom/android/OriginalSettings/motion/MotionSettings$1;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/motion/MotionSettings$1;-><init>(Lcom/android/OriginalSettings/motion/MotionSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090125

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    .line 474
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/OriginalSettings/motion/MotionSettings$2;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/motion/MotionSettings$2;-><init>(Lcom/android/OriginalSettings/motion/MotionSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 479
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 327
    if-nez p2, :cond_6

    .line 328
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 329
    .local v1, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    const/4 v2, 0x0

    .line 330
    .local v2, motion_unlock:Z
    const/4 v0, 0x0

    .line 331
    .local v0, camera_short_cut:Z
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v5

    if-nez v5, :cond_0

    .line 332
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 333
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_motion_tilt_to_unlock"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    .line 334
    const/4 v2, 0x1

    .line 338
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "motion_unlock_camera_short_cut"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    .line 339
    const/4 v0, 0x1

    .line 341
    :cond_1
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 342
    const v3, 0x7f090a70

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/motion/MotionSettings;->showMotionUnlockDialog(I)V

    .line 356
    .end local v0           #camera_short_cut:Z
    .end local v1           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    .end local v2           #motion_unlock:Z
    :goto_0
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mGlanceView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 357
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTilt:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 358
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTiltToScrollList:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 359
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPan:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 360
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPanToBrowseImage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 361
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mShake:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 362
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mDoubleTap:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 363
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPickUp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 364
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPickUpToCallOut:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 365
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTurnOver:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 366
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPalmSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 367
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 368
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTapAndTwist:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 369
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mSensitivitySettings:Landroid/preference/Preference;

    invoke-virtual {v3, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 382
    return-void

    .line 343
    .restart local v0       #camera_short_cut:Z
    .restart local v1       #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    .restart local v2       #motion_unlock:Z
    :cond_2
    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    .line 344
    const v3, 0x7f090a6f

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/motion/MotionSettings;->showMotionUnlockDialog(I)V

    goto :goto_0

    .line 345
    :cond_3
    if-eqz v2, :cond_4

    if-nez v0, :cond_4

    .line 346
    const v3, 0x7f090a6e

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/motion/MotionSettings;->showMotionUnlockDialog(I)V

    goto :goto_0

    .line 348
    :cond_4
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "motion_engine"

    if-eqz p2, :cond_5

    :goto_1
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 349
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/motion/MotionSettings;->broadcastMotionChanged(Z)V

    goto :goto_0

    :cond_5
    move v3, v4

    .line 348
    goto :goto_1

    .line 352
    .end local v0           #camera_short_cut:Z
    .end local v1           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    .end local v2           #motion_unlock:Z
    :cond_6
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "motion_engine"

    if-eqz p2, :cond_7

    :goto_2
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 353
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/motion/MotionSettings;->broadcastMotionChanged(Z)V

    goto :goto_0

    :cond_7
    move v3, v4

    .line 352
    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/16 v7, 0x10

    const/4 v8, -0x2

    const/4 v6, 0x0

    .line 110
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 112
    const v4, 0x7f070039

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/motion/MotionSettings;->addPreferencesFromResource(I)V

    .line 114
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mActivity:Landroid/app/Activity;

    .line 115
    new-instance v4, Landroid/widget/Switch;

    iget-object v5, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 116
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mActivity:Landroid/app/Activity;

    instance-of v4, v4, Lmiui/preference/BasePreferenceActivity;

    if-eqz v4, :cond_0

    .line 117
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 119
    .local v1, padding:I
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v6, v6, v1, v6}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 120
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 122
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x15

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 126
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mActionBarLayout:Landroid/view/View;

    .line 129
    .end local v1           #padding:I
    :cond_0
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 133
    const-string v4, "glance_view"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mGlanceView:Landroid/preference/CheckBoxPreference;

    .line 134
    const-string v4, "tilt"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTilt:Landroid/preference/CheckBoxPreference;

    .line 135
    const-string v4, "tilt_to_scroll_list"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTiltToScrollList:Landroid/preference/CheckBoxPreference;

    .line 136
    const-string v4, "pan"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPan:Landroid/preference/CheckBoxPreference;

    .line 137
    const-string v4, "pan_to_browse_image"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPanToBrowseImage:Landroid/preference/CheckBoxPreference;

    .line 138
    const-string v4, "shake"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mShake:Landroid/preference/CheckBoxPreference;

    .line 139
    const-string v4, "double_tap"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mDoubleTap:Landroid/preference/CheckBoxPreference;

    .line 140
    const-string v4, "pick_up"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPickUp:Landroid/preference/CheckBoxPreference;

    .line 141
    const-string v4, "pick_up_to_call_out"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPickUpToCallOut:Landroid/preference/CheckBoxPreference;

    .line 142
    const-string v4, "turn_over"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTurnOver:Landroid/preference/CheckBoxPreference;

    .line 143
    const-string v4, "palm_swipe"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPalmSwipe:Landroid/preference/CheckBoxPreference;

    .line 144
    const-string v4, "palm_touch"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    .line 145
    const-string v4, "tap_and_twist"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTapAndTwist:Landroid/preference/CheckBoxPreference;

    .line 146
    const-string v4, "category_motion_tutorial"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mMotionTutorialCategory:Landroid/preference/PreferenceCategory;

    .line 147
    const-string v4, "category_surface_tutorial"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mSurfaceTutorialCategory:Landroid/preference/PreferenceCategory;

    .line 148
    const-string v4, "sensitivity_settings"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mSensitivitySettings:Landroid/preference/Preference;

    .line 149
    const-string v4, "glance_view_advanced_settings"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mAdvancedSettings:Landroid/preference/Preference;

    .line 152
    const-string v4, "category_air_motion"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mAirMotionCategory:Landroid/preference/PreferenceCategory;

    .line 153
    const-string v4, "air_motion_glance_view"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mAirGlanceView:Landroid/preference/CheckBoxPreference;

    .line 154
    const-string v4, "air_motion_web_navigate"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mAirWebNavigate:Landroid/preference/CheckBoxPreference;

    .line 155
    const-string v4, "air_motion_note_swap"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mAirNoteSwap:Landroid/preference/CheckBoxPreference;

    .line 156
    const-string v4, "air_motion_scroll"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mAirMotionScroll:Landroid/preference/CheckBoxPreference;

    .line 157
    const-string v4, "air_motion_item_move"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mAirItemMove:Landroid/preference/CheckBoxPreference;

    .line 158
    const-string v4, "air_motion_clip"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mAirClip:Landroid/preference/CheckBoxPreference;

    .line 159
    const-string v4, "air_call_accept"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mAirCallAccept:Landroid/preference/CheckBoxPreference;

    .line 160
    const-string v4, "category_air_motion_tutorial"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mAirMotionTutorialCategory:Landroid/preference/PreferenceCategory;

    .line 161
    const-string v4, "learn_about_air_motion"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mAirMotionTutorial:Landroid/preference/Preference;

    .line 163
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 165
    .local v3, ps:Landroid/preference/PreferenceScreen;
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    .line 171
    .local v0, isTablet:Z
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTiltToScrollList:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 179
    if-eqz v0, :cond_1

    .line 180
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mShake:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 182
    :cond_1
    if-eqz v0, :cond_2

    .line 183
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mDoubleTap:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 185
    :cond_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/OriginalSettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 186
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPickUp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 188
    :cond_3
    if-eqz v0, :cond_4

    .line 189
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPickUpToCallOut:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 191
    :cond_4
    if-eqz v0, :cond_5

    .line 192
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTurnOver:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 194
    :cond_5
    if-eqz v0, :cond_6

    .line 195
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPalmSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 197
    :cond_6
    if-eqz v0, :cond_7

    .line 198
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 201
    :cond_7
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTapAndTwist:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 211
    if-eqz v0, :cond_8

    .line 212
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mSurfaceTutorialCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 213
    const-string v4, "category_surface"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 214
    .local v2, pc:Landroid/preference/PreferenceCategory;
    if-eqz v2, :cond_8

    .line 215
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 220
    .end local v2           #pc:Landroid/preference/PreferenceCategory;
    :cond_8
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mAirMotionCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 221
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mAirGlanceView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 222
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mAirWebNavigate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 223
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mAirNoteSwap:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 224
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mAirMotionScroll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 225
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mAirItemMove:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 226
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mAirClip:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 227
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mAirCallAccept:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 228
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mAirMotionTutorialCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 229
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mAirMotionTutorial:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 236
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mMotionTutorialCategory:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mAdvancedSettings:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 237
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mGlanceView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 240
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 386
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mGlanceView:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_1

    .line 387
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mGlanceView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 388
    .local v0, value:Z
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_glance_view"

    iget-object v5, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mGlanceView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 389
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/motion/MotionSettings;->sendGlanceViewCheck(Z)V

    .line 450
    .end local v0           #value:Z
    :goto_0
    return v2

    .line 391
    :cond_1
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTilt:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_3

    .line 392
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "motion_zooming"

    iget-object v5, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTilt:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 394
    :cond_3
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTiltToScrollList:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_5

    .line 395
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "motion_tilt_to_list_scrolling"

    iget-object v5, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTiltToScrollList:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    move v1, v2

    :cond_4
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 397
    :cond_5
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPan:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_7

    .line 398
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "motion_panning"

    iget-object v5, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPan:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_6

    move v1, v2

    :cond_6
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 400
    :cond_7
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPanToBrowseImage:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_9

    .line 401
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "motion_pan_to_browse_image"

    iget-object v5, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPanToBrowseImage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_8

    move v1, v2

    :cond_8
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 403
    :cond_9
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mShake:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_b

    .line 404
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "motion_shake"

    iget-object v5, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mShake:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_a

    move v1, v2

    :cond_a
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 406
    :cond_b
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mDoubleTap:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_d

    .line 407
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "motion_double_tap"

    iget-object v5, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mDoubleTap:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_c

    move v1, v2

    :cond_c
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 409
    :cond_d
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPickUp:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_f

    .line 410
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "motion_pick_up"

    iget-object v5, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPickUp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_e

    move v1, v2

    :cond_e
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 412
    :cond_f
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPickUpToCallOut:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_11

    .line 413
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "motion_pick_up_to_call_out"

    iget-object v5, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPickUpToCallOut:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_10

    move v1, v2

    :cond_10
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 415
    :cond_11
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTurnOver:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_13

    .line 416
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "motion_overturn"

    iget-object v5, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTurnOver:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_12

    move v1, v2

    :cond_12
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 418
    :cond_13
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPalmSwipe:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_15

    .line 419
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "surface_palm_swipe"

    iget-object v5, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPalmSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_14

    move v1, v2

    :cond_14
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 421
    :cond_15
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_17

    .line 422
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "surface_palm_touch"

    iget-object v5, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_16

    move v1, v2

    :cond_16
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 424
    :cond_17
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTapAndTwist:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_19

    .line 425
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "surface_tap_and_twist"

    iget-object v5, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTapAndTwist:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_18

    move v1, v2

    :cond_18
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 427
    :cond_19
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mAirGlanceView:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_1b

    .line 428
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_glance_view"

    iget-object v5, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mAirGlanceView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1a

    move v1, v2

    :cond_1a
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 430
    :cond_1b
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mAirWebNavigate:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_1d

    .line 431
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_web_navigate"

    iget-object v5, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mAirWebNavigate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1c

    move v1, v2

    :cond_1c
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 433
    :cond_1d
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mAirNoteSwap:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_1f

    .line 434
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_note_swap"

    iget-object v5, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mAirNoteSwap:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1e

    move v1, v2

    :cond_1e
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 436
    :cond_1f
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mAirMotionScroll:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_21

    .line 437
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_scroll"

    iget-object v5, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mAirMotionScroll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_20

    move v1, v2

    :cond_20
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 439
    :cond_21
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mAirItemMove:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_23

    .line 440
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_item_move"

    iget-object v5, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mAirItemMove:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_22

    move v1, v2

    :cond_22
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 442
    :cond_23
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mAirClip:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_25

    .line 443
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_clip"

    iget-object v5, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mAirClip:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_24

    move v1, v2

    :cond_24
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 445
    :cond_25
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mAirCallAccept:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_27

    .line 446
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_call_accept"

    iget-object v5, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mAirCallAccept:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_26

    move v1, v2

    :cond_26
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 450
    :cond_27
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/16 v6, 0x10

    const/4 v8, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 244
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 245
    const-string v4, "MotionsSettings"

    const-string v5, "onResume()"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mActivity:Landroid/app/Activity;

    instance-of v4, v4, Lmiui/preference/BasePreferenceActivity;

    if-eqz v4, :cond_0

    .line 248
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 250
    .local v1, padding:I
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3, v3, v1, v3}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 251
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 253
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x15

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 257
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mActionBarLayout:Landroid/view/View;

    .line 260
    .end local v1           #padding:I
    :cond_0
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 261
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 263
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 265
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_engine"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    .line 266
    .local v0, motionEngineState:Z
    :goto_0
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 268
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mGlanceView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 269
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTilt:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 270
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTiltToScrollList:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 271
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPan:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 272
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPanToBrowseImage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 273
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mShake:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 274
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mDoubleTap:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 275
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPickUp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 276
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPickUpToCallOut:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 277
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTurnOver:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 278
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPalmSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 279
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 280
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTapAndTwist:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 281
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mSensitivitySettings:Landroid/preference/Preference;

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 283
    iget-object v5, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mGlanceView:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "air_motion_glance_view"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    move v4, v2

    :goto_1
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 284
    iget-object v5, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTilt:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "motion_zooming"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    move v4, v2

    :goto_2
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 285
    iget-object v5, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTiltToScrollList:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "motion_tilt_to_list_scrolling"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_5

    move v4, v2

    :goto_3
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 286
    iget-object v5, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPan:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "motion_panning"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_6

    move v4, v2

    :goto_4
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 287
    iget-object v5, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPanToBrowseImage:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "motion_pan_to_browse_image"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_7

    move v4, v2

    :goto_5
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 288
    iget-object v5, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mShake:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "motion_shake"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_8

    move v4, v2

    :goto_6
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 289
    iget-object v5, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mDoubleTap:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "motion_double_tap"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_9

    move v4, v2

    :goto_7
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 290
    iget-object v5, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPickUp:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "motion_pick_up"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_a

    move v4, v2

    :goto_8
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 291
    iget-object v5, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPickUpToCallOut:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "motion_pick_up_to_call_out"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_b

    move v4, v2

    :goto_9
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 292
    iget-object v5, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTurnOver:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "motion_overturn"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_c

    move v4, v2

    :goto_a
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 293
    iget-object v5, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPalmSwipe:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "surface_palm_swipe"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_d

    move v4, v2

    :goto_b
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 294
    iget-object v5, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "surface_palm_touch"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_e

    move v4, v2

    :goto_c
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 295
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mTapAndTwist:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "surface_tap_and_twist"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_f

    :goto_d
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 316
    return-void

    .end local v0           #motionEngineState:Z
    :cond_2
    move v0, v3

    .line 265
    goto/16 :goto_0

    .restart local v0       #motionEngineState:Z
    :cond_3
    move v4, v3

    .line 283
    goto/16 :goto_1

    :cond_4
    move v4, v3

    .line 284
    goto/16 :goto_2

    :cond_5
    move v4, v3

    .line 285
    goto/16 :goto_3

    :cond_6
    move v4, v3

    .line 286
    goto/16 :goto_4

    :cond_7
    move v4, v3

    .line 287
    goto/16 :goto_5

    :cond_8
    move v4, v3

    .line 288
    goto/16 :goto_6

    :cond_9
    move v4, v3

    .line 289
    goto :goto_7

    :cond_a
    move v4, v3

    .line 290
    goto :goto_8

    :cond_b
    move v4, v3

    .line 291
    goto :goto_9

    :cond_c
    move v4, v3

    .line 292
    goto :goto_a

    :cond_d
    move v4, v3

    .line 293
    goto :goto_b

    :cond_e
    move v4, v3

    .line 294
    goto :goto_c

    :cond_f
    move v2, v3

    .line 295
    goto :goto_d
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 320
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onStop()V

    .line 321
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 323
    :cond_0
    return-void
.end method
