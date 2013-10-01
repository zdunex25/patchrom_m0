.class public Lcom/android/camera/VideoController;
.super Lcom/android/camera/PieController;
.source "VideoController.java"

# interfaces
.implements Lcom/android/camera/ui/ListPrefSettingPopup$Listener;
.implements Lcom/android/camera/ui/MoreSettingPopup$Listener;
.implements Lcom/android/camera/ui/TimeIntervalPopup$Listener;


# static fields
.field private static FLOAT_PI_DIVIDED_BY_TWO:F

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mModule:Lcom/android/camera/VideoModule;

.field private mOtherKeys:[Ljava/lang/String;

.field private mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

.field private mPopupStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "CAM_videocontrol"

    sput-object v0, Lcom/android/camera/VideoController;->TAG:Ljava/lang/String;

    .line 37
    const v0, 0x3fc90fdb

    sput v0, Lcom/android/camera/VideoController;->FLOAT_PI_DIVIDED_BY_TWO:F

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/VideoModule;Lcom/android/camera/ui/PieRenderer;)V
    .locals 0
    .parameter "activity"
    .parameter "module"
    .parameter "pie"

    .prologue
    .line 49
    invoke-direct {p0, p1, p3}, Lcom/android/camera/PieController;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/ui/PieRenderer;)V

    .line 50
    iput-object p2, p0, Lcom/android/camera/VideoController;->mModule:Lcom/android/camera/VideoModule;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/VideoController;)Lcom/android/camera/ui/AbstractSettingPopup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/VideoController;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/VideoController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/camera/VideoController;->mPopupStatus:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/VideoController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/android/camera/VideoController;->mPopupStatus:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/VideoController;)Lcom/android/camera/VideoModule;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/VideoController;->mModule:Lcom/android/camera/VideoModule;

    return-object v0
.end method


# virtual methods
.method public initialize(Lcom/android/camera/PreferenceGroup;)V
    .locals 6
    .parameter "group"

    .prologue
    const/4 v4, 0x0

    const/high16 v5, 0x4040

    .line 54
    invoke-super {p0, p1}, Lcom/android/camera/PieController;->initialize(Lcom/android/camera/PreferenceGroup;)V

    .line 55
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/VideoController;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    .line 56
    iput v4, p0, Lcom/android/camera/VideoController;->mPopupStatus:I

    .line 57
    sget v2, Lcom/android/camera/VideoController;->FLOAT_PI_DIVIDED_BY_TWO:F

    const/high16 v3, 0x4000

    div-float v1, v2, v3

    .line 59
    .local v1, sweep:F
    const-string v2, "pref_camera_video_flashmode_key"

    sget v3, Lcom/android/camera/VideoController;->FLOAT_PI_DIVIDED_BY_TWO:F

    sub-float/2addr v3, v1

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/camera/VideoController;->addItem(Ljava/lang/String;FF)V

    .line 60
    const-string v2, "pref_camera_exposure_key"

    sget v3, Lcom/android/camera/VideoController;->FLOAT_PI_DIVIDED_BY_TWO:F

    mul-float/2addr v3, v5

    sub-float/2addr v3, v1

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/camera/VideoController;->addItem(Ljava/lang/String;FF)V

    .line 61
    const-string v2, "pref_camera_whitebalance_key"

    sget v3, Lcom/android/camera/VideoController;->FLOAT_PI_DIVIDED_BY_TWO:F

    mul-float/2addr v3, v5

    add-float/2addr v3, v1

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/camera/VideoController;->addItem(Ljava/lang/String;FF)V

    .line 62
    const-string v2, "pref_camera_id_key"

    invoke-virtual {p1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 63
    const v2, 0x7f0200d9

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoController;->makeItem(I)Lcom/android/camera/ui/PieItem;

    move-result-object v0

    .line 64
    .local v0, item:Lcom/android/camera/ui/PieItem;
    sget v2, Lcom/android/camera/VideoController;->FLOAT_PI_DIVIDED_BY_TWO:F

    add-float/2addr v2, v1

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/ui/PieItem;->setFixedSlice(FF)V

    .line 65
    new-instance v2, Lcom/android/camera/VideoController$1;

    invoke-direct {v2, p0}, Lcom/android/camera/VideoController$1;-><init>(Lcom/android/camera/VideoController;)V

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/PieItem;->setOnClickListener(Lcom/android/camera/ui/PieItem$OnClickListener;)V

    .line 80
    iget-object v2, p0, Lcom/android/camera/VideoController;->mRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/PieRenderer;->addItem(Lcom/android/camera/ui/PieItem;)V

    .line 82
    .end local v0           #item:Lcom/android/camera/ui/PieItem;
    :cond_0
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "pref_camera_storage_key"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v4, "pref_video_effect_key"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "pref_video_time_lapse_frame_interval_key"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "pref_video_quality_key"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "pref_camera_recordlocation_key"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "pref_power_shutter"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "pref_camera_video_coloreffect_key"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "pref_camera_video_jpeg_key"

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/android/camera/VideoController;->mOtherKeys:[Ljava/lang/String;

    .line 92
    const v2, 0x7f0200ca

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoController;->makeItem(I)Lcom/android/camera/ui/PieItem;

    move-result-object v0

    .line 93
    .restart local v0       #item:Lcom/android/camera/ui/PieItem;
    sget v2, Lcom/android/camera/VideoController;->FLOAT_PI_DIVIDED_BY_TWO:F

    mul-float/2addr v2, v5

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/ui/PieItem;->setFixedSlice(FF)V

    .line 94
    new-instance v2, Lcom/android/camera/VideoController$2;

    invoke-direct {v2, p0}, Lcom/android/camera/VideoController$2;-><init>(Lcom/android/camera/VideoController;)V

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/PieItem;->setOnClickListener(Lcom/android/camera/ui/PieItem$OnClickListener;)V

    .line 104
    iget-object v2, p0, Lcom/android/camera/VideoController;->mRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/PieRenderer;->addItem(Lcom/android/camera/ui/PieItem;)V

    .line 105
    return-void
.end method

.method protected initializePopup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 142
    iget-object v2, p0, Lcom/android/camera/VideoController;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 145
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f04001e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/MoreSettingPopup;

    .line 147
    .local v1, popup:Lcom/android/camera/ui/MoreSettingPopup;
    invoke-virtual {v1, p0}, Lcom/android/camera/ui/MoreSettingPopup;->setSettingChangedListener(Lcom/android/camera/ui/MoreSettingPopup$Listener;)V

    .line 148
    iget-object v2, p0, Lcom/android/camera/VideoController;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v3, p0, Lcom/android/camera/VideoController;->mOtherKeys:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/MoreSettingPopup;->initialize(Lcom/android/camera/PreferenceGroup;[Ljava/lang/String;)V

    .line 149
    iget-object v2, p0, Lcom/android/camera/VideoController;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    const-string v2, "pref_camera_recordlocation_key"

    invoke-virtual {v1, v2, v4}, Lcom/android/camera/ui/MoreSettingPopup;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 153
    :cond_0
    iput-object v1, p0, Lcom/android/camera/VideoController;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    .line 154
    return-void
.end method

.method public onListPrefChanged(Lcom/android/camera/ListPreference;)V
    .locals 2
    .parameter "pref"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/camera/VideoController;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 134
    iget v0, p0, Lcom/android/camera/VideoController;->mPopupStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/camera/VideoController;->mModule:Lcom/android/camera/VideoModule;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoModule;->dismissPopup(Z)V

    .line 138
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/PieController;->onSettingChanged(Lcom/android/camera/ListPreference;)V

    .line 139
    return-void
.end method

.method public onPreferenceClicked(Lcom/android/camera/ListPreference;)V
    .locals 8
    .parameter "pref"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 169
    iget v3, p0, Lcom/android/camera/VideoController;->mPopupStatus:I

    if-eq v3, v5, :cond_0

    .line 191
    .end local p1
    :goto_0
    return-void

    .line 171
    .restart local p1
    :cond_0
    iget-object v3, p0, Lcom/android/camera/VideoController;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 174
    .local v1, inflater:Landroid/view/LayoutInflater;
    const-string v3, "pref_video_time_lapse_frame_interval_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 175
    const v3, 0x7f040044

    invoke-virtual {v1, v3, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/TimeIntervalPopup;

    .line 177
    .local v2, timeInterval:Lcom/android/camera/ui/TimeIntervalPopup;
    check-cast p1, Lcom/android/camera/IconListPreference;

    .end local p1
    invoke-virtual {v2, p1}, Lcom/android/camera/ui/TimeIntervalPopup;->initialize(Lcom/android/camera/IconListPreference;)V

    .line 178
    invoke-virtual {v2, p0}, Lcom/android/camera/ui/TimeIntervalPopup;->setSettingChangedListener(Lcom/android/camera/ui/TimeIntervalPopup$Listener;)V

    .line 179
    iget-object v3, p0, Lcom/android/camera/VideoController;->mModule:Lcom/android/camera/VideoModule;

    invoke-virtual {v3, v5}, Lcom/android/camera/VideoModule;->dismissPopup(Z)V

    .line 180
    iput-object v2, p0, Lcom/android/camera/VideoController;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    .line 189
    .end local v2           #timeInterval:Lcom/android/camera/ui/TimeIntervalPopup;
    :goto_1
    iget-object v3, p0, Lcom/android/camera/VideoController;->mModule:Lcom/android/camera/VideoModule;

    iget-object v4, p0, Lcom/android/camera/VideoController;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v3, v4}, Lcom/android/camera/VideoModule;->showPopup(Lcom/android/camera/ui/AbstractSettingPopup;)V

    .line 190
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/camera/VideoController;->mPopupStatus:I

    goto :goto_0

    .line 182
    .restart local p1
    :cond_1
    const v3, 0x7f040019

    invoke-virtual {v1, v3, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ListPrefSettingPopup;

    .line 184
    .local v0, basic:Lcom/android/camera/ui/ListPrefSettingPopup;
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ListPrefSettingPopup;->initialize(Lcom/android/camera/ListPreference;)V

    .line 185
    invoke-virtual {v0, p0}, Lcom/android/camera/ui/ListPrefSettingPopup;->setSettingChangedListener(Lcom/android/camera/ui/ListPrefSettingPopup$Listener;)V

    .line 186
    iget-object v3, p0, Lcom/android/camera/VideoController;->mModule:Lcom/android/camera/VideoModule;

    invoke-virtual {v3, v5}, Lcom/android/camera/VideoModule;->dismissPopup(Z)V

    .line 187
    iput-object v0, p0, Lcom/android/camera/VideoController;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    goto :goto_1
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 2
    .parameter "keyvalues"

    .prologue
    const/4 v1, 0x1

    .line 122
    invoke-super {p0, p1}, Lcom/android/camera/PieController;->overrideSettings([Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/android/camera/VideoController;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/VideoController;->mPopupStatus:I

    if-eq v0, v1, :cond_1

    .line 124
    :cond_0
    iput v1, p0, Lcom/android/camera/VideoController;->mPopupStatus:I

    .line 125
    invoke-virtual {p0}, Lcom/android/camera/VideoController;->initializePopup()V

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoController;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    check-cast v0, Lcom/android/camera/ui/MoreSettingPopup;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/MoreSettingPopup;->overrideSettings([Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public popupDismissed(Z)V
    .locals 2
    .parameter "topPopupOnly"

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/android/camera/VideoController;->initializePopup()V

    .line 159
    iget v0, p0, Lcom/android/camera/VideoController;->mPopupStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 160
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/VideoController;->mPopupStatus:I

    .line 161
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoController;->mModule:Lcom/android/camera/VideoModule;

    iget-object v1, p0, Lcom/android/camera/VideoController;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoModule;->showPopup(Lcom/android/camera/ui/AbstractSettingPopup;)V

    .line 163
    :cond_0
    return-void
.end method

.method public reloadPreferences()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Lcom/android/camera/PieController;->reloadPreferences()V

    .line 115
    iget-object v0, p0, Lcom/android/camera/VideoController;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/camera/VideoController;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/AbstractSettingPopup;->reloadPreference()V

    .line 118
    :cond_0
    return-void
.end method

.method protected setCameraId(I)V
    .locals 3
    .parameter "cameraId"

    .prologue
    .line 108
    iget-object v1, p0, Lcom/android/camera/VideoController;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_id_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 109
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

    .line 110
    return-void
.end method
