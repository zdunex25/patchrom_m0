.class public Lcom/sec/android/app/camera/CamcorderEngine;
.super Lcom/sec/android/app/camera/CameraEngine;
.source "CamcorderEngine.java"

# interfaces
.implements Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;
.implements Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;,
        Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;
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
.field private mAutoFocusCallback:Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;

.field private mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

.field private mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

.field private mCamcorderShootingMode:I

.field private mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mCameraVideoFilename:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentVideoFilename:Ljava/lang/String;

.field private mCurrentVideoTitle:Ljava/lang/String;

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field private mErrorCallback:Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;

.field private mHideFocusRectHandler:Landroid/os/Handler;

.field private mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

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

    .line 108
    sput-boolean v0, Lcom/sec/android/app/camera/CamcorderEngine;->m_bIsTouchAutoFocusing:Z

    .line 109
    sput-boolean v0, Lcom/sec/android/app/camera/CamcorderEngine;->m_bIsTouchFocusPositioned:Z

    .line 149
    sput-boolean v0, Lcom/sec/android/app/camera/CamcorderEngine;->isSystemSoundEffectEnabled:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .locals 7
    .parameter "activityContext"

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 174
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraEngine;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 101
    new-instance v0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;-><init>(Lcom/sec/android/app/camera/CamcorderEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mErrorCallback:Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;

    .line 106
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    .line 118
    iput-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    .line 123
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPausing:Z

    .line 124
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPreviewing:Z

    .line 127
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRecordingInitiated:Z

    .line 135
    iput-wide v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoFileLengthInByte:J

    .line 136
    iput-wide v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoRecordingTimeInMiliSecond:J

    .line 138
    iput-wide v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->maxFileSize:J

    .line 140
    iput-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    .line 141
    iput-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStartRecordingThread:Ljava/lang/Thread;

    .line 143
    new-instance v0, Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;-><init>(Lcom/sec/android/app/camera/CamcorderEngine;Lcom/sec/android/app/camera/CamcorderEngine$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mAutoFocusCallback:Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;

    .line 151
    iput v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRetry:I

    .line 153
    iput v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderShootingMode:I

    .line 160
    new-instance v0, Lcom/sec/android/app/camera/CamcorderEngine$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CamcorderEngine$1;-><init>(Lcom/sec/android/app/camera/CamcorderEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mHideFocusRectHandler:Landroid/os/Handler;

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStateDepot:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/CeStateRecording;

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-direct {v2, p0, v3, v5}, Lcom/sec/android/app/camera/CeStateRecording;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStateDepot:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/CeStateWaitForSurface;

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-direct {v2, p0, v3, v6}, Lcom/sec/android/app/camera/CeStateWaitForSurface;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mContentResolver:Landroid/content/ContentResolver;

    .line 179
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/CamcorderEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->openCameraDevice()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/CamcorderEngine;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/CamcorderEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->initializeRecorder()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/CamcorderEngine;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/camera/CamcorderEngine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/CamcorderEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->disableAlertSound()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/CamcorderEngine;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mHideFocusRectHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/CamcorderEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->setSystemSoundEffect()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/CamcorderEngine;)Lcom/sec/android/seccamera/SecCamera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/CamcorderEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->updateOutdoorVisibility()V

    return-void
.end method

.method private cleanupEmptyFile()V
    .locals 5

    .prologue
    .line 2091
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2092
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2093
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2094
    const-string v1, "CamcorderEngine"

    const-string v2, "Empty video file deleted"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2095
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    .line 2098
    .end local v0           #f:Ljava/io/File;
    :cond_0
    return-void
.end method

.method private cleanupTempFile()V
    .locals 3

    .prologue
    .line 2101
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getTempFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2102
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2103
    const-string v1, "CamcorderEngine"

    const-string v2, "temp video file deleted"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    :cond_0
    return-void
.end method

.method private createVideoPath()V
    .locals 25

    .prologue
    .line 1990
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1991
    .local v3, calendar:Ljava/util/GregorianCalendar;
    new-instance v19, Landroid/text/format/Time;

    invoke-direct/range {v19 .. v19}, Landroid/text/format/Time;-><init>()V

    .line 1992
    .local v19, time:Landroid/text/format/Time;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v20

    .line 1993
    .local v20, timezone:Ljava/util/TimeZone;
    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1994
    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v8

    .line 1996
    .local v8, dateTaken:J
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CamcorderEngine;->cleanupTempFile()V

    .line 1999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v23

    if-nez v23, :cond_1

    .line 2000
    sget-object v5, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    .line 2007
    .local v5, cameraDirPath:Ljava/lang/String;
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getFileFormatFromProfile()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 2008
    const-string v11, ".mp4"

    .line 2009
    .local v11, extension:Ljava/lang/String;
    const-string v17, "video/mp4"

    .line 2015
    .local v17, mimeType:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 2016
    const-string v11, ".3gp"

    .line 2017
    const-string v17, "video/3gpp"

    .line 2020
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2021
    .local v4, cameraDir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v23

    if-nez v23, :cond_3

    .line 2022
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v23

    if-nez v23, :cond_3

    .line 2023
    const-string v23, "CamcorderEngine"

    const-string v24, "directory is not made"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    :goto_2
    return-void

    .line 2002
    .end local v4           #cameraDir:Ljava/io/File;
    .end local v5           #cameraDirPath:Ljava/lang/String;
    .end local v11           #extension:Ljava/lang/String;
    .end local v17           #mimeType:Ljava/lang/String;
    :cond_1
    sget-object v5, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    .restart local v5       #cameraDirPath:Ljava/lang/String;
    goto :goto_0

    .line 2011
    :cond_2
    const-string v11, ".3gp"

    .line 2012
    .restart local v11       #extension:Ljava/lang/String;
    const-string v17, "video/3gpp"

    .restart local v17       #mimeType:Ljava/lang/String;
    goto :goto_1

    .line 2029
    .restart local v4       #cameraDir:Ljava/io/File;
    :cond_3
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 2030
    .local v7, date:Ljava/util/Date;
    const-string v23, "yyyyMMdd_kkmmss"

    move-object/from16 v0, v23

    invoke-static {v0, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .line 2033
    .local v16, filepart:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 2035
    .local v6, currentAddress:Ljava/lang/String;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v23

    if-eqz v23, :cond_4

    .line 2036
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "_"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 2040
    .local v18, name:Ljava/lang/String;
    :goto_3
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2041
    .local v13, filename:Ljava/lang/String;
    move-object/from16 v21, v18

    .line 2042
    .local v21, title:Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2045
    .local v10, displayName:Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2046
    .local v12, f:Ljava/io/File;
    const/4 v14, 0x0

    .line 2047
    .local v14, filenumber:I
    :goto_4
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_6

    .line 2048
    const-string v23, "CamcorderEngine"

    const-string v24, "Duplicated file name found"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    invoke-virtual {v7, v8, v9}, Ljava/util/Date;->setTime(J)V

    .line 2050
    const-string v23, "yyyyMMdd_kkmmss"

    move-object/from16 v0, v23

    invoke-static {v0, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .line 2051
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v23

    if-eqz v23, :cond_5

    .line 2052
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "_"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 2055
    :goto_5
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    add-int/lit8 v15, v14, 0x1

    .end local v14           #filenumber:I
    .local v15, filenumber:I
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ")"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2056
    move-object/from16 v21, v18

    .line 2057
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2058
    const-string v23, "CamcorderEngine"

    const-string v24, "New file name created"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    new-instance v12, Ljava/io/File;

    .end local v12           #f:Ljava/io/File;
    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v12       #f:Ljava/io/File;
    move v14, v15

    .end local v15           #filenumber:I
    .restart local v14       #filenumber:I
    goto/16 :goto_4

    .line 2038
    .end local v10           #displayName:Ljava/lang/String;
    .end local v12           #f:Ljava/io/File;
    .end local v13           #filename:Ljava/lang/String;
    .end local v14           #filenumber:I
    .end local v18           #name:Ljava/lang/String;
    .end local v21           #title:Ljava/lang/String;
    :cond_4
    move-object/from16 v18, v16

    .restart local v18       #name:Ljava/lang/String;
    goto/16 :goto_3

    .line 2054
    .restart local v10       #displayName:Ljava/lang/String;
    .restart local v12       #f:Ljava/io/File;
    .restart local v13       #filename:Ljava/lang/String;
    .restart local v14       #filenumber:I
    .restart local v21       #title:Ljava/lang/String;
    :cond_5
    move-object/from16 v18, v16

    goto :goto_5

    .line 2062
    :cond_6
    new-instance v22, Landroid/content/ContentValues;

    const/16 v23, 0xa

    invoke-direct/range {v22 .. v23}, Landroid/content/ContentValues;-><init>(I)V

    .line 2064
    .local v22, values:Landroid/content/ContentValues;
    const-string v23, "title"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2065
    const-string v23, "_display_name"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2066
    const-string v23, "datetaken"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2067
    const-string v23, "mime_type"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2068
    const-string v23, "_data"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2084
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    .line 2085
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoTitle:Ljava/lang/String;

    .line 2087
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    goto/16 :goto_2
.end method

.method private disableAlertSound()V
    .locals 3

    .prologue
    .line 1089
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 1090
    .local v0, statusBar:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_0

    .line 1091
    const/high16 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1093
    :cond_0
    return-void
.end method

.method private dumpCamcorderInnerProfile()V
    .locals 3

    .prologue
    .line 847
    const-string v0, "CamcorderEngine"

    const-string v1, "[Dump] camcorder inner profile"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileFormat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mOutputFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoCodec = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoEncoder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoBitRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoFrameWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoFrameHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoFrameRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoFps:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioCodec = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioEncoder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioBitRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioBitrate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioSampleRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioSamplingRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioChannels = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioChannels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    return-void
.end method

.method private enableAlertSound()V
    .locals 3

    .prologue
    .line 1097
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 1098
    .local v0, statusBar:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_0

    .line 1099
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1101
    :cond_0
    return-void
.end method

.method private getAudioBitRateFromProfile()I
    .locals 1

    .prologue
    .line 1986
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v0, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioBitrate:I

    return v0
.end method

.method private getFileFormatFromProfile()I
    .locals 1

    .prologue
    .line 1978
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v0, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mOutputFormat:I

    return v0
.end method

.method private getTempFileName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2132
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v1

    if-nez v1, :cond_0

    .line 2133
    sget-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    .line 2137
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

    .line 2135
    .end local v0           #cameraDirPath:Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    .restart local v0       #cameraDirPath:Ljava/lang/String;
    goto :goto_0
.end method

.method private getVideoBitRateFromProfile()I
    .locals 1

    .prologue
    .line 1982
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v0, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    return v0
.end method

.method private initializeRecorder()V
    .locals 12

    .prologue
    .line 588
    const-string v8, "CamcorderEngine"

    const-string v9, "initializeRecorder"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v8, :cond_0

    .line 691
    :goto_0
    return-void

    .line 593
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->readVideoPreferences()V

    .line 595
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 596
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 598
    .local v3, myExtras:Landroid/os/Bundle;
    const-wide/16 v4, 0x0

    .line 600
    .local v4, requestedSizeLimit:J
    iget-boolean v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mIsVideoCaptureIntent:Z

    if-eqz v8, :cond_2

    if-eqz v3, :cond_2

    .line 601
    const-string v8, "output"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 602
    .local v7, saveUri:Landroid/net/Uri;
    if-eqz v7, :cond_1

    .line 603
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->closeVideoFileDescriptor()V

    .line 605
    :try_start_0
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "rw"

    invoke-virtual {v8, v7, v9}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 607
    iput-object v7, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    .line 608
    const-string v8, "CamcorderEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCameraVideoFileDescriptor: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    :cond_1
    :goto_1
    const-string v8, "android.intent.extra.sizeLimit"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 615
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

    .line 618
    .end local v7           #saveUri:Landroid/net/Uri;
    :cond_2
    new-instance v8, Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-direct {v8}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;-><init>()V

    iput-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    .line 619
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v8}, Lcom/sec/android/seccamera/SecCamera;->unlock()V

    .line 620
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v8, v9}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setCamera(Lcom/sec/android/seccamera/SecCamera;)V

    .line 622
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v8, p0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnErrorListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;)V

    .line 623
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v8, p0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnInfoListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;)V

    .line 625
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->setRecorderUsingInnerProfile()V

    .line 628
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v9}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 630
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CheckMemory;->getAvailableStorage(I)J

    move-result-wide v8

    const-wide/32 v10, 0x500000

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->maxFileSize:J

    .line 631
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_3

    iget-wide v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->maxFileSize:J

    cmp-long v8, v4, v8

    if-gez v8, :cond_3

    .line 632
    iput-wide v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->maxFileSize:J

    .line 635
    :cond_3
    iget-wide v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->maxFileSize:J

    const-wide v10, 0xffffffffL

    cmp-long v8, v8, v10

    if-lez v8, :cond_4

    .line 636
    const-wide v8, 0xffffffffL

    iput-wide v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->maxFileSize:J

    .line 639
    :cond_4
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 640
    iget-boolean v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mIsVideoCaptureIntent:Z

    if-eqz v8, :cond_a

    if-eqz v3, :cond_a

    .line 641
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getRequestedRecordingSize()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->maxFileSize:J

    .line 648
    :cond_5
    :goto_2
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_7

    .line 649
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-eqz v8, :cond_6

    const-wide/32 v8, 0x3200000

    cmp-long v8, v4, v8

    if-lez v8, :cond_7

    .line 650
    :cond_6
    const-wide/32 v8, 0x3200000

    iput-wide v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->maxFileSize:J

    .line 654
    :cond_7
    const-string v8, "CamcorderEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "maxFileSize = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->maxFileSize:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :try_start_1
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-wide v9, p0, Lcom/sec/android/app/camera/CamcorderEngine;->maxFileSize:J

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setMaxFileSize(J)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 664
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastOrientation()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/CamcorderEngine;->setOrientationOnTake(I)V

    .line 665
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getOrientationOnTake()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/CamcorderEngine;->calculateOrientationForPicture(I)I

    move-result v6

    .line 667
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

    .line 668
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v8, :cond_8

    .line 669
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v8, v6}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOrientationHint(I)V

    .line 675
    :cond_8
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v8, :cond_9

    .line 677
    :try_start_2
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v8}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->prepare()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 690
    :cond_9
    :goto_4
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    goto/16 :goto_0

    .line 609
    .end local v6           #rotation:I
    .restart local v7       #saveUri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 611
    .local v1, ex:Ljava/io/FileNotFoundException;
    const-string v8, "CamcorderEngine"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 643
    .end local v1           #ex:Ljava/io/FileNotFoundException;
    .end local v7           #saveUri:Landroid/net/Uri;
    :cond_a
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getMaxRecordingSize()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->maxFileSize:J

    .line 644
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    iget-wide v9, p0, Lcom/sec/android/app/camera/CamcorderEngine;->maxFileSize:J

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/app/camera/CameraSettings;->setRequestedRecordingSize(J)V

    goto/16 :goto_2

    .line 658
    :catch_1
    move-exception v0

    .line 659
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v8, "CamcorderEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setMaxFileSize failed (maxFileSize: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->maxFileSize:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    const-string v8, "CamcorderEngine"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    goto/16 :goto_3

    .line 678
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v6       #rotation:I
    :catch_2
    move-exception v0

    .line 680
    .local v0, e:Ljava/io/IOException;
    const-string v8, "CamcorderEngine"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 683
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopVideoRecording()V

    .line 684
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 687
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    const/4 v9, -0x4

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_4
.end method

.method private makeVideoFileSlow()V
    .locals 0

    .prologue
    .line 2128
    return-void
.end method

.method private openCameraDevice()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 340
    const-string v1, "CamcorderEngine"

    const-string v2, "opening camera device..."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/Util;->openCamera(Landroid/app/Activity;I)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    .line 344
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 345
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.camera.ACTION_START_BACK_CAMERA"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :cond_0
    :goto_0
    iput v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRetry:I

    .line 368
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v1, :cond_1

    .line 369
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mErrorCallback:Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setErrorCallback(Lcom/sec/android/seccamera/SecCamera$ErrorCallback;)V

    .line 370
    const-string v1, "CamcorderEngine"

    const-string v2, "camera device is opened."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v1}, Lcom/sec/android/seccamera/SecCamera;->getParameters()Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    .line 374
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v1, :cond_1

    .line 375
    const-string v1, "CamcorderEngine"

    const-string v2, "CamcorderParameters is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    .line 384
    :cond_1
    :goto_1
    return-void

    .line 347
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.camera.ACTION_START_FRONT_CAMERA"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 349
    :catch_0
    move-exception v0

    .line 351
    .local v0, e:Ljava/lang/Exception;
    iget v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRetry:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRetry:I

    .line 352
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v1, :cond_3

    iget v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRetry:I

    if-gez v1, :cond_3

    .line 353
    const-string v1, "CamcorderEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "service cannot connect. retry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRetry:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->openCameraDevice()V

    .line 356
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v1, :cond_1

    .line 358
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v1, :cond_4

    iget v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRetry:I

    if-ltz v1, :cond_4

    .line 359
    const-string v1, "CamcorderEngine"

    const-string v2, "service cannot connect. critical exception occured."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iput v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRetry:I

    .line 361
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 363
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRetry:I

    if-gez v1, :cond_0

    goto :goto_1
.end method

.method private readVideoPreferences()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 2263
    iget-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderQuality()I

    move-result v4

    .line 2266
    .local v4, videoQuality:I
    iget-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2267
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "android.intent.extra.videoQuality"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2268
    const-string v6, "android.intent.extra.videoQuality"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2269
    .local v0, extraVideoQuality:I
    if-nez v0, :cond_2

    move v4, v5

    .line 2274
    .end local v0           #extraVideoQuality:I
    :cond_0
    :goto_0
    iput v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    .line 2275
    const-string v6, "android.intent.extra.durationLimit"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2276
    const-string v6, "android.intent.extra.durationLimit"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 2277
    .local v3, seconds:I
    mul-int/lit16 v5, v3, 0x3e8

    iput v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    .line 2307
    .end local v3           #seconds:I
    :cond_1
    :goto_1
    new-instance v5, Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v5, v6, v4}, Lcom/sec/android/app/camera/MediaRecorderProfile;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    iput-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    .line 2308
    return-void

    .line 2269
    .restart local v0       #extraVideoQuality:I
    :cond_2
    const/4 v4, 0x2

    goto :goto_0

    .line 2279
    .end local v0           #extraVideoQuality:I
    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v5, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camcorder;->getRemainTime()I

    move-result v5

    mul-int/lit16 v2, v5, 0x3e8

    .line 2280
    .local v2, nRemainTime:I
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderVideoDurationInMS()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    .line 2281
    iget v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    if-le v5, v2, :cond_1

    .line 2282
    const-string v5, "CamcorderEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMaxVideoDurationInMs("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

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

    .line 2283
    iput v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    goto :goto_1
.end method

.method private registerVideo()V
    .locals 11

    .prologue
    const v10, 0x7f0900ec

    const/4 v9, 0x0

    .line 2147
    const-string v5, "CamcorderEngine"

    const-string v6, "registerVideo"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v5, :cond_0

    .line 2150
    const-string v5, "content://media/external/video/media"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2151
    .local v4, videoTable:Landroid/net/Uri;
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v6, "_size"

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2152
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v6, "resolution"

    iget-object v7, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2156
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 2158
    .local v2, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 2159
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v6, "duration"

    const/16 v7, 0x9

    invoke-virtual {v2, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    .line 2167
    :try_start_1
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2175
    :goto_0
    :try_start_2
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    .line 2177
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v5, Lcom/sec/android/app/camera/Camcorder;

    iget-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/Camcorder;->onVideoStoringCompleted(Landroid/net/Uri;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_8

    .line 2221
    .end local v2           #retriever:Landroid/media/MediaMetadataRetriever;
    .end local v4           #videoTable:Landroid/net/Uri;
    :goto_1
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 2222
    return-void

    .line 2168
    .restart local v2       #retriever:Landroid/media/MediaMetadataRetriever;
    .restart local v4       #videoTable:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 2169
    .local v1, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 2160
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 2161
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string v5, "CamcorderEngine"

    const-string v6, "setDataSource failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v6, "duration"

    iget-wide v7, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoRecordingTimeInMiliSecond:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2167
    :try_start_4
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 2168
    :catch_2
    move-exception v1

    .line 2169
    .restart local v1       #ex:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 2163
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catch_3
    move-exception v1

    .line 2164
    .restart local v1       #ex:Ljava/lang/RuntimeException;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2167
    :try_start_6
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 2168
    :catch_4
    move-exception v1

    .line 2169
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 2166
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v5

    .line 2167
    :try_start_7
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_5

    .line 2170
    :goto_2
    throw v5

    .line 2168
    :catch_5
    move-exception v1

    .line 2169
    .restart local v1       #ex:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_2

    .line 2178
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catch_6
    move-exception v3

    .line 2179
    .local v3, sfe:Landroid/database/sqlite/SQLiteFullException;
    const-string v5, "CamcorderEngine"

    const-string v6, "Not enough space in database"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-static {v5, v10, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 2181
    .end local v3           #sfe:Landroid/database/sqlite/SQLiteFullException;
    :catch_7
    move-exception v0

    .line 2182
    .local v0, e:Ljava/lang/UnsupportedOperationException;
    const-string v5, "CamcorderEngine"

    const-string v6, "insert failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2184
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v5, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camcorder;->onVideoStoringFailed()V

    goto :goto_1

    .line 2185
    .end local v0           #e:Ljava/lang/UnsupportedOperationException;
    :catch_8
    move-exception v0

    .line 2186
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v5, "CamcorderEngine"

    const-string v6, "insert failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2188
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v5, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camcorder;->onVideoStoringFailed()V

    goto/16 :goto_1

    .line 2193
    .end local v0           #e:Ljava/lang/IllegalStateException;
    .end local v2           #retriever:Landroid/media/MediaMetadataRetriever;
    .end local v4           #videoTable:Landroid/net/Uri;
    :cond_0
    :try_start_8
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v5, Lcom/sec/android/app/camera/Camcorder;

    iget-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/Camcorder;->onVideoStoringCompleted(Landroid/net/Uri;)V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_8 .. :try_end_8} :catch_a

    goto/16 :goto_1

    .line 2194
    :catch_9
    move-exception v3

    .line 2195
    .restart local v3       #sfe:Landroid/database/sqlite/SQLiteFullException;
    const-string v5, "CamcorderEngine"

    const-string v6, "Not enough space in database"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-static {v5, v10, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 2197
    .end local v3           #sfe:Landroid/database/sqlite/SQLiteFullException;
    :catch_a
    move-exception v0

    .line 2198
    .local v0, e:Ljava/lang/UnsupportedOperationException;
    const-string v5, "CamcorderEngine"

    const-string v6, "insert failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2200
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v5, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camcorder;->onVideoStoringFailed()V

    goto/16 :goto_1
.end method

.method private renameTempFile()V
    .locals 3

    .prologue
    .line 2141
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getTempFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2142
    .local v1, src:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2143
    .local v0, dest:Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2144
    return-void
.end method

.method private setRecorderUsingInnerProfile()V
    .locals 5

    .prologue
    const/16 v4, 0x2d0

    const/16 v2, 0x1e0

    const/4 v3, 0x1

    .line 698
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioRecording()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 699
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioSource(I)V

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoSource(I)V

    .line 709
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 710
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFormat(I)V

    .line 714
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setMaxDuration(I)V

    .line 722
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setDurationInterval(I)V

    .line 723
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v0, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    const/16 v1, 0x780

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v0, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    const/16 v1, 0x438

    if-ne v0, v1, :cond_4

    .line 724
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v1, 0xaf000

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_a

    .line 748
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 758
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoFps:I

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoFrameRate(I)V

    .line 759
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoSize(II)V

    .line 761
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoEncodingBitRate(I)V

    .line 762
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioBitrate:I

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioEncodingBitRate(I)V

    .line 763
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioChannels:I

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioChannels(I)V

    .line 764
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioSamplingRate:I

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioSamplingRate(I)V

    .line 765
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoEncoder:I

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoEncoder(I)V

    .line 767
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioRecording()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 768
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioEncoder:I

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioEncoder(I)V

    .line 769
    :cond_2
    return-void

    .line 712
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mOutputFormat:I

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFormat(I)V

    goto/16 :goto_0

    .line 725
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v0, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    const/16 v1, 0x500

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v0, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    if-ne v0, v4, :cond_5

    .line 726
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v1, 0x7d000

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_1

    .line 740
    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 727
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v0, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    if-ne v0, v4, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v0, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    if-ne v0, v2, :cond_6

    .line 728
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v1, 0x1e000

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_1

    .line 729
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v0, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    const/16 v1, 0x280

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v0, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    if-ne v0, v2, :cond_7

    .line 730
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v1, 0x19000

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_1

    .line 731
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v0, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    const/16 v1, 0x140

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v0, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_8

    .line 732
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/16 v1, 0x7800

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_1

    .line 733
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v0, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    const/16 v1, 0xb0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v0, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    const/16 v1, 0x90

    if-ne v0, v1, :cond_1

    .line 734
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v0

    if-ne v0, v3, :cond_9

    .line 735
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/16 v1, 0x1800

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_1

    .line 737
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/16 v1, 0x3000

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 750
    :cond_a
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->createVideoPath()V

    .line 751
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getTempFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private setRecorderUsingProfile()V
    .locals 5

    .prologue
    const/16 v4, 0x2d0

    const/16 v2, 0x1e0

    const/4 v3, 0x1

    .line 772
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioRecording()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 773
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioSource(I)V

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoSource(I)V

    .line 783
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 784
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFormat(I)V

    .line 788
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setMaxDuration(I)V

    .line 796
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setDurationInterval(I)V

    .line 797
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v1, 0x780

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v1, 0x438

    if-ne v0, v1, :cond_4

    .line 798
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v1, 0xaf000

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_a

    .line 822
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 832
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoFrameRate(I)V

    .line 833
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoSize(II)V

    .line 834
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoEncodingBitRate(I)V

    .line 837
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioEncodingBitRate(I)V

    .line 838
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioChannels(I)V

    .line 839
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioSamplingRate(I)V

    .line 840
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoEncoder(I)V

    .line 842
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioRecording()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 843
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioEncoder(I)V

    .line 844
    :cond_2
    return-void

    .line 786
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFormat(I)V

    goto/16 :goto_0

    .line 799
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v1, 0x500

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-ne v0, v4, :cond_5

    .line 800
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v1, 0x7d000

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_1

    .line 814
    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 801
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    if-ne v0, v4, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-ne v0, v2, :cond_6

    .line 802
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v1, 0x1e000

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_1

    .line 803
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v1, 0x280

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-ne v0, v2, :cond_7

    .line 804
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v1, 0x19000

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_1

    .line 805
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v1, 0x140

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_8

    .line 806
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/16 v1, 0x7800

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_1

    .line 807
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v1, 0xb0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v1, 0x90

    if-ne v0, v1, :cond_1

    .line 808
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v0

    if-ne v0, v3, :cond_9

    .line 809
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/16 v1, 0x1800

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_1

    .line 811
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/16 v1, 0x3000

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 824
    :cond_a
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->createVideoPath()V

    .line 825
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getTempFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private setSystemSoundEffect()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1069
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sound_effects_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/sec/android/app/camera/CamcorderEngine;->isSystemSoundEffectEnabled:Z

    .line 1071
    return-void
.end method

.method private updateOutdoorVisibility()V
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x4

    :try_start_0
    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)Z

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderOutdoorVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 261
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)Z

    .line 269
    :goto_0
    return-void

    .line 263
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateSettingsWhenSwitchCamera()V
    .locals 1

    .prologue
    .line 1469
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->refreshCamcorderSettingValuesFromPreferences()V

    .line 1470
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->refreshCamcorderSettingValues()V

    .line 1471
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->updateRecordingModeWhenSwitchCamera()V

    .line 1472
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderSettingValuesAsDefault()V

    .line 1473
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->refreshButtonDimForCamcorder()V

    .line 1474
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1475
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->setDefaultCamcorderVideoDuration()V

    .line 1477
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelAutoFocus()V
    .locals 2

    .prologue
    .line 1706
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v0, :cond_1

    .line 1707
    const-string v0, "CamcorderEngine"

    const-string v1, "cancelAutoFocus - this cmd is skiped because mCameraDevice is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    :cond_0
    :goto_0
    return-void

    .line 1711
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    if-eqz v0, :cond_2

    .line 1712
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1713
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    new-instance v1, Lcom/sec/android/app/camera/CamcorderEngine$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CamcorderEngine$6;-><init>(Lcom/sec/android/app/camera/CamcorderEngine;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 1722
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->isAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1723
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    if-eqz v0, :cond_0

    .line 1724
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public closeCamcorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 272
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 273
    const-string v0, "CamcorderEngine"

    const-string v1, "closeCamcorder"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraHolder;->release()V

    .line 276
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v2}, Lcom/sec/android/seccamera/SecCamera;->setZoomChangeListener(Lcom/sec/android/seccamera/SecCamera$OnZoomChangeListener;)V

    .line 277
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v2}, Lcom/sec/android/seccamera/SecCamera;->setFaceDetectionListener(Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;)V

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v2}, Lcom/sec/android/seccamera/SecCamera;->setErrorCallback(Lcom/sec/android/seccamera/SecCamera$ErrorCallback;)V

    .line 279
    iput-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    .line 280
    iput-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    .line 284
    :cond_0
    return-void
.end method

.method public closeVideoFileDescriptor()V
    .locals 3

    .prologue
    .line 882
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 884
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 890
    :cond_0
    return-void

    .line 885
    :catch_0
    move-exception v0

    .line 886
    .local v0, e:Ljava/io/IOException;
    const-string v1, "CamcorderEngine"

    const-string v2, "Fail to close fd"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public disableSystemSoundEffect()V
    .locals 3

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sound_effects_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1080
    return-void
.end method

.method public doAutoFocusAsync()V
    .locals 2

    .prologue
    .line 1699
    const-string v0, "CamcorderEngine"

    const-string v1, "doAutoFocusAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mFocusState:I

    .line 1702
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mAutoFocusCallback:Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->autoFocus(Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;)V

    .line 1703
    return-void
.end method

.method public doCancelVideoRecordingSync()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1293
    const-string v5, "CamcorderEngine"

    const-string v6, "doCancelVideoRecordingSync"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    const-string v5, "CamcorderEngine"

    const-string v6, "Cancelling VideoRecording..."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    iget-boolean v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v5, :cond_6

    .line 1298
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderFlashMode()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 1299
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1300
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v5, v6}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 1306
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->reset()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1311
    :goto_0
    iput-boolean v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    .line 1312
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 1317
    :cond_1
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.server.CpuGovernorService.action.IOBUSY_UNVOTE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1319
    .local v2, ioBusyUnVoteIntent:Landroid/content/Intent;
    const-string v5, "com.android.server.CpuGovernorService.voteType"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1320
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v5, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1322
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.sec.chaton.util.ACTION_VIDEO_RECORDING_STOP"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1323
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getSystemSoundEffect()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1324
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->enableSystemSoundEffect()V

    .line 1334
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->cleanupTempFile()V

    .line 1336
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v5, :cond_4

    .line 1337
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1338
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 1340
    .local v3, myExtras:Landroid/os/Bundle;
    iget-boolean v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mIsVideoCaptureIntent:Z

    if-eqz v5, :cond_3

    if-eqz v3, :cond_3

    .line 1341
    const-string v5, "output"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 1344
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

    .line 1349
    .end local v4           #saveUri:Landroid/net/Uri;
    :cond_3
    :goto_2
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1353
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #myExtras:Landroid/os/Bundle;
    :cond_4
    iput-boolean v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRecordingInitiated:Z

    .line 1355
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->enableAlertSound()V

    .line 1356
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v5, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camcorder;->hideZoomMenu()V

    .line 1357
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v5, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camcorder;->isRecordingMenuTop()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1358
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v5, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camcorder;->hideRecordingLayout()V

    .line 1359
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 1361
    :cond_5
    const-string v5, "CamcorderEngine"

    const-string v6, "Cancelling VideoRecording is completed!"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    return-void

    .line 1307
    .end local v2           #ioBusyUnVoteIntent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1308
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

    .line 1313
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_6
    iget-boolean v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    if-eqz v5, :cond_1

    .line 1314
    iput-boolean v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    goto/16 :goto_1

    .line 1345
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #ioBusyUnVoteIntent:Landroid/content/Intent;
    .restart local v3       #myExtras:Landroid/os/Bundle;
    .restart local v4       #saveUri:Landroid/net/Uri;
    :catch_1
    move-exception v5

    goto :goto_2
.end method

.method public doChangeParameterSync(Ljava/lang/Object;)V
    .locals 8
    .parameter "param"

    .prologue
    const/16 v7, 0xb

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 446
    const-string v1, "CamcorderEngine"

    const-string v4, "doChangeParameterSync"

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v1, :cond_1

    .line 449
    const-string v1, "CamcorderEngine"

    const-string v2, "returning because mCameraDevice is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v1, :cond_2

    .line 454
    const-string v1, "CamcorderEngine"

    const-string v2, "CamcorderParameters is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 458
    check-cast v0, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;

    .line 460
    .local v0, p:Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 502
    :goto_1
    :sswitch_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v1

    const/16 v4, 0x68

    if-ne v1, v4, :cond_3

    .line 503
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v1

    const/16 v4, 0xe

    invoke-static {v1, v4}, Lcom/sec/android/app/camera/CameraResolution;->compare(II)I

    move-result v1

    if-ltz v1, :cond_5

    .line 505
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CeRequestQueue;->searchDuplicateRequest(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 519
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v3}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 524
    :goto_3
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v1

    const/16 v3, 0x65

    if-ne v1, v3, :cond_0

    .line 525
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 526
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->setCamcorderShootingMode(Z)V

    goto :goto_0

    .line 462
    :sswitch_1
    const-string v1, "CamcorderEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doChangeParameterSync() - key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 466
    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 469
    :sswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getEffectString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 472
    :sswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getWhitebalanceString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 475
    :sswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getIsoString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 478
    :sswitch_6
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 481
    :sswitch_7
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setVideoStabilization(Z)V

    goto/16 :goto_1

    :cond_4
    move v1, v3

    goto :goto_4

    .line 487
    :sswitch_8
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 508
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 521
    :cond_6
    const-string v1, "CamcorderEngine"

    const-string v3, "parameter will set next operation coming"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 460
    nop

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
    .end sparse-switch
.end method

.method public doLaunchGallerySync(Ljava/lang/String;)V
    .locals 2
    .parameter "keyValue"

    .prologue
    .line 1371
    const-string v0, "CamcorderEngine"

    const-string v1, "doLaunchGallerySync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/Camcorder;->onLaunchGallery(Ljava/lang/String;)V

    .line 1374
    return-void
.end method

.method public doPauseVideoRecordingSync()V
    .locals 3

    .prologue
    .line 1110
    const-string v1, "CamcorderEngine"

    const-string v2, "doPauseVideoRecordingSync"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-nez v1, :cond_0

    .line 1113
    const-string v1, "CamcorderEngine"

    const-string v2, "SecMediaRecorder is not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    :goto_0
    return-void

    .line 1117
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    if-nez v1, :cond_1

    .line 1118
    const-string v1, "CamcorderEngine"

    const-string v2, "Recording is not started yet."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1123
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderFlashMode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 1124
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1125
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 1129
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->pause()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1136
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->enableAlertSound()V

    goto :goto_0

    .line 1130
    :catch_0
    move-exception v0

    .line 1131
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "CamcorderEngine"

    const-string v2, "Could not pause media recorder. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1132
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->enableAlertSound()V

    goto :goto_0
.end method

.method public doPrepareVideoRecordingAsync()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 918
    const-string v0, "CamcorderEngine"

    const-string v1, "doPrepareVideoRecordingAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMainHandler:Lcom/sec/android/app/camera/CameraEngine$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$MainHandler;->removeMessages(I)V

    .line 922
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v0, :cond_0

    .line 923
    const-string v0, "CamcorderEngine"

    const-string v1, "mMediaRecorder is already initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    const-string v0, "CamcorderEngine"

    const-string v1, "Releasing mMediaRecorder..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 929
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderFlashMode()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 930
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 931
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 945
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_2

    .line 946
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/CamcorderEngine$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CamcorderEngine$3;-><init>(Lcom/sec/android/app/camera/CamcorderEngine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    .line 962
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    const-string v1, "PrepareRecordingThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 963
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 965
    :cond_2
    return-void
.end method

.method public doResetSettingsSync()V
    .locals 1

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->resetButtonDim()V

    .line 1483
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->resetCamcorderSettingsToDefault()V

    .line 1485
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->updateUIWhenResetSettings()V

    .line 1487
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->refreshButtonDimForCamcorder()V

    .line 1488
    return-void
.end method

.method public doResumeVideoRecordingSync()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 1146
    const-string v1, "CamcorderEngine"

    const-string v2, "doResumeVideoRecordingSync"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-nez v1, :cond_0

    .line 1149
    const-string v1, "CamcorderEngine"

    const-string v2, "SecMediaRecorder is not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    :goto_0
    return-void

    .line 1153
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    if-nez v1, :cond_1

    .line 1154
    const-string v1, "CamcorderEngine"

    const-string v2, "Recording is not started yet."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1159
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderFlashMode()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 1160
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1161
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 1165
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->resume()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1170
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->disableAlertSound()V

    goto :goto_0

    .line 1166
    :catch_0
    move-exception v0

    .line 1167
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "CamcorderEngine"

    const-string v2, "Could not resume media recorder. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public doSetAllParamsSync()V
    .locals 0

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->initialize()V

    .line 443
    return-void
.end method

.method public doStartEngineAsync()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 387
    const-string v0, "CamcorderEngine"

    const-string v1, "doStartEngineAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRecordingInitiated:Z

    .line 392
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    if-nez v0, :cond_0

    .line 393
    new-instance v0, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    .line 396
    :cond_0
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    .line 407
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/CamcorderEngine$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CamcorderEngine$2;-><init>(Lcom/sec/android/app/camera/CamcorderEngine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mOpenCameraThread:Ljava/lang/Thread;

    .line 413
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mOpenCameraThread:Ljava/lang/Thread;

    const-string v1, "openCamcorderThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mOpenCameraThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 417
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->isProviderEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->startReceivingLocationUpdates()V

    .line 424
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->setOrientationListener()V

    .line 425
    return-void

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setGPS(I)V

    goto :goto_0
.end method

.method public doStartPreviewAsync()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 1377
    const-string v2, "CamcorderEngine"

    const-string v3, "doStartPreviewAsync"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v2, :cond_1

    .line 1380
    const-string v2, "CamcorderEngine"

    const-string v3, "return because mSurfaceHolder is null."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    if-eqz v2, :cond_0

    .line 1383
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 1435
    :cond_0
    :goto_0
    return-void

    .line 1389
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v2, :cond_2

    .line 1390
    const-string v2, "CamcorderEngine"

    const-string v3, "return because mCameraDevice is null."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1394
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->resetPreviewSize()V

    .line 1397
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1407
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/camera/CamcorderEngine$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/CamcorderEngine$5;-><init>(Lcom/sec/android/app/camera/CamcorderEngine;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1427
    .local v1, startPreviewThread:Ljava/lang/Thread;
    const-string v2, "startPreviewThread"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1428
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1429
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    .line 1431
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v2, :cond_3

    .line 1432
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v2}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0

    .line 1398
    .end local v1           #startPreviewThread:Ljava/lang/Thread;
    :catch_0
    move-exception v0

    .line 1399
    .local v0, exception:Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->closeCamcorder()V

    .line 1402
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    .line 1403
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    const/4 v3, -0x3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1434
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

    .line 976
    const-string v0, "CamcorderEngine"

    const-string v1, "doStartVideoRecordingAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    iput-wide v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoFileLengthInByte:J

    .line 978
    iput-wide v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoRecordingTimeInMiliSecond:J

    .line 981
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRecordingInitiated:Z

    .line 984
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 985
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    :cond_0
    :goto_0
    const-string v0, "CamcorderEngine"

    const-string v1, "start video recording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    if-nez v0, :cond_1

    .line 994
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/CamcorderEngine$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CamcorderEngine$4;-><init>(Lcom/sec/android/app/camera/CamcorderEngine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStartRecordingThread:Ljava/lang/Thread;

    .line 1035
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStartRecordingThread:Ljava/lang/Thread;

    const-string v1, "StartRecordingThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1036
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStartRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1047
    :cond_1
    return-void

    .line 987
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public doStopEngineSync()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 428
    const-string v0, "CamcorderEngine"

    const-string v1, "doStopEngineSync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;->removeMessages(I)V

    .line 432
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    .line 435
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->stopReceivingLocationUpdates()V

    .line 436
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->closeCamcorder()V

    .line 438
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    .line 439
    return-void
.end method

.method public doStopPreviewSync()V
    .locals 2

    .prologue
    .line 1438
    const-string v0, "CamcorderEngine"

    const-string v1, "doStopPreviewSync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 1445
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->stopPreview()V

    .line 1448
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    .line 1450
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    .line 1451
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 1454
    :goto_0
    return-void

    .line 1453
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

    .line 1180
    const-string v2, "CamcorderEngine"

    const-string v3, "doStopVideoRecordingSync"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    const-string v2, "CamcorderEngine"

    const-string v3, "Stopping VideoRecording..."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    iget-boolean v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v2, :cond_5

    .line 1185
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderFlashMode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 1186
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1187
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 1201
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.CpuGovernorService.action.IOBUSY_UNVOTE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1203
    .local v1, ioBusyUnVoteIntent:Landroid/content/Intent;
    const-string v2, "com.android.server.CpuGovernorService.voteType"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1204
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1206
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.chaton.util.ACTION_VIDEO_RECORDING_STOP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1207
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getSystemSoundEffect()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1208
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->enableSystemSoundEffect()V

    .line 1214
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->stop()V

    .line 1215
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopInactivityTimer()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1234
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v2, :cond_2

    .line 1235
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->renameTempFile()V

    .line 1237
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1239
    iput-boolean v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    .line 1240
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 1250
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->registerVideo()V

    .line 1268
    .end local v1           #ioBusyUnVoteIntent:Landroid/content/Intent;
    :cond_3
    :goto_0
    iput-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    .line 1270
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->removeHideFocusRectMessage()V

    .line 1273
    sget-boolean v2, Lcom/sec/android/app/camera/CamcorderEngine;->m_bIsTouchAutoFocusing:Z

    if-eqz v2, :cond_4

    .line 1274
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMainHandler:Lcom/sec/android/app/camera/CameraEngine$MainHandler;

    const/4 v3, 0x1

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/app/camera/CameraEngine$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1280
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->enableAlertSound()V

    .line 1281
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->updateRemainTime()V

    .line 1283
    const-string v2, "CamcorderEngine"

    const-string v3, "Stopping VideoRecording is completed!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    :goto_1
    return-void

    .line 1216
    .restart local v1       #ioBusyUnVoteIntent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1217
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

    .line 1218
    iput-boolean v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    .line 1219
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 1221
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->cleanupTempFile()V

    .line 1222
    iput-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    .line 1223
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->closeVideoFileDescriptor()V

    .line 1225
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->enableAlertSound()V

    .line 1227
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    const/4 v3, -0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 1264
    .end local v0           #e:Ljava/lang/RuntimeException;
    .end local v1           #ioBusyUnVoteIntent:Landroid/content/Intent;
    :cond_5
    iget-boolean v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    if-eqz v2, :cond_3

    .line 1265
    iput-boolean v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    goto :goto_0
.end method

.method public final doTakePictureAsync()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2422
    const-string v1, "CamcorderEngine"

    const-string v2, "doTakePictureAsync from camcorder engine"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2424
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v1, :cond_0

    .line 2425
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastOrientation()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->setOrientationOnTake(I)V

    .line 2426
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getOrientationOnTake()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->calculateOrientationForPicture(I)I

    move-result v0

    .line 2428
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

    .line 2429
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setRotation(I)V

    .line 2430
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 2432
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    new-instance v2, Lcom/sec/android/app/camera/CamcorderEngine$7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/CamcorderEngine$7;-><init>(Lcom/sec/android/app/camera/CamcorderEngine;)V

    invoke-virtual {v1, v4, v4, v2}, Lcom/sec/android/seccamera/SecCamera;->takePicture(Lcom/sec/android/seccamera/SecCamera$ShutterCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;)V

    .line 2560
    .end local v0           #rotation:I
    :cond_0
    return-void
.end method

.method public doWaitForSurfaceAsync()V
    .locals 2

    .prologue
    .line 898
    const-string v0, "CamcorderEngine"

    const-string v1, "doWaitForSurfaceAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 901
    const-string v0, "CamcorderEngine"

    const-string v1, "mSurfaceHolder is already created!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    .line 907
    :goto_0
    return-void

    .line 904
    :cond_0
    const-string v0, "CamcorderEngine"

    const-string v1, "start waiting for mSurfaceHolder..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    goto :goto_0
.end method

.method public enableSystemSoundEffect()V
    .locals 3

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sound_effects_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1085
    return-void
.end method

.method public getCamcorderInnerProfile()Lcom/sec/android/app/camera/MediaRecorderProfile;
    .locals 3

    .prologue
    .line 573
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    if-nez v0, :cond_0

    .line 574
    const-string v0, "CamcorderEngine"

    const-string v1, "getCamcorderInnerProfile: mCameraSettings is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const/4 v0, 0x0

    .line 582
    :goto_0
    return-object v0

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    if-eqz v0, :cond_1

    .line 579
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    goto :goto_0

    .line 581
    :cond_1
    new-instance v0, Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderQuality()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/MediaRecorderProfile;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    .line 582
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    goto :goto_0
.end method

.method public getCamcorderProfile()Landroid/media/CamcorderProfile;
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    if-nez v0, :cond_0

    .line 559
    const-string v0, "CamcorderEngine"

    const-string v1, "getCamcorderProfile: mCameraSettings is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const/4 v0, 0x0

    .line 569
    :goto_0
    return-object v0

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v0, :cond_1

    .line 564
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    goto :goto_0

    .line 566
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getCamcorderProfileQualityLevel(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    .line 569
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    goto :goto_0
.end method

.method public getCurrentVideoFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2319
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getGpsLocation()Landroid/location/Location;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    .line 2593
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 2595
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

    .line 2598
    .end local v0           #loc:Landroid/location/Location;
    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    .line 2593
    goto :goto_0
.end method

.method public getMaxFileSize()J
    .locals 2

    .prologue
    .line 694
    iget-wide v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->maxFileSize:J

    return-wide v0
.end method

.method public getRemainTime()I
    .locals 6

    .prologue
    .line 2379
    const/4 v1, 0x0

    .line 2380
    .local v1, nBitrate:I
    const/4 v3, 0x0

    .line 2381
    .local v3, nVideoBitrate:I
    const/4 v0, 0x0

    .line 2382
    .local v0, nAudioBitrate:I
    const/4 v2, 0x0

    .line 2384
    .local v2, nRemainTime:I
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->readVideoPreferences()V

    .line 2386
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoBitRateFromProfile()I

    move-result v3

    .line 2388
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioRecording()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 2389
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getAudioBitRateFromProfile()I

    move-result v0

    .line 2391
    :cond_0
    add-int v4, v3, v0

    div-int/lit8 v1, v4, 0x8

    .line 2392
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v4

    invoke-static {v4, v1}, Lcom/sec/android/app/camera/CheckMemory;->getRemainTime(II)I

    move-result v2

    .line 2394
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    .line 2396
    return v2
.end method

.method public getSurpportedVideoSize(II)Z
    .locals 5
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x1

    .line 2569
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v2

    .line 2570
    .local v2, sizes:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    if-nez v2, :cond_1

    .line 2571
    const-string v3, "CamcorderEngine"

    const-string v4, "supported video sizes is null"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2572
    const/4 v3, 0x0

    .line 2579
    :cond_0
    :goto_0
    return v3

    .line 2574
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

    .line 2575
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
    .line 1074
    sget-boolean v0, Lcom/sec/android/app/camera/CamcorderEngine;->isSystemSoundEffectEnabled:Z

    return v0
.end method

.method public getTouchFocusPositioned()Z
    .locals 1

    .prologue
    .line 1592
    sget-boolean v0, Lcom/sec/android/app/camera/CamcorderEngine;->m_bIsTouchFocusPositioned:Z

    return v0
.end method

.method public getVideoFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 878
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public getVideoFileLengthInByte()J
    .locals 2

    .prologue
    .line 2311
    iget-wide v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoFileLengthInByte:J

    return-wide v0
.end method

.method public getVideoRecordingTimeInSecond()I
    .locals 4

    .prologue
    .line 2315
    iget-wide v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoRecordingTimeInMiliSecond:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public handleVideoRecordingStarted()V
    .locals 2

    .prologue
    .line 1050
    const-string v0, "CamcorderEngine"

    const-string v1, "handleVideoRecordingStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->onVideoRecordingStart()V

    .line 1053
    return-void
.end method

.method public initialize()V
    .locals 8

    .prologue
    const/16 v7, 0x6b

    const/16 v4, 0x25

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 184
    .local v0, camSettings:Lcom/sec/android/app/camera/CameraSettings;
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v3, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 188
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 191
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v4, 0x5

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mAutoFocusCallback:Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;

    invoke-virtual {v3, v4}, Lcom/sec/android/seccamera/SecCamera;->setAutoFocusCb(Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;)V

    .line 194
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0x67

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0x6c

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderEffect()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getEffectString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getWhiteBalance()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getWhitebalanceString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0x70

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderZoomValue()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 198
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0x6d

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderExposureValue()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 199
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0x6e

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAutoContrast()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 200
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0x68

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0xd

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 203
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAntishake()I

    move-result v4

    if-ne v4, v1, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setVideoStabilization(Z)V

    .line 205
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v3, "video_recording_gamma"

    const-string v4, "on"

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v3, "slow_ae"

    const-string v4, "on"

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v3, 0xb

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAntiBanding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v3, 0xa

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getIsoString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 220
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getSceneModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :goto_2
    const/16 v1, 0x7b

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 251
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    goto/16 :goto_0

    :cond_2
    move v1, v2

    .line 203
    goto :goto_1

    .line 229
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 230
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v3, 0x6d

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderExposureValue()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 231
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v3, 0x6c

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderEffect()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getEffectString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getWhiteBalance()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getWhitebalanceString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setVideoStabilization(Z)V

    .line 238
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAntiBanding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSelfFlip()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->setFrontSensorMirror(I)V

    goto :goto_2
.end method

.method public isMediaRecorderRecording()Z
    .locals 1

    .prologue
    .line 2375
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    return v0
.end method

.method public isRecorderStarting()Z
    .locals 2

    .prologue
    .line 550
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    :cond_0
    const/4 v0, 0x1

    .line 554
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

    .line 538
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 546
    :cond_0
    :goto_0
    return v0

    .line 542
    :cond_1
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 546
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouchAutoFocusing()Z
    .locals 1

    .prologue
    .line 1618
    sget-boolean v0, Lcom/sec/android/app/camera/CamcorderEngine;->m_bIsTouchAutoFocusing:Z

    return v0
.end method

.method public onCameraSettingsChanged(II)V
    .locals 1
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 1491
    sparse-switch p1, :sswitch_data_0

    .line 1550
    :goto_0
    :sswitch_0
    return-void

    .line 1500
    :sswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleChangeParameter(II)V

    goto :goto_0

    .line 1517
    :sswitch_2
    new-instance v0, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;-><init>(Lcom/sec/android/app/camera/CameraEngine;II)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doChangeParameterSync(Ljava/lang/Object;)V

    goto :goto_0

    .line 1527
    :sswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1528
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopPreview()V

    .line 1529
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleChangeParameter(II)V

    .line 1530
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    goto :goto_0

    .line 1533
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleChangeParameter(II)V

    goto :goto_0

    .line 1537
    :sswitch_4
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 1538
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->startReceivingLocationUpdates()V

    goto :goto_0

    .line 1540
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->stopReceivingLocationUpdates()V

    goto :goto_0

    .line 1491
    nop

    :sswitch_data_0
    .sparse-switch
        0x16 -> :sswitch_0
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
    .end sparse-switch
.end method

.method public onError(Lcom/sec/android/secmediarecorder/SecMediaRecorder;II)V
    .locals 2
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 2323
    const-string v0, "CamcorderEngine"

    const-string v1, "onError"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 2326
    const-string v0, "CamcorderEngine"

    const-string v1, "MEDIA_RECORDER_ERROR_UNKNOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleCancelVideoRecording()V

    .line 2329
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 2330
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_0

    .line 2331
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->finishRecordingWithError()V

    .line 2339
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    const/4 v1, -0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    .line 2340
    :goto_0
    return-void

    .line 2332
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 2333
    const-string v0, "CamcorderEngine"

    const-string v1, "MEDIA_RECORDER_ERROR_BUFFER_OVERFLOW"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_2

    .line 2335
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v1, -0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finishOnError(I)V

    .line 2336
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopVideoRecording()V

    goto :goto_0
.end method

.method public onInfo(Lcom/sec/android/secmediarecorder/SecMediaRecorder;II)V
    .locals 4
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v2, 0x2

    .line 2343
    const/16 v0, 0x320

    if-ne p2, v0, :cond_1

    .line 2344
    const-string v0, "CamcorderEngine"

    const-string v1, "onInfo - MEDIA_RECORDER_INFO_MAX_DURATION_REACHED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2345
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camcorder;->handleRecordingCommand(I)V

    .line 2346
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 2372
    :cond_0
    :goto_0
    return-void

    .line 2347
    :cond_1
    const/16 v0, 0x321

    if-ne p2, v0, :cond_2

    .line 2348
    const-string v0, "CamcorderEngine"

    const-string v1, "onInfo - MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2349
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camcorder;->handleRecordingCommand(I)V

    .line 2350
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 2352
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f09000a

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2353
    :cond_2
    const/16 v0, 0x384

    if-ne p2, v0, :cond_3

    .line 2354
    int-to-long v0, p3

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoFileLengthInByte:J

    goto :goto_0

    .line 2355
    :cond_3
    const/16 v0, 0x385

    if-ne p2, v0, :cond_0

    .line 2356
    int-to-long v0, p3

    iput-wide v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoRecordingTimeInMiliSecond:J

    goto :goto_0
.end method

.method public releaseMediaRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1962
    const-string v0, "CamcorderEngine"

    const-string v1, "Releasing media recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v0, :cond_0

    .line 1964
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->cleanupEmptyFile()V

    .line 1965
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnErrorListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;)V

    .line 1966
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnInfoListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;)V

    .line 1967
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->reset()V

    .line 1968
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->release()V

    .line 1969
    iput-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    .line 1970
    iput-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    .line 1972
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_1

    .line 1973
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->lock()V

    .line 1975
    :cond_1
    return-void
.end method

.method public removeHideFocusRectMessage()V
    .locals 2

    .prologue
    .line 2584
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mHideFocusRectHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2585
    return-void
.end method

.method protected resetPreviewSize()V
    .locals 15

    .prologue
    const/16 v14, 0x7530

    const/16 v13, 0x3a98

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 1730
    const-string v8, "CamcorderEngine"

    const-string v9, "resetPreviewSize()"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 1833
    :pswitch_0
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1834
    const/16 v4, 0x3c0

    .line 1835
    .local v4, previewWidth:I
    const/16 v3, 0x2d0

    .line 1840
    .local v3, previewHeight:I
    :goto_0
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 1841
    const/16 v2, 0xcc0

    .line 1842
    .local v2, pictureWidth:I
    const/16 v1, 0x990

    .line 1850
    .local v1, pictureHeight:I
    :goto_1
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v8

    if-ne v8, v11, :cond_0

    .line 1852
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1853
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v5

    .line 1854
    .local v5, resolutionId:I
    const/16 v8, 0x12

    if-ne v5, v8, :cond_12

    .line 1855
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 1856
    const/16 v4, 0x3c0

    .line 1857
    const/16 v3, 0x2d0

    .line 1905
    .end local v5           #resolutionId:I
    :cond_0
    :goto_2
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-eqz v8, :cond_14

    .line 1906
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8, v11}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setRecordingHint(Z)V

    .line 1907
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

    .line 1908
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8, v4, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewSize(II)V

    .line 1909
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v9, 0x68

    invoke-static {v9}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v10

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1913
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8, v2, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPictureSize(II)V

    .line 1916
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v7

    .line 1917
    .local v7, thumbnailSizes:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v11, :cond_1

    .line 1918
    const/4 v6, 0x0

    .line 1919
    .local v6, thumbnaiSize:Lcom/sec/android/seccamera/SecCamera$Size;
    invoke-virtual {p0, v7, v4, v3}, Lcom/sec/android/app/camera/CamcorderEngine;->findThumbnailSize(Ljava/util/List;II)Lcom/sec/android/seccamera/SecCamera$Size;

    move-result-object v6

    .line 1920
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget v9, v6, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    iget v10, v6, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setJpegThumbnailSize(II)V

    .line 1924
    .end local v6           #thumbnaiSize:Lcom/sec/android/seccamera/SecCamera$Size;
    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v9, 0x25

    invoke-static {v9}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v11}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 1930
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v8

    if-ne v8, v11, :cond_15

    .line 1934
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {p0, v8, v13, v13}, Lcom/sec/android/app/camera/CamcorderEngine;->findBestFpsRange(Lcom/sec/android/seccamera/SecCamera$Parameters;II)[I

    move-result-object v0

    .line 1935
    .local v0, fpsRange:[I
    if-eqz v0, :cond_2

    .line 1936
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    aget v9, v0, v12

    aget v10, v0, v11

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 1949
    :cond_2
    :goto_3
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v8, :cond_17

    .line 1950
    invoke-virtual {p0, v11}, Lcom/sec/android/app/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 1951
    const-string v8, "CamcorderEngine"

    const-string v9, "resetPreviewSize()- isCurrentState is INITIALIZING"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    .end local v0           #fpsRange:[I
    .end local v7           #thumbnailSizes:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    :goto_4
    return-void

    .line 1737
    .end local v1           #pictureHeight:I
    .end local v2           #pictureWidth:I
    .end local v3           #previewHeight:I
    .end local v4           #previewWidth:I
    :pswitch_1
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1738
    const/16 v4, 0x500

    .line 1739
    .restart local v4       #previewWidth:I
    const/16 v3, 0x2d0

    .line 1744
    .restart local v3       #previewHeight:I
    :goto_5
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1745
    const/16 v2, 0xcc0

    .line 1746
    .restart local v2       #pictureWidth:I
    const/16 v1, 0x72c

    .restart local v1       #pictureHeight:I
    goto/16 :goto_1

    .line 1741
    .end local v1           #pictureHeight:I
    .end local v2           #pictureWidth:I
    .end local v3           #previewHeight:I
    .end local v4           #previewWidth:I
    :cond_3
    const/16 v4, 0x500

    .line 1742
    .restart local v4       #previewWidth:I
    const/16 v3, 0x2d0

    .restart local v3       #previewHeight:I
    goto :goto_5

    .line 1748
    :cond_4
    const/16 v2, 0x780

    .line 1749
    .restart local v2       #pictureWidth:I
    const/16 v1, 0x438

    .line 1751
    .restart local v1       #pictureHeight:I
    goto/16 :goto_1

    .line 1753
    .end local v1           #pictureHeight:I
    .end local v2           #pictureWidth:I
    .end local v3           #previewHeight:I
    .end local v4           #previewWidth:I
    :pswitch_2
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1754
    const/16 v4, 0x500

    .line 1755
    .restart local v4       #previewWidth:I
    const/16 v3, 0x2d0

    .line 1760
    .restart local v3       #previewHeight:I
    :goto_6
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1761
    const/16 v2, 0xcc0

    .line 1762
    .restart local v2       #pictureWidth:I
    const/16 v1, 0x72c

    .restart local v1       #pictureHeight:I
    goto/16 :goto_1

    .line 1757
    .end local v1           #pictureHeight:I
    .end local v2           #pictureWidth:I
    .end local v3           #previewHeight:I
    .end local v4           #previewWidth:I
    :cond_5
    const/16 v4, 0x500

    .line 1758
    .restart local v4       #previewWidth:I
    const/16 v3, 0x2d0

    .restart local v3       #previewHeight:I
    goto :goto_6

    .line 1764
    :cond_6
    const/16 v2, 0x500

    .line 1765
    .restart local v2       #pictureWidth:I
    const/16 v1, 0x2d0

    .line 1767
    .restart local v1       #pictureHeight:I
    goto/16 :goto_1

    .line 1769
    .end local v1           #pictureHeight:I
    .end local v2           #pictureWidth:I
    .end local v3           #previewHeight:I
    .end local v4           #previewWidth:I
    :pswitch_3
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1770
    const/16 v4, 0x3f0

    .line 1771
    .restart local v4       #previewWidth:I
    const/16 v3, 0x2a0

    .line 1776
    .restart local v3       #previewHeight:I
    :goto_7
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1777
    const/16 v2, 0xcc0

    .line 1778
    .restart local v2       #pictureWidth:I
    const/16 v1, 0x880

    .restart local v1       #pictureHeight:I
    goto/16 :goto_1

    .line 1773
    .end local v1           #pictureHeight:I
    .end local v2           #pictureWidth:I
    .end local v3           #previewHeight:I
    .end local v4           #previewWidth:I
    :cond_7
    const/16 v4, 0x3f0

    .line 1774
    .restart local v4       #previewWidth:I
    const/16 v3, 0x2a0

    .restart local v3       #previewHeight:I
    goto :goto_7

    .line 1780
    :cond_8
    const/16 v2, 0x2d0

    .line 1781
    .restart local v2       #pictureWidth:I
    const/16 v1, 0x1e0

    .line 1783
    .restart local v1       #pictureHeight:I
    goto/16 :goto_1

    .line 1785
    .end local v1           #pictureHeight:I
    .end local v2           #pictureWidth:I
    .end local v3           #previewHeight:I
    .end local v4           #previewWidth:I
    :pswitch_4
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1786
    const/16 v4, 0x3c0

    .line 1787
    .restart local v4       #previewWidth:I
    const/16 v3, 0x2d0

    .line 1792
    .restart local v3       #previewHeight:I
    :goto_8
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1793
    const/16 v2, 0xcc0

    .line 1794
    .restart local v2       #pictureWidth:I
    const/16 v1, 0x990

    .restart local v1       #pictureHeight:I
    goto/16 :goto_1

    .line 1789
    .end local v1           #pictureHeight:I
    .end local v2           #pictureWidth:I
    .end local v3           #previewHeight:I
    .end local v4           #previewWidth:I
    :cond_9
    const/16 v4, 0x3c0

    .line 1790
    .restart local v4       #previewWidth:I
    const/16 v3, 0x2d0

    .restart local v3       #previewHeight:I
    goto :goto_8

    .line 1796
    :cond_a
    const/16 v2, 0x280

    .line 1797
    .restart local v2       #pictureWidth:I
    const/16 v1, 0x1e0

    .line 1799
    .restart local v1       #pictureHeight:I
    goto/16 :goto_1

    .line 1801
    .end local v1           #pictureHeight:I
    .end local v2           #pictureWidth:I
    .end local v3           #previewHeight:I
    .end local v4           #previewWidth:I
    :pswitch_5
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1802
    const/16 v4, 0x3c0

    .line 1803
    .restart local v4       #previewWidth:I
    const/16 v3, 0x2d0

    .line 1808
    .restart local v3       #previewHeight:I
    :goto_9
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1809
    const/16 v2, 0xcc0

    .line 1810
    .restart local v2       #pictureWidth:I
    const/16 v1, 0x990

    .restart local v1       #pictureHeight:I
    goto/16 :goto_1

    .line 1805
    .end local v1           #pictureHeight:I
    .end local v2           #pictureWidth:I
    .end local v3           #previewHeight:I
    .end local v4           #previewWidth:I
    :cond_b
    const/16 v4, 0x3c0

    .line 1806
    .restart local v4       #previewWidth:I
    const/16 v3, 0x2d0

    .restart local v3       #previewHeight:I
    goto :goto_9

    .line 1812
    :cond_c
    const/16 v2, 0x140

    .line 1813
    .restart local v2       #pictureWidth:I
    const/16 v1, 0xf0

    .line 1815
    .restart local v1       #pictureHeight:I
    goto/16 :goto_1

    .line 1817
    .end local v1           #pictureHeight:I
    .end local v2           #pictureWidth:I
    .end local v3           #previewHeight:I
    .end local v4           #previewWidth:I
    :pswitch_6
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1818
    const/16 v4, 0x370

    .line 1819
    .restart local v4       #previewWidth:I
    const/16 v3, 0x2d0

    .line 1824
    .restart local v3       #previewHeight:I
    :goto_a
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1825
    const/16 v2, 0xcc0

    .line 1826
    .restart local v2       #pictureWidth:I
    const/16 v1, 0x990

    .restart local v1       #pictureHeight:I
    goto/16 :goto_1

    .line 1821
    .end local v1           #pictureHeight:I
    .end local v2           #pictureWidth:I
    .end local v3           #previewHeight:I
    .end local v4           #previewWidth:I
    :cond_d
    const/16 v4, 0x370

    .line 1822
    .restart local v4       #previewWidth:I
    const/16 v3, 0x2d0

    .restart local v3       #previewHeight:I
    goto :goto_a

    .line 1828
    :cond_e
    const/16 v2, 0x140

    .line 1829
    .restart local v2       #pictureWidth:I
    const/16 v1, 0xf0

    .line 1831
    .restart local v1       #pictureHeight:I
    goto/16 :goto_1

    .line 1837
    .end local v1           #pictureHeight:I
    .end local v2           #pictureWidth:I
    .end local v3           #previewHeight:I
    .end local v4           #previewWidth:I
    :cond_f
    const/16 v4, 0x3c0

    .line 1838
    .restart local v4       #previewWidth:I
    const/16 v3, 0x2d0

    .restart local v3       #previewHeight:I
    goto/16 :goto_0

    .line 1844
    :cond_10
    const/16 v2, 0x280

    .line 1845
    .restart local v2       #pictureWidth:I
    const/16 v1, 0x1e0

    .restart local v1       #pictureHeight:I
    goto/16 :goto_1

    .line 1859
    .restart local v5       #resolutionId:I
    :cond_11
    const/16 v4, 0x3c0

    .line 1860
    const/16 v3, 0x2d0

    goto/16 :goto_2

    .line 1863
    :cond_12
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1864
    const/16 v4, 0x370

    .line 1865
    const/16 v3, 0x2d0

    goto/16 :goto_2

    .line 1867
    :cond_13
    const/16 v4, 0x370

    .line 1868
    const/16 v3, 0x2d0

    goto/16 :goto_2

    .line 1926
    .end local v5           #resolutionId:I
    :cond_14
    const-string v8, "CamcorderEngine"

    const-string v9, "resetPreviewSize()- mParameters is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1943
    .restart local v7       #thumbnailSizes:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    :cond_15
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {p0, v8, v14, v14}, Lcom/sec/android/app/camera/CamcorderEngine;->findBestFpsRange(Lcom/sec/android/seccamera/SecCamera$Parameters;II)[I

    move-result-object v0

    .line 1944
    .restart local v0       #fpsRange:[I
    if-eqz v0, :cond_2

    .line 1945
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    aget v9, v0, v12

    aget v10, v0, v11

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto/16 :goto_3

    .line 1954
    :cond_16
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8, v9}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    goto/16 :goto_4

    .line 1956
    :cond_17
    const-string v8, "CamcorderEngine"

    const-string v9, "resetPreviewSize()- mCameraDevice is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1735
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
    .line 1287
    const-string v0, "CamcorderEngine"

    const-string v1, "scheduleCancelVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x6a

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1290
    return-void
.end method

.method public scheduleLaunchGallery(Ljava/lang/String;)V
    .locals 2
    .parameter "keyValue"

    .prologue
    .line 1365
    const-string v0, "CamcorderEngine"

    const-string v1, "scheduleLaunchGallery"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x1a

    invoke-static {v1, p1}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1368
    return-void
.end method

.method public schedulePauseVideoRecording()V
    .locals 3

    .prologue
    .line 1104
    const-string v0, "CamcorderEngine"

    const-string v1, "schedulePauseVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x67

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1107
    return-void
.end method

.method public schedulePrepareVideoRecording()V
    .locals 3

    .prologue
    const/16 v2, 0x65

    .line 910
    const-string v0, "CamcorderEngine"

    const-string v1, "schedulePrepareVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 915
    :cond_0
    return-void
.end method

.method public scheduleResumeVideoRecording()V
    .locals 3

    .prologue
    .line 1140
    const-string v0, "CamcorderEngine"

    const-string v1, "scheduleResumeVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x68

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1143
    return-void
.end method

.method public scheduleStartVideoRecording()V
    .locals 3

    .prologue
    const/16 v2, 0x66

    .line 968
    const-string v0, "CamcorderEngine"

    const-string v1, "scheduleStartVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 973
    :cond_0
    return-void
.end method

.method public scheduleStopVideoRecording()V
    .locals 3

    .prologue
    .line 1174
    const-string v0, "CamcorderEngine"

    const-string v1, "scheduleStopVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x69

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1177
    return-void
.end method

.method public final scheduleTakePicture()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 2413
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchDuplicateRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2414
    const-string v0, "CamcorderEngine"

    const-string v1, "scheduleTakePicture - Now capturing, retun capture request."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2419
    :goto_0
    return-void

    .line 2417
    :cond_0
    const-string v0, "CamcorderEngine"

    const-string v1, "scheduleTakePicture from camcorder engine"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2418
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    goto :goto_0
.end method

.method public scheduleWaitForSurface()V
    .locals 3

    .prologue
    .line 893
    const-string v0, "CamcorderEngine"

    const-string v1, "scheduleWaitForSurface"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x6b

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 895
    return-void
.end method

.method protected searchForLastContentUri()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 2225
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    if-nez v0, :cond_0

    .line 2259
    :goto_0
    return-void

    .line 2229
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2230
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2232
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 2233
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2234
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 2235
    .local v8, idIndex:I
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 2237
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

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    .line 2239
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder;->onVideoStoringCompleted(Landroid/net/Uri;)V

    .line 2240
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoFilename:Ljava/lang/String;

    .line 2241
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2244
    .end local v7           #dataIndex:I
    .end local v8           #idIndex:I
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRecordingInitiated:Z

    if-eqz v0, :cond_3

    .line 2245
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    if-nez v0, :cond_2

    .line 2246
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2249
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;->removeMessages(I)V

    .line 2250
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v9, v1, v2}, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2255
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2252
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder;->onVideoStoringCompleted(Landroid/net/Uri;)V

    goto :goto_1

    .line 2257
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder;->onVideoStoringCompleted(Landroid/net/Uri;)V

    goto/16 :goto_0
.end method

.method public sendHideFocusRectMessage()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 2588
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mHideFocusRectHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2589
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mHideFocusRectHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2590
    return-void
.end method

.method public setCamcorderShootingMode(Z)V
    .locals 3
    .parameter "fastmode"

    .prologue
    .line 2603
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderShootingMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2605
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v0, :cond_1

    .line 2623
    :cond_0
    :goto_0
    return-void

    .line 2608
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 2611
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->isShotSlowMotionNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2614
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->resetShotSlowMotionNeeded()V

    goto :goto_0
.end method

.method public setFrontSensorMirror(I)V
    .locals 3
    .parameter "flip"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2563
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v2, :cond_0

    .line 2564
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-ne p1, v0, :cond_1

    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setFrontSensorMirror(ZI)V

    .line 2566
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 2564
    goto :goto_0
.end method

.method public setIsVideoCaptureIntent(Z)Z
    .locals 3
    .parameter "chkIsVideoCaptureIntent"

    .prologue
    .line 532
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mIsVideoCaptureIntent:Z

    .line 533
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsVideoCaptureIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mIsVideoCaptureIntent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mIsVideoCaptureIntent:Z

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

    .line 1553
    const-string v6, "CamcorderEngine"

    const-string v7, "setTouchFocusPosition"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    iget-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060009

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v1, v6

    .line 1558
    .local v1, focusWidth:I
    iget-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06000a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    .line 1559
    .local v0, focusHeight:I
    iget v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mOriginalViewFinderWidth:I

    .line 1560
    .local v5, width:I
    iget v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mOriginalViewFinderHeight:I

    .line 1562
    .local v2, height:I
    iget-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mTapArea:Ljava/util/List;

    if-nez v6, :cond_0

    .line 1563
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mTapArea:Ljava/util/List;

    .line 1564
    iget-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mTapArea:Ljava/util/List;

    new-instance v7, Lcom/sec/android/seccamera/SecCamera$Area;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v7, v8, v12}, Lcom/sec/android/seccamera/SecCamera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1567
    :cond_0
    div-int/lit8 v6, v1, 0x2

    sub-int v6, p1, v6

    sub-int v7, v5, v1

    invoke-static {v6, v9, v7}, Lcom/sec/android/app/camera/CamcorderEngine;->clamp(III)I

    move-result v3

    .line 1568
    .local v3, left:I
    div-int/lit8 v6, v0, 0x2

    sub-int v6, p2, v6

    sub-int v7, v2, v0

    invoke-static {v6, v9, v7}, Lcom/sec/android/app/camera/CamcorderEngine;->clamp(III)I

    move-result v4

    .line 1570
    .local v4, top:I
    iget-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mTapArea:Ljava/util/List;

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

    .line 1571
    iget-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mTapArea:Ljava/util/List;

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

    .line 1572
    iget-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mTapArea:Ljava/util/List;

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

    .line 1573
    iget-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mTapArea:Ljava/util/List;

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

    .line 1582
    iget-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v7, 0x5

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v12}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    iget-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget-object v7, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mTapArea:Ljava/util/List;

    invoke-virtual {v6, v7}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 1586
    iget-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v7, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v6, v7}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 1588
    sput-boolean v12, Lcom/sec/android/app/camera/CamcorderEngine;->m_bIsTouchFocusPositioned:Z

    .line 1589
    return-void
.end method

.method public startContinuousAF()V
    .locals 1

    .prologue
    .line 1622
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 1623
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->startContinuousAF()V

    .line 1624
    :cond_0
    return-void
.end method

.method public startTouchAutoFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1597
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMainHandler:Lcom/sec/android/app/camera/CameraEngine$MainHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$MainHandler;->removeMessages(I)V

    .line 1598
    sput-boolean v1, Lcom/sec/android/app/camera/CamcorderEngine;->m_bIsTouchAutoFocusing:Z

    .line 1599
    return-void
.end method

.method public stopContinuousAF()V
    .locals 1

    .prologue
    .line 1627
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 1628
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->stopContinuousAF()V

    .line 1629
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->clearFocusState()V

    .line 1630
    return-void
.end method

.method public stopTouchAutoFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1602
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v0, :cond_0

    .line 1603
    const-string v0, "CamcorderEngine"

    const-string v1, "CamcorderParameters is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    :goto_0
    return-void

    .line 1607
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 1608
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1609
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_1

    .line 1611
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 1613
    :cond_1
    sput-boolean v3, Lcom/sec/android/app/camera/CamcorderEngine;->m_bIsTouchAutoFocusing:Z

    .line 1614
    sput-boolean v3, Lcom/sec/android/app/camera/CamcorderEngine;->m_bIsTouchFocusPositioned:Z

    goto :goto_0
.end method

.method public switchToBack()V
    .locals 3

    .prologue
    .line 1463
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchToBackCamera - setSelfMode - SELF_OFF, setCameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(I)V

    .line 1465
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->updateSettingsWhenSwitchCamera()V

    .line 1466
    return-void
.end method

.method public switchToFront()V
    .locals 3

    .prologue
    .line 1457
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchToFrontCamera - setCameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(I)V

    .line 1459
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->updateSettingsWhenSwitchCamera()V

    .line 1460
    return-void
.end method

.method public waitForStartRecordingThreadComplete()V
    .locals 1

    .prologue
    .line 1057
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1058
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 1060
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStartRecordingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 1061
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStartRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1066
    :cond_1
    :goto_0
    return-void

    .line 1063
    :catch_0
    move-exception v0

    goto :goto_0
.end method
