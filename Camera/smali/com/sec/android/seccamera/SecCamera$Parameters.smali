.class public Lcom/sec/android/seccamera/SecCamera$Parameters;
.super Ljava/lang/Object;
.source "SecCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/seccamera/SecCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Parameters"
.end annotation


# static fields
.field public static final ANTIBANDING_50HZ:Ljava/lang/String; = "50hz"

.field public static final ANTIBANDING_60HZ:Ljava/lang/String; = "60hz"

.field public static final ANTIBANDING_AUTO:Ljava/lang/String; = "auto"

.field public static final ANTIBANDING_OFF:Ljava/lang/String; = "off"

.field public static final EFFECT_AQUA:Ljava/lang/String; = "aqua"

.field public static final EFFECT_BLACKBOARD:Ljava/lang/String; = "blackboard"

.field public static final EFFECT_MONO:Ljava/lang/String; = "mono"

.field public static final EFFECT_NEGATIVE:Ljava/lang/String; = "negative"

.field public static final EFFECT_NONE:Ljava/lang/String; = "none"

.field public static final EFFECT_POSTERIZE:Ljava/lang/String; = "posterize"

.field public static final EFFECT_SEPIA:Ljava/lang/String; = "sepia"

.field public static final EFFECT_SOLARIZE:Ljava/lang/String; = "solarize"

.field public static final EFFECT_WHITEBOARD:Ljava/lang/String; = "whiteboard"

.field private static final FALSE:Ljava/lang/String; = "false"

.field public static final FLASH_MODE_AUTO:Ljava/lang/String; = "auto"

.field public static final FLASH_MODE_OFF:Ljava/lang/String; = "off"

.field public static final FLASH_MODE_ON:Ljava/lang/String; = "on"

.field public static final FLASH_MODE_RED_EYE:Ljava/lang/String; = "red-eye"

.field public static final FLASH_MODE_TORCH:Ljava/lang/String; = "torch"

.field public static final FOCUS_DISTANCE_FAR_INDEX:I = 0x2

.field public static final FOCUS_DISTANCE_NEAR_INDEX:I = 0x0

.field public static final FOCUS_DISTANCE_OPTIMAL_INDEX:I = 0x1

.field public static final FOCUS_MODE_AUTO:Ljava/lang/String; = "auto"

.field public static final FOCUS_MODE_CONTINUOUS_PICTURE:Ljava/lang/String; = "continuous-picture"

.field public static final FOCUS_MODE_CONTINUOUS_VIDEO:Ljava/lang/String; = "continuous-video"

.field public static final FOCUS_MODE_EDOF:Ljava/lang/String; = "edof"

.field public static final FOCUS_MODE_FIXED:Ljava/lang/String; = "fixed"

.field public static final FOCUS_MODE_INFINITY:Ljava/lang/String; = "infinity"

.field public static final FOCUS_MODE_MACRO:Ljava/lang/String; = "macro"

.field private static final KEY_ANTIBANDING:Ljava/lang/String; = "antibanding"

.field private static final KEY_AUTO_EXPOSURE_LOCK:Ljava/lang/String; = "auto-exposure-lock"

.field private static final KEY_AUTO_EXPOSURE_LOCK_SUPPORTED:Ljava/lang/String; = "auto-exposure-lock-supported"

.field private static final KEY_AUTO_WHITEBALANCE_LOCK:Ljava/lang/String; = "auto-whitebalance-lock"

.field private static final KEY_AUTO_WHITEBALANCE_LOCK_SUPPORTED:Ljava/lang/String; = "auto-whitebalance-lock-supported"

.field private static final KEY_CITYID:Ljava/lang/String; = "contextualtag-cityid"

.field private static final KEY_EFFECT:Ljava/lang/String; = "effect"

.field private static final KEY_EXPOSURE_COMPENSATION:Ljava/lang/String; = "exposure-compensation"

.field private static final KEY_EXPOSURE_COMPENSATION_STEP:Ljava/lang/String; = "exposure-compensation-step"

.field private static final KEY_FLASH_MODE:Ljava/lang/String; = "flash-mode"

.field private static final KEY_FOCAL_LENGTH:Ljava/lang/String; = "focal-length"

.field private static final KEY_FOCUS_AREAS:Ljava/lang/String; = "focus-areas"

.field private static final KEY_FOCUS_DISTANCES:Ljava/lang/String; = "focus-distances"

.field private static final KEY_FOCUS_MODE:Ljava/lang/String; = "focus-mode"

.field private static final KEY_GPS_ALTITUDE:Ljava/lang/String; = "gps-altitude"

.field private static final KEY_GPS_LATITUDE:Ljava/lang/String; = "gps-latitude"

.field private static final KEY_GPS_LONGITUDE:Ljava/lang/String; = "gps-longitude"

.field private static final KEY_GPS_PROCESSING_METHOD:Ljava/lang/String; = "gps-processing-method"

.field private static final KEY_GPS_TIMESTAMP:Ljava/lang/String; = "gps-timestamp"

.field private static final KEY_HORIZONTAL_VIEW_ANGLE:Ljava/lang/String; = "horizontal-view-angle"

.field private static final KEY_JPEG_QUALITY:Ljava/lang/String; = "jpeg-quality"

.field private static final KEY_JPEG_THUMBNAIL_HEIGHT:Ljava/lang/String; = "jpeg-thumbnail-height"

.field private static final KEY_JPEG_THUMBNAIL_QUALITY:Ljava/lang/String; = "jpeg-thumbnail-quality"

.field private static final KEY_JPEG_THUMBNAIL_SIZE:Ljava/lang/String; = "jpeg-thumbnail-size"

.field private static final KEY_JPEG_THUMBNAIL_WIDTH:Ljava/lang/String; = "jpeg-thumbnail-width"

.field private static final KEY_MAX_EXPOSURE_COMPENSATION:Ljava/lang/String; = "max-exposure-compensation"

.field private static final KEY_MAX_NUM_DETECTED_FACES_HW:Ljava/lang/String; = "max-num-detected-faces-hw"

.field private static final KEY_MAX_NUM_DETECTED_FACES_SW:Ljava/lang/String; = "max-num-detected-faces-sw"

.field private static final KEY_MAX_NUM_FOCUS_AREAS:Ljava/lang/String; = "max-num-focus-areas"

.field private static final KEY_MAX_NUM_METERING_AREAS:Ljava/lang/String; = "max-num-metering-areas"

.field private static final KEY_MAX_ZOOM:Ljava/lang/String; = "max-zoom"

.field private static final KEY_METERING_AREAS:Ljava/lang/String; = "metering-areas"

.field private static final KEY_MIN_EXPOSURE_COMPENSATION:Ljava/lang/String; = "min-exposure-compensation"

.field private static final KEY_PICTURE_FORMAT:Ljava/lang/String; = "picture-format"

.field private static final KEY_PICTURE_SIZE:Ljava/lang/String; = "picture-size"

.field private static final KEY_PREFERRED_PREVIEW_SIZE_FOR_VIDEO:Ljava/lang/String; = "preferred-preview-size-for-video"

.field private static final KEY_PREVIEW_FORMAT:Ljava/lang/String; = "preview-format"

.field private static final KEY_PREVIEW_FPS_RANGE:Ljava/lang/String; = "preview-fps-range"

.field private static final KEY_PREVIEW_FRAME_RATE:Ljava/lang/String; = "preview-frame-rate"

.field private static final KEY_PREVIEW_SIZE:Ljava/lang/String; = "preview-size"

.field private static final KEY_RECORDING_HINT:Ljava/lang/String; = "recording-hint"

.field private static final KEY_ROTATION:Ljava/lang/String; = "rotation"

.field private static final KEY_SCENE_MODE:Ljava/lang/String; = "scene-mode"

.field private static final KEY_SMOOTH_ZOOM_SUPPORTED:Ljava/lang/String; = "smooth-zoom-supported"

.field private static final KEY_VERTICAL_VIEW_ANGLE:Ljava/lang/String; = "vertical-view-angle"

.field private static final KEY_VIDEO_SIZE:Ljava/lang/String; = "video-size"

.field private static final KEY_VIDEO_SNAPSHOT_SUPPORTED:Ljava/lang/String; = "video-snapshot-supported"

.field private static final KEY_VIDEO_STABILIZATION:Ljava/lang/String; = "video-stabilization"

.field private static final KEY_VIDEO_STABILIZATION_SUPPORTED:Ljava/lang/String; = "video-stabilization-supported"

.field private static final KEY_WEATHER:Ljava/lang/String; = "contextualtag-weather"

.field private static final KEY_WHITE_BALANCE:Ljava/lang/String; = "whitebalance"

.field private static final KEY_ZOOM:Ljava/lang/String; = "zoom"

.field private static final KEY_ZOOM_RATIOS:Ljava/lang/String; = "zoom-ratios"

.field private static final KEY_ZOOM_SUPPORTED:Ljava/lang/String; = "zoom-supported"

.field private static final PIXEL_FORMAT_BAYER_RGGB:Ljava/lang/String; = "bayer-rggb"

.field private static final PIXEL_FORMAT_JPEG:Ljava/lang/String; = "jpeg"

.field private static final PIXEL_FORMAT_RGB565:Ljava/lang/String; = "rgb565"

.field private static final PIXEL_FORMAT_YUV420P:Ljava/lang/String; = "yuv420p"

.field private static final PIXEL_FORMAT_YUV420SP:Ljava/lang/String; = "yuv420sp"

.field private static final PIXEL_FORMAT_YUV422I:Ljava/lang/String; = "yuv422i-yuyv"

.field private static final PIXEL_FORMAT_YUV422SP:Ljava/lang/String; = "yuv422sp"

.field public static final PREVIEW_FPS_MAX_INDEX:I = 0x1

.field public static final PREVIEW_FPS_MIN_INDEX:I = 0x0

.field public static final SCENE_MODE_ACTION:Ljava/lang/String; = "action"

.field public static final SCENE_MODE_AUTO:Ljava/lang/String; = "auto"

.field public static final SCENE_MODE_BARCODE:Ljava/lang/String; = "barcode"

.field public static final SCENE_MODE_BEACH:Ljava/lang/String; = "beach"

.field public static final SCENE_MODE_CANDLELIGHT:Ljava/lang/String; = "candlelight"

.field public static final SCENE_MODE_FIREWORKS:Ljava/lang/String; = "fireworks"

.field public static final SCENE_MODE_HDR:Ljava/lang/String; = "hdr"

.field public static final SCENE_MODE_LANDSCAPE:Ljava/lang/String; = "landscape"

.field public static final SCENE_MODE_NIGHT:Ljava/lang/String; = "night"

.field public static final SCENE_MODE_NIGHT_PORTRAIT:Ljava/lang/String; = "night-portrait"

.field public static final SCENE_MODE_PARTY:Ljava/lang/String; = "party"

.field public static final SCENE_MODE_PORTRAIT:Ljava/lang/String; = "portrait"

.field public static final SCENE_MODE_SNOW:Ljava/lang/String; = "snow"

.field public static final SCENE_MODE_SPORTS:Ljava/lang/String; = "sports"

.field public static final SCENE_MODE_STEADYPHOTO:Ljava/lang/String; = "steadyphoto"

.field public static final SCENE_MODE_SUNSET:Ljava/lang/String; = "sunset"

.field public static final SCENE_MODE_THEATRE:Ljava/lang/String; = "theatre"

.field private static final SUPPORTED_VALUES_SUFFIX:Ljava/lang/String; = "-values"

.field private static final TRUE:Ljava/lang/String; = "true"

.field public static final WHITE_BALANCE_AUTO:Ljava/lang/String; = "auto"

.field public static final WHITE_BALANCE_CLOUDY_DAYLIGHT:Ljava/lang/String; = "cloudy-daylight"

.field public static final WHITE_BALANCE_DAYLIGHT:Ljava/lang/String; = "daylight"

.field public static final WHITE_BALANCE_FLUORESCENT:Ljava/lang/String; = "fluorescent"

.field public static final WHITE_BALANCE_INCANDESCENT:Ljava/lang/String; = "incandescent"

.field public static final WHITE_BALANCE_SHADE:Ljava/lang/String; = "shade"

.field public static final WHITE_BALANCE_TWILIGHT:Ljava/lang/String; = "twilight"

.field public static final WHITE_BALANCE_WARM_FLUORESCENT:Ljava/lang/String; = "warm-fluorescent"


# instance fields
.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/seccamera/SecCamera;


# direct methods
.method private constructor <init>(Lcom/sec/android/seccamera/SecCamera;)V
    .locals 1
    .parameter

    .prologue
    .line 3825
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera$Parameters;->this$0:Lcom/sec/android/seccamera/SecCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3826
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/seccamera/SecCamera$Parameters;->mMap:Ljava/util/HashMap;

    .line 3827
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/seccamera/SecCamera;Lcom/sec/android/seccamera/SecCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3490
    invoke-direct {p0, p1}, Lcom/sec/android/seccamera/SecCamera$Parameters;-><init>(Lcom/sec/android/seccamera/SecCamera;)V

    return-void
.end method

.method private cameraFormatForPixelFormat(I)Ljava/lang/String;
    .locals 1
    .parameter "pixel_format"

    .prologue
    .line 4399
    sparse-switch p1, :sswitch_data_0

    .line 4407
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4400
    :sswitch_0
    const-string v0, "yuv422sp"

    goto :goto_0

    .line 4401
    :sswitch_1
    const-string v0, "yuv420sp"

    goto :goto_0

    .line 4402
    :sswitch_2
    const-string v0, "yuv422i-yuyv"

    goto :goto_0

    .line 4403
    :sswitch_3
    const-string v0, "yuv420p"

    goto :goto_0

    .line 4404
    :sswitch_4
    const-string v0, "rgb565"

    goto :goto_0

    .line 4405
    :sswitch_5
    const-string v0, "jpeg"

    goto :goto_0

    .line 4406
    :sswitch_6
    const-string v0, "bayer-rggb"

    goto :goto_0

    .line 4399
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_4
        0x10 -> :sswitch_0
        0x11 -> :sswitch_1
        0x14 -> :sswitch_2
        0x100 -> :sswitch_5
        0x200 -> :sswitch_6
        0x32315659 -> :sswitch_3
    .end sparse-switch
.end method

.method private getFloat(Ljava/lang/String;F)F
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 5484
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 5486
    .end local p2
    :goto_0
    return p2

    .line 5485
    .restart local p2
    :catch_0
    move-exception v0

    .line 5486
    .local v0, ex:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private getInt(Ljava/lang/String;I)I
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 5493
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 5495
    .end local p2
    :goto_0
    return p2

    .line 5494
    .restart local p2
    :catch_0
    move-exception v0

    .line 5495
    .local v0, ex:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private pixelFormatForCameraFormat(Ljava/lang/String;)I
    .locals 2
    .parameter "format"

    .prologue
    const/4 v0, 0x0

    .line 4412
    if-nez p1, :cond_1

    .line 4433
    :cond_0
    :goto_0
    return v0

    .line 4415
    :cond_1
    const-string v1, "yuv422sp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4416
    const/16 v0, 0x10

    goto :goto_0

    .line 4418
    :cond_2
    const-string v1, "yuv420sp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4419
    const/16 v0, 0x11

    goto :goto_0

    .line 4421
    :cond_3
    const-string v1, "yuv422i-yuyv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4422
    const/16 v0, 0x14

    goto :goto_0

    .line 4424
    :cond_4
    const-string v1, "yuv420p"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4425
    const v0, 0x32315659

    goto :goto_0

    .line 4427
    :cond_5
    const-string v1, "rgb565"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4428
    const/4 v0, 0x4

    goto :goto_0

    .line 4430
    :cond_6
    const-string v1, "jpeg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4431
    const/16 v0, 0x100

    goto :goto_0
.end method

.method private same(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "s1"
    .parameter "s2"

    .prologue
    const/4 v0, 0x1

    .line 5593
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 5595
    :cond_0
    :goto_0
    return v0

    .line 5594
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5595
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private set(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/seccamera/SecCamera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, areas:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Area;>;"
    const/16 v5, 0x2c

    .line 3920
    if-nez p2, :cond_0

    .line 3921
    const-string v4, "(0,0,0,0,0)"

    invoke-virtual {p0, p1, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3942
    :goto_0
    return-void

    .line 3923
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3924
    .local v1, buffer:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 3925
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/seccamera/SecCamera$Area;

    .line 3926
    .local v0, area:Lcom/sec/android/seccamera/SecCamera$Area;
    iget-object v3, v0, Lcom/sec/android/seccamera/SecCamera$Area;->rect:Landroid/graphics/Rect;

    .line 3927
    .local v3, rect:Landroid/graphics/Rect;
    const/16 v4, 0x28

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3928
    iget v4, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3929
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3930
    iget v4, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3931
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3932
    iget v4, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3933
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3934
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3935
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3936
    iget v4, v0, Lcom/sec/android/seccamera/SecCamera$Area;->weight:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3937
    const/16 v4, 0x29

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3938
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v2, v4, :cond_1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3924
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3940
    .end local v0           #area:Lcom/sec/android/seccamera/SecCamera$Area;
    .end local v3           #rect:Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private split(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5432
    if-nez p1, :cond_1

    const/4 v3, 0x0

    .line 5440
    :cond_0
    return-object v3

    .line 5434
    :cond_1
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v4, 0x2c

    invoke-direct {v2, v4}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 5435
    .local v2, splitter:Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v2, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 5436
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5437
    .local v3, substrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v2}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5438
    .local v1, s:Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private splitArea(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/seccamera/SecCamera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v6, 0x0

    const/4 v11, 0x0

    .line 5560
    if-eqz p1, :cond_0

    invoke-virtual {p1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x28

    if-ne v7, v8, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x29

    if-eq v7, v8, :cond_2

    .line 5562
    :cond_0
    const-string v7, "SecCamera-JNI-Java"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid area string="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 5589
    :cond_1
    :goto_0
    return-object v5

    .line 5566
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5567
    .local v5, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/seccamera/SecCamera$Area;>;"
    const/4 v3, 0x1

    .line 5568
    .local v3, fromIndex:I
    const/4 v7, 0x5

    new-array v1, v7, [I

    .line 5570
    .local v1, array:[I
    :cond_3
    const-string v7, "),("

    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 5571
    .local v2, endIndex:I
    const/4 v7, -0x1

    if-ne v2, v7, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .line 5572
    :cond_4
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->splitInt(Ljava/lang/String;[I)V

    .line 5573
    new-instance v4, Landroid/graphics/Rect;

    aget v7, v1, v11

    aget v8, v1, v12

    const/4 v9, 0x2

    aget v9, v1, v9

    const/4 v10, 0x3

    aget v10, v1, v10

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5574
    .local v4, rect:Landroid/graphics/Rect;
    new-instance v7, Lcom/sec/android/seccamera/SecCamera$Area;

    const/4 v8, 0x4

    aget v8, v1, v8

    invoke-direct {v7, v4, v8}, Lcom/sec/android/seccamera/SecCamera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5575
    add-int/lit8 v3, v2, 0x3

    .line 5576
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v2, v7, :cond_3

    .line 5578
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_5

    move-object v5, v6

    goto :goto_0

    .line 5580
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v12, :cond_1

    .line 5581
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/seccamera/SecCamera$Area;

    .line 5582
    .local v0, area:Lcom/sec/android/seccamera/SecCamera$Area;
    iget-object v4, v0, Lcom/sec/android/seccamera/SecCamera$Area;->rect:Landroid/graphics/Rect;

    .line 5583
    iget v7, v4, Landroid/graphics/Rect;->left:I

    if-nez v7, :cond_1

    iget v7, v4, Landroid/graphics/Rect;->top:I

    if-nez v7, :cond_1

    iget v7, v4, Landroid/graphics/Rect;->right:I

    if-nez v7, :cond_1

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    if-nez v7, :cond_1

    iget v7, v0, Lcom/sec/android/seccamera/SecCamera$Area;->weight:I

    if-nez v7, :cond_1

    move-object v5, v6

    .line 5585
    goto :goto_0
.end method

.method private splitFloat(Ljava/lang/String;[F)V
    .locals 6
    .parameter "str"
    .parameter "output"

    .prologue
    .line 5471
    if-nez p1, :cond_1

    .line 5479
    :cond_0
    return-void

    .line 5473
    :cond_1
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x2c

    invoke-direct {v4, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 5474
    .local v4, splitter:Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v4, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 5475
    const/4 v1, 0x0

    .line 5476
    .local v1, index:I
    invoke-interface {v4}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5477
    .local v3, s:Ljava/lang/String;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .local v2, index:I
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, p2, v1

    move v1, v2

    .end local v2           #index:I
    .restart local v1       #index:I
    goto :goto_0
.end method

.method private splitInt(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 5446
    if-nez p1, :cond_1

    move-object v3, v4

    .line 5455
    :cond_0
    :goto_0
    return-object v3

    .line 5448
    :cond_1
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x2c

    invoke-direct {v2, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 5449
    .local v2, splitter:Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v2, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 5450
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5451
    .local v3, substrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5452
    .local v1, s:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5454
    .end local v1           #s:Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    move-object v3, v4

    goto :goto_0
.end method

.method private splitInt(Ljava/lang/String;[I)V
    .locals 6
    .parameter "str"
    .parameter "output"

    .prologue
    .line 5459
    if-nez p1, :cond_1

    .line 5467
    :cond_0
    return-void

    .line 5461
    :cond_1
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x2c

    invoke-direct {v4, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 5462
    .local v4, splitter:Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v4, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 5463
    const/4 v1, 0x0

    .line 5464
    .local v1, index:I
    invoke-interface {v4}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5465
    .local v3, s:Ljava/lang/String;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .local v2, index:I
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, p2, v1

    move v1, v2

    .end local v2           #index:I
    .restart local v1       #index:I
    goto :goto_0
.end method

.method private splitRange(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 5535
    if-eqz p1, :cond_0

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x28

    if-ne v5, v6, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x29

    if-eq v5, v6, :cond_2

    .line 5537
    :cond_0
    const-string v5, "SecCamera-JNI-Java"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid range list string="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 5553
    :cond_1
    :goto_0
    return-object v3

    .line 5541
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5542
    .local v3, rangeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[I>;"
    const/4 v1, 0x1

    .line 5544
    .local v1, fromIndex:I
    :cond_3
    const/4 v5, 0x2

    new-array v2, v5, [I

    .line 5545
    .local v2, range:[I
    const-string v5, "),("

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 5546
    .local v0, endIndex:I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 5547
    :cond_4
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->splitInt(Ljava/lang/String;[I)V

    .line 5548
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5549
    add-int/lit8 v1, v0, 0x3

    .line 5550
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v0, v5, :cond_3

    .line 5552
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    move-object v3, v4

    goto :goto_0
.end method

.method private splitSize(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/seccamera/SecCamera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 5502
    if-nez p1, :cond_1

    move-object v3, v5

    .line 5512
    :cond_0
    :goto_0
    return-object v3

    .line 5504
    :cond_1
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v6, 0x2c

    invoke-direct {v4, v6}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 5505
    .local v4, splitter:Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v4, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 5506
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5507
    .local v3, sizeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    invoke-interface {v4}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5508
    .local v1, s:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->strToSize(Ljava/lang/String;)Lcom/sec/android/seccamera/SecCamera$Size;

    move-result-object v2

    .line 5509
    .local v2, size:Lcom/sec/android/seccamera/SecCamera$Size;
    if-eqz v2, :cond_2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5511
    .end local v1           #s:Ljava/lang/String;
    .end local v2           #size:Lcom/sec/android/seccamera/SecCamera$Size;
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    move-object v3, v5

    goto :goto_0
.end method

.method private strToSize(Ljava/lang/String;)Lcom/sec/android/seccamera/SecCamera$Size;
    .locals 7
    .parameter "str"

    .prologue
    const/4 v3, 0x0

    .line 5518
    if-nez p1, :cond_0

    .line 5528
    :goto_0
    return-object v3

    .line 5520
    :cond_0
    const/16 v4, 0x78

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 5521
    .local v1, pos:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 5522
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 5523
    .local v2, width:Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 5524
    .local v0, height:Ljava/lang/String;
    new-instance v3, Lcom/sec/android/seccamera/SecCamera$Size;

    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$Parameters;->this$0:Lcom/sec/android/seccamera/SecCamera;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Size;-><init>(Lcom/sec/android/seccamera/SecCamera;II)V

    goto :goto_0

    .line 5527
    .end local v0           #height:Ljava/lang/String;
    .end local v2           #width:Ljava/lang/String;
    :cond_1
    const-string v4, "SecCamera-JNI-Java"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid size parameter string="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dump()V
    .locals 5

    .prologue
    .line 3835
    const-string v2, "SecCamera-JNI-Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dump: size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3836
    iget-object v2, p0, Lcom/sec/android/seccamera/SecCamera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3837
    .local v1, k:Ljava/lang/String;
    const-string v3, "SecCamera-JNI-Java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dump: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/sec/android/seccamera/SecCamera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3839
    .end local v1           #k:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public flatten()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3850
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3851
    .local v0, flattened:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3852
    .local v2, k:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3853
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3854
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3855
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3858
    .end local v2           #k:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 3859
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 3951
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAntibanding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4680
    const-string v0, "antibanding"

    invoke-virtual {p0, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutoExposureLock()Z
    .locals 2

    .prologue
    .line 4975
    const-string v1, "auto-exposure-lock"

    invoke-virtual {p0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4976
    .local v0, str:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getAutoWhiteBalanceLock()Z
    .locals 2

    .prologue
    .line 5047
    const-string v1, "auto-whitebalance-lock"

    invoke-virtual {p0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5048
    .local v0, str:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getColorEffect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4643
    const-string v0, "effect"

    invoke-virtual {p0, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExposureCompensation()I
    .locals 2

    .prologue
    .line 4875
    const-string v0, "exposure-compensation"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getExposureCompensationStep()F
    .locals 2

    .prologue
    .line 4923
    const-string v0, "exposure-compensation-step"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getFlashMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4771
    const-string v0, "flash-mode"

    invoke-virtual {p0, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocalLength()F
    .locals 1

    .prologue
    .line 4843
    const-string v0, "focal-length"

    invoke-virtual {p0, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getFocusAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/seccamera/SecCamera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5232
    const-string v0, "focus-areas"

    invoke-virtual {p0, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->splitArea(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getFocusDistances([F)V
    .locals 2
    .parameter "output"

    .prologue
    .line 5170
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 5171
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "output must be a float array with three elements."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5174
    :cond_1
    const-string v0, "focus-distances"

    invoke-virtual {p0, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->splitFloat(Ljava/lang/String;[F)V

    .line 5175
    return-void
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4811
    const-string v0, "focus-mode"

    invoke-virtual {p0, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHorizontalViewAngle()F
    .locals 1

    .prologue
    .line 4853
    const-string v0, "horizontal-view-angle"

    invoke-virtual {p0, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 3961
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getJpegQuality()I
    .locals 1

    .prologue
    .line 4129
    const-string v0, "jpeg-quality"

    invoke-virtual {p0, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getJpegThumbnailQuality()I
    .locals 1

    .prologue
    .line 4110
    const-string v0, "jpeg-thumbnail-quality"

    invoke-virtual {p0, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getJpegThumbnailSize()Lcom/sec/android/seccamera/SecCamera$Size;
    .locals 4

    .prologue
    .line 4078
    new-instance v0, Lcom/sec/android/seccamera/SecCamera$Size;

    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera$Parameters;->this$0:Lcom/sec/android/seccamera/SecCamera;

    const-string v2, "jpeg-thumbnail-width"

    invoke-virtual {p0, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "jpeg-thumbnail-height"

    invoke-virtual {p0, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Size;-><init>(Lcom/sec/android/seccamera/SecCamera;II)V

    return-object v0
.end method

.method public getMaxExposureCompensation()I
    .locals 2

    .prologue
    .line 4900
    const-string v0, "max-exposure-compensation"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxNumDetectedFaces()I
    .locals 2

    .prologue
    .line 5322
    const-string v0, "max-num-detected-faces-hw"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxNumFocusAreas()I
    .locals 2

    .prologue
    .line 5186
    const-string v0, "max-num-focus-areas"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxNumMeteringAreas()I
    .locals 2

    .prologue
    .line 5254
    const-string v0, "max-num-metering-areas"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxZoom()I
    .locals 2

    .prologue
    .line 5112
    const-string v0, "max-zoom"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMeteringAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/seccamera/SecCamera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5298
    const-string v0, "metering-areas"

    invoke-virtual {p0, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->splitArea(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMinExposureCompensation()I
    .locals 2

    .prologue
    .line 4911
    const-string v0, "min-exposure-compensation"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPictureFormat()I
    .locals 1

    .prologue
    .line 4377
    const-string v0, "picture-format"

    invoke-virtual {p0, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->pixelFormatForCameraFormat(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPictureSize()Lcom/sec/android/seccamera/SecCamera$Size;
    .locals 2

    .prologue
    .line 4336
    const-string v1, "picture-size"

    invoke-virtual {p0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4337
    .local v0, pair:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->strToSize(Ljava/lang/String;)Lcom/sec/android/seccamera/SecCamera$Size;

    move-result-object v1

    return-object v1
.end method

.method public getPreferredPreviewSizeForVideo()Lcom/sec/android/seccamera/SecCamera$Size;
    .locals 2

    .prologue
    .line 4050
    const-string v1, "preferred-preview-size-for-video"

    invoke-virtual {p0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4051
    .local v0, pair:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->strToSize(Ljava/lang/String;)Lcom/sec/android/seccamera/SecCamera$Size;

    move-result-object v1

    return-object v1
.end method

.method public getPreviewFormat()I
    .locals 1

    .prologue
    .line 4289
    const-string v0, "preview-format"

    invoke-virtual {p0, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->pixelFormatForCameraFormat(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPreviewFpsRange([I)V
    .locals 2
    .parameter "range"

    .prologue
    .line 4196
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 4197
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "range must be an array with two elements."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4200
    :cond_1
    const-string v0, "preview-fps-range"

    invoke-virtual {p0, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->splitInt(Ljava/lang/String;[I)V

    .line 4201
    return-void
.end method

.method public getPreviewFrameRate()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4154
    const-string v0, "preview-frame-rate"

    invoke-virtual {p0, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPreviewSize()Lcom/sec/android/seccamera/SecCamera$Size;
    .locals 2

    .prologue
    .line 3999
    const-string v1, "preview-size"

    invoke-virtual {p0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4000
    .local v0, pair:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->strToSize(Ljava/lang/String;)Lcom/sec/android/seccamera/SecCamera$Size;

    move-result-object v1

    return-object v1
.end method

.method public getSceneMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4728
    const-string v0, "scene-mode"

    invoke-virtual {p0, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedAntibanding()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4701
    const-string v1, "antibanding-values"

    invoke-virtual {p0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4702
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedColorEffects()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4664
    const-string v1, "effect-values"

    invoke-virtual {p0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4665
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedFlashModes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4792
    const-string v1, "flash-mode-values"

    invoke-virtual {p0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4793
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedFocusModes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4832
    const-string v1, "focus-mode-values"

    invoke-virtual {p0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4833
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedJpegThumbnailSizes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/seccamera/SecCamera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4090
    const-string v1, "jpeg-thumbnail-size-values"

    invoke-virtual {p0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4091
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->splitSize(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedPictureFormats()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4388
    const-string v5, "picture-format-values"

    invoke-virtual {p0, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4389
    .local v4, str:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4390
    .local v1, formats:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4391
    .local v3, s:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->pixelFormatForCameraFormat(Ljava/lang/String;)I

    move-result v0

    .line 4392
    .local v0, f:I
    if-eqz v0, :cond_0

    .line 4393
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4395
    .end local v0           #f:I
    .end local v3           #s:Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public getSupportedPictureSizes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/seccamera/SecCamera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4347
    const-string v1, "picture-size-values"

    invoke-virtual {p0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4348
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->splitSize(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedPreviewFormats()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4303
    const-string v5, "preview-format-values"

    invoke-virtual {p0, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4304
    .local v4, str:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4305
    .local v1, formats:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4306
    .local v3, s:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->pixelFormatForCameraFormat(Ljava/lang/String;)I

    move-result v0

    .line 4307
    .local v0, f:I
    if-eqz v0, :cond_0

    .line 4308
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4310
    .end local v0           #f:I
    .end local v3           #s:Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public getSupportedPreviewFpsRange()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation

    .prologue
    .line 4221
    const-string v1, "preview-fps-range-values"

    invoke-virtual {p0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4222
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->splitRange(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedPreviewFrameRates()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4166
    const-string v1, "preview-frame-rate-values"

    invoke-virtual {p0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4167
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->splitInt(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedPreviewSizes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/seccamera/SecCamera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4010
    const-string v1, "preview-size-values"

    invoke-virtual {p0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4011
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->splitSize(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedSceneModes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4755
    const-string v1, "scene-mode-values"

    invoke-virtual {p0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4756
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedVideoSizes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/seccamera/SecCamera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4030
    const-string v1, "video-size-values"

    invoke-virtual {p0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4031
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->splitSize(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedWhiteBalance()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4623
    const-string v1, "whitebalance-values"

    invoke-virtual {p0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4624
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getVerticalViewAngle()F
    .locals 1

    .prologue
    .line 4863
    const-string v0, "vertical-view-angle"

    invoke-virtual {p0, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getVideoStabilization()Z
    .locals 2

    .prologue
    .line 5412
    const-string v1, "video-stabilization"

    invoke-virtual {p0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5413
    .local v0, str:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getWhiteBalance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4596
    const-string v0, "whitebalance"

    invoke-virtual {p0, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getZoom()I
    .locals 2

    .prologue
    .line 5074
    const-string v0, "zoom"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getZoomRatios()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5126
    const-string v0, "zoom-ratios"

    invoke-virtual {p0, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->splitInt(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public isAutoExposureLockSupported()Z
    .locals 2

    .prologue
    .line 4989
    const-string v1, "auto-exposure-lock-supported"

    invoke-virtual {p0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4990
    .local v0, str:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isAutoWhiteBalanceLockSupported()Z
    .locals 2

    .prologue
    .line 5061
    const-string v1, "auto-whitebalance-lock-supported"

    invoke-virtual {p0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5062
    .local v0, str:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isSmoothZoomSupported()Z
    .locals 2

    .prologue
    .line 5136
    const-string v1, "smooth-zoom-supported"

    invoke-virtual {p0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5137
    .local v0, str:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isVideoSnapshotSupported()Z
    .locals 2

    .prologue
    .line 5375
    const-string v1, "video-snapshot-supported"

    invoke-virtual {p0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5376
    .local v0, str:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isVideoStabilizationSupported()Z
    .locals 2

    .prologue
    .line 5425
    const-string v1, "video-stabilization-supported"

    invoke-virtual {p0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5426
    .local v0, str:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isZoomSupported()Z
    .locals 2

    .prologue
    .line 5098
    const-string v1, "zoom-supported"

    invoke-virtual {p0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5099
    .local v0, str:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 3887
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3888
    return-void
.end method

.method public removeGpsData()V
    .locals 1

    .prologue
    .line 4573
    const-string v0, "gps-latitude"

    invoke-virtual {p0, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->remove(Ljava/lang/String;)V

    .line 4574
    const-string v0, "gps-longitude"

    invoke-virtual {p0, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->remove(Ljava/lang/String;)V

    .line 4575
    const-string v0, "gps-altitude"

    invoke-virtual {p0, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->remove(Ljava/lang/String;)V

    .line 4576
    const-string v0, "gps-timestamp"

    invoke-virtual {p0, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->remove(Ljava/lang/String;)V

    .line 4577
    const-string v0, "gps-processing-method"

    invoke-virtual {p0, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->remove(Ljava/lang/String;)V

    .line 4578
    return-void
.end method

.method public set(Ljava/lang/String;I)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 3916
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3917
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "key"
    .parameter "value"

    .prologue
    const/16 v4, 0x3d

    const/16 v3, 0x3b

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 3897
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 3898
    :cond_0
    const-string v0, "SecCamera-JNI-Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" contains invalid character (= or ; or \\0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3907
    :goto_0
    return-void

    .line 3901
    :cond_1
    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 3902
    :cond_2
    const-string v0, "SecCamera-JNI-Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" contains invalid character (= or ; or \\0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3906
    :cond_3
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setAntibanding(Ljava/lang/String;)V
    .locals 1
    .parameter "antibanding"

    .prologue
    .line 4690
    const-string v0, "antibanding"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4691
    return-void
.end method

.method public setAutoExposureLock(Z)V
    .locals 2
    .parameter "toggle"

    .prologue
    .line 4960
    const-string v1, "auto-exposure-lock"

    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4961
    return-void

    .line 4960
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public setAutoWhiteBalanceLock(Z)V
    .locals 2
    .parameter "toggle"

    .prologue
    .line 5030
    const-string v1, "auto-whitebalance-lock"

    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5031
    return-void

    .line 5030
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public setCityId(J)V
    .locals 2
    .parameter "cityId"

    .prologue
    .line 4516
    const-string v0, "contextualtag-cityid"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4517
    return-void
.end method

.method public setColorEffect(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 4653
    const-string v0, "effect"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4654
    return-void
.end method

.method public setExposureCompensation(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 4889
    const-string v0, "exposure-compensation"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 4890
    return-void
.end method

.method public setFlashMode(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 4781
    const-string v0, "flash-mode"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4782
    return-void
.end method

.method public setFocusAreas(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/seccamera/SecCamera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5242
    .local p1, focusAreas:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Area;>;"
    const-string v0, "focus-areas"

    invoke-direct {p0, v0, p1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/util/List;)V

    .line 5243
    return-void
.end method

.method public setFocusMode(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 4821
    const-string v0, "focus-mode"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4822
    return-void
.end method

.method public setGpsAltitude(D)V
    .locals 2
    .parameter "altitude"

    .prologue
    .line 4545
    const-string v0, "gps-altitude"

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4546
    return-void
.end method

.method public setGpsLatitude(D)V
    .locals 2
    .parameter "latitude"

    .prologue
    .line 4526
    const-string v0, "gps-latitude"

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4527
    return-void
.end method

.method public setGpsLongitude(D)V
    .locals 2
    .parameter "longitude"

    .prologue
    .line 4536
    const-string v0, "gps-longitude"

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4537
    return-void
.end method

.method public setGpsProcessingMethod(Ljava/lang/String;)V
    .locals 1
    .parameter "processing_method"

    .prologue
    .line 4565
    const-string v0, "gps-processing-method"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4566
    return-void
.end method

.method public setGpsTimestamp(J)V
    .locals 2
    .parameter "timestamp"

    .prologue
    .line 4555
    const-string v0, "gps-timestamp"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4556
    return-void
.end method

.method public setJpegQuality(I)V
    .locals 1
    .parameter "quality"

    .prologue
    .line 4120
    const-string v0, "jpeg-quality"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 4121
    return-void
.end method

.method public setJpegThumbnailQuality(I)V
    .locals 1
    .parameter "quality"

    .prologue
    .line 4101
    const-string v0, "jpeg-thumbnail-quality"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 4102
    return-void
.end method

.method public setJpegThumbnailSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 4067
    const-string v0, "jpeg-thumbnail-width"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 4068
    const-string v0, "jpeg-thumbnail-height"

    invoke-virtual {p0, v0, p2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 4069
    return-void
.end method

.method public setMeteringAreas(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/seccamera/SecCamera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5309
    .local p1, meteringAreas:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Area;>;"
    const-string v0, "metering-areas"

    invoke-direct {p0, v0, p1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/util/List;)V

    .line 5310
    return-void
.end method

.method public setPictureFormat(I)V
    .locals 4
    .parameter "pixel_format"

    .prologue
    .line 4361
    invoke-direct {p0, p1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->cameraFormatForPixelFormat(I)Ljava/lang/String;

    move-result-object v0

    .line 4362
    .local v0, s:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 4363
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid pixel_format="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4367
    :cond_0
    const-string v1, "picture-format"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4368
    return-void
.end method

.method public setPictureSize(II)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 4325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4326
    .local v0, v:Ljava/lang/String;
    const-string v1, "picture-size"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4327
    return-void
.end method

.method public setPreviewFormat(I)V
    .locals 4
    .parameter "pixel_format"

    .prologue
    .line 4271
    invoke-direct {p0, p1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->cameraFormatForPixelFormat(I)Ljava/lang/String;

    move-result-object v0

    .line 4272
    .local v0, s:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 4273
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid pixel_format="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4277
    :cond_0
    const-string v1, "preview-format"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4278
    return-void
.end method

.method public setPreviewFpsRange(II)V
    .locals 3
    .parameter "min"
    .parameter "max"

    .prologue
    .line 4183
    const-string v0, "preview-fps-range"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4184
    return-void
.end method

.method public setPreviewFrameRate(I)V
    .locals 1
    .parameter "fps"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4141
    const-string v0, "preview-frame-rate"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 4142
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3988
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3989
    .local v0, v:Ljava/lang/String;
    const-string v1, "preview-size"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3990
    return-void
.end method

.method public setRecordingHint(Z)V
    .locals 2
    .parameter "hint"

    .prologue
    .line 5344
    const-string v1, "recording-hint"

    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5345
    return-void

    .line 5344
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public setRotation(I)V
    .locals 3
    .parameter "rotation"

    .prologue
    .line 4490
    if-eqz p1, :cond_0

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_1

    .line 4492
    :cond_0
    const-string v0, "rotation"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4497
    return-void

    .line 4494
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSceneMode(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 4744
    const-string v0, "scene-mode"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4745
    return-void
.end method

.method public setVideoStabilization(Z)V
    .locals 2
    .parameter "toggle"

    .prologue
    .line 5400
    const-string v1, "video-stabilization"

    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5401
    return-void

    .line 5400
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public setWeather(I)V
    .locals 1
    .parameter "weather"

    .prologue
    .line 4506
    const-string v0, "contextualtag-weather"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 4507
    return-void
.end method

.method public setWhiteBalance(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 4609
    const-string v1, "whitebalance"

    invoke-virtual {p0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4610
    .local v0, oldValue:Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4613
    :goto_0
    return-void

    .line 4611
    :cond_0
    const-string v1, "whitebalance"

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4612
    const-string v1, "auto-whitebalance-lock"

    const-string v2, "false"

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setZoom(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 5088
    const-string v0, "zoom"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 5089
    return-void
.end method

.method public unflatten(Ljava/lang/String;)V
    .locals 7
    .parameter "flattened"

    .prologue
    .line 3871
    iget-object v6, p0, Lcom/sec/android/seccamera/SecCamera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 3873
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v6, 0x3b

    invoke-direct {v4, v6}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 3874
    .local v4, splitter:Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v4, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 3875
    invoke-interface {v4}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3876
    .local v2, kv:Ljava/lang/String;
    const/16 v6, 0x3d

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 3877
    .local v3, pos:I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    .line 3880
    const/4 v6, 0x0

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 3881
    .local v1, k:Ljava/lang/String;
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 3882
    .local v5, v:Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/seccamera/SecCamera$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3884
    .end local v1           #k:Ljava/lang/String;
    .end local v2           #kv:Ljava/lang/String;
    .end local v3           #pos:I
    .end local v5           #v:Ljava/lang/String;
    :cond_1
    return-void
.end method
