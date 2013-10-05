.class public Lcom/android/camera/CamcorderEngine;
.super Lcom/android/camera/CameraEngine;
.source "CamcorderEngine.java"

# interfaces
.implements Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;
.implements Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CamcorderEngine$AutoFocusCallback;,
        Lcom/android/camera/CamcorderEngine$ErrorCallback;
    }
.end annotation


# static fields
.field private static final IOBUSY_UNVOTE:Ljava/lang/String; = "com.android.server.CpuGovernorService.action.IOBUSY_UNVOTE"

.field private static final IOBUSY_VOTE:Ljava/lang/String; = "com.android.server.CpuGovernorService.action.IOBUSY_VOTE"

.field private static final MAX_VIDEO_FILE_SIZE:J = 0xffffffffL

.field public static final OPEN_RETRY_NUMBER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CamcorderEngine"

.field public static isSystemSoundEffectEnabled:Z

.field private static m_bIsTouchAutoFocusing:Z

.field private static m_bIsTouchFocusPositioned:Z


# instance fields
.field private mAutoFocusCallback:Lcom/android/camera/CamcorderEngine$AutoFocusCallback;

.field private mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

.field private mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

.field private mCamcorderShootingMode:I

.field private mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mCameraVideoFilename:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentVideoFilename:Ljava/lang/String;

.field private mCurrentVideoTitle:Ljava/lang/String;

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field private mErrorCallback:Lcom/android/camera/CamcorderEngine$ErrorCallback;

.field private mHideFocusRectHandler:Landroid/os/Handler;

.field private mInnerProfile:Lcom/android/camera/MediaRecorderProfile;

.field private mIsVideoCaptureIntent:Z

.field private mMaxVideoDurationInMs:I

.field private mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

.field private mMediaRecorderRecording:Z

.field mPausing:Z

.field private mPrepareRecordingThread:Ljava/lang/Thread;

.field mPreviewing:Z

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mRecordingInitiated:Z

.field protected mRetry:I

.field private mStartRecordingThread:Ljava/lang/Thread;

.field private mTapArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/seccamera/SecCamera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoFileLengthInByte:J

.field private mVideoRecordingTimeInMiliSecond:J

.field public maxFileSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 107
    sput-boolean v0, Lcom/android/camera/CamcorderEngine;->m_bIsTouchAutoFocusing:Z

    .line 108
    sput-boolean v0, Lcom/android/camera/CamcorderEngine;->m_bIsTouchFocusPositioned:Z

    .line 148
    sput-boolean v0, Lcom/android/camera/CamcorderEngine;->isSystemSoundEffectEnabled:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/AbstractCameraActivity;)V
    .locals 7
    .parameter "activityContext"

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 173
    invoke-direct {p0, p1}, Lcom/android/camera/CameraEngine;-><init>(Lcom/android/camera/AbstractCameraActivity;)V

    .line 100
    new-instance v0, Lcom/android/camera/CamcorderEngine$ErrorCallback;

    invoke-direct {v0, p0}, Lcom/android/camera/CamcorderEngine$ErrorCallback;-><init>(Lcom/android/camera/CamcorderEngine;)V

    iput-object v0, p0, Lcom/android/camera/CamcorderEngine;->mErrorCallback:Lcom/android/camera/CamcorderEngine$ErrorCallback;

    .line 105
    iput-boolean v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    .line 117
    iput-object v2, p0, Lcom/android/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    .line 122
    iput-boolean v1, p0, Lcom/android/camera/CamcorderEngine;->mPausing:Z

    .line 123
    iput-boolean v1, p0, Lcom/android/camera/CamcorderEngine;->mPreviewing:Z

    .line 126
    iput-boolean v1, p0, Lcom/android/camera/CamcorderEngine;->mRecordingInitiated:Z

    .line 134
    iput-wide v3, p0, Lcom/android/camera/CamcorderEngine;->mVideoFileLengthInByte:J

    .line 135
    iput-wide v3, p0, Lcom/android/camera/CamcorderEngine;->mVideoRecordingTimeInMiliSecond:J

    .line 137
    iput-wide v3, p0, Lcom/android/camera/CamcorderEngine;->maxFileSize:J

    .line 139
    iput-object v2, p0, Lcom/android/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    .line 140
    iput-object v2, p0, Lcom/android/camera/CamcorderEngine;->mStartRecordingThread:Ljava/lang/Thread;

    .line 142
    new-instance v0, Lcom/android/camera/CamcorderEngine$AutoFocusCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/CamcorderEngine$AutoFocusCallback;-><init>(Lcom/android/camera/CamcorderEngine;Lcom/android/camera/CamcorderEngine$1;)V

    iput-object v0, p0, Lcom/android/camera/CamcorderEngine;->mAutoFocusCallback:Lcom/android/camera/CamcorderEngine$AutoFocusCallback;

    .line 150
    iput v1, p0, Lcom/android/camera/CamcorderEngine;->mRetry:I

    .line 152
    iput v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderShootingMode:I

    .line 159
    new-instance v0, Lcom/android/camera/CamcorderEngine$1;

    invoke-direct {v0, p0}, Lcom/android/camera/CamcorderEngine$1;-><init>(Lcom/android/camera/CamcorderEngine;)V

    iput-object v0, p0, Lcom/android/camera/CamcorderEngine;->mHideFocusRectHandler:Landroid/os/Handler;

    .line 175
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mStateDepot:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/camera/CeStateRecording;

    iget-object v3, p0, Lcom/android/camera/CamcorderEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    invoke-direct {v2, p0, v3, v5}, Lcom/android/camera/CeStateRecording;-><init>(Lcom/android/camera/CameraEngine;Lcom/android/camera/CeRequestQueue;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mStateDepot:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/camera/CeStateWaitForSurface;

    iget-object v3, p0, Lcom/android/camera/CamcorderEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    invoke-direct {v2, p0, v3, v6}, Lcom/android/camera/CeStateWaitForSurface;-><init>(Lcom/android/camera/CameraEngine;Lcom/android/camera/CeRequestQueue;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CamcorderEngine;->mContentResolver:Landroid/content/ContentResolver;

    .line 178
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/CamcorderEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/camera/CamcorderEngine;->openCameraDevice()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/CamcorderEngine;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/CamcorderEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/camera/CamcorderEngine;->initializeRecorder()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/CamcorderEngine;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/camera/CamcorderEngine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/CamcorderEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/camera/CamcorderEngine;->disableAlertSound()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/CamcorderEngine;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mHideFocusRectHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/CamcorderEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/camera/CamcorderEngine;->setSystemSoundEffect()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/CamcorderEngine;)Lcom/sec/android/seccamera/SecCamera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/CamcorderEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/camera/CamcorderEngine;->updateOutdoorVisibility()V

    return-void
.end method

.method private cleanupEmptyFile()V
    .locals 5

    .prologue
    .line 2147
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2148
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2149
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2150
    const-string v1, "CamcorderEngine"

    const-string v2, "Empty video file deleted"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    .line 2154
    .end local v0           #f:Ljava/io/File;
    :cond_0
    return-void
.end method

.method private cleanupTempFile()V
    .locals 3

    .prologue
    .line 2157
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/android/camera/CamcorderEngine;->getTempFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2158
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2159
    const-string v1, "CamcorderEngine"

    const-string v2, "temp video file deleted"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    :cond_0
    return-void
.end method

.method private createVideoPath()V
    .locals 28

    .prologue
    .line 2044
    new-instance v5, Ljava/util/GregorianCalendar;

    invoke-direct {v5}, Ljava/util/GregorianCalendar;-><init>()V

    .line 2045
    .local v5, calendar:Ljava/util/GregorianCalendar;
    new-instance v21, Landroid/text/format/Time;

    invoke-direct/range {v21 .. v21}, Landroid/text/format/Time;-><init>()V

    .line 2046
    .local v21, time:Landroid/text/format/Time;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v22

    .line 2047
    .local v22, timezone:Ljava/util/TimeZone;
    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2048
    invoke-virtual {v5}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v10

    .line 2050
    .local v10, dateTaken:J
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CamcorderEngine;->cleanupTempFile()V

    .line 2053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/CameraSettings;->getStorage()I

    move-result v25

    if-nez v25, :cond_1

    .line 2054
    sget-object v7, Lcom/android/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    .line 2061
    .local v7, cameraDirPath:Ljava/lang/String;
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CamcorderEngine;->getFileFormatFromProfile()I

    move-result v25

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_2

    .line 2062
    const-string v13, ".mp4"

    .line 2063
    .local v13, extension:Ljava/lang/String;
    const-string v19, "video/mp4"

    .line 2069
    .local v19, mimeType:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v25

    if-eqz v25, :cond_0

    .line 2070
    const-string v13, ".3gp"

    .line 2071
    const-string v19, "video/3gpp"

    .line 2074
    :cond_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2075
    .local v6, cameraDir:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v25

    if-nez v25, :cond_3

    .line 2076
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v25

    if-nez v25, :cond_3

    .line 2077
    const-string v25, "CamcorderEngine"

    const-string v26, "directory is not made"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    :goto_2
    return-void

    .line 2056
    .end local v6           #cameraDir:Ljava/io/File;
    .end local v7           #cameraDirPath:Ljava/lang/String;
    .end local v13           #extension:Ljava/lang/String;
    .end local v19           #mimeType:Ljava/lang/String;
    :cond_1
    sget-object v7, Lcom/android/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    .restart local v7       #cameraDirPath:Ljava/lang/String;
    goto :goto_0

    .line 2065
    :cond_2
    const-string v13, ".3gp"

    .line 2066
    .restart local v13       #extension:Ljava/lang/String;
    const-string v19, "video/3gpp"

    .restart local v19       #mimeType:Ljava/lang/String;
    goto :goto_1

    .line 2083
    .restart local v6       #cameraDir:Ljava/io/File;
    :cond_3
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 2084
    .local v9, date:Ljava/util/Date;
    const-string v25, "yyyyMMdd_kkmmss"

    move-object/from16 v0, v25

    invoke-static {v0, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 2087
    .local v18, filepart:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CamcorderEngine;->getAddress()Ljava/lang/String;

    move-result-object v8

    .line 2089
    .local v8, currentAddress:Ljava/lang/String;
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v25

    if-eqz v25, :cond_4

    .line 2090
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "_"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 2094
    .local v20, name:Ljava/lang/String;
    :goto_3
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2095
    .local v15, filename:Ljava/lang/String;
    move-object/from16 v23, v20

    .line 2096
    .local v23, title:Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2099
    .local v12, displayName:Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2100
    .local v14, f:Ljava/io/File;
    const/16 v16, 0x0

    .line 2101
    .local v16, filenumber:I
    :goto_4
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_6

    .line 2102
    const-string v25, "CamcorderEngine"

    const-string v26, "Duplicated file name found"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    invoke-virtual {v9, v10, v11}, Ljava/util/Date;->setTime(J)V

    .line 2104
    const-string v25, "yyyyMMdd_kkmmss"

    move-object/from16 v0, v25

    invoke-static {v0, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 2105
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v25

    if-eqz v25, :cond_5

    .line 2106
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "_"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 2109
    :goto_5
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    add-int/lit8 v17, v16, 0x1

    .end local v16           #filenumber:I
    .local v17, filenumber:I
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ")"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2110
    move-object/from16 v23, v20

    .line 2111
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2112
    const-string v25, "CamcorderEngine"

    const-string v26, "New file name created"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    new-instance v14, Ljava/io/File;

    .end local v14           #f:Ljava/io/File;
    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v14       #f:Ljava/io/File;
    move/from16 v16, v17

    .end local v17           #filenumber:I
    .restart local v16       #filenumber:I
    goto/16 :goto_4

    .line 2092
    .end local v12           #displayName:Ljava/lang/String;
    .end local v14           #f:Ljava/io/File;
    .end local v15           #filename:Ljava/lang/String;
    .end local v16           #filenumber:I
    .end local v20           #name:Ljava/lang/String;
    .end local v23           #title:Ljava/lang/String;
    :cond_4
    move-object/from16 v20, v18

    .restart local v20       #name:Ljava/lang/String;
    goto/16 :goto_3

    .line 2108
    .restart local v12       #displayName:Ljava/lang/String;
    .restart local v14       #f:Ljava/io/File;
    .restart local v15       #filename:Ljava/lang/String;
    .restart local v16       #filenumber:I
    .restart local v23       #title:Ljava/lang/String;
    :cond_5
    move-object/from16 v20, v18

    goto :goto_5

    .line 2116
    :cond_6
    new-instance v24, Landroid/content/ContentValues;

    const/16 v25, 0xa

    invoke-direct/range {v24 .. v25}, Landroid/content/ContentValues;-><init>(I)V

    .line 2118
    .local v24, values:Landroid/content/ContentValues;
    const-string v25, "title"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2119
    const-string v25, "_display_name"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2120
    const-string v25, "datetaken"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2121
    const-string v25, "mime_type"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2122
    const-string v25, "_data"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2125
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CamcorderEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v25

    if-eqz v25, :cond_7

    .line 2127
    const-string v25, "CamcorderEngine"

    const-string v26, "Insert contextual tag"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    const-string v4, "weather_ID"

    .line 2130
    .local v4, WEATHER_ID:Ljava/lang/String;
    const-string v3, "city_ID"

    .line 2132
    .local v3, CITY_ID:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/AbstractCameraActivity;->getWeather()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/AbstractCameraActivity;->getCityId()J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2135
    const-string v25, "latitude"

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CamcorderEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/location/Location;->getLatitude()D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 2136
    const-string v25, "longitude"

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CamcorderEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/location/Location;->getLongitude()D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 2140
    .end local v3           #CITY_ID:Ljava/lang/String;
    .end local v4           #WEATHER_ID:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    .line 2141
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/CamcorderEngine;->mCurrentVideoTitle:Ljava/lang/String;

    .line 2143
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/CamcorderEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    goto/16 :goto_2
.end method

.method private disableAlertSound()V
    .locals 3

    .prologue
    .line 1134
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Lcom/android/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 1135
    .local v0, statusBar:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_0

    .line 1136
    const/high16 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1138
    :cond_0
    return-void
.end method

.method private dumpCamcorderInnerProfile()V
    .locals 3

    .prologue
    .line 893
    const-string v0, "CamcorderEngine"

    const-string v1, "[Dump] camcorder inner profile"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileFormat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mInnerProfile:Lcom/android/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/android/camera/MediaRecorderProfile;->mOutputFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoCodec = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mInnerProfile:Lcom/android/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/android/camera/MediaRecorderProfile;->mVideoEncoder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoBitRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mInnerProfile:Lcom/android/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/android/camera/MediaRecorderProfile;->mVideoBitrate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoFrameWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mInnerProfile:Lcom/android/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/android/camera/MediaRecorderProfile;->mVideoWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoFrameHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mInnerProfile:Lcom/android/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/android/camera/MediaRecorderProfile;->mVideoHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoFrameRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mInnerProfile:Lcom/android/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/android/camera/MediaRecorderProfile;->mVideoFps:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioCodec = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mInnerProfile:Lcom/android/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/android/camera/MediaRecorderProfile;->mAudioEncoder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioBitRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mInnerProfile:Lcom/android/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/android/camera/MediaRecorderProfile;->mAudioBitrate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioSampleRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mInnerProfile:Lcom/android/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/android/camera/MediaRecorderProfile;->mAudioSamplingRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioChannels = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mInnerProfile:Lcom/android/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/android/camera/MediaRecorderProfile;->mAudioChannels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    return-void
.end method

.method private enableAlertSound()V
    .locals 3

    .prologue
    .line 1142
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Lcom/android/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 1143
    .local v0, statusBar:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_0

    .line 1144
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1146
    :cond_0
    return-void
.end method

.method private getAudioBitRateFromProfile()I
    .locals 1

    .prologue
    .line 2040
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mInnerProfile:Lcom/android/camera/MediaRecorderProfile;

    iget v0, v0, Lcom/android/camera/MediaRecorderProfile;->mAudioBitrate:I

    return v0
.end method

.method private getFileFormatFromProfile()I
    .locals 1

    .prologue
    .line 2032
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mInnerProfile:Lcom/android/camera/MediaRecorderProfile;

    iget v0, v0, Lcom/android/camera/MediaRecorderProfile;->mOutputFormat:I

    return v0
.end method

.method private getTempFileName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2188
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getStorage()I

    move-result v1

    if-nez v1, :cond_0

    .line 2189
    sget-object v0, Lcom/android/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    .line 2193
    .local v0, cameraDirPath:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "temp_video"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2191
    .end local v0           #cameraDirPath:Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/android/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    .restart local v0       #cameraDirPath:Ljava/lang/String;
    goto :goto_0
.end method

.method private getVideoBitRateFromProfile()I
    .locals 1

    .prologue
    .line 2036
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mInnerProfile:Lcom/android/camera/MediaRecorderProfile;

    iget v0, v0, Lcom/android/camera/MediaRecorderProfile;->mVideoBitrate:I

    return v0
.end method

.method private initializeRecorder()V
    .locals 12

    .prologue
    .line 626
    const-string v8, "CamcorderEngine"

    const-string v9, "initializeRecorder"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v8, :cond_0

    .line 729
    :goto_0
    return-void

    .line 631
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/CamcorderEngine;->readVideoPreferences()V

    .line 633
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v8}, Lcom/android/camera/AbstractCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 634
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 636
    .local v3, myExtras:Landroid/os/Bundle;
    const-wide/16 v4, 0x0

    .line 638
    .local v4, requestedSizeLimit:J
    iget-boolean v8, p0, Lcom/android/camera/CamcorderEngine;->mIsVideoCaptureIntent:Z

    if-eqz v8, :cond_2

    if-eqz v3, :cond_2

    .line 639
    const-string v8, "output"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 640
    .local v7, saveUri:Landroid/net/Uri;
    if-eqz v7, :cond_1

    .line 641
    invoke-virtual {p0}, Lcom/android/camera/CamcorderEngine;->closeVideoFileDescriptor()V

    .line 643
    :try_start_0
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "rw"

    invoke-virtual {v8, v7, v9}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 645
    iput-object v7, p0, Lcom/android/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    .line 646
    const-string v8, "CamcorderEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCameraVideoFileDescriptor: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    :cond_1
    :goto_1
    const-string v8, "android.intent.extra.sizeLimit"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 653
    const-string v8, "CamcorderEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestedSizeLimit: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    .end local v7           #saveUri:Landroid/net/Uri;
    :cond_2
    new-instance v8, Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-direct {v8}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;-><init>()V

    iput-object v8, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    .line 657
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v8}, Lcom/sec/android/seccamera/SecCamera;->unlock()V

    .line 658
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v9, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v8, v9}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setCamera(Lcom/sec/android/seccamera/SecCamera;)V

    .line 660
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v8, p0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnErrorListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;)V

    .line 661
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v8, p0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnInfoListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;)V

    .line 663
    invoke-direct {p0}, Lcom/android/camera/CamcorderEngine;->setRecorderUsingInnerProfile()V

    .line 666
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v9, p0, Lcom/android/camera/CamcorderEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v9}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 668
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/android/camera/CameraSettings;->getStorage()I

    move-result v8

    invoke-static {v8}, Lcom/android/camera/CheckMemory;->getAvailableStorage(I)J

    move-result-wide v8

    const-wide/32 v10, 0x500000

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/camera/CamcorderEngine;->maxFileSize:J

    .line 669
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_3

    iget-wide v8, p0, Lcom/android/camera/CamcorderEngine;->maxFileSize:J

    cmp-long v8, v4, v8

    if-gez v8, :cond_3

    .line 670
    iput-wide v4, p0, Lcom/android/camera/CamcorderEngine;->maxFileSize:J

    .line 673
    :cond_3
    iget-wide v8, p0, Lcom/android/camera/CamcorderEngine;->maxFileSize:J

    const-wide v10, 0xffffffffL

    cmp-long v8, v8, v10

    if-lez v8, :cond_4

    .line 674
    const-wide v8, 0xffffffffL

    iput-wide v8, p0, Lcom/android/camera/CamcorderEngine;->maxFileSize:J

    .line 677
    :cond_4
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/android/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 678
    iget-boolean v8, p0, Lcom/android/camera/CamcorderEngine;->mIsVideoCaptureIntent:Z

    if-eqz v8, :cond_a

    if-eqz v3, :cond_a

    .line 679
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/android/camera/CameraSettings;->getRequestedRecordingSize()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/camera/CamcorderEngine;->maxFileSize:J

    .line 686
    :cond_5
    :goto_2
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/android/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_7

    .line 687
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-eqz v8, :cond_6

    const-wide/32 v8, 0x3200000

    cmp-long v8, v4, v8

    if-lez v8, :cond_7

    .line 688
    :cond_6
    const-wide/32 v8, 0x3200000

    iput-wide v8, p0, Lcom/android/camera/CamcorderEngine;->maxFileSize:J

    .line 692
    :cond_7
    const-string v8, "CamcorderEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "maxFileSize = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/camera/CamcorderEngine;->maxFileSize:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :try_start_1
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-wide v9, p0, Lcom/android/camera/CamcorderEngine;->maxFileSize:J

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setMaxFileSize(J)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 702
    :goto_3
    invoke-virtual {p0}, Lcom/android/camera/CamcorderEngine;->getLastOrientation()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/camera/CamcorderEngine;->setOrientationOnTake(I)V

    .line 703
    invoke-virtual {p0}, Lcom/android/camera/CamcorderEngine;->getOrientationOnTake()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/camera/CamcorderEngine;->calculateOrientationForPicture(I)I

    move-result v6

    .line 705
    .local v6, rotation:I
    const-string v8, "CamcorderEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mMediaRecorder.setOrientationHint("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v8, :cond_8

    .line 707
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v8, v6}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOrientationHint(I)V

    .line 713
    :cond_8
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v8, :cond_9

    .line 715
    :try_start_2
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v8}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->prepare()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 728
    :cond_9
    :goto_4
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    goto/16 :goto_0

    .line 647
    .end local v6           #rotation:I
    .restart local v7       #saveUri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 649
    .local v1, ex:Ljava/io/FileNotFoundException;
    const-string v8, "CamcorderEngine"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 681
    .end local v1           #ex:Ljava/io/FileNotFoundException;
    .end local v7           #saveUri:Landroid/net/Uri;
    :cond_a
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/android/camera/CameraSettings;->getMaxRecordingSize()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/camera/CamcorderEngine;->maxFileSize:J

    .line 682
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    iget-wide v9, p0, Lcom/android/camera/CamcorderEngine;->maxFileSize:J

    invoke-virtual {v8, v9, v10}, Lcom/android/camera/CameraSettings;->setRequestedRecordingSize(J)V

    goto/16 :goto_2

    .line 696
    :catch_1
    move-exception v0

    .line 697
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v8, "CamcorderEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setMaxFileSize failed (maxFileSize: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/camera/CamcorderEngine;->maxFileSize:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const-string v8, "CamcorderEngine"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    invoke-virtual {p0}, Lcom/android/camera/CamcorderEngine;->releaseMediaRecorder()V

    goto/16 :goto_3

    .line 716
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v6       #rotation:I
    :catch_2
    move-exception v0

    .line 718
    .local v0, e:Ljava/io/IOException;
    const-string v8, "CamcorderEngine"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-virtual {p0}, Lcom/android/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 721
    invoke-virtual {p0}, Lcom/android/camera/CamcorderEngine;->scheduleStopVideoRecording()V

    .line 722
    invoke-virtual {p0}, Lcom/android/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 725
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mErrorMessageHandler:Lcom/android/camera/CameraEngine$ErrorMessageHandler;

    const/4 v9, -0x4

    invoke-virtual {v8, v9}, Lcom/android/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_4
.end method

.method private makeVideoFileSlow()V
    .locals 0

    .prologue
    .line 2184
    return-void
.end method

.method private openCameraDevice()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 373
    const-string v1, "CamcorderEngine"

    const-string v2, "opening camera device..."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/Util;->openCamera(Landroid/app/Activity;I)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    .line 377
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 378
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.ACTION_START_BACK_CAMERA"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :cond_0
    :goto_0
    iput v5, p0, Lcom/android/camera/CamcorderEngine;->mRetry:I

    .line 401
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v1, :cond_1

    .line 402
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mErrorCallback:Lcom/android/camera/CamcorderEngine$ErrorCallback;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setErrorCallback(Lcom/sec/android/seccamera/SecCamera$ErrorCallback;)V

    .line 403
    const-string v1, "CamcorderEngine"

    const-string v2, "camera device is opened."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v1}, Lcom/sec/android/seccamera/SecCamera;->getParameters()Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    .line 407
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v1, :cond_1

    .line 408
    const-string v1, "CamcorderEngine"

    const-string v2, "CamcorderParameters is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mErrorMessageHandler:Lcom/android/camera/CameraEngine$ErrorMessageHandler;

    invoke-virtual {v1, v4}, Lcom/android/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    .line 417
    :cond_1
    :goto_1
    return-void

    .line 380
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.ACTION_START_FRONT_CAMERA"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    .line 384
    .local v0, e:Ljava/lang/Exception;
    iget v1, p0, Lcom/android/camera/CamcorderEngine;->mRetry:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/camera/CamcorderEngine;->mRetry:I

    .line 385
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/camera/CamcorderEngine;->mRetry:I

    if-gez v1, :cond_3

    .line 386
    const-string v1, "CamcorderEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "service cannot connect. retry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/CamcorderEngine;->mRetry:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-direct {p0}, Lcom/android/camera/CamcorderEngine;->openCameraDevice()V

    .line 389
    :cond_3
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v1, :cond_1

    .line 391
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v1, :cond_4

    iget v1, p0, Lcom/android/camera/CamcorderEngine;->mRetry:I

    if-ltz v1, :cond_4

    .line 392
    const-string v1, "CamcorderEngine"

    const-string v2, "service cannot connect. critical exception occured."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iput v5, p0, Lcom/android/camera/CamcorderEngine;->mRetry:I

    .line 394
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mErrorMessageHandler:Lcom/android/camera/CameraEngine$ErrorMessageHandler;

    invoke-virtual {v1, v4}, Lcom/android/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 396
    :cond_4
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/camera/CamcorderEngine;->mRetry:I

    if-gez v1, :cond_0

    goto :goto_1
.end method

.method private readVideoPreferences()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 2302
    iget-object v6, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v6}, Lcom/android/camera/CameraSettings;->getCamcorderQuality()I

    move-result v4

    .line 2305
    .local v4, videoQuality:I
    iget-object v6, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/android/camera/AbstractCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2306
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "android.intent.extra.videoQuality"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2307
    const-string v6, "android.intent.extra.videoQuality"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2308
    .local v0, extraVideoQuality:I
    if-nez v0, :cond_2

    move v4, v5

    .line 2313
    .end local v0           #extraVideoQuality:I
    :cond_0
    :goto_0
    iput v5, p0, Lcom/android/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    .line 2314
    const-string v6, "android.intent.extra.durationLimit"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2315
    const-string v6, "android.intent.extra.durationLimit"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 2316
    .local v3, seconds:I
    mul-int/lit16 v5, v3, 0x3e8

    iput v5, p0, Lcom/android/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    .line 2346
    .end local v3           #seconds:I
    :cond_1
    :goto_1
    new-instance v5, Lcom/android/camera/MediaRecorderProfile;

    iget-object v6, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-direct {v5, v6, v4}, Lcom/android/camera/MediaRecorderProfile;-><init>(Lcom/android/camera/AbstractCameraActivity;I)V

    iput-object v5, p0, Lcom/android/camera/CamcorderEngine;->mInnerProfile:Lcom/android/camera/MediaRecorderProfile;

    .line 2347
    return-void

    .line 2308
    .restart local v0       #extraVideoQuality:I
    :cond_2
    const/4 v4, 0x2

    goto :goto_0

    .line 2318
    .end local v0           #extraVideoQuality:I
    :cond_3
    iget-object v5, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v5, Lcom/android/camera/Camcorder;

    invoke-virtual {v5}, Lcom/android/camera/Camcorder;->getRemainTime()I

    move-result v5

    mul-int/lit16 v2, v5, 0x3e8

    .line 2319
    .local v2, nRemainTime:I
    iget-object v5, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v5}, Lcom/android/camera/CameraSettings;->getCamcorderVideoDurationInMS()I

    move-result v5

    iput v5, p0, Lcom/android/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    .line 2320
    iget v5, p0, Lcom/android/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    if-le v5, v2, :cond_1

    .line 2321
    const-string v5, "CamcorderEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMaxVideoDurationInMs("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") > nRemainTime("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    iput v2, p0, Lcom/android/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    goto :goto_1
.end method

.method private registerVideo()V
    .locals 11

    .prologue
    const v10, 0x7f0900f3

    const/4 v9, 0x0

    .line 2203
    const-string v5, "CamcorderEngine"

    const-string v6, "registerVideo"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    iget-object v5, p0, Lcom/android/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v5, :cond_0

    .line 2206
    const-string v5, "content://media/external/video/media"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2207
    .local v4, videoTable:Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/camera/CamcorderEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v6, "_size"

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2208
    iget-object v5, p0, Lcom/android/camera/CamcorderEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v6, "resolution"

    iget-object v7, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/android/camera/CameraSettings;->getCamcorderResolution()I

    move-result v7

    invoke-static {v7}, Lcom/android/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2212
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 2214
    .local v2, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    iget-object v5, p0, Lcom/android/camera/CamcorderEngine;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 2215
    iget-object v5, p0, Lcom/android/camera/CamcorderEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v6, "duration"

    const/16 v7, 0x9

    invoke-virtual {v2, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    .line 2223
    :try_start_1
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2231
    :goto_0
    :try_start_2
    iget-object v5, p0, Lcom/android/camera/CamcorderEngine;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/android/camera/CamcorderEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    .line 2233
    iget-object v5, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v5, Lcom/android/camera/Camcorder;

    iget-object v6, p0, Lcom/android/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/android/camera/Camcorder;->onVideoStoringCompleted(Landroid/net/Uri;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_8

    .line 2260
    .end local v2           #retriever:Landroid/media/MediaMetadataRetriever;
    .end local v4           #videoTable:Landroid/net/Uri;
    :goto_1
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/camera/CamcorderEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 2261
    return-void

    .line 2224
    .restart local v2       #retriever:Landroid/media/MediaMetadataRetriever;
    .restart local v4       #videoTable:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 2225
    .local v1, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 2216
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 2217
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string v5, "CamcorderEngine"

    const-string v6, "setDataSource failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    iget-object v5, p0, Lcom/android/camera/CamcorderEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v6, "duration"

    iget-wide v7, p0, Lcom/android/camera/CamcorderEngine;->mVideoRecordingTimeInMiliSecond:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2223
    :try_start_4
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 2224
    :catch_2
    move-exception v1

    .line 2225
    .restart local v1       #ex:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 2219
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catch_3
    move-exception v1

    .line 2220
    .restart local v1       #ex:Ljava/lang/RuntimeException;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2223
    :try_start_6
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 2224
    :catch_4
    move-exception v1

    .line 2225
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 2222
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v5

    .line 2223
    :try_start_7
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_5

    .line 2226
    :goto_2
    throw v5

    .line 2224
    :catch_5
    move-exception v1

    .line 2225
    .restart local v1       #ex:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_2

    .line 2234
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catch_6
    move-exception v3

    .line 2235
    .local v3, sfe:Landroid/database/sqlite/SQLiteFullException;
    const-string v5, "CamcorderEngine"

    const-string v6, "Not enough space in database"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    iget-object v5, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-static {v5, v10, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 2237
    .end local v3           #sfe:Landroid/database/sqlite/SQLiteFullException;
    :catch_7
    move-exception v0

    .line 2238
    .local v0, e:Ljava/lang/UnsupportedOperationException;
    const-string v5, "CamcorderEngine"

    const-string v6, "insert failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    iget-object v5, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2240
    iget-object v5, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v5, Lcom/android/camera/Camcorder;

    invoke-virtual {v5}, Lcom/android/camera/Camcorder;->onVideoStoringFailed()V

    goto :goto_1

    .line 2241
    .end local v0           #e:Ljava/lang/UnsupportedOperationException;
    :catch_8
    move-exception v0

    .line 2242
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v5, "CamcorderEngine"

    const-string v6, "insert failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    iget-object v5, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2244
    iget-object v5, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v5, Lcom/android/camera/Camcorder;

    invoke-virtual {v5}, Lcom/android/camera/Camcorder;->onVideoStoringFailed()V

    goto/16 :goto_1

    .line 2249
    .end local v0           #e:Ljava/lang/IllegalStateException;
    .end local v2           #retriever:Landroid/media/MediaMetadataRetriever;
    .end local v4           #videoTable:Landroid/net/Uri;
    :cond_0
    :try_start_8
    iget-object v5, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v5, Lcom/android/camera/Camcorder;

    iget-object v6, p0, Lcom/android/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/android/camera/Camcorder;->onVideoStoringCompleted(Landroid/net/Uri;)V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_8 .. :try_end_8} :catch_a

    goto/16 :goto_1

    .line 2250
    :catch_9
    move-exception v3

    .line 2251
    .restart local v3       #sfe:Landroid/database/sqlite/SQLiteFullException;
    const-string v5, "CamcorderEngine"

    const-string v6, "Not enough space in database"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2252
    iget-object v5, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-static {v5, v10, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 2253
    .end local v3           #sfe:Landroid/database/sqlite/SQLiteFullException;
    :catch_a
    move-exception v0

    .line 2254
    .local v0, e:Ljava/lang/UnsupportedOperationException;
    const-string v5, "CamcorderEngine"

    const-string v6, "insert failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    iget-object v5, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2256
    iget-object v5, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v5, Lcom/android/camera/Camcorder;

    invoke-virtual {v5}, Lcom/android/camera/Camcorder;->onVideoStoringFailed()V

    goto/16 :goto_1
.end method

.method private renameTempFile()V
    .locals 3

    .prologue
    .line 2197
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/android/camera/CamcorderEngine;->getTempFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2198
    .local v1, src:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2199
    .local v0, dest:Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2200
    return-void
.end method

.method private setRecorderUsingInnerProfile()V
    .locals 8

    .prologue
    const/16 v7, 0x2d0

    const/16 v6, 0x1e0

    const/4 v5, 0x1

    .line 736
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getCamcorderAudioRecording()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 737
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioSource(I)V

    .line 740
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CamcorderEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v0

    .line 741
    .local v0, loc:Landroid/location/Location;
    if-eqz v0, :cond_1

    .line 742
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setLocation(FF)V

    .line 743
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getWeather()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setWeather(I)V

    .line 744
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->isAccuWeatherEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 745
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getCityId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setCityId(J)V

    .line 750
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v1, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoSource(I)V

    .line 751
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 752
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v1, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFormat(I)V

    .line 756
    :goto_0
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget v2, p0, Lcom/android/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setMaxDuration(I)V

    .line 764
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setDurationInterval(I)V

    .line 765
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mInnerProfile:Lcom/android/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/android/camera/MediaRecorderProfile;->mVideoWidth:I

    const/16 v2, 0x780

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mInnerProfile:Lcom/android/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/android/camera/MediaRecorderProfile;->mVideoHeight:I

    const/16 v2, 0x438

    if-ne v1, v2, :cond_5

    .line 766
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v2, 0xaf000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_b

    .line 790
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 800
    :goto_2
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mInnerProfile:Lcom/android/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/android/camera/MediaRecorderProfile;->mVideoFps:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoFrameRate(I)V

    .line 801
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mInnerProfile:Lcom/android/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/android/camera/MediaRecorderProfile;->mVideoWidth:I

    iget-object v3, p0, Lcom/android/camera/CamcorderEngine;->mInnerProfile:Lcom/android/camera/MediaRecorderProfile;

    iget v3, v3, Lcom/android/camera/MediaRecorderProfile;->mVideoHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoSize(II)V

    .line 803
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mInnerProfile:Lcom/android/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/android/camera/MediaRecorderProfile;->mVideoBitrate:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoEncodingBitRate(I)V

    .line 804
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mInnerProfile:Lcom/android/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/android/camera/MediaRecorderProfile;->mAudioBitrate:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioEncodingBitRate(I)V

    .line 805
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mInnerProfile:Lcom/android/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/android/camera/MediaRecorderProfile;->mAudioChannels:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioChannels(I)V

    .line 806
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mInnerProfile:Lcom/android/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/android/camera/MediaRecorderProfile;->mAudioSamplingRate:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioSamplingRate(I)V

    .line 807
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mInnerProfile:Lcom/android/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/android/camera/MediaRecorderProfile;->mVideoEncoder:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoEncoder(I)V

    .line 809
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getCamcorderAudioRecording()I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 810
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mInnerProfile:Lcom/android/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/android/camera/MediaRecorderProfile;->mAudioEncoder:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioEncoder(I)V

    .line 811
    :cond_3
    return-void

    .line 754
    :cond_4
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mInnerProfile:Lcom/android/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/android/camera/MediaRecorderProfile;->mOutputFormat:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFormat(I)V

    goto/16 :goto_0

    .line 767
    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mInnerProfile:Lcom/android/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/android/camera/MediaRecorderProfile;->mVideoWidth:I

    const/16 v2, 0x500

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mInnerProfile:Lcom/android/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/android/camera/MediaRecorderProfile;->mVideoHeight:I

    if-ne v1, v7, :cond_6

    .line 768
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v2, 0x7d000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_1

    .line 782
    :catch_0
    move-exception v1

    goto/16 :goto_1

    .line 769
    :cond_6
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mInnerProfile:Lcom/android/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/android/camera/MediaRecorderProfile;->mVideoWidth:I

    if-ne v1, v7, :cond_7

    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mInnerProfile:Lcom/android/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/android/camera/MediaRecorderProfile;->mVideoHeight:I

    if-ne v1, v6, :cond_7

    .line 770
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v2, 0x1e000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_1

    .line 771
    :cond_7
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mInnerProfile:Lcom/android/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/android/camera/MediaRecorderProfile;->mVideoWidth:I

    const/16 v2, 0x280

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mInnerProfile:Lcom/android/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/android/camera/MediaRecorderProfile;->mVideoHeight:I

    if-ne v1, v6, :cond_8

    .line 772
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v2, 0x19000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_1

    .line 773
    :cond_8
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mInnerProfile:Lcom/android/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/android/camera/MediaRecorderProfile;->mVideoWidth:I

    const/16 v2, 0x140

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mInnerProfile:Lcom/android/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/android/camera/MediaRecorderProfile;->mVideoHeight:I

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_9

    .line 774
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/16 v2, 0x7800

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_1

    .line 775
    :cond_9
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mInnerProfile:Lcom/android/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/android/camera/MediaRecorderProfile;->mVideoWidth:I

    const/16 v2, 0xb0

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mInnerProfile:Lcom/android/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/android/camera/MediaRecorderProfile;->mVideoHeight:I

    const/16 v2, 0x90

    if-ne v1, v2, :cond_2

    .line 776
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v1

    if-ne v1, v5, :cond_a

    .line 777
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/16 v2, 0x1800

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_1

    .line 779
    :cond_a
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/16 v2, 0x3000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 792
    :cond_b
    invoke-direct {p0}, Lcom/android/camera/CamcorderEngine;->createVideoPath()V

    .line 793
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-direct {p0}, Lcom/android/camera/CamcorderEngine;->getTempFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private setRecorderUsingProfile()V
    .locals 8

    .prologue
    const/16 v7, 0x2d0

    const/16 v6, 0x1e0

    const/4 v5, 0x1

    .line 814
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getCamcorderAudioRecording()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 815
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioSource(I)V

    .line 818
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CamcorderEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v0

    .line 819
    .local v0, loc:Landroid/location/Location;
    if-eqz v0, :cond_1

    .line 820
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setLocation(FF)V

    .line 821
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getWeather()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setWeather(I)V

    .line 822
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->isAccuWeatherEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 823
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getCityId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setCityId(J)V

    .line 828
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v1, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoSource(I)V

    .line 829
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 830
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v1, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFormat(I)V

    .line 834
    :goto_0
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget v2, p0, Lcom/android/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setMaxDuration(I)V

    .line 842
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setDurationInterval(I)V

    .line 843
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v2, 0x780

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v2, 0x438

    if-ne v1, v2, :cond_5

    .line 844
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v2, 0xaf000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_b

    .line 868
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 878
    :goto_2
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoFrameRate(I)V

    .line 879
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v3, p0, Lcom/android/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoSize(II)V

    .line 880
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mInnerProfile:Lcom/android/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/android/camera/MediaRecorderProfile;->mVideoBitrate:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoEncodingBitRate(I)V

    .line 883
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioEncodingBitRate(I)V

    .line 884
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioChannels(I)V

    .line 885
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioSamplingRate(I)V

    .line 886
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoEncoder(I)V

    .line 888
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getCamcorderAudioRecording()I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 889
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioEncoder(I)V

    .line 890
    :cond_3
    return-void

    .line 832
    :cond_4
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFormat(I)V

    goto/16 :goto_0

    .line 845
    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v2, 0x500

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-ne v1, v7, :cond_6

    .line 846
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v2, 0x7d000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_1

    .line 860
    :catch_0
    move-exception v1

    goto/16 :goto_1

    .line 847
    :cond_6
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    if-ne v1, v7, :cond_7

    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-ne v1, v6, :cond_7

    .line 848
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v2, 0x1e000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_1

    .line 849
    :cond_7
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v2, 0x280

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-ne v1, v6, :cond_8

    .line 850
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v2, 0x19000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_1

    .line 851
    :cond_8
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v2, 0x140

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_9

    .line 852
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/16 v2, 0x7800

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_1

    .line 853
    :cond_9
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v2, 0xb0

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v2, 0x90

    if-ne v1, v2, :cond_2

    .line 854
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v1

    if-ne v1, v5, :cond_a

    .line 855
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/16 v2, 0x1800

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_1

    .line 857
    :cond_a
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/16 v2, 0x3000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 870
    :cond_b
    invoke-direct {p0}, Lcom/android/camera/CamcorderEngine;->createVideoPath()V

    .line 871
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-direct {p0}, Lcom/android/camera/CamcorderEngine;->getTempFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private setSystemSoundEffect()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1114
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sound_effects_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/android/camera/CamcorderEngine;->isSystemSoundEffectEnabled:Z

    .line 1116
    return-void
.end method

.method private updateOutdoorVisibility()V
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x4

    :try_start_0
    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)Z

    .line 293
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCamcorderOutdoorVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 294
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)Z

    .line 302
    :goto_0
    return-void

    .line 296
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateSettingsWhenSwitchCamera()V
    .locals 1

    .prologue
    .line 1513
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->refreshCamcorderSettingValuesFromPreferences()V

    .line 1514
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->refreshCamcorderSettingValues()V

    .line 1515
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->updateRecordingModeWhenSwitchCamera()V

    .line 1516
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->setCamcorderSettingValuesAsDefault()V

    .line 1517
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->refreshButtonDimForCamcorder()V

    .line 1518
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getAttachMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1519
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->setDefaultCamcorderVideoDuration()V

    .line 1521
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelAutoFocus()V
    .locals 2

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v0, :cond_1

    .line 1751
    const-string v0, "CamcorderEngine"

    const-string v1, "cancelAutoFocus - this cmd is skiped because mCameraDevice is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    :cond_0
    :goto_0
    return-void

    .line 1755
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

    if-eqz v0, :cond_2

    .line 1756
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1757
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

    new-instance v1, Lcom/android/camera/CamcorderEngine$6;

    invoke-direct {v1, p0}, Lcom/android/camera/CamcorderEngine$6;-><init>(Lcom/android/camera/CamcorderEngine;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraEngine$StateMessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 1766
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/CamcorderEngine;->isAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1767
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

    if-eqz v0, :cond_0

    .line 1768
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public closeCamcorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 305
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 306
    const-string v0, "CamcorderEngine"

    const-string v1, "closeCamcorder"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 309
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v2}, Lcom/sec/android/seccamera/SecCamera;->setZoomChangeListener(Lcom/sec/android/seccamera/SecCamera$OnZoomChangeListener;)V

    .line 310
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v2}, Lcom/sec/android/seccamera/SecCamera;->setFaceDetectionListener(Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;)V

    .line 311
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v2}, Lcom/sec/android/seccamera/SecCamera;->setErrorCallback(Lcom/sec/android/seccamera/SecCamera$ErrorCallback;)V

    .line 312
    iput-object v2, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    .line 313
    iput-object v2, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    .line 317
    :cond_0
    return-void
.end method

.method public closeVideoFileDescriptor()V
    .locals 3

    .prologue
    .line 928
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 930
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 934
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 936
    :cond_0
    return-void

    .line 931
    :catch_0
    move-exception v0

    .line 932
    .local v0, e:Ljava/io/IOException;
    const-string v1, "CamcorderEngine"

    const-string v2, "Fail to close fd"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public disableSystemSoundEffect()V
    .locals 3

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sound_effects_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1125
    return-void
.end method

.method public doAutoFocusAsync()V
    .locals 2

    .prologue
    .line 1743
    const-string v0, "CamcorderEngine"

    const-string v1, "doAutoFocusAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/CamcorderEngine;->mFocusState:I

    .line 1746
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mAutoFocusCallback:Lcom/android/camera/CamcorderEngine$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->autoFocus(Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;)V

    .line 1747
    return-void
.end method

.method public doCancelVideoRecordingSync()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1337
    const-string v5, "CamcorderEngine"

    const-string v6, "doCancelVideoRecordingSync"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    const-string v5, "CamcorderEngine"

    const-string v6, "Cancelling VideoRecording..."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    iget-boolean v5, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v5, :cond_6

    .line 1342
    iget-object v5, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v5}, Lcom/android/camera/CameraSettings;->getCamcorderFlashMode()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 1343
    iget-object v5, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v8}, Lcom/android/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1344
    iget-object v5, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v6, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v5, v6}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 1350
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->reset()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1355
    :goto_0
    iput-boolean v8, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    .line 1356
    invoke-virtual {p0}, Lcom/android/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 1361
    :cond_1
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.server.CpuGovernorService.action.IOBUSY_UNVOTE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1363
    .local v2, ioBusyUnVoteIntent:Landroid/content/Intent;
    const-string v5, "com.android.server.CpuGovernorService.voteType"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1364
    iget-object v5, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v5, v2}, Lcom/android/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1366
    iget-object v5, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.sec.chaton.util.ACTION_VIDEO_RECORDING_STOP"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1367
    invoke-virtual {p0}, Lcom/android/camera/CamcorderEngine;->getSystemSoundEffect()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1368
    invoke-virtual {p0}, Lcom/android/camera/CamcorderEngine;->enableSystemSoundEffect()V

    .line 1378
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/CamcorderEngine;->cleanupTempFile()V

    .line 1380
    iget-object v5, p0, Lcom/android/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v5, :cond_4

    .line 1381
    iget-object v5, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v5}, Lcom/android/camera/AbstractCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1382
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 1384
    .local v3, myExtras:Landroid/os/Bundle;
    iget-boolean v5, p0, Lcom/android/camera/CamcorderEngine;->mIsVideoCaptureIntent:Z

    if-eqz v5, :cond_3

    if-eqz v3, :cond_3

    .line 1385
    const-string v5, "output"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 1388
    .local v4, saveUri:Landroid/net/Uri;
    :try_start_1
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/net/URI;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1393
    .end local v4           #saveUri:Landroid/net/Uri;
    :cond_3
    :goto_2
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1397
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #myExtras:Landroid/os/Bundle;
    :cond_4
    iput-boolean v8, p0, Lcom/android/camera/CamcorderEngine;->mRecordingInitiated:Z

    .line 1399
    invoke-direct {p0}, Lcom/android/camera/CamcorderEngine;->enableAlertSound()V

    .line 1400
    iget-object v5, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v5, Lcom/android/camera/Camcorder;

    invoke-virtual {v5}, Lcom/android/camera/Camcorder;->hideZoomMenu()V

    .line 1401
    iget-object v5, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v5, Lcom/android/camera/Camcorder;

    invoke-virtual {v5}, Lcom/android/camera/Camcorder;->isRecordingMenuTop()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1402
    iget-object v5, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v5, Lcom/android/camera/Camcorder;

    invoke-virtual {v5}, Lcom/android/camera/Camcorder;->hideRecordingLayout()V

    .line 1403
    iget-object v5, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v5}, Lcom/android/camera/AbstractCameraActivity;->processBack()V

    .line 1405
    :cond_5
    const-string v5, "CamcorderEngine"

    const-string v6, "Cancelling VideoRecording is completed!"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    return-void

    .line 1351
    .end local v2           #ioBusyUnVoteIntent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1352
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v5, "CamcorderEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cancel fail: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1357
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_6
    iget-boolean v5, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    if-eqz v5, :cond_1

    .line 1358
    iput-boolean v8, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    goto/16 :goto_1

    .line 1389
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #ioBusyUnVoteIntent:Landroid/content/Intent;
    .restart local v3       #myExtras:Landroid/os/Bundle;
    .restart local v4       #saveUri:Landroid/net/Uri;
    :catch_1
    move-exception v5

    goto :goto_2
.end method

.method public doChangeParameterSync(Ljava/lang/Object;)V
    .locals 6
    .parameter "param"

    .prologue
    const/16 v5, 0xb

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 484
    const-string v3, "CamcorderEngine"

    const-string v4, "doChangeParameterSync"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v3, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v3, :cond_1

    .line 487
    const-string v1, "CamcorderEngine"

    const-string v2, "returning because mCameraDevice is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    iget-object v3, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v3, :cond_2

    .line 492
    const-string v1, "CamcorderEngine"

    const-string v2, "CamcorderParameters is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 496
    check-cast v0, Lcom/android/camera/CameraEngine$CeSettingsParameter;

    .line 498
    .local v0, p:Lcom/android/camera/CameraEngine$CeSettingsParameter;
    invoke-virtual {v0}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 542
    :goto_1
    :sswitch_0
    invoke-virtual {v0}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v1

    const/16 v3, 0x68

    if-ne v1, v3, :cond_3

    .line 543
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-virtual {v0}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v1

    const/16 v3, 0xe

    invoke-static {v1, v3}, Lcom/android/camera/CameraResolution;->compare(II)I

    move-result v1

    if-ltz v1, :cond_5

    .line 545
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/camera/CeRequestQueue;->searchDuplicateRequest(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 559
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 564
    :goto_3
    invoke-virtual {v0}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    .line 565
    invoke-virtual {v0}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/CamcorderEngine;->setCamcorderShootingMode(I)V

    goto :goto_0

    .line 500
    :sswitch_1
    const-string v1, "CamcorderEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doChangeParameterSync() - key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 504
    :sswitch_2
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 507
    :sswitch_3
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getEffectString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 510
    :sswitch_4
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getWhitebalanceString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 513
    :sswitch_5
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getIsoString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 516
    :sswitch_6
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 519
    :sswitch_7
    iget-object v3, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    if-ne v4, v1, :cond_4

    :goto_4
    invoke-virtual {v3, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setVideoStabilization(Z)V

    goto/16 :goto_1

    :cond_4
    move v1, v2

    goto :goto_4

    .line 527
    :sswitch_8
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 548
    :cond_5
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 561
    :cond_6
    const-string v1, "CamcorderEngine"

    const-string v2, "parameter will set next operation coming"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 498
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_5
        0xb -> :sswitch_6
        0x67 -> :sswitch_1
        0x69 -> :sswitch_2
        0x6b -> :sswitch_4
        0x6c -> :sswitch_3
        0x6d -> :sswitch_8
        0x6e -> :sswitch_8
        0x70 -> :sswitch_8
        0x72 -> :sswitch_0
        0x73 -> :sswitch_0
        0x74 -> :sswitch_0
        0x7d -> :sswitch_7
        0x86 -> :sswitch_8
        0x87 -> :sswitch_8
    .end sparse-switch
.end method

.method public doLaunchGallerySync(Ljava/lang/String;)V
    .locals 2
    .parameter "keyValue"

    .prologue
    .line 1415
    const-string v0, "CamcorderEngine"

    const-string v1, "doLaunchGallerySync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camcorder;

    invoke-virtual {v0, p1}, Lcom/android/camera/Camcorder;->onLaunchGallery(Ljava/lang/String;)V

    .line 1418
    return-void
.end method

.method public doPauseVideoRecordingSync()V
    .locals 3

    .prologue
    .line 1155
    const-string v1, "CamcorderEngine"

    const-string v2, "doPauseVideoRecordingSync"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-nez v1, :cond_0

    .line 1158
    const-string v1, "CamcorderEngine"

    const-string v2, "SecMediaRecorder is not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    :goto_0
    return-void

    .line 1162
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    if-nez v1, :cond_1

    .line 1163
    const-string v1, "CamcorderEngine"

    const-string v2, "Recording is not started yet."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1168
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getCamcorderFlashMode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 1169
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1170
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 1174
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->pause()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1181
    invoke-direct {p0}, Lcom/android/camera/CamcorderEngine;->enableAlertSound()V

    goto :goto_0

    .line 1175
    :catch_0
    move-exception v0

    .line 1176
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "CamcorderEngine"

    const-string v2, "Could not pause media recorder. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1177
    invoke-direct {p0}, Lcom/android/camera/CamcorderEngine;->enableAlertSound()V

    goto :goto_0
.end method

.method public doPrepareVideoRecordingAsync()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 964
    const-string v0, "CamcorderEngine"

    const-string v1, "doPrepareVideoRecordingAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mMainHandler:Lcom/android/camera/CameraEngine$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraEngine$MainHandler;->removeMessages(I)V

    .line 968
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v0, :cond_0

    .line 969
    const-string v0, "CamcorderEngine"

    const-string v1, "mMediaRecorder is already initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    const-string v0, "CamcorderEngine"

    const-string v1, "Releasing mMediaRecorder..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    invoke-virtual {p0}, Lcom/android/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 975
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCamcorderFlashMode()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 976
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 977
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 980
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camcorder;

    invoke-virtual {v0}, Lcom/android/camera/Camcorder;->isCAFDisabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 981
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 982
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camcorder;

    invoke-virtual {v0}, Lcom/android/camera/Camcorder;->hideFocusIndicator()V

    .line 990
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_3

    .line 991
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/camera/CamcorderEngine$3;

    invoke-direct {v1, p0}, Lcom/android/camera/CamcorderEngine$3;-><init>(Lcom/android/camera/CamcorderEngine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    .line 1007
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    const-string v1, "PrepareRecordingThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1008
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1010
    :cond_3
    return-void
.end method

.method public doResetSettingsSync()V
    .locals 1

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->resetButtonDim()V

    .line 1527
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->resetCamcorderSettingsToDefault()V

    .line 1529
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->updateUIWhenResetSettings()V

    .line 1531
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->refreshButtonDimForCamcorder()V

    .line 1532
    return-void
.end method

.method public doResumeVideoRecordingSync()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 1191
    const-string v1, "CamcorderEngine"

    const-string v2, "doResumeVideoRecordingSync"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-nez v1, :cond_0

    .line 1194
    const-string v1, "CamcorderEngine"

    const-string v2, "SecMediaRecorder is not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    :goto_0
    return-void

    .line 1198
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    if-nez v1, :cond_1

    .line 1199
    const-string v1, "CamcorderEngine"

    const-string v2, "Recording is not started yet."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1204
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getCamcorderFlashMode()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 1205
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1206
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 1210
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->resume()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1215
    invoke-direct {p0}, Lcom/android/camera/CamcorderEngine;->disableAlertSound()V

    goto :goto_0

    .line 1211
    :catch_0
    move-exception v0

    .line 1212
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "CamcorderEngine"

    const-string v2, "Could not resume media recorder. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public doSetAllParamsSync()V
    .locals 0

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/android/camera/CamcorderEngine;->initialize()V

    .line 481
    return-void
.end method

.method public doStartEngineAsync()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 420
    const-string v0, "CamcorderEngine"

    const-string v1, "doStartEngineAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iput-boolean v2, p0, Lcom/android/camera/CamcorderEngine;->mRecordingInitiated:Z

    .line 425
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/android/camera/CameraEngine$UriSearchingHandler;

    if-nez v0, :cond_0

    .line 426
    new-instance v0, Lcom/android/camera/CameraEngine$UriSearchingHandler;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraEngine$UriSearchingHandler;-><init>(Lcom/android/camera/CameraEngine;)V

    iput-object v0, p0, Lcom/android/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/android/camera/CameraEngine$UriSearchingHandler;

    .line 429
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/camera/CamcorderEngine;->changeEngineState(I)V

    .line 436
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_2

    .line 437
    const-string v0, "CamcorderEngine"

    const-string v1, "camera device is already conntected for some reason (eg. onResume is called twice without calling onPause)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const-string v0, "CamcorderEngine"

    const-string v1, "skip connecting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mStateMessageHandler:Lcom/android/camera/CameraEngine$StateMessageHandler;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 451
    :goto_0
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getGPS()I

    move-result v0

    if-ne v0, v3, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/CamcorderEngine;->isProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/CamcorderEngine;->isNetworkProviderEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 453
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/CamcorderEngine;->startReceivingLocationUpdates()V

    .line 458
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/CamcorderEngine;->setOrientationListener()V

    .line 459
    return-void

    .line 441
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/camera/CamcorderEngine$2;

    invoke-direct {v1, p0}, Lcom/android/camera/CamcorderEngine$2;-><init>(Lcom/android/camera/CamcorderEngine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/camera/CamcorderEngine;->mOpenCameraThread:Ljava/lang/Thread;

    .line 447
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mOpenCameraThread:Ljava/lang/Thread;

    const-string v1, "openCamcorderThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mOpenCameraThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 455
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->setGPS(I)V

    goto :goto_1
.end method

.method public doStartPreviewAsync()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 1421
    const-string v2, "CamcorderEngine"

    const-string v3, "doStartPreviewAsync"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v2, :cond_1

    .line 1424
    const-string v2, "CamcorderEngine"

    const-string v3, "return because mSurfaceHolder is null."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    if-eqz v2, :cond_0

    .line 1427
    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    invoke-virtual {v2, v4}, Lcom/android/camera/CeRequestQueue;->removeRequest(I)V

    .line 1479
    :cond_0
    :goto_0
    return-void

    .line 1433
    :cond_1
    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v2, :cond_2

    .line 1434
    const-string v2, "CamcorderEngine"

    const-string v3, "return because mCameraDevice is null."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1438
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/CamcorderEngine;->resetPreviewSize()V

    .line 1441
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v3, p0, Lcom/android/camera/CamcorderEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1451
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/camera/CamcorderEngine$5;

    invoke-direct {v2, p0}, Lcom/android/camera/CamcorderEngine$5;-><init>(Lcom/android/camera/CamcorderEngine;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1471
    .local v1, startPreviewThread:Ljava/lang/Thread;
    const-string v2, "startPreviewThread"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1472
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1473
    invoke-virtual {p0, v4}, Lcom/android/camera/CamcorderEngine;->changeEngineState(I)V

    .line 1475
    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v2, :cond_3

    .line 1476
    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v2}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0

    .line 1442
    .end local v1           #startPreviewThread:Ljava/lang/Thread;
    :catch_0
    move-exception v0

    .line 1443
    .local v0, exception:Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/android/camera/CamcorderEngine;->closeCamcorder()V

    .line 1446
    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    invoke-virtual {v2}, Lcom/android/camera/CeRequestQueue;->completeRequest()V

    .line 1447
    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mErrorMessageHandler:Lcom/android/camera/CameraEngine$ErrorMessageHandler;

    const/4 v3, -0x3

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1478
    .end local v0           #exception:Ljava/io/IOException;
    .restart local v1       #startPreviewThread:Ljava/lang/Thread;
    :cond_3
    const-string v2, "CamcorderEngine"

    const-string v3, "doStartPreviewAsync : mOrientationListener is null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public doStartVideoRecordingAsync()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1021
    const-string v0, "CamcorderEngine"

    const-string v1, "doStartVideoRecordingAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    iput-wide v2, p0, Lcom/android/camera/CamcorderEngine;->mVideoFileLengthInByte:J

    .line 1023
    iput-wide v2, p0, Lcom/android/camera/CamcorderEngine;->mVideoRecordingTimeInMiliSecond:J

    .line 1026
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CamcorderEngine;->mRecordingInitiated:Z

    .line 1029
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1036
    :cond_0
    :goto_0
    const-string v0, "CamcorderEngine"

    const-string v1, "start video recording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    iget-boolean v0, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    if-nez v0, :cond_1

    .line 1039
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/camera/CamcorderEngine$4;

    invoke-direct {v1, p0}, Lcom/android/camera/CamcorderEngine$4;-><init>(Lcom/android/camera/CamcorderEngine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/camera/CamcorderEngine;->mStartRecordingThread:Ljava/lang/Thread;

    .line 1080
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mStartRecordingThread:Ljava/lang/Thread;

    const-string v1, "StartRecordingThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1081
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mStartRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1092
    :cond_1
    return-void

    .line 1032
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public doStopEngineSync()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 462
    const-string v0, "CamcorderEngine"

    const-string v1, "doStopEngineSync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/android/camera/CameraEngine$UriSearchingHandler;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/android/camera/CameraEngine$UriSearchingHandler;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraEngine$UriSearchingHandler;->removeMessages(I)V

    .line 466
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/android/camera/CameraEngine$UriSearchingHandler;

    .line 473
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CamcorderEngine;->stopReceivingLocationUpdates()V

    .line 474
    invoke-virtual {p0}, Lcom/android/camera/CamcorderEngine;->closeCamcorder()V

    .line 476
    invoke-virtual {p0, v2}, Lcom/android/camera/CamcorderEngine;->changeEngineState(I)V

    .line 477
    return-void
.end method

.method public doStopPreviewSync()V
    .locals 2

    .prologue
    .line 1482
    const-string v0, "CamcorderEngine"

    const-string v1, "doStopPreviewSync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 1489
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->stopPreview()V

    .line 1492
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/CamcorderEngine;->changeEngineState(I)V

    .line 1494
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    .line 1495
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 1498
    :goto_0
    return-void

    .line 1497
    :cond_1
    const-string v0, "CamcorderEngine"

    const-string v1, "doStopPreviewSync : mOrientationListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public doStopVideoRecordingSync()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1225
    const-string v2, "CamcorderEngine"

    const-string v3, "doStopVideoRecordingSync"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    const-string v2, "CamcorderEngine"

    const-string v3, "Stopping VideoRecording..."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    iget-boolean v2, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v2, :cond_6

    .line 1230
    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getCamcorderFlashMode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 1231
    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1232
    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v3, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 1235
    :cond_0
    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v2, Lcom/android/camera/Camcorder;

    invoke-virtual {v2}, Lcom/android/camera/Camcorder;->isCAFDisabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1236
    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1237
    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v2, Lcom/android/camera/Camcorder;

    invoke-virtual {v2}, Lcom/android/camera/Camcorder;->hideFocusIndicator()V

    .line 1245
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.CpuGovernorService.action.IOBUSY_UNVOTE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1247
    .local v1, ioBusyUnVoteIntent:Landroid/content/Intent;
    const-string v2, "com.android.server.CpuGovernorService.voteType"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1248
    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2, v1}, Lcom/android/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1250
    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.chaton.util.ACTION_VIDEO_RECORDING_STOP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1251
    invoke-virtual {p0}, Lcom/android/camera/CamcorderEngine;->getSystemSoundEffect()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1252
    invoke-virtual {p0}, Lcom/android/camera/CamcorderEngine;->enableSystemSoundEffect()V

    .line 1258
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->stop()V

    .line 1259
    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->stopInactivityTimer()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1278
    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v2, :cond_3

    .line 1279
    invoke-direct {p0}, Lcom/android/camera/CamcorderEngine;->renameTempFile()V

    .line 1281
    :cond_3
    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/camera/CamcorderEngine;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1283
    iput-boolean v5, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    .line 1284
    invoke-virtual {p0}, Lcom/android/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 1294
    invoke-direct {p0}, Lcom/android/camera/CamcorderEngine;->registerVideo()V

    .line 1312
    .end local v1           #ioBusyUnVoteIntent:Landroid/content/Intent;
    :cond_4
    :goto_0
    iput-object v6, p0, Lcom/android/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    .line 1314
    invoke-virtual {p0}, Lcom/android/camera/CamcorderEngine;->removeHideFocusRectMessage()V

    .line 1317
    sget-boolean v2, Lcom/android/camera/CamcorderEngine;->m_bIsTouchAutoFocusing:Z

    if-eqz v2, :cond_5

    .line 1318
    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mMainHandler:Lcom/android/camera/CameraEngine$MainHandler;

    const/4 v3, 0x1

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/camera/CameraEngine$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1324
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/CamcorderEngine;->enableAlertSound()V

    .line 1325
    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->updateRemainTime()V

    .line 1327
    const-string v2, "CamcorderEngine"

    const-string v3, "Stopping VideoRecording is completed!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    :goto_1
    return-void

    .line 1260
    .restart local v1       #ioBusyUnVoteIntent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1261
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "CamcorderEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    iput-boolean v5, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    .line 1263
    invoke-virtual {p0}, Lcom/android/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 1265
    invoke-direct {p0}, Lcom/android/camera/CamcorderEngine;->cleanupTempFile()V

    .line 1266
    iput-object v6, p0, Lcom/android/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    .line 1267
    invoke-virtual {p0}, Lcom/android/camera/CamcorderEngine;->closeVideoFileDescriptor()V

    .line 1269
    invoke-direct {p0}, Lcom/android/camera/CamcorderEngine;->enableAlertSound()V

    .line 1271
    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mErrorMessageHandler:Lcom/android/camera/CameraEngine$ErrorMessageHandler;

    const/4 v3, -0x4

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 1308
    .end local v0           #e:Ljava/lang/RuntimeException;
    .end local v1           #ioBusyUnVoteIntent:Landroid/content/Intent;
    :cond_6
    iget-boolean v2, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    if-eqz v2, :cond_4

    .line 1309
    iput-boolean v5, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    goto :goto_0
.end method

.method public final doTakePictureAsync()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2456
    const-string v1, "CamcorderEngine"

    const-string v2, "doTakePictureAsync from camcorder engine"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2458
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v1, :cond_0

    .line 2459
    invoke-virtual {p0}, Lcom/android/camera/CamcorderEngine;->getLastOrientation()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/CamcorderEngine;->setOrientationOnTake(I)V

    .line 2460
    invoke-virtual {p0}, Lcom/android/camera/CamcorderEngine;->getOrientationOnTake()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/CamcorderEngine;->calculateOrientationForPicture(I)I

    move-result v0

    .line 2462
    .local v0, rotation:I
    const-string v1, "CamcorderEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOrientationAndSendItToFramework - rotation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setRotation(I)V

    .line 2464
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 2466
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    new-instance v2, Lcom/android/camera/CamcorderEngine$7;

    invoke-direct {v2, p0}, Lcom/android/camera/CamcorderEngine$7;-><init>(Lcom/android/camera/CamcorderEngine;)V

    invoke-virtual {v1, v4, v4, v2}, Lcom/sec/android/seccamera/SecCamera;->takePicture(Lcom/sec/android/seccamera/SecCamera$ShutterCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;)V

    .line 2598
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v1, Lcom/android/camera/Camcorder;

    invoke-virtual {v1}, Lcom/android/camera/Camcorder;->startPostRecordingSnapAnimation()V

    .line 2601
    .end local v0           #rotation:I
    :cond_0
    return-void
.end method

.method public doWaitForSurfaceAsync()V
    .locals 2

    .prologue
    .line 944
    const-string v0, "CamcorderEngine"

    const-string v1, "doWaitForSurfaceAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 947
    const-string v0, "CamcorderEngine"

    const-string v1, "mSurfaceHolder is already created!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/android/camera/CeRequestQueue;->completeRequest()V

    .line 953
    :goto_0
    return-void

    .line 950
    :cond_0
    const-string v0, "CamcorderEngine"

    const-string v1, "start waiting for mSurfaceHolder..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/camera/CamcorderEngine;->changeEngineState(I)V

    goto :goto_0
.end method

.method public enableSystemSoundEffect()V
    .locals 3

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sound_effects_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1130
    return-void
.end method

.method public getCamcorderInnerProfile()Lcom/android/camera/MediaRecorderProfile;
    .locals 3

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    if-nez v0, :cond_0

    .line 612
    const-string v0, "CamcorderEngine"

    const-string v1, "getCamcorderInnerProfile: mCameraSettings is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    const/4 v0, 0x0

    .line 620
    :goto_0
    return-object v0

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mInnerProfile:Lcom/android/camera/MediaRecorderProfile;

    if-eqz v0, :cond_1

    .line 617
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mInnerProfile:Lcom/android/camera/MediaRecorderProfile;

    goto :goto_0

    .line 619
    :cond_1
    new-instance v0, Lcom/android/camera/MediaRecorderProfile;

    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getCamcorderQuality()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/MediaRecorderProfile;-><init>(Lcom/android/camera/AbstractCameraActivity;I)V

    iput-object v0, p0, Lcom/android/camera/CamcorderEngine;->mInnerProfile:Lcom/android/camera/MediaRecorderProfile;

    .line 620
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mInnerProfile:Lcom/android/camera/MediaRecorderProfile;

    goto :goto_0
.end method

.method public getCamcorderProfile()Landroid/media/CamcorderProfile;
    .locals 2

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    if-nez v0, :cond_0

    .line 597
    const-string v0, "CamcorderEngine"

    const-string v1, "getCamcorderProfile: mCameraSettings is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const/4 v0, 0x0

    .line 607
    :goto_0
    return-object v0

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v0, :cond_1

    .line 602
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    goto :goto_0

    .line 604
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraResolution;->getCamcorderProfileQualityLevel(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    .line 607
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    goto :goto_0
.end method

.method public getCurrentVideoFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2358
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCurrentVideoFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getGpsLocation()Landroid/location/Location;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    .line 2633
    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getGPS()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/CamcorderEngine;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 2635
    .local v0, loc:Landroid/location/Location;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v0, v1

    .line 2638
    .end local v0           #loc:Landroid/location/Location;
    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    .line 2633
    goto :goto_0
.end method

.method public getMaxFileSize()J
    .locals 2

    .prologue
    .line 732
    iget-wide v0, p0, Lcom/android/camera/CamcorderEngine;->maxFileSize:J

    return-wide v0
.end method

.method public getRemainTime()I
    .locals 6

    .prologue
    .line 2413
    const/4 v1, 0x0

    .line 2414
    .local v1, nBitrate:I
    const/4 v3, 0x0

    .line 2415
    .local v3, nVideoBitrate:I
    const/4 v0, 0x0

    .line 2416
    .local v0, nAudioBitrate:I
    const/4 v2, 0x0

    .line 2418
    .local v2, nRemainTime:I
    invoke-direct {p0}, Lcom/android/camera/CamcorderEngine;->readVideoPreferences()V

    .line 2420
    invoke-direct {p0}, Lcom/android/camera/CamcorderEngine;->getVideoBitRateFromProfile()I

    move-result v3

    .line 2422
    iget-object v4, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/android/camera/CameraSettings;->getCamcorderAudioRecording()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 2423
    invoke-direct {p0}, Lcom/android/camera/CamcorderEngine;->getAudioBitRateFromProfile()I

    move-result v0

    .line 2425
    :cond_0
    add-int v4, v3, v0

    div-int/lit8 v1, v4, 0x8

    .line 2426
    iget-object v4, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/android/camera/CameraSettings;->getStorage()I

    move-result v4

    invoke-static {v4, v1}, Lcom/android/camera/CheckMemory;->getRemainTime(II)I

    move-result v2

    .line 2428
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    .line 2430
    return v2
.end method

.method public getSurpportedVideoSize(II)Z
    .locals 5
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x1

    .line 2610
    iget-object v4, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v2

    .line 2611
    .local v2, sizes:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    if-nez v2, :cond_1

    .line 2612
    const-string v3, "CamcorderEngine"

    const-string v4, "supported video sizes is null"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2613
    const/4 v3, 0x0

    .line 2620
    :cond_0
    :goto_0
    return v3

    .line 2615
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/seccamera/SecCamera$Size;

    .line 2616
    .local v1, size:Lcom/sec/android/seccamera/SecCamera$Size;
    iget v4, v1, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    if-ne v4, p1, :cond_2

    iget v4, v1, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    if-ne v4, p2, :cond_2

    goto :goto_0
.end method

.method public getSystemSoundEffect()Z
    .locals 1

    .prologue
    .line 1119
    sget-boolean v0, Lcom/android/camera/CamcorderEngine;->isSystemSoundEffectEnabled:Z

    return v0
.end method

.method public getTouchFocusPositioned()Z
    .locals 1

    .prologue
    .line 1632
    sget-boolean v0, Lcom/android/camera/CamcorderEngine;->m_bIsTouchFocusPositioned:Z

    return v0
.end method

.method public getVideoFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public getVideoFileLengthInByte()J
    .locals 2

    .prologue
    .line 2350
    iget-wide v0, p0, Lcom/android/camera/CamcorderEngine;->mVideoFileLengthInByte:J

    return-wide v0
.end method

.method public getVideoRecordingTimeInSecond()I
    .locals 4

    .prologue
    .line 2354
    iget-wide v0, p0, Lcom/android/camera/CamcorderEngine;->mVideoRecordingTimeInMiliSecond:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public handleVideoRecordingStarted()V
    .locals 2

    .prologue
    .line 1095
    const-string v0, "CamcorderEngine"

    const-string v1, "handleVideoRecordingStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camcorder;

    invoke-virtual {v0}, Lcom/android/camera/Camcorder;->onVideoRecordingStart()V

    .line 1098
    return-void
.end method

.method public initialize()V
    .locals 8

    .prologue
    const/16 v7, 0x6b

    const/16 v4, 0x25

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 181
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    .line 183
    .local v0, camSettings:Lcom/android/camera/CameraSettings;
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v1, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 191
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 194
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v1, Lcom/android/camera/Camcorder;

    invoke-virtual {v1}, Lcom/android/camera/Camcorder;->isCAFDisabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 195
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v4, 0x5

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_2
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v4, p0, Lcom/android/camera/CamcorderEngine;->mAutoFocusCallback:Lcom/android/camera/CamcorderEngine$AutoFocusCallback;

    invoke-virtual {v1, v4}, Lcom/sec/android/seccamera/SecCamera;->setAutoFocusCb(Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;)V

    .line 205
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0x67

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0x6c

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCamcorderEffect()I

    move-result v5

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getEffectString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v7}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getWhiteBalance()I

    move-result v5

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getWhitebalanceString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0x70

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCamcorderZoomValue()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 209
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0x6d

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCamcorderExposureValue()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 210
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0x6e

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCamcorderAutoContrast()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 217
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0x68

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCamcorderResolution()I

    move-result v5

    invoke-static {v5}, Lcom/android/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0xd

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 220
    iget-object v4, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCamcorderAntishake()I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setVideoStabilization(Z)V

    .line 222
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v2, "video_recording_gamma"

    const-string v4, "on"

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v2, "slow_ae"

    const-string v4, "on"

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    const/16 v2, 0xe

    invoke-static {v1, v2}, Lcom/android/camera/CameraResolution;->compare(II)I

    move-result v1

    if-ltz v1, :cond_3

    .line 227
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v2, 0xb

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_3
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getAntiBanding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getIsoString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getBeautyString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 239
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getSceneMode()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getSceneModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :goto_2
    const/16 v1, 0x7b

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getGuideline()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 284
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    goto/16 :goto_0

    :cond_4
    move v1, v3

    .line 220
    goto :goto_1

    .line 248
    :cond_5
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 249
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v2, 0x6d

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCamcorderExposureValue()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 250
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v2, 0x6c

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getCamcorderEffect()I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getEffectString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v7}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getWhiteBalance()I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getWhitebalanceString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setVideoStabilization(Z)V

    .line 264
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getAntiBanding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 267
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/android/camera/CameraSettings;->getSelfFlip()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/CamcorderEngine;->setFrontSensorMirror(I)V

    goto :goto_2
.end method

.method public isMediaRecorderRecording()Z
    .locals 1

    .prologue
    .line 2409
    iget-boolean v0, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    return v0
.end method

.method public isRecorderStarting()Z
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    :cond_0
    const/4 v0, 0x1

    .line 592
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecording()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 576
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Lcom/android/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 584
    :cond_0
    :goto_0
    return v0

    .line 580
    :cond_1
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 584
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouchAutoFocusing()Z
    .locals 1

    .prologue
    .line 1658
    sget-boolean v0, Lcom/android/camera/CamcorderEngine;->m_bIsTouchAutoFocusing:Z

    return v0
.end method

.method public onCameraSettingsChanged(II)V
    .locals 1
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 1535
    sparse-switch p1, :sswitch_data_0

    .line 1590
    :goto_0
    :sswitch_0
    return-void

    .line 1546
    :sswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/CamcorderEngine;->scheduleChangeParameter(II)V

    goto :goto_0

    .line 1563
    :sswitch_2
    new-instance v0, Lcom/android/camera/CameraEngine$CeSettingsParameter;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/CameraEngine$CeSettingsParameter;-><init>(Lcom/android/camera/CameraEngine;II)V

    invoke-virtual {p0, v0}, Lcom/android/camera/CamcorderEngine;->doChangeParameterSync(Ljava/lang/Object;)V

    goto :goto_0

    .line 1573
    :sswitch_3
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1574
    invoke-virtual {p0}, Lcom/android/camera/CamcorderEngine;->scheduleStopPreview()V

    .line 1575
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/CamcorderEngine;->scheduleChangeParameter(II)V

    .line 1576
    invoke-virtual {p0}, Lcom/android/camera/CamcorderEngine;->scheduleStartPreview()V

    goto :goto_0

    .line 1579
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/CamcorderEngine;->scheduleChangeParameter(II)V

    goto :goto_0

    .line 1583
    :sswitch_4
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 1584
    invoke-virtual {p0}, Lcom/android/camera/CamcorderEngine;->startReceivingLocationUpdates()V

    goto :goto_0

    .line 1586
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/CamcorderEngine;->stopReceivingLocationUpdates()V

    goto :goto_0

    .line 1535
    nop

    :sswitch_data_0
    .sparse-switch
        0x16 -> :sswitch_0
        0x65 -> :sswitch_0
        0x67 -> :sswitch_0
        0x68 -> :sswitch_0
        0x69 -> :sswitch_2
        0x6a -> :sswitch_0
        0x6b -> :sswitch_1
        0x6c -> :sswitch_1
        0x6d -> :sswitch_1
        0x6e -> :sswitch_1
        0x6f -> :sswitch_0
        0x70 -> :sswitch_2
        0x72 -> :sswitch_1
        0x73 -> :sswitch_1
        0x74 -> :sswitch_1
        0x7d -> :sswitch_3
        0x7e -> :sswitch_0
        0x82 -> :sswitch_4
        0x83 -> :sswitch_0
        0x86 -> :sswitch_1
        0x87 -> :sswitch_1
    .end sparse-switch
.end method

.method public onError(Lcom/sec/android/secmediarecorder/SecMediaRecorder;II)V
    .locals 2
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 2362
    const-string v0, "CamcorderEngine"

    const-string v1, "onError"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2364
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 2365
    const-string v0, "CamcorderEngine"

    const-string v1, "MEDIA_RECORDER_ERROR_UNKNOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2367
    invoke-virtual {p0}, Lcom/android/camera/CamcorderEngine;->scheduleCancelVideoRecording()V

    .line 2368
    invoke-virtual {p0}, Lcom/android/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 2369
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    if-eqz v0, :cond_0

    .line 2370
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camcorder;

    invoke-virtual {v0}, Lcom/android/camera/Camcorder;->finishRecordingWithError()V

    .line 2378
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mErrorMessageHandler:Lcom/android/camera/CameraEngine$ErrorMessageHandler;

    const/4 v1, -0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    .line 2379
    :goto_0
    return-void

    .line 2371
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 2372
    const-string v0, "CamcorderEngine"

    const-string v1, "MEDIA_RECORDER_ERROR_BUFFER_OVERFLOW"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2373
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    if-eqz v0, :cond_2

    .line 2374
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const/4 v1, -0x6

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->finishOnError(I)V

    .line 2375
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/CamcorderEngine;->scheduleStopVideoRecording()V

    goto :goto_0
.end method

.method public onInfo(Lcom/sec/android/secmediarecorder/SecMediaRecorder;II)V
    .locals 4
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2382
    const/16 v0, 0x320

    if-ne p2, v0, :cond_1

    .line 2383
    const-string v0, "CamcorderEngine"

    const-string v1, "onInfo - MEDIA_RECORDER_INFO_MAX_DURATION_REACHED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2384
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camcorder;

    invoke-virtual {v0, v3}, Lcom/android/camera/Camcorder;->handleRecordingCommand(I)V

    .line 2385
    invoke-virtual {p0}, Lcom/android/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 2387
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f09000c

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2406
    :cond_0
    :goto_0
    return-void

    .line 2388
    :cond_1
    const/16 v0, 0x321

    if-ne p2, v0, :cond_2

    .line 2389
    const-string v0, "CamcorderEngine"

    const-string v1, "onInfo - MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camcorder;

    invoke-virtual {v0, v3}, Lcom/android/camera/Camcorder;->handleRecordingCommand(I)V

    .line 2391
    invoke-virtual {p0}, Lcom/android/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 2393
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const v1, 0x7f09000b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2394
    :cond_2
    const/16 v0, 0x384

    if-ne p2, v0, :cond_3

    .line 2395
    int-to-long v0, p3

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/CamcorderEngine;->mVideoFileLengthInByte:J

    goto :goto_0

    .line 2396
    :cond_3
    const/16 v0, 0x385

    if-ne p2, v0, :cond_0

    .line 2397
    int-to-long v0, p3

    iput-wide v0, p0, Lcom/android/camera/CamcorderEngine;->mVideoRecordingTimeInMiliSecond:J

    goto :goto_0
.end method

.method public releaseMediaRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2016
    const-string v0, "CamcorderEngine"

    const-string v1, "Releasing media recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v0, :cond_0

    .line 2018
    invoke-direct {p0}, Lcom/android/camera/CamcorderEngine;->cleanupEmptyFile()V

    .line 2019
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnErrorListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;)V

    .line 2020
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnInfoListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;)V

    .line 2021
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->reset()V

    .line 2022
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->release()V

    .line 2023
    iput-object v2, p0, Lcom/android/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    .line 2024
    iput-object v2, p0, Lcom/android/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    .line 2026
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_1

    .line 2027
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->lock()V

    .line 2029
    :cond_1
    return-void
.end method

.method public removeHideFocusRectMessage()V
    .locals 2

    .prologue
    .line 2624
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mHideFocusRectHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2625
    return-void
.end method

.method protected resetPreviewSize()V
    .locals 15

    .prologue
    const/16 v14, 0x7530

    const/16 v13, 0x3a98

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 1774
    const-string v8, "CamcorderEngine"

    const-string v9, "resetPreviewSize()"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/android/camera/CameraSettings;->getCamcorderResolution()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 1877
    :pswitch_0
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1878
    const/16 v4, 0x3c0

    .line 1879
    .local v4, previewWidth:I
    const/16 v3, 0x2d0

    .line 1884
    .local v3, previewHeight:I
    :goto_0
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 1885
    const/16 v2, 0xcc0

    .line 1886
    .local v2, pictureWidth:I
    const/16 v1, 0x990

    .line 1894
    .local v1, pictureHeight:I
    :goto_1
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/android/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v8

    if-ne v8, v11, :cond_0

    .line 1896
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1897
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v5

    .line 1898
    .local v5, resolutionId:I
    const/16 v8, 0x12

    if-ne v5, v8, :cond_12

    .line 1899
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 1900
    const/16 v4, 0x3c0

    .line 1901
    const/16 v3, 0x2d0

    .line 1949
    .end local v5           #resolutionId:I
    :cond_0
    :goto_2
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-eqz v8, :cond_14

    .line 1950
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8, v11}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setRecordingHint(Z)V

    .line 1951
    const-string v8, "CamcorderEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setPreviewSize, previewWidth = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", previewHeight = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8, v4, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewSize(II)V

    .line 1953
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v9, 0x68

    invoke-static {v9}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v10}, Lcom/android/camera/CameraSettings;->getCamcorderResolution()I

    move-result v10

    invoke-static {v10}, Lcom/android/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1957
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8, v2, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPictureSize(II)V

    .line 1960
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v7

    .line 1961
    .local v7, thumbnailSizes:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v11, :cond_1

    .line 1962
    const/4 v6, 0x0

    .line 1963
    .local v6, thumbnaiSize:Lcom/sec/android/seccamera/SecCamera$Size;
    invoke-virtual {p0, v7, v4, v3}, Lcom/android/camera/CamcorderEngine;->findThumbnailSize(Ljava/util/List;II)Lcom/sec/android/seccamera/SecCamera$Size;

    move-result-object v6

    .line 1964
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget v9, v6, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    iget v10, v6, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setJpegThumbnailSize(II)V

    .line 1968
    .end local v6           #thumbnaiSize:Lcom/sec/android/seccamera/SecCamera$Size;
    :cond_1
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v9, 0x25

    invoke-static {v9}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v11}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 1974
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/android/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v8

    if-ne v8, v11, :cond_15

    .line 1978
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {p0, v8, v13, v13}, Lcom/android/camera/CamcorderEngine;->findBestFpsRange(Lcom/sec/android/seccamera/SecCamera$Parameters;II)[I

    move-result-object v0

    .line 1979
    .local v0, fpsRange:[I
    if-eqz v0, :cond_2

    .line 1980
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    aget v9, v0, v12

    aget v10, v0, v11

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 2003
    :cond_2
    :goto_3
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v8, :cond_17

    .line 2004
    invoke-virtual {p0, v11}, Lcom/android/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 2005
    const-string v8, "CamcorderEngine"

    const-string v9, "resetPreviewSize()- isCurrentState is INITIALIZING"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    .end local v0           #fpsRange:[I
    .end local v7           #thumbnailSizes:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    :goto_4
    return-void

    .line 1781
    .end local v1           #pictureHeight:I
    .end local v2           #pictureWidth:I
    .end local v3           #previewHeight:I
    .end local v4           #previewWidth:I
    :pswitch_1
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1782
    const/16 v4, 0x500

    .line 1783
    .restart local v4       #previewWidth:I
    const/16 v3, 0x2d0

    .line 1788
    .restart local v3       #previewHeight:I
    :goto_5
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1789
    const/16 v2, 0xcc0

    .line 1790
    .restart local v2       #pictureWidth:I
    const/16 v1, 0x72c

    .restart local v1       #pictureHeight:I
    goto/16 :goto_1

    .line 1785
    .end local v1           #pictureHeight:I
    .end local v2           #pictureWidth:I
    .end local v3           #previewHeight:I
    .end local v4           #previewWidth:I
    :cond_3
    const/16 v4, 0x500

    .line 1786
    .restart local v4       #previewWidth:I
    const/16 v3, 0x2d0

    .restart local v3       #previewHeight:I
    goto :goto_5

    .line 1792
    :cond_4
    const/16 v2, 0x780

    .line 1793
    .restart local v2       #pictureWidth:I
    const/16 v1, 0x438

    .line 1795
    .restart local v1       #pictureHeight:I
    goto/16 :goto_1

    .line 1797
    .end local v1           #pictureHeight:I
    .end local v2           #pictureWidth:I
    .end local v3           #previewHeight:I
    .end local v4           #previewWidth:I
    :pswitch_2
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1798
    const/16 v4, 0x500

    .line 1799
    .restart local v4       #previewWidth:I
    const/16 v3, 0x2d0

    .line 1804
    .restart local v3       #previewHeight:I
    :goto_6
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1805
    const/16 v2, 0xcc0

    .line 1806
    .restart local v2       #pictureWidth:I
    const/16 v1, 0x72c

    .restart local v1       #pictureHeight:I
    goto/16 :goto_1

    .line 1801
    .end local v1           #pictureHeight:I
    .end local v2           #pictureWidth:I
    .end local v3           #previewHeight:I
    .end local v4           #previewWidth:I
    :cond_5
    const/16 v4, 0x500

    .line 1802
    .restart local v4       #previewWidth:I
    const/16 v3, 0x2d0

    .restart local v3       #previewHeight:I
    goto :goto_6

    .line 1808
    :cond_6
    const/16 v2, 0x500

    .line 1809
    .restart local v2       #pictureWidth:I
    const/16 v1, 0x2d0

    .line 1811
    .restart local v1       #pictureHeight:I
    goto/16 :goto_1

    .line 1813
    .end local v1           #pictureHeight:I
    .end local v2           #pictureWidth:I
    .end local v3           #previewHeight:I
    .end local v4           #previewWidth:I
    :pswitch_3
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1814
    const/16 v4, 0x3f0

    .line 1815
    .restart local v4       #previewWidth:I
    const/16 v3, 0x2a0

    .line 1820
    .restart local v3       #previewHeight:I
    :goto_7
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1821
    const/16 v2, 0xcc0

    .line 1822
    .restart local v2       #pictureWidth:I
    const/16 v1, 0x880

    .restart local v1       #pictureHeight:I
    goto/16 :goto_1

    .line 1817
    .end local v1           #pictureHeight:I
    .end local v2           #pictureWidth:I
    .end local v3           #previewHeight:I
    .end local v4           #previewWidth:I
    :cond_7
    const/16 v4, 0x3f0

    .line 1818
    .restart local v4       #previewWidth:I
    const/16 v3, 0x2a0

    .restart local v3       #previewHeight:I
    goto :goto_7

    .line 1824
    :cond_8
    const/16 v2, 0x2d0

    .line 1825
    .restart local v2       #pictureWidth:I
    const/16 v1, 0x1e0

    .line 1827
    .restart local v1       #pictureHeight:I
    goto/16 :goto_1

    .line 1829
    .end local v1           #pictureHeight:I
    .end local v2           #pictureWidth:I
    .end local v3           #previewHeight:I
    .end local v4           #previewWidth:I
    :pswitch_4
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1830
    const/16 v4, 0x3c0

    .line 1831
    .restart local v4       #previewWidth:I
    const/16 v3, 0x2d0

    .line 1836
    .restart local v3       #previewHeight:I
    :goto_8
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1837
    const/16 v2, 0xcc0

    .line 1838
    .restart local v2       #pictureWidth:I
    const/16 v1, 0x990

    .restart local v1       #pictureHeight:I
    goto/16 :goto_1

    .line 1833
    .end local v1           #pictureHeight:I
    .end local v2           #pictureWidth:I
    .end local v3           #previewHeight:I
    .end local v4           #previewWidth:I
    :cond_9
    const/16 v4, 0x3c0

    .line 1834
    .restart local v4       #previewWidth:I
    const/16 v3, 0x2d0

    .restart local v3       #previewHeight:I
    goto :goto_8

    .line 1840
    :cond_a
    const/16 v2, 0x280

    .line 1841
    .restart local v2       #pictureWidth:I
    const/16 v1, 0x1e0

    .line 1843
    .restart local v1       #pictureHeight:I
    goto/16 :goto_1

    .line 1845
    .end local v1           #pictureHeight:I
    .end local v2           #pictureWidth:I
    .end local v3           #previewHeight:I
    .end local v4           #previewWidth:I
    :pswitch_5
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1846
    const/16 v4, 0x3c0

    .line 1847
    .restart local v4       #previewWidth:I
    const/16 v3, 0x2d0

    .line 1852
    .restart local v3       #previewHeight:I
    :goto_9
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1853
    const/16 v2, 0xcc0

    .line 1854
    .restart local v2       #pictureWidth:I
    const/16 v1, 0x990

    .restart local v1       #pictureHeight:I
    goto/16 :goto_1

    .line 1849
    .end local v1           #pictureHeight:I
    .end local v2           #pictureWidth:I
    .end local v3           #previewHeight:I
    .end local v4           #previewWidth:I
    :cond_b
    const/16 v4, 0x3c0

    .line 1850
    .restart local v4       #previewWidth:I
    const/16 v3, 0x2d0

    .restart local v3       #previewHeight:I
    goto :goto_9

    .line 1856
    :cond_c
    const/16 v2, 0x140

    .line 1857
    .restart local v2       #pictureWidth:I
    const/16 v1, 0xf0

    .line 1859
    .restart local v1       #pictureHeight:I
    goto/16 :goto_1

    .line 1861
    .end local v1           #pictureHeight:I
    .end local v2           #pictureWidth:I
    .end local v3           #previewHeight:I
    .end local v4           #previewWidth:I
    :pswitch_6
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1862
    const/16 v4, 0x370

    .line 1863
    .restart local v4       #previewWidth:I
    const/16 v3, 0x2d0

    .line 1868
    .restart local v3       #previewHeight:I
    :goto_a
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1869
    const/16 v2, 0xcc0

    .line 1870
    .restart local v2       #pictureWidth:I
    const/16 v1, 0x990

    .restart local v1       #pictureHeight:I
    goto/16 :goto_1

    .line 1865
    .end local v1           #pictureHeight:I
    .end local v2           #pictureWidth:I
    .end local v3           #previewHeight:I
    .end local v4           #previewWidth:I
    :cond_d
    const/16 v4, 0x370

    .line 1866
    .restart local v4       #previewWidth:I
    const/16 v3, 0x2d0

    .restart local v3       #previewHeight:I
    goto :goto_a

    .line 1872
    :cond_e
    const/16 v2, 0x140

    .line 1873
    .restart local v2       #pictureWidth:I
    const/16 v1, 0xf0

    .line 1875
    .restart local v1       #pictureHeight:I
    goto/16 :goto_1

    .line 1881
    .end local v1           #pictureHeight:I
    .end local v2           #pictureWidth:I
    .end local v3           #previewHeight:I
    .end local v4           #previewWidth:I
    :cond_f
    const/16 v4, 0x3c0

    .line 1882
    .restart local v4       #previewWidth:I
    const/16 v3, 0x2d0

    .restart local v3       #previewHeight:I
    goto/16 :goto_0

    .line 1888
    :cond_10
    const/16 v2, 0x280

    .line 1889
    .restart local v2       #pictureWidth:I
    const/16 v1, 0x1e0

    .restart local v1       #pictureHeight:I
    goto/16 :goto_1

    .line 1903
    .restart local v5       #resolutionId:I
    :cond_11
    const/16 v4, 0x3c0

    .line 1904
    const/16 v3, 0x2d0

    goto/16 :goto_2

    .line 1907
    :cond_12
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1908
    const/16 v4, 0x370

    .line 1909
    const/16 v3, 0x2d0

    goto/16 :goto_2

    .line 1911
    :cond_13
    const/16 v4, 0x370

    .line 1912
    const/16 v3, 0x2d0

    goto/16 :goto_2

    .line 1970
    .end local v5           #resolutionId:I
    :cond_14
    const-string v8, "CamcorderEngine"

    const-string v9, "resetPreviewSize()- mParameters is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1987
    .restart local v7       #thumbnailSizes:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    :cond_15
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {p0, v8, v14, v14}, Lcom/android/camera/CamcorderEngine;->findBestFpsRange(Lcom/sec/android/seccamera/SecCamera$Parameters;II)[I

    move-result-object v0

    .line 1988
    .restart local v0       #fpsRange:[I
    if-eqz v0, :cond_2

    .line 1989
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    aget v9, v0, v12

    aget v10, v0, v11

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto/16 :goto_3

    .line 2008
    :cond_16
    iget-object v8, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v9, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8, v9}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    goto/16 :goto_4

    .line 2010
    :cond_17
    const-string v8, "CamcorderEngine"

    const-string v9, "resetPreviewSize()- mCameraDevice is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1779
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public scheduleCancelVideoRecording()V
    .locals 3

    .prologue
    .line 1331
    const-string v0, "CamcorderEngine"

    const-string v1, "scheduleCancelVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/16 v1, 0x6a

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/android/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->addRequest(Lcom/android/camera/CeRequest;)V

    .line 1334
    return-void
.end method

.method public scheduleLaunchGallery(Ljava/lang/String;)V
    .locals 2
    .parameter "keyValue"

    .prologue
    .line 1409
    const-string v0, "CamcorderEngine"

    const-string v1, "scheduleLaunchGallery"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/16 v1, 0x1a

    invoke-static {v1, p1}, Lcom/android/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/android/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->addRequest(Lcom/android/camera/CeRequest;)V

    .line 1412
    return-void
.end method

.method public schedulePauseVideoRecording()V
    .locals 3

    .prologue
    .line 1149
    const-string v0, "CamcorderEngine"

    const-string v1, "schedulePauseVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/16 v1, 0x67

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/android/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->addRequest(Lcom/android/camera/CeRequest;)V

    .line 1152
    return-void
.end method

.method public schedulePrepareVideoRecording()V
    .locals 3

    .prologue
    const/16 v2, 0x65

    .line 956
    const-string v0, "CamcorderEngine"

    const-string v1, "schedulePrepareVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/android/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 959
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/android/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/android/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->addRequest(Lcom/android/camera/CeRequest;)V

    .line 961
    :cond_0
    return-void
.end method

.method public scheduleResumeVideoRecording()V
    .locals 3

    .prologue
    .line 1185
    const-string v0, "CamcorderEngine"

    const-string v1, "scheduleResumeVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/16 v1, 0x68

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/android/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->addRequest(Lcom/android/camera/CeRequest;)V

    .line 1188
    return-void
.end method

.method public scheduleStartVideoRecording()V
    .locals 3

    .prologue
    const/16 v2, 0x66

    .line 1013
    const-string v0, "CamcorderEngine"

    const-string v1, "scheduleStartVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/android/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/android/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/android/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->addRequest(Lcom/android/camera/CeRequest;)V

    .line 1018
    :cond_0
    return-void
.end method

.method public scheduleStopVideoRecording()V
    .locals 3

    .prologue
    .line 1219
    const-string v0, "CamcorderEngine"

    const-string v1, "scheduleStopVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/16 v1, 0x69

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/android/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->addRequest(Lcom/android/camera/CeRequest;)V

    .line 1222
    return-void
.end method

.method public final scheduleTakePicture()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 2447
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/android/camera/CeRequestQueue;->searchDuplicateRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2448
    const-string v0, "CamcorderEngine"

    const-string v1, "scheduleTakePicture - Now capturing, retun capture request."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    :goto_0
    return-void

    .line 2451
    :cond_0
    const-string v0, "CamcorderEngine"

    const-string v1, "scheduleTakePicture from camcorder engine"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2452
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/android/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/android/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->addRequest(Lcom/android/camera/CeRequest;)V

    goto :goto_0
.end method

.method public scheduleWaitForSurface()V
    .locals 3

    .prologue
    .line 939
    const-string v0, "CamcorderEngine"

    const-string v1, "scheduleWaitForSurface"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mRequestQueue:Lcom/android/camera/CeRequestQueue;

    const/16 v1, 0x6b

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/android/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CeRequestQueue;->addRequest(Lcom/android/camera/CeRequest;)V

    .line 941
    return-void
.end method

.method protected searchForLastContentUri()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 2264
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/android/camera/CameraEngine$UriSearchingHandler;

    if-nez v0, :cond_0

    .line 2298
    :goto_0
    return-void

    .line 2268
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCurrentVideoTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2269
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2271
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 2272
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2273
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 2274
    .local v8, idIndex:I
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 2276
    .local v7, dataIndex:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    .line 2278
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camcorder;

    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/camera/Camcorder;->onVideoStoringCompleted(Landroid/net/Uri;)V

    .line 2279
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCurrentVideoFilename:Ljava/lang/String;

    .line 2280
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2283
    .end local v7           #dataIndex:I
    .end local v8           #idIndex:I
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/CamcorderEngine;->mRecordingInitiated:Z

    if-eqz v0, :cond_3

    .line 2284
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/android/camera/CameraEngine$UriSearchingHandler;

    if-nez v0, :cond_2

    .line 2285
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2288
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/android/camera/CameraEngine$UriSearchingHandler;

    invoke-virtual {v0, v9}, Lcom/android/camera/CameraEngine$UriSearchingHandler;->removeMessages(I)V

    .line 2289
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/android/camera/CameraEngine$UriSearchingHandler;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v9, v1, v2}, Lcom/android/camera/CameraEngine$UriSearchingHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2294
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2291
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camcorder;

    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/camera/Camcorder;->onVideoStoringCompleted(Landroid/net/Uri;)V

    goto :goto_1

    .line 2296
    :cond_4
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camcorder;

    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/camera/Camcorder;->onVideoStoringCompleted(Landroid/net/Uri;)V

    goto/16 :goto_0
.end method

.method public sendHideFocusRectMessage()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 2628
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mHideFocusRectHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2629
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mHideFocusRectHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2630
    return-void
.end method

.method public setCamcorderShootingMode(I)V
    .locals 4
    .parameter "recordingmode"

    .prologue
    .line 2643
    const/4 v0, 0x0

    .line 2645
    .local v0, shootingmode:I
    const-string v1, "CamcorderEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCamcorderShootingMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    if-nez v1, :cond_1

    .line 2666
    :cond_0
    :goto_0
    return-void

    .line 2650
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public setFrontSensorMirror(I)V
    .locals 3
    .parameter "flip"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2604
    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v2, :cond_0

    .line 2605
    iget-object v2, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-ne p1, v0, :cond_1

    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setFrontSensorMirror(ZI)V

    .line 2607
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 2605
    goto :goto_0
.end method

.method public setIsVideoCaptureIntent(Z)Z
    .locals 3
    .parameter "chkIsVideoCaptureIntent"

    .prologue
    .line 570
    iput-boolean p1, p0, Lcom/android/camera/CamcorderEngine;->mIsVideoCaptureIntent:Z

    .line 571
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsVideoCaptureIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/CamcorderEngine;->mIsVideoCaptureIntent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-boolean v0, p0, Lcom/android/camera/CamcorderEngine;->mIsVideoCaptureIntent:Z

    return v0
.end method

.method public setTouchFocusPosition(II)V
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v12, 0x1

    const/high16 v11, 0x44fa

    const/high16 v10, 0x447a

    const/4 v9, 0x0

    .line 1593
    const-string v6, "CamcorderEngine"

    const-string v7, "setTouchFocusPosition"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    iget-object v6, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/android/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070009

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v1, v6

    .line 1598
    .local v1, focusWidth:I
    iget-object v6, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/android/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07000a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    .line 1599
    .local v0, focusHeight:I
    iget v5, p0, Lcom/android/camera/CamcorderEngine;->mOriginalViewFinderWidth:I

    .line 1600
    .local v5, width:I
    iget v2, p0, Lcom/android/camera/CamcorderEngine;->mOriginalViewFinderHeight:I

    .line 1602
    .local v2, height:I
    iget-object v6, p0, Lcom/android/camera/CamcorderEngine;->mTapArea:Ljava/util/List;

    if-nez v6, :cond_0

    .line 1603
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/camera/CamcorderEngine;->mTapArea:Ljava/util/List;

    .line 1604
    iget-object v6, p0, Lcom/android/camera/CamcorderEngine;->mTapArea:Ljava/util/List;

    new-instance v7, Lcom/sec/android/seccamera/SecCamera$Area;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v7, v8, v12}, Lcom/sec/android/seccamera/SecCamera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1607
    :cond_0
    div-int/lit8 v6, v1, 0x2

    sub-int v6, p1, v6

    sub-int v7, v5, v1

    invoke-static {v6, v9, v7}, Lcom/android/camera/CamcorderEngine;->clamp(III)I

    move-result v3

    .line 1608
    .local v3, left:I
    div-int/lit8 v6, v0, 0x2

    sub-int v6, p2, v6

    sub-int v7, v2, v0

    invoke-static {v6, v9, v7}, Lcom/android/camera/CamcorderEngine;->clamp(III)I

    move-result v4

    .line 1610
    .local v4, top:I
    iget-object v6, p0, Lcom/android/camera/CamcorderEngine;->mTapArea:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/seccamera/SecCamera$Area;

    iget-object v6, v6, Lcom/sec/android/seccamera/SecCamera$Area;->rect:Landroid/graphics/Rect;

    int-to-float v7, v3

    int-to-float v8, v5

    div-float/2addr v7, v8

    mul-float/2addr v7, v11

    sub-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 1611
    iget-object v6, p0, Lcom/android/camera/CamcorderEngine;->mTapArea:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/seccamera/SecCamera$Area;

    iget-object v6, v6, Lcom/sec/android/seccamera/SecCamera$Area;->rect:Landroid/graphics/Rect;

    int-to-float v7, v4

    int-to-float v8, v2

    div-float/2addr v7, v8

    mul-float/2addr v7, v11

    sub-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 1612
    iget-object v6, p0, Lcom/android/camera/CamcorderEngine;->mTapArea:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/seccamera/SecCamera$Area;

    iget-object v6, v6, Lcom/sec/android/seccamera/SecCamera$Area;->rect:Landroid/graphics/Rect;

    add-int v7, v3, v1

    int-to-float v7, v7

    int-to-float v8, v5

    div-float/2addr v7, v8

    mul-float/2addr v7, v11

    sub-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 1613
    iget-object v6, p0, Lcom/android/camera/CamcorderEngine;->mTapArea:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/seccamera/SecCamera$Area;

    iget-object v6, v6, Lcom/sec/android/seccamera/SecCamera$Area;->rect:Landroid/graphics/Rect;

    add-int v7, v4, v0

    int-to-float v7, v7

    int-to-float v8, v2

    div-float/2addr v7, v8

    mul-float/2addr v7, v11

    sub-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 1622
    iget-object v6, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v7, 0x5

    invoke-static {v7}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v12}, Lcom/android/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1625
    iget-object v6, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget-object v7, p0, Lcom/android/camera/CamcorderEngine;->mTapArea:Ljava/util/List;

    invoke-virtual {v6, v7}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 1626
    iget-object v6, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v7, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v6, v7}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 1628
    sput-boolean v12, Lcom/android/camera/CamcorderEngine;->m_bIsTouchFocusPositioned:Z

    .line 1629
    return-void
.end method

.method public startContinuousAF()V
    .locals 1

    .prologue
    .line 1662
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 1663
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->startContinuousAF()V

    .line 1664
    :cond_0
    return-void
.end method

.method public startTouchAutoFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1637
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mMainHandler:Lcom/android/camera/CameraEngine$MainHandler;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraEngine$MainHandler;->removeMessages(I)V

    .line 1638
    sput-boolean v1, Lcom/android/camera/CamcorderEngine;->m_bIsTouchAutoFocusing:Z

    .line 1639
    return-void
.end method

.method public stopContinuousAF()V
    .locals 1

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 1668
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->stopContinuousAF()V

    .line 1669
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CamcorderEngine;->clearFocusState()V

    .line 1670
    return-void
.end method

.method public stopTouchAutoFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1642
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v0, :cond_0

    .line 1643
    const-string v0, "CamcorderEngine"

    const-string v1, "CamcorderParameters is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    :goto_0
    return-void

    .line 1647
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 1648
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camcorder;

    invoke-virtual {v0}, Lcom/android/camera/Camcorder;->isCAFDisabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1649
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1650
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_1

    .line 1651
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/android/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 1653
    :cond_1
    sput-boolean v3, Lcom/android/camera/CamcorderEngine;->m_bIsTouchAutoFocusing:Z

    .line 1654
    sput-boolean v3, Lcom/android/camera/CamcorderEngine;->m_bIsTouchFocusPositioned:Z

    goto :goto_0
.end method

.method public switchToBack()V
    .locals 3

    .prologue
    .line 1507
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchToBackCamera - setSelfMode - SELF_OFF, setCameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraSettings;->setCameraId(I)V

    .line 1509
    invoke-direct {p0}, Lcom/android/camera/CamcorderEngine;->updateSettingsWhenSwitchCamera()V

    .line 1510
    return-void
.end method

.method public switchToFront()V
    .locals 3

    .prologue
    .line 1501
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchToFrontCamera - setCameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mCameraSettings:Lcom/android/camera/CameraSettings;

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraSettings;->setCameraId(I)V

    .line 1503
    invoke-direct {p0}, Lcom/android/camera/CamcorderEngine;->updateSettingsWhenSwitchCamera()V

    .line 1504
    return-void
.end method

.method public waitForStartRecordingThreadComplete()V
    .locals 1

    .prologue
    .line 1102
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1103
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 1105
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mStartRecordingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 1106
    iget-object v0, p0, Lcom/android/camera/CamcorderEngine;->mStartRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1111
    :cond_1
    :goto_0
    return-void

    .line 1108
    :catch_0
    move-exception v0

    goto :goto_0
.end method
