.class public Lcom/android/OriginalSettings/BrightnessPreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "BrightnessPreference.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/BrightnessPreference$SavedState;
    }
.end annotation


# instance fields
.field auto_detail_custom_layout:Landroid/widget/LinearLayout;

.field auto_detail_seekbar_layout:Landroid/widget/LinearLayout;

.field private currentLevel:I

.field private isWidget:Ljava/lang/Boolean;

.field private mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

.field private mAutoDetailSeekBar:Landroid/widget/SeekBar;

.field private mAutoNotiTextView:Landroid/widget/TextView;

.field private mAutomaticAvailable:Z

.field private mAutomaticMode:Z

.field private mBrightness:Lcom/android/OriginalSettings/DisplaySettings;

.field private mBrightnessModeObserver:Landroid/database/ContentObserver;

.field private mBrightnessObserver:Landroid/database/ContentObserver;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCurBrightness:I

.field private mCustomBar:[Landroid/widget/ImageView;

.field private mFlipCloseStatus:Z

.field private mMaxBrightness:I

.field private mOldAutoDetailLevel:I

.field private mOldAutomatic:I

.field private mOldBrightness:I

.field private mRestoredOldState:Z

.field private mScreenBrightnessDim:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field mSharedPreference:Landroid/content/SharedPreferences;

.field private mSupportFolderType:Z

.field private mTextView:Landroid/widget/TextView;

.field seekbar_layout:Landroid/widget/LinearLayout;

.field supportAutoBrightnessDetail:Z

.field supportDA:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 147
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    iput-boolean v5, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutomaticAvailable:Z

    .line 72
    iput-boolean v5, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mFlipCloseStatus:Z

    .line 77
    iput v6, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCurBrightness:I

    .line 94
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/BrightnessPreference;->isWidget:Ljava/lang/Boolean;

    .line 97
    iput v5, p0, Lcom/android/OriginalSettings/BrightnessPreference;->currentLevel:I

    .line 99
    iput-boolean v5, p0, Lcom/android/OriginalSettings/BrightnessPreference;->supportDA:Z

    .line 100
    iput-boolean v5, p0, Lcom/android/OriginalSettings/BrightnessPreference;->supportAutoBrightnessDetail:Z

    .line 106
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0022

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mScreenBrightnessDim:I

    .line 112
    new-instance v4, Lcom/android/OriginalSettings/BrightnessPreference$1;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/OriginalSettings/BrightnessPreference$1;-><init>(Lcom/android/OriginalSettings/BrightnessPreference;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 120
    new-instance v4, Lcom/android/OriginalSettings/BrightnessPreference$2;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/OriginalSettings/BrightnessPreference$2;-><init>(Lcom/android/OriginalSettings/BrightnessPreference;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    .line 127
    new-instance v4, Lcom/android/OriginalSettings/BrightnessPreference$3;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/OriginalSettings/BrightnessPreference$3;-><init>(Lcom/android/OriginalSettings/BrightnessPreference;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    .line 148
    const-string v4, "BrightnessPreference"

    const-string v5, "getSensorMgr"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string v4, "sensor"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    .line 150
    .local v2, sensorMgr:Landroid/hardware/SensorManager;
    const-string v4, "BrightnessPreference"

    const-string v5, "getsensorList"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {v2, v6}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 152
    .local v1, sensorList:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 153
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    .line 155
    .local v3, sensorType:I
    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 157
    const-string v4, "BrightnessPreference"

    const-string v5, "EnableAuto"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutomaticAvailable:Z

    .line 152
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    .end local v3           #sensorType:I
    :cond_1
    const-string v4, "ro.lcd_min_brightness"

    iget v5, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mScreenBrightnessDim:I

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mScreenBrightnessDim:I

    .line 165
    const-string v4, "BrightnessPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "min Brightness : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mScreenBrightnessDim:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const v4, 0x7f0400a0

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/BrightnessPreference;->setDialogLayoutResource(I)V

    .line 169
    invoke-direct {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->isSupportAutoBrightnessDetail()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/OriginalSettings/BrightnessPreference;->supportAutoBrightnessDetail:Z

    .line 170
    invoke-direct {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->isSupportDA()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/OriginalSettings/BrightnessPreference;->supportDA:Z

    .line 171
    return-void
.end method

.method static synthetic access$002(Lcom/android/OriginalSettings/BrightnessPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCurBrightness:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/BrightnessPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->onBrightnessChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/BrightnessPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->onBrightnessModeChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/BrightnessPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->onAutoBrightnessDetailChanged()V

    return-void
.end method

.method private getBrightness()I
    .locals 5

    .prologue
    .line 395
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/BrightnessPreference;->getBrightnessMode(I)I

    move-result v1

    .line 396
    .local v1, mode:I
    const/4 v0, 0x0

    .line 402
    .local v0, brightness:F
    iget v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCurBrightness:I

    if-gez v2, :cond_0

    .line 403
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    const/16 v4, 0x64

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-float v0, v2

    .line 408
    :goto_0
    iget v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mScreenBrightnessDim:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget v3, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mScreenBrightnessDim:I

    rsub-int v3, v3, 0xff

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 411
    const v2, 0x461c4000

    mul-float/2addr v2, v0

    float-to-int v2, v2

    return v2

    .line 406
    :cond_0
    iget v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCurBrightness:I

    int-to-float v0, v2

    goto :goto_0
.end method

.method private getBrightnessMode(I)I
    .locals 3
    .parameter "defaultValue"

    .prologue
    .line 415
    move v0, p1

    .line 417
    .local v0, brightnessMode:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 421
    :goto_0
    return v0

    .line 419
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private isSupportAutoBrightnessDetail()Z
    .locals 1

    .prologue
    .line 426
    const/4 v0, 0x1

    return v0
.end method

.method private isSupportDA()Z
    .locals 1

    .prologue
    .line 431
    const/4 v0, 0x0

    return v0
.end method

.method private onAutoBrightnessDetailChanged()V
    .locals 4

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_brightness_detail"

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 440
    .local v0, value:I
    iget-object v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutoDetailSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_0

    .line 441
    iget-object v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutoDetailSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 443
    iget-boolean v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->supportDA:Z

    if-eqz v1, :cond_0

    .line 444
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->updateCustomBar()V

    .line 446
    :cond_0
    return-void
.end method

.method private onBrightnessChanged()V
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getBrightness()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 436
    return-void
.end method

.method private onBrightnessModeChanged()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 449
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/BrightnessPreference;->getBrightnessMode(I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    .line 451
    .local v0, checked:Z
    :goto_0
    iget-object v3, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 453
    iget-object v3, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 455
    if-eqz v0, :cond_4

    .line 456
    iget-boolean v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->supportAutoBrightnessDetail:Z

    if-eqz v1, :cond_0

    .line 457
    iget-object v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 458
    iget-boolean v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->supportDA:Z

    if-nez v1, :cond_3

    .line 459
    const-string v1, "BrightnessPreference"

    const-string v3, "setMode : auto_detail_seekbar_layout.setVisibility(View.VISIBLE)"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->auto_detail_seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 493
    :cond_0
    :goto_2
    return-void

    .end local v0           #checked:Z
    :cond_1
    move v0, v2

    .line 449
    goto :goto_0

    .restart local v0       #checked:Z
    :cond_2
    move v1, v2

    .line 453
    goto :goto_1

    .line 463
    :cond_3
    const-string v1, "BrightnessPreference"

    const-string v3, "setMode : auto_detail_custom_layout.setVisibility(View.VISIBLE)"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    const/4 v3, -0x2

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 467
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const v3, 0x7f0902bb

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 471
    :goto_3
    iget-object v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->auto_detail_custom_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 475
    :cond_4
    iget-boolean v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->supportAutoBrightnessDetail:Z

    if-eqz v1, :cond_0

    .line 476
    iget-object v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 477
    iget-boolean v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->supportDA:Z

    if-nez v1, :cond_5

    .line 478
    const-string v1, "BrightnessPreference"

    const-string v2, "setMode : auto_detail_seekbar_layout.setVisibility(View.GONE)"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->auto_detail_seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 482
    :cond_5
    const-string v1, "BrightnessPreference"

    const-string v2, "setMode : auto_detaauto_detail_custom_layoutil_seekbar_layout.setVisibility(View.GONE)"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :try_start_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 485
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f0905b8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 489
    :goto_4
    iget-object v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->auto_detail_custom_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 486
    :catch_0
    move-exception v1

    goto :goto_4

    .line 468
    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method private restoreOldState()V
    .locals 3

    .prologue
    .line 521
    iget-boolean v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mRestoredOldState:Z

    if-eqz v0, :cond_0

    .line 534
    :goto_0
    return-void

    .line 523
    :cond_0
    iget-boolean v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_1

    .line 524
    iget v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldAutomatic:I

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/BrightnessPreference;->setMode(I)V

    .line 526
    :cond_1
    iget v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldBrightness:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/BrightnessPreference;->setBrightness(IZ)V

    .line 528
    iget-boolean v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->supportAutoBrightnessDetail:Z

    if-eqz v0, :cond_2

    .line 529
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_brightness_detail"

    iget v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldAutoDetailLevel:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 532
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mRestoredOldState:Z

    .line 533
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCurBrightness:I

    goto :goto_0
.end method

.method private setBrightness(IZ)V
    .locals 5
    .parameter "brightness"
    .parameter "write"

    .prologue
    .line 537
    iget-boolean v3, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutomaticMode:Z

    if-eqz v3, :cond_0

    .line 574
    :goto_0
    return-void

    .line 555
    :cond_0
    iget v3, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mScreenBrightnessDim:I

    rsub-int v1, v3, 0xff

    .line 556
    .local v1, range:I
    mul-int v3, p1, v1

    int-to-float v3, v3

    const v4, 0x461c4000

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mScreenBrightnessDim:I

    add-int p1, v3, v4

    .line 558
    :try_start_0
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 560
    .local v0, power:Landroid/os/IPowerManager;
    if-eqz v0, :cond_1

    .line 561
    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 563
    :cond_1
    if-eqz p2, :cond_2

    .line 564
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCurBrightness:I

    .line 565
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 566
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v3, "screen_brightness"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 571
    .end local v0           #power:Landroid/os/IPowerManager;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 569
    .restart local v0       #power:Landroid/os/IPowerManager;
    :cond_2
    iput p1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCurBrightness:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v1, 0x1

    .line 577
    if-ne p1, v1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutomaticMode:Z

    .line 578
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "screen_brightness_mode"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 581
    iget-boolean v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSupportFolderType:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mFlipCloseStatus:Z

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 585
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 588
    :cond_1
    return-void

    .line 577
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public directBrightness()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->isWidget:Ljava/lang/Boolean;

    .line 137
    invoke-super {p0}, Landroid/preference/SeekBarDialogPreference;->onClick()V

    .line 138
    return-void
.end method

.method initCustomBar(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 297
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    .line 298
    iget-object v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x0

    const v0, 0x7f0b01af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 299
    iget-object v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x1

    const v0, 0x7f0b01b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 300
    iget-object v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x2

    const v0, 0x7f0b01b1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 301
    iget-object v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x3

    const v0, 0x7f0b01b2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 302
    iget-object v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x4

    const v0, 0x7f0b01b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 303
    iget-object v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x5

    const v0, 0x7f0b01b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 304
    iget-object v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x6

    const v0, 0x7f0b01b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 305
    iget-object v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x7

    const v0, 0x7f0b01b6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 306
    iget-object v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/16 v2, 0x8

    const v0, 0x7f0b01b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 307
    iget-object v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/16 v2, 0x9

    const v0, 0x7f0b01b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 308
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 10
    .parameter "view"

    .prologue
    const/16 v9, 0x2710

    const/16 v8, 0x64

    const/4 v3, 0x1

    const/16 v7, 0x8

    const/4 v4, 0x0

    .line 198
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 200
    invoke-static {p1}, Lcom/android/OriginalSettings/BrightnessPreference;->getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 202
    iget-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v9}, Landroid/widget/SeekBar;->setMax(I)V

    .line 204
    iget-boolean v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->supportAutoBrightnessDetail:Z

    if-eqz v2, :cond_0

    .line 205
    const v2, 0x7f0b01ac

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->auto_detail_seekbar_layout:Landroid/widget/LinearLayout;

    .line 206
    const v2, 0x7f0b01ae

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->auto_detail_custom_layout:Landroid/widget/LinearLayout;

    .line 207
    const v2, 0x7f0b01aa

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->seekbar_layout:Landroid/widget/LinearLayout;

    .line 208
    iget-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->auto_detail_seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 209
    iget-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->auto_detail_custom_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 211
    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/BrightnessPreference;->getBrightnessMode(I)I

    move-result v2

    if-eqz v2, :cond_3

    .line 212
    iget-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 213
    iget-boolean v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->supportDA:Z

    if-nez v2, :cond_2

    .line 214
    const-string v2, "BrightnessPreference"

    const-string v5, "onBindDialogView : auto_detail_seekbar_layout.setVisibility(View.VISIBLE)"

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->auto_detail_seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 224
    :goto_0
    const v2, 0x7f0b01ad

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutoDetailSeekBar:Landroid/widget/SeekBar;

    .line 225
    iget-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutoDetailSeekBar:Landroid/widget/SeekBar;

    const/16 v5, 0xc8

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 226
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "auto_brightness_detail"

    invoke-static {v2, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldAutoDetailLevel:I

    .line 227
    iget v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldAutoDetailLevel:I

    iput v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->currentLevel:I

    .line 228
    iget-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutoDetailSeekBar:Landroid/widget/SeekBar;

    iget v5, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldAutoDetailLevel:I

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 229
    iget-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutoDetailSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 233
    iget-boolean v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->supportDA:Z

    if-eqz v2, :cond_0

    .line 234
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 235
    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 236
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 237
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/BrightnessPreference;->initCustomBar(Landroid/view/View;)V

    .line 238
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->updateCustomBar()V

    .line 242
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getBrightness()I

    move-result v2

    iput v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldBrightness:I

    .line 245
    const v2, 0x7f0b01ba

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mTextView:Landroid/widget/TextView;

    .line 246
    const v2, 0x7f0b01a9

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutoNotiTextView:Landroid/widget/TextView;

    .line 248
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 250
    iget-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v5, "pref_siop_brightness"

    const/4 v6, -0x1

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mMaxBrightness:I

    .line 252
    iget v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mMaxBrightness:I

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/BrightnessPreference;->returnMaxBrightness(I)I

    move-result v2

    iput v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mMaxBrightness:I

    .line 253
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "screen_brightness"

    invoke-static {v2, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget v5, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mMaxBrightness:I

    if-le v2, v5, :cond_4

    .line 255
    iget-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v9}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 258
    :goto_1
    iget v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mMaxBrightness:I

    const/16 v5, 0xff

    if-ne v2, v5, :cond_1

    .line 259
    iget-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    :cond_1
    const v2, 0x7f0b01a8

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    .line 263
    iget-boolean v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v2, :cond_7

    .line 264
    iget-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 265
    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/BrightnessPreference;->getBrightnessMode(I)I

    move-result v2

    iput v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldAutomatic:I

    .line 266
    iget v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldAutomatic:I

    if-ne v2, v3, :cond_5

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutomaticMode:Z

    .line 267
    iget-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v5, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutomaticMode:Z

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 268
    iget-object v5, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutomaticMode:Z

    if-nez v2, :cond_6

    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 275
    :goto_4
    iget-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 278
    iget-boolean v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSupportFolderType:Z

    if-eqz v2, :cond_9

    .line 280
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 281
    .local v1, config:Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_8

    .line 282
    iput-boolean v3, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mFlipCloseStatus:Z

    .line 286
    :goto_5
    iget-boolean v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mFlipCloseStatus:Z

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/BrightnessPreference;->setFlipCloseStatus(Z)V

    .line 287
    const v2, 0x7f0b01ab

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 288
    .local v0, bright_level:Landroid/widget/TextView;
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 293
    .end local v0           #bright_level:Landroid/widget/TextView;
    .end local v1           #config:Landroid/content/res/Configuration;
    :goto_6
    return-void

    .line 218
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->auto_detail_custom_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 221
    :cond_3
    iget-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 257
    :cond_4
    iget-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v5, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldBrightness:I

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    :cond_5
    move v2, v4

    .line 266
    goto :goto_2

    :cond_6
    move v2, v4

    .line 268
    goto :goto_3

    .line 271
    :cond_7
    iget-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 273
    iget-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_4

    .line 284
    .restart local v1       #config:Landroid/content/res/Configuration;
    :cond_8
    iput-boolean v4, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mFlipCloseStatus:Z

    goto :goto_5

    .line 291
    .end local v1           #config:Landroid/content/res/Configuration;
    :cond_9
    iget-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutoNotiTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 380
    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/BrightnessPreference;->setMode(I)V

    .line 384
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "screen_brightness"

    const/16 v4, 0x64

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget v3, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mMaxBrightness:I

    if-le v0, v3, :cond_1

    .line 386
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 391
    :goto_1
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/android/OriginalSettings/BrightnessPreference;->setBrightness(IZ)V

    .line 392
    return-void

    :cond_0
    move v0, v2

    .line 380
    goto :goto_0

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v3, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutomaticMode:Z

    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 497
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    .line 499
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 501
    .local v0, resolver:Landroid/content/ContentResolver;
    if-eqz p1, :cond_1

    .line 502
    iget-object v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/OriginalSettings/BrightnessPreference;->setBrightness(IZ)V

    .line 507
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 508
    iget-object v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 509
    iget-object v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 512
    iget-object v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->isWidget:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 513
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->isWidget:Ljava/lang/Boolean;

    .line 514
    iget-object v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mBrightness:Lcom/android/OriginalSettings/DisplaySettings;

    if-eqz v1, :cond_0

    .line 515
    iget-object v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mBrightness:Lcom/android/OriginalSettings/DisplaySettings;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/DisplaySettings;->finish()V

    .line 518
    :cond_0
    return-void

    .line 504
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->restoreOldState()V

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 323
    iget-boolean v3, p0, Lcom/android/OriginalSettings/BrightnessPreference;->supportDA:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 345
    :cond_1
    :goto_0
    return v1

    .line 326
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    .line 327
    .local v0, isdown:Z
    :goto_1
    packed-switch p2, :pswitch_data_0

    move v1, v2

    .line 345
    goto :goto_0

    .end local v0           #isdown:Z
    :cond_3
    move v0, v2

    .line 326
    goto :goto_1

    .line 329
    .restart local v0       #isdown:Z
    :pswitch_0
    if-eqz v0, :cond_1

    iget v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->currentLevel:I

    if-lez v2, :cond_1

    .line 330
    iget v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->currentLevel:I

    add-int/lit8 v2, v2, -0x14

    iput v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->currentLevel:I

    .line 331
    iget-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutoDetailSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/OriginalSettings/BrightnessPreference;->currentLevel:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 332
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_brightness_detail"

    iget v4, p0, Lcom/android/OriginalSettings/BrightnessPreference;->currentLevel:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 333
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->updateCustomBar()V

    goto :goto_0

    .line 337
    :pswitch_1
    if-eqz v0, :cond_1

    iget v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->currentLevel:I

    const/16 v3, 0xc8

    if-ge v2, v3, :cond_1

    .line 338
    iget v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->currentLevel:I

    add-int/lit8 v2, v2, 0x14

    iput v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->currentLevel:I

    .line 339
    iget-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutoDetailSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/OriginalSettings/BrightnessPreference;->currentLevel:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 340
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_brightness_detail"

    iget v4, p0, Lcom/android/OriginalSettings/BrightnessPreference;->currentLevel:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 341
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->updateCustomBar()V

    goto :goto_0

    .line 327
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_1

    .line 363
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/OriginalSettings/BrightnessPreference;->setBrightness(IZ)V

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutoDetailSeekBar:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_0

    .line 365
    iput p2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->currentLevel:I

    .line 366
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_brightness_detail"

    iget v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->currentLevel:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 367
    const-string v0, "BrightnessPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auto_brightness_detail : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->currentLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 627
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 629
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 640
    :goto_0
    return-void

    .line 633
    :cond_1
    check-cast p1, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;

    .line 634
    invoke-virtual {p1}, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 635
    iget v0, p1, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->oldProgress:I

    iput v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldBrightness:I

    .line 636
    iget-boolean v0, p1, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->oldAutomatic:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldAutomatic:I

    .line 637
    iget-boolean v0, p1, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->automatic:Z

    if-eqz v0, :cond_3

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/BrightnessPreference;->setMode(I)V

    .line 638
    iget v0, p1, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->progress:I

    invoke-direct {p0, v0, v2}, Lcom/android/OriginalSettings/BrightnessPreference;->setBrightness(IZ)V

    .line 639
    iget v0, p1, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->curBrightness:I

    iput v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCurBrightness:I

    goto :goto_0

    :cond_2
    move v0, v2

    .line 636
    goto :goto_1

    :cond_3
    move v1, v2

    .line 637
    goto :goto_2
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 609
    invoke-super {p0}, Landroid/preference/SeekBarDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 610
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v0, v1

    .line 622
    :goto_0
    return-object v0

    .line 613
    :cond_1
    new-instance v0, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 614
    .local v0, myState:Lcom/android/OriginalSettings/BrightnessPreference$SavedState;
    iget-object v3, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->automatic:Z

    .line 615
    iget-object v3, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    iput v3, v0, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->progress:I

    .line 616
    iget v3, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldAutomatic:I

    if-ne v3, v2, :cond_2

    :goto_1
    iput-boolean v2, v0, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->oldAutomatic:Z

    .line 617
    iget v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldBrightness:I

    iput v2, v0, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->oldProgress:I

    .line 618
    iget v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCurBrightness:I

    iput v2, v0, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->curBrightness:I

    .line 621
    invoke-direct {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->restoreOldState()V

    goto :goto_0

    .line 616
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 373
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 377
    return-void
.end method

.method public returnMaxBrightness(I)I
    .locals 1
    .parameter "max"

    .prologue
    .line 352
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 355
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    const/16 p1, 0xff

    goto :goto_0
.end method

.method public setFlipCloseStatus(Z)V
    .locals 4
    .parameter "status"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 591
    iput-boolean p1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mFlipCloseStatus:Z

    .line 592
    iget-object v3, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v3, :cond_0

    .line 593
    iget-object v3, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 595
    .local v0, mode:I
    :goto_0
    if-ne v0, v1, :cond_3

    .line 596
    iget-boolean v3, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSupportFolderType:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mFlipCloseStatus:Z

    if-eqz v3, :cond_2

    .line 597
    iget-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 605
    .end local v0           #mode:I
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 593
    goto :goto_0

    .line 599
    .restart local v0       #mode:I
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_1

    .line 602
    :cond_3
    iget-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_1
.end method

.method public setObject(Lcom/android/OriginalSettings/DisplaySettings;)V
    .locals 0
    .parameter "displaySettings"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mBrightness:Lcom/android/OriginalSettings/DisplaySettings;

    .line 143
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 175
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 177
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 184
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_brightness_detail"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 188
    iput-boolean v4, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mRestoredOldState:Z

    .line 190
    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/BrightnessPreference;->getBrightnessMode(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->supportDA:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->supportAutoBrightnessDetail:Z

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 192
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0902bb

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 194
    :cond_0
    return-void
.end method

.method updateCustomBar()V
    .locals 4

    .prologue
    .line 311
    const-string v1, "BrightnessPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCustomBar(),  currentLevel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/OriginalSettings/BrightnessPreference;->currentLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 314
    iget v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->currentLevel:I

    mul-int/lit8 v2, v0, 0x14

    if-gt v1, v2, :cond_0

    .line 315
    iget-object v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 313
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02002f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 320
    :cond_1
    return-void
.end method
