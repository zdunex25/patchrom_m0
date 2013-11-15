.class public Lcom/android/camera/PhotoController;
.super Lcom/android/camera/PieController;
.source "PhotoController.java"

# interfaces
.implements Lcom/android/camera/ui/ListPrefSettingPopup$Listener;
.implements Lcom/android/camera/ui/MoreSettingPopup$Listener;


# static fields
.field private static FLOAT_PI_DIVIDED_BY_TWO:F

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mModule:Lcom/android/camera/PhotoModule;

.field private mOtherKeys:[Ljava/lang/String;

.field private mPopup:Lcom/android/camera/ui/MoreSettingPopup;

.field private mSecondPopup:Lcom/android/camera/ui/AbstractSettingPopup;

.field private final mSettingOff:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "CAM_photocontrol"

    sput-object v0, Lcom/android/camera/PhotoController;->TAG:Ljava/lang/String;

    .line 34
    const v0, 0x3fc90fdb

    sput v0, Lcom/android/camera/PhotoController;->FLOAT_PI_DIVIDED_BY_TWO:F

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PhotoModule;Lcom/android/camera/ui/PieRenderer;)V
    .locals 1
    .parameter "activity"
    .parameter "module"
    .parameter "pie"

    .prologue
    .line 45
    invoke-direct {p0, p1, p3}, Lcom/android/camera/PieController;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/ui/PieRenderer;)V

    .line 46
    iput-object p2, p0, Lcom/android/camera/PhotoController;->mModule:Lcom/android/camera/PhotoModule;

    .line 47
    const v0, 0x7f0a00a7

    invoke-virtual {p1, v0}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoController;->mSettingOff:Ljava/lang/String;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/PhotoController;)Lcom/android/camera/ui/MoreSettingPopup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/PhotoController;->mPopup:Lcom/android/camera/ui/MoreSettingPopup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/PhotoController;)Lcom/android/camera/PhotoModule;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/PhotoController;->mModule:Lcom/android/camera/PhotoModule;

    return-object v0
.end method

.method private static notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "pref"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 188
    iget-object v1, p0, Lcom/android/camera/PhotoController;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v1, p1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 189
    .local v0, pref:Lcom/android/camera/ListPreference;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    invoke-virtual {v0, p2}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/camera/PhotoController;->reloadPreferences()V

    .line 193
    :cond_0
    return-void
.end method


# virtual methods
.method public initialize(Lcom/android/camera/PreferenceGroup;)V
    .locals 9
    .parameter "group"

    .prologue
    const/4 v3, 0x0

    const/high16 v8, 0x4040

    .line 51
    invoke-super {p0, p1}, Lcom/android/camera/PieController;->initialize(Lcom/android/camera/PreferenceGroup;)V

    .line 52
    iput-object v3, p0, Lcom/android/camera/PhotoController;->mPopup:Lcom/android/camera/ui/MoreSettingPopup;

    .line 53
    iput-object v3, p0, Lcom/android/camera/PhotoController;->mSecondPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    .line 54
    sget v3, Lcom/android/camera/PhotoController;->FLOAT_PI_DIVIDED_BY_TWO:F

    const/high16 v4, 0x4000

    div-float v2, v3, v4

    .line 55
    .local v2, sweep:F
    const-string v3, "pref_camera_flashmode_key"

    sget v4, Lcom/android/camera/PhotoController;->FLOAT_PI_DIVIDED_BY_TWO:F

    sub-float/2addr v4, v2

    invoke-virtual {p0, v3, v4, v2}, Lcom/android/camera/PhotoController;->addItem(Ljava/lang/String;FF)V

    .line 56
    const-string v3, "pref_camera_exposure_key"

    sget v4, Lcom/android/camera/PhotoController;->FLOAT_PI_DIVIDED_BY_TWO:F

    mul-float/2addr v4, v8

    sub-float/2addr v4, v2

    invoke-virtual {p0, v3, v4, v2}, Lcom/android/camera/PhotoController;->addItem(Ljava/lang/String;FF)V

    .line 57
    const-string v3, "pref_camera_whitebalance_key"

    sget v4, Lcom/android/camera/PhotoController;->FLOAT_PI_DIVIDED_BY_TWO:F

    mul-float/2addr v4, v8

    add-float/2addr v4, v2

    invoke-virtual {p0, v3, v4, v2}, Lcom/android/camera/PhotoController;->addItem(Ljava/lang/String;FF)V

    .line 58
    const-string v3, "pref_camera_id_key"

    invoke-virtual {p1, v3}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 59
    const v3, 0x7f0200db

    invoke-virtual {p0, v3}, Lcom/android/camera/PhotoController;->makeItem(I)Lcom/android/camera/ui/PieItem;

    move-result-object v1

    .line 60
    .local v1, item:Lcom/android/camera/ui/PieItem;
    sget v3, Lcom/android/camera/PhotoController;->FLOAT_PI_DIVIDED_BY_TWO:F

    add-float/2addr v3, v2

    invoke-virtual {v1, v3, v2}, Lcom/android/camera/ui/PieItem;->setFixedSlice(FF)V

    .line 61
    new-instance v3, Lcom/android/camera/PhotoController$1;

    invoke-direct {v3, p0}, Lcom/android/camera/PhotoController$1;-><init>(Lcom/android/camera/PhotoController;)V

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/PieItem;->setOnClickListener(Lcom/android/camera/ui/PieItem$OnClickListener;)V

    .line 77
    iget-object v3, p0, Lcom/android/camera/PhotoController;->mRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v3, v1}, Lcom/android/camera/ui/PieRenderer;->addItem(Lcom/android/camera/ui/PieItem;)V

    .line 79
    .end local v1           #item:Lcom/android/camera/ui/PieItem;
    :cond_0
    const-string v3, "pref_camera_hdr_key"

    invoke-virtual {p1, v3}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 80
    const v3, 0x7f02008b

    invoke-virtual {p0, v3}, Lcom/android/camera/PhotoController;->makeItem(I)Lcom/android/camera/ui/PieItem;

    move-result-object v0

    .line 81
    .local v0, hdr:Lcom/android/camera/ui/PieItem;
    sget v3, Lcom/android/camera/PhotoController;->FLOAT_PI_DIVIDED_BY_TWO:F

    invoke-virtual {v0, v3, v2}, Lcom/android/camera/ui/PieItem;->setFixedSlice(FF)V

    .line 82
    new-instance v3, Lcom/android/camera/PhotoController$2;

    invoke-direct {v3, p0}, Lcom/android/camera/PhotoController$2;-><init>(Lcom/android/camera/PhotoController;)V

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/PieItem;->setOnClickListener(Lcom/android/camera/ui/PieItem$OnClickListener;)V

    .line 96
    iget-object v3, p0, Lcom/android/camera/PhotoController;->mRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v3, v0}, Lcom/android/camera/ui/PieRenderer;->addItem(Lcom/android/camera/ui/PieItem;)V

    .line 98
    .end local v0           #hdr:Lcom/android/camera/ui/PieItem;
    :cond_1
    const-string v3, "pref_nohands_shutter_key"

    const-wide/high16 v4, 0x3ff8

    sget v6, Lcom/android/camera/PhotoController;->FLOAT_PI_DIVIDED_BY_TWO:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-float v4, v4

    add-float/2addr v4, v2

    invoke-virtual {p0, v3, v4, v2}, Lcom/android/camera/PhotoController;->addItem(Ljava/lang/String;FF)V

    .line 99
    const/16 v3, 0xe

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "pref_camera_storage_key"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "pref_camera_scenemode_key"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "pref_camera_recordlocation_key"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "pref_power_shutter"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "pref_nohands_persistent_key"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "pref_volume_buttons_key"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "pref_camera_ultrapixel_key"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "pref_camera_picturesize_key"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "pref_camera_focusmode_key"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "pref_camera_focustime_key"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "pref_camera_iso_key"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "pref_camera_jpeg_key"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "pref_camera_coloreffect_key"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string v5, "pref_camera_burst_key"

    aput-object v5, v3, v4

    iput-object v3, p0, Lcom/android/camera/PhotoController;->mOtherKeys:[Ljava/lang/String;

    .line 114
    const v3, 0x7f0200d2

    invoke-virtual {p0, v3}, Lcom/android/camera/PhotoController;->makeItem(I)Lcom/android/camera/ui/PieItem;

    move-result-object v1

    .line 115
    .restart local v1       #item:Lcom/android/camera/ui/PieItem;
    sget v3, Lcom/android/camera/PhotoController;->FLOAT_PI_DIVIDED_BY_TWO:F

    mul-float/2addr v3, v8

    invoke-virtual {v1, v3, v2}, Lcom/android/camera/ui/PieItem;->setFixedSlice(FF)V

    .line 116
    new-instance v3, Lcom/android/camera/PhotoController$3;

    invoke-direct {v3, p0}, Lcom/android/camera/PhotoController$3;-><init>(Lcom/android/camera/PhotoController;)V

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/PieItem;->setOnClickListener(Lcom/android/camera/ui/PieItem$OnClickListener;)V

    .line 125
    iget-object v3, p0, Lcom/android/camera/PhotoController;->mRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v3, v1}, Lcom/android/camera/ui/PieRenderer;->addItem(Lcom/android/camera/ui/PieItem;)V

    .line 126
    return-void
.end method

.method protected initializePopup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 159
    iget-object v2, p0, Lcom/android/camera/PhotoController;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 162
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f04001e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/MoreSettingPopup;

    .line 164
    .local v1, popup:Lcom/android/camera/ui/MoreSettingPopup;
    invoke-virtual {v1, p0}, Lcom/android/camera/ui/MoreSettingPopup;->setSettingChangedListener(Lcom/android/camera/ui/MoreSettingPopup$Listener;)V

    .line 165
    iget-object v2, p0, Lcom/android/camera/PhotoController;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v3, p0, Lcom/android/camera/PhotoController;->mOtherKeys:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/MoreSettingPopup;->initialize(Lcom/android/camera/PreferenceGroup;[Ljava/lang/String;)V

    .line 166
    iget-object v2, p0, Lcom/android/camera/PhotoController;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    const-string v2, "pref_camera_recordlocation_key"

    invoke-virtual {v1, v2, v4}, Lcom/android/camera/ui/MoreSettingPopup;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 170
    :cond_0
    iput-object v1, p0, Lcom/android/camera/PhotoController;->mPopup:Lcom/android/camera/ui/MoreSettingPopup;

    .line 171
    return-void
.end method

.method public onListPrefChanged(Lcom/android/camera/ListPreference;)V
    .locals 2
    .parameter "pref"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/camera/PhotoController;->mPopup:Lcom/android/camera/ui/MoreSettingPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoController;->mSecondPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/camera/PhotoController;->mModule:Lcom/android/camera/PhotoModule;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoModule;->dismissPopup(Z)V

    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoController;->mPopup:Lcom/android/camera/ui/MoreSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/MoreSettingPopup;->reloadPreference()V

    .line 148
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/PhotoController;->onSettingChanged(Lcom/android/camera/ListPreference;)V

    .line 149
    return-void
.end method

.method public onPreferenceClicked(Lcom/android/camera/ListPreference;)V
    .locals 5
    .parameter "pref"

    .prologue
    .line 217
    iget-object v2, p0, Lcom/android/camera/PhotoController;->mSecondPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v2, :cond_0

    .line 228
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PhotoController;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 221
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040019

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ListPrefSettingPopup;

    .line 223
    .local v0, basic:Lcom/android/camera/ui/ListPrefSettingPopup;
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ListPrefSettingPopup;->initialize(Lcom/android/camera/ListPreference;)V

    .line 224
    invoke-virtual {v0, p0}, Lcom/android/camera/ui/ListPrefSettingPopup;->setSettingChangedListener(Lcom/android/camera/ui/ListPrefSettingPopup$Listener;)V

    .line 225
    iget-object v2, p0, Lcom/android/camera/PhotoController;->mModule:Lcom/android/camera/PhotoModule;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoModule;->dismissPopup(Z)V

    .line 226
    iput-object v0, p0, Lcom/android/camera/PhotoController;->mSecondPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    .line 227
    iget-object v2, p0, Lcom/android/camera/PhotoController;->mModule:Lcom/android/camera/PhotoModule;

    iget-object v3, p0, Lcom/android/camera/PhotoController;->mSecondPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoModule;->showPopup(Lcom/android/camera/ui/AbstractSettingPopup;)V

    goto :goto_0
.end method

.method public onSettingChanged(Lcom/android/camera/ListPreference;)V
    .locals 3
    .parameter "pref"

    .prologue
    .line 199
    const-string v0, "pref_camera_hdr_key"

    iget-object v1, p0, Lcom/android/camera/PhotoController;->mSettingOff:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/android/camera/PhotoController;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    const-string v0, "pref_camera_scenemode_key"

    const-string v1, "auto"

    invoke-direct {p0, v0, v1}, Lcom/android/camera/PhotoController;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/camera/PieController;->onSettingChanged(Lcom/android/camera/ListPreference;)V

    .line 211
    return-void

    .line 201
    :cond_1
    const-string v0, "pref_camera_scenemode_key"

    const-string v1, "auto"

    invoke-static {p1, v0, v1}, Lcom/android/camera/PhotoController;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    const-string v0, "pref_camera_hdr_key"

    iget-object v1, p0, Lcom/android/camera/PhotoController;->mSettingOff:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/PhotoController;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :cond_2
    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_nohands_shutter_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoController;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0a0087

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera/PhotoController;->mModule:Lcom/android/camera/PhotoModule;

    invoke-static {v0, v1}, Lcom/android/camera/Util;->enableSpeechRecognition(ZLcom/android/camera/PhotoModule;)V

    goto :goto_0

    .line 207
    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/Util;->enableSpeechRecognition(ZLcom/android/camera/PhotoModule;)V

    goto :goto_0
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 1
    .parameter "keyvalues"

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/android/camera/PieController;->overrideSettings([Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/android/camera/PhotoController;->mPopup:Lcom/android/camera/ui/MoreSettingPopup;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/PhotoController;->initializePopup()V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoController;->mPopup:Lcom/android/camera/ui/MoreSettingPopup;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/MoreSettingPopup;->overrideSettings([Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public popupDismissed(Z)V
    .locals 2
    .parameter "topPopupOnly"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/camera/PhotoController;->mSecondPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoController;->mSecondPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    .line 177
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoController;->mModule:Lcom/android/camera/PhotoModule;

    iget-object v1, p0, Lcom/android/camera/PhotoController;->mPopup:Lcom/android/camera/ui/MoreSettingPopup;

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoModule;->showPopup(Lcom/android/camera/ui/AbstractSettingPopup;)V

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/PhotoController;->initializePopup()V

    .line 180
    return-void
.end method

.method public reloadPreferences()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Lcom/android/camera/PieController;->reloadPreferences()V

    .line 136
    iget-object v0, p0, Lcom/android/camera/PhotoController;->mPopup:Lcom/android/camera/ui/MoreSettingPopup;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/camera/PhotoController;->mPopup:Lcom/android/camera/ui/MoreSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/MoreSettingPopup;->reloadPreference()V

    .line 139
    :cond_0
    return-void
.end method

.method public resetNoHandsShutter(Z)V
    .locals 7
    .parameter "force"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 231
    iget-object v3, p0, Lcom/android/camera/PhotoController;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_nohands_persistent_key"

    invoke-virtual {v3, v4}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 232
    .local v0, persist:Lcom/android/camera/ListPreference;
    iget-object v3, p0, Lcom/android/camera/PhotoController;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_nohands_shutter_key"

    invoke-virtual {v3, v4}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 234
    .local v1, pref:Lcom/android/camera/ListPreference;
    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/PhotoController;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0a00a8

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 235
    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/PhotoController;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0a0087

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v2, v6}, Lcom/android/camera/Util;->enableSpeechRecognition(ZLcom/android/camera/PhotoModule;)V

    .line 244
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-object v3, p0, Lcom/android/camera/PhotoController;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0a0088

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 241
    invoke-static {v2, v6}, Lcom/android/camera/Util;->enableSpeechRecognition(ZLcom/android/camera/PhotoModule;)V

    .line 242
    invoke-super {p0}, Lcom/android/camera/PieController;->reloadPreferences()V

    .line 243
    invoke-super {p0, v1}, Lcom/android/camera/PieController;->onSettingChanged(Lcom/android/camera/ListPreference;)V

    goto :goto_0
.end method

.method public restoreNoHandsShutter()V
    .locals 4

    .prologue
    .line 247
    iget-object v1, p0, Lcom/android/camera/PhotoController;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_nohands_shutter_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 248
    .local v0, pref:Lcom/android/camera/ListPreference;
    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoController;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0a0087

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/camera/PhotoController;->mModule:Lcom/android/camera/PhotoModule;

    invoke-static {v1, v2}, Lcom/android/camera/Util;->enableSpeechRecognition(ZLcom/android/camera/PhotoModule;)V

    .line 249
    return-void
.end method

.method protected setCameraId(I)V
    .locals 3
    .parameter "cameraId"

    .prologue
    .line 129
    iget-object v1, p0, Lcom/android/camera/PhotoController;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_id_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 130
    .local v0, pref:Lcom/android/camera/ListPreference;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 131
    return-void
.end method
