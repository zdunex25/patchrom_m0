.class public Lcom/android/camera/CameraSettings;
.super Ljava/lang/Object;
.source "CameraSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraSettings$NotificationHandler;,
        Lcom/android/camera/CameraSettings$OnCameraSettingsChangedObserver;
    }
.end annotation


# static fields
.field public static final AC_0:I = 0x2

.field public static final AC_MINUS_1_0:I = 0x1

.field public static final AC_MINUS_2_0:I = 0x0

.field public static final AC_PLUS_1_0:I = 0x3

.field public static final AC_PLUS_2_0:I = 0x4

.field public static final AC_STEP:F = 1.0f

.field public static final ANTISHAKE_OFF:I = 0x0

.field public static final ANTISHAKE_ON:I = 0x1

.field public static final AS_0:I = 0x2

.field public static final AS_MINUS_1_0:I = 0x1

.field public static final AS_MINUS_2_0:I = 0x0

.field public static final AS_PLUS_1_0:I = 0x3

.field public static final AS_PLUS_2_0:I = 0x4

.field public static final AS_STEP:F = 1.0f

.field public static final ATTACHMODE_CAMCORDER_EMAIL:I = 0x3

.field public static final ATTACHMODE_CAMCORDER_MMS:I = 0x2

.field public static final ATTACHMODE_NONE:I = 0x0

.field public static final ATTACHMODE_NORMAL:I = 0x1

.field public static final AUDIO_RECORDING_OFF:I = 0x0

.field public static final AUDIO_RECORDING_ON:I = 0x1

.field public static final AUTOCONTRAST_OFF:I = 0x0

.field public static final AUTOCONTRAST_ON:I = 0x1

.field public static final AUTO_SHARESHOT_OFF:I = 0x0

.field public static final AUTO_SHARESHOT_ON:I = 0x1

.field public static final BURST_OFF:I = 0x0

.field public static final BURST_ON:I = 0x1

.field public static final BURST_SHOT_OFF:I = 0x0

.field public static final BURST_SHOT_ON:I = 0x1

.field public static final CAMERA_ANTI_BANDING_50HZ:Ljava/lang/String; = "50hz"

.field public static final CAMERA_ANTI_BANDING_60HZ:Ljava/lang/String; = "60hz"

.field public static final CAMERA_ANTI_BANDING_AUTO:Ljava/lang/String; = "auto"

.field public static final CAMERA_ANTI_BANDING_OFF:Ljava/lang/String; = "off"

.field protected static final CAMERA_SETTINGS_NOTOFICATION:I = 0x0

.field public static final CONTEXTUAL_FILENAME_OFF:I = 0x0

.field public static final CONTEXTUAL_FILENAME_ON:I = 0x1

.field protected static final CSC_KEY_BURSTSHOT:Ljava/lang/String; = "csc_pref_camera_burstshot_key"

.field protected static final CSC_KEY_CAMCORDER_QUALITY:Ljava/lang/String; = "csc_pref_camera_videoquality_key"

.field protected static final CSC_KEY_CAMCORDER_RESOLUTION:Ljava/lang/String; = "csc_pref_camcorder_resolution_key"

.field protected static final CSC_KEY_CAMERA_FLASH:Ljava/lang/String; = "csc_pref_camera_flash_key"

.field protected static final CSC_KEY_CAMERA_QUALITY:Ljava/lang/String; = "csc_pref_camera_quality_key"

.field protected static final CSC_KEY_FORCED_SHUTTERSOUND:Ljava/lang/String; = "csc_pref_camera_forced_shuttersound_key"

.field protected static final CSC_KEY_SETUP_STORAGE:Ljava/lang/String; = "csc_pref_setup_storage_key"

.field protected static final DEFAULT_ADJUST_CONTRAST:I = 0x2

.field protected static final DEFAULT_ADJUST_SATURATION:I = 0x2

.field protected static final DEFAULT_BACK_CAMCORDER_ANTISHAKE:I = 0x0

.field protected static final DEFAULT_BACK_CAMERA_FOCUS:I = 0x1

.field public static final DEFAULT_CAMCORDER_AUDIORECORDING:I = 0x1

.field protected static final DEFAULT_CAMCORDER_AUTOCONTRAST:I = 0x0

.field protected static DEFAULT_CAMCORDER_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String; = null

.field protected static final DEFAULT_CAMCORDER_EFFECT:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final DEFAULT_CAMCORDER_FASTMOTION:I = 0x0

.field protected static final DEFAULT_CAMCORDER_FLASH:I = 0x0

.field protected static final DEFAULT_CAMCORDER_QUALITY:I = 0x0

.field protected static DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field protected static final DEFAULT_CAMCORDER_SPEED:I = 0x0

.field protected static final DEFAULT_CAMERA_ANTISHAKE:I = 0x0

.field protected static final DEFAULT_CAMERA_AUTOCONTRAST:I = 0x0

.field protected static final DEFAULT_CAMERA_AUTO_SHARESHOT:I = 0x0

.field protected static DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String; = null

.field protected static final DEFAULT_CAMERA_EFFECT:I = 0x0

.field protected static final DEFAULT_CAMERA_EXPOSUREMETER:I = 0x0

.field protected static final DEFAULT_CAMERA_FLASH:I = 0x0

.field protected static final DEFAULT_CAMERA_HDR_MODE:I = 0x0

.field protected static final DEFAULT_CAMERA_HDR_PICTURE_MODE:I = 0x1

.field protected static final DEFAULT_CAMERA_ID:I = 0x0

.field protected static final DEFAULT_CAMERA_ISO:I = 0x0

.field protected static final DEFAULT_CAMERA_QUALITY:I = 0x0

.field protected static final DEFAULT_CAMERA_REVIEW:I = 0x0

.field protected static final DEFAULT_CAMERA_SHOOTANDSHARE:I = 0x0

.field protected static final DEFAULT_CAMERA_SHUTTERSOUND:I = 0x1

.field protected static DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String; = null

.field protected static final DEFAULT_CAMERA_VOICECOMMAND:I = 0x0

.field protected static final DEFAULT_CAMERA_VOLUMEKEY:I = 0x0

.field protected static final DEFAULT_CONTRAST:I = 0x2

.field public static final DEFAULT_CONTRAST_VALUE:I = 0x2

.field protected static final DEFAULT_EFFECT:I = 0x0

.field public static final DEFAULT_EFFECT_RECORDER_TYPE:I = 0x0

.field protected static final DEFAULT_EXPOSUREVALUE:I = 0x0

.field public static final DEFAULT_EXPOSURE_VALUE:I = 0x0

.field protected static final DEFAULT_FRONT_CAMCORDER_ANTISHAKE:I = 0x0

.field protected static final DEFAULT_FRONT_CAMERA_FOCUS:I = 0x0

.field public static final DEFAULT_MAX_MMS_SIZE:J = 0x49c00L

.field public static final DEFAULT_MMS_VIDEO_DURATION:I = 0xe10

.field protected static final DEFAULT_NETWORK:I = 0x0

.field protected static final DEFAULT_ON_DEVICE_HELP_SCREEN:Z = true

.field protected static final DEFAULT_PREVIEW_FILE_RECEIVED:I = 0x0

.field protected static final DEFAULT_RECORDINGMODE:I = 0x0

.field protected static final DEFAULT_SATURATION:I = 0x2

.field public static final DEFAULT_SATURATION_VALUE:I = 0x2

.field protected static final DEFAULT_SCENEMODE:I = 0x0

.field protected static final DEFAULT_SETUP_CONTEXTUAL_FILENAME:I = 0x0

.field protected static final DEFAULT_SETUP_GPS:I = 0x0

.field protected static final DEFAULT_SETUP_GUIDELINE:I = 0x0

.field protected static final DEFAULT_SETUP_SELF_FLIP:I = 0x0

.field protected static final DEFAULT_SETUP_STORAGE:I = 0x0

.field protected static final DEFAULT_SHARPNESS:I = 0x2

.field public static final DEFAULT_SHARPNESS_VALUE:I = 0x2

.field protected static final DEFAULT_SHOOTINGMODE:I = 0x0

.field protected static final DEFAULT_SHUTTERSOUND:I = 0x1

.field protected static final DEFAULT_TIMER:I = 0x0

.field public static final DEFAULT_VIDEO_DURATION_VALUE:I = 0x3c

.field protected static final DEFAULT_WHITEBALANCE:I = 0x0

.field public static final DEFAULT_ZOOM_VALUE:I = 0x0

.field protected static final DIALOG_DISABLE_OFF:I = 0x0

.field protected static final DIALOG_DISABLE_ON:I = 0x1

.field public static final EFFECT_ANTIQUE:I = 0x5

.field public static final EFFECT_AQUA:I = 0x4

.field public static final EFFECT_BW:I = 0x2

.field public static final EFFECT_CARTOONIZE:I = 0x13

.field public static final EFFECT_EMBOSS:I = 0x7

.field public static final EFFECT_MONOCHROME:I = 0x9

.field public static final EFFECT_NEGATIVE:I = 0x1

.field public static final EFFECT_NONE:I = 0x0

.field public static final EFFECT_OUTLINE:I = 0x8

.field public static final EFFECT_POINT_BLUE:I = 0x10

.field public static final EFFECT_POINT_GREEN:I = 0x12

.field public static final EFFECT_POINT_RED_YELLOW:I = 0x11

.field public static final EFFECT_POSTERIZE:I = 0xf

.field public static final EFFECT_RECORDER_BIG_EYES:I = 0x2

.field public static final EFFECT_RECORDER_BIG_MOUTH:I = 0x4

.field public static final EFFECT_RECORDER_BIG_NOSE:I = 0x3

.field public static final EFFECT_RECORDER_NONE:I = 0x0

.field public static final EFFECT_RECORDER_SMALL_EYES:I = 0x5

.field public static final EFFECT_RECORDER_SMALL_MOUTH:I = 0x6

.field public static final EFFECT_RECORDER_SQUEEZE:I = 0x1

.field public static final EFFECT_SEPIA:I = 0x3

.field public static final EFFECT_SHARPEN:I = 0x6

.field public static final EFFECT_SKETCH:I = 0xa

.field public static final EFFECT_SOLARIZE:I = 0xe

.field public static final EFFECT_VINTAGE_COLD:I = 0xd

.field public static final EFFECT_VINTAGE_WARM:I = 0xc

.field public static final EFFECT_WASHED:I = 0xb

.field public static final EV_0:I = 0x0

.field public static final EV_MINUS_0_5:I = -0x1

.field public static final EV_MINUS_1_0:I = -0x2

.field public static final EV_MINUS_1_5:I = -0x3

.field public static final EV_MINUS_2_0:I = -0x4

.field public static final EV_PLUS_0_5:I = 0x1

.field public static final EV_PLUS_1_0:I = 0x2

.field public static final EV_PLUS_1_5:I = 0x3

.field public static final EV_PLUS_2_0:I = 0x4

.field public static final EV_STEP:F = 0.5f

.field public static final EXPOSUREMETER_CENTER:I = 0x0

.field public static final EXPOSUREMETER_MATRIX:I = 0x2

.field public static final EXPOSUREMETER_SPOT:I = 0x1

.field public static final FLASHMODE_AUTO:I = 0x2

.field public static final FLASHMODE_OFF:I = 0x0

.field public static final FLASHMODE_ON:I = 0x1

.field public static final FLASHMODE_REDEYE:I = 0x3

.field public static final FLASHMODE_TORCH:I = 0x4

.field public static final FLIP_OFF:I = 0x0

.field public static final FLIP_ON:I = 0x1

.field public static final FOCUSMODE_AF:I = 0x1

.field public static final FOCUSMODE_CONTINUOUS_PICTURE:I = 0x5

.field public static final FOCUSMODE_CONTINUOUS_PICTURE_MACRO:I = 0x6

.field public static final FOCUSMODE_CONTINUOUS_VIDEO:I = 0x4

.field public static final FOCUSMODE_FACEDETECTION:I = 0x3

.field public static final FOCUSMODE_MACRO:I = 0x2

.field public static final FOCUSMODE_OFF:I = 0x0

.field public static final FORCED_SHUTTER_SOUND_OFF:I = 0x0

.field public static final FORCED_SHUTTER_SOUND_ON:I = 0x1

.field public static final GPS_OFF:I = 0x0

.field public static final GPS_ON:I = 0x1

.field public static final GUIDELINE_OFF:I = 0x0

.field public static final GUIDELINE_ON:I = 0x1

.field public static final HDR_LEVEL_NORMAL:I = 0x0

.field public static final HDR_LEVEL_STRONG:I = 0x1

.field public static final HDR_PICTURE_AND:I = 0x1

.field public static final HDR_PICTURE_ONLY:I = 0x0

.field public static final ISO_100:I = 0x2

.field public static final ISO_1200:I = 0x6

.field public static final ISO_1600:I = 0x7

.field public static final ISO_200:I = 0x3

.field public static final ISO_2400:I = 0x8

.field public static final ISO_3200:I = 0x9

.field public static final ISO_400:I = 0x4

.field public static final ISO_50:I = 0x1

.field public static final ISO_800:I = 0x5

.field public static final ISO_AUTO:I = 0x0

.field public static final ISO_MOVIE:I = 0xc

.field public static final ISO_NIGHT:I = 0xb

.field public static final ISO_SPORTS:I = 0xa

.field protected static final KEY_BURST_SHOT_GUIDE_TEXT_DIALOG:Ljava/lang/String; = "pref_burst_shot_guide_text_dialog"

.field protected static final KEY_CAMCORDER_ANTISHAKE:Ljava/lang/String; = "pref_camcorder_antishake_key"

.field protected static final KEY_CAMCORDER_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String; = "pref_new_camcorder_editable_shortcut_order"

.field protected static final KEY_CAMCORDER_FLASH:Ljava/lang/String; = "pref_camcorder_flash_key"

.field protected static final KEY_CAMCORDER_QUALITY:Ljava/lang/String; = "pref_camera_videoquality_key"

.field protected static final KEY_CAMCORDER_RESOLUTION:Ljava/lang/String; = "pref_camcorder_resolution_key"

.field protected static final KEY_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String; = "pref_new_camcorder_sidemenu_order"

.field protected static final KEY_CAMCORDER_SPEED:Ljava/lang/String; = "pref_camera_videospeed_key"

.field protected static final KEY_CAMCORDER_TIMELAPSE:Ljava/lang/String; = "pref_camera_videotimelapse_key"

.field protected static final KEY_CAMERA_ANTISHAKE:Ljava/lang/String; = "pref_camera_antishake_key"

.field protected static final KEY_CAMERA_AUTO_SHARESHOT:Ljava/lang/String; = "pref_camera_auto_shareshot_key"

.field protected static final KEY_CAMERA_BURST_SETTINGS:Ljava/lang/String; = "pref_camera_burst_settings_key"

.field protected static final KEY_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String; = "pref_new_camera_editable_shortcut_order"

.field protected static final KEY_CAMERA_EXPOSUREMETER:Ljava/lang/String; = "pref_camera_exposuremeter_key"

.field protected static final KEY_CAMERA_FLASH:Ljava/lang/String; = "pref_camera_flash_key"

.field protected static final KEY_CAMERA_FOCUS:Ljava/lang/String; = "pref_camera_focus_key"

.field protected static final KEY_CAMERA_HDR_INTENSITY_MODE:Ljava/lang/String; = "pref_camera_hdr_intensity_mode_key"

.field protected static final KEY_CAMERA_HDR_MODE:Ljava/lang/String; = "pref_camera_hdr_mode_key"

.field protected static final KEY_CAMERA_HDR_PICTURE_MODE:Ljava/lang/String; = "pref_camera_hdr_picture_mode_key"

.field protected static final KEY_CAMERA_ID:Ljava/lang/String; = "pref_camera_id_key"

.field protected static final KEY_CAMERA_ISO:Ljava/lang/String; = "pref_camera_iso_key"

.field protected static final KEY_CAMERA_NETWORK:Ljava/lang/String; = "pref_camera_network_key"

.field protected static final KEY_CAMERA_PREVIEW_FILE_RECEIVED:Ljava/lang/String; = "pref_camera_preview_file_received_key"

.field protected static final KEY_CAMERA_QUALITY:Ljava/lang/String; = "pref_camera_quality_key"

.field protected static final KEY_CAMERA_RESOLUTION:Ljava/lang/String; = "pref_camera_resolution_key"

.field protected static final KEY_CAMERA_REVIEW:Ljava/lang/String; = "pref_camera_review_key"

.field protected static final KEY_CAMERA_SHOOTANDSHARE:Ljava/lang/String; = "pref_camera_shootandshare_key"

.field protected static final KEY_CAMERA_SHUTTERSOUND:Ljava/lang/String; = "pref_camera_shuttersound_key"

.field protected static final KEY_CAMERA_SIDEMENU_ORDER:Ljava/lang/String; = "pref_new_camera_sidemenu_order"

.field protected static final KEY_CAMERA_USER_PROFILE:Ljava/lang/String; = "pref_camera_user_profile_key"

.field protected static final KEY_CAMERA_VOLUMEKEY:Ljava/lang/String; = "pref_camera_volumekey_key"

.field protected static final KEY_CHANGE_STORAGE_SETTING_DIALOG:Ljava/lang/String; = "pref_change_storage_setting_dialog"

.field protected static final KEY_EDITABLE_SHORTCUT_HELP_TEXT_DIALOG:Ljava/lang/String; = "pref_editable_shortcut_help_text_dialog"

.field protected static final KEY_FACE_ZOOM_HELP_TEXT_DIALOG:Ljava/lang/String; = "pref_face_zoom_help_text_dialog"

.field protected static final KEY_HDR_HELP_TEXT_DIALOG:Ljava/lang/String; = "pref_hdr_help_text_dialog"

.field protected static final KEY_PROFILR_NAME:Ljava/lang/String; = "pref_user_name"

.field protected static final KEY_SBEAM_HELP_TEXT_DIALOG:Ljava/lang/String; = "pref_sbeam_help_text_dialog"

.field protected static final KEY_SELECTED_MODE:Ljava/lang/String; = "pref_selected_mode_key"

.field protected static final KEY_SETUP_CONTEXTUAL_FILENAME:Ljava/lang/String; = "pref_setup_contextual_filename_key"

.field protected static final KEY_SETUP_GPS:Ljava/lang/String; = "pref_setup_gps_key"

.field protected static final KEY_SETUP_GUIDELINE:Ljava/lang/String; = "pref_setup_guideline_key"

.field protected static final KEY_SETUP_SELF_FLIP:Ljava/lang/String; = "pref_setup_self_flip_key"

.field protected static final KEY_SETUP_STORAGE:Ljava/lang/String; = "pref_setup_storage_key"

.field protected static final KEY_SINGLE_SHOT_BURST_HELP_TEXT_DIALOG:Ljava/lang/String; = "pref_single_shot_burst_help_text_dialog"

.field protected static final KEY_SNAPSHOT_LIMITATION_DIALOG:Ljava/lang/String; = "pref_snap_shot_limitation_dialog"

.field protected static final KEY_STORAGE_FOR_BURST_DIALOG:Ljava/lang/String; = "pref_storage_burst_dialog"

.field protected static final KEY_TURN_ON_BURST_SHOT_HELP_TEXT_DIALOG:Ljava/lang/String; = "pref_turn_on_burst_help_text_dialog"

.field protected static final KEY_VIDEO_DURATION:Ljava/lang/String; = "pref_camera_video_duration_key"

.field protected static final KEY_VOICE_INPUT_CONTROL:Ljava/lang/String; = "voice_input_control"

.field protected static final KEY_VOICE_INPUT_CONTROL_CAMERA:Ljava/lang/String; = "voice_input_control_camera"

.field public static final MENUID_ADJUST:I = 0x17

.field public static final MENUID_ADJUST_CONTRAST:I = 0x38

.field public static final MENUID_ADJUST_SATURATION:I = 0x39

.field public static final MENUID_ANTISHAKE:I = 0xd

.field public static final MENUID_ATTACH_MODE:I = 0x21

.field public static final MENUID_AUTOCONTRAST:I = 0xe

.field public static final MENUID_AUTO_SHARESHOT:I = 0x31

.field public static final MENUID_BACK:I = 0x1c

.field public static final MENUID_BURST_SETTINGS:I = 0x2f

.field public static final MENUID_CAMCORDER_ADJUST:I = 0x71

.field public static final MENUID_CAMCORDER_ADJUST_CONTRAST:I = 0x86

.field public static final MENUID_CAMCORDER_ADJUST_SATURATION:I = 0x87

.field public static final MENUID_CAMCORDER_ANTISHAKE:I = 0x7d

.field public static final MENUID_CAMCORDER_AUDIORECORDING:I = 0x77

.field public static final MENUID_CAMCORDER_AUTOCONTRAST:I = 0x6e

.field public static final MENUID_CAMCORDER_CONTEXTUAL_FILENAME:I = 0x81

.field public static final MENUID_CAMCORDER_CONTRAST:I = 0x72

.field public static final MENUID_CAMCORDER_DEFAULT_LAYOUT:I = 0x80

.field public static final MENUID_CAMCORDER_EFFECT:I = 0x6c

.field public static final MENUID_CAMCORDER_EFFECT_RECORDER:I = 0x7f

.field public static final MENUID_CAMCORDER_EXPOSUREVALUE:I = 0x6d

.field public static final MENUID_CAMCORDER_FLASHMODE:I = 0x67

.field public static final MENUID_CAMCORDER_FOCUSMODE:I = 0x69

.field public static final MENUID_CAMCORDER_GPS:I = 0x82

.field public static final MENUID_CAMCORDER_GUIDELINE:I = 0x7b

.field public static final MENUID_CAMCORDER_OUTDOOR_VISIBILITY:I = 0x7a

.field public static final MENUID_CAMCORDER_QUALITY:I = 0x6f

.field public static final MENUID_CAMCORDER_RECORDINGMODE:I = 0x65

.field public static final MENUID_CAMCORDER_RESET:I = 0x76

.field public static final MENUID_CAMCORDER_RESOLUTION:I = 0x68

.field public static final MENUID_CAMCORDER_REVIEW:I = 0x78

.field public static final MENUID_CAMCORDER_SATURATION:I = 0x73

.field public static final MENUID_CAMCORDER_SELF:I = 0x79

.field public static final MENUID_CAMCORDER_SETTINGS:I = 0x7c

.field public static final MENUID_CAMCORDER_SHARPNESS:I = 0x74

.field public static final MENUID_CAMCORDER_SPEED:I = 0x7e

.field public static final MENUID_CAMCORDER_STORAGE:I = 0x75

.field public static final MENUID_CAMCORDER_TIMELAPSE:I = 0x83

.field public static final MENUID_CAMCORDER_TIMER:I = 0x6a

.field public static final MENUID_CAMCORDER_VOICECOMMAND:I = 0x84

.field public static final MENUID_CAMCORDER_VOLUMEKEY:I = 0x85

.field public static final MENUID_CAMCORDER_WB:I = 0x6b

.field public static final MENUID_CAMCORDER_ZOOM:I = 0x70

.field public static final MENUID_CAM_SENSORMODE:I = 0x25

.field public static final MENUID_CONTEXTUAL_FILENAME:I = 0x30

.field public static final MENUID_CONTRAST:I = 0x18

.field public static final MENUID_DEFAULT_LAYOUT:I = 0x2e

.field public static final MENUID_DEVICELIST:I = 0x28

.field public static final MENUID_EFFECT:I = 0x8

.field public static final MENUID_EXPOSUREMETER:I = 0xb

.field public static final MENUID_EXPOSUREVALUE:I = 0x7

.field public static final MENUID_FLASHMODE:I = 0x3

.field public static final MENUID_FOCUSMODE:I = 0x5

.field public static final MENUID_GPS:I = 0x14

.field public static final MENUID_GUIDELINE:I = 0x13

.field public static final MENUID_HDR_INTENSITY:I = 0x36

.field public static final MENUID_HDR_MODE:I = 0x33

.field public static final MENUID_HDR_OPTION_MENU:I = 0x35

.field public static final MENUID_HDR_PICTURE:I = 0x37

.field public static final MENUID_IMAGEVIEWER:I = 0x1d

.field public static final MENUID_ISO:I = 0xa

.field public static final MENUID_LOCK:I = 0x22

.field public static final MENUID_MODE:I = 0x0

.field public static final MENUID_NETWORK:I = 0x2b

.field public static final MENUID_OUTDOOR_VISIBILITY:I = 0x23

.field public static final MENUID_PREVIEWFILERECEIVED:I = 0x2a

.field public static final MENUID_QUALITY:I = 0x10

.field public static final MENUID_RESET:I = 0x1e

.field public static final MENUID_RESOLUTION:I = 0x4

.field public static final MENUID_REVIEW:I = 0x11

.field public static final MENUID_SATURATION:I = 0x19

.field public static final MENUID_SCENEMODE:I = 0x2

.field public static final MENUID_SELECTPICTURE:I = 0x2c

.field public static final MENUID_SELF:I = 0x24

.field public static final MENUID_SELF_FLIP:I = 0x26

.field public static final MENUID_SETTINGS:I = 0x1b

.field public static final MENUID_SHARPNESS:I = 0x1a

.field public static final MENUID_SHOOTANDSHARE:I = 0x27

.field public static final MENUID_SHOOTINGMODE:I = 0x1

.field public static final MENUID_SHUTTER:I = 0x20

.field public static final MENUID_SHUTTERSOUND:I = 0x15

.field public static final MENUID_STORAGE:I = 0x16

.field public static final MENUID_TIMER:I = 0x6

.field public static final MENUID_USERPROFILE:I = 0x29

.field public static final MENUID_VINTAGE:I = 0x1f

.field public static final MENUID_VOICECOMMAND:I = 0x32

.field public static final MENUID_VOLUMEKEY:I = 0x34

.field public static final MENUID_WB:I = 0x9

.field public static final MENUID_ZOOM:I = 0x12

.field public static final MODE_CAMCORDER:I = 0x1

.field public static final MODE_CAMERA:I = 0x0

.field public static final NETWORK:I = 0x4

.field public static final NETWORK_ID:I = 0x3ea

.field public static final NO_VALUE:I = -0xffff

.field protected static final ON_DEVICE_HELP_SCREEN_DISABLE_OFF:Z = false

.field protected static final ON_DEVICE_HELP_SCREEN_DISABLE_ON:Z = true

.field public static final OUTDOOR_VISIBILITY_OFF:I = 0x0

.field public static final OUTDOOR_VISIBILITY_ON:I = 0x1

.field public static final PREVIEW_FILE_RECEIVED:I = 0x3

.field public static final PREVIEW_FILE_RECEIVED_OFF:I = 0x0

.field public static final PREVIEW_FILE_RECEIVED_ON:I = 0x1

.field public static final QUALITY_FINE:I = 0x1

.field public static final QUALITY_FOR_NZSL_BURST:I = 0x3

.field public static final QUALITY_NORMAL:I = 0x2

.field public static final QUALITY_SUPERFINE:I = 0x0

.field public static final RECORDINGMODE_EMAIL:I = 0x4

.field public static final RECORDINGMODE_FASTMOTION:I = 0x3

.field public static final RECORDINGMODE_MMS:I = 0x1

.field public static final RECORDINGMODE_NORMAL:I = 0x0

.field public static final RECORDINGMODE_SLOWMOTION:I = 0x2

.field public static final REVIEW_OFF:I = 0x0

.field public static final REVIEW_ON:I = 0x1

.field public static final SCENEMODE_AQUA:I = 0xe

.field public static final SCENEMODE_BACKLIGHT:I = 0xd

.field public static final SCENEMODE_BEACHSNOW:I = 0x6

.field public static final SCENEMODE_CANDLELIGHT:I = 0xc

.field public static final SCENEMODE_DAWNDUSK:I = 0x8

.field public static final SCENEMODE_FALLCOLOR:I = 0x9

.field public static final SCENEMODE_FIREWORK:I = 0xa

.field public static final SCENEMODE_INDOOR:I = 0x5

.field public static final SCENEMODE_LANDSCAPE:I = 0x2

.field public static final SCENEMODE_NIGHT:I = 0x3

.field public static final SCENEMODE_NONE:I = 0x0

.field public static final SCENEMODE_PORTRAIT:I = 0x1

.field public static final SCENEMODE_SPORTS:I = 0x4

.field public static final SCENEMODE_SUNSET:I = 0x7

.field public static final SCENEMODE_TEXT:I = 0xb

.field public static final SECUREMODE:I = 0x4

.field public static final SELF_OFF:I = 0x0

.field public static final SELF_ON:I = 0x1

.field public static final SHOOTANDSHARE_OFF:I = 0x0

.field public static final SHOOTANDSHARE_ON:I = 0x1

.field public static final SHOOTINGMODE_ACTION_SHOT:I = 0xa

.field public static final SHOOTINGMODE_ADD_ME:I = 0x9

.field public static final SHOOTINGMODE_AQUA:I = 0x1b

.field public static final SHOOTINGMODE_BEAUTY:I = 0x7

.field public static final SHOOTINGMODE_BEST:I = 0x18

.field public static final SHOOTINGMODE_BESTGROUP:I = 0x19

.field public static final SHOOTINGMODE_BUDDY_PHOTOSHARING:I = 0x12

.field public static final SHOOTINGMODE_BURST:I = 0x11

.field public static final SHOOTINGMODE_CARTOON:I = 0xd

.field public static final SHOOTINGMODE_CONTINUOUS:I = 0x1

.field public static final SHOOTINGMODE_FACE_SHOT:I = 0x10

.field public static final SHOOTINGMODE_FRAME:I = 0x5

.field public static final SHOOTINGMODE_HDR:I = 0xe

.field public static final SHOOTINGMODE_MOSAIC:I = 0x4

.field public static final SHOOTINGMODE_MULTI_FRAME:I = 0x17

.field public static final SHOOTINGMODE_PANORAMA:I = 0x2

.field public static final SHOOTINGMODE_SHOOTANDSHARE:I = 0xf

.field public static final SHOOTINGMODE_SINGLE:I = 0x0

.field public static final SHOOTINGMODE_SLOWMOTION:I = 0x1a

.field public static final SHOOTINGMODE_SMILE:I = 0x3

.field public static final SHOOTINGMODE_STOP_MOTION:I = 0xb

.field public static final SHOOTINGMODE_VINTAGE:I = 0x8

.field public static final SHUTTER_CAMCORDER:I = 0x1

.field public static final SHUTTER_CAMERA:I = 0x0

.field public static final SHUTTER_SOUND_OFF:I = 0x0

.field public static final SHUTTER_SOUND_ON:I = 0x1

.field public static final SPEED_2X_FASTER:I = 0x6

.field public static final SPEED_2X_SLOWER:I = 0x1

.field public static final SPEED_4X_FASTER:I = 0x7

.field public static final SPEED_4X_SLOWER:I = 0x2

.field public static final SPEED_8X_FASTER:I = 0x8

.field public static final SPEED_8X_SLOWER:I = 0x3

.field public static final SPEED_OFF:I = 0x0

.field public static final STORAGE_MMC:I = 0x1

.field public static final STORAGE_PHONE:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "CameraSettings"

.field public static final TIMELAPSE_10_SEC:I = 0x11

.field public static final TIMELAPSE_1_5_SEC:I = 0xc

.field public static final TIMELAPSE_1_SEC:I = 0xb

.field public static final TIMELAPSE_2_5_SEC:I = 0xe

.field public static final TIMELAPSE_2_SEC:I = 0xd

.field public static final TIMELAPSE_3_SEC:I = 0xf

.field public static final TIMELAPSE_5_SEC:I = 0x10

.field public static final TIMELAPSE_NONE:I = 0xa

.field public static final TIMER_10S:I = 0x3

.field public static final TIMER_2S:I = 0x1

.field public static final TIMER_5S:I = 0x2

.field public static final TIMER_OFF:I = 0x0

.field public static final USER_PROFILE:I = 0x2

.field public static final USER_PROFILE_ID:I = 0x3e9

.field public static final VOICECOMMAND_OFF:I = 0x0

.field public static final VOICECOMMAND_ON:I = 0x1

.field public static final VOLUMEKEY_SHUTTER:I = 0x1

.field public static final VOLUMEKEY_ZOOM:I = 0x0

.field public static final WB_AUTO:I = 0x0

.field public static final WB_CLOUDY:I = 0x2

.field public static final WB_DAYLIGHT:I = 0x1

.field public static final WB_FLUORESCENT:I = 0x4

.field public static final WB_HORIZON:I = 0x6

.field public static final WB_INCANDESCENT:I = 0x3

.field public static final WB_SHADE:I = 0x5

.field private static mCamcorderResolution:I

.field public static final mCamcorderShortcutMenuOrder:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final mCameraShortcutMenuOrder:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private DEFAULT_OUTDOOR_VISIBILITY:I

.field protected mActivityContext:Lcom/android/camera/AbstractCameraActivity;

.field private mAdjustContrast:I

.field private mAdjustSaturation:I

.field private mAntiShake:I

.field private mAttachEmailMode:Z

.field private mAttachMMSMode:Z

.field private mAttachMode:Z

.field private mAutoContrast:I

.field private mAutoShareShot:I

.field private mBackRecordingMode:I

.field public mBackShootingMode:I

.field private mBurstmode:I

.field private mCamcorderAdjustContrast:I

.field private mCamcorderAdjustSaturation:I

.field private mCamcorderAntiShake:I

.field private mCamcorderAudioRecording:I

.field private mCamcorderAutoContrast:I

.field private mCamcorderContrast:I

.field private mCamcorderEditableShortcutOrder:Ljava/lang/String;

.field private mCamcorderEffect:I

.field private mCamcorderExposureValue:I

.field private mCamcorderFlashMode:I

.field private mCamcorderFrontEffect:I

.field private mCamcorderOutdoorVisibility:I

.field private mCamcorderQuality:I

.field private mCamcorderResolutionChanged:Z

.field private mCamcorderSaturation:I

.field private mCamcorderSharpness:I

.field private mCamcorderSidemenuOrder:Ljava/lang/String;

.field private mCamcorderTimer:I

.field private mCamcorderZoomValue:I

.field private mCameraEditableShortcutOrder:Ljava/lang/String;

.field private mCameraId:I

.field private mCameraResolutionChanged:Z

.field private mCameraSidemenuOrder:Ljava/lang/String;

.field private mContextualFilename:I

.field private mContrast:I

.field private mDeviceName:Ljava/lang/String;

.field private mEffect:I

.field private mEffectRecorderType:I

.field private mExposureMeter:I

.field private mExposureValue:I

.field private mFlashMode:I

.field private mFlip:I

.field private mFocusMode:I

.field private mFrontEffect:I

.field private mFrontRecordingMode:I

.field public mFrontShootingMode:I

.field private mGPS:I

.field private mGuideLine:I

.field private mHDRmodeLevel:I

.field private mHDRmodePicture:I

.field private mISO:I

.field private mMaxMmsSize:J

.field private mMode:I

.field private mNetwork:I

.field protected mNotificationHandler:Lcom/android/camera/CameraSettings$NotificationHandler;

.field private mNumberOfCsShotCaptured:I

.field private mNumberOfCsShotSaved:I

.field protected mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/CameraSettings$OnCameraSettingsChangedObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mOutdoorVisibility:I

.field protected mPreferences:Lcom/android/camera/ComboPreferences;

.field private mPreviewFileReceived:I

.field public mPreviousShootingMode:I

.field protected mProp:Ljava/util/Properties;

.field private mQuality:I

.field private mRecordingMode:I

.field private mRecordingSpeed:I

.field private mRequestedRecordingSize:J

.field private mResolution:I

.field private mReview:I

.field private mSaturation:I

.field private mSceneMode:I

.field private mSecureMode:Z

.field private mSelectedMode:I

.field private mSelfMode:I

.field private mSelfToggle:Z

.field private mSharpness:I

.field private mShootAndShare:I

.field public mShootingMode:I

.field private mShutterSound:I

.field private mStorage:I

.field private mTimeLapse:I

.field private mTimer:I

.field private mUserName:Ljava/lang/String;

.field private mVideoDuration:I

.field private mVideocallPresetSelected:Z

.field private mVoiceCommand:I

.field private mVolumeKey:I

.field private mWB:I

.field private mZoomValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 656
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDefaultCamcorderSpeed()I

    move-result v0

    sput v0, Lcom/android/camera/CameraSettings;->DEFAULT_CAMCORDER_SPEED:I

    .line 657
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDefaultCamcorderFastMotion()I

    move-result v0

    sput v0, Lcom/android/camera/CameraSettings;->DEFAULT_CAMCORDER_FASTMOTION:I

    .line 703
    const-string v0, ""

    sput-object v0, Lcom/android/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    .line 704
    const-string v0, ""

    sput-object v0, Lcom/android/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    .line 705
    const-string v0, ""

    sput-object v0, Lcom/android/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    .line 706
    const-string v0, ""

    sput-object v0, Lcom/android/camera/CameraSettings;->DEFAULT_CAMCORDER_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    .line 756
    new-instance v0, Lcom/android/camera/CameraSettings$1;

    invoke-direct {v0}, Lcom/android/camera/CameraSettings$1;-><init>()V

    sput-object v0, Lcom/android/camera/CameraSettings;->mCameraShortcutMenuOrder:Ljava/util/LinkedHashMap;

    .line 799
    new-instance v0, Lcom/android/camera/CameraSettings$2;

    invoke-direct {v0}, Lcom/android/camera/CameraSettings$2;-><init>()V

    sput-object v0, Lcom/android/camera/CameraSettings;->mCamcorderShortcutMenuOrder:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/AbstractCameraActivity;)V
    .locals 5
    .parameter "activityContext"

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 851
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraSettings;->mObservers:Ljava/util/List;

    .line 179
    iput v1, p0, Lcom/android/camera/CameraSettings;->mMode:I

    .line 190
    iput v1, p0, Lcom/android/camera/CameraSettings;->mCameraId:I

    .line 195
    iput v1, p0, Lcom/android/camera/CameraSettings;->mSelfMode:I

    .line 225
    iput v1, p0, Lcom/android/camera/CameraSettings;->mShootingMode:I

    .line 226
    iput v1, p0, Lcom/android/camera/CameraSettings;->mFrontShootingMode:I

    .line 227
    iput v1, p0, Lcom/android/camera/CameraSettings;->mBackShootingMode:I

    .line 228
    iput v1, p0, Lcom/android/camera/CameraSettings;->mPreviousShootingMode:I

    .line 246
    iput v1, p0, Lcom/android/camera/CameraSettings;->mSceneMode:I

    .line 267
    iput v1, p0, Lcom/android/camera/CameraSettings;->mExposureValue:I

    .line 287
    iput v1, p0, Lcom/android/camera/CameraSettings;->mTimer:I

    .line 297
    iput v1, p0, Lcom/android/camera/CameraSettings;->mWB:I

    .line 320
    iput v1, p0, Lcom/android/camera/CameraSettings;->mEffect:I

    .line 321
    iput v1, p0, Lcom/android/camera/CameraSettings;->mFrontEffect:I

    .line 337
    iput v1, p0, Lcom/android/camera/CameraSettings;->mISO:I

    .line 354
    iput v1, p0, Lcom/android/camera/CameraSettings;->mAutoContrast:I

    .line 423
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/CameraSettings;->mDeviceName:Ljava/lang/String;

    .line 453
    iput v2, p0, Lcom/android/camera/CameraSettings;->mContrast:I

    .line 454
    iput v2, p0, Lcom/android/camera/CameraSettings;->mSaturation:I

    .line 455
    iput v2, p0, Lcom/android/camera/CameraSettings;->mSharpness:I

    .line 457
    iput v1, p0, Lcom/android/camera/CameraSettings;->mZoomValue:I

    .line 465
    iput v1, p0, Lcom/android/camera/CameraSettings;->mRecordingMode:I

    .line 466
    iput v1, p0, Lcom/android/camera/CameraSettings;->mBackRecordingMode:I

    .line 467
    iput v1, p0, Lcom/android/camera/CameraSettings;->mFrontRecordingMode:I

    .line 476
    iput v1, p0, Lcom/android/camera/CameraSettings;->DEFAULT_OUTDOOR_VISIBILITY:I

    .line 532
    iput v1, p0, Lcom/android/camera/CameraSettings;->mEffectRecorderType:I

    .line 541
    iput v2, p0, Lcom/android/camera/CameraSettings;->mAdjustContrast:I

    .line 549
    iput v2, p0, Lcom/android/camera/CameraSettings;->mAdjustSaturation:I

    .line 552
    iput v1, p0, Lcom/android/camera/CameraSettings;->mCamcorderExposureValue:I

    .line 553
    iput v1, p0, Lcom/android/camera/CameraSettings;->mCamcorderTimer:I

    .line 555
    iput v1, p0, Lcom/android/camera/CameraSettings;->mCamcorderAutoContrast:I

    .line 556
    iput v1, p0, Lcom/android/camera/CameraSettings;->mCamcorderEffect:I

    .line 557
    iput v1, p0, Lcom/android/camera/CameraSettings;->mCamcorderFrontEffect:I

    .line 559
    iput v2, p0, Lcom/android/camera/CameraSettings;->mCamcorderContrast:I

    .line 560
    iput v2, p0, Lcom/android/camera/CameraSettings;->mCamcorderSaturation:I

    .line 561
    iput v2, p0, Lcom/android/camera/CameraSettings;->mCamcorderSharpness:I

    .line 562
    iput v1, p0, Lcom/android/camera/CameraSettings;->mCamcorderZoomValue:I

    .line 563
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/CameraSettings;->mCamcorderAudioRecording:I

    .line 565
    iput v2, p0, Lcom/android/camera/CameraSettings;->mCamcorderAdjustContrast:I

    .line 566
    iput v2, p0, Lcom/android/camera/CameraSettings;->mCamcorderAdjustSaturation:I

    .line 568
    iput v1, p0, Lcom/android/camera/CameraSettings;->mNumberOfCsShotCaptured:I

    .line 569
    iput v1, p0, Lcom/android/camera/CameraSettings;->mNumberOfCsShotSaved:I

    .line 570
    iput-boolean v1, p0, Lcom/android/camera/CameraSettings;->mVideocallPresetSelected:Z

    .line 572
    iput-boolean v1, p0, Lcom/android/camera/CameraSettings;->mSecureMode:Z

    .line 573
    iput-boolean v1, p0, Lcom/android/camera/CameraSettings;->mAttachMode:Z

    .line 574
    iput-boolean v1, p0, Lcom/android/camera/CameraSettings;->mAttachMMSMode:Z

    .line 575
    iput-boolean v1, p0, Lcom/android/camera/CameraSettings;->mAttachEmailMode:Z

    .line 577
    iput-wide v3, p0, Lcom/android/camera/CameraSettings;->mRequestedRecordingSize:J

    .line 578
    iput-wide v3, p0, Lcom/android/camera/CameraSettings;->mMaxMmsSize:J

    .line 580
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/camera/CameraSettings;->mVideoDuration:I

    .line 582
    iget v0, p0, Lcom/android/camera/CameraSettings;->DEFAULT_OUTDOOR_VISIBILITY:I

    iput v0, p0, Lcom/android/camera/CameraSettings;->mOutdoorVisibility:I

    .line 583
    iget v0, p0, Lcom/android/camera/CameraSettings;->DEFAULT_OUTDOOR_VISIBILITY:I

    iput v0, p0, Lcom/android/camera/CameraSettings;->mCamcorderOutdoorVisibility:I

    .line 707
    sget-object v0, Lcom/android/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/CameraSettings;->mCameraSidemenuOrder:Ljava/lang/String;

    .line 708
    sget-object v0, Lcom/android/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/CameraSettings;->mCamcorderSidemenuOrder:Ljava/lang/String;

    .line 709
    sget-object v0, Lcom/android/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/CameraSettings;->mCameraEditableShortcutOrder:Ljava/lang/String;

    .line 710
    sget-object v0, Lcom/android/camera/CameraSettings;->DEFAULT_CAMCORDER_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/CameraSettings;->mCamcorderEditableShortcutOrder:Ljava/lang/String;

    .line 751
    iput-boolean v1, p0, Lcom/android/camera/CameraSettings;->mCameraResolutionChanged:Z

    .line 752
    iput-boolean v1, p0, Lcom/android/camera/CameraSettings;->mCamcorderResolutionChanged:Z

    .line 754
    iput-boolean v1, p0, Lcom/android/camera/CameraSettings;->mSelfToggle:Z

    .line 849
    new-instance v0, Lcom/android/camera/CameraSettings$NotificationHandler;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraSettings$NotificationHandler;-><init>(Lcom/android/camera/CameraSettings;)V

    iput-object v0, p0, Lcom/android/camera/CameraSettings;->mNotificationHandler:Lcom/android/camera/CameraSettings$NotificationHandler;

    .line 852
    iput-object p1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    .line 853
    return-void
.end method

.method public static getBeautyString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3535
    const-string v0, "face_beauty"

    return-object v0
.end method

.method public static getDefaultCamcorderFastMotion()I
    .locals 1

    .prologue
    .line 3135
    const/16 v0, 0xa

    return v0
.end method

.method public static getDefaultCamcorderSpeed()I
    .locals 1

    .prologue
    .line 3131
    const/4 v0, 0x0

    return v0
.end method

.method public static getDefaultVideoQuality(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "cameraId"
    .parameter "defaultQuality"

    .prologue
    .line 5197
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5198
    .local v0, quality:I
    invoke-static {p0, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5201
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static getEffectString(I)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 3619
    packed-switch p0, :pswitch_data_0

    .line 3651
    :pswitch_0
    const-string v0, "none"

    :goto_0
    return-object v0

    .line 3621
    :pswitch_1
    const-string v0, "none"

    goto :goto_0

    .line 3623
    :pswitch_2
    const-string v0, "negative"

    goto :goto_0

    .line 3625
    :pswitch_3
    const-string v0, "mono"

    goto :goto_0

    .line 3627
    :pswitch_4
    const-string v0, "sepia"

    goto :goto_0

    .line 3629
    :pswitch_5
    const-string v0, "monochrome"

    goto :goto_0

    .line 3631
    :pswitch_6
    const-string v0, "sketch"

    goto :goto_0

    .line 3633
    :pswitch_7
    const-string v0, "washed"

    goto :goto_0

    .line 3635
    :pswitch_8
    const-string v0, "posterize"

    goto :goto_0

    .line 3637
    :pswitch_9
    const-string v0, "solarize"

    goto :goto_0

    .line 3639
    :pswitch_a
    const-string v0, "vintage-cold"

    goto :goto_0

    .line 3641
    :pswitch_b
    const-string v0, "vintage-warm"

    goto :goto_0

    .line 3643
    :pswitch_c
    const-string v0, "point-blue"

    goto :goto_0

    .line 3645
    :pswitch_d
    const-string v0, "point-red-yellow"

    goto :goto_0

    .line 3647
    :pswitch_e
    const-string v0, "point-green"

    goto :goto_0

    .line 3649
    :pswitch_f
    const-string v0, "cartoonize"

    goto :goto_0

    .line 3619
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public static getExposuremeterString(I)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 3702
    packed-switch p0, :pswitch_data_0

    .line 3710
    const-string v0, "center"

    :goto_0
    return-object v0

    .line 3704
    :pswitch_0
    const-string v0, "center"

    goto :goto_0

    .line 3706
    :pswitch_1
    const-string v0, "spot"

    goto :goto_0

    .line 3708
    :pswitch_2
    const-string v0, "matrix"

    goto :goto_0

    .line 3702
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getFlashModeString(I)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 3580
    packed-switch p0, :pswitch_data_0

    .line 3590
    :pswitch_0
    const-string v0, "auto"

    :goto_0
    return-object v0

    .line 3582
    :pswitch_1
    const-string v0, "auto"

    goto :goto_0

    .line 3584
    :pswitch_2
    const-string v0, "on"

    goto :goto_0

    .line 3586
    :pswitch_3
    const-string v0, "off"

    goto :goto_0

    .line 3588
    :pswitch_4
    const-string v0, "torch"

    goto :goto_0

    .line 3580
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static getFocusModeString(I)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 3595
    packed-switch p0, :pswitch_data_0

    .line 3614
    const-string v0, "auto"

    :goto_0
    return-object v0

    .line 3598
    :pswitch_0
    const-string v0, "infinity"

    goto :goto_0

    .line 3602
    :pswitch_1
    const-string v0, "auto"

    goto :goto_0

    .line 3604
    :pswitch_2
    const-string v0, "macro"

    goto :goto_0

    .line 3606
    :pswitch_3
    const-string v0, "face-priority"

    goto :goto_0

    .line 3608
    :pswitch_4
    const-string v0, "continuous-video"

    goto :goto_0

    .line 3610
    :pswitch_5
    const-string v0, "continuous-picture"

    goto :goto_0

    .line 3612
    :pswitch_6
    const-string v0, "continuous-picture-macro"

    goto :goto_0

    .line 3595
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getIntPreference(Ljava/lang/String;I)I
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 1777
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 1779
    .end local p2
    :goto_0
    return p2

    .line 1778
    .restart local p2
    :catch_0
    move-exception v0

    .line 1779
    .local v0, e:Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public static getIsoString(I)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 3673
    packed-switch p0, :pswitch_data_0

    .line 3697
    :pswitch_0
    const-string v0, "auto"

    :goto_0
    return-object v0

    .line 3675
    :pswitch_1
    const-string v0, "auto"

    goto :goto_0

    .line 3677
    :pswitch_2
    const-string v0, "50"

    goto :goto_0

    .line 3679
    :pswitch_3
    const-string v0, "100"

    goto :goto_0

    .line 3681
    :pswitch_4
    const-string v0, "200"

    goto :goto_0

    .line 3683
    :pswitch_5
    const-string v0, "400"

    goto :goto_0

    .line 3685
    :pswitch_6
    const-string v0, "800"

    goto :goto_0

    .line 3687
    :pswitch_7
    const-string v0, "1600"

    goto :goto_0

    .line 3689
    :pswitch_8
    const-string v0, "3200"

    goto :goto_0

    .line 3691
    :pswitch_9
    const-string v0, "sports"

    goto :goto_0

    .line 3693
    :pswitch_a
    const-string v0, "night"

    goto :goto_0

    .line 3695
    :pswitch_b
    const-string v0, "movie"

    goto :goto_0

    .line 3673
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static getModeString(I)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 3446
    sparse-switch p0, :sswitch_data_0

    .line 3530
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 3448
    :sswitch_0
    const-string v0, "scene-mode"

    goto :goto_0

    .line 3450
    :sswitch_1
    const-string v0, "flash-mode"

    goto :goto_0

    .line 3452
    :sswitch_2
    const-string v0, "picture-size"

    goto :goto_0

    .line 3455
    :sswitch_3
    const-string v0, "focus-mode"

    goto :goto_0

    .line 3457
    :sswitch_4
    const-string v0, "exposure-compensation"

    goto :goto_0

    .line 3459
    :sswitch_5
    const-string v0, "effect"

    goto :goto_0

    .line 3461
    :sswitch_6
    const-string v0, "whitebalance"

    goto :goto_0

    .line 3463
    :sswitch_7
    const-string v0, "iso"

    goto :goto_0

    .line 3465
    :sswitch_8
    const-string v0, "jpeg-quality"

    goto :goto_0

    .line 3467
    :sswitch_9
    const-string v0, "zoom"

    goto :goto_0

    .line 3469
    :sswitch_a
    const-string v0, "metering"

    goto :goto_0

    .line 3471
    :sswitch_b
    const-string v0, "anti-shake"

    goto :goto_0

    .line 3473
    :sswitch_c
    const-string v0, "wdr"

    goto :goto_0

    .line 3476
    :sswitch_d
    const-string v0, "contrast"

    goto :goto_0

    .line 3479
    :sswitch_e
    const-string v0, "saturation"

    goto :goto_0

    .line 3481
    :sswitch_f
    const-string v0, "sharpness"

    goto :goto_0

    .line 3483
    :sswitch_10
    const-string v0, "flash-mode"

    goto :goto_0

    .line 3485
    :sswitch_11
    const-string v0, "video-size"

    goto :goto_0

    .line 3487
    :sswitch_12
    const-string v0, "exposure-compensation"

    goto :goto_0

    .line 3489
    :sswitch_13
    const-string v0, "effect"

    goto :goto_0

    .line 3491
    :sswitch_14
    const-string v0, "whitebalance"

    goto :goto_0

    .line 3493
    :sswitch_15
    const-string v0, "wdr"

    goto :goto_0

    .line 3495
    :sswitch_16
    const-string v0, "jpeg-quality"

    goto :goto_0

    .line 3497
    :sswitch_17
    const-string v0, "zoom"

    goto :goto_0

    .line 3499
    :sswitch_18
    const-string v0, "video-stabilization"

    goto :goto_0

    .line 3502
    :sswitch_19
    const-string v0, "contrast"

    goto :goto_0

    .line 3505
    :sswitch_1a
    const-string v0, "saturation"

    goto :goto_0

    .line 3507
    :sswitch_1b
    const-string v0, "sharpness"

    goto :goto_0

    .line 3509
    :sswitch_1c
    const-string v0, "cam_mode"

    goto :goto_0

    .line 3511
    :sswitch_1d
    const-string v0, "effect_recorder"

    goto :goto_0

    .line 3513
    :sswitch_1e
    const-string v0, "fast-fps-mode"

    goto :goto_0

    .line 3446
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x7 -> :sswitch_4
        0x8 -> :sswitch_5
        0x9 -> :sswitch_6
        0xa -> :sswitch_7
        0xb -> :sswitch_a
        0xd -> :sswitch_b
        0xe -> :sswitch_c
        0x10 -> :sswitch_8
        0x12 -> :sswitch_9
        0x18 -> :sswitch_d
        0x19 -> :sswitch_e
        0x1a -> :sswitch_f
        0x25 -> :sswitch_1c
        0x38 -> :sswitch_d
        0x39 -> :sswitch_e
        0x67 -> :sswitch_10
        0x68 -> :sswitch_11
        0x69 -> :sswitch_3
        0x6b -> :sswitch_14
        0x6c -> :sswitch_13
        0x6d -> :sswitch_12
        0x6e -> :sswitch_15
        0x6f -> :sswitch_16
        0x70 -> :sswitch_17
        0x72 -> :sswitch_19
        0x73 -> :sswitch_1a
        0x74 -> :sswitch_1b
        0x7d -> :sswitch_18
        0x7e -> :sswitch_1e
        0x7f -> :sswitch_1d
        0x86 -> :sswitch_19
        0x87 -> :sswitch_1a
    .end sparse-switch
.end method

.method public static getQualityValue(I)I
    .locals 1
    .parameter "value"

    .prologue
    const/16 v0, 0x64

    .line 3715
    packed-switch p0, :pswitch_data_0

    .line 3725
    :goto_0
    :pswitch_0
    return v0

    .line 3719
    :pswitch_1
    const/16 v0, 0x46

    goto :goto_0

    .line 3721
    :pswitch_2
    const/16 v0, 0x28

    goto :goto_0

    .line 3723
    :pswitch_3
    const/16 v0, 0x5a

    goto :goto_0

    .line 3715
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getRecordingFastFPSMode(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 3970
    const/4 v0, 0x0

    return v0
.end method

.method public static getSceneModeString(I)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 3543
    packed-switch p0, :pswitch_data_0

    .line 3575
    const-string v0, "auto"

    :goto_0
    return-object v0

    .line 3545
    :pswitch_0
    const-string v0, "auto"

    goto :goto_0

    .line 3547
    :pswitch_1
    const-string v0, "portrait"

    goto :goto_0

    .line 3549
    :pswitch_2
    const-string v0, "landscape"

    goto :goto_0

    .line 3551
    :pswitch_3
    const-string v0, "sports"

    goto :goto_0

    .line 3553
    :pswitch_4
    const-string v0, "sunset"

    goto :goto_0

    .line 3555
    :pswitch_5
    const-string v0, "dusk-dawn"

    goto :goto_0

    .line 3557
    :pswitch_6
    const-string v0, "fireworks"

    goto :goto_0

    .line 3559
    :pswitch_7
    const-string v0, "beach"

    goto :goto_0

    .line 3561
    :pswitch_8
    const-string v0, "party"

    goto :goto_0

    .line 3563
    :pswitch_9
    const-string v0, "night"

    goto :goto_0

    .line 3565
    :pswitch_a
    const-string v0, "fall-color"

    goto :goto_0

    .line 3567
    :pswitch_b
    const-string v0, "text"

    goto :goto_0

    .line 3569
    :pswitch_c
    const-string v0, "candlelight"

    goto :goto_0

    .line 3571
    :pswitch_d
    const-string v0, "back-light"

    goto :goto_0

    .line 3573
    :pswitch_e
    const-string v0, "aqua_scn"

    goto :goto_0

    .line 3543
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_9
        :pswitch_3
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_a
        :pswitch_6
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private getSupportedVideoQuality()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x5

    const/4 v2, 0x4

    .line 5205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5207
    .local v0, supported:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v1

    invoke-static {v1, v4}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5208
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5210
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v1

    invoke-static {v1, v3}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5211
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5213
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v1

    invoke-static {v1, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5214
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5217
    :cond_2
    return-object v0
.end method

.method public static getVideoSize()I
    .locals 1

    .prologue
    .line 2936
    sget v0, Lcom/android/camera/CameraSettings;->mCamcorderResolution:I

    return v0
.end method

.method public static getVintageString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3539
    const-string v0, "vintagemode"

    return-object v0
.end method

.method public static getWhitebalanceString(I)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 3656
    packed-switch p0, :pswitch_data_0

    .line 3668
    const-string v0, "auto"

    :goto_0
    return-object v0

    .line 3658
    :pswitch_0
    const-string v0, "auto"

    goto :goto_0

    .line 3660
    :pswitch_1
    const-string v0, "daylight"

    goto :goto_0

    .line 3662
    :pswitch_2
    const-string v0, "cloudy-daylight"

    goto :goto_0

    .line 3664
    :pswitch_3
    const-string v0, "incandescent"

    goto :goto_0

    .line 3666
    :pswitch_4
    const-string v0, "fluorescent"

    goto :goto_0

    .line 3656
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private initializeBackCamcorder()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 1461
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_new_camcorder_sidemenu_order"

    invoke-virtual {v1, v2, v6}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1462
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->setDefaultCamcorderSideMenuOrder()V

    .line 1464
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_new_camcorder_editable_shortcut_order"

    invoke-virtual {v1, v2, v6}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1465
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->setDefaultCamcorderEditableShortcutOrder()V

    .line 1467
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraSettings;->isSupportedBackCamcorderResolutionFeature(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1468
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getDefaultCamcorderResolution()I

    move-result v1

    sput v1, Lcom/android/camera/CameraSettings;->mCamcorderResolution:I

    .line 1469
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1470
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camcorder_resolution_key"

    sget v2, Lcom/android/camera/CameraSettings;->mCamcorderResolution:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1471
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1473
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    iput v5, p0, Lcom/android/camera/CameraSettings;->mMode:I

    .line 1474
    iput v3, p0, Lcom/android/camera/CameraSettings;->mRecordingMode:I

    .line 1475
    iput v3, p0, Lcom/android/camera/CameraSettings;->mCamcorderExposureValue:I

    .line 1476
    iput v3, p0, Lcom/android/camera/CameraSettings;->mCamcorderTimer:I

    .line 1477
    iput v4, p0, Lcom/android/camera/CameraSettings;->mCamcorderContrast:I

    .line 1478
    iput v4, p0, Lcom/android/camera/CameraSettings;->mCamcorderSaturation:I

    .line 1479
    iput v4, p0, Lcom/android/camera/CameraSettings;->mCamcorderSharpness:I

    .line 1480
    iput v3, p0, Lcom/android/camera/CameraSettings;->mCamcorderZoomValue:I

    .line 1481
    iput v5, p0, Lcom/android/camera/CameraSettings;->mCamcorderAudioRecording:I

    .line 1482
    const/16 v1, 0x3c

    iput v1, p0, Lcom/android/camera/CameraSettings;->mVideoDuration:I

    .line 1483
    iput v3, p0, Lcom/android/camera/CameraSettings;->mCamcorderAutoContrast:I

    .line 1484
    iput v4, p0, Lcom/android/camera/CameraSettings;->mCamcorderAdjustContrast:I

    .line 1485
    iput v4, p0, Lcom/android/camera/CameraSettings;->mCamcorderAdjustSaturation:I

    .line 1486
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    sput v1, Lcom/android/camera/CameraSettings;->mCamcorderResolution:I

    .line 1487
    iput v3, p0, Lcom/android/camera/CameraSettings;->mEffectRecorderType:I

    .line 1489
    iput v3, p0, Lcom/android/camera/CameraSettings;->mCamcorderOutdoorVisibility:I

    .line 1492
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCamcorderAutoContrast()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/AbstractCameraActivity;->onAutocontrastSelect(I)V

    .line 1493
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCamcorderEffect()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/AbstractCameraActivity;->onEffectMenuSelect(I)V

    .line 1500
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCamcorderAntishake()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/AbstractCameraActivity;->onAntishakeSelect(I)V

    .line 1503
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getMenuDimController()Lcom/android/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0x65

    iget v3, p0, Lcom/android/camera/CameraSettings;->mRecordingMode:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1505
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraSettings;->setCameraId(I)V

    .line 1506
    return-void
.end method

.method private initializeBackCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 864
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_new_camera_sidemenu_order"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 865
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->setDefaultCameraSideMenuOrder()V

    .line 867
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_new_camera_editable_shortcut_order"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 868
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->setDefaultCameraEditableShortcutOrder()V

    .line 877
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraFocusMode()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraFocusMode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 880
    :cond_2
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/camera/CameraSettings;->mFocusMode:I

    .line 881
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 882
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_focus_key"

    iget v2, p0, Lcom/android/camera/CameraSettings;->mFocusMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 883
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 887
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraSettings;->isSupportedBackCameraResolutionFeature(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 888
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v1

    iput v1, p0, Lcom/android/camera/CameraSettings;->mResolution:I

    .line 889
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 890
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_resolution_key"

    iget v2, p0, Lcom/android/camera/CameraSettings;->mResolution:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 891
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 897
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_4
    invoke-static {}, Lcom/android/camera/CheckMemory;->isStorageMounted()Z

    move-result v1

    if-nez v1, :cond_5

    .line 898
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraSettings;->setStorage(I)V

    .line 902
    :cond_5
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraSettings;->setCameraId(I)V

    .line 903
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->refreshButtonDimForCamera()V

    .line 904
    return-void
.end method

.method private initializeFrontCamcorder()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 1509
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_new_camcorder_sidemenu_order"

    invoke-virtual {v1, v2, v6}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1510
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->setDefaultCamcorderSideMenuOrder()V

    .line 1512
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_new_camcorder_editable_shortcut_order"

    invoke-virtual {v1, v2, v6}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1513
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->setDefaultCamcorderEditableShortcutOrder()V

    .line 1515
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraSettings;->isSupportedFrontCamcorderResolutionFeature(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1516
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getDefaultCamcorderResolution()I

    move-result v1

    sput v1, Lcom/android/camera/CameraSettings;->mCamcorderResolution:I

    .line 1517
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1518
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camcorder_resolution_key"

    sget v2, Lcom/android/camera/CameraSettings;->mCamcorderResolution:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1519
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1521
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    iput v5, p0, Lcom/android/camera/CameraSettings;->mMode:I

    .line 1522
    iput v3, p0, Lcom/android/camera/CameraSettings;->mRecordingMode:I

    .line 1523
    iput v3, p0, Lcom/android/camera/CameraSettings;->mCamcorderExposureValue:I

    .line 1524
    iput v3, p0, Lcom/android/camera/CameraSettings;->mCamcorderTimer:I

    .line 1525
    iput v4, p0, Lcom/android/camera/CameraSettings;->mCamcorderContrast:I

    .line 1526
    iput v4, p0, Lcom/android/camera/CameraSettings;->mCamcorderSaturation:I

    .line 1527
    iput v4, p0, Lcom/android/camera/CameraSettings;->mCamcorderSharpness:I

    .line 1528
    iput v3, p0, Lcom/android/camera/CameraSettings;->mCamcorderZoomValue:I

    .line 1529
    iput v5, p0, Lcom/android/camera/CameraSettings;->mCamcorderAudioRecording:I

    .line 1530
    const/16 v1, 0x3c

    iput v1, p0, Lcom/android/camera/CameraSettings;->mVideoDuration:I

    .line 1531
    iput v3, p0, Lcom/android/camera/CameraSettings;->mCamcorderAutoContrast:I

    .line 1532
    iput v4, p0, Lcom/android/camera/CameraSettings;->mCamcorderAdjustContrast:I

    .line 1533
    iput v4, p0, Lcom/android/camera/CameraSettings;->mCamcorderAdjustSaturation:I

    .line 1534
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    sput v1, Lcom/android/camera/CameraSettings;->mCamcorderResolution:I

    .line 1535
    iput v3, p0, Lcom/android/camera/CameraSettings;->mEffectRecorderType:I

    .line 1537
    iput v3, p0, Lcom/android/camera/CameraSettings;->mCamcorderOutdoorVisibility:I

    .line 1540
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCamcorderAutoContrast()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/AbstractCameraActivity;->onAutocontrastSelect(I)V

    .line 1541
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCamcorderEffect()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/AbstractCameraActivity;->onEffectMenuSelect(I)V

    .line 1548
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCamcorderAntishake()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/AbstractCameraActivity;->onAntishakeSelect(I)V

    .line 1551
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getMenuDimController()Lcom/android/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0x65

    iget v3, p0, Lcom/android/camera/CameraSettings;->mRecordingMode:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1553
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraSettings;->setCameraId(I)V

    .line 1554
    return-void
.end method

.method private initializeFrontCamera()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 907
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_new_camera_sidemenu_order"

    invoke-virtual {v1, v2, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 908
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->setDefaultCameraSideMenuOrder()V

    .line 910
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_new_camera_editable_shortcut_order"

    invoke-virtual {v1, v2, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 911
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->setDefaultCameraEditableShortcutOrder()V

    .line 915
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 921
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraSettings;->isSupportedFrontCameraResolutionFeature(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 922
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v1

    iput v1, p0, Lcom/android/camera/CameraSettings;->mResolution:I

    .line 923
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 924
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_resolution_key"

    iget v2, p0, Lcom/android/camera/CameraSettings;->mResolution:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 925
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 931
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    invoke-static {}, Lcom/android/camera/CheckMemory;->isStorageMounted()Z

    move-result v1

    if-nez v1, :cond_3

    .line 932
    invoke-virtual {p0, v3}, Lcom/android/camera/CameraSettings;->setStorage(I)V

    .line 936
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraSettings;->setCameraId(I)V

    .line 937
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->refreshButtonDimForCamera()V

    .line 938
    return-void
.end method

.method public static isGlobal(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 4363
    const-string v0, "pref_camera_id_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_setup_guideline_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_setup_gps_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_setup_storage_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_setup_self_flip_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_quality_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_videoquality_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_review_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_shuttersound_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_selected_mode_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_editable_shortcut_help_text_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_sbeam_help_text_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_single_shot_burst_help_text_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_turn_on_burst_help_text_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_hdr_help_text_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_change_storage_setting_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_face_zoom_help_text_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_burst_shot_guide_text_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_storage_burst_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_new_camera_sidemenu_order"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_new_camcorder_sidemenu_order"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_new_camera_editable_shortcut_order"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_new_camcorder_editable_shortcut_order"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_snap_shot_limitation_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_setup_contextual_filename_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_burst_settings_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_auto_shareshot_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_hdr_mode_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_hdr_intensity_mode_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_hdr_picture_mode_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_volumekey_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetCamcorderGlobalSettings()V
    .locals 2

    .prologue
    .line 4512
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getDefaultCamcorderQuality()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraSettings;->setCamcorderQuality(I)V

    .line 4513
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraSettings;->setCameraReview(I)V

    .line 4514
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getAttachMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/CameraSettings;->mRecordingMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4515
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->setDefaultCamcorderVideoDuration()V

    .line 4517
    :cond_0
    return-void
.end method

.method private resetCamcorderLocalSettings(I)V
    .locals 4
    .parameter "cameraId"

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4521
    invoke-virtual {p0, p1}, Lcom/android/camera/CameraSettings;->setCameraId(I)V

    .line 4523
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4524
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getDefaultCamcorderResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraSettings;->setCamcorderResolution(I)Z

    .line 4537
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4538
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camcorder;

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/Camcorder;->onRecordingModeMenuSelect(IZ)V

    .line 4541
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4542
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraSettings;->resetMaxVideoDuration(I)V

    .line 4543
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraSettings;->setCamcorderZoomValue(I)V

    .line 4544
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraSettings;->setCamcorderFlashMode(I)V

    .line 4545
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraSettings;->setCamcorderExposureValue(I)V

    .line 4546
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraSettings;->setCamcorderTimer(I)V

    .line 4547
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraSettings;->setWhiteBalance(I)V

    .line 4548
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraSettings;->setCamcorderEffect(I)V

    .line 4549
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraSettings;->setCamcorderAutoContrast(I)V

    .line 4554
    invoke-virtual {p0, v1}, Lcom/android/camera/CameraSettings;->setCamcorderContrast(I)V

    .line 4555
    invoke-virtual {p0, v1}, Lcom/android/camera/CameraSettings;->setCamcorderSaturation(I)V

    .line 4556
    invoke-virtual {p0, v1}, Lcom/android/camera/CameraSettings;->setCamcorderSharpness(I)V

    .line 4557
    invoke-virtual {p0, v3}, Lcom/android/camera/CameraSettings;->setCamcorderAudioRecording(I)V

    .line 4558
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraSettings;->setCamcorderOutdoorVisibility(I)V

    .line 4559
    invoke-virtual {p0, v3}, Lcom/android/camera/CameraSettings;->setCamcorderAudioRecording(I)V

    .line 4560
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getDefaultCamcorderAntishake()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraSettings;->setCamcorderAntishake(I)V

    .line 4563
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->setDefaultCamcorderSideMenuOrder()V

    .line 4564
    sget-object v0, Lcom/android/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraSettings;->setCamcorderSideMenuOrder(Ljava/lang/String;)V

    .line 4565
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->setDefaultCamcorderEditableShortcutOrder()V

    .line 4566
    sget-object v0, Lcom/android/camera/CameraSettings;->DEFAULT_CAMCORDER_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraSettings;->setCamcorderEditableShortcutOrder(Ljava/lang/String;)V

    .line 4569
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraSettings;->setChangeStorageSettingDialog(I)V

    .line 4571
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0, v2}, Lcom/android/camera/AbstractCameraActivity;->setEULAenable(Z)V

    .line 4573
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableOnDeviceHelp"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4574
    invoke-virtual {p0, v3}, Lcom/android/camera/CameraSettings;->setOnDeviceHelpScreen(Z)V

    .line 4578
    :goto_1
    iput v2, p0, Lcom/android/camera/CameraSettings;->mBackRecordingMode:I

    .line 4579
    iput v2, p0, Lcom/android/camera/CameraSettings;->mFrontRecordingMode:I

    .line 4580
    return-void

    .line 4525
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4526
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_0

    .line 4576
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraSettings;->setEditableShortcutHelpTextDialog(I)V

    goto :goto_1
.end method

.method private resetCameraGlobalSettings()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4409
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getDefaultCameraQuality()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraSettings;->setCameraQuality(I)V

    .line 4410
    invoke-virtual {p0, v1}, Lcom/android/camera/CameraSettings;->setCameraReview(I)V

    .line 4411
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraSettings;->setCameraShutterSound(I)V

    .line 4412
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getDefaultBurstMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraSettings;->setBurstMode(I)V

    .line 4414
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getDefaultAutoShareShotMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraSettings;->setAutoShareShotMode(I)V

    .line 4416
    invoke-virtual {p0, v1}, Lcom/android/camera/CameraSettings;->setCameraVoiceCommand(I)V

    .line 4418
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_ShutterSoundMenu"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4419
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->setShutterSoundToDefault()V

    .line 4421
    :cond_0
    return-void
.end method

.method private resetCameraLocalSettings(I)V
    .locals 4
    .parameter "cameraId"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 4425
    invoke-virtual {p0, p1}, Lcom/android/camera/CameraSettings;->setCameraId(I)V

    .line 4427
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraSettings;->setCameraResolution(I)Z

    .line 4428
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraSettings;->setShootingMode(I)V

    .line 4429
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraSettings;->setCameraZoomValue(I)V

    .line 4430
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraSettings;->setSceneMode(I)V

    .line 4431
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getDefaultCameraFlashMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 4432
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraSettings;->setCameraExposureValue(I)V

    .line 4433
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraSettings;->setTimer(I)V

    .line 4434
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraSettings;->setWhiteBalance(I)V

    .line 4435
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraSettings;->setCameraEffect(I)V

    .line 4436
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraSettings;->setCameraISO(I)V

    .line 4437
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraSettings;->setCameraExposureMeter(I)V

    .line 4438
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraSettings;->setCameraAntiShake(I)V

    .line 4439
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraSettings;->setCameraAutoContrast(I)V

    .line 4444
    invoke-virtual {p0, v1}, Lcom/android/camera/CameraSettings;->setCameraContrast(I)V

    .line 4445
    invoke-virtual {p0, v1}, Lcom/android/camera/CameraSettings;->setCameraSaturation(I)V

    .line 4446
    invoke-virtual {p0, v1}, Lcom/android/camera/CameraSettings;->setCameraSharpness(I)V

    .line 4447
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraSettings;->setCameraOutdoorVisibility(I)V

    .line 4451
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getDefaultCameraFocusMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 4454
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->setDefaultCameraSideMenuOrder()V

    .line 4455
    sget-object v0, Lcom/android/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraSettings;->setCameraSideMenuOrder(Ljava/lang/String;)V

    .line 4456
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->setDefaultCameraEditableShortcutOrder()V

    .line 4457
    sget-object v0, Lcom/android/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraSettings;->setCameraEditableShortcutOrder(Ljava/lang/String;)V

    .line 4460
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraSettings;->setShootAndShare(I)V

    .line 4461
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090132

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraSettings;->setUserName(Ljava/lang/String;)V

    .line 4465
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraSettings;->setHDRIntensityMode(I)V

    .line 4466
    invoke-virtual {p0, v3}, Lcom/android/camera/CameraSettings;->setHDRPictureMode(I)V

    .line 4467
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraSettings;->setHDRHelpTextDialog(I)V

    .line 4473
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraSettings;->setChangeStorageSettingDialog(I)V

    .line 4475
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0, v2}, Lcom/android/camera/AbstractCameraActivity;->setEULAenable(Z)V

    .line 4477
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableOnDeviceHelp"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4478
    invoke-virtual {p0, v3}, Lcom/android/camera/CameraSettings;->setOnDeviceHelpScreen(Z)V

    .line 4490
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraSettings;->setBurstShotsGuideTextDialog(I)V

    .line 4491
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraSettings;->setStorageForBurstDialog(I)V

    .line 4492
    iput v2, p0, Lcom/android/camera/CameraSettings;->mFrontShootingMode:I

    .line 4493
    iput v2, p0, Lcom/android/camera/CameraSettings;->mBackShootingMode:I

    .line 4499
    return-void

    .line 4481
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraSettings;->setSingleShotBurstHelpTextDialog(I)V

    .line 4485
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getBurstShot()I

    move-result v0

    if-nez v0, :cond_0

    .line 4486
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraSettings;->setshowTurnOnBurstShotHelpTextDialog(I)V

    goto :goto_0
.end method

.method private resetCommonGlobalSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4397
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraSettings;->setGuideline(I)V

    .line 4398
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_DisableGPSMenu"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4399
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraSettings;->setGPS(I)V

    .line 4402
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getDefaultStorage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraSettings;->setStorage(I)V

    .line 4403
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraSettings;->setSelfFlip(I)V

    .line 4404
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraSettings;->setContextualFilename(I)V

    .line 4405
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraSettings;->setVolumeKey(I)V

    .line 4406
    return-void
.end method

.method private setSelfMode(I)V
    .locals 3
    .parameter "selfMode"

    .prologue
    .line 1858
    iget v0, p0, Lcom/android/camera/CameraSettings;->mSelfMode:I

    if-eq v0, p1, :cond_0

    .line 1859
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraSelfMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    iput p1, p0, Lcom/android/camera/CameraSettings;->mSelfMode:I

    .line 1861
    iget v0, p0, Lcom/android/camera/CameraSettings;->mMode:I

    if-nez v0, :cond_1

    .line 1862
    const/16 v0, 0x24

    iget v1, p0, Lcom/android/camera/CameraSettings;->mSelfMode:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1867
    :cond_0
    :goto_0
    return-void

    .line 1864
    :cond_1
    const/16 v0, 0x79

    iget v1, p0, Lcom/android/camera/CameraSettings;->mSelfMode:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_0
.end method


# virtual methods
.method public androidBeamController(ZI)V
    .locals 6
    .parameter "mode"
    .parameter "mNfcState"

    .prologue
    const/4 v5, 0x5

    .line 5403
    iget-object v2, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 5405
    .local v0, mNfcAdapter:Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_1

    .line 5407
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    .line 5408
    .local v1, nState:I
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAndoridBeamEnabled nState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5410
    if-eqz p1, :cond_3

    .line 5411
    if-ne v5, v1, :cond_2

    .line 5412
    .line 5417
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5418
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 5431
    .end local v1           #nState:I
    :cond_1
    :goto_1
    return-void

    .line 5413
    .restart local v1       #nState:I
    :cond_2
    const/4 v2, 0x3

    if-eq v2, v1, :cond_0

    const/4 v2, 0x2

    if-eq v2, v1, :cond_0

    .line 5414
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 5415
    goto :goto_0

    .line 5421
    :cond_3
    if-eq v1, p2, :cond_1

    .line 5423
    const/4 v2, 0x1

    if-ne v2, p2, :cond_4

    .line 5424
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_1

    .line 5425
    :cond_4
    if-ne v5, p2, :cond_1

    .line 5426
    goto :goto_1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 4637
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->resetObservers()V

    .line 4638
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    .line 4639
    return-void
.end method

.method public getAntiBanding()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3349
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->isCSCUsedInManyCountriesForLatin()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3350
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getAntibandingByMCCForLatin()Ljava/lang/String;

    move-result-object v1

    const-string v2, "50hz"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3351
    const-string v1, "50hz"

    .line 3366
    :goto_0
    return-object v1

    .line 3353
    :cond_0
    const-string v1, "60hz"

    goto :goto_0

    .line 3356
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Camera_CameraFlicker"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3357
    .local v0, flicker:Ljava/lang/String;
    const-string v1, "50hz"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3358
    const-string v1, "50hz"

    goto :goto_0

    .line 3359
    :cond_2
    const-string v1, "60hz"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3360
    const-string v1, "60hz"

    goto :goto_0

    .line 3361
    :cond_3
    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3362
    const-string v1, "auto"

    goto :goto_0

    .line 3363
    :cond_4
    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3364
    const-string v1, "off"

    goto :goto_0

    .line 3366
    :cond_5
    const-string v1, "50hz"

    goto :goto_0
.end method

.method public getAntibandingByMCCForLatin()Ljava/lang/String;
    .locals 10

    .prologue
    .line 5232
    const-string v5, "000"

    .line 5233
    .local v5, mcc:Ljava/lang/String;
    const-string v7, "gsm.operator.numeric"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5235
    .local v6, numeric:Ljava/lang/String;
    const-string v2, "338"

    .line 5236
    .local v2, MCC_Jamaica:Ljava/lang/String;
    const-string v0, "722"

    .line 5237
    .local v0, MCC_Argentina:Ljava/lang/String;
    const-string v1, "730"

    .line 5238
    .local v1, MCC_Chile:Ljava/lang/String;
    const-string v3, "744"

    .line 5239
    .local v3, MCC_Paraguay:Ljava/lang/String;
    const-string v4, "748"

    .line 5241
    .local v4, MCC_Uruguay:Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    if-le v7, v8, :cond_0

    .line 5242
    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 5243
    const-string v7, "CameraSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAntibandingByMCCForLatin : mcc "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5246
    :cond_0
    const-string v7, "338"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "722"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "730"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "744"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "748"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 5248
    :cond_1
    const-string v7, "50hz"

    .line 5250
    :goto_0
    return-object v7

    :cond_2
    const-string v7, "60hz"

    goto :goto_0
.end method

.method public getAttachEmailMode()Z
    .locals 1

    .prologue
    .line 3275
    iget-boolean v0, p0, Lcom/android/camera/CameraSettings;->mAttachEmailMode:Z

    return v0
.end method

.method public getAttachMMSMode()Z
    .locals 1

    .prologue
    .line 3267
    iget-boolean v0, p0, Lcom/android/camera/CameraSettings;->mAttachMMSMode:Z

    return v0
.end method

.method public getAttachMode()Z
    .locals 1

    .prologue
    .line 3259
    iget-boolean v0, p0, Lcom/android/camera/CameraSettings;->mAttachMode:Z

    return v0
.end method

.method public getAutoShareShotMode()I
    .locals 3

    .prologue
    .line 2694
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_auto_shareshot_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getBurstMode()I
    .locals 3

    .prologue
    .line 3372
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_burst_settings_key"

    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getDefaultBurstMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getBurstShot()I
    .locals 5

    .prologue
    .line 1930
    iget-object v2, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    if-eqz v2, :cond_0

    .line 1931
    iget-object v2, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1932
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v2, "csc_pref_camera_burstshot_key"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1933
    .local v0, BurstShot:I
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBurstShot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    .end local v0           #BurstShot:I
    .end local v1           #cr:Landroid/content/ContentResolver;
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBurstShotsGuideTextDialog()I
    .locals 2

    .prologue
    .line 4848
    const-string v0, "pref_burst_shot_guide_text_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCamcorderAdjustContrast()I
    .locals 1

    .prologue
    .line 3190
    iget v0, p0, Lcom/android/camera/CameraSettings;->mCamcorderAdjustContrast:I

    return v0
.end method

.method public getCamcorderAdjustSaturation()I
    .locals 1

    .prologue
    .line 3214
    iget v0, p0, Lcom/android/camera/CameraSettings;->mCamcorderAdjustSaturation:I

    return v0
.end method

.method public getCamcorderAntishake()I
    .locals 3

    .prologue
    .line 2328
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camcorder_antishake_key"

    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getDefaultCamcorderAntishake()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCamcorderAudioRecording()I
    .locals 1

    .prologue
    .line 3238
    iget v0, p0, Lcom/android/camera/CameraSettings;->mCamcorderAudioRecording:I

    return v0
.end method

.method public getCamcorderAutoContrast()I
    .locals 1

    .prologue
    .line 2365
    iget v0, p0, Lcom/android/camera/CameraSettings;->mCamcorderAutoContrast:I

    return v0
.end method

.method public getCamcorderContrast()I
    .locals 1

    .prologue
    .line 3178
    iget v0, p0, Lcom/android/camera/CameraSettings;->mCamcorderContrast:I

    return v0
.end method

.method public getCamcorderEditableShortcutOrder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4716
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_new_camcorder_editable_shortcut_order"

    sget-object v2, Lcom/android/camera/CameraSettings;->DEFAULT_CAMCORDER_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCamcorderEffect()I
    .locals 1

    .prologue
    .line 2259
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2260
    iget v0, p0, Lcom/android/camera/CameraSettings;->mCamcorderFrontEffect:I

    .line 2262
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/CameraSettings;->mCamcorderEffect:I

    goto :goto_0
.end method

.method public getCamcorderExposureValue()I
    .locals 1

    .prologue
    .line 1987
    iget v0, p0, Lcom/android/camera/CameraSettings;->mCamcorderExposureValue:I

    return v0
.end method

.method public getCamcorderFlashMode()I
    .locals 3

    .prologue
    .line 2888
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camcorder_flash_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCamcorderModeResourceString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const v1, 0x7f09008d

    .line 4346
    packed-switch p1, :pswitch_data_0

    .line 4358
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 4348
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4350
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f09008e

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4352
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090090

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4354
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090091

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4356
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f09008f

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4346
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getCamcorderOutdoorVisibility()I
    .locals 1

    .prologue
    .line 3302
    iget v0, p0, Lcom/android/camera/CameraSettings;->mCamcorderOutdoorVisibility:I

    return v0
.end method

.method public getCamcorderQuality()I
    .locals 3

    .prologue
    .line 2974
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_videoquality_key"

    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getDefaultCamcorderQuality()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCamcorderRecordingMode()I
    .locals 1

    .prologue
    .line 2834
    iget v0, p0, Lcom/android/camera/CameraSettings;->mRecordingMode:I

    return v0
.end method

.method public getCamcorderResolution()I
    .locals 4

    .prologue
    .line 2918
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getSelfMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2922
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2924
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2925
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 2931
    :goto_0
    return v0

    .line 2927
    :cond_1
    const/16 v0, 0x13

    .local v0, resolutionId:I
    goto :goto_0

    .line 2931
    .end local v0           #resolutionId:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camcorder_resolution_key"

    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getDefaultCamcorderResolution()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getCamcorderResolutionChanged()Z
    .locals 1

    .prologue
    .line 5192
    iget-boolean v0, p0, Lcom/android/camera/CameraSettings;->mCamcorderResolutionChanged:Z

    return v0
.end method

.method public getCamcorderSaturation()I
    .locals 1

    .prologue
    .line 3202
    iget v0, p0, Lcom/android/camera/CameraSettings;->mCamcorderSaturation:I

    return v0
.end method

.method public getCamcorderSharpness()I
    .locals 1

    .prologue
    .line 3226
    iget v0, p0, Lcom/android/camera/CameraSettings;->mCamcorderSharpness:I

    return v0
.end method

.method public getCamcorderShortcutMenuID(Ljava/lang/String;)I
    .locals 1
    .parameter "shortcutname"

    .prologue
    .line 4742
    const-string v0, "selfcamcorder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4743
    const/16 v0, 0xbce

    .line 4785
    :goto_0
    return v0

    .line 4744
    :cond_0
    const-string v0, "recordingmode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4745
    const/16 v0, 0xbb9

    goto :goto_0

    .line 4746
    :cond_1
    const-string v0, "flashmode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4747
    const/16 v0, 0xbbb

    goto :goto_0

    .line 4748
    :cond_2
    const-string v0, "exposurevalue"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4749
    const/16 v0, 0xbc1

    goto :goto_0

    .line 4750
    :cond_3
    const-string v0, "timer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4751
    const/16 v0, 0xbbe

    goto :goto_0

    .line 4752
    :cond_4
    const-string v0, "effect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4753
    const/16 v0, 0xbc0

    goto :goto_0

    .line 4754
    :cond_5
    const-string v0, "resolution"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4755
    const/16 v0, 0xbbc

    goto :goto_0

    .line 4756
    :cond_6
    const-string v0, "whitebalance"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4757
    const/16 v0, 0xbbf

    goto :goto_0

    .line 4758
    :cond_7
    const-string v0, "outdoorvisibility"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4759
    const/16 v0, 0xbcf

    goto :goto_0

    .line 4760
    :cond_8
    const-string v0, "quality"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4761
    const/16 v0, 0xbc3

    goto :goto_0

    .line 4762
    :cond_9
    const-string v0, "speed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4763
    const/16 v0, 0xbd7

    goto :goto_0

    .line 4764
    :cond_a
    const-string v0, "guideline"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4765
    const/16 v0, 0xbcc

    goto :goto_0

    .line 4766
    :cond_b
    const-string v0, "audiorecording"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4767
    const/16 v0, 0xbcb

    goto/16 :goto_0

    .line 4768
    :cond_c
    const-string v0, "selfflip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4769
    const/16 v0, 0x33

    goto/16 :goto_0

    .line 4770
    :cond_d
    const-string v0, "storage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4771
    const/16 v0, 0xbc9

    goto/16 :goto_0

    .line 4772
    :cond_e
    const-string v0, "reset"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4773
    const/16 v0, 0xbca

    goto/16 :goto_0

    .line 4774
    :cond_f
    const-string v0, "effect_recorder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4775
    const/16 v0, 0xbd8

    goto/16 :goto_0

    .line 4776
    :cond_10
    const-string v0, "defaultlayout"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4777
    const/16 v0, 0xbda

    goto/16 :goto_0

    .line 4778
    :cond_11
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4779
    const/16 v0, 0xbdc

    goto/16 :goto_0

    .line 4780
    :cond_12
    const-string v0, "adjustcontrast"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4781
    const/16 v0, 0xbe0

    goto/16 :goto_0

    .line 4782
    :cond_13
    const-string v0, "adjustsaturation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4783
    const/16 v0, 0xbe1

    goto/16 :goto_0

    .line 4785
    :cond_14
    const/16 v0, 0x63

    goto/16 :goto_0
.end method

.method public getCamcorderSideMenuOrder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4685
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_new_camcorder_sidemenu_order"

    sget-object v2, Lcom/android/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCamcorderSlowMotion()I
    .locals 1

    .prologue
    .line 3016
    const/4 v0, 0x0

    return v0
.end method

.method public getCamcorderTimeLapse()I
    .locals 1

    .prologue
    .line 3046
    const/4 v0, 0x0

    return v0
.end method

.method public getCamcorderTimer()I
    .locals 1

    .prologue
    .line 2906
    iget v0, p0, Lcom/android/camera/CameraSettings;->mCamcorderTimer:I

    return v0
.end method

.method public getCamcorderVideoDuration()I
    .locals 2

    .prologue
    .line 1698
    const-string v0, "pref_camera_video_duration_key"

    const/16 v1, 0x3c

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCamcorderVideoDurationInMS()I
    .locals 3

    .prologue
    .line 1679
    const-string v1, "pref_camera_video_duration_key"

    const/16 v2, 0x3c

    invoke-direct {p0, v1, v2}, Lcom/android/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    .line 1681
    .local v0, microsec:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1685
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Message_MmsModeCaptureVideoMaxDuration"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 1686
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Message_MmsModeCaptureVideoMaxDuration"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    .line 1693
    :goto_0
    return v1

    .line 1689
    :cond_0
    const v1, 0x36ee80

    goto :goto_0

    .line 1693
    :cond_1
    const v1, 0xea60

    mul-int/2addr v1, v0

    goto :goto_0
.end method

.method public getCamcorderZoomValue()I
    .locals 1

    .prologue
    .line 2821
    iget v0, p0, Lcom/android/camera/CameraSettings;->mCamcorderZoomValue:I

    return v0
.end method

.method public getCameraAdjustContrast()I
    .locals 1

    .prologue
    .line 2750
    iget v0, p0, Lcom/android/camera/CameraSettings;->mAdjustContrast:I

    return v0
.end method

.method public getCameraAdjustSaturation()I
    .locals 1

    .prologue
    .line 2774
    iget v0, p0, Lcom/android/camera/CameraSettings;->mAdjustSaturation:I

    return v0
.end method

.method public getCameraAntiShake()I
    .locals 3

    .prologue
    .line 2311
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_antishake_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCameraAutoContrast()I
    .locals 1

    .prologue
    .line 2353
    iget v0, p0, Lcom/android/camera/CameraSettings;->mAutoContrast:I

    return v0
.end method

.method public getCameraContrast()I
    .locals 1

    .prologue
    .line 2738
    iget v0, p0, Lcom/android/camera/CameraSettings;->mContrast:I

    return v0
.end method

.method public getCameraEditableShortcutOrder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4700
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_new_camera_editable_shortcut_order"

    sget-object v2, Lcom/android/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCameraEffect()I
    .locals 1

    .prologue
    .line 2236
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2237
    iget v0, p0, Lcom/android/camera/CameraSettings;->mFrontEffect:I

    .line 2239
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/CameraSettings;->mEffect:I

    goto :goto_0
.end method

.method public getCameraExposureMeter()I
    .locals 3

    .prologue
    .line 2294
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_exposuremeter_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCameraExposureValue()I
    .locals 1

    .prologue
    .line 1975
    iget v0, p0, Lcom/android/camera/CameraSettings;->mExposureValue:I

    return v0
.end method

.method public getCameraFlashMode()I
    .locals 3

    .prologue
    .line 1941
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_flash_key"

    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getDefaultCameraFlashMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCameraFocusMode()I
    .locals 3

    .prologue
    .line 1999
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_focus_key"

    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getDefaultCameraFocusMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCameraISO()I
    .locals 1

    .prologue
    .line 2282
    iget v0, p0, Lcom/android/camera/CameraSettings;->mISO:I

    return v0
.end method

.method public getCameraId()I
    .locals 1

    .prologue
    .line 1784
    iget v0, p0, Lcom/android/camera/CameraSettings;->mCameraId:I

    return v0
.end method

.method public getCameraIdFromPreferences()I
    .locals 3

    .prologue
    .line 1789
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_id_key"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCameraOutdoorVisibility()I
    .locals 1

    .prologue
    .line 3283
    iget v0, p0, Lcom/android/camera/CameraSettings;->mOutdoorVisibility:I

    return v0
.end method

.method public getCameraQuality()I
    .locals 3

    .prologue
    .line 2377
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_quality_key"

    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getDefaultCameraQuality()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCameraResolution()I
    .locals 3

    .prologue
    .line 2036
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_resolution_key"

    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCameraResolutionChanged()Z
    .locals 1

    .prologue
    .line 5184
    iget-boolean v0, p0, Lcom/android/camera/CameraSettings;->mCameraResolutionChanged:Z

    return v0
.end method

.method public getCameraReview()I
    .locals 3

    .prologue
    .line 2413
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_review_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCameraSaturation()I
    .locals 1

    .prologue
    .line 2762
    iget v0, p0, Lcom/android/camera/CameraSettings;->mSaturation:I

    return v0
.end method

.method public getCameraSharpness()I
    .locals 1

    .prologue
    .line 2786
    iget v0, p0, Lcom/android/camera/CameraSettings;->mSharpness:I

    return v0
.end method

.method public getCameraShortcutMenuID(Ljava/lang/String;)I
    .locals 1
    .parameter "shortcutname"

    .prologue
    .line 4790
    const-string v0, "selfcamera"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4791
    const/16 v0, 0x24

    .line 4843
    :goto_0
    return v0

    .line 4792
    :cond_0
    const-string v0, "flashmode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4793
    const/4 v0, 0x3

    goto :goto_0

    .line 4794
    :cond_1
    const-string v0, "shootingmode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4795
    const/4 v0, 0x1

    goto :goto_0

    .line 4796
    :cond_2
    const-string v0, "scenemode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4797
    const/4 v0, 0x2

    goto :goto_0

    .line 4798
    :cond_3
    const-string v0, "exposurevalue"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4799
    const/4 v0, 0x7

    goto :goto_0

    .line 4800
    :cond_4
    const-string v0, "focusmode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4801
    const/4 v0, 0x5

    goto :goto_0

    .line 4802
    :cond_5
    const-string v0, "timer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4803
    const/4 v0, 0x6

    goto :goto_0

    .line 4804
    :cond_6
    const-string v0, "effect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4805
    const/16 v0, 0x8

    goto :goto_0

    .line 4806
    :cond_7
    const-string v0, "resolution"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4807
    const/4 v0, 0x4

    goto :goto_0

    .line 4808
    :cond_8
    const-string v0, "whitebalance"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4809
    const/16 v0, 0x9

    goto :goto_0

    .line 4810
    :cond_9
    const-string v0, "iso"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4811
    const/16 v0, 0xa

    goto :goto_0

    .line 4812
    :cond_a
    const-string v0, "exposuremeter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4813
    const/16 v0, 0xb

    goto :goto_0

    .line 4814
    :cond_b
    const-string v0, "outdoorvisibility"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4815
    const/16 v0, 0x23

    goto :goto_0

    .line 4816
    :cond_c
    const-string v0, "antishake"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4817
    const/16 v0, 0xd

    goto/16 :goto_0

    .line 4818
    :cond_d
    const-string v0, "autocontrast"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4819
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 4820
    :cond_e
    const-string v0, "blinkdetection"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4821
    const/16 v0, 0xf

    goto/16 :goto_0

    .line 4822
    :cond_f
    const-string v0, "quality"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4823
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 4824
    :cond_10
    const-string v0, "guideline"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4825
    const/16 v0, 0x13

    goto/16 :goto_0

    .line 4826
    :cond_11
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4827
    const/16 v0, 0x14

    goto/16 :goto_0

    .line 4828
    :cond_12
    const-string v0, "shuttersound"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4829
    const/16 v0, 0x15

    goto/16 :goto_0

    .line 4830
    :cond_13
    const-string v0, "selfflip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4831
    const/16 v0, 0x33

    goto/16 :goto_0

    .line 4832
    :cond_14
    const-string v0, "storage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 4833
    const/16 v0, 0x16

    goto/16 :goto_0

    .line 4834
    :cond_15
    const-string v0, "reset"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4835
    const/16 v0, 0x1e

    goto/16 :goto_0

    .line 4836
    :cond_16
    const-string v0, "defaultlayout"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4837
    const/16 v0, 0x3e

    goto/16 :goto_0

    .line 4838
    :cond_17
    const-string v0, "adjustcontrast"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 4839
    const/16 v0, 0x4a

    goto/16 :goto_0

    .line 4840
    :cond_18
    const-string v0, "adjustsaturation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 4841
    const/16 v0, 0x4b

    goto/16 :goto_0

    .line 4843
    :cond_19
    const/16 v0, 0x63

    goto/16 :goto_0
.end method

.method public getCameraShutterSound()I
    .locals 3

    .prologue
    .line 2721
    const/4 v0, 0x0

    return v0
.end method

.method public getCameraSideMenuOrder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4670
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_new_camera_sidemenu_order"

    sget-object v2, Lcom/android/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCameraVoiceCommand()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2455
    iget-object v2, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control_camera"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 2457
    const-string v1, "CameraSettings"

    const-string v2, "Voice command ON"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2461
    :goto_0
    return v0

    .line 2460
    :cond_0
    const-string v0, "CameraSettings"

    const-string v2, "Voice command OFF"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2461
    goto :goto_0
.end method

.method public getCameraZoomValue()I
    .locals 1

    .prologue
    .line 2798
    iget v0, p0, Lcom/android/camera/CameraSettings;->mZoomValue:I

    return v0
.end method

.method public getChangeStorageSettingDialog()I
    .locals 2

    .prologue
    .line 4998
    const-string v0, "pref_change_storage_setting_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getContextualFilename()I
    .locals 3

    .prologue
    .line 2623
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_setup_contextual_filename_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDefaultAutoShareShotMode()I
    .locals 1

    .prologue
    .line 2698
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->isAndroidBeamEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->isNfcEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2699
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->setAndroidBeamDisabled()V

    .line 2700
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultBurstMode()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3376
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getBurstShot()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 3379
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDefaultCamcorderAntishake()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2332
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2335
    :cond_0
    return v1
.end method

.method public getDefaultCamcorderQuality()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3120
    iget-object v2, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    if-eqz v2, :cond_0

    .line 3121
    iget-object v2, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3122
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "csc_pref_camera_videoquality_key"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 3123
    .local v1, quality:I
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultCamcorderQuality: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3126
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #quality:I
    :cond_0
    return v1
.end method

.method public getDefaultCamcorderResolution()I
    .locals 4

    .prologue
    .line 2940
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2941
    iget-object v2, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    if-eqz v2, :cond_0

    .line 2942
    iget-object v2, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2943
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "csc_pref_camcorder_resolution_key"

    const-string v3, "1920x1080"

    invoke-static {v3}, Lcom/android/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2949
    .end local v0           #cr:Landroid/content/ContentResolver;
    :goto_0
    return v1

    .line 2946
    :cond_0
    const-string v2, "1920x1080"

    invoke-static {v2}, Lcom/android/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 2949
    :cond_1
    const-string v2, "1280x720"

    invoke-static {v2}, Lcom/android/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getDefaultCameraFlashMode()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1945
    iget-object v2, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    if-eqz v2, :cond_0

    .line 1946
    iget-object v2, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1947
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "csc_pref_camera_flash_key"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1948
    .local v1, flashMode:I
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultCameraFlashMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #flashMode:I
    :cond_0
    return v1
.end method

.method public getDefaultCameraFocusMode()I
    .locals 1

    .prologue
    .line 2003
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2004
    const/4 v0, 0x1

    .line 2006
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDefaultCameraQuality()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3109
    iget-object v2, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    if-eqz v2, :cond_0

    .line 3110
    iget-object v2, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3111
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "csc_pref_camera_quality_key"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 3112
    .local v1, quality:I
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultCameraQuality: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3115
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #quality:I
    :cond_0
    return v1
.end method

.method public getDefaultCameraResolution()I
    .locals 1

    .prologue
    .line 2040
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2041
    const-string v0, "3264x2448"

    invoke-static {v0}, Lcom/android/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 2043
    :goto_0
    return v0

    :cond_0
    const-string v0, "1280x960"

    invoke-static {v0}, Lcom/android/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getDefaultStorage()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3139
    iget-object v2, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    if-eqz v2, :cond_0

    .line 3140
    iget-object v2, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3141
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "csc_pref_setup_storage_key"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 3144
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_0
    return v1
.end method

.method public getEditableShortcutHelpTextDialog()I
    .locals 2

    .prologue
    .line 4926
    const-string v0, "pref_editable_shortcut_help_text_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEffectRecorderType()I
    .locals 1

    .prologue
    .line 3337
    iget v0, p0, Lcom/android/camera/CameraSettings;->mEffectRecorderType:I

    return v0
.end method

.method public getEffectResourceString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const v1, 0x7f090037

    .line 3885
    packed-switch p1, :pswitch_data_0

    .line 3895
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 3887
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3889
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f09004b

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3891
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090049

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3893
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f09004a

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3885
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getExposureMeterResourceString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const v1, 0x7f090086

    .line 4201
    packed-switch p1, :pswitch_data_0

    .line 4220
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 4207
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4212
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090088

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4214
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090089

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getExposureValueResourceString(I)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 3860
    packed-switch p1, :pswitch_data_0

    .line 3880
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 3862
    :pswitch_0
    const/high16 v0, -0x4000

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3864
    :pswitch_1
    const/high16 v0, -0x4040

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3866
    :pswitch_2
    const/high16 v0, -0x4080

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3868
    :pswitch_3
    const/high16 v0, -0x4100

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3870
    :pswitch_4
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3872
    :pswitch_5
    const/high16 v0, 0x3f00

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3874
    :pswitch_6
    const/high16 v0, 0x3f80

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3876
    :pswitch_7
    const/high16 v0, 0x3fc0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3878
    :pswitch_8
    const/high16 v0, 0x4000

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3860
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getExposuremeterFromSceneMode(I)I
    .locals 1
    .parameter "sceneMode"

    .prologue
    .line 4642
    const/4 v0, 0x0

    .line 4644
    .local v0, nExposuremeter:I
    packed-switch p1, :pswitch_data_0

    .line 4666
    :goto_0
    :pswitch_0
    return v0

    .line 4658
    :pswitch_1
    const/4 v0, 0x2

    .line 4659
    goto :goto_0

    .line 4661
    :pswitch_2
    const/4 v0, 0x1

    .line 4662
    goto :goto_0

    .line 4644
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getFaceZoomHelpTextDialog()I
    .locals 2

    .prologue
    .line 4913
    const-string v0, "pref_face_zoom_help_text_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFlashModeResourceString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const v1, 0x7f090079

    .line 3765
    packed-switch p1, :pswitch_data_0

    .line 3773
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 3767
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3769
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f0900a1

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3771
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f0900a2

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3765
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getFocusModeResourceString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const v1, 0x7f09007a

    .line 3845
    packed-switch p1, :pswitch_data_0

    .line 3855
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 3847
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3849
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3851
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f09007b

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3853
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f09007c

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3845
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getForcedShutterSound()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1919
    iget-object v2, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    if-eqz v2, :cond_0

    .line 1920
    iget-object v2, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1921
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "csc_pref_camera_forced_shuttersound_key"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1922
    .local v1, forcedShutterSound:I
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getForcedShutterSound: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #forcedShutterSound:I
    :cond_0
    return v1
.end method

.method public getGPS()I
    .locals 3

    .prologue
    .line 2590
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_setup_gps_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getGuideline()I
    .locals 3

    .prologue
    .line 2394
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_setup_guideline_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHDRHelpTextDialog()I
    .locals 2

    .prologue
    .line 4882
    const-string v0, "pref_hdr_help_text_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHDRIntensityMode()I
    .locals 3

    .prologue
    .line 2660
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_hdr_intensity_mode_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHDRModeLevel()I
    .locals 3

    .prologue
    .line 2643
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_hdr_mode_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHDRPictureMode()I
    .locals 3

    .prologue
    .line 2677
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_hdr_picture_mode_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getISOResourceString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const v1, 0x7f09003b

    .line 3917
    packed-switch p1, :pswitch_data_0

    .line 3941
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 3919
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3921
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090042

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3923
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090043

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3925
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090044

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3927
    :pswitch_5
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090045

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3929
    :pswitch_6
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090046

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3931
    :pswitch_7
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090047

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3933
    :pswitch_8
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090048

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3935
    :pswitch_9
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090096

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3937
    :pswitch_a
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f09009c

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3939
    :pswitch_b
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3917
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public getMaxRecordingSize()J
    .locals 4

    .prologue
    .line 1743
    iget-wide v0, p0, Lcom/android/camera/CameraSettings;->mMaxMmsSize:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1744
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_MmsModeCaptureVideoMaxSize"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_MmsModeCaptureVideoMaxSize"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 1745
    :cond_0
    const-wide/32 v0, 0x49c00

    iput-wide v0, p0, Lcom/android/camera/CameraSettings;->mMaxMmsSize:J

    .line 1751
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/android/camera/CameraSettings;->mMaxMmsSize:J

    return-wide v0

    .line 1748
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_MmsModeCaptureVideoMaxSize"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/camera/CameraSettings;->mMaxMmsSize:J

    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 1823
    iget v0, p0, Lcom/android/camera/CameraSettings;->mMode:I

    return v0
.end method

.method public getModeResourceString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const v1, 0x7f090001

    .line 4238
    packed-switch p1, :pswitch_data_0

    .line 4244
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 4240
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4242
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4238
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getNetWork()I
    .locals 3

    .prologue
    .line 2543
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_network_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/CameraSettings;->mNetwork:I

    .line 2544
    iget v0, p0, Lcom/android/camera/CameraSettings;->mNetwork:I

    return v0
.end method

.method public getNfcState()I
    .locals 2

    .prologue
    .line 5384
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 5387
    .local v0, mNfcAdapter:Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_0

    .line 5388
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    .line 5390
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getNumberOfCsShotCaptured()I
    .locals 1

    .prologue
    .line 4611
    iget v0, p0, Lcom/android/camera/CameraSettings;->mNumberOfCsShotCaptured:I

    return v0
.end method

.method public getNumberOfCsShotSaved()I
    .locals 1

    .prologue
    .line 4619
    iget v0, p0, Lcom/android/camera/CameraSettings;->mNumberOfCsShotSaved:I

    return v0
.end method

.method public getOnDeviceHelpScreen()Z
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 4965
    const/4 v6, 0x0

    .line 4966
    .local v6, cursor:Landroid/database/Cursor;
    const-string v0, "content://com.samsung.helphub.provider/help_page_status/camera"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4968
    .local v1, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 4970
    .local v7, result:Z
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "displayed"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4973
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4974
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v8, :cond_2

    move v7, v8

    .line 4977
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 4978
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4981
    :cond_1
    return v7

    :cond_2
    move v7, v9

    .line 4974
    goto :goto_0

    .line 4977
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 4978
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public getOnOffResourceString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 4228
    packed-switch p1, :pswitch_data_0

    .line 4233
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f0900a2

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 4230
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f0900a1

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4228
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getPreferences()Lcom/android/camera/ComboPreferences;
    .locals 3

    .prologue
    .line 1759
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mPreferences:Lcom/android/camera/ComboPreferences;

    if-nez v0, :cond_0

    .line 1760
    new-instance v0, Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/CameraSettings;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 1761
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0, p0}, Lcom/android/camera/ComboPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1762
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraIdFromPreferences()I

    move-result v0

    iput v0, p0, Lcom/android/camera/CameraSettings;->mCameraId:I

    .line 1763
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    iget v2, p0, Lcom/android/camera/CameraSettings;->mCameraId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 1766
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mPreferences:Lcom/android/camera/ComboPreferences;

    return-object v0
.end method

.method public getPreviousShootingMode()I
    .locals 1

    .prologue
    .line 1882
    iget v0, p0, Lcom/android/camera/CameraSettings;->mPreviousShootingMode:I

    return v0
.end method

.method public getQualityResourceString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 3946
    packed-switch p1, :pswitch_data_0

    .line 3954
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f09007e

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 3949
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f09007f

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3951
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090037

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3946
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getRecordingSpeed()I
    .locals 3

    .prologue
    .line 2991
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRecordingSpeed recordingmode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2998
    const/4 v0, 0x0

    return v0
.end method

.method public getRecordingSpeedResourceId()I
    .locals 1

    .prologue
    .line 4132
    const v0, 0x7f090155

    return v0
.end method

.method public getRecordingTimeLapseResourceId()I
    .locals 1

    .prologue
    .line 4158
    const v0, 0x7f090155

    return v0
.end method

.method public getRequestedRecordingSize()J
    .locals 4

    .prologue
    .line 1721
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/CameraSettings;->mRecordingMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1722
    :cond_0
    iget-wide v0, p0, Lcom/android/camera/CameraSettings;->mRequestedRecordingSize:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 1723
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_MmsModeCaptureVideoMaxSize"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_MmsModeCaptureVideoMaxSize"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 1724
    :cond_1
    const-wide/32 v0, 0x49c00

    iput-wide v0, p0, Lcom/android/camera/CameraSettings;->mRequestedRecordingSize:J

    .line 1735
    :cond_2
    :goto_0
    iget-wide v0, p0, Lcom/android/camera/CameraSettings;->mRequestedRecordingSize:J

    return-wide v0

    .line 1726
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_MmsModeCaptureVideoMaxSize"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/camera/CameraSettings;->mRequestedRecordingSize:J

    goto :goto_0

    .line 1728
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getAttachEmailMode()Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/camera/CameraSettings;->mRecordingMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1729
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getAttachEmailMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1730
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camcorder;

    invoke-virtual {v0}, Lcom/android/camera/Camcorder;->getMaxFileSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/CameraSettings;->mRequestedRecordingSize:J

    goto :goto_0

    .line 1732
    :cond_6
    const-wide/32 v0, 0x3200000

    iput-wide v0, p0, Lcom/android/camera/CameraSettings;->mRequestedRecordingSize:J

    goto :goto_0
.end method

.method public getResolutionResourceString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const v1, 0x7f090076

    .line 3778
    packed-switch p1, :pswitch_data_0

    .line 3840
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 3780
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f09005a

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3782
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f09005b

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3784
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f09005c

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3786
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f09005d

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3788
    :pswitch_5
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f09005e

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3790
    :pswitch_6
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f09005f

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3792
    :pswitch_7
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090060

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3794
    :pswitch_8
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090061

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3796
    :pswitch_9
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090062

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3798
    :pswitch_a
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090063

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3800
    :pswitch_b
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090064

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3802
    :pswitch_c
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090065

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3804
    :pswitch_d
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090066

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3806
    :pswitch_e
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090067

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3808
    :pswitch_f
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090069

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3810
    :pswitch_10
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f09006a

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3812
    :pswitch_11
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f09006b

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3814
    :pswitch_12
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f09006c

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3816
    :pswitch_13
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f09006d

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3818
    :pswitch_14
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f09006e

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3820
    :pswitch_15
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090071

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3822
    :pswitch_16
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090073

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3824
    :pswitch_17
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f09006f

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3826
    :pswitch_18
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090070

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3828
    :pswitch_19
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090072

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3830
    :pswitch_1a
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090074

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3832
    :pswitch_1b
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090075

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3834
    :pswitch_1c
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3836
    :pswitch_1d
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090077

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3838
    :pswitch_1e
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090078

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3778
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_10
        :pswitch_11
        :pswitch_14
        :pswitch_16
        :pswitch_15
        :pswitch_0
        :pswitch_17
        :pswitch_19
        :pswitch_1a
        :pswitch_0
        :pswitch_1b
        :pswitch_1c
        :pswitch_4
        :pswitch_a
        :pswitch_0
        :pswitch_d
        :pswitch_13
        :pswitch_7
        :pswitch_e
        :pswitch_f
        :pswitch_12
        :pswitch_18
        :pswitch_3
        :pswitch_1d
        :pswitch_1e
    .end packed-switch
.end method

.method public getReviewResourceString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const v1, 0x7f0900a2

    .line 4312
    packed-switch p1, :pswitch_data_0

    .line 4318
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 4314
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4316
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f0900a1

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4312
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSbeamHelpTextDialog()I
    .locals 2

    .prologue
    .line 4939
    const-string v0, "pref_sbeam_help_text_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSceneMode()I
    .locals 1

    .prologue
    .line 1907
    iget v0, p0, Lcom/android/camera/CameraSettings;->mSceneMode:I

    return v0
.end method

.method public getSceneModeResourceString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const v1, 0x7f090093

    .line 3730
    packed-switch p1, :pswitch_data_0

    .line 3760
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 3732
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3734
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090094

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3736
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090095

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3738
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090096

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3740
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090099

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3742
    :pswitch_5
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f09009a

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3744
    :pswitch_6
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f09009d

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3746
    :pswitch_7
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090098

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3748
    :pswitch_8
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090097

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3750
    :pswitch_9
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f09009c

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3752
    :pswitch_a
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f09009b

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3754
    :pswitch_b
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f09009e

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3756
    :pswitch_c
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f09009f

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3758
    :pswitch_d
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f0900a0

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3730
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_9
        :pswitch_3
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_a
        :pswitch_6
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public getSecureMode()Z
    .locals 1

    .prologue
    .line 3251
    iget-boolean v0, p0, Lcom/android/camera/CameraSettings;->mSecureMode:Z

    return v0
.end method

.method public getSelectedMode()I
    .locals 3

    .prologue
    .line 1841
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_selected_mode_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSelfFlip()I
    .locals 3

    .prologue
    .line 3320
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_setup_self_flip_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSelfMode()I
    .locals 1

    .prologue
    .line 1837
    iget v0, p0, Lcom/android/camera/CameraSettings;->mSelfMode:I

    return v0
.end method

.method public getSelfToggle()Z
    .locals 1

    .prologue
    .line 1870
    iget-boolean v0, p0, Lcom/android/camera/CameraSettings;->mSelfToggle:Z

    return v0
.end method

.method public getSettingValue(I)I
    .locals 7
    .parameter "menuid"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 5011
    packed-switch p1, :pswitch_data_0

    .line 5175
    :pswitch_0
    const v4, -0xffff

    :cond_0
    :goto_0
    return v4

    .line 5013
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getMode()I

    move-result v4

    goto :goto_0

    .line 5015
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v4

    goto :goto_0

    .line 5017
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getSceneMode()I

    move-result v4

    goto :goto_0

    .line 5019
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraFlashMode()I

    move-result v4

    goto :goto_0

    .line 5021
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraResolution()I

    move-result v4

    goto :goto_0

    .line 5023
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraFocusMode()I

    move-result v4

    goto :goto_0

    .line 5025
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getTimer()I

    move-result v4

    goto :goto_0

    .line 5027
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraExposureValue()I

    move-result v4

    goto :goto_0

    .line 5029
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraEffect()I

    move-result v4

    goto :goto_0

    .line 5031
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getWhiteBalance()I

    move-result v4

    goto :goto_0

    .line 5033
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraISO()I

    move-result v4

    goto :goto_0

    .line 5035
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraExposureMeter()I

    move-result v4

    goto :goto_0

    .line 5037
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraAntiShake()I

    move-result v4

    goto :goto_0

    .line 5039
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraAutoContrast()I

    move-result v4

    goto :goto_0

    .line 5041
    :pswitch_f
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraAdjustContrast()I

    move-result v4

    goto :goto_0

    .line 5043
    :pswitch_10
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraAdjustSaturation()I

    move-result v4

    goto :goto_0

    .line 5045
    :pswitch_11
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraQuality()I

    move-result v4

    goto :goto_0

    .line 5047
    :pswitch_12
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraReview()I

    move-result v4

    goto :goto_0

    .line 5049
    :pswitch_13
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraZoomValue()I

    move-result v4

    goto :goto_0

    .line 5052
    :pswitch_14
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getGuideline()I

    move-result v4

    goto :goto_0

    .line 5055
    :pswitch_15
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getGPS()I

    move-result v4

    goto :goto_0

    .line 5057
    :pswitch_16
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getSelfFlip()I

    move-result v4

    goto :goto_0

    .line 5059
    :pswitch_17
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getEffectRecorderType()I

    move-result v4

    goto :goto_0

    .line 5061
    :pswitch_18
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraShutterSound()I

    move-result v4

    goto :goto_0

    .line 5063
    :pswitch_19
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getStorage()I

    move-result v4

    goto :goto_0

    .line 5066
    :pswitch_1a
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraContrast()I

    move-result v4

    goto/16 :goto_0

    .line 5068
    :pswitch_1b
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraSaturation()I

    move-result v4

    goto/16 :goto_0

    .line 5070
    :pswitch_1c
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraSharpness()I

    move-result v4

    goto/16 :goto_0

    .line 5080
    :pswitch_1d
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraOutdoorVisibility()I

    move-result v4

    goto/16 :goto_0

    .line 5082
    :pswitch_1e
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getSelfMode()I

    move-result v4

    goto/16 :goto_0

    .line 5084
    :pswitch_1f
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getSelfMode()I

    move-result v4

    goto/16 :goto_0

    .line 5087
    :pswitch_20
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v4

    goto/16 :goto_0

    .line 5090
    :pswitch_21
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCamcorderFlashMode()I

    move-result v4

    goto/16 :goto_0

    .line 5092
    :pswitch_22
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCamcorderResolution()I

    move-result v4

    goto/16 :goto_0

    .line 5095
    :pswitch_23
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCamcorderTimer()I

    move-result v4

    goto/16 :goto_0

    .line 5097
    :pswitch_24
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getWhiteBalance()I

    move-result v4

    goto/16 :goto_0

    .line 5099
    :pswitch_25
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCamcorderEffect()I

    move-result v4

    goto/16 :goto_0

    .line 5101
    :pswitch_26
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCamcorderExposureValue()I

    move-result v4

    goto/16 :goto_0

    .line 5103
    :pswitch_27
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCamcorderAutoContrast()I

    move-result v4

    goto/16 :goto_0

    .line 5105
    :pswitch_28
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCamcorderAdjustContrast()I

    move-result v4

    goto/16 :goto_0

    .line 5107
    :pswitch_29
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCamcorderAdjustSaturation()I

    move-result v4

    goto/16 :goto_0

    .line 5109
    :pswitch_2a
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCamcorderAntishake()I

    move-result v4

    goto/16 :goto_0

    .line 5111
    :pswitch_2b
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCamcorderQuality()I

    move-result v4

    goto/16 :goto_0

    .line 5113
    :pswitch_2c
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getRecordingSpeed()I

    move-result v4

    goto/16 :goto_0

    .line 5115
    :pswitch_2d
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCamcorderZoomValue()I

    move-result v4

    goto/16 :goto_0

    .line 5118
    :pswitch_2e
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCamcorderContrast()I

    move-result v4

    goto/16 :goto_0

    .line 5120
    :pswitch_2f
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCamcorderSaturation()I

    move-result v4

    goto/16 :goto_0

    .line 5122
    :pswitch_30
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCamcorderSharpness()I

    move-result v4

    goto/16 :goto_0

    .line 5125
    :pswitch_31
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCamcorderAudioRecording()I

    move-result v4

    goto/16 :goto_0

    .line 5127
    :pswitch_32
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraReview()I

    move-result v4

    goto/16 :goto_0

    .line 5130
    :pswitch_33
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraVoiceCommand()I

    move-result v4

    goto/16 :goto_0

    .line 5132
    :pswitch_34
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCamcorderOutdoorVisibility()I

    move-result v4

    goto/16 :goto_0

    .line 5134
    :pswitch_35
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getStorage()I

    move-result v4

    goto/16 :goto_0

    .line 5137
    :pswitch_36
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v3

    const/16 v6, 0xf

    if-ne v3, v6, :cond_1

    move v3, v4

    :goto_1
    move v4, v3

    goto/16 :goto_0

    :cond_1
    move v3, v5

    goto :goto_1

    .line 5139
    :pswitch_37
    const/4 v0, 0x1

    .line 5141
    .local v0, b:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v3, Lcom/android/camera/Camera;

    iget-object v3, v3, Lcom/android/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v3, :cond_2

    .line 5142
    iget-object v3, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v3, Lcom/android/camera/Camera;

    iget-object v3, v3, Lcom/android/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v3}, Lcom/samsung/shareshot/IShareShotService;->getAutoPreview()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 5147
    :cond_2
    :goto_2
    if-nez v0, :cond_0

    move v4, v5

    goto/16 :goto_0

    .line 5143
    :catch_0
    move-exception v1

    .line 5145
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 5149
    .end local v0           #b:Z
    .end local v1           #e:Landroid/os/RemoteException;
    :pswitch_38
    const/4 v2, 0x1

    .line 5151
    .local v2, f:Z
    :try_start_1
    iget-object v3, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v3, Lcom/android/camera/Camera;

    iget-object v3, v3, Lcom/android/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v3, :cond_3

    .line 5152
    iget-object v3, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v3, Lcom/android/camera/Camera;

    iget-object v3, v3, Lcom/android/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v3}, Lcom/samsung/shareshot/IShareShotService;->isAutoStart()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 5157
    :cond_3
    :goto_3
    if-nez v2, :cond_0

    move v4, v5

    goto/16 :goto_0

    .line 5153
    :catch_1
    move-exception v1

    .line 5155
    .restart local v1       #e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 5159
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #f:Z
    :pswitch_39
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getBurstMode()I

    move-result v4

    goto/16 :goto_0

    .line 5162
    :pswitch_3a
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getContextualFilename()I

    move-result v4

    goto/16 :goto_0

    .line 5165
    :pswitch_3b
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getVolumeKey()I

    move-result v4

    goto/16 :goto_0

    .line 5167
    :pswitch_3c
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getAutoShareShotMode()I

    move-result v4

    goto/16 :goto_0

    .line 5169
    :pswitch_3d
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getHDRModeLevel()I

    move-result v4

    goto/16 :goto_0

    .line 5171
    :pswitch_3e
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getHDRIntensityMode()I

    move-result v4

    goto/16 :goto_0

    .line 5173
    :pswitch_3f
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getHDRPictureMode()I

    move-result v4

    goto/16 :goto_0

    .line 5011
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_18
        :pswitch_19
        :pswitch_0
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1d
        :pswitch_1e
        :pswitch_0
        :pswitch_16
        :pswitch_36
        :pswitch_0
        :pswitch_0
        :pswitch_37
        :pswitch_38
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_39
        :pswitch_3a
        :pswitch_3c
        :pswitch_33
        :pswitch_3d
        :pswitch_3b
        :pswitch_0
        :pswitch_3e
        :pswitch_3f
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_20
        :pswitch_0
        :pswitch_21
        :pswitch_22
        :pswitch_0
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_2b
        :pswitch_2d
        :pswitch_0
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_35
        :pswitch_0
        :pswitch_31
        :pswitch_32
        :pswitch_1f
        :pswitch_34
        :pswitch_14
        :pswitch_0
        :pswitch_2a
        :pswitch_2c
        :pswitch_17
        :pswitch_0
        :pswitch_3a
        :pswitch_15
        :pswitch_0
        :pswitch_33
        :pswitch_3b
        :pswitch_28
        :pswitch_29
    .end packed-switch
.end method

.method public getShootAndShare()I
    .locals 3

    .prologue
    .line 2510
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_shootandshare_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/CameraSettings;->mShootAndShare:I

    .line 2511
    iget v0, p0, Lcom/android/camera/CameraSettings;->mShootAndShare:I

    return v0
.end method

.method public getShootingMode()I
    .locals 1

    .prologue
    .line 1878
    iget v0, p0, Lcom/android/camera/CameraSettings;->mShootingMode:I

    return v0
.end method

.method public getShootingModeResourceString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const v1, 0x7f090025

    .line 4249
    packed-switch p1, :pswitch_data_0

    .line 4292
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 4251
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4253
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090026

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4255
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090028

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4257
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090029

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4259
    :pswitch_5
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f09002b

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4261
    :pswitch_6
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f09002c

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4263
    :pswitch_7
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f09002d

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4265
    :pswitch_8
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f09002e

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4267
    :pswitch_9
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f09002f

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4269
    :pswitch_a
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090030

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4271
    :pswitch_b
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090032

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4273
    :pswitch_c
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090031

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4278
    :pswitch_d
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090033

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4280
    :pswitch_e
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090034

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4282
    :pswitch_f
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f09007c

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4284
    :pswitch_10
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090036

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4286
    :pswitch_11
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090142

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4288
    :pswitch_12
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090145

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4290
    :pswitch_13
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f0901a1

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_f
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_13
    .end packed-switch
.end method

.method public getShortcutMenuID(Ljava/lang/String;)I
    .locals 2
    .parameter "shortcutname"

    .prologue
    .line 4731
    const/16 v0, 0x63

    .line 4732
    .local v0, menuid:I
    iget v1, p0, Lcom/android/camera/CameraSettings;->mMode:I

    if-nez v1, :cond_0

    .line 4733
    invoke-virtual {p0, p1}, Lcom/android/camera/CameraSettings;->getCameraShortcutMenuID(Ljava/lang/String;)I

    move-result v0

    .line 4737
    :goto_0
    return v0

    .line 4735
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/CameraSettings;->getCamcorderShortcutMenuID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getShutterSoundResourceString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const v1, 0x7f0900a1

    .line 4323
    packed-switch p1, :pswitch_data_0

    .line 4329
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 4325
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f0900a2

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4327
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4323
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSingleShotBurstHelpTextDialog()I
    .locals 2

    .prologue
    .line 4874
    const-string v0, "pref_single_shot_burst_help_text_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSlowMotionTimescale()I
    .locals 1

    .prologue
    .line 4108
    const/4 v0, 0x1

    return v0
.end method

.method public getSnapshotLimitationDialog()I
    .locals 2

    .prologue
    .line 4952
    const-string v0, "pref_snap_shot_limitation_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSpeedResourceString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 4197
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090155

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStorage()I
    .locals 3

    .prologue
    .line 3149
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_setup_storage_key"

    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getDefaultStorage()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getStorageForBurstDialog()I
    .locals 2

    .prologue
    .line 4861
    const-string v0, "pref_storage_burst_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getStorageResourceString(I)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 4334
    const v0, 0x7f09008b

    .line 4335
    .local v0, storageString:I
    packed-switch p1, :pswitch_data_0

    .line 4341
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1, v0}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 4337
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1, v0}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4339
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v2, 0x7f09008c

    invoke-virtual {v1, v2}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4335
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getTimeLapseFps(D)D
    .locals 0
    .parameter "sensorInputFps"

    .prologue
    .line 4091
    return-wide p1
.end method

.method public getTimer()I
    .locals 1

    .prologue
    .line 2024
    iget v0, p0, Lcom/android/camera/CameraSettings;->mTimer:I

    return v0
.end method

.method public getTimerResourceString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const v1, 0x7f0900a2

    .line 4297
    packed-switch p1, :pswitch_data_0

    .line 4307
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 4299
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4301
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090080

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4303
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090081

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4305
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090082

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4297
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getTopActivityName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 5434
    iget-object v3, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 5435
    .local v1, am:Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 5436
    .local v0, Info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 5438
    .local v2, topActivity:Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getUserName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2529
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_user_name"

    iget-object v2, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090132

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraSettings;->mUserName:Ljava/lang/String;

    .line 2530
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getVolumeKey()I
    .locals 3

    .prologue
    .line 2434
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_volumekey_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getWhiteBalance()I
    .locals 1

    .prologue
    .line 2221
    iget v0, p0, Lcom/android/camera/CameraSettings;->mWB:I

    return v0
.end method

.method public getWhiteBalanceResourceString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const v1, 0x7f09003b

    .line 3900
    packed-switch p1, :pswitch_data_0

    .line 3912
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 3902
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3904
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f09003d

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3906
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f09003c

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3908
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f090041

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3910
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f09003e

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3900
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getWifiP2pDeviceName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5258
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_p2p_device_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWifiP2pDeviceType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5254
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getshowTurnOnBurstShotHelpTextDialog()I
    .locals 2

    .prologue
    .line 4878
    const-string v0, "pref_turn_on_burst_help_text_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected handleNotification(II)V
    .locals 5
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 3425
    iget-object v3, p0, Lcom/android/camera/CameraSettings;->mObservers:Ljava/util/List;

    monitor-enter v3

    .line 3426
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/CameraSettings;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3428
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/camera/CameraSettings$OnCameraSettingsChangedObserver;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3429
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraSettings$OnCameraSettingsChangedObserver;

    .line 3430
    .local v1, observer:Lcom/android/camera/CameraSettings$OnCameraSettingsChangedObserver;
    if-eqz v1, :cond_0

    .line 3431
    invoke-interface {v1, p1, p2}, Lcom/android/camera/CameraSettings$OnCameraSettingsChangedObserver;->onCameraSettingsChanged(II)V

    goto :goto_0

    .line 3436
    .end local v0           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/camera/CameraSettings$OnCameraSettingsChangedObserver;>;"
    .end local v1           #observer:Lcom/android/camera/CameraSettings$OnCameraSettingsChangedObserver;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3433
    .restart local v0       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/camera/CameraSettings$OnCameraSettingsChangedObserver;>;"
    .restart local v1       #observer:Lcom/android/camera/CameraSettings$OnCameraSettingsChangedObserver;
    :cond_0
    :try_start_1
    const-string v2, "CameraSettings"

    const-string v4, "mObservers is NULL!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3436
    .end local v1           #observer:Lcom/android/camera/CameraSettings$OnCameraSettingsChangedObserver;
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3437
    return-void
.end method

.method public initializeCamcorder()V
    .locals 1

    .prologue
    .line 1453
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1454
    invoke-direct {p0}, Lcom/android/camera/CameraSettings;->initializeBackCamcorder()V

    .line 1458
    :goto_0
    return-void

    .line 1456
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/CameraSettings;->initializeFrontCamcorder()V

    goto :goto_0
.end method

.method public initializeCamera()V
    .locals 1

    .prologue
    .line 856
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    invoke-direct {p0}, Lcom/android/camera/CameraSettings;->initializeBackCamera()V

    .line 861
    :goto_0
    return-void

    .line 859
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/CameraSettings;->initializeFrontCamera()V

    goto :goto_0
.end method

.method public isAndroidBeamEnabled()Z
    .locals 2

    .prologue
    .line 5366
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 5368
    .local v0, mNfcAdapter:Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_0

    .line 5369
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v1

    .line 5371
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isBackCamera()Z
    .locals 2

    .prologue
    .line 1819
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v0

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCSCUsedInManyCountriesForLatin()Z
    .locals 3

    .prologue
    .line 5221
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5223
    .local v0, code:Ljava/lang/String;
    const-string v1, "TFG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TPA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "JDI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PCI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5224
    :cond_0
    const-string v1, "CameraSettings"

    const-string v2, "isCSCUsedInManyCountriesForLatin : SalesCode = TFG, TPA, TTT, JDI, PCI "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5226
    const/4 v1, 0x1

    .line 5228
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCamcorderFastMotionEnabled()Z
    .locals 1

    .prologue
    .line 4050
    const/4 v0, 0x0

    return v0
.end method

.method public isCamcorderSlowMotionEnabled()Z
    .locals 1

    .prologue
    .line 4032
    const/4 v0, 0x0

    return v0
.end method

.method public isCamcorderSpeedControlReset(II)Z
    .locals 1
    .parameter "speed"
    .parameter "prevSpeed"

    .prologue
    .line 4014
    const/4 v0, 0x0

    return v0
.end method

.method public isFrontCamera()Z
    .locals 2

    .prologue
    .line 1815
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v0

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNfcEnabled()Z
    .locals 2

    .prologue
    .line 5375
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 5377
    .local v0, mNfcAdapter:Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_0

    .line 5378
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v1

    .line 5380
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isNotificationExist()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3440
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mNotificationHandler:Lcom/android/camera/CameraSettings$NotificationHandler;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraSettings$NotificationHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3441
    const/4 v0, 0x1

    .line 3442
    :cond_0
    return v0
.end method

.method public isP2pEnabled()Z
    .locals 5

    .prologue
    .line 5340
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 5341
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 5342
    .local v2, netInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 5346
    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v2           #netInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v3

    .line 5343
    :catch_0
    move-exception v1

    .line 5344
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v3, "CameraSettings"

    const-string v4, "isP2pEnabled - NullPointerException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5346
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isRecordingSpeedControlEnabled()Z
    .locals 1

    .prologue
    .line 3989
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedBackCamcorderResolutionFeature(I)Z
    .locals 2
    .parameter "resolution"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2164
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 2178
    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    move v0, v1

    .line 2176
    goto :goto_0

    .line 2164
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isSupportedBackCameraResolutionFeature(I)Z
    .locals 2
    .parameter "resolution"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2048
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 2104
    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    move v0, v1

    .line 2052
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 2054
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 2058
    goto :goto_0

    :pswitch_5
    move v0, v1

    .line 2060
    goto :goto_0

    :pswitch_6
    move v0, v1

    .line 2062
    goto :goto_0

    :pswitch_7
    move v0, v1

    .line 2064
    goto :goto_0

    :pswitch_8
    move v0, v1

    .line 2066
    goto :goto_0

    :pswitch_9
    move v0, v1

    .line 2068
    goto :goto_0

    :pswitch_a
    move v0, v1

    .line 2070
    goto :goto_0

    :pswitch_b
    move v0, v1

    .line 2074
    goto :goto_0

    :pswitch_c
    move v0, v1

    .line 2076
    goto :goto_0

    :pswitch_d
    move v0, v1

    .line 2080
    goto :goto_0

    :pswitch_e
    move v0, v1

    .line 2082
    goto :goto_0

    :pswitch_f
    move v0, v1

    .line 2084
    goto :goto_0

    :pswitch_10
    move v0, v1

    .line 2086
    goto :goto_0

    :pswitch_11
    move v0, v1

    .line 2088
    goto :goto_0

    :pswitch_12
    move v0, v1

    .line 2092
    goto :goto_0

    :pswitch_13
    move v0, v1

    .line 2096
    goto :goto_0

    :pswitch_14
    move v0, v1

    .line 2098
    goto :goto_0

    :pswitch_15
    move v0, v1

    .line 2100
    goto :goto_0

    :pswitch_16
    move v0, v1

    .line 2102
    goto :goto_0

    .line 2048
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_a
        :pswitch_e
        :pswitch_f
        :pswitch_11
        :pswitch_1
        :pswitch_13
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_1
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_c
        :pswitch_6
        :pswitch_b
        :pswitch_d
        :pswitch_10
        :pswitch_12
        :pswitch_3
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method public isSupportedFrontCamcorderResolutionFeature(I)Z
    .locals 2
    .parameter "resolution"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2183
    packed-switch p1, :pswitch_data_0

    .line 2197
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 2187
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 2189
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 2191
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 2193
    goto :goto_0

    .line 2183
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public isSupportedFrontCameraResolutionFeature(I)Z
    .locals 2
    .parameter "resolution"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2109
    packed-switch p1, :pswitch_data_0

    .line 2159
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 2137
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 2149
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 2155
    goto :goto_0

    .line 2109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isVideocallPresetSelected()Z
    .locals 1

    .prologue
    .line 4627
    iget-boolean v0, p0, Lcom/android/camera/CameraSettings;->mVideocallPresetSelected:Z

    return v0
.end method

.method public varargs loadFromPreferences([I)V
    .locals 7
    .parameter "indices"

    .prologue
    .line 1016
    move-object v0, p1

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget v2, v0, v1

    .line 1017
    .local v2, index:I
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadFromPreferences - index : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    sparse-switch v2, :sswitch_data_0

    .line 1164
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error in loadFromPreferences : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1020
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraFlashMode()I

    move-result v4

    iput v4, p0, Lcom/android/camera/CameraSettings;->mFlashMode:I

    .line 1021
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mFlashMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/CameraSettings;->mFlashMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    iget v4, p0, Lcom/android/camera/CameraSettings;->mFlashMode:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1025
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraResolution()I

    move-result v4

    iput v4, p0, Lcom/android/camera/CameraSettings;->mResolution:I

    .line 1026
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mResolution : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/CameraSettings;->mResolution:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    iget v4, p0, Lcom/android/camera/CameraSettings;->mResolution:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1030
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraFocusMode()I

    move-result v4

    iput v4, p0, Lcom/android/camera/CameraSettings;->mFocusMode:I

    .line 1031
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mFocusMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/CameraSettings;->mFocusMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    iget v4, p0, Lcom/android/camera/CameraSettings;->mFocusMode:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1035
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraEffect()I

    move-result v4

    iput v4, p0, Lcom/android/camera/CameraSettings;->mEffect:I

    .line 1036
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mEffect : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/CameraSettings;->mEffect:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    iget v4, p0, Lcom/android/camera/CameraSettings;->mEffect:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1040
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraISO()I

    move-result v4

    iput v4, p0, Lcom/android/camera/CameraSettings;->mISO:I

    .line 1041
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mISO : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/CameraSettings;->mISO:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    iget v4, p0, Lcom/android/camera/CameraSettings;->mISO:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1045
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraExposureMeter()I

    move-result v4

    iput v4, p0, Lcom/android/camera/CameraSettings;->mExposureMeter:I

    .line 1046
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mExposureMeter : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/CameraSettings;->mExposureMeter:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    iget v4, p0, Lcom/android/camera/CameraSettings;->mExposureMeter:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1050
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraAntiShake()I

    move-result v4

    iput v4, p0, Lcom/android/camera/CameraSettings;->mAntiShake:I

    .line 1051
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAntiShake : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/CameraSettings;->mAntiShake:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    iget v4, p0, Lcom/android/camera/CameraSettings;->mAntiShake:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1055
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraAutoContrast()I

    move-result v4

    iput v4, p0, Lcom/android/camera/CameraSettings;->mAutoContrast:I

    .line 1056
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAutoContrast : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/CameraSettings;->mAutoContrast:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    iget v4, p0, Lcom/android/camera/CameraSettings;->mAutoContrast:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1060
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraQuality()I

    move-result v4

    iput v4, p0, Lcom/android/camera/CameraSettings;->mQuality:I

    .line 1061
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mQuality : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/CameraSettings;->mQuality:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    iget v4, p0, Lcom/android/camera/CameraSettings;->mQuality:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1066
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraReview()I

    move-result v4

    iput v4, p0, Lcom/android/camera/CameraSettings;->mReview:I

    .line 1067
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mReview : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/CameraSettings;->mReview:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    iget v4, p0, Lcom/android/camera/CameraSettings;->mReview:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1072
    :sswitch_a
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getVolumeKey()I

    move-result v4

    iput v4, p0, Lcom/android/camera/CameraSettings;->mVolumeKey:I

    .line 1073
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mVolumeKey : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/CameraSettings;->mVolumeKey:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    iget v4, p0, Lcom/android/camera/CameraSettings;->mVolumeKey:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1078
    :sswitch_b
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraVoiceCommand()I

    move-result v4

    iput v4, p0, Lcom/android/camera/CameraSettings;->mVoiceCommand:I

    .line 1079
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mVoiceCommand : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/CameraSettings;->mVoiceCommand:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    iget v4, p0, Lcom/android/camera/CameraSettings;->mVoiceCommand:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1085
    :sswitch_c
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getGuideline()I

    move-result v4

    iput v4, p0, Lcom/android/camera/CameraSettings;->mGuideLine:I

    .line 1086
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mGuideLine : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/CameraSettings;->mGuideLine:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    iget v4, p0, Lcom/android/camera/CameraSettings;->mGuideLine:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1091
    :sswitch_d
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getGPS()I

    move-result v4

    iput v4, p0, Lcom/android/camera/CameraSettings;->mGPS:I

    .line 1092
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mGPS : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/CameraSettings;->mGPS:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    iget v4, p0, Lcom/android/camera/CameraSettings;->mGPS:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1096
    :sswitch_e
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraShutterSound()I

    move-result v4

    iput v4, p0, Lcom/android/camera/CameraSettings;->mShutterSound:I

    .line 1097
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mShutterSound : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/CameraSettings;->mShutterSound:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    iget v4, p0, Lcom/android/camera/CameraSettings;->mShutterSound:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1102
    :sswitch_f
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getStorage()I

    move-result v4

    iput v4, p0, Lcom/android/camera/CameraSettings;->mStorage:I

    .line 1103
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mStorage : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/CameraSettings;->mStorage:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    iget v4, p0, Lcom/android/camera/CameraSettings;->mStorage:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1107
    :sswitch_10
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getSelfFlip()I

    move-result v4

    iput v4, p0, Lcom/android/camera/CameraSettings;->mFlip:I

    .line 1108
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mFlip : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/CameraSettings;->mFlip:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    iget v4, p0, Lcom/android/camera/CameraSettings;->mFlip:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1112
    :sswitch_11
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCamcorderFlashMode()I

    move-result v4

    iput v4, p0, Lcom/android/camera/CameraSettings;->mCamcorderFlashMode:I

    .line 1113
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCamcorderFlashMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/CameraSettings;->mCamcorderFlashMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    iget v4, p0, Lcom/android/camera/CameraSettings;->mCamcorderFlashMode:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1117
    :sswitch_12
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCamcorderResolution()I

    move-result v4

    sput v4, Lcom/android/camera/CameraSettings;->mCamcorderResolution:I

    .line 1118
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCamcorderResolution : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/camera/CameraSettings;->mCamcorderResolution:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    sget v4, Lcom/android/camera/CameraSettings;->mCamcorderResolution:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1122
    :sswitch_13
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCamcorderEffect()I

    move-result v4

    iput v4, p0, Lcom/android/camera/CameraSettings;->mCamcorderEffect:I

    .line 1123
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCamcorderEffect : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/CameraSettings;->mCamcorderEffect:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    iget v4, p0, Lcom/android/camera/CameraSettings;->mCamcorderEffect:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1127
    :sswitch_14
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCamcorderAutoContrast()I

    move-result v4

    iput v4, p0, Lcom/android/camera/CameraSettings;->mCamcorderAutoContrast:I

    .line 1128
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCamcorderAutoContrast : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/CameraSettings;->mCamcorderAutoContrast:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    iget v4, p0, Lcom/android/camera/CameraSettings;->mCamcorderAutoContrast:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1132
    :sswitch_15
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCamcorderQuality()I

    move-result v4

    iput v4, p0, Lcom/android/camera/CameraSettings;->mCamcorderQuality:I

    .line 1133
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCamcorderQuality : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/CameraSettings;->mCamcorderQuality:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    iget v4, p0, Lcom/android/camera/CameraSettings;->mCamcorderQuality:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1137
    :sswitch_16
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCamcorderAntishake()I

    move-result v4

    iput v4, p0, Lcom/android/camera/CameraSettings;->mCamcorderAntiShake:I

    .line 1138
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCamcorderAntiShake : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/CameraSettings;->mCamcorderAntiShake:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    iget v4, p0, Lcom/android/camera/CameraSettings;->mCamcorderAntiShake:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1143
    :sswitch_17
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getContextualFilename()I

    move-result v4

    iput v4, p0, Lcom/android/camera/CameraSettings;->mContextualFilename:I

    .line 1144
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mContextualFilename : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/CameraSettings;->mContextualFilename:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    iget v4, p0, Lcom/android/camera/CameraSettings;->mContextualFilename:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1148
    :sswitch_18
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getBurstMode()I

    move-result v4

    iput v4, p0, Lcom/android/camera/CameraSettings;->mBurstmode:I

    .line 1149
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mBurstmode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/CameraSettings;->mBurstmode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    iget v4, p0, Lcom/android/camera/CameraSettings;->mBurstmode:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1153
    :sswitch_19
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getHDRIntensityMode()I

    move-result v4

    iput v4, p0, Lcom/android/camera/CameraSettings;->mHDRmodeLevel:I

    .line 1154
    iget v4, p0, Lcom/android/camera/CameraSettings;->mHDRmodeLevel:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1155
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mHDRmodeLevel : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/CameraSettings;->mHDRmodeLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1158
    :sswitch_1a
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getHDRPictureMode()I

    move-result v4

    iput v4, p0, Lcom/android/camera/CameraSettings;->mHDRmodePicture:I

    .line 1159
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mHDRmodePicture : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/CameraSettings;->mHDRmodePicture:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    iget v4, p0, Lcom/android/camera/CameraSettings;->mHDRmodePicture:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1168
    .end local v2           #index:I
    :cond_0
    return-void

    .line 1018
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x8 -> :sswitch_3
        0xa -> :sswitch_4
        0xb -> :sswitch_5
        0xd -> :sswitch_6
        0xe -> :sswitch_7
        0x10 -> :sswitch_8
        0x11 -> :sswitch_9
        0x13 -> :sswitch_c
        0x14 -> :sswitch_d
        0x15 -> :sswitch_e
        0x16 -> :sswitch_f
        0x26 -> :sswitch_10
        0x2f -> :sswitch_18
        0x30 -> :sswitch_17
        0x32 -> :sswitch_b
        0x34 -> :sswitch_a
        0x36 -> :sswitch_19
        0x37 -> :sswitch_1a
        0x67 -> :sswitch_11
        0x68 -> :sswitch_12
        0x6c -> :sswitch_13
        0x6e -> :sswitch_14
        0x6f -> :sswitch_15
        0x75 -> :sswitch_f
        0x78 -> :sswitch_9
        0x7b -> :sswitch_c
        0x7d -> :sswitch_16
        0x81 -> :sswitch_17
        0x82 -> :sswitch_d
        0x84 -> :sswitch_b
        0x85 -> :sswitch_a
    .end sparse-switch
.end method

.method protected notifyCameraSettingsChanged(II)V
    .locals 3
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 3413
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mNotificationHandler:Lcom/android/camera/CameraSettings$NotificationHandler;

    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mNotificationHandler:Lcom/android/camera/CameraSettings$NotificationHandler;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraSettings$NotificationHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3414
    return-void
.end method

.method protected notifyCameraSettingsChanged(IIZ)V
    .locals 0
    .parameter "menuid"
    .parameter "modeid"
    .parameter "syncmode"

    .prologue
    .line 3417
    if-eqz p3, :cond_0

    .line 3418
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/CameraSettings;->handleNotification(II)V

    .line 3422
    :goto_0
    return-void

    .line 3420
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 1676
    return-void
.end method

.method public refreshButtonDimForCamcorder()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1557
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getMenuDimController()Lcom/android/camera/MenuDimController;

    move-result-object v0

    .line 1558
    .local v0, dimController:Lcom/android/camera/MenuDimController;
    const/16 v1, 0x6e

    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCamcorderAutoContrast()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1559
    const/16 v1, 0x75

    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getStorage()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1560
    const/16 v1, 0x7d

    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCamcorderAntishake()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1561
    const/16 v1, 0x65

    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1562
    const/16 v1, 0x68

    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCamcorderResolution()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1564
    invoke-virtual {v0}, Lcom/android/camera/MenuDimController;->getLowBatteryStatus()Z

    move-result v1

    if-ne v1, v4, :cond_0

    .line 1565
    invoke-virtual {v0, v5, v3}, Lcom/android/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1568
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getAttachMode()Z

    move-result v1

    if-ne v1, v4, :cond_3

    .line 1569
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v1

    if-ne v1, v4, :cond_1

    .line 1570
    const/4 v1, 0x2

    invoke-virtual {v0, v3, v1}, Lcom/android/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1579
    :goto_0
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getMenuDimController()Lcom/android/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0x79

    iget v3, p0, Lcom/android/camera/CameraSettings;->mSelfMode:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1580
    return-void

    .line 1571
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getAttachEmailMode()Z

    move-result v1

    if-ne v1, v4, :cond_2

    .line 1572
    invoke-virtual {v0, v3, v5}, Lcom/android/camera/MenuDimController;->refreshButtonDim(II)V

    goto :goto_0

    .line 1574
    :cond_2
    invoke-virtual {v0, v3, v4}, Lcom/android/camera/MenuDimController;->refreshButtonDim(II)V

    goto :goto_0

    .line 1577
    :cond_3
    invoke-virtual {v0, v3, v3}, Lcom/android/camera/MenuDimController;->refreshButtonDim(II)V

    goto :goto_0
.end method

.method public refreshButtonDimForCamera()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 941
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getMenuDimController()Lcom/android/camera/MenuDimController;

    move-result-object v0

    .line 942
    .local v0, dimController:Lcom/android/camera/MenuDimController;
    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraAutoContrast()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/MenuDimController;->refreshButtonDim(II)V

    .line 943
    const/16 v1, 0x16

    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getStorage()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/MenuDimController;->refreshButtonDim(II)V

    .line 944
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraAntiShake()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/MenuDimController;->refreshButtonDim(II)V

    .line 945
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraISO()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/MenuDimController;->refreshButtonDim(II)V

    .line 946
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/android/camera/MenuDimController;->refreshButtonDim(II)V

    .line 947
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getSceneMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/MenuDimController;->refreshButtonDim(II)V

    .line 948
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Lcom/android/camera/MenuDimController;->refreshButtonDim(II)V

    .line 950
    invoke-virtual {v0}, Lcom/android/camera/MenuDimController;->getLowBatteryStatus()Z

    move-result v1

    if-ne v1, v4, :cond_0

    .line 951
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/MenuDimController;->refreshButtonDim(II)V

    .line 954
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getAttachMode()Z

    move-result v1

    if-ne v1, v4, :cond_1

    .line 955
    invoke-virtual {v0, v3, v4}, Lcom/android/camera/MenuDimController;->refreshButtonDim(II)V

    .line 962
    :goto_0
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getMenuDimController()Lcom/android/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0x24

    iget v3, p0, Lcom/android/camera/CameraSettings;->mSelfMode:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/MenuDimController;->refreshButtonDim(II)V

    .line 963
    return-void

    .line 956
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getSecureMode()Z

    move-result v1

    if-ne v1, v4, :cond_2

    .line 957
    invoke-virtual {v0, v3, v5}, Lcom/android/camera/MenuDimController;->refreshButtonDim(II)V

    goto :goto_0

    .line 959
    :cond_2
    invoke-virtual {v0, v3, v3}, Lcom/android/camera/MenuDimController;->refreshButtonDim(II)V

    goto :goto_0
.end method

.method public refreshCamcorderSettingValues()V
    .locals 2

    .prologue
    .line 1175
    const/16 v0, 0x6c

    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCamcorderEffect()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1176
    return-void
.end method

.method public refreshCamcorderSettingValuesFromPreferences()V
    .locals 1

    .prologue
    .line 1007
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->refreshCommonSettingValuesFromPreferences()V

    .line 1009
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraSettings;->loadFromPreferences([I)V

    .line 1012
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCamcorderVideoDuration()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraSettings;->setCamcorderVideoDuration(I)V

    .line 1013
    return-void

    .line 1009
    :array_0
    .array-data 0x4
        0x67t 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0x7dt 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public refreshCameraSettingValues()V
    .locals 2

    .prologue
    .line 1171
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCameraEffect()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1172
    return-void
.end method

.method public refreshCameraSettingValuesFromPreferences()V
    .locals 1

    .prologue
    .line 995
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->refreshCommonSettingValuesFromPreferences()V

    .line 1001
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraSettings;->loadFromPreferences([I)V

    .line 1004
    return-void

    .line 1001
    :array_0
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public refreshCommonSettingValuesFromPreferences()V
    .locals 1

    .prologue
    .line 991
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraSettings;->loadFromPreferences([I)V

    .line 992
    return-void

    .line 991
    nop

    :array_0
    .array-data 0x4
        0x13t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public registerCameraSettingsChangedObserver(Lcom/android/camera/CameraSettings$OnCameraSettingsChangedObserver;)V
    .locals 3
    .parameter "o"

    .prologue
    .line 3397
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mObservers:Ljava/util/List;

    monitor-enter v1

    .line 3398
    if-nez p1, :cond_0

    .line 3399
    :try_start_0
    const-string v0, "CameraSettings"

    const-string v2, "mObservers is NULL!!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3403
    :goto_0
    monitor-exit v1

    .line 3404
    return-void

    .line 3401
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3403
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetButtonDim()V
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->getMenuDimController()Lcom/android/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/MenuDimController;->resetDim()V

    .line 988
    return-void
.end method

.method public resetCamcorderSettingsToDefault()V
    .locals 1

    .prologue
    .line 4584
    invoke-direct {p0}, Lcom/android/camera/CameraSettings;->resetCommonGlobalSettings()V

    .line 4585
    invoke-direct {p0}, Lcom/android/camera/CameraSettings;->resetCamcorderGlobalSettings()V

    .line 4588
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/CameraSettings;->resetCamcorderLocalSettings(I)V

    .line 4589
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/CameraSettings;->resetCamcorderLocalSettings(I)V

    .line 4590
    return-void
.end method

.method public resetCameraSettingsToDefault()V
    .locals 1

    .prologue
    .line 4503
    invoke-direct {p0}, Lcom/android/camera/CameraSettings;->resetCommonGlobalSettings()V

    .line 4504
    invoke-direct {p0}, Lcom/android/camera/CameraSettings;->resetCameraGlobalSettings()V

    .line 4507
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/CameraSettings;->resetCameraLocalSettings(I)V

    .line 4508
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/CameraSettings;->resetCameraLocalSettings(I)V

    .line 4509
    return-void
.end method

.method public resetCameraZoomValue()V
    .locals 2

    .prologue
    .line 2816
    const-string v0, "CameraSettings"

    const-string v1, "resetCameraZoomValue"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2817
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/CameraSettings;->mZoomValue:I

    .line 2818
    return-void
.end method

.method public resetLayout()V
    .locals 1

    .prologue
    .line 4593
    iget v0, p0, Lcom/android/camera/CameraSettings;->mMode:I

    if-nez v0, :cond_0

    .line 4594
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->setDefaultCameraSideMenuOrder()V

    .line 4595
    sget-object v0, Lcom/android/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraSettings;->setCameraSideMenuOrder(Ljava/lang/String;)V

    .line 4596
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->setDefaultCameraEditableShortcutOrder()V

    .line 4597
    sget-object v0, Lcom/android/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraSettings;->setCameraEditableShortcutOrder(Ljava/lang/String;)V

    .line 4604
    :goto_0
    return-void

    .line 4599
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->setDefaultCamcorderSideMenuOrder()V

    .line 4600
    sget-object v0, Lcom/android/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraSettings;->setCamcorderSideMenuOrder(Ljava/lang/String;)V

    .line 4601
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->setDefaultCamcorderEditableShortcutOrder()V

    .line 4602
    sget-object v0, Lcom/android/camera/CameraSettings;->DEFAULT_CAMCORDER_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraSettings;->setCamcorderEditableShortcutOrder(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resetMaxVideoDuration(I)V
    .locals 1
    .parameter "recordingMode"

    .prologue
    .line 2874
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2875
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraSettings;->setCamcorderVideoDuration(I)V

    .line 2879
    :goto_0
    return-void

    .line 2877
    :cond_0
    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraSettings;->setCamcorderVideoDuration(I)V

    goto :goto_0
.end method

.method public resetObservers()V
    .locals 2

    .prologue
    .line 4631
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mObservers:Ljava/util/List;

    monitor-enter v1

    .line 4632
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4633
    monitor-exit v1

    .line 4634
    return-void

    .line 4633
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetValueSideMenuMap(Ljava/util/LinkedHashMap;)V
    .locals 4
    .parameter "map"

    .prologue
    .line 1335
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1336
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1337
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1338
    .local v0, id:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1340
    .end local v0           #id:I
    :cond_0
    return-void
.end method

.method saveBitmapFile(Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "bmp"

    .prologue
    .line 5262
    new-instance v0, Ljava/io/File;

    sget-object v4, Lcom/android/camera/Camera;->FILE_USER_PHOTO_DIR:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5263
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 5264
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 5266
    :cond_0
    const/4 v2, 0x0

    .line 5268
    .local v2, f:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/android/camera/Camera;->FILE_USER_PHOTO_PATH:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5269
    .end local v2           #f:Ljava/io/FileOutputStream;
    .local v3, f:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, v3

    .line 5274
    .end local v3           #f:Ljava/io/FileOutputStream;
    .restart local v2       #f:Ljava/io/FileOutputStream;
    :goto_0
    if-eqz v2, :cond_1

    .line 5276
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 5281
    :cond_1
    :goto_1
    return-void

    .line 5270
    :catch_0
    move-exception v1

    .line 5271
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 5277
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 5279
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 5270
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #f:Ljava/io/FileOutputStream;
    .restart local v3       #f:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3           #f:Ljava/io/FileOutputStream;
    .restart local v2       #f:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public setAndroidBeamDisabled()V
    .locals 2

    .prologue
    .line 5394
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 5396
    .local v0, mNfcAdapter:Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_0

    .line 5397
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5398
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    .line 5400
    :cond_0
    return-void
.end method

.method public setAttachEmailMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 3279
    iput-boolean p1, p0, Lcom/android/camera/CameraSettings;->mAttachEmailMode:Z

    .line 3280
    return-void
.end method

.method public setAttachMMSMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 3271
    iput-boolean p1, p0, Lcom/android/camera/CameraSettings;->mAttachMMSMode:Z

    .line 3272
    return-void
.end method

.method public setAttachMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 3263
    iput-boolean p1, p0, Lcom/android/camera/CameraSettings;->mAttachMode:Z

    .line 3264
    return-void
.end method

.method public setAutoShareShotMode(I)V
    .locals 4
    .parameter "autoshareshotmode"

    .prologue
    const/4 v3, 0x0

    .line 2704
    if-nez p1, :cond_1

    .line 2705
    sput-boolean v3, Lcom/android/camera/Camera;->mAutoShareShotState:Z

    .line 2708
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_auto_shareshot_key"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/CameraSettings;->mAutoShareShot:I

    .line 2709
    iget v1, p0, Lcom/android/camera/CameraSettings;->mAutoShareShot:I

    if-eq v1, p1, :cond_0

    .line 2710
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAutoShareShotMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2711
    iput p1, p0, Lcom/android/camera/CameraSettings;->mAutoShareShot:I

    .line 2712
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2713
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_auto_shareshot_key"

    iget v2, p0, Lcom/android/camera/CameraSettings;->mAutoShareShot:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2714
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2716
    const/16 v1, 0x31

    iget v2, p0, Lcom/android/camera/CameraSettings;->mAutoShareShot:I

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2718
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void

    .line 2707
    :cond_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/camera/Camera;->mAutoShareShotState:Z

    goto :goto_0
.end method

.method public setBurstMode(I)V
    .locals 4
    .parameter "burstmode"

    .prologue
    .line 3384
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_burst_settings_key"

    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getDefaultBurstMode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/CameraSettings;->mBurstmode:I

    .line 3385
    iget v1, p0, Lcom/android/camera/CameraSettings;->mBurstmode:I

    if-eq v1, p1, :cond_0

    .line 3386
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBurstMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3387
    iput p1, p0, Lcom/android/camera/CameraSettings;->mBurstmode:I

    .line 3388
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3389
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_burst_settings_key"

    iget v2, p0, Lcom/android/camera/CameraSettings;->mBurstmode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3390
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3392
    const/16 v1, 0x2f

    iget v2, p0, Lcom/android/camera/CameraSettings;->mBurstmode:I

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3394
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setBurstShotsGuideTextDialog(I)V
    .locals 4
    .parameter "burstShotsGuideTextDialog"

    .prologue
    .line 4852
    const-string v1, "pref_burst_shot_guide_text_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 4853
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFaceZoomHelpTextDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4854
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4855
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_burst_shot_guide_text_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4856
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4858
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCamcorderAdjustContrast(I)V
    .locals 3
    .parameter "contrast"

    .prologue
    .line 3194
    iget v0, p0, Lcom/android/camera/CameraSettings;->mCamcorderAdjustContrast:I

    if-eq v0, p1, :cond_0

    .line 3195
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderAdjustContrast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3196
    iput p1, p0, Lcom/android/camera/CameraSettings;->mCamcorderAdjustContrast:I

    .line 3197
    const/16 v0, 0x86

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3199
    :cond_0
    return-void
.end method

.method public setCamcorderAdjustSaturation(I)V
    .locals 3
    .parameter "saturation"

    .prologue
    .line 3218
    iget v0, p0, Lcom/android/camera/CameraSettings;->mCamcorderAdjustSaturation:I

    if-eq v0, p1, :cond_0

    .line 3219
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderAdjustSaturation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3220
    iput p1, p0, Lcom/android/camera/CameraSettings;->mCamcorderAdjustSaturation:I

    .line 3221
    const/16 v0, 0x87

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3223
    :cond_0
    return-void
.end method

.method public setCamcorderAntishake(I)V
    .locals 4
    .parameter "antishake"

    .prologue
    .line 2340
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camcorder_antishake_key"

    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getDefaultCamcorderAntishake()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/CameraSettings;->mCamcorderAntiShake:I

    .line 2341
    iget v1, p0, Lcom/android/camera/CameraSettings;->mCamcorderAntiShake:I

    if-eq v1, p1, :cond_0

    .line 2342
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCamcorderAntishake "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    iput p1, p0, Lcom/android/camera/CameraSettings;->mCamcorderAntiShake:I

    .line 2344
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2345
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camcorder_antishake_key"

    iget v2, p0, Lcom/android/camera/CameraSettings;->mCamcorderAntiShake:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2346
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2348
    const/16 v1, 0x7d

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2350
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCamcorderAudioRecording(I)V
    .locals 3
    .parameter "audioRecording"

    .prologue
    .line 3242
    iget v0, p0, Lcom/android/camera/CameraSettings;->mCamcorderAudioRecording:I

    if-eq v0, p1, :cond_0

    .line 3243
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderAudioRecording "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3244
    iput p1, p0, Lcom/android/camera/CameraSettings;->mCamcorderAudioRecording:I

    .line 3246
    const/16 v0, 0x77

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3248
    :cond_0
    return-void
.end method

.method public setCamcorderAutoContrast(I)V
    .locals 3
    .parameter "autocontrast"

    .prologue
    .line 2369
    iget v0, p0, Lcom/android/camera/CameraSettings;->mCamcorderAutoContrast:I

    if-eq v0, p1, :cond_0

    .line 2370
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderAutocontrast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    iput p1, p0, Lcom/android/camera/CameraSettings;->mCamcorderAutoContrast:I

    .line 2372
    const/16 v0, 0x6e

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2374
    :cond_0
    return-void
.end method

.method public setCamcorderContrast(I)V
    .locals 3
    .parameter "contrast"

    .prologue
    .line 3182
    iget v0, p0, Lcom/android/camera/CameraSettings;->mCamcorderContrast:I

    if-eq v0, p1, :cond_0

    .line 3183
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderContrast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3184
    iput p1, p0, Lcom/android/camera/CameraSettings;->mCamcorderContrast:I

    .line 3185
    const/16 v0, 0x72

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3187
    :cond_0
    return-void
.end method

.method public setCamcorderEditableShortcutOrder(Ljava/lang/String;)V
    .locals 4
    .parameter "order"

    .prologue
    .line 4720
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_new_camcorder_editable_shortcut_order"

    sget-object v3, Lcom/android/camera/CameraSettings;->DEFAULT_CAMCORDER_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraSettings;->mCamcorderEditableShortcutOrder:Ljava/lang/String;

    .line 4721
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mCamcorderEditableShortcutOrder:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4722
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCamcorderEditableShortcutOrder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4723
    iput-object p1, p0, Lcom/android/camera/CameraSettings;->mCamcorderEditableShortcutOrder:Ljava/lang/String;

    .line 4724
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4725
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_new_camcorder_editable_shortcut_order"

    iget-object v2, p0, Lcom/android/camera/CameraSettings;->mCamcorderEditableShortcutOrder:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4726
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4728
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCamcorderEffect(I)V
    .locals 4
    .parameter "effect"

    .prologue
    const/16 v3, 0x6c

    .line 2266
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2267
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderFrontEffect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    iget v0, p0, Lcom/android/camera/CameraSettings;->mCamcorderFrontEffect:I

    if-eq v0, p1, :cond_0

    .line 2269
    iput p1, p0, Lcom/android/camera/CameraSettings;->mCamcorderFrontEffect:I

    .line 2271
    :cond_0
    invoke-virtual {p0, v3, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2279
    :goto_0
    return-void

    .line 2273
    :cond_1
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderEffect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    iget v0, p0, Lcom/android/camera/CameraSettings;->mCamcorderEffect:I

    if-eq v0, p1, :cond_2

    .line 2275
    iput p1, p0, Lcom/android/camera/CameraSettings;->mCamcorderEffect:I

    .line 2277
    :cond_2
    invoke-virtual {p0, v3, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_0
.end method

.method public setCamcorderExposureValue(I)V
    .locals 3
    .parameter "exposurevalue"

    .prologue
    .line 1991
    iget v0, p0, Lcom/android/camera/CameraSettings;->mCamcorderExposureValue:I

    if-eq v0, p1, :cond_0

    .line 1992
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderExposureValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    iput p1, p0, Lcom/android/camera/CameraSettings;->mCamcorderExposureValue:I

    .line 1994
    const/16 v0, 0x6d

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1996
    :cond_0
    return-void
.end method

.method public setCamcorderFlashMode(I)V
    .locals 4
    .parameter "flashMode"

    .prologue
    .line 2893
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camcorder_flash_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/CameraSettings;->mCamcorderFlashMode:I

    .line 2894
    iget v1, p0, Lcom/android/camera/CameraSettings;->mCamcorderFlashMode:I

    if-eq v1, p1, :cond_0

    .line 2895
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCamcorderFlashMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2896
    iput p1, p0, Lcom/android/camera/CameraSettings;->mCamcorderFlashMode:I

    .line 2897
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2898
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camcorder_flash_key"

    iget v2, p0, Lcom/android/camera/CameraSettings;->mCamcorderFlashMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2899
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2901
    const/16 v1, 0x67

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2903
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCamcorderOutdoorVisibility(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    .line 3306
    iget v0, p0, Lcom/android/camera/CameraSettings;->mCamcorderOutdoorVisibility:I

    if-eq v0, p1, :cond_0

    .line 3307
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderOutdoorVisibility "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3308
    iput p1, p0, Lcom/android/camera/CameraSettings;->mCamcorderOutdoorVisibility:I

    .line 3309
    const/16 v0, 0x7a

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3311
    if-nez p1, :cond_1

    .line 3312
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)Z

    .line 3317
    :cond_0
    :goto_0
    return-void

    .line 3314
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)Z

    goto :goto_0
.end method

.method public setCamcorderQuality(I)V
    .locals 4
    .parameter "quality"

    .prologue
    .line 2978
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_videoquality_key"

    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getDefaultCamcorderQuality()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/CameraSettings;->mCamcorderQuality:I

    .line 2979
    iget v1, p0, Lcom/android/camera/CameraSettings;->mCamcorderQuality:I

    if-eq v1, p1, :cond_0

    .line 2980
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCamcorderQuality "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2981
    iput p1, p0, Lcom/android/camera/CameraSettings;->mCamcorderQuality:I

    .line 2982
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2983
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_videoquality_key"

    iget v2, p0, Lcom/android/camera/CameraSettings;->mCamcorderQuality:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2984
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2986
    const/16 v1, 0x6f

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2988
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCamcorderRecordingMode(I)V
    .locals 3
    .parameter "recordingMode"

    .prologue
    .line 2838
    iget v0, p0, Lcom/android/camera/CameraSettings;->mRecordingMode:I

    if-eq v0, p1, :cond_0

    .line 2839
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecordingMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2840
    iput p1, p0, Lcom/android/camera/CameraSettings;->mRecordingMode:I

    .line 2842
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2843
    iput p1, p0, Lcom/android/camera/CameraSettings;->mBackRecordingMode:I

    .line 2848
    :goto_0
    iget v0, p0, Lcom/android/camera/CameraSettings;->mRecordingMode:I

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraSettings;->resetMaxVideoDuration(I)V

    .line 2867
    const/16 v0, 0x65

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2869
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camcorder;

    invoke-virtual {v0, p1}, Lcom/android/camera/Camcorder;->handleCamcorderRecordingModeChanged(I)V

    .line 2871
    :cond_0
    return-void

    .line 2845
    :cond_1
    iput p1, p0, Lcom/android/camera/CameraSettings;->mFrontRecordingMode:I

    goto :goto_0
.end method

.method public setCamcorderResolution(I)Z
    .locals 6
    .parameter "resolution"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2955
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2970
    :cond_0
    :goto_0
    return v1

    .line 2958
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v3

    const-string v4, "pref_camcorder_resolution_key"

    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getDefaultCamcorderResolution()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/camera/CameraSettings;->mCamcorderResolution:I

    .line 2959
    sget v3, Lcom/android/camera/CameraSettings;->mCamcorderResolution:I

    if-eq v3, p1, :cond_0

    .line 2960
    const-string v1, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCamcorderResolution "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2961
    sput p1, Lcom/android/camera/CameraSettings;->mCamcorderResolution:I

    .line 2962
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2963
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camcorder_resolution_key"

    sget v3, Lcom/android/camera/CameraSettings;->mCamcorderResolution:I

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2964
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2966
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraSettings;->setCamcorderResolutionChanged(Z)V

    .line 2967
    const/16 v1, 0x68

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    move v1, v2

    .line 2968
    goto :goto_0
.end method

.method public setCamcorderResolutionChanged(Z)V
    .locals 0
    .parameter "changed"

    .prologue
    .line 5188
    iput-boolean p1, p0, Lcom/android/camera/CameraSettings;->mCamcorderResolutionChanged:Z

    .line 5189
    return-void
.end method

.method public setCamcorderSaturation(I)V
    .locals 3
    .parameter "saturation"

    .prologue
    .line 3206
    iget v0, p0, Lcom/android/camera/CameraSettings;->mCamcorderSaturation:I

    if-eq v0, p1, :cond_0

    .line 3207
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderSaturation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3208
    iput p1, p0, Lcom/android/camera/CameraSettings;->mCamcorderSaturation:I

    .line 3209
    const/16 v0, 0x73

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3211
    :cond_0
    return-void
.end method

.method public setCamcorderSettingValuesAsDefault()V
    .locals 1

    .prologue
    .line 1186
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraSettings;->setSettingValuesAsDefault([I)V

    .line 1191
    return-void

    .line 1186
    nop

    :array_0
    .array-data 0x4
        0x6at 0x0t 0x0t 0x0t
        0x6bt 0x0t 0x0t 0x0t
        0x6dt 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
        0x73t 0x0t 0x0t 0x0t
        0x74t 0x0t 0x0t 0x0t
        0x77t 0x0t 0x0t 0x0t
        0x7at 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x86t 0x0t 0x0t 0x0t
        0x87t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public setCamcorderSharpness(I)V
    .locals 3
    .parameter "sharpness"

    .prologue
    .line 3230
    iget v0, p0, Lcom/android/camera/CameraSettings;->mCamcorderSharpness:I

    if-eq v0, p1, :cond_0

    .line 3231
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderSharpness "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3232
    iput p1, p0, Lcom/android/camera/CameraSettings;->mCamcorderSharpness:I

    .line 3233
    const/16 v0, 0x74

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3235
    :cond_0
    return-void
.end method

.method public setCamcorderSideMenuOrder(Ljava/lang/String;)V
    .locals 4
    .parameter "order"

    .prologue
    .line 4689
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_new_camcorder_sidemenu_order"

    sget-object v3, Lcom/android/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraSettings;->mCamcorderEditableShortcutOrder:Ljava/lang/String;

    .line 4690
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mCamcorderEditableShortcutOrder:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4691
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCamcorderSidemenuOrder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4692
    iput-object p1, p0, Lcom/android/camera/CameraSettings;->mCamcorderSidemenuOrder:Ljava/lang/String;

    .line 4693
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4694
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_new_camcorder_sidemenu_order"

    iget-object v2, p0, Lcom/android/camera/CameraSettings;->mCamcorderSidemenuOrder:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4695
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4697
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCamcorderSlowMotion(I)V
    .locals 0
    .parameter "speed"

    .prologue
    .line 3040
    return-void
.end method

.method public setCamcorderTimeLapse(I)V
    .locals 0
    .parameter "timelapse"

    .prologue
    .line 3070
    return-void
.end method

.method public setCamcorderTimer(I)V
    .locals 3
    .parameter "timer"

    .prologue
    .line 2910
    iget v0, p0, Lcom/android/camera/CameraSettings;->mCamcorderTimer:I

    if-eq v0, p1, :cond_0

    .line 2911
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderTimer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2912
    iput p1, p0, Lcom/android/camera/CameraSettings;->mCamcorderTimer:I

    .line 2913
    const/16 v0, 0x6a

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2915
    :cond_0
    return-void
.end method

.method public setCamcorderVideoDuration(I)V
    .locals 4
    .parameter "videoDuration"

    .prologue
    .line 1702
    const-string v1, "pref_camera_video_duration_key"

    const/16 v2, 0x3c

    invoke-direct {p0, v1, v2}, Lcom/android/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/CameraSettings;->mVideoDuration:I

    .line 1703
    iget v1, p0, Lcom/android/camera/CameraSettings;->mVideoDuration:I

    if-eq v1, p1, :cond_0

    .line 1704
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMaxVideoDurationInMs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    iput p1, p0, Lcom/android/camera/CameraSettings;->mVideoDuration:I

    .line 1706
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1707
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_video_duration_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1708
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1710
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCamcorderZoomValue(I)V
    .locals 3
    .parameter "zoomvalue"

    .prologue
    .line 2825
    iget v0, p0, Lcom/android/camera/CameraSettings;->mCamcorderZoomValue:I

    if-eq v0, p1, :cond_0

    .line 2826
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderZoomValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2827
    iput p1, p0, Lcom/android/camera/CameraSettings;->mCamcorderZoomValue:I

    .line 2828
    const/16 v0, 0x70

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2830
    :cond_0
    return-void
.end method

.method public setCameraAdjustContrast(I)V
    .locals 3
    .parameter "contrast"

    .prologue
    .line 2754
    iget v0, p0, Lcom/android/camera/CameraSettings;->mAdjustContrast:I

    if-eq v0, p1, :cond_0

    .line 2755
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraAdjustContrast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2756
    iput p1, p0, Lcom/android/camera/CameraSettings;->mAdjustContrast:I

    .line 2757
    const/16 v0, 0x38

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2759
    :cond_0
    return-void
.end method

.method public setCameraAdjustSaturation(I)V
    .locals 3
    .parameter "saturation"

    .prologue
    .line 2778
    iget v0, p0, Lcom/android/camera/CameraSettings;->mAdjustSaturation:I

    if-eq v0, p1, :cond_0

    .line 2779
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraAdjustSaturation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2780
    iput p1, p0, Lcom/android/camera/CameraSettings;->mAdjustSaturation:I

    .line 2781
    const/16 v0, 0x39

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2783
    :cond_0
    return-void
.end method

.method public setCameraAntiShake(I)V
    .locals 4
    .parameter "antishake"

    .prologue
    .line 2315
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_antishake_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/CameraSettings;->mAntiShake:I

    .line 2316
    iget v1, p0, Lcom/android/camera/CameraSettings;->mAntiShake:I

    if-eq v1, p1, :cond_0

    .line 2317
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAntishake "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    iput p1, p0, Lcom/android/camera/CameraSettings;->mAntiShake:I

    .line 2319
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2320
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_antishake_key"

    iget v2, p0, Lcom/android/camera/CameraSettings;->mAntiShake:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2321
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2323
    const/16 v1, 0xd

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2325
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCameraAutoContrast(I)V
    .locals 3
    .parameter "autocontrast"

    .prologue
    .line 2357
    iget v0, p0, Lcom/android/camera/CameraSettings;->mAutoContrast:I

    if-eq v0, p1, :cond_0

    .line 2358
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraAutoContrast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    iput p1, p0, Lcom/android/camera/CameraSettings;->mAutoContrast:I

    .line 2360
    const/16 v0, 0xe

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2362
    :cond_0
    return-void
.end method

.method public setCameraContrast(I)V
    .locals 3
    .parameter "contrast"

    .prologue
    .line 2742
    iget v0, p0, Lcom/android/camera/CameraSettings;->mContrast:I

    if-eq v0, p1, :cond_0

    .line 2743
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraContrast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2744
    iput p1, p0, Lcom/android/camera/CameraSettings;->mContrast:I

    .line 2745
    const/16 v0, 0x18

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2747
    :cond_0
    return-void
.end method

.method public setCameraEditableShortcutOrder(Ljava/lang/String;)V
    .locals 4
    .parameter "order"

    .prologue
    .line 4705
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_new_camera_editable_shortcut_order"

    sget-object v3, Lcom/android/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraSettings;->mCameraEditableShortcutOrder:Ljava/lang/String;

    .line 4706
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mCameraEditableShortcutOrder:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4707
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraEditableShortcutOrder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4708
    iput-object p1, p0, Lcom/android/camera/CameraSettings;->mCameraEditableShortcutOrder:Ljava/lang/String;

    .line 4709
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4710
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_new_camera_editable_shortcut_order"

    iget-object v2, p0, Lcom/android/camera/CameraSettings;->mCameraEditableShortcutOrder:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4711
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4713
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCameraEffect(I)V
    .locals 4
    .parameter "effect"

    .prologue
    const/16 v3, 0x8

    .line 2243
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2244
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFrontEffect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2245
    iget v0, p0, Lcom/android/camera/CameraSettings;->mFrontEffect:I

    if-eq v0, p1, :cond_0

    .line 2246
    iput p1, p0, Lcom/android/camera/CameraSettings;->mFrontEffect:I

    .line 2248
    :cond_0
    invoke-virtual {p0, v3, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2256
    :goto_0
    return-void

    .line 2250
    :cond_1
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEffect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    iget v0, p0, Lcom/android/camera/CameraSettings;->mEffect:I

    if-eq v0, p1, :cond_2

    .line 2252
    iput p1, p0, Lcom/android/camera/CameraSettings;->mEffect:I

    .line 2254
    :cond_2
    invoke-virtual {p0, v3, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_0
.end method

.method public setCameraExposureMeter(I)V
    .locals 4
    .parameter "exposuremeter"

    .prologue
    .line 2298
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_exposuremeter_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/CameraSettings;->mExposureMeter:I

    .line 2299
    iget v1, p0, Lcom/android/camera/CameraSettings;->mExposureMeter:I

    if-eq v1, p1, :cond_0

    .line 2300
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setExposuremeter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    iput p1, p0, Lcom/android/camera/CameraSettings;->mExposureMeter:I

    .line 2302
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2303
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_exposuremeter_key"

    iget v2, p0, Lcom/android/camera/CameraSettings;->mExposureMeter:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2304
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2306
    const/16 v1, 0xb

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2308
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCameraExposureValue(I)V
    .locals 3
    .parameter "exposurevalue"

    .prologue
    .line 1979
    iget v0, p0, Lcom/android/camera/CameraSettings;->mExposureValue:I

    if-eq v0, p1, :cond_0

    .line 1980
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraExposureValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    iput p1, p0, Lcom/android/camera/CameraSettings;->mExposureValue:I

    .line 1982
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1984
    :cond_0
    return-void
.end method

.method public setCameraFlashMode(I)V
    .locals 5
    .parameter "flashMode"

    .prologue
    const/4 v4, 0x1

    .line 1956
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_flash_key"

    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getDefaultCameraFlashMode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/CameraSettings;->mFlashMode:I

    .line 1957
    iget v1, p0, Lcom/android/camera/CameraSettings;->mFlashMode:I

    if-eq v1, p1, :cond_0

    .line 1958
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraFlashMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    iput p1, p0, Lcom/android/camera/CameraSettings;->mFlashMode:I

    .line 1960
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1961
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_flash_key"

    iget v2, p0, Lcom/android/camera/CameraSettings;->mFlashMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1962
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1964
    const/4 v1, 0x3

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1966
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getSceneMode()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 1967
    iget v1, p0, Lcom/android/camera/CameraSettings;->mFlashMode:I

    if-nez v1, :cond_2

    .line 1968
    invoke-virtual {p0, v4}, Lcom/android/camera/CameraSettings;->setCameraExposureMeter(I)V

    .line 1972
    :cond_1
    :goto_0
    return-void

    .line 1969
    :cond_2
    iget v1, p0, Lcom/android/camera/CameraSettings;->mFlashMode:I

    if-ne v1, v4, :cond_1

    .line 1970
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraSettings;->setCameraExposureMeter(I)V

    goto :goto_0
.end method

.method public setCameraFocusMode(I)V
    .locals 4
    .parameter "focusMode"

    .prologue
    .line 2011
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_focus_key"

    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getDefaultCameraFocusMode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/CameraSettings;->mFocusMode:I

    .line 2012
    iget v1, p0, Lcom/android/camera/CameraSettings;->mFocusMode:I

    if-eq v1, p1, :cond_0

    .line 2013
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraFocusMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    iput p1, p0, Lcom/android/camera/CameraSettings;->mFocusMode:I

    .line 2015
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2016
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_focus_key"

    iget v2, p0, Lcom/android/camera/CameraSettings;->mFocusMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2017
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2019
    const/4 v1, 0x5

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2021
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCameraISO(I)V
    .locals 3
    .parameter "iso"

    .prologue
    .line 2286
    iget v0, p0, Lcom/android/camera/CameraSettings;->mISO:I

    if-eq v0, p1, :cond_0

    .line 2287
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setISO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    iput p1, p0, Lcom/android/camera/CameraSettings;->mISO:I

    .line 2289
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2291
    :cond_0
    return-void
.end method

.method public setCameraId(I)V
    .locals 4
    .parameter "cameraId"

    .prologue
    .line 1793
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 1794
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraId - wrong camera id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    :goto_0
    return-void

    .line 1797
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1798
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_id_key"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1799
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1801
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1, v2, p1}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 1803
    iput p1, p0, Lcom/android/camera/CameraSettings;->mCameraId:I

    .line 1805
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 1806
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/camera/CameraSettings;->setSelfMode(I)V

    goto :goto_0

    .line 1808
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/camera/CameraSettings;->setSelfMode(I)V

    goto :goto_0
.end method

.method public setCameraOutdoorVisibility(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    .line 3287
    iget v0, p0, Lcom/android/camera/CameraSettings;->mOutdoorVisibility:I

    if-eq v0, p1, :cond_0

    .line 3288
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraOutdoorVisibility "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3289
    iput p1, p0, Lcom/android/camera/CameraSettings;->mOutdoorVisibility:I

    .line 3290
    const/16 v0, 0x23

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3293
    if-nez p1, :cond_1

    .line 3294
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)Z

    .line 3299
    :cond_0
    :goto_0
    return-void

    .line 3296
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)Z

    goto :goto_0
.end method

.method public setCameraQuality(I)V
    .locals 4
    .parameter "quality"

    .prologue
    .line 2381
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_quality_key"

    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getDefaultCameraQuality()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/CameraSettings;->mQuality:I

    .line 2382
    iget v1, p0, Lcom/android/camera/CameraSettings;->mQuality:I

    if-eq v1, p1, :cond_0

    .line 2383
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraQuality "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2384
    iput p1, p0, Lcom/android/camera/CameraSettings;->mQuality:I

    .line 2385
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2386
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_quality_key"

    iget v2, p0, Lcom/android/camera/CameraSettings;->mQuality:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2387
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2389
    const/16 v1, 0x10

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2391
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCameraResolution(I)Z
    .locals 5
    .parameter "resolution"

    .prologue
    const/4 v1, 0x1

    .line 2203
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_camera_resolution_key"

    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/CameraSettings;->mResolution:I

    .line 2204
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mResolution : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/CameraSettings;->mResolution:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resolution : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    iget v2, p0, Lcom/android/camera/CameraSettings;->mResolution:I

    if-eq v2, p1, :cond_0

    .line 2206
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCameraResolution "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    iput p1, p0, Lcom/android/camera/CameraSettings;->mResolution:I

    .line 2208
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2209
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_camera_resolution_key"

    iget v3, p0, Lcom/android/camera/CameraSettings;->mResolution:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2210
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2213
    invoke-virtual {p0, v1}, Lcom/android/camera/CameraSettings;->setCameraResolutionChanged(Z)V

    .line 2214
    const/4 v2, 0x4

    invoke-virtual {p0, v2, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2217
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCameraResolutionChanged(Z)V
    .locals 0
    .parameter "changed"

    .prologue
    .line 5180
    iput-boolean p1, p0, Lcom/android/camera/CameraSettings;->mCameraResolutionChanged:Z

    .line 5181
    return-void
.end method

.method public setCameraReview(I)V
    .locals 4
    .parameter "review"

    .prologue
    .line 2417
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_review_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/CameraSettings;->mReview:I

    .line 2418
    iget v1, p0, Lcom/android/camera/CameraSettings;->mReview:I

    if-eq v1, p1, :cond_0

    .line 2419
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraReview "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    iput p1, p0, Lcom/android/camera/CameraSettings;->mReview:I

    .line 2421
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2422
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_review_key"

    iget v2, p0, Lcom/android/camera/CameraSettings;->mReview:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2423
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2425
    iget v1, p0, Lcom/android/camera/CameraSettings;->mMode:I

    if-nez v1, :cond_1

    .line 2426
    const/16 v1, 0x11

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2431
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    return-void

    .line 2428
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/16 v1, 0x78

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_0
.end method

.method public setCameraSaturation(I)V
    .locals 3
    .parameter "saturation"

    .prologue
    .line 2766
    iget v0, p0, Lcom/android/camera/CameraSettings;->mSaturation:I

    if-eq v0, p1, :cond_0

    .line 2767
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraSaturation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2768
    iput p1, p0, Lcom/android/camera/CameraSettings;->mSaturation:I

    .line 2769
    const/16 v0, 0x19

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2771
    :cond_0
    return-void
.end method

.method public setCameraSettingValuesAsDefault()V
    .locals 1

    .prologue
    .line 1179
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraSettings;->setSettingValuesAsDefault([I)V

    .line 1183
    return-void

    .line 1179
    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x39t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public setCameraSharpness(I)V
    .locals 3
    .parameter "sharpness"

    .prologue
    .line 2790
    iget v0, p0, Lcom/android/camera/CameraSettings;->mSharpness:I

    if-eq v0, p1, :cond_0

    .line 2791
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraSharpness "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2792
    iput p1, p0, Lcom/android/camera/CameraSettings;->mSharpness:I

    .line 2793
    const/16 v0, 0x1a

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2795
    :cond_0
    return-void
.end method

.method public setCameraShutterSound(I)V
    .locals 4
    .parameter "shuttersound"

    .prologue
    .line 2725
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_shuttersound_key"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/CameraSettings;->mShutterSound:I

    .line 2726
    iget v1, p0, Lcom/android/camera/CameraSettings;->mShutterSound:I

    if-eq v1, p1, :cond_0

    .line 2727
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraShutterSound "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2728
    iput p1, p0, Lcom/android/camera/CameraSettings;->mShutterSound:I

    .line 2729
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2730
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_shuttersound_key"

    iget v2, p0, Lcom/android/camera/CameraSettings;->mShutterSound:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2731
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2733
    const/16 v1, 0x15

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2735
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCameraSideMenuOrder(Ljava/lang/String;)V
    .locals 4
    .parameter "order"

    .prologue
    .line 4674
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_new_camera_sidemenu_order"

    sget-object v3, Lcom/android/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraSettings;->mCameraEditableShortcutOrder:Ljava/lang/String;

    .line 4675
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mCameraEditableShortcutOrder:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4676
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraSidemenuOrder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4677
    iput-object p1, p0, Lcom/android/camera/CameraSettings;->mCameraSidemenuOrder:Ljava/lang/String;

    .line 4678
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4679
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_new_camera_sidemenu_order"

    iget-object v2, p0, Lcom/android/camera/CameraSettings;->mCameraSidemenuOrder:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4680
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4682
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCameraVoiceCommand(I)V
    .locals 6
    .parameter "voicecommand"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2465
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_input_control"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_input_control_camera"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 2467
    iput v4, p0, Lcom/android/camera/CameraSettings;->mVoiceCommand:I

    .line 2471
    :goto_0
    iget v1, p0, Lcom/android/camera/CameraSettings;->mVoiceCommand:I

    if-eq v1, p1, :cond_1

    .line 2472
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraVoiceCommand "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    iput p1, p0, Lcom/android/camera/CameraSettings;->mVoiceCommand:I

    .line 2474
    iget v1, p0, Lcom/android/camera/CameraSettings;->mVoiceCommand:I

    if-ne v1, v4, :cond_4

    .line 2477
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_input_control"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3

    .line 2479
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2480
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.vlingo.midas"

    const-string v2, "com.samsung.bargeinsetting.VoiceInputControlSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2481
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1, v0}, Lcom/android/camera/AbstractCameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 2501
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    iget v1, p0, Lcom/android/camera/CameraSettings;->mMode:I

    if-nez v1, :cond_5

    .line 2502
    const/16 v1, 0x32

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2507
    :cond_1
    :goto_2
    return-void

    .line 2469
    :cond_2
    iput v5, p0, Lcom/android/camera/CameraSettings;->mVoiceCommand:I

    goto :goto_0

    .line 2483
    :cond_3
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_input_control_camera"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 2485
    const-string v1, "CameraSettings"

    const-string v2, "setCameraVoiceCommand ON"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2486
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_input_control"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2487
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_input_control_camera"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2488
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v1, Lcom/android/camera/Camera;

    .line 2489
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 2490
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v1, Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->showHelpText()V

    goto :goto_1

    .line 2495
    :cond_4
    const-string v1, "CameraSettings"

    const-string v2, "setCameraVoiceCommand OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_input_control_camera"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2497
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v1, Lcom/android/camera/Camera;

    .line 2498
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 2499
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v1, Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->hideHelpText()V

    goto :goto_1

    .line 2504
    :cond_5
    const/16 v1, 0x84

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_2
.end method

.method public setCameraZoomValue(I)V
    .locals 3
    .parameter "zoomvalue"

    .prologue
    .line 2802
    iget v0, p0, Lcom/android/camera/CameraSettings;->mZoomValue:I

    if-eq v0, p1, :cond_0

    .line 2803
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraZoomValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2804
    iput p1, p0, Lcom/android/camera/CameraSettings;->mZoomValue:I

    .line 2805
    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2807
    :cond_0
    return-void
.end method

.method public setCameraZoomValueForced(I)V
    .locals 3
    .parameter "zoomvalue"

    .prologue
    .line 2810
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraZoomValueForced "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2811
    iput p1, p0, Lcom/android/camera/CameraSettings;->mZoomValue:I

    .line 2812
    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2813
    return-void
.end method

.method public setChangeStorageSettingDialog(I)V
    .locals 4
    .parameter "changeStorageSettingDialog"

    .prologue
    .line 5002
    const-string v1, "pref_change_storage_setting_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 5003
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setChangeStorageSettingDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5004
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5005
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_change_storage_setting_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5006
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5008
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setContextualFilename(I)V
    .locals 4
    .parameter "contextualFilename"

    .prologue
    .line 2627
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setup_contextual_filename_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/CameraSettings;->mContextualFilename:I

    .line 2628
    iget v1, p0, Lcom/android/camera/CameraSettings;->mContextualFilename:I

    if-eq v1, p1, :cond_0

    .line 2629
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setContextualFilename "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2630
    iput p1, p0, Lcom/android/camera/CameraSettings;->mContextualFilename:I

    .line 2631
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2632
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_setup_contextual_filename_key"

    iget v2, p0, Lcom/android/camera/CameraSettings;->mContextualFilename:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2633
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2634
    iget v1, p0, Lcom/android/camera/CameraSettings;->mMode:I

    if-nez v1, :cond_1

    .line 2635
    const/16 v1, 0x30

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2640
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    return-void

    .line 2637
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/16 v1, 0x81

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_0
.end method

.method public setDefaultCamcorderEditableShortcutOrder()V
    .locals 7

    .prologue
    const/16 v6, 0x63

    .line 1653
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Camera_CamcorderDefaultSideMenu"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1654
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Camera_CamcorderDefaultSideMenu"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1655
    .local v2, temp:Ljava/lang/String;
    sget-object v3, Lcom/android/camera/CameraSettings;->mCamcorderShortcutMenuOrder:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/CameraSettings;->setTrueDefaultSideMenu(Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 1658
    .end local v2           #temp:Ljava/lang/String;
    :cond_0
    sget-object v3, Lcom/android/camera/CameraSettings;->mCamcorderShortcutMenuOrder:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1659
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const-string v3, ""

    sput-object v3, Lcom/android/camera/CameraSettings;->DEFAULT_CAMCORDER_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    .line 1660
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1661
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1662
    .local v0, id:I
    sget-object v3, Lcom/android/camera/CameraSettings;->mCamcorderShortcutMenuOrder:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1663
    const/16 v3, 0x33

    if-ne v0, v3, :cond_2

    .line 1664
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/camera/CameraSettings;->DEFAULT_CAMCORDER_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/camera/CameraSettings;->DEFAULT_CAMCORDER_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    goto :goto_0

    .line 1667
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/camera/CameraSettings;->DEFAULT_CAMCORDER_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/camera/CameraSettings;->DEFAULT_CAMCORDER_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    goto :goto_0

    .line 1670
    .end local v0           #id:I
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/camera/CameraSettings;->DEFAULT_CAMCORDER_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/camera/CameraSettings;->DEFAULT_CAMCORDER_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    .line 1672
    return-void
.end method

.method public setDefaultCamcorderSideMenuOrder()V
    .locals 10

    .prologue
    const v9, 0x7f080014

    .line 1593
    const/4 v3, 0x0

    .line 1594
    .local v3, itemCount:I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Camera_CamcorderDefaultSideMenu"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1595
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Camera_CamcorderDefaultSideMenu"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    .line 1596
    const-string v6, "CameraSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setDefaultCamcorderSideMenuOrder from csc"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    sget-object v6, Lcom/android/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    sget-object v7, Lcom/android/camera/CameraSettings;->mCamcorderShortcutMenuOrder:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/CameraSettings;->setTrueDefaultSideMenu(Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 1599
    new-instance v5, Ljava/util/StringTokenizer;

    sget-object v6, Lcom/android/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    const-string v7, ","

    invoke-direct {v5, v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1600
    .local v5, st:Ljava/util/StringTokenizer;
    const-string v6, ""

    sput-object v6, Lcom/android/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    .line 1602
    :cond_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1603
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/camera/CameraSettings;->getShortcutMenuID(Ljava/lang/String;)I

    move-result v0

    .line 1604
    .local v0, commandId:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    .line 1605
    add-int/lit8 v3, v3, 0x1

    .line 1606
    iget-object v6, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/android/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    if-lt v3, v6, :cond_0

    .line 1627
    .end local v0           #commandId:I
    .end local v5           #st:Ljava/util/StringTokenizer;
    :cond_1
    iget-object v6, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/android/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    if-ge v3, v6, :cond_5

    .line 1628
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/android/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    sub-int/2addr v6, v3

    if-ge v1, v6, :cond_5

    .line 1629
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x63

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    .line 1628
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1612
    .end local v1           #i:I
    :cond_2
    sget-object v6, Lcom/android/camera/CameraSettings;->mCamcorderShortcutMenuOrder:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1614
    .local v4, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const-string v6, ""

    sput-object v6, Lcom/android/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    .line 1615
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1616
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1617
    .local v2, id:I
    sget-object v6, Lcom/android/camera/CameraSettings;->mCamcorderShortcutMenuOrder:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1618
    iget-object v6, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/android/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 1619
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    .line 1620
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1622
    :cond_4
    sget-object v6, Lcom/android/camera/CameraSettings;->mCamcorderShortcutMenuOrder:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1632
    .end local v2           #id:I
    .end local v4           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xbd0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    .line 1633
    const-string v6, "CameraSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setDefaultCamcorderSideMenuOrder, order "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/camera/CameraSettings;->DEFAULT_CAMCORDER_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    return-void
.end method

.method public setDefaultCamcorderVideoDuration()V
    .locals 3

    .prologue
    .line 1713
    const/16 v1, 0x3c

    iput v1, p0, Lcom/android/camera/CameraSettings;->mVideoDuration:I

    .line 1714
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1715
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_video_duration_key"

    iget v2, p0, Lcom/android/camera/CameraSettings;->mVideoDuration:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1716
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1717
    return-void
.end method

.method public setDefaultCameraEditableShortcutOrder()V
    .locals 7

    .prologue
    const/16 v6, 0x63

    .line 1427
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Camera_DefaultSideMenu"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1428
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Camera_DefaultSideMenu"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1429
    .local v2, temp:Ljava/lang/String;
    sget-object v3, Lcom/android/camera/CameraSettings;->mCameraShortcutMenuOrder:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/CameraSettings;->setTrueDefaultSideMenu(Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 1432
    .end local v2           #temp:Ljava/lang/String;
    :cond_0
    sget-object v3, Lcom/android/camera/CameraSettings;->mCameraShortcutMenuOrder:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1433
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const-string v3, ""

    sput-object v3, Lcom/android/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    .line 1434
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1435
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1436
    .local v0, id:I
    sget-object v3, Lcom/android/camera/CameraSettings;->mCameraShortcutMenuOrder:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1437
    const/16 v3, 0x14

    if-ne v0, v3, :cond_3

    .line 1438
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v5, "CscFeature_Camera_DisableGPSMenu"

    invoke-virtual {v3, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v3, ""

    goto :goto_1

    .line 1440
    :cond_3
    const/16 v3, 0x15

    if-ne v0, v3, :cond_5

    .line 1441
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v5, "CscFeature_Camera_ShutterSoundMenu"

    invoke-virtual {v3, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    const-string v3, ""

    goto :goto_2

    .line 1444
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    goto/16 :goto_0

    .line 1447
    .end local v0           #id:I
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    .line 1448
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    return-void
.end method

.method public setDefaultCameraSideMenuOrder()V
    .locals 10

    .prologue
    const v9, 0x7f080014

    .line 1363
    const/4 v3, 0x0

    .line 1364
    .local v3, itemCount:I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Camera_DefaultSideMenu"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1365
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Camera_DefaultSideMenu"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    .line 1366
    const-string v6, "CameraSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setDefaultCameraSideMenuOrder from csc"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    sget-object v6, Lcom/android/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    sget-object v7, Lcom/android/camera/CameraSettings;->mCameraShortcutMenuOrder:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/CameraSettings;->setTrueDefaultSideMenu(Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 1369
    new-instance v5, Ljava/util/StringTokenizer;

    sget-object v6, Lcom/android/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    const-string v7, ","

    invoke-direct {v5, v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    .local v5, st:Ljava/util/StringTokenizer;
    const-string v6, ""

    sput-object v6, Lcom/android/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    .line 1372
    :cond_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1373
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/camera/CameraSettings;->getShortcutMenuID(Ljava/lang/String;)I

    move-result v0

    .line 1374
    .local v0, commandId:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    .line 1375
    add-int/lit8 v3, v3, 0x1

    .line 1376
    iget-object v6, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/android/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    if-lt v3, v6, :cond_0

    .line 1395
    .end local v0           #commandId:I
    .end local v5           #st:Ljava/util/StringTokenizer;
    :cond_1
    iget-object v6, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/android/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    if-ge v3, v6, :cond_5

    .line 1396
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/android/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    sub-int/2addr v6, v3

    if-ge v1, v6, :cond_5

    .line 1397
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x63

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    .line 1396
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1381
    .end local v1           #i:I
    :cond_2
    sget-object v6, Lcom/android/camera/CameraSettings;->mCameraShortcutMenuOrder:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1382
    .local v4, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const-string v6, ""

    sput-object v6, Lcom/android/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    .line 1383
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1384
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1385
    .local v2, id:I
    sget-object v6, Lcom/android/camera/CameraSettings;->mCameraShortcutMenuOrder:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1386
    iget-object v6, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/android/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 1387
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    .line 1388
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1390
    :cond_4
    sget-object v6, Lcom/android/camera/CameraSettings;->mCameraShortcutMenuOrder:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1400
    .end local v2           #id:I
    .end local v4           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x1b

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    .line 1401
    const-string v6, "CameraSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setDefaultCameraSideMenuOrder, order "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/camera/CameraSettings;->DEFAULT_CAMERA_SIDEMENU_ORDER:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    return-void
.end method

.method public setDeviceName(Lcom/samsung/shareshot/IShareShotService;)V
    .locals 3
    .parameter "iShootShareService"

    .prologue
    .line 5324
    if-eqz p1, :cond_1

    .line 5325
    const-string v1, "CameraSettings"

    const-string v2, "setDeviceName is not null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5327
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mDeviceName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getWifiP2pDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5328
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v1, Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getWifiP2pDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->produceGSPersonalSettingInfoValue(Ljava/lang/String;)Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/samsung/shareshot/IShareShotService;->setLocalPersonInfo(Lcom/samsung/dmc/ux/db/PersonalSettingInfo;)V

    .line 5329
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getWifiP2pDeviceName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraSettings;->mDeviceName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5336
    :cond_1
    :goto_0
    return-void

    .line 5331
    :catch_0
    move-exception v0

    .line 5333
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDeviceType()V
    .locals 8

    .prologue
    const/16 v5, 0xc

    const/16 v7, 0x9

    const/4 v6, 0x1

    .line 5284
    new-array v2, v5, [I

    fill-array-data v2, :array_0

    .line 5299
    .local v2, sDeviceTypeImages:[I
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getWifiP2pDeviceType()Ljava/lang/String;

    move-result-object v0

    .line 5300
    .local v0, device:Ljava/lang/String;
    const/4 v3, 0x0

    .line 5303
    .local v3, tokens:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 5304
    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 5307
    :cond_0
    if-eqz v0, :cond_1

    array-length v4, v3

    if-ge v4, v6, :cond_2

    .line 5308
    :cond_1
    const-string v4, "CameraSettings"

    const-string v5, "Malformed primaryDeviceType"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5309
    iget-object v4, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    aget v5, v2, v7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/camera/CameraSettings;->saveBitmapFile(Landroid/graphics/Bitmap;)V

    .line 5321
    :goto_0
    return-void

    .line 5313
    :cond_2
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 5314
    .local v1, mDeviceType:I
    if-lt v1, v6, :cond_3

    if-ge v1, v5, :cond_3

    .line 5315
    iget-object v4, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    aget v5, v2, v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/camera/CameraSettings;->saveBitmapFile(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 5318
    :cond_3
    iget-object v4, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    aget v5, v2, v7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/camera/CameraSettings;->saveBitmapFile(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 5284
    :array_0
    .array-data 0x4
        0xet 0x2t 0x2t 0x7ft
        0x12t 0x2t 0x2t 0x7ft
        0x15t 0x2t 0x2t 0x7ft
        0xdt 0x2t 0x2t 0x7ft
        0x16t 0x2t 0x2t 0x7ft
        0x14t 0x2t 0x2t 0x7ft
        0xft 0x2t 0x2t 0x7ft
        0x13t 0x2t 0x2t 0x7ft
        0x11t 0x2t 0x2t 0x7ft
        0x17t 0x2t 0x2t 0x7ft
        0xct 0x2t 0x2t 0x7ft
        0x10t 0x2t 0x2t 0x7ft
    .end array-data
.end method

.method public setEditableShortcutHelpTextDialog(I)V
    .locals 4
    .parameter "editableShortcutHelpTextDialog"

    .prologue
    .line 4930
    const-string v1, "pref_editable_shortcut_help_text_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 4931
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEditableShortcutHelpTextDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4932
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4933
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_editable_shortcut_help_text_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4934
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4936
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setEffectRecorderType(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 3341
    iget v0, p0, Lcom/android/camera/CameraSettings;->mEffectRecorderType:I

    if-eq v0, p1, :cond_0

    .line 3342
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEffectRecorderType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3343
    iput p1, p0, Lcom/android/camera/CameraSettings;->mEffectRecorderType:I

    .line 3344
    const/16 v0, 0x7f

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3346
    :cond_0
    return-void
.end method

.method public setFaceZoomHelpTextDialog(I)V
    .locals 4
    .parameter "faceZoomHelpTextDialog"

    .prologue
    .line 4917
    const-string v1, "pref_face_zoom_help_text_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 4918
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFaceZoomHelpTextDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4919
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4920
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_face_zoom_help_text_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4921
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4923
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setGPS(I)V
    .locals 6
    .parameter "gps"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2594
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setup_gps_key"

    invoke-virtual {v1, v2, v4}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/CameraSettings;->mGPS:I

    .line 2595
    iget v1, p0, Lcom/android/camera/CameraSettings;->mGPS:I

    if-eq v1, p1, :cond_0

    .line 2596
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setGps "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2597
    iput p1, p0, Lcom/android/camera/CameraSettings;->mGPS:I

    .line 2598
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2599
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_setup_gps_key"

    iget v2, p0, Lcom/android/camera/CameraSettings;->mGPS:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2600
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2601
    iget v1, p0, Lcom/android/camera/CameraSettings;->mMode:I

    if-nez v1, :cond_1

    .line 2602
    const/16 v1, 0x14

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2606
    :goto_0
    iget v1, p0, Lcom/android/camera/CameraSettings;->mGPS:I

    if-nez v1, :cond_2

    .line 2607
    invoke-virtual {p0, v4}, Lcom/android/camera/CameraSettings;->setContextualFilename(I)V

    .line 2608
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    if-eqz v1, :cond_0

    .line 2609
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1, v4}, Lcom/android/camera/AbstractCameraActivity;->setWeatherConnect(Z)V

    .line 2620
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_1
    return-void

    .line 2604
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/16 v1, 0x82

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_0

    .line 2611
    :cond_2
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    if-eqz v1, :cond_0

    .line 2612
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getGpsPopupDisplayed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2613
    invoke-virtual {p0, v5}, Lcom/android/camera/CameraSettings;->setContextualFilename(I)V

    .line 2614
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1, v4}, Lcom/android/camera/AbstractCameraActivity;->setGpsPopupDisplayed(Z)V

    .line 2616
    :cond_3
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1, v5}, Lcom/android/camera/AbstractCameraActivity;->setWeatherConnect(Z)V

    goto :goto_1
.end method

.method public setGuideline(I)V
    .locals 4
    .parameter "guideline"

    .prologue
    .line 2398
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setup_guideline_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/CameraSettings;->mGuideLine:I

    .line 2399
    iget v1, p0, Lcom/android/camera/CameraSettings;->mGuideLine:I

    if-eq v1, p1, :cond_0

    .line 2400
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setGuideline "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2401
    iput p1, p0, Lcom/android/camera/CameraSettings;->mGuideLine:I

    .line 2402
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2403
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_setup_guideline_key"

    iget v2, p0, Lcom/android/camera/CameraSettings;->mGuideLine:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2404
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2405
    iget v1, p0, Lcom/android/camera/CameraSettings;->mMode:I

    if-nez v1, :cond_1

    .line 2406
    const/16 v1, 0x13

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2410
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    return-void

    .line 2408
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/16 v1, 0x7b

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_0
.end method

.method public setHDRHelpTextDialog(I)V
    .locals 4
    .parameter "HDRHelpTextDialog"

    .prologue
    .line 4904
    const-string v1, "pref_hdr_help_text_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 4905
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHDRHelpTextDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4906
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4907
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_hdr_help_text_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4908
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4910
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setHDRIntensityMode(I)V
    .locals 4
    .parameter "mHDRIntensityMode"

    .prologue
    .line 2664
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_hdr_intensity_mode_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/CameraSettings;->mHDRmodeLevel:I

    .line 2665
    iget v1, p0, Lcom/android/camera/CameraSettings;->mHDRmodeLevel:I

    if-eq v1, p1, :cond_0

    .line 2666
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHDRmode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2667
    iput p1, p0, Lcom/android/camera/CameraSettings;->mHDRmodeLevel:I

    .line 2668
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2669
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_hdr_intensity_mode_key"

    iget v2, p0, Lcom/android/camera/CameraSettings;->mHDRmodeLevel:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2670
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2672
    const/16 v1, 0x36

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2674
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setHDRModeLevel(I)V
    .locals 4
    .parameter "level"

    .prologue
    .line 2647
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_hdr_mode_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/CameraSettings;->mHDRmodeLevel:I

    .line 2648
    iget v1, p0, Lcom/android/camera/CameraSettings;->mHDRmodeLevel:I

    if-eq v1, p1, :cond_0

    .line 2649
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHDRmode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2650
    iput p1, p0, Lcom/android/camera/CameraSettings;->mHDRmodeLevel:I

    .line 2651
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2652
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_hdr_mode_key"

    iget v2, p0, Lcom/android/camera/CameraSettings;->mHDRmodeLevel:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2653
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2655
    const/16 v1, 0x33

    iget v2, p0, Lcom/android/camera/CameraSettings;->mHDRmodeLevel:I

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2657
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setHDRPictureMode(I)V
    .locals 4
    .parameter "mHDRPictureMode"

    .prologue
    .line 2681
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_hdr_picture_mode_key"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/CameraSettings;->mHDRmodePicture:I

    .line 2682
    iget v1, p0, Lcom/android/camera/CameraSettings;->mHDRmodePicture:I

    if-eq v1, p1, :cond_0

    .line 2683
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHDRPicturemode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2684
    iput p1, p0, Lcom/android/camera/CameraSettings;->mHDRmodePicture:I

    .line 2685
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2686
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_hdr_picture_mode_key"

    iget v2, p0, Lcom/android/camera/CameraSettings;->mHDRmodePicture:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2687
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2689
    const/16 v1, 0x37

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2691
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setMaxRecordingSize(J)V
    .locals 0
    .parameter "size"

    .prologue
    .line 1755
    iput-wide p1, p0, Lcom/android/camera/CameraSettings;->mMaxMmsSize:J

    .line 1756
    return-void
.end method

.method public setMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 1827
    iget v0, p0, Lcom/android/camera/CameraSettings;->mMode:I

    if-eq v0, p1, :cond_0

    .line 1828
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    iput p1, p0, Lcom/android/camera/CameraSettings;->mMode:I

    .line 1830
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1832
    :cond_0
    return-void
.end method

.method public setNetWork(I)V
    .locals 7
    .parameter "network"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2548
    const/4 v0, 0x1

    .line 2550
    .local v0, b:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v3, Lcom/android/camera/Camera;

    iget-object v3, v3, Lcom/android/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v3, :cond_0

    .line 2551
    iget-object v3, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v3, Lcom/android/camera/Camera;

    iget-object v3, v3, Lcom/android/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v3}, Lcom/samsung/shareshot/IShareShotService;->isAutoStart()Z

    move-result v0

    .line 2552
    :cond_0
    if-eqz v0, :cond_3

    move v3, v4

    :goto_0
    iput v3, p0, Lcom/android/camera/CameraSettings;->mNetwork:I

    .line 2553
    iget v3, p0, Lcom/android/camera/CameraSettings;->mNetwork:I

    if-eq v3, p1, :cond_1

    iget-object v3, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v3, Lcom/android/camera/Camera;

    iget-object v3, v3, Lcom/android/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v3, :cond_1

    .line 2554
    iget-object v3, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v3, Lcom/android/camera/Camera;

    iget-object v6, v3, Lcom/android/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-nez v0, :cond_4

    move v3, v4

    :goto_1
    invoke-interface {v6, v3}, Lcom/samsung/shareshot/IShareShotService;->setAutoPreview(Z)V

    .line 2555
    const/16 v3, 0x2a

    invoke-virtual {p0, v3, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2561
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v3

    const-string v4, "pref_camera_network_key"

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/camera/CameraSettings;->mNetwork:I

    .line 2562
    iget v3, p0, Lcom/android/camera/CameraSettings;->mNetwork:I

    if-eq v3, p1, :cond_2

    .line 2563
    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mNetwork "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2564
    iput p1, p0, Lcom/android/camera/CameraSettings;->mNetwork:I

    .line 2565
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2566
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_camera_network_key"

    iget v4, p0, Lcom/android/camera/CameraSettings;->mNetwork:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2567
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2569
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    return-void

    :cond_3
    move v3, v5

    .line 2552
    goto :goto_0

    :cond_4
    move v3, v5

    .line 2554
    goto :goto_1

    .line 2557
    :catch_0
    move-exception v1

    .line 2559
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method public setNumberOfCsShotCaptured(I)V
    .locals 0
    .parameter "mNumberOfCsShotCaptured"

    .prologue
    .line 4607
    iput p1, p0, Lcom/android/camera/CameraSettings;->mNumberOfCsShotCaptured:I

    .line 4608
    return-void
.end method

.method public setNumberOfCsShotSaved(I)V
    .locals 0
    .parameter "mNumberOfCsShotSaved"

    .prologue
    .line 4615
    iput p1, p0, Lcom/android/camera/CameraSettings;->mNumberOfCsShotSaved:I

    .line 4616
    return-void
.end method

.method public setOnDeviceHelpScreen(Z)V
    .locals 5
    .parameter "onDeviceHelpScreen"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 4986
    if-ne p1, v2, :cond_0

    .line 4987
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 4992
    .local v1, values:Landroid/content/ContentValues;
    :goto_0
    const-string v2, "displayed"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 4993
    const-string v2, "content://com.samsung.helphub.provider/help_page_status/camera"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4994
    .local v0, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4995
    return-void

    .line 4989
    .end local v0           #uri:Landroid/net/Uri;
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .restart local v1       #values:Landroid/content/ContentValues;
    goto :goto_0
.end method

.method public setPreviewFileReceived(I)V
    .locals 6
    .parameter "previewFileReceived"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2572
    const/4 v0, 0x1

    .line 2573
    .local v0, b:Z
    iget-object v2, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    if-nez v2, :cond_1

    .line 2587
    :cond_0
    :goto_0
    return-void

    .line 2576
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v2, Lcom/android/camera/Camera;

    iget-object v2, v2, Lcom/android/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v2, :cond_2

    .line 2577
    iget-object v2, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v2, Lcom/android/camera/Camera;

    iget-object v2, v2, Lcom/android/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v2}, Lcom/samsung/shareshot/IShareShotService;->getAutoPreview()Z

    move-result v0

    .line 2578
    :cond_2
    if-eqz v0, :cond_3

    move v2, v3

    :goto_1
    iput v2, p0, Lcom/android/camera/CameraSettings;->mPreviewFileReceived:I

    .line 2579
    iget v2, p0, Lcom/android/camera/CameraSettings;->mPreviewFileReceived:I

    if-eq v2, p1, :cond_0

    iget-object v2, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v2, Lcom/android/camera/Camera;

    iget-object v2, v2, Lcom/android/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v2, :cond_0

    .line 2580
    iget-object v2, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v2, Lcom/android/camera/Camera;

    iget-object v5, v2, Lcom/android/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-nez v0, :cond_4

    move v2, v3

    :goto_2
    invoke-interface {v5, v2}, Lcom/samsung/shareshot/IShareShotService;->setAutoPreview(Z)V

    .line 2581
    const/16 v2, 0x2a

    invoke-virtual {p0, v2, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2583
    :catch_0
    move-exception v1

    .line 2585
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v1           #e:Landroid/os/RemoteException;
    :cond_3
    move v2, v4

    .line 2578
    goto :goto_1

    :cond_4
    move v2, v4

    .line 2580
    goto :goto_2
.end method

.method public setRecordingSpeed(I)V
    .locals 3
    .parameter "speed"

    .prologue
    .line 3003
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecordingSpeed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " recordingmode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3010
    return-void
.end method

.method public setRequestedRecordingSize(J)V
    .locals 0
    .parameter "size"

    .prologue
    .line 1739
    iput-wide p1, p0, Lcom/android/camera/CameraSettings;->mRequestedRecordingSize:J

    .line 1740
    return-void
.end method

.method public setSbeamHelpTextDialog(I)V
    .locals 4
    .parameter "sbeamHelpTextDialog"

    .prologue
    .line 4943
    const-string v1, "pref_sbeam_help_text_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 4944
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSbeamHelpTextDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4945
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4946
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_sbeam_help_text_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4947
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4949
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setSceneMode(I)V
    .locals 3
    .parameter "sceneMode"

    .prologue
    .line 1911
    iget v0, p0, Lcom/android/camera/CameraSettings;->mSceneMode:I

    if-eq v0, p1, :cond_0

    .line 1912
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSceneMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    iput p1, p0, Lcom/android/camera/CameraSettings;->mSceneMode:I

    .line 1914
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(IIZ)V

    .line 1916
    :cond_0
    return-void
.end method

.method public setSecureMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 3255
    iput-boolean p1, p0, Lcom/android/camera/CameraSettings;->mSecureMode:Z

    .line 3256
    return-void
.end method

.method public setSelectedMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 1845
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_selected_mode_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/CameraSettings;->mSelectedMode:I

    .line 1846
    iget v1, p0, Lcom/android/camera/CameraSettings;->mSelectedMode:I

    if-eq v1, p1, :cond_0

    .line 1847
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSelectedMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    iput p1, p0, Lcom/android/camera/CameraSettings;->mSelectedMode:I

    .line 1849
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1850
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_selected_mode_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1851
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1853
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setSelfFlip(I)V
    .locals 4
    .parameter "flip"

    .prologue
    .line 3324
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setup_self_flip_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/CameraSettings;->mFlip:I

    .line 3325
    iget v1, p0, Lcom/android/camera/CameraSettings;->mFlip:I

    if-eq v1, p1, :cond_0

    .line 3326
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFlip "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3327
    iput p1, p0, Lcom/android/camera/CameraSettings;->mFlip:I

    .line 3328
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3329
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_setup_self_flip_key"

    iget v2, p0, Lcom/android/camera/CameraSettings;->mFlip:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3330
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3332
    const/16 v1, 0x26

    iget v2, p0, Lcom/android/camera/CameraSettings;->mFlip:I

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3334
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setSelfToggle(Z)V
    .locals 0
    .parameter "toggle"

    .prologue
    .line 1874
    iput-boolean p1, p0, Lcom/android/camera/CameraSettings;->mSelfToggle:Z

    .line 1875
    return-void
.end method

.method public varargs setSettingValuesAsDefault([I)V
    .locals 9
    .parameter "indices"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 1194
    move-object v0, p1

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget v2, v0, v1

    .line 1195
    .local v2, index:I
    sparse-switch v2, :sswitch_data_0

    .line 1328
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error in setSettingValuesAsDefault : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    :goto_1
    :sswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1197
    :sswitch_1
    iput v7, p0, Lcom/android/camera/CameraSettings;->mShootingMode:I

    .line 1198
    iget v4, p0, Lcom/android/camera/CameraSettings;->mShootingMode:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1201
    :sswitch_2
    iput v7, p0, Lcom/android/camera/CameraSettings;->mSceneMode:I

    .line 1202
    iget v4, p0, Lcom/android/camera/CameraSettings;->mSceneMode:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1205
    :sswitch_3
    iput v7, p0, Lcom/android/camera/CameraSettings;->mTimer:I

    .line 1206
    iget v4, p0, Lcom/android/camera/CameraSettings;->mTimer:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1209
    :sswitch_4
    iput v7, p0, Lcom/android/camera/CameraSettings;->mExposureValue:I

    .line 1210
    iget v4, p0, Lcom/android/camera/CameraSettings;->mExposureValue:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1215
    :sswitch_5
    iput v7, p0, Lcom/android/camera/CameraSettings;->mWB:I

    .line 1216
    iget v4, p0, Lcom/android/camera/CameraSettings;->mWB:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1219
    :sswitch_6
    iput v7, p0, Lcom/android/camera/CameraSettings;->mZoomValue:I

    .line 1220
    iget v4, p0, Lcom/android/camera/CameraSettings;->mZoomValue:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1223
    :sswitch_7
    iput v8, p0, Lcom/android/camera/CameraSettings;->mContrast:I

    .line 1224
    iget v4, p0, Lcom/android/camera/CameraSettings;->mContrast:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1227
    :sswitch_8
    iput v8, p0, Lcom/android/camera/CameraSettings;->mSaturation:I

    .line 1228
    iget v4, p0, Lcom/android/camera/CameraSettings;->mSaturation:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1231
    :sswitch_9
    iput v8, p0, Lcom/android/camera/CameraSettings;->mSharpness:I

    .line 1232
    iget v4, p0, Lcom/android/camera/CameraSettings;->mSharpness:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1235
    :sswitch_a
    iget v4, p0, Lcom/android/camera/CameraSettings;->DEFAULT_OUTDOOR_VISIBILITY:I

    iput v4, p0, Lcom/android/camera/CameraSettings;->mOutdoorVisibility:I

    .line 1236
    iget v4, p0, Lcom/android/camera/CameraSettings;->mOutdoorVisibility:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1239
    :sswitch_b
    iput v7, p0, Lcom/android/camera/CameraSettings;->mAutoContrast:I

    .line 1240
    iget v4, p0, Lcom/android/camera/CameraSettings;->mAutoContrast:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1255
    :sswitch_c
    iput v7, p0, Lcom/android/camera/CameraSettings;->mRecordingMode:I

    .line 1256
    iget v4, p0, Lcom/android/camera/CameraSettings;->mRecordingMode:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1259
    :sswitch_d
    iput v7, p0, Lcom/android/camera/CameraSettings;->mCamcorderTimer:I

    .line 1260
    iget v4, p0, Lcom/android/camera/CameraSettings;->mCamcorderTimer:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1263
    :sswitch_e
    iput v7, p0, Lcom/android/camera/CameraSettings;->mCamcorderExposureValue:I

    .line 1264
    iget v4, p0, Lcom/android/camera/CameraSettings;->mCamcorderExposureValue:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1267
    :sswitch_f
    iput v7, p0, Lcom/android/camera/CameraSettings;->mCamcorderZoomValue:I

    .line 1268
    iget v4, p0, Lcom/android/camera/CameraSettings;->mCamcorderZoomValue:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    .line 1271
    :sswitch_10
    iput v8, p0, Lcom/android/camera/CameraSettings;->mCamcorderContrast:I

    .line 1272
    iget v4, p0, Lcom/android/camera/CameraSettings;->mCamcorderContrast:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1275
    :sswitch_11
    iput v8, p0, Lcom/android/camera/CameraSettings;->mCamcorderSaturation:I

    .line 1276
    iget v4, p0, Lcom/android/camera/CameraSettings;->mCamcorderSaturation:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1279
    :sswitch_12
    iput v8, p0, Lcom/android/camera/CameraSettings;->mCamcorderSharpness:I

    .line 1280
    iget v4, p0, Lcom/android/camera/CameraSettings;->mCamcorderSharpness:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1283
    :sswitch_13
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/camera/CameraSettings;->mCamcorderAudioRecording:I

    .line 1284
    iget v4, p0, Lcom/android/camera/CameraSettings;->mCamcorderAudioRecording:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1287
    :sswitch_14
    iget v4, p0, Lcom/android/camera/CameraSettings;->DEFAULT_OUTDOOR_VISIBILITY:I

    iput v4, p0, Lcom/android/camera/CameraSettings;->mCamcorderOutdoorVisibility:I

    .line 1288
    iget v4, p0, Lcom/android/camera/CameraSettings;->mCamcorderOutdoorVisibility:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1291
    :sswitch_15
    iput v7, p0, Lcom/android/camera/CameraSettings;->mCamcorderAutoContrast:I

    .line 1292
    iget v4, p0, Lcom/android/camera/CameraSettings;->mCamcorderAutoContrast:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1307
    :sswitch_16
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getDefaultBurstMode()I

    move-result v4

    iput v4, p0, Lcom/android/camera/CameraSettings;->mBurstmode:I

    .line 1308
    iget v4, p0, Lcom/android/camera/CameraSettings;->mBurstmode:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1311
    :sswitch_17
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getAutoShareShotMode()I

    move-result v4

    iput v4, p0, Lcom/android/camera/CameraSettings;->mAutoShareShot:I

    .line 1312
    iget v4, p0, Lcom/android/camera/CameraSettings;->mAutoShareShot:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1315
    :sswitch_18
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getHDRModeLevel()I

    move-result v4

    iput v4, p0, Lcom/android/camera/CameraSettings;->mHDRmodeLevel:I

    .line 1316
    iget v4, p0, Lcom/android/camera/CameraSettings;->mHDRmodeLevel:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1319
    :sswitch_19
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getHDRIntensityMode()I

    move-result v4

    iput v4, p0, Lcom/android/camera/CameraSettings;->mHDRmodeLevel:I

    .line 1320
    iget v4, p0, Lcom/android/camera/CameraSettings;->mHDRmodeLevel:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1323
    :sswitch_1a
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getHDRPictureMode()I

    move-result v4

    iput v4, p0, Lcom/android/camera/CameraSettings;->mHDRmodePicture:I

    .line 1324
    iget v4, p0, Lcom/android/camera/CameraSettings;->mHDRmodePicture:I

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    .line 1332
    .end local v2           #index:I
    :cond_0
    return-void

    .line 1195
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_4
        0x9 -> :sswitch_5
        0xe -> :sswitch_b
        0x12 -> :sswitch_6
        0x18 -> :sswitch_7
        0x19 -> :sswitch_8
        0x1a -> :sswitch_9
        0x23 -> :sswitch_a
        0x2f -> :sswitch_16
        0x31 -> :sswitch_17
        0x33 -> :sswitch_18
        0x36 -> :sswitch_19
        0x37 -> :sswitch_1a
        0x38 -> :sswitch_0
        0x39 -> :sswitch_0
        0x65 -> :sswitch_c
        0x6a -> :sswitch_d
        0x6b -> :sswitch_5
        0x6d -> :sswitch_e
        0x6e -> :sswitch_15
        0x70 -> :sswitch_f
        0x72 -> :sswitch_10
        0x73 -> :sswitch_11
        0x74 -> :sswitch_12
        0x77 -> :sswitch_13
        0x7a -> :sswitch_14
        0x86 -> :sswitch_0
        0x87 -> :sswitch_0
    .end sparse-switch
.end method

.method public setShootAndShare(I)V
    .locals 4
    .parameter "sns"

    .prologue
    .line 2515
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_shootandshare_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/CameraSettings;->mShootAndShare:I

    .line 2516
    iget v1, p0, Lcom/android/camera/CameraSettings;->mShootAndShare:I

    if-eq v1, p1, :cond_0

    .line 2517
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setShootAndShare "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    iput p1, p0, Lcom/android/camera/CameraSettings;->mShootAndShare:I

    .line 2519
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2520
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_shootandshare_key"

    iget v2, p0, Lcom/android/camera/CameraSettings;->mShootAndShare:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2521
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2522
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getMenuDimController()Lcom/android/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v1, v2, p1}, Lcom/android/camera/MenuDimController;->refreshButtonDim(II)V

    .line 2524
    const/16 v1, 0x27

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2526
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setShootingMode(I)V
    .locals 1
    .parameter "shootingMode"

    .prologue
    .line 1886
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/CameraSettings;->setShootingMode(IZ)V

    .line 1887
    return-void
.end method

.method public setShootingMode(IZ)V
    .locals 3
    .parameter "shootingMode"
    .parameter "exiting"

    .prologue
    .line 1890
    iget v0, p0, Lcom/android/camera/CameraSettings;->mShootingMode:I

    if-eq v0, p1, :cond_0

    .line 1891
    iget v0, p0, Lcom/android/camera/CameraSettings;->mShootingMode:I

    iput v0, p0, Lcom/android/camera/CameraSettings;->mPreviousShootingMode:I

    .line 1893
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShootingMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    iput p1, p0, Lcom/android/camera/CameraSettings;->mShootingMode:I

    .line 1895
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1896
    iget v0, p0, Lcom/android/camera/CameraSettings;->mShootingMode:I

    iput v0, p0, Lcom/android/camera/CameraSettings;->mBackShootingMode:I

    .line 1900
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1901
    if-nez p2, :cond_0

    .line 1902
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/Camera;->handleShootingModeChanged(I)V

    .line 1904
    :cond_0
    return-void

    .line 1898
    :cond_1
    iget v0, p0, Lcom/android/camera/CameraSettings;->mShootingMode:I

    iput v0, p0, Lcom/android/camera/CameraSettings;->mFrontShootingMode:I

    goto :goto_0
.end method

.method public setSingleShotBurstHelpTextDialog(I)V
    .locals 4
    .parameter "singleShotBurstHelpTextDialog"

    .prologue
    .line 4886
    const-string v1, "pref_single_shot_burst_help_text_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 4887
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSingleShotBurstHelpTextDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4888
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4889
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_single_shot_burst_help_text_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4890
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4892
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setSnapshotLimitationDialog(I)V
    .locals 4
    .parameter "snapshotLimitationDialog"

    .prologue
    .line 4956
    const-string v1, "pref_snap_shot_limitation_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 4957
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSnapshotLimitationDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4958
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4959
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_snap_shot_limitation_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4960
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4962
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setStorage(I)V
    .locals 6
    .parameter "storage"

    .prologue
    const/16 v5, 0x75

    const/16 v4, 0x16

    .line 3153
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setup_storage_key"

    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getDefaultStorage()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/CameraSettings;->mStorage:I

    .line 3154
    iget v1, p0, Lcom/android/camera/CameraSettings;->mStorage:I

    if-eq v1, p1, :cond_0

    .line 3155
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStorage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3156
    iput p1, p0, Lcom/android/camera/CameraSettings;->mStorage:I

    .line 3157
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3158
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_setup_storage_key"

    iget v2, p0, Lcom/android/camera/CameraSettings;->mStorage:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3159
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3161
    iget v1, p0, Lcom/android/camera/CameraSettings;->mMode:I

    if-nez v1, :cond_2

    .line 3162
    invoke-virtual {p0, v4, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3166
    :goto_0
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->setDefaultStorageStatus()V

    .line 3167
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->updateRemainTime()V

    .line 3170
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    if-nez p1, :cond_1

    .line 3171
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getMenuDimController()Lcom/android/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1, v4, p1}, Lcom/android/camera/MenuDimController;->refreshButtonDim(II)V

    .line 3173
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getMenuDimController()Lcom/android/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1, v5, p1}, Lcom/android/camera/MenuDimController;->refreshButtonDim(II)V

    .line 3175
    :cond_1
    return-void

    .line 3164
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    invoke-virtual {p0, v5, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_0
.end method

.method public setStorageForBurstDialog(I)V
    .locals 4
    .parameter "storageForBurst"

    .prologue
    .line 4865
    const-string v1, "pref_storage_burst_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 4866
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStorageForBurstDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4867
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4868
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_storage_burst_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4869
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4871
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setTimer(I)V
    .locals 3
    .parameter "timer"

    .prologue
    .line 2028
    iget v0, p0, Lcom/android/camera/CameraSettings;->mTimer:I

    if-eq v0, p1, :cond_0

    .line 2029
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTimer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    iput p1, p0, Lcom/android/camera/CameraSettings;->mTimer:I

    .line 2031
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2033
    :cond_0
    return-void
.end method

.method public setTrueDefaultSideMenu(Ljava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 4
    .parameter "orderString"
    .parameter "map"

    .prologue
    .line 1343
    invoke-virtual {p0, p2}, Lcom/android/camera/CameraSettings;->resetValueSideMenuMap(Ljava/util/LinkedHashMap;)V

    .line 1344
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    .local v1, st:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1346
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/camera/CameraSettings;->getShortcutMenuID(Ljava/lang/String;)I

    move-result v0

    .line 1347
    .local v0, commandId:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1349
    .end local v0           #commandId:I
    :cond_0
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 2534
    iput-object p1, p0, Lcom/android/camera/CameraSettings;->mUserName:Ljava/lang/String;

    .line 2535
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2536
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_user_name"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2537
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2539
    const/16 v1, 0x29

    const/16 v2, 0x3e9

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2540
    return-void
.end method

.method public setVideocallPresetSelected(Z)V
    .locals 0
    .parameter "mVideocallPresetSelected"

    .prologue
    .line 4623
    iput-boolean p1, p0, Lcom/android/camera/CameraSettings;->mVideocallPresetSelected:Z

    .line 4624
    return-void
.end method

.method public setVolumeKey(I)V
    .locals 4
    .parameter "volumeKey"

    .prologue
    .line 2438
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_volumekey_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/CameraSettings;->mVolumeKey:I

    .line 2439
    iget v1, p0, Lcom/android/camera/CameraSettings;->mVolumeKey:I

    if-eq v1, p1, :cond_0

    .line 2440
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetCameraVolumeKey "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2441
    iput p1, p0, Lcom/android/camera/CameraSettings;->mVolumeKey:I

    .line 2442
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2443
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_volumekey_key"

    iget v2, p0, Lcom/android/camera/CameraSettings;->mVolumeKey:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2444
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2446
    iget v1, p0, Lcom/android/camera/CameraSettings;->mMode:I

    if-nez v1, :cond_1

    .line 2447
    const/16 v1, 0x34

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2452
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    return-void

    .line 2449
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/16 v1, 0x85

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_0
.end method

.method public setWhiteBalance(I)V
    .locals 3
    .parameter "whitebalance"

    .prologue
    .line 2225
    iget v0, p0, Lcom/android/camera/CameraSettings;->mWB:I

    if-eq v0, p1, :cond_0

    .line 2226
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWhiteBalance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2227
    iput p1, p0, Lcom/android/camera/CameraSettings;->mWB:I

    .line 2228
    iget v0, p0, Lcom/android/camera/CameraSettings;->mMode:I

    if-nez v0, :cond_1

    .line 2229
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 2233
    :cond_0
    :goto_0
    return-void

    .line 2231
    :cond_1
    const/16 v0, 0x6b

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_0
.end method

.method public setWifiP2pEnabled()V
    .locals 5

    .prologue
    .line 5350
    iget-object v2, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "wifip2p"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 5351
    .local v1, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    if-eqz v1, :cond_2

    .line 5352
    iget-object v2, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    iget-object v3, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    .line 5353
    .local v0, mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    if-nez v0, :cond_0

    .line 5355
    const-string v2, "CameraSettings"

    const-string v3, "Failed to set up connection with wifi p2p service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5356
    const/4 v1, 0x0

    .line 5358
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->isP2pEnabled()Z

    move-result v2

    goto :goto_0

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    .line 5359
    .line 5363
    .end local v0           #mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    :cond_1
    :goto_0
    return-void

    .line 5361
    :cond_2
    const-string v2, "CameraSettings"

    const-string v3, "mWifiP2pManager is null !"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setshowTurnOnBurstShotHelpTextDialog(I)V
    .locals 4
    .parameter "showTurnOnBurstShotHelpTextDialog"

    .prologue
    .line 4895
    const-string v1, "pref_turn_on_burst_help_text_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 4896
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setshowTurnOnBurstShotHelpTextDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4897
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4898
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_turn_on_burst_help_text_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4899
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4901
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public unregisterCameraSettingsChangedObserver(Lcom/android/camera/CameraSettings$OnCameraSettingsChangedObserver;)V
    .locals 2
    .parameter "o"

    .prologue
    .line 3407
    iget-object v1, p0, Lcom/android/camera/CameraSettings;->mObservers:Ljava/util/List;

    monitor-enter v1

    .line 3408
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3409
    monitor-exit v1

    .line 3410
    return-void

    .line 3409
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateRecordingModeWhenSwitchCamera()V
    .locals 2

    .prologue
    .line 978
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 979
    iget v0, p0, Lcom/android/camera/CameraSettings;->mBackRecordingMode:I

    iput v0, p0, Lcom/android/camera/CameraSettings;->mRecordingMode:I

    .line 983
    :goto_0
    const/16 v0, 0x65

    iget v1, p0, Lcom/android/camera/CameraSettings;->mRecordingMode:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 984
    return-void

    .line 981
    :cond_0
    iget v0, p0, Lcom/android/camera/CameraSettings;->mFrontRecordingMode:I

    iput v0, p0, Lcom/android/camera/CameraSettings;->mRecordingMode:I

    goto :goto_0
.end method

.method public updateShootingModeWhenSwitchCamera()V
    .locals 2

    .prologue
    .line 966
    iget v0, p0, Lcom/android/camera/CameraSettings;->mShootingMode:I

    iput v0, p0, Lcom/android/camera/CameraSettings;->mPreviousShootingMode:I

    .line 968
    invoke-virtual {p0}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 969
    iget v0, p0, Lcom/android/camera/CameraSettings;->mBackShootingMode:I

    iput v0, p0, Lcom/android/camera/CameraSettings;->mShootingMode:I

    .line 973
    :goto_0
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/camera/CameraSettings;->mShootingMode:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 974
    iget-object v0, p0, Lcom/android/camera/CameraSettings;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    iget v1, p0, Lcom/android/camera/CameraSettings;->mShootingMode:I

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->handleShootingModeChanged(I)V

    .line 975
    return-void

    .line 971
    :cond_0
    iget v0, p0, Lcom/android/camera/CameraSettings;->mFrontShootingMode:I

    iput v0, p0, Lcom/android/camera/CameraSettings;->mShootingMode:I

    goto :goto_0
.end method
