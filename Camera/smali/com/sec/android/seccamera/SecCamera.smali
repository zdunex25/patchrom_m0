.class public Lcom/sec/android/seccamera/SecCamera;
.super Ljava/lang/Object;
.source "SecCamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/seccamera/SecCamera$1;,
        Lcom/sec/android/seccamera/SecCamera$Parameters;,
        Lcom/sec/android/seccamera/SecCamera$Area;,
        Lcom/sec/android/seccamera/SecCamera$Size;,
        Lcom/sec/android/seccamera/SecCamera$ErrorCallback;,
        Lcom/sec/android/seccamera/SecCamera$Face;,
        Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;,
        Lcom/sec/android/seccamera/SecCamera$OnZoomChangeListener;,
        Lcom/sec/android/seccamera/SecCamera$PictureCallback;,
        Lcom/sec/android/seccamera/SecCamera$ShutterCallback;,
        Lcom/sec/android/seccamera/SecCamera$AutoFocusMoveCallback;,
        Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;,
        Lcom/sec/android/seccamera/SecCamera$EventHandler;,
        Lcom/sec/android/seccamera/SecCamera$PreviewCallback;,
        Lcom/sec/android/seccamera/SecCamera$OnDualEventListener;,
        Lcom/sec/android/seccamera/SecCamera$OnAutoLowLightDetectionListener;,
        Lcom/sec/android/seccamera/SecCamera$OnPhotoGrapherDetectionListener;,
        Lcom/sec/android/seccamera/SecCamera$OnSecImageEffectListner;,
        Lcom/sec/android/seccamera/SecCamera$OnBeautyShotEventListener;,
        Lcom/sec/android/seccamera/SecCamera$OnDramaShotEventListener;,
        Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;,
        Lcom/sec/android/seccamera/SecCamera$OnPetDetectionListener;,
        Lcom/sec/android/seccamera/SecCamera$OnNotifyFirstPreviewFrameEventListener;,
        Lcom/sec/android/seccamera/SecCamera$OnMultiFrameShotEventListener;,
        Lcom/sec/android/seccamera/SecCamera$OnPIPShotEventListener;,
        Lcom/sec/android/seccamera/SecCamera$OnMagicFrameShotEventListener;,
        Lcom/sec/android/seccamera/SecCamera$OnSIM3DPhotoShotEventListener;,
        Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;,
        Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;,
        Lcom/sec/android/seccamera/SecCamera$OnChkDataLineListener;,
        Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;,
        Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;,
        Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;,
        Lcom/sec/android/seccamera/SecCamera$OnAddMeEventListener;,
        Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;,
        Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;,
        Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;,
        Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;,
        Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    }
.end annotation


# static fields
.field public static final ACTION_NEW_PICTURE:Ljava/lang/String; = "android.hardware.action.NEW_PICTURE"

.field public static final ACTION_NEW_VIDEO:Ljava/lang/String; = "android.hardware.action.NEW_VIDEO"

.field private static final ACTION_SHOT_CANCELSERIES:I = 0x46e

.field private static final ACTION_SHOT_CAPTURED:I = 0xf045

.field private static final ACTION_SHOT_CREATING_RESULT_COMPLETED:I = 0xf043

.field private static final ACTION_SHOT_CREATING_RESULT_PROGRESS:I = 0xf042

.field private static final ACTION_SHOT_CREATING_RESULT_STARTED:I = 0xf041

.field private static final ACTION_SHOT_FINALIZE:I = 0x470

.field private static final ACTION_SHOT_INITIALIZE:I = 0x46b

.field private static final ACTION_SHOT_PROGRESS_ACQUISITION:I = 0xf044

.field private static final ACTION_SHOT_RECT:I = 0xf046

.field private static final ACTION_SHOT_SETRESOLUTION:I = 0x46c

.field private static final ACTION_SHOT_STARTSERIES:I = 0x46d

.field private static final ACTION_SHOT_STOPSERIES:I = 0x46f

.field private static final ADDME_SHOT_CANCEL_CAPTURE:I = 0x479

.field private static final ADDME_SHOT_CAPUTRED_FIRSTPERSON:I = 0xf052

.field private static final ADDME_SHOT_ERR:I = 0xf051

.field private static final ADDME_SHOT_FINALIZE:I = 0x47a

.field private static final ADDME_SHOT_HANDLE_SNAPSHOT:I = 0x478

.field private static final ADDME_SHOT_INIT:I = 0x475

.field private static final ADDME_SHOT_PROGRESS_STITCHING:I = 0xf053

.field private static final ADDME_SHOT_START_CAPTURE:I = 0x476

.field private static final ADDME_SHOT_SWITCH_POSITION:I = 0x477

.field private static final AUTO_LOW_LIGHT_DETECTION_CHANGED:I = 0xf231

.field private static final AUTO_LOW_LIGHT_SET:I = 0x547

.field private static final BABY_SHOT_DETECTION_REINIT:I = 0x490

.field private static final BABY_SHOT_FACE_DETECTION_START:I = 0x48e

.field private static final BABY_SHOT_FACE_DETECTION_STOP:I = 0x48f

.field private static final BABY_SHOT_FACE_DETECTION_SUCCESS:I = 0xf095

.field private static final BEAUTY_FACE_RETOUCH:I = 0x49d

.field private static final BEAUTY_LIVE_EFFECT:I = 0x49e

.field private static final BEAUTY_SHOT_MANUAL_MODE:I = 0x49f

.field private static final BEAUTY_SHOT_PROGRESS_RENDERING:I = 0xf151

.field private static final BURST_SHOT_CAPTURE:I = 0x48a

.field private static final BURST_SHOT_CAPTURING_PROGRESSED:I = 0xf091

.field private static final BURST_SHOT_CAPTURING_STOPPED:I = 0xf092

.field private static final BURST_SHOT_FILE_STRING:I = 0xf094

.field private static final BURST_SHOT_SAVING_COMPLETED:I = 0xf093

.field private static final BURST_SHOT_START_CAPTURE:I = 0x48b

.field private static final BURST_SHOT_STOP_AND_ENCODING:I = 0x48c

.field private static final BURST_SHOT_STORING:I = 0x489

.field private static final BURST_SHOT_TERMINATE:I = 0x48d

.field private static final CAMERA_CMD_GET_WB_CUSTOM_VALUE:I = 0x4cf

.field private static final CAMERA_CMD_RESET_WB_CUSTOM_VALUE:I = 0x56f

.field private static final CAMERA_CMD_SMART_AUTO_S1_PUSH:I = 0x4e3

.field private static final CAMERA_CMD_SMART_AUTO_S1_RELEASE:I = 0x4e4

.field public static final CAMERA_ERROR_PREVIEWFRAME_TIMEOUT:I = 0x3e9

.field public static final CAMERA_ERROR_PRIORITY_DIED:I = 0xc8

.field public static final CAMERA_ERROR_SERVER_DIED:I = 0x64

.field public static final CAMERA_ERROR_UNKNOWN:I = 0x1

.field private static final CAMERA_FACE_DETECTION_HW:I = 0x0

.field private static final CAMERA_FACE_DETECTION_SAMSUNG_SW:I = 0x4

.field private static final CAMERA_FACE_DETECTION_SW:I = 0x1

.field private static final CAMERA_FACE_DETECTION_SW_ONE_EYE:I = 0x2

.field private static final CAMERA_FACE_DETECTION_SW_TWO_EYE:I = 0x3

.field private static final CAMERA_MSG_ALL_MSGS:I = -0x1

.field private static final CAMERA_MSG_AUTO_PARAMETERS_NOTIFY:I = 0x2000

.field private static final CAMERA_MSG_COMPRESSED_IMAGE:I = 0x100

.field private static final CAMERA_MSG_ERROR:I = 0x1

.field private static final CAMERA_MSG_EXT_NOTIFY:I = 0x8000

.field private static final CAMERA_MSG_FOCUS:I = 0x4

.field private static final CAMERA_MSG_FOCUS_MOVE:I = 0x800

.field private static final CAMERA_MSG_MANUAL_FOCUS_NOTIFY:I = 0x40000

.field private static final CAMERA_MSG_POSTVIEW_FRAME:I = 0x40

.field private static final CAMERA_MSG_PREVIEW_FRAME:I = 0x10

.field private static final CAMERA_MSG_PREVIEW_METADATA:I = 0x400

.field private static final CAMERA_MSG_RAW_IMAGE:I = 0x80

.field private static final CAMERA_MSG_RAW_IMAGE_NOTIFY:I = 0x200

.field private static final CAMERA_MSG_SHOT_END:I = 0x4000

.field private static final CAMERA_MSG_SHUTTER:I = 0x2

.field private static final CAMERA_MSG_TO_FACTORY_NOTIFY:I = 0x10000

.field private static final CAMERA_MSG_VIDEO_FRAME:I = 0x20

.field private static final CAMERA_MSG_ZOOM:I = 0x8

.field private static final CAMERA_MSG_ZOOM_STEP_NOTIFY:I = 0x1000

.field private static final CARTOON_SHOT_PROGRESS_RENDERING:I = 0xf071

.field private static final CARTOON_SHOT_SELECT_MODE:I = 0x47f

.field private static final CHECK_MARKER_OF_SAMSUNG_DEFINED_CALLBACK_MSGS:I = 0xf000

.field private static final CONTINUOUS_SHOT_CAPTURING_PROGRESSED:I = 0xf031

.field private static final CONTINUOUS_SHOT_CAPTURING_STOPPED:I = 0xf032

.field private static final CONTINUOUS_SHOT_SAVING_COMPLETED:I = 0xf033

.field private static final CONTINUOUS_SHOT_SOUND:I = 0x464

.field private static final CONTINUOUS_SHOT_START_CAPTURE:I = 0x461

.field private static final CONTINUOUS_SHOT_STOP_AND_ENCODING:I = 0x462

.field private static final CONTINUOUS_SHOT_TERMINATE:I = 0x463

.field private static final DEVICE_ORIENTATION:I = 0x5f1

.field private static final DRAMA_SHOT_CANCEL:I = 0x535

.field private static final DRAMA_SHOT_CAPTURING_PROGRESS:I = 0xf221

.field private static final DRAMA_SHOT_ERROR:I = 0xf223

.field private static final DRAMA_SHOT_INPUT_YUV_STRING:I = 0xf224

.field private static final DRAMA_SHOT_MODE:I = 0x536

.field private static final DRAMA_SHOT_PROGRESS_POSTPROCESSING:I = 0xf222

.field private static final DRAMA_SHOT_RESULT_YUV_STRING:I = 0xf225

.field private static final DRAMA_SHOT_START:I = 0x533

.field private static final DRAMA_SHOT_STOP:I = 0x534

.field private static final DRAMA_SHOT_STORAGE:I = 0x537

.field private static final DUAL_CAMERA_CAPTURE_STATUS_CHANGED:I = 0xf251

.field private static final DUAL_MODE_SHOT_ASYNC_CAPTURE:I = 0x55e

.field public static final EFFECT_REAR_BOTTOM_FRONT_TOP:I = 0x0

.field public static final EFFECT_REAR_TOP_FRONT_BOTTOM:I = 0x1

.field private static final FACE_DETECTION_HINT:I = 0x4a7

.field private static final FIRMWARE_MSG_NOTIFY:I = 0x20000

.field private static final GOLF_SHOT_CAPTURED:I = 0xf195

.field private static final GOLF_SHOT_CREATING_RESULT_COMPLETED:I = 0xf193

.field private static final GOLF_SHOT_CREATING_RESULT_PROGRESS:I = 0xf192

.field private static final GOLF_SHOT_CREATING_RESULT_STARTED:I = 0xf191

.field private static final GOLF_SHOT_ERROR:I = 0xf196

.field private static final GOLF_SHOT_SAVE:I = 0x521

.field private static final GOLF_SHOT_SAVE_RESULT_PROGRESS:I = 0xf194

.field private static final GOLF_SHOT_START:I = 0x51f

.field private static final GOLF_SHOT_STOP:I = 0x520

.field private static final HAL_AE_AWB_LOCK_UNLOCK:I = 0x5dd

.field private static final HAL_AF_LAMP_CONTROL:I = 0x613

.field private static final HAL_CANCEL_AF_FOCUS_AREA:I = 0x611

.field private static final HAL_CAPTURE_END:I = 0x612

.field private static final HAL_DELETE_BURST_TAKE:I = 0x625

.field private static final HAL_DISABLE_POSTVIEW_TO_OVERLAY:I = 0x5e5

.field private static final HAL_DONE_CHK_DATALINE:I = 0xf002

.field private static final HAL_FACE_DETECT_LOCK_UNLOCK:I = 0x5de

.field private static final HAL_FLASH_POPUP:I = 0x616

.field private static final HAL_FLUSH_ION_MEMORY:I = 0x619

.field private static final HAL_MSG_OBJ_TRACKING:I = 0xf001

.field private static final HAL_OBJECT_POSITION:I = 0x5df

.field private static final HAL_OBJECT_TRACKING_STARTSTOP:I = 0x5e0

.field private static final HAL_QUICK_VIEW_CANCEL:I = 0x632

.field private static final HAL_SEND_FACE_ORIENTATION:I = 0x5fa

.field private static final HAL_SET_3D_PREVIEW_DISPLAY:I = 0x638

.field private static final HAL_SET_DEFAULT_IMEI:I = 0x5e3

.field private static final HAL_SET_FILTER_EFFECT:I = 0x641

.field private static final HAL_SET_FLASH_CHARGING_STATUS:I = 0x614

.field private static final HAL_SET_FOCUS_ICON_SIZE:I = 0x639

.field private static final HAL_SET_FRONT_SENSOR_MIRROR:I = 0x5e6

.field private static final HAL_SET_IFUNCTION_RELEASE:I = 0x631

.field private static final HAL_SET_INTERVAL_SHOT_MANUAL_FOCUS:I = 0x64a

.field private static final HAL_SET_MANUAL_FOCUS_POSITION:I = 0x630

.field private static final HAL_SET_SAMSUNG_CAMERA:I = 0x5e4

.field private static final HAL_SET_ZOOM_STEP:I = 0x615

.field private static final HAL_SHOT_CAPTURE_START:I = 0x62d

.field private static final HAL_SHOT_CAPTURE_STOP:I = 0x62e

.field private static final HAL_SOUND_AND_SHOT_MIC_CONTROL:I = 0x642

.field private static final HAL_START_3D_PREVIEW:I = 0x637

.field private static final HAL_START_BURST_TAKE:I = 0x623

.field private static final HAL_START_CONTINUOUS_AF:I = 0x60f

.field private static final HAL_START_FACEZOOM:I = 0x5fb

.field private static final HAL_START_SENSER_CLEANING:I = 0x62f

.field private static final HAL_STOP_BURST_TAKE:I = 0x624

.field private static final HAL_STOP_CHK_DATALINE:I = 0x5e2

.field private static final HAL_STOP_CONTINUOUS_AF:I = 0x610

.field private static final HAL_STOP_FACEZOOM:I = 0x5fc

.field private static final HAL_TOUCH_AF_STARTSTOP:I = 0x5e1

.field private static final HDR_PICTURE_MODE_CHANGE:I = 0x4f9

.field private static final HDR_SHOT_ALL_PROGRESS_COMPLETED:I = 0xf084

.field private static final HDR_SHOT_MODE_CHANGE:I = 0x4f7

.field private static final HDR_SHOT_RESULT_COMPLETED:I = 0xf083

.field private static final HDR_SHOT_RESULT_PROGRESS:I = 0xf082

.field private static final HDR_SHOT_RESULT_STARTED:I = 0xf081

.field private static final HDR_SHOT_YUV_MODE_CHANGE:I = 0x4f8

.field private static final HDR_SHOT_YUV_STRING:I = 0xf085

.field private static final HISTOGRAM_DATA:I = 0xf261

.field private static final HISTOGRAM_SET_INCREMENT:I = 0x553

.field private static final HISTOGRAM_SET_SKIP_RATE:I = 0x554

.field private static final HISTOGRAM_START:I = 0x551

.field private static final HISTOGRAM_STOP:I = 0x552

.field private static final LOW_LIGHT_SHOT_SET:I = 0x4f0

.field private static final MAGICFRAME_SHOT_PROGRESS_RENDERING:I = 0xf131

.field private static final MAGICFRAME_SHOT_SET_TEMPLATE:I = 0x4bb

.field private static final MULTIPLE_MAINJPEG_COUNT:I = 0x4d9

.field private static final MULTI_FRAME_SHOT_CAPTURE:I = 0x4ee

.field private static final MULTI_FRAME_SHOT_CAPTURING_PROGRESSED:I = 0xf121

.field private static final MULTI_FRAME_SHOT_CAPTURING_STOPPED:I = 0xf122

.field private static final MULTI_FRAME_SHOT_PROGRESS_POSTPROCESSING:I = 0xf123

.field private static final MULTI_FRAME_SHOT_START:I = 0x4ed

.field private static final MULTI_FRAME_SHOT_TERMINATE:I = 0x4ef

.field private static final Notify_FIRST_PREVIEW_FRAME_EVENT:I = 0xf171

.field private static final PANORAMA_3D_SHOT_CANCEL:I = 0x496

.field private static final PANORAMA_3D_SHOT_CAPTURED:I = 0xf115

.field private static final PANORAMA_3D_SHOT_CAPTURED_MAX_FRAMES:I = 0xf119

.field private static final PANORAMA_3D_SHOT_CAPTURED_NEW:I = 0xf113

.field private static final PANORAMA_3D_SHOT_DIR:I = 0xf116

.field private static final PANORAMA_3D_SHOT_ERR:I = 0xf111

.field private static final PANORAMA_3D_SHOT_FINALIZE:I = 0x495

.field private static final PANORAMA_3D_SHOT_LIVE_PREVIEW_DATA:I = 0xf118

.field private static final PANORAMA_3D_SHOT_LOW_RESOLUTION_DATA:I = 0xf117

.field private static final PANORAMA_3D_SHOT_MPO_DATA:I = 0xf120

.field private static final PANORAMA_3D_SHOT_PROGRESS_STITCHING:I = 0xf114

.field private static final PANORAMA_3D_SHOT_RECT_CENTER_POINT:I = 0xf112

.field private static final PANORAMA_3D_SHOT_SHUTTER_START:I = 0x497

.field private static final PANORAMA_3D_SHOT_SHUTTER_STOP:I = 0x498

.field private static final PANORAMA_3D_SHOT_START:I = 0x493

.field private static final PANORAMA_3D_SHOT_STOP:I = 0x494

.field public static final PANORAMA_DIRECTION_DOWN:I = 0x8

.field public static final PANORAMA_DIRECTION_DOWN_LEFT:I = 0xa

.field public static final PANORAMA_DIRECTION_DOWN_RIGHT:I = 0x9

.field public static final PANORAMA_DIRECTION_LEFT:I = 0x2

.field public static final PANORAMA_DIRECTION_RIGHT:I = 0x1

.field public static final PANORAMA_DIRECTION_UP:I = 0x4

.field public static final PANORAMA_DIRECTION_UP_LEFT:I = 0x6

.field public static final PANORAMA_DIRECTION_UP_RIGHT:I = 0x5

.field private static final PANORAMA_SHOT_CANCEL:I = 0x45a

.field private static final PANORAMA_SHOT_CAPTURED:I = 0xf025

.field private static final PANORAMA_SHOT_CAPTURED_MAX_FRAMES:I = 0xf029

.field private static final PANORAMA_SHOT_CAPTURED_NEW:I = 0xf023

.field private static final PANORAMA_SHOT_DIR:I = 0xf026

.field private static final PANORAMA_SHOT_ERR:I = 0xf021

.field private static final PANORAMA_SHOT_FINALIZE:I = 0x459

.field private static final PANORAMA_SHOT_LIVE_PREVIEW_DATA:I = 0xf028

.field private static final PANORAMA_SHOT_LOW_RESOLUTION_DATA:I = 0xf027

.field private static final PANORAMA_SHOT_MOVE_SLOWLY:I = 0xf02a

.field private static final PANORAMA_SHOT_PROGRESS_STITCHING:I = 0xf024

.field private static final PANORAMA_SHOT_RECT_CENTER_POINT:I = 0xf022

.field private static final PANORAMA_SHOT_START:I = 0x457

.field private static final PANORAMA_SHOT_STOP:I = 0x458

.field private static final PET_DET_RECT:I = 0xf182

.field private static final PET_DET_SUCCESS:I = 0xf181

.field private static final PHOTOGRAPHER_SHOT_DETECTION_CHANGED:I = 0xf211

.field private static final PHOTOGRAPHER_SHOT_DETECTION_RIGHT_BOTTOM:I = 0x52c

.field private static final PHOTOGRAPHER_SHOT_DETECTION_START:I = 0x529

.field private static final PHOTOGRAPHER_SHOT_DETECTION_STOP:I = 0x52a

.field private static final PHOTOGRAPHER_SHOT_SET_DETECTION_LEFT_TOP:I = 0x52b

.field private static final PIP_SHOT_INITIALIZE:I = 0x4c8

.field private static final PIP_SHOT_PROGRESS_RENDERING:I = 0xf141

.field private static final PIP_SHOT_SET_BACKGROUND:I = 0x4c5

.field private static final PIP_SHOT_SET_FRAME_POSITION:I = 0x4c6

.field private static final PIP_SHOT_SET_FRAME_SIZE:I = 0x4c7

.field private static final PIP_SHOT_SET_RESOLUTION:I = 0x4c9

.field private static final PREVIEW_CALLBACK_SIZE:I = 0x565

.field private static final RECORDING_TAKE_PICTURE:I = 0x4b1

.field private static final SAMSUNG_SHOT_COMPRESSED_IMAGE:I = 0xf201

.field private static final SEC_IMAGE_EFFECT_SHOT_CREATING_RESULT_COMPLETED:I = 0xf243

.field private static final SEC_IMAGE_EFFECT_SHOT_CREATING_RESULT_PROGRESS:I = 0xf242

.field private static final SEC_IMAGE_EFFECT_SHOT_CREATING_RESULT_STARTED:I = 0xf241

.field private static final SET_DISPLAY_ORIENTATION_MIRROR:I = 0x5e7

.field private static final SET_DUAL_MODE_SYNC:I = 0x55d

.field private static final SET_EFFECT_COORDINATE:I = 0x50d

.field private static final SET_EFFECT_EXTERNAL_MODE:I = 0x511

.field private static final SET_EFFECT_FILTER:I = 0x50b

.field private static final SET_EFFECT_LAYER_ORDER:I = 0x50e

.field private static final SET_EFFECT_MODE:I = 0x607

.field private static final SET_EFFECT_OPTION:I = 0x50c

.field private static final SET_EFFECT_ORIENTATION:I = 0x510

.field private static final SET_EFFECT_SAVE_AS_FLIPPED:I = 0x512

.field private static final SET_EFFECT_VISIBLE:I = 0x50f

.field private static final SET_EFFECT_VISIBLE_FOR_RECORDING:I = 0x548

.field private static final SET_ENABLE_SHUTTER_SOUND:I = 0x605

.field private static final SET_RECORDING_TAKE_PICTURE_CALLBACK:I = 0x4b2

.field private static final SET_SHUTTER_SOUND_VOLUME_LEVEL:I = 0x606

.field private static final SHOT_3D_PANORAMA:I = 0x3fc

.field private static final SHOT_3D_SINGLE:I = 0x3fb

.field private static final SHOT_ACTION:I = 0x3f2

.field private static final SHOT_ADDME:I = 0x3f1

.field private static final SHOT_AUTO:I = 0x406

.field private static final SHOT_BEAUTY:I = 0x3ef

.field private static final SHOT_BEST:I = 0x400

.field private static final SHOT_BESTGROUP:I = 0x401

.field private static final SHOT_BUDDY_PHOTOSHARING:I = 0x3fa

.field private static final SHOT_BURST:I = 0x3f9

.field private static final SHOT_CAPTURE_START:I = 0x55b

.field private static final SHOT_CAPTURE_STOP:I = 0x55c

.field private static final SHOT_CARTOON:I = 0x3f5

.field private static final SHOT_CONTINUOUS:I = 0x3e9

.field private static final SHOT_DRAMA:I = 0x407

.field private static final SHOT_FACESHOT:I = 0x3f8

.field private static final SHOT_FRAME:I = 0x3ed

.field private static final SHOT_GOLF:I = 0x404

.field private static final SHOT_HDR:I = 0x3f6

.field private static final SHOT_MAGICFRAME:I = 0x3fd

.field private static final SHOT_MOSAIC:I = 0x3ec

.field private static final SHOT_MULTI_FRAME:I = 0x3ff

.field private static final SHOT_PANORAMA:I = 0x3ea

.field private static final SHOT_PARTY:I = 0x3f4

.field private static final SHOT_PETDET:I = 0x403

.field private static final SHOT_PHOTOGRAPHER:I = 0x405

.field private static final SHOT_PIP:I = 0x3fe

.field private static final SHOT_SELF:I = 0x3ee

.field private static final SHOT_SHARESHOT:I = 0x3f7

.field private static final SHOT_SINGLE:I = 0x3e8

.field private static final SHOT_SMILE:I = 0x3eb

.field private static final SHOT_STOPMOTION:I = 0x3f3

.field private static final SHOT_THEME:I = 0x408

.field private static final SHOT_VINTAGE:I = 0x3f0

.field private static final SHUTTER_START:I = 0x45b

.field private static final SHUTTER_STOP:I = 0x45c

.field private static final SIM3DPHOTO_SHOT_MPO_DATA:I = 0xf102

.field private static final SIM3DPHOTO_SHOT_PROGRESS_RENDERING:I = 0xf101

.field private static final SINGLE_SHOT_LAST_PREVIEW_FRAME:I = 0xf161

.field private static final SMILE_SHOT_DETECTION_REINIT:I = 0x44f

.field private static final SMILE_SHOT_DETECTION_START:I = 0x44d

.field private static final SMILE_SHOT_DETECTION_STOP:I = 0x44e

.field private static final SMILE_SHOT_DETECTION_SUCCESS:I = 0xf061

.field private static final SMILE_SHOT_FACE_RECT:I = 0xf062

.field private static final SMILE_SHOT_SMILE_RECT:I = 0xf063

.field private static final START_COPY_LAST_PREVIEW_DATA:I = 0x501

.field private static final START_PETDET:I = 0x515

.field private static final STOP_COPY_LAST_PREVIEW_DATA:I = 0x502

.field private static final STOP_PETDET:I = 0x516

.field private static final TAG:Ljava/lang/String; = "SecCamera-JNI-Java"

.field private static final THEME_SHOT_MASK_SET:I = 0x53d


# instance fields
.field private mAutoFocusCallback:Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;

.field private mAutoFocusCallbackLock:Ljava/lang/Object;

.field private mAutoFocusMoveCallback:Lcom/sec/android/seccamera/SecCamera$AutoFocusMoveCallback;

.field private mErrorCallback:Lcom/sec/android/seccamera/SecCamera$ErrorCallback;

.field private mEventHandler:Lcom/sec/android/seccamera/SecCamera$EventHandler;

.field private mFaceDetectionRunning:Z

.field private mFaceListener:Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;

.field private mJpegCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

.field private mNativeContext:I

.field private mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

.field private mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

.field private mOnAddMeEventListener:Lcom/sec/android/seccamera/SecCamera$OnAddMeEventListener;

.field private mOnAutoLowLightDetectionListener:Lcom/sec/android/seccamera/SecCamera$OnAutoLowLightDetectionListener;

.field private mOnBeautyShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnBeautyShotEventListener;

.field private mOnBurstShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;

.field private mOnCartoonShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;

.field private mOnChkDataLineListener:Lcom/sec/android/seccamera/SecCamera$OnChkDataLineListener;

.field private mOnContinuousShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;

.field private mOnDramaShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnDramaShotEventListener;

.field private mOnDualEventListener:Lcom/sec/android/seccamera/SecCamera$OnDualEventListener;

.field private mOnGolfShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;

.field private mOnHDRShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;

.field private mOnMagicFrameShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnMagicFrameShotEventListener;

.field private mOnMultiFrameShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnMultiFrameShotEventListener;

.field private mOnNotifyFirstPreviewFrameEventListener:Lcom/sec/android/seccamera/SecCamera$OnNotifyFirstPreviewFrameEventListener;

.field private mOnObjectTrackingMsgListener:Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;

.field private mOnPIPShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnPIPShotEventListener;

.field private mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

.field private mOnPetDetectionListener:Lcom/sec/android/seccamera/SecCamera$OnPetDetectionListener;

.field private mOnPhotoGrapherDetectionListener:Lcom/sec/android/seccamera/SecCamera$OnPhotoGrapherDetectionListener;

.field private mOnSIM3DPhotoShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnSIM3DPhotoShotEventListener;

.field private mOnSecImageEffectListner:Lcom/sec/android/seccamera/SecCamera$OnSecImageEffectListner;

.field private mOnSmileShotDetectionSuccessListener:Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;

.field private mOneShot:Z

.field private mPostviewCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

.field private mPreviewCallback:Lcom/sec/android/seccamera/SecCamera$PreviewCallback;

.field private mRawImageCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

.field private mShutterCallback:Lcom/sec/android/seccamera/SecCamera$ShutterCallback;

.field private mWithBuffer:Z

.field private mZoomListener:Lcom/sec/android/seccamera/SecCamera$OnZoomChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3329
    const-string v0, "seccamera_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 3330
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1084
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/seccamera/SecCamera;->mFaceDetectionRunning:Z

    .line 195
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    .line 674
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    .line 694
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    .line 707
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnContinuousShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;

    .line 721
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnBurstShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;

    .line 734
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnAddMeEventListener:Lcom/sec/android/seccamera/SecCamera$OnAddMeEventListener;

    .line 750
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    .line 761
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnCartoonShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;

    .line 772
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnObjectTrackingMsgListener:Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;

    .line 783
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnChkDataLineListener:Lcom/sec/android/seccamera/SecCamera$OnChkDataLineListener;

    .line 796
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnSmileShotDetectionSuccessListener:Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;

    .line 811
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnHDRShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;

    .line 823
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnSIM3DPhotoShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnSIM3DPhotoShotEventListener;

    .line 834
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnMagicFrameShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnMagicFrameShotEventListener;

    .line 845
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnPIPShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnPIPShotEventListener;

    .line 856
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnMultiFrameShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnMultiFrameShotEventListener;

    .line 868
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnNotifyFirstPreviewFrameEventListener:Lcom/sec/android/seccamera/SecCamera$OnNotifyFirstPreviewFrameEventListener;

    .line 880
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnPetDetectionListener:Lcom/sec/android/seccamera/SecCamera$OnPetDetectionListener;

    .line 895
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnGolfShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;

    .line 909
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnDramaShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnDramaShotEventListener;

    .line 920
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnBeautyShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnBeautyShotEventListener;

    .line 932
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnSecImageEffectListner:Lcom/sec/android/seccamera/SecCamera$OnSecImageEffectListner;

    .line 943
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnPhotoGrapherDetectionListener:Lcom/sec/android/seccamera/SecCamera$OnPhotoGrapherDetectionListener;

    .line 954
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnAutoLowLightDetectionListener:Lcom/sec/android/seccamera/SecCamera$OnAutoLowLightDetectionListener;

    .line 964
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnDualEventListener:Lcom/sec/android/seccamera/SecCamera$OnDualEventListener;

    .line 1085
    return-void
.end method

.method constructor <init>(IILandroid/os/Looper;Z)V
    .locals 5
    .parameter "cameraId"
    .parameter "priority"
    .parameter "_looper"
    .parameter "halsettting"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1055
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-boolean v4, p0, Lcom/sec/android/seccamera/SecCamera;->mFaceDetectionRunning:Z

    .line 195
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    .line 674
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    .line 694
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    .line 707
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnContinuousShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;

    .line 721
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnBurstShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;

    .line 734
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnAddMeEventListener:Lcom/sec/android/seccamera/SecCamera$OnAddMeEventListener;

    .line 750
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    .line 761
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnCartoonShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;

    .line 772
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnObjectTrackingMsgListener:Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;

    .line 783
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnChkDataLineListener:Lcom/sec/android/seccamera/SecCamera$OnChkDataLineListener;

    .line 796
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnSmileShotDetectionSuccessListener:Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;

    .line 811
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnHDRShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;

    .line 823
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnSIM3DPhotoShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnSIM3DPhotoShotEventListener;

    .line 834
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnMagicFrameShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnMagicFrameShotEventListener;

    .line 845
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnPIPShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnPIPShotEventListener;

    .line 856
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnMultiFrameShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnMultiFrameShotEventListener;

    .line 868
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnNotifyFirstPreviewFrameEventListener:Lcom/sec/android/seccamera/SecCamera$OnNotifyFirstPreviewFrameEventListener;

    .line 880
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnPetDetectionListener:Lcom/sec/android/seccamera/SecCamera$OnPetDetectionListener;

    .line 895
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnGolfShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;

    .line 909
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnDramaShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnDramaShotEventListener;

    .line 920
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnBeautyShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnBeautyShotEventListener;

    .line 932
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnSecImageEffectListner:Lcom/sec/android/seccamera/SecCamera$OnSecImageEffectListner;

    .line 943
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnPhotoGrapherDetectionListener:Lcom/sec/android/seccamera/SecCamera$OnPhotoGrapherDetectionListener;

    .line 954
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnAutoLowLightDetectionListener:Lcom/sec/android/seccamera/SecCamera$OnAutoLowLightDetectionListener;

    .line 964
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnDualEventListener:Lcom/sec/android/seccamera/SecCamera$OnDualEventListener;

    .line 1056
    const-string v1, "SecCamera-JNI-Java"

    const-string v2, "SecCamera()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mShutterCallback:Lcom/sec/android/seccamera/SecCamera$ShutterCallback;

    .line 1059
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mRawImageCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    .line 1060
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mJpegCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    .line 1061
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mPreviewCallback:Lcom/sec/android/seccamera/SecCamera$PreviewCallback;

    .line 1062
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mPostviewCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    .line 1063
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mZoomListener:Lcom/sec/android/seccamera/SecCamera$OnZoomChangeListener;

    .line 1066
    if-eqz p3, :cond_1

    .line 1068
    new-instance v1, Lcom/sec/android/seccamera/SecCamera$EventHandler;

    invoke-direct {v1, p0, p0, p3}, Lcom/sec/android/seccamera/SecCamera$EventHandler;-><init>(Lcom/sec/android/seccamera/SecCamera;Lcom/sec/android/seccamera/SecCamera;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mEventHandler:Lcom/sec/android/seccamera/SecCamera$EventHandler;

    .line 1077
    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1, p1, p2}, Lcom/sec/android/seccamera/SecCamera;->native_setup(Ljava/lang/Object;II)V

    .line 1078
    if-eqz p4, :cond_0

    const/16 v1, 0x5e4

    invoke-virtual {p0, v1, v4, v4}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 1079
    :cond_0
    return-void

    .line 1069
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_2

    .line 1070
    new-instance v1, Lcom/sec/android/seccamera/SecCamera$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/sec/android/seccamera/SecCamera$EventHandler;-><init>(Lcom/sec/android/seccamera/SecCamera;Lcom/sec/android/seccamera/SecCamera;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mEventHandler:Lcom/sec/android/seccamera/SecCamera$EventHandler;

    goto :goto_0

    .line 1071
    :cond_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1072
    new-instance v1, Lcom/sec/android/seccamera/SecCamera$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/sec/android/seccamera/SecCamera$EventHandler;-><init>(Lcom/sec/android/seccamera/SecCamera;Lcom/sec/android/seccamera/SecCamera;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mEventHandler:Lcom/sec/android/seccamera/SecCamera$EventHandler;

    goto :goto_0

    .line 1074
    :cond_3
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mEventHandler:Lcom/sec/android/seccamera/SecCamera$EventHandler;

    goto :goto_0
.end method

.method private final native _addCallbackBuffer([BI)V
.end method

.method private final native _enableShutterSound(Z)Z
.end method

.method private static native _getCameraInfo(ILcom/sec/android/seccamera/SecCamera$CameraInfo;)V
.end method

.method private final native _startFaceDetection(I)V
.end method

.method private final native _stopFaceDetection()V
.end method

.method private final native _stopPreview()V
.end method

.method static synthetic access$000(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$ShutterCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mShutterCallback:Lcom/sec/android/seccamera/SecCamera$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$PictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mRawImageCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnZoomChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mZoomListener:Lcom/sec/android/seccamera/SecCamera$OnZoomChangeListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mFaceListener:Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/seccamera/SecCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/sec/android/seccamera/SecCamera;->mFaceDetectionRunning:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/sec/android/seccamera/SecCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/sec/android/seccamera/SecCamera;->mFaceDetectionRunning:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$ErrorCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mErrorCallback:Lcom/sec/android/seccamera/SecCamera$ErrorCallback;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/seccamera/SecCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/sec/android/seccamera/SecCamera;->native_release()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$AutoFocusMoveCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mAutoFocusMoveCallback:Lcom/sec/android/seccamera/SecCamera$AutoFocusMoveCallback;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnContinuousShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$PictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mJpegCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnCartoonShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnSmileShotDetectionSuccessListener:Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnHDRShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnObjectTrackingMsgListener:Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnChkDataLineListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnChkDataLineListener:Lcom/sec/android/seccamera/SecCamera$OnChkDataLineListener;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnBurstShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnSIM3DPhotoShotEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnSIM3DPhotoShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnSIM3DPhotoShotEventListener;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnMagicFrameShotEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnMagicFrameShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnMagicFrameShotEventListener;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPIPShotEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnPIPShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnPIPShotEventListener;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnMultiFrameShotEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnMultiFrameShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnMultiFrameShotEventListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$PreviewCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mPreviewCallback:Lcom/sec/android/seccamera/SecCamera$PreviewCallback;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnNotifyFirstPreviewFrameEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnNotifyFirstPreviewFrameEventListener:Lcom/sec/android/seccamera/SecCamera$OnNotifyFirstPreviewFrameEventListener;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/seccamera/SecCamera;Lcom/sec/android/seccamera/SecCamera$PreviewCallback;)Lcom/sec/android/seccamera/SecCamera$PreviewCallback;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mPreviewCallback:Lcom/sec/android/seccamera/SecCamera$PreviewCallback;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPetDetectionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnPetDetectionListener:Lcom/sec/android/seccamera/SecCamera$OnPetDetectionListener;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPhotoGrapherDetectionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnPhotoGrapherDetectionListener:Lcom/sec/android/seccamera/SecCamera$OnPhotoGrapherDetectionListener;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnGolfShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnDramaShotEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnDramaShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnDramaShotEventListener;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnBeautyShotEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnBeautyShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnBeautyShotEventListener;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnAutoLowLightDetectionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnAutoLowLightDetectionListener:Lcom/sec/android/seccamera/SecCamera$OnAutoLowLightDetectionListener;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnSecImageEffectListner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnSecImageEffectListner:Lcom/sec/android/seccamera/SecCamera$OnSecImageEffectListner;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnDualEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnDualEventListener:Lcom/sec/android/seccamera/SecCamera$OnDualEventListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/seccamera/SecCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOneShot:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/seccamera/SecCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/sec/android/seccamera/SecCamera;->mWithBuffer:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/seccamera/SecCamera;ZZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 152
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/seccamera/SecCamera;->setHasPreviewCallback(ZZZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$PictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mPostviewCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/seccamera/SecCamera;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mAutoFocusCallback:Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;

    return-object v0
.end method

.method private final addCallbackBuffer([BI)V
    .locals 3
    .parameter "callbackBuffer"
    .parameter "msgType"

    .prologue
    .line 1480
    const/16 v0, 0x10

    if-eq p2, v0, :cond_0

    const/16 v0, 0x80

    if-eq p2, v0, :cond_0

    .line 1482
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1486
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/seccamera/SecCamera;->_addCallbackBuffer([BI)V

    .line 1487
    return-void
.end method

.method private native enableFocusMoveCallback(I)V
.end method

.method public static getCameraInfo(ILcom/sec/android/seccamera/SecCamera$CameraInfo;)V
    .locals 5
    .parameter "cameraId"
    .parameter "cameraInfo"

    .prologue
    .line 248
    invoke-static {p0, p1}, Lcom/sec/android/seccamera/SecCamera;->_getCameraInfo(ILcom/sec/android/seccamera/SecCamera$CameraInfo;)V

    .line 249
    const-string v3, "audio"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 250
    .local v1, b:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 252
    .local v0, audioService:Landroid/media/IAudioService;
    if-eqz v0, :cond_0

    .line 253
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isCameraSoundForced()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 256
    const/4 v3, 0x0

    iput-boolean v3, p1, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->canDisableShutterSound:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v2

    .line 261
    .local v2, e:Landroid/os/RemoteException;
    const-string v3, "SecCamera-JNI-Java"

    const-string v4, "Audio service is unavailable for queries"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getEmptyParameters()Lcom/sec/android/seccamera/SecCamera$Parameters;
    .locals 3

    .prologue
    .line 3342
    new-instance v0, Lcom/sec/android/seccamera/SecCamera;

    invoke-direct {v0}, Lcom/sec/android/seccamera/SecCamera;-><init>()V

    .line 3343
    .local v0, camera:Lcom/sec/android/seccamera/SecCamera;
    new-instance v1, Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;-><init>(Lcom/sec/android/seccamera/SecCamera;Lcom/sec/android/seccamera/SecCamera$1;)V

    return-object v1
.end method

.method public static native getNumberOfCameras()I
.end method

.method private final native native_autoFocus()V
.end method

.method private final native native_cancelAutoFocus()V
.end method

.method private final native native_getParameters()Ljava/lang/String;
.end method

.method private final native native_release()V
.end method

.method private final native native_setGenericParam(Ljava/lang/String;)V
.end method

.method private final native native_setParameters(Ljava/lang/String;)V
.end method

.method private final native native_setup(Ljava/lang/Object;II)V
.end method

.method private final native native_takePicture(I)V
.end method

.method public static open()Lcom/sec/android/seccamera/SecCamera;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1042
    .line 1044
    invoke-static {}, Lcom/sec/android/seccamera/SecCamera;->getNumberOfCameras()I

    move-result v2

    .line 1045
    .local v2, numberOfCameras:I
    new-instance v0, Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    invoke-direct {v0}, Lcom/sec/android/seccamera/SecCamera$CameraInfo;-><init>()V

    .line 1046
    .local v0, cameraInfo:Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1047
    invoke-static {v1, v0}, Lcom/sec/android/seccamera/SecCamera;->getCameraInfo(ILcom/sec/android/seccamera/SecCamera$CameraInfo;)V

    .line 1048
    iget v3, v0, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->facing:I

    if-nez v3, :cond_0

    .line 1049
    new-instance v3, Lcom/sec/android/seccamera/SecCamera;

    const/16 v5, 0x64

    const/4 v6, 0x1

    invoke-direct {v3, v1, v5, v4, v6}, Lcom/sec/android/seccamera/SecCamera;-><init>(IILandroid/os/Looper;Z)V

    .line 1052
    :goto_1
    return-object v3

    .line 1046
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v3, v4

    .line 1052
    goto :goto_1
.end method

.method public static open(I)Lcom/sec/android/seccamera/SecCamera;
    .locals 4
    .parameter "cameraId"

    .prologue
    .line 1003
    const-string v0, "SecCamera-JNI-Java"

    const-string v1, "SecCamera.open()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    .line 1007
    new-instance v0, Lcom/sec/android/seccamera/SecCamera;

    const/16 v1, 0x64

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera;-><init>(IILandroid/os/Looper;Z)V

    return-object v0
.end method

.method public static open(II)Lcom/sec/android/seccamera/SecCamera;
    .locals 3
    .parameter "cameraId"
    .parameter "priority"

    .prologue
    .line 1011
    const-string v0, "SecCamera-JNI-Java"

    const-string v1, "SecCamera.open()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    .line 1015
    new-instance v0, Lcom/sec/android/seccamera/SecCamera;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/sec/android/seccamera/SecCamera;-><init>(IILandroid/os/Looper;Z)V

    return-object v0
.end method

.method public static open(IILandroid/os/Looper;)Lcom/sec/android/seccamera/SecCamera;
    .locals 2
    .parameter "cameraId"
    .parameter "priority"
    .parameter "looper"

    .prologue
    .line 1019
    const-string v0, "SecCamera-JNI-Java"

    const-string v1, "SecCamera.open()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    .line 1023
    new-instance v0, Lcom/sec/android/seccamera/SecCamera;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/sec/android/seccamera/SecCamera;-><init>(IILandroid/os/Looper;Z)V

    return-object v0
.end method

.method public static open(IILandroid/os/Looper;Z)Lcom/sec/android/seccamera/SecCamera;
    .locals 2
    .parameter "cameraId"
    .parameter "priority"
    .parameter "looper"
    .parameter "halsetting"

    .prologue
    .line 1027
    const-string v0, "SecCamera-JNI-Java"

    const-string v1, "SecCamera.open()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    .line 1031
    new-instance v0, Lcom/sec/android/seccamera/SecCamera;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/android/seccamera/SecCamera;-><init>(IILandroid/os/Looper;Z)V

    return-object v0
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 4
    .parameter "camera_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 2004
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/seccamera/SecCamera;

    .line 2005
    .local v0, c:Lcom/sec/android/seccamera/SecCamera;
    if-nez v0, :cond_0

    .line 2025
    :goto_0
    return-void

    .line 2008
    :cond_0
    iget-object v2, v0, Lcom/sec/android/seccamera/SecCamera;->mEventHandler:Lcom/sec/android/seccamera/SecCamera$EventHandler;

    if-eqz v2, :cond_1

    .line 2009
    iget-object v2, v0, Lcom/sec/android/seccamera/SecCamera;->mEventHandler:Lcom/sec/android/seccamera/SecCamera$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/sec/android/seccamera/SecCamera$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2020
    .local v1, m:Landroid/os/Message;
    iget-object v2, v0, Lcom/sec/android/seccamera/SecCamera;->mEventHandler:Lcom/sec/android/seccamera/SecCamera$EventHandler;

    invoke-virtual {v2, v1}, Lcom/sec/android/seccamera/SecCamera$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2023
    .end local v1           #m:Landroid/os/Message;
    :cond_1
    const-string v2, "SecCamera-JNI-Java"

    const-string v3, "mEventHandler is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final native setHasPreviewCallback(ZZZ)V
.end method

.method private final native setPreviewDisplay(Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public final addCallbackBuffer([B)V
    .locals 1
    .parameter "callbackBuffer"

    .prologue
    .line 1431
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/sec/android/seccamera/SecCamera;->_addCallbackBuffer([BI)V

    .line 1432
    return-void
.end method

.method public final addRawImageCallbackBuffer([B)V
    .locals 1
    .parameter "callbackBuffer"

    .prologue
    .line 1474
    const/16 v0, 0x80

    invoke-direct {p0, p1, v0}, Lcom/sec/android/seccamera/SecCamera;->addCallbackBuffer([BI)V

    .line 1475
    return-void
.end method

.method public final autoFocus(Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 2104
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2105
    :try_start_0
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mAutoFocusCallback:Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;

    .line 2106
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2107
    invoke-direct {p0}, Lcom/sec/android/seccamera/SecCamera;->native_autoFocus()V

    .line 2108
    return-void

    .line 2106
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public cancel3DPanorama()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2943
    const/16 v0, 0x496

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2944
    return-void
.end method

.method public final cancelAutoFocus()V
    .locals 2

    .prologue
    .line 2123
    invoke-direct {p0}, Lcom/sec/android/seccamera/SecCamera;->native_cancelAutoFocus()V

    .line 2139
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mEventHandler:Lcom/sec/android/seccamera/SecCamera$EventHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera$EventHandler;->removeMessages(I)V

    .line 2140
    return-void
.end method

.method public cancelCaptureAddMeShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3068
    const/16 v0, 0x479

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3069
    return-void
.end method

.method public cancelDramaShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3263
    const/16 v0, 0x535

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3264
    return-void
.end method

.method public cancelPanorama()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2921
    const/16 v0, 0x45a

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2922
    return-void
.end method

.method public cancelSeriesActionShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3043
    const/16 v0, 0x46e

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3044
    return-void
.end method

.method public captureBurstShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3018
    const/16 v0, 0x48a

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3019
    return-void
.end method

.method public captureBurstShot(I)V
    .locals 2
    .parameter "duration"

    .prologue
    .line 3022
    const/16 v0, 0x48a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3023
    return-void
.end method

.method public captureMultiFrameShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3084
    const/16 v0, 0x4ee

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3085
    return-void
.end method

.method public doSnapAddMeShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3064
    const/16 v0, 0x478

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3065
    return-void
.end method

.method public final enableShutterSound(Z)Z
    .locals 5
    .parameter "enabled"

    .prologue
    .line 2405
    if-nez p1, :cond_0

    .line 2406
    const-string v3, "audio"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 2407
    .local v1, b:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 2409
    .local v0, audioService:Landroid/media/IAudioService;
    if-eqz v0, :cond_0

    .line 2410
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isCameraSoundForced()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 2416
    .end local v0           #audioService:Landroid/media/IAudioService;
    .end local v1           #b:Landroid/os/IBinder;
    :goto_0
    return v3

    .line 2412
    .restart local v0       #audioService:Landroid/media/IAudioService;
    .restart local v1       #b:Landroid/os/IBinder;
    :catch_0
    move-exception v2

    .line 2413
    .local v2, e:Landroid/os/RemoteException;
    const-string v3, "SecCamera-JNI-Java"

    const-string v4, "Audio service is unavailable for queries"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    .end local v0           #audioService:Landroid/media/IAudioService;
    .end local v1           #b:Landroid/os/IBinder;
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/seccamera/SecCamera;->_enableShutterSound(Z)Z

    move-result v3

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 1088
    invoke-direct {p0}, Lcom/sec/android/seccamera/SecCamera;->native_release()V

    .line 1089
    return-void
.end method

.method public finishActionShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3047
    const/16 v0, 0x470

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3048
    return-void
.end method

.method public finishAddMeShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3072
    const/16 v0, 0x47a

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3073
    return-void
.end method

.method public getParameters()Lcom/sec/android/seccamera/SecCamera$Parameters;
    .locals 3

    .prologue
    .line 2739
    new-instance v0, Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;-><init>(Lcom/sec/android/seccamera/SecCamera;Lcom/sec/android/seccamera/SecCamera$1;)V

    .line 2740
    .local v0, p:Lcom/sec/android/seccamera/SecCamera$Parameters;
    invoke-direct {p0}, Lcom/sec/android/seccamera/SecCamera;->native_getParameters()Ljava/lang/String;

    move-result-object v1

    .line 2741
    .local v1, s:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 2742
    return-object v0
.end method

.method public informFaceOrientationToHAL(I)V
    .locals 3
    .parameter "faceorientation"

    .prologue
    .line 3175
    const/4 v0, 0x0

    .line 3176
    .local v0, IsLandscape:I
    const/16 v1, 0x5a

    if-eq p1, v1, :cond_0

    const/16 v1, 0x10e

    if-ne p1, v1, :cond_1

    .line 3177
    :cond_0
    const/4 v0, 0x0

    .line 3184
    :goto_0
    const/16 v1, 0x5fa

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3185
    :goto_1
    return-void

    .line 3178
    :cond_1
    if-eqz p1, :cond_2

    const/16 v1, 0xb4

    if-ne p1, v1, :cond_3

    .line 3179
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 3181
    :cond_3
    const-string v1, "SecCamera-JNI-Java"

    const-string v2, "unknown face orientation"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public initializeActionShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3027
    const/16 v0, 0x46b

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3028
    return-void
.end method

.method public initializeAddMeShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3052
    const/16 v0, 0x475

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3053
    return-void
.end method

.method public initializePIPShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2973
    const/16 v0, 0x4c8

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2974
    return-void
.end method

.method public final native lock()V
.end method

.method public lockFaceDetect()V
    .locals 3

    .prologue
    .line 3119
    const/16 v0, 0x5de

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3120
    return-void
.end method

.method public final native native_sendcommand(III)V
.end method

.method public final native previewEnabled()Z
.end method

.method public final native reconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final recordingTakePicture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2283
    const/16 v0, 0x4b1

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2284
    return-void
.end method

.method public final release()V
    .locals 2

    .prologue
    .line 1101
    invoke-direct {p0}, Lcom/sec/android/seccamera/SecCamera;->native_release()V

    .line 1102
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mEventHandler:Lcom/sec/android/seccamera/SecCamera$EventHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mEventHandler:Lcom/sec/android/seccamera/SecCamera$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1103
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/seccamera/SecCamera;->mFaceDetectionRunning:Z

    .line 1104
    return-void
.end method

.method public resetWBCustomValue()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3202
    const/16 v0, 0x56f

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3203
    return-void
.end method

.method public saveGolfShot(I)V
    .locals 2
    .parameter "Storage"

    .prologue
    .line 3242
    const/16 v0, 0x521

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3243
    return-void
.end method

.method public final sendFaceDetectionHint(I)V
    .locals 2
    .parameter "last"

    .prologue
    .line 2549
    const/16 v0, 0x4a7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2550
    return-void
.end method

.method public sendOrientaionInfotoHAL(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 3317
    const/16 v0, 0x5f1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3318
    return-void
.end method

.method public setAEAWBLockState(II)V
    .locals 1
    .parameter "ae_lockunlock"
    .parameter "awb_lockunlock"

    .prologue
    .line 3107
    const/16 v0, 0x5dd

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3108
    return-void
.end method

.method public final setAutoFocusCb(Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 2176
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2177
    :try_start_0
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mAutoFocusCallback:Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;

    .line 2178
    monitor-exit v1

    .line 2179
    return-void

    .line 2178
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAutoFocusMoveCallback(Lcom/sec/android/seccamera/SecCamera$AutoFocusMoveCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 2168
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mAutoFocusMoveCallback:Lcom/sec/android/seccamera/SecCamera$AutoFocusMoveCallback;

    .line 2169
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mAutoFocusMoveCallback:Lcom/sec/android/seccamera/SecCamera$AutoFocusMoveCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/android/seccamera/SecCamera;->enableFocusMoveCallback(I)V

    .line 2170
    return-void

    .line 2169
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAutoLowLight(Z)V
    .locals 3
    .parameter "setting"

    .prologue
    const/16 v2, 0x547

    const/4 v1, 0x0

    .line 3250
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3252
    :goto_0
    return-void

    .line 3251
    :cond_0
    invoke-virtual {p0, v2, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public setBeautyEffect(Z)V
    .locals 3
    .parameter "mLive"

    .prologue
    const/16 v2, 0x49e

    const/4 v1, 0x0

    .line 3097
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3099
    :goto_0
    return-void

    .line 3098
    :cond_0
    invoke-virtual {p0, v2, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public setBeautyShotManualMode(Z)V
    .locals 3
    .parameter "mManual"

    .prologue
    const/16 v2, 0x49f

    const/4 v1, 0x0

    .line 3102
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3104
    :goto_0
    return-void

    .line 3103
    :cond_0
    invoke-virtual {p0, v2, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public setBurstShotStoring()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3014
    const/16 v0, 0x489

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3015
    return-void
.end method

.method public setChkDataLineListener(Lcom/sec/android/seccamera/SecCamera$OnChkDataLineListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 786
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnChkDataLineListener:Lcom/sec/android/seccamera/SecCamera$OnChkDataLineListener;

    .line 787
    return-void
.end method

.method public setContinuousShotSound(I)V
    .locals 2
    .parameter "sound"

    .prologue
    const/16 v1, 0x464

    const/4 v0, 0x0

    .line 2990
    if-lez p1, :cond_0

    .line 2991
    invoke-virtual {p0, v1, p1, v0}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2995
    :goto_0
    return-void

    .line 2993
    :cond_0
    invoke-virtual {p0, v1, v0, v0}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public setDefaultIMEI(I)V
    .locals 2
    .parameter "bIsDefaultIMEI"

    .prologue
    .line 3147
    const/16 v0, 0x5e3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3148
    return-void
.end method

.method public final native setDisplayOrientation(I)V
.end method

.method public setDramaShotMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 3271
    const/16 v0, 0x536

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3272
    return-void
.end method

.method public setDramaShotStorage(I)V
    .locals 2
    .parameter "Storage"

    .prologue
    .line 3267
    const/16 v0, 0x537

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3268
    return-void
.end method

.method public setDualShotMode(I)V
    .locals 2
    .parameter "isDualSyncMode"

    .prologue
    .line 3286
    const/16 v0, 0x55d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3287
    return-void
.end method

.method public setEffect(I)V
    .locals 2
    .parameter "pfilterId"

    .prologue
    .line 3208
    const/16 v0, 0x50b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3209
    return-void
.end method

.method public setEffect(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 3212
    invoke-direct {p0, p1}, Lcom/sec/android/seccamera/SecCamera;->native_setGenericParam(Ljava/lang/String;)V

    .line 3213
    return-void
.end method

.method public setEffectCoordinate(II)V
    .locals 1
    .parameter "currnet"
    .parameter "destination"

    .prologue
    .line 3275
    const/16 v0, 0x50d

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3276
    return-void
.end method

.method public setEffectLayerOrder(Z)V
    .locals 3
    .parameter "isRearGoesBottom"

    .prologue
    const/16 v2, 0x50e

    const/4 v1, 0x0

    .line 3279
    if-eqz p1, :cond_0

    .line 3280
    invoke-virtual {p0, v2, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3283
    :goto_0
    return-void

    .line 3282
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public setEffectMode(I)V
    .locals 3
    .parameter "pMode"

    .prologue
    .line 3311
    const-string v0, "SecCamera-JNI-Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEffectMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3312
    const/16 v0, 0x607

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3313
    return-void
.end method

.method public setEffectOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 3307
    const/16 v0, 0x510

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3308
    return-void
.end method

.method public setEffectSaveAsFlipped(I)V
    .locals 2
    .parameter "isSaveAsFlipped"

    .prologue
    .line 3225
    const/16 v0, 0x512

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3226
    return-void
.end method

.method public setEffectVisible(Z)V
    .locals 3
    .parameter "isVisible"

    .prologue
    const/16 v2, 0x50f

    const/4 v1, 0x0

    .line 3297
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3299
    :goto_0
    return-void

    .line 3298
    :cond_0
    invoke-virtual {p0, v2, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public setEffectVisibleForRecording(Z)V
    .locals 3
    .parameter "isVisible"

    .prologue
    const/16 v2, 0x548

    const/4 v1, 0x0

    .line 3302
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3304
    :goto_0
    return-void

    .line 3303
    :cond_0
    invoke-virtual {p0, v2, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public final setErrorCallback(Lcom/sec/android/seccamera/SecCamera$ErrorCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 2712
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mErrorCallback:Lcom/sec/android/seccamera/SecCamera$ErrorCallback;

    .line 2713
    return-void
.end method

.method public setExternalEffect(Z)V
    .locals 3
    .parameter "isExternal"

    .prologue
    const/16 v2, 0x511

    const/4 v1, 0x0

    .line 3216
    if-eqz p1, :cond_0

    .line 3217
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3222
    :goto_0
    return-void

    .line 3220
    :cond_0
    invoke-virtual {p0, v2, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public final setFaceDetectionListener(Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2477
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mFaceListener:Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;

    .line 2478
    return-void
.end method

.method public setFaceRetouchLevel(I)V
    .locals 2
    .parameter "retouchLevel"

    .prologue
    .line 3093
    const/16 v0, 0x49d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3094
    return-void
.end method

.method public setFrontSensorMirror(ZI)V
    .locals 4
    .parameter "mirror"
    .parameter "orientation"

    .prologue
    const/16 v3, 0x5e7

    const/16 v2, 0x5e6

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3152
    if-eqz p1, :cond_0

    .line 3153
    invoke-virtual {p0, v2, v1, v0}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3154
    invoke-virtual {p0, v3, p2, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3159
    :goto_0
    return-void

    .line 3156
    :cond_0
    invoke-virtual {p0, v2, v0, v0}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3157
    invoke-virtual {p0, v3, p2, v0}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public setHDRModeLevel(I)V
    .locals 2
    .parameter "Level"

    .prologue
    .line 3111
    const/16 v0, 0x4f7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3112
    return-void
.end method

.method public setHDRYuvMode(Z)V
    .locals 3
    .parameter "isYUV"

    .prologue
    const/16 v2, 0x4f8

    const/4 v1, 0x0

    .line 3229
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3231
    :goto_0
    return-void

    .line 3230
    :cond_0
    invoke-virtual {p0, v2, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public setLowLightShot(I)V
    .locals 2
    .parameter "set"

    .prologue
    .line 3076
    const/16 v0, 0x4f0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3077
    return-void
.end method

.method public setMagicFrameTemplate(I)V
    .locals 2
    .parameter "templateId"

    .prologue
    const/16 v1, 0x4bb

    const/4 v0, 0x0

    .line 2948
    if-ltz p1, :cond_0

    .line 2949
    invoke-virtual {p0, v1, p1, v0}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2953
    :goto_0
    return-void

    .line 2951
    :cond_0
    invoke-virtual {p0, v1, v0, v0}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public setObjectTrackingMsgListener(Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 775
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnObjectTrackingMsgListener:Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;

    .line 776
    return-void
.end method

.method public setObjectTrackingPosition(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3127
    const/16 v0, 0x5df

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3128
    return-void
.end method

.method public setOn3DPanoramaEventListener(Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 697
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    .line 698
    return-void
.end method

.method public setOnActionShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 753
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    .line 754
    return-void
.end method

.method public setOnAddMeEventListener(Lcom/sec/android/seccamera/SecCamera$OnAddMeEventListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 737
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnAddMeEventListener:Lcom/sec/android/seccamera/SecCamera$OnAddMeEventListener;

    .line 738
    return-void
.end method

.method public setOnAutoLowLightDetectionListener(Lcom/sec/android/seccamera/SecCamera$OnAutoLowLightDetectionListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 957
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnAutoLowLightDetectionListener:Lcom/sec/android/seccamera/SecCamera$OnAutoLowLightDetectionListener;

    .line 958
    return-void
.end method

.method public setOnBeautyShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnBeautyShotEventListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 923
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnBeautyShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnBeautyShotEventListener;

    .line 924
    return-void
.end method

.method public setOnBurstShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 724
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnBurstShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;

    .line 725
    return-void
.end method

.method public setOnCartoonShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 764
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnCartoonShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;

    .line 765
    return-void
.end method

.method public setOnContinuousShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 710
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnContinuousShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;

    .line 711
    return-void
.end method

.method public setOnDramaShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnDramaShotEventListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 912
    const-string v0, "SecCamera-JNI-Java"

    const-string v1, "setOnDramaShotEventListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnDramaShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnDramaShotEventListener;

    .line 914
    return-void
.end method

.method public setOnDualEventListener(Lcom/sec/android/seccamera/SecCamera$OnDualEventListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 967
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnDualEventListener:Lcom/sec/android/seccamera/SecCamera$OnDualEventListener;

    .line 968
    return-void
.end method

.method public setOnGolfShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 898
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnGolfShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;

    .line 899
    return-void
.end method

.method public setOnHDRShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 814
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnHDRShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;

    .line 815
    return-void
.end method

.method public setOnMagicFrameShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnMagicFrameShotEventListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 837
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnMagicFrameShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnMagicFrameShotEventListener;

    .line 838
    return-void
.end method

.method public setOnMultiFrameShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnMultiFrameShotEventListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 859
    const-string v0, "SecCamera-JNI-Java"

    const-string v1, "setOnDramaShotEventListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnMultiFrameShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnMultiFrameShotEventListener;

    .line 861
    return-void
.end method

.method public setOnNotifyFirstPreviewFrameEventListener(Lcom/sec/android/seccamera/SecCamera$OnNotifyFirstPreviewFrameEventListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 871
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnNotifyFirstPreviewFrameEventListener:Lcom/sec/android/seccamera/SecCamera$OnNotifyFirstPreviewFrameEventListener;

    .line 872
    return-void
.end method

.method public setOnPIPShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnPIPShotEventListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 848
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnPIPShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnPIPShotEventListener;

    .line 849
    return-void
.end method

.method public setOnPanoramaEventListener(Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 677
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    .line 678
    return-void
.end method

.method public setOnPetDetectionListener(Lcom/sec/android/seccamera/SecCamera$OnPetDetectionListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 883
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnPetDetectionListener:Lcom/sec/android/seccamera/SecCamera$OnPetDetectionListener;

    .line 884
    return-void
.end method

.method public setOnPhotoGrapherDetectionListener(Lcom/sec/android/seccamera/SecCamera$OnPhotoGrapherDetectionListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 946
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnPhotoGrapherDetectionListener:Lcom/sec/android/seccamera/SecCamera$OnPhotoGrapherDetectionListener;

    .line 947
    return-void
.end method

.method public setOnSIM3DPhotoShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnSIM3DPhotoShotEventListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 826
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnSIM3DPhotoShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnSIM3DPhotoShotEventListener;

    .line 827
    return-void
.end method

.method public setOnSecImageEffectListner(Lcom/sec/android/seccamera/SecCamera$OnSecImageEffectListner;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 935
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnSecImageEffectListner:Lcom/sec/android/seccamera/SecCamera$OnSecImageEffectListner;

    .line 936
    return-void
.end method

.method public setOnSmileShotDetectionSuccessListener(Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 799
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnSmileShotDetectionSuccessListener:Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;

    .line 800
    return-void
.end method

.method public final setOneShotPreviewCallback(Lcom/sec/android/seccamera/SecCamera$PreviewCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1347
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mPreviewCallback:Lcom/sec/android/seccamera/SecCamera$PreviewCallback;

    .line 1348
    iput-boolean v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOneShot:Z

    .line 1349
    iput-boolean v1, p0, Lcom/sec/android/seccamera/SecCamera;->mWithBuffer:Z

    .line 1350
    if-eqz p1, :cond_0

    :goto_0
    invoke-direct {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->setHasPreviewCallback(ZZZ)V

    .line 1351
    return-void

    :cond_0
    move v0, v1

    .line 1350
    goto :goto_0
.end method

.method public setPIPBackground(Z)V
    .locals 3
    .parameter "mode"

    .prologue
    const/16 v2, 0x4c5

    const/4 v1, 0x0

    .line 2957
    if-eqz p1, :cond_0

    .line 2958
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2962
    :goto_0
    return-void

    .line 2960
    :cond_0
    invoke-virtual {p0, v2, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public setPIPFramePosition(II)V
    .locals 1
    .parameter "left"
    .parameter "top"

    .prologue
    .line 2965
    const/16 v0, 0x4c6

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2966
    return-void
.end method

.method public setPIPFrameSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2969
    const/16 v0, 0x4c7

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2970
    return-void
.end method

.method public setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 2728
    invoke-virtual {p1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/seccamera/SecCamera;->native_setParameters(Ljava/lang/String;)V

    .line 2729
    return-void
.end method

.method public setPhotoGrapherDetectionArea(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2889
    const/16 v0, 0x52b

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2890
    const/16 v0, 0x52c

    invoke-virtual {p0, v0, p3, p4}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2891
    return-void
.end method

.method public setPictureMode(I)V
    .locals 2
    .parameter "picMode"

    .prologue
    .line 3115
    const/16 v0, 0x4f9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3116
    return-void
.end method

.method public final setPreviewCallback(Lcom/sec/android/seccamera/SecCamera$PreviewCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    const/4 v1, 0x0

    .line 1324
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mPreviewCallback:Lcom/sec/android/seccamera/SecCamera$PreviewCallback;

    .line 1325
    iput-boolean v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOneShot:Z

    .line 1326
    iput-boolean v1, p0, Lcom/sec/android/seccamera/SecCamera;->mWithBuffer:Z

    .line 1329
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->setHasPreviewCallback(ZZZ)V

    .line 1330
    return-void

    :cond_0
    move v0, v1

    .line 1329
    goto :goto_0
.end method

.method public setPreviewCallbackSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3321
    const/16 v0, 0x565

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3322
    return-void
.end method

.method public final setPreviewCallbackWithBuffer(Lcom/sec/android/seccamera/SecCamera$PreviewCallback;)V
    .locals 3
    .parameter "cb"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1383
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mPreviewCallback:Lcom/sec/android/seccamera/SecCamera$PreviewCallback;

    .line 1384
    iput-boolean v2, p0, Lcom/sec/android/seccamera/SecCamera;->mOneShot:Z

    .line 1385
    iput-boolean v1, p0, Lcom/sec/android/seccamera/SecCamera;->mWithBuffer:Z

    .line 1386
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setHasPreviewCallback(ZZZ)V

    .line 1387
    return-void

    :cond_0
    move v0, v2

    .line 1386
    goto :goto_0
.end method

.method public final setPreviewCallbackWithBufferNoDisable(Lcom/sec/android/seccamera/SecCamera$PreviewCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1390
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mPreviewCallback:Lcom/sec/android/seccamera/SecCamera$PreviewCallback;

    .line 1391
    iput-boolean v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOneShot:Z

    .line 1392
    iput-boolean v1, p0, Lcom/sec/android/seccamera/SecCamera;->mWithBuffer:Z

    .line 1393
    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->setHasPreviewCallback(ZZZ)V

    .line 1394
    return-void
.end method

.method public final setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1187
    if-eqz p1, :cond_0

    .line 1188
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/seccamera/SecCamera;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 1192
    :goto_0
    return-void

    .line 1190
    :cond_0
    const/4 v0, 0x0

    check-cast v0, Landroid/view/Surface;

    invoke-direct {p0, v0}, Lcom/sec/android/seccamera/SecCamera;->setPreviewDisplay(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public final native setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final setRecordingTakePictureCallback(Lcom/sec/android/seccamera/SecCamera$ShutterCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;)V
    .locals 2
    .parameter "shutter"
    .parameter "raw"
    .parameter "postview"
    .parameter "jpeg"

    .prologue
    const/4 v1, 0x0

    .line 2288
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mShutterCallback:Lcom/sec/android/seccamera/SecCamera$ShutterCallback;

    .line 2289
    iput-object p2, p0, Lcom/sec/android/seccamera/SecCamera;->mRawImageCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    .line 2290
    iput-object p3, p0, Lcom/sec/android/seccamera/SecCamera;->mPostviewCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    .line 2291
    iput-object p4, p0, Lcom/sec/android/seccamera/SecCamera;->mJpegCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    .line 2292
    const/16 v0, 0x4b2

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2293
    return-void
.end method

.method public setResolutionActionShot(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3031
    const/16 v0, 0x46c

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3032
    return-void
.end method

.method public setShootingMode(I)V
    .locals 2
    .parameter "shootingMode"

    .prologue
    const/4 v1, 0x0

    .line 2746
    add-int/lit16 v0, p1, 0x3e8

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2747
    return-void
.end method

.method public setShootingMode(III)V
    .locals 1
    .parameter "shootingMode"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 2750
    add-int/lit16 v0, p1, 0x3e8

    invoke-virtual {p0, v0, p2, p3}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2751
    return-void
.end method

.method public setShootingModeCallbacks(Lcom/sec/android/seccamera/SecCamera$ShutterCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;)V
    .locals 1
    .parameter "shutter"
    .parameter "raw"
    .parameter "jpeg"

    .prologue
    .line 2859
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mShutterCallback:Lcom/sec/android/seccamera/SecCamera$ShutterCallback;

    .line 2860
    iput-object p2, p0, Lcom/sec/android/seccamera/SecCamera;->mRawImageCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    .line 2861
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mPostviewCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    .line 2862
    iput-object p3, p0, Lcom/sec/android/seccamera/SecCamera;->mJpegCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    .line 2863
    return-void
.end method

.method public setShutterSoundEnable(Z)V
    .locals 3
    .parameter "mode"

    .prologue
    const/16 v2, 0x605

    const/4 v1, 0x0

    .line 2754
    if-eqz p1, :cond_0

    .line 2755
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2758
    :goto_0
    return-void

    .line 2757
    :cond_0
    invoke-virtual {p0, v2, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public setThemeMask(I)V
    .locals 2
    .parameter "mask"

    .prologue
    .line 3246
    const/16 v0, 0x53d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3247
    return-void
.end method

.method public setWBCustomValue()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3197
    const/16 v0, 0x4cf

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3198
    return-void
.end method

.method public final setZoomChangeListener(Lcom/sec/android/seccamera/SecCamera$OnZoomChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2450
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mZoomListener:Lcom/sec/android/seccamera/SecCamera$OnZoomChangeListener;

    .line 2451
    return-void
.end method

.method public smileDetectionReinit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2875
    const/16 v0, 0x44f

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2876
    return-void
.end method

.method public start3DPanorama(Z)V
    .locals 2
    .parameter "start"

    .prologue
    const/4 v1, 0x0

    .line 2926
    if-eqz p1, :cond_0

    .line 2927
    const/16 v0, 0x493

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2931
    :goto_0
    return-void

    .line 2929
    :cond_0
    const/16 v0, 0x494

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public start3DShutterSound(Z)V
    .locals 2
    .parameter "start"

    .prologue
    const/4 v1, 0x0

    .line 2935
    if-eqz p1, :cond_0

    .line 2936
    const/16 v0, 0x497

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2940
    :goto_0
    return-void

    .line 2938
    :cond_0
    const/16 v0, 0x498

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public startBurstShot(ZZI)V
    .locals 3
    .parameter "start"
    .parameter "bestpic"
    .parameter "storage"

    .prologue
    const/16 v2, 0x48b

    const/4 v1, 0x0

    .line 2999
    if-eqz p1, :cond_1

    .line 3000
    if-eqz p2, :cond_0

    .line 3001
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3007
    :goto_0
    return-void

    .line 3003
    :cond_0
    invoke-virtual {p0, v2, v1, p3}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_0

    .line 3005
    :cond_1
    const/16 v0, 0x48c

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public startCaptureAddMeShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3056
    const/16 v0, 0x476

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3057
    return-void
.end method

.method public startContinuousAF()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3188
    const/16 v0, 0x60f

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3189
    return-void
.end method

.method public startContinuousShot(Z)V
    .locals 2
    .parameter "start"

    .prologue
    const/4 v1, 0x0

    .line 2978
    if-eqz p1, :cond_0

    .line 2979
    const/16 v0, 0x461

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2983
    :goto_0
    return-void

    .line 2981
    :cond_0
    const/16 v0, 0x462

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public startDramaShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3255
    const/16 v0, 0x533

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3256
    return-void
.end method

.method public startDualModeAsyncShot(Z)V
    .locals 3
    .parameter "isCapture"

    .prologue
    const/16 v2, 0x55e

    const/4 v1, 0x0

    .line 3290
    if-eqz p1, :cond_0

    .line 3291
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3294
    :goto_0
    return-void

    .line 3293
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public final startFaceDetection()V
    .locals 2

    .prologue
    .line 2513
    iget-boolean v0, p0, Lcom/sec/android/seccamera/SecCamera;->mFaceDetectionRunning:Z

    if-eqz v0, :cond_0

    .line 2514
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Face detection is already running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2516
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/seccamera/SecCamera;->_startFaceDetection(I)V

    .line 2517
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/seccamera/SecCamera;->mFaceDetectionRunning:Z

    .line 2518
    return-void
.end method

.method public final startFaceDetectionSW()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2521
    iget-boolean v0, p0, Lcom/sec/android/seccamera/SecCamera;->mFaceDetectionRunning:Z

    if-eqz v0, :cond_0

    .line 2522
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Face detection is already running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2524
    :cond_0
    invoke-direct {p0, v1}, Lcom/sec/android/seccamera/SecCamera;->_startFaceDetection(I)V

    .line 2525
    iput-boolean v1, p0, Lcom/sec/android/seccamera/SecCamera;->mFaceDetectionRunning:Z

    .line 2526
    return-void
.end method

.method public final startFaceDetectionSW_ForFaceService(Z)V
    .locals 2
    .parameter "needOneEye"

    .prologue
    .line 2537
    iget-boolean v0, p0, Lcom/sec/android/seccamera/SecCamera;->mFaceDetectionRunning:Z

    if-eqz v0, :cond_0

    .line 2538
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Face detection is already running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2540
    :cond_0
    if-eqz p1, :cond_1

    .line 2541
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/android/seccamera/SecCamera;->_startFaceDetection(I)V

    .line 2544
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/seccamera/SecCamera;->mFaceDetectionRunning:Z

    .line 2545
    return-void

    .line 2543
    :cond_1
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/sec/android/seccamera/SecCamera;->_startFaceDetection(I)V

    goto :goto_0
.end method

.method public startFaceZoom(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3163
    const/16 v0, 0x5fb

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3164
    return-void
.end method

.method public startGolfShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3234
    const/16 v0, 0x51f

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3235
    return-void
.end method

.method public startMultiFrameShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3080
    const/16 v0, 0x4ed

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3081
    return-void
.end method

.method public startObjectTracking()V
    .locals 3

    .prologue
    .line 3131
    const/16 v0, 0x5e0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3132
    return-void
.end method

.method public startPanorama(Z)V
    .locals 2
    .parameter "start"

    .prologue
    const/4 v1, 0x0

    .line 2904
    if-eqz p1, :cond_0

    .line 2905
    const/16 v0, 0x457

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2909
    :goto_0
    return-void

    .line 2907
    :cond_0
    const/16 v0, 0x458

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public startPetDetection()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2895
    const/16 v0, 0x515

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2896
    return-void
.end method

.method public startPhotoGrapherDetection(Z)V
    .locals 2
    .parameter "start"

    .prologue
    const/4 v1, 0x0

    .line 2880
    if-eqz p1, :cond_0

    .line 2881
    const/16 v0, 0x529

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2885
    :goto_0
    return-void

    .line 2883
    :cond_0
    const/16 v0, 0x52a

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public final native startPreview()V
.end method

.method public final startSamsungFaceDetectionSW()V
    .locals 2

    .prologue
    .line 2529
    iget-boolean v0, p0, Lcom/sec/android/seccamera/SecCamera;->mFaceDetectionRunning:Z

    if-eqz v0, :cond_0

    .line 2530
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Face detection is already running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2532
    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/sec/android/seccamera/SecCamera;->_startFaceDetection(I)V

    .line 2533
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/seccamera/SecCamera;->mFaceDetectionRunning:Z

    .line 2534
    return-void
.end method

.method public startSeriesActionShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3035
    const/16 v0, 0x46d

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3036
    return-void
.end method

.method public startShutterSound(Z)V
    .locals 2
    .parameter "start"

    .prologue
    const/4 v1, 0x0

    .line 2913
    if-eqz p1, :cond_0

    .line 2914
    const/16 v0, 0x45b

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2918
    :goto_0
    return-void

    .line 2916
    :cond_0
    const/16 v0, 0x45c

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public startSmileDetection(Z)V
    .locals 2
    .parameter "start"

    .prologue
    const/4 v1, 0x0

    .line 2867
    if-eqz p1, :cond_0

    .line 2868
    const/16 v0, 0x44d

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2872
    :goto_0
    return-void

    .line 2870
    :cond_0
    const/16 v0, 0x44e

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public final native startSmoothZoom(I)V
.end method

.method public startTouchAutoFocus()V
    .locals 3

    .prologue
    .line 3139
    const/16 v0, 0x5e1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3140
    return-void
.end method

.method public stopContinuousAF()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3192
    const/16 v0, 0x610

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3193
    return-void
.end method

.method public stopDramaShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3259
    const/16 v0, 0x534

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3260
    return-void
.end method

.method public final stopFaceDetection()V
    .locals 2

    .prologue
    .line 2557
    invoke-direct {p0}, Lcom/sec/android/seccamera/SecCamera;->_stopFaceDetection()V

    .line 2558
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/seccamera/SecCamera;->mFaceDetectionRunning:Z

    .line 2559
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mEventHandler:Lcom/sec/android/seccamera/SecCamera$EventHandler;

    if-eqz v0, :cond_0

    .line 2561
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mEventHandler:Lcom/sec/android/seccamera/SecCamera$EventHandler;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera$EventHandler;->removeMessages(I)V

    .line 2564
    :cond_0
    return-void
.end method

.method public stopFaceZoom()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3168
    const/16 v0, 0x5fc

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3169
    return-void
.end method

.method public stopGolfShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3238
    const/16 v0, 0x520

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3239
    return-void
.end method

.method public stopObjectTracking()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3135
    const/16 v0, 0x5e0

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3136
    return-void
.end method

.method public stopPetDetection()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2899
    const/16 v0, 0x516

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2900
    return-void
.end method

.method public final stopPreview()V
    .locals 2

    .prologue
    .line 1282
    invoke-direct {p0}, Lcom/sec/android/seccamera/SecCamera;->_stopPreview()V

    .line 1283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/seccamera/SecCamera;->mFaceDetectionRunning:Z

    .line 1285
    const-string v0, "SecCamera-JNI-Java"

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    return-void
.end method

.method public stopSeriesActionShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3039
    const/16 v0, 0x46f

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3040
    return-void
.end method

.method public final native stopSmoothZoom()V
.end method

.method public stopTouchAutoFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3143
    const/16 v0, 0x5e1

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3144
    return-void
.end method

.method public switchPositionAddMeShot(I)V
    .locals 2
    .parameter "setLeft"

    .prologue
    .line 3060
    const/16 v0, 0x477

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3061
    return-void
.end method

.method public final takePicture(Lcom/sec/android/seccamera/SecCamera$ShutterCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;)V
    .locals 1
    .parameter "shutter"
    .parameter "raw"
    .parameter "jpeg"

    .prologue
    .line 2222
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/sec/android/seccamera/SecCamera;->takePicture(Lcom/sec/android/seccamera/SecCamera$ShutterCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;)V

    .line 2223
    return-void
.end method

.method public final takePicture(Lcom/sec/android/seccamera/SecCamera$ShutterCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;)V
    .locals 2
    .parameter "shutter"
    .parameter "raw"
    .parameter "postview"
    .parameter "jpeg"

    .prologue
    .line 2257
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mShutterCallback:Lcom/sec/android/seccamera/SecCamera$ShutterCallback;

    .line 2258
    iput-object p2, p0, Lcom/sec/android/seccamera/SecCamera;->mRawImageCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    .line 2259
    iput-object p3, p0, Lcom/sec/android/seccamera/SecCamera;->mPostviewCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    .line 2260
    iput-object p4, p0, Lcom/sec/android/seccamera/SecCamera;->mJpegCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    .line 2263
    const/4 v0, 0x0

    .line 2264
    .local v0, msgType:I
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mShutterCallback:Lcom/sec/android/seccamera/SecCamera$ShutterCallback;

    if-eqz v1, :cond_0

    .line 2265
    or-int/lit8 v0, v0, 0x2

    .line 2267
    :cond_0
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mRawImageCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    if-eqz v1, :cond_1

    .line 2268
    or-int/lit16 v0, v0, 0x80

    .line 2270
    :cond_1
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mPostviewCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    if-eqz v1, :cond_2

    .line 2271
    or-int/lit8 v0, v0, 0x40

    .line 2273
    :cond_2
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mJpegCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    if-eqz v1, :cond_3

    .line 2274
    or-int/lit16 v0, v0, 0x100

    .line 2277
    :cond_3
    invoke-direct {p0, v0}, Lcom/sec/android/seccamera/SecCamera;->native_takePicture(I)V

    .line 2278
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/seccamera/SecCamera;->mFaceDetectionRunning:Z

    .line 2279
    return-void
.end method

.method public terminateBurstShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3010
    const/16 v0, 0x48d

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3011
    return-void
.end method

.method public terminateContinuousShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2986
    const/16 v0, 0x463

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2987
    return-void
.end method

.method public terminateMultiFrameShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3088
    const/16 v0, 0x4ef

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3089
    return-void
.end method

.method public final native unlock()V
.end method

.method public unlockFaceDetect()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3123
    const/16 v0, 0x5de

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3124
    return-void
.end method
