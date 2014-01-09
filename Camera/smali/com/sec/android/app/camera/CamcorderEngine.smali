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

    .line 103
    sput-boolean v0, Lcom/sec/android/app/camera/CamcorderEngine;->m_bIsTouchAutoFocusing:Z

    .line 104
    sput-boolean v0, Lcom/sec/android/app/camera/CamcorderEngine;->m_bIsTouchFocusPositioned:Z

    .line 144
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

    .line 167
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraEngine;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 96
    new-instance v0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;-><init>(Lcom/sec/android/app/camera/CamcorderEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mErrorCallback:Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;

    .line 101
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    .line 113
    iput-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    .line 118
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPausing:Z

    .line 119
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPreviewing:Z

    .line 122
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRecordingInitiated:Z

    .line 130
    iput-wide v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoFileLengthInByte:J

    .line 131
    iput-wide v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoRecordingTimeInMiliSecond:J

    .line 133
    iput-wide v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->maxFileSize:J

    .line 135
    iput-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    .line 136
    iput-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStartRecordingThread:Ljava/lang/Thread;

    .line 138
    new-instance v0, Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;-><init>(Lcom/sec/android/app/camera/CamcorderEngine;Lcom/sec/android/app/camera/CamcorderEngine$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mAutoFocusCallback:Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;

    .line 146
    iput v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRetry:I

    .line 153
    new-instance v0, Lcom/sec/android/app/camera/CamcorderEngine$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CamcorderEngine$1;-><init>(Lcom/sec/android/app/camera/CamcorderEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mHideFocusRectHandler:Landroid/os/Handler;

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStateDepot:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/CeStateRecording;

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-direct {v2, p0, v3, v5}, Lcom/sec/android/app/camera/CeStateRecording;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStateDepot:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/CeStateWaitForSurface;

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-direct {v2, p0, v3, v6}, Lcom/sec/android/app/camera/CeStateWaitForSurface;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mContentResolver:Landroid/content/ContentResolver;

    .line 172
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/CamcorderEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->openCameraDevice()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/CamcorderEngine;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/CamcorderEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->initializeRecorder()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/CamcorderEngine;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/camera/CamcorderEngine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/CamcorderEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->disableAlertSound()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/CamcorderEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->setSystemSoundEffect()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/CamcorderEngine;)Lcom/sec/android/seccamera/SecCamera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/CamcorderEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->updateOutdoorVisibility()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/CamcorderEngine;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mHideFocusRectHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private cleanupEmptyFile()V
    .locals 5

    .prologue
    .line 2065
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2066
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2067
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2068
    const-string v1, "CamcorderEngine"

    const-string v2, "Empty video file deleted"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    .line 2072
    .end local v0           #f:Ljava/io/File;
    :cond_0
    return-void
.end method

.method private cleanupTempFile()V
    .locals 3

    .prologue
    .line 2075
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getTempFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2076
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2077
    const-string v1, "CamcorderEngine"

    const-string v2, "temp video file deleted"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    :cond_0
    return-void
.end method

.method private createVideoPath()V
    .locals 26

    .prologue
    .line 1963
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1964
    .local v3, calendar:Ljava/util/GregorianCalendar;
    new-instance v19, Landroid/text/format/Time;

    invoke-direct/range {v19 .. v19}, Landroid/text/format/Time;-><init>()V

    .line 1965
    .local v19, time:Landroid/text/format/Time;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v20

    .line 1966
    .local v20, timezone:Ljava/util/TimeZone;
    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1967
    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v8

    .line 1969
    .local v8, dateTaken:J
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CamcorderEngine;->cleanupTempFile()V

    .line 1972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v23

    if-nez v23, :cond_1

    .line 1973
    sget-object v5, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    .line 1980
    .local v5, cameraDirPath:Ljava/lang/String;
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getFileFormatFromProfile()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 1981
    const-string v11, ".mp4"

    .line 1982
    .local v11, extension:Ljava/lang/String;
    const-string v17, "video/mp4"

    .line 1988
    .local v17, mimeType:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 1989
    const-string v11, ".3gp"

    .line 1990
    const-string v17, "video/3gpp"

    .line 1993
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1994
    .local v4, cameraDir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v23

    if-nez v23, :cond_3

    .line 1995
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v23

    if-nez v23, :cond_3

    .line 1996
    const-string v23, "CamcorderEngine"

    const-string v24, "directory is not made"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    :goto_2
    return-void

    .line 1975
    .end local v4           #cameraDir:Ljava/io/File;
    .end local v5           #cameraDirPath:Ljava/lang/String;
    .end local v11           #extension:Ljava/lang/String;
    .end local v17           #mimeType:Ljava/lang/String;
    :cond_1
    sget-object v5, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    .restart local v5       #cameraDirPath:Ljava/lang/String;
    goto :goto_0

    .line 1984
    :cond_2
    const-string v11, ".3gp"

    .line 1985
    .restart local v11       #extension:Ljava/lang/String;
    const-string v17, "video/3gpp"

    .restart local v17       #mimeType:Ljava/lang/String;
    goto :goto_1

    .line 2002
    .restart local v4       #cameraDir:Ljava/io/File;
    :cond_3
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 2003
    .local v7, date:Ljava/util/Date;
    const-string v23, "yyyyMMdd_kkmmss"

    move-object/from16 v0, v23

    invoke-static {v0, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .line 2006
    .local v16, filepart:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 2008
    .local v6, currentAddress:Ljava/lang/String;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v23

    if-eqz v23, :cond_4

    .line 2009
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

    .line 2013
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

    .line 2014
    .local v13, filename:Ljava/lang/String;
    move-object/from16 v21, v18

    .line 2015
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

    .line 2018
    .local v10, displayName:Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2019
    .local v12, f:Ljava/io/File;
    const/4 v14, 0x0

    .line 2020
    .local v14, filenumber:I
    :goto_4
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_6

    .line 2021
    const-string v23, "CamcorderEngine"

    const-string v24, "Duplicated file name found"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    invoke-virtual {v7, v8, v9}, Ljava/util/Date;->setTime(J)V

    .line 2023
    const-string v23, "yyyyMMdd_kkmmss"

    move-object/from16 v0, v23

    invoke-static {v0, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .line 2024
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v23

    if-eqz v23, :cond_5

    .line 2025
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

    .line 2028
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

    .line 2029
    move-object/from16 v21, v18

    .line 2030
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

    .line 2031
    const-string v23, "CamcorderEngine"

    const-string v24, "New file name created"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    new-instance v12, Ljava/io/File;

    .end local v12           #f:Ljava/io/File;
    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v12       #f:Ljava/io/File;
    move v14, v15

    .end local v15           #filenumber:I
    .restart local v14       #filenumber:I
    goto/16 :goto_4

    .line 2011
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

    .line 2027
    .restart local v10       #displayName:Ljava/lang/String;
    .restart local v12       #f:Ljava/io/File;
    .restart local v13       #filename:Ljava/lang/String;
    .restart local v14       #filenumber:I
    .restart local v21       #title:Ljava/lang/String;
    :cond_5
    move-object/from16 v18, v16

    goto :goto_5

    .line 2035
    :cond_6
    new-instance v22, Landroid/content/ContentValues;

    const/16 v23, 0xa

    invoke-direct/range {v22 .. v23}, Landroid/content/ContentValues;-><init>(I)V

    .line 2037
    .local v22, values:Landroid/content/ContentValues;
    const-string v23, "title"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2038
    const-string v23, "_display_name"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2039
    const-string v23, "datetaken"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2040
    const-string v23, "mime_type"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2041
    const-string v23, "_data"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2044
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v23

    if-eqz v23, :cond_7

    .line 2046
    const-string v23, "CamcorderEngine"

    const-string v24, "Insert contextual tag"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    const-string v23, "latitude"

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/location/Location;->getLatitude()D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 2054
    const-string v23, "longitude"

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/location/Location;->getLongitude()D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 2058
    :cond_7
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    .line 2059
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoTitle:Ljava/lang/String;

    .line 2061
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    goto/16 :goto_2
.end method

.method private disableAlertSound()V
    .locals 3

    .prologue
    .line 1080
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 1081
    .local v0, statusBar:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_0

    .line 1082
    const/high16 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1084
    :cond_0
    return-void
.end method

.method private dumpCamcorderInnerProfile()V
    .locals 3

    .prologue
    .line 840
    const-string v0, "CamcorderEngine"

    const-string v1, "[Dump] camcorder inner profile"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
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

    .line 843
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

    .line 844
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

    .line 845
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

    .line 846
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

    .line 847
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

    .line 848
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

    .line 849
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

    .line 850
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

    .line 851
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

    .line 852
    return-void
.end method

.method private dumpCamcorderProfile()V
    .locals 3

    .prologue
    .line 855
    const-string v0, "CamcorderEngine"

    const-string v1, "[Dump] camcorder profile"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "quality = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->quality:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileFormat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->duration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoCodec = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
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

    .line 867
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoFrameWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoFrameHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoFrameRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioCodec = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioBitRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioSampleRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioChannels = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    return-void
.end method

.method private enableAlertSound()V
    .locals 3

    .prologue
    .line 1088
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 1089
    .local v0, statusBar:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_0

    .line 1090
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1092
    :cond_0
    return-void
.end method

.method private getAudioBitRateFromProfile()I
    .locals 1

    .prologue
    .line 1956
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v0, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioBitrate:I

    return v0
.end method

.method private getFileFormatFromProfile()I
    .locals 1

    .prologue
    .line 1936
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v0, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mOutputFormat:I

    return v0
.end method

.method private getTempFileName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2106
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v1

    if-nez v1, :cond_0

    .line 2107
    sget-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    .line 2111
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

    .line 2109
    .end local v0           #cameraDirPath:Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    .restart local v0       #cameraDirPath:Ljava/lang/String;
    goto :goto_0
.end method

.method private getVideoBitRateFromProfile()I
    .locals 1

    .prologue
    .line 1944
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v0, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    return v0
.end method

.method private initializeRecorder()V
    .locals 12

    .prologue
    .line 563
    const-string v8, "CamcorderEngine"

    const-string v9, "initializeRecorder"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v8, :cond_0

    .line 673
    :goto_0
    return-void

    .line 568
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->readVideoPreferences()V

    .line 570
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 571
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 573
    .local v3, myExtras:Landroid/os/Bundle;
    const-wide/16 v4, 0x0

    .line 575
    .local v4, requestedSizeLimit:J
    iget-boolean v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mIsVideoCaptureIntent:Z

    if-eqz v8, :cond_2

    if-eqz v3, :cond_2

    .line 576
    const-string v8, "output"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 577
    .local v7, saveUri:Landroid/net/Uri;
    if-eqz v7, :cond_1

    .line 578
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->closeVideoFileDescriptor()V

    .line 580
    :try_start_0
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "rw"

    invoke-virtual {v8, v7, v9}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 582
    iput-object v7, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    .line 583
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

    .line 589
    :cond_1
    :goto_1
    const-string v8, "android.intent.extra.sizeLimit"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 590
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

    .line 593
    .end local v7           #saveUri:Landroid/net/Uri;
    :cond_2
    new-instance v8, Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-direct {v8}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;-><init>()V

    iput-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    .line 594
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v8}, Lcom/sec/android/seccamera/SecCamera;->unlock()V

    .line 595
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v8, v9}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setCamera(Lcom/sec/android/seccamera/SecCamera;)V

    .line 597
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v8, p0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnErrorListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;)V

    .line 598
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v8, p0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnInfoListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;)V

    .line 601
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->setRecorderUsingInnerProfile()V

    .line 606
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v9}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 608
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CheckMemory;->getAvailableStorage(I)J

    move-result-wide v8

    const-wide/32 v10, 0x500000

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->maxFileSize:J

    .line 609
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_3

    iget-wide v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->maxFileSize:J

    cmp-long v8, v4, v8

    if-gez v8, :cond_3

    .line 610
    iput-wide v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->maxFileSize:J

    .line 613
    :cond_3
    iget-wide v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->maxFileSize:J

    const-wide v10, 0xffffffffL

    cmp-long v8, v8, v10

    if-lez v8, :cond_4

    .line 614
    const-wide v8, 0xffffffffL

    iput-wide v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->maxFileSize:J

    .line 617
    :cond_4
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 618
    iget-boolean v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mIsVideoCaptureIntent:Z

    if-eqz v8, :cond_a

    if-eqz v3, :cond_a

    .line 619
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getRequestedRecordingSize()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->maxFileSize:J

    .line 626
    :cond_5
    :goto_2
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_7

    .line 627
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-eqz v8, :cond_6

    const-wide/32 v8, 0x3200000

    cmp-long v8, v4, v8

    if-lez v8, :cond_7

    .line 628
    :cond_6
    const-wide/32 v8, 0x3200000

    iput-wide v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->maxFileSize:J

    .line 632
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

    .line 635
    :try_start_1
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-wide v9, p0, Lcom/sec/android/app/camera/CamcorderEngine;->maxFileSize:J

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setMaxFileSize(J)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 642
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastOrientation()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/CamcorderEngine;->setOrientationOnTake(I)V

    .line 643
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getOrientationOnTake()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/CamcorderEngine;->calculateOrientationForPicture(I)I

    move-result v6

    .line 645
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

    .line 646
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v8, :cond_8

    .line 647
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v8, v6}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOrientationHint(I)V

    .line 657
    :cond_8
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v8, :cond_9

    .line 659
    :try_start_2
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v8}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->prepare()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 672
    :cond_9
    :goto_4
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    goto/16 :goto_0

    .line 584
    .end local v6           #rotation:I
    .restart local v7       #saveUri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 586
    .local v1, ex:Ljava/io/FileNotFoundException;
    const-string v8, "CamcorderEngine"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 621
    .end local v1           #ex:Ljava/io/FileNotFoundException;
    .end local v7           #saveUri:Landroid/net/Uri;
    :cond_a
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getMaxRecordingSize()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->maxFileSize:J

    .line 622
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    iget-wide v9, p0, Lcom/sec/android/app/camera/CamcorderEngine;->maxFileSize:J

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/app/camera/CameraSettings;->setRequestedRecordingSize(J)V

    goto/16 :goto_2

    .line 636
    :catch_1
    move-exception v0

    .line 637
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

    .line 638
    const-string v8, "CamcorderEngine"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    goto/16 :goto_3

    .line 660
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v6       #rotation:I
    :catch_2
    move-exception v0

    .line 662
    .local v0, e:Ljava/io/IOException;
    const-string v8, "CamcorderEngine"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 665
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopVideoRecording()V

    .line 666
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 669
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    const/4 v9, -0x4

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_4
.end method

.method private makeVideoFileSlow()V
    .locals 10

    .prologue
    .line 2083
    iget-object v7, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2084
    iget-object v7, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderSlowMotion()I

    move-result v6

    .line 2085
    .local v6, speed:I
    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    .line 2102
    .end local v6           #speed:I
    :cond_0
    :goto_0
    return-void

    .line 2088
    .restart local v6       #speed:I
    :cond_1
    const-string v7, "CamcorderEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The slowmode will be processed with speed type["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2090
    .local v3, lapTimeStart:J
    new-instance v5, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;

    invoke-direct {v5}, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;-><init>()V

    .line 2092
    .local v5, maker:Lcom/sec/android/app/camera/Mp4SlowMotionMaker;
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getTempFileName()Ljava/lang/String;

    move-result-object v7

    int-to-double v8, v6

    invoke-virtual {v5, v7, v8, v9}, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->makeMp4Slow(Ljava/lang/String;D)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2098
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v1, v7, v3

    .line 2099
    .local v1, lapTime:J
    const-string v7, "CamcorderEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Slow mode processing time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2093
    .end local v1           #lapTime:J
    :catch_0
    move-exception v0

    .line 2094
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private openCameraDevice()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 324
    const-string v1, "CamcorderEngine"

    const-string v2, "opening camera device..."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/Util;->openCamera(Landroid/app/Activity;I)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    .line 328
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 329
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.camera.ACTION_START_BACK_CAMERA"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :cond_0
    :goto_0
    iput v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRetry:I

    .line 352
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v1, :cond_1

    .line 353
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mErrorCallback:Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setErrorCallback(Lcom/sec/android/seccamera/SecCamera$ErrorCallback;)V

    .line 354
    const-string v1, "CamcorderEngine"

    const-string v2, "camera device is opened."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v1}, Lcom/sec/android/seccamera/SecCamera;->getParameters()Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    .line 358
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v1, :cond_1

    .line 359
    const-string v1, "CamcorderEngine"

    const-string v2, "CamcorderParameters is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    .line 368
    :cond_1
    :goto_1
    return-void

    .line 331
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

    .line 333
    :catch_0
    move-exception v0

    .line 335
    .local v0, e:Ljava/lang/Exception;
    iget v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRetry:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRetry:I

    .line 336
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v1, :cond_3

    iget v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRetry:I

    if-gez v1, :cond_3

    .line 337
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

    .line 338
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->openCameraDevice()V

    .line 340
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v1, :cond_1

    .line 342
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v1, :cond_4

    iget v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRetry:I

    if-ltz v1, :cond_4

    .line 343
    const-string v1, "CamcorderEngine"

    const-string v2, "service cannot connect. critical exception occured."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iput v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRetry:I

    .line 345
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 347
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

    .line 2211
    iget-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderQuality()I

    move-result v4

    .line 2214
    .local v4, videoQuality:I
    iget-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2215
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "android.intent.extra.videoQuality"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2216
    const-string v6, "android.intent.extra.videoQuality"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2217
    .local v0, extraVideoQuality:I
    if-nez v0, :cond_3

    move v4, v5

    .line 2222
    .end local v0           #extraVideoQuality:I
    :cond_0
    :goto_0
    iput v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    .line 2223
    const-string v6, "android.intent.extra.durationLimit"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2224
    const-string v6, "android.intent.extra.durationLimit"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 2225
    .local v3, seconds:I
    mul-int/lit16 v5, v3, 0x3e8

    iput v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    .line 2237
    .end local v3           #seconds:I
    :cond_1
    :goto_1
    const-string v5, "CamcorderEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CAMERA_ENABLE_RECORDING_SPEED_CONTROL E: mMaxVideoDurationInMs("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") > SlowMotionEnabled("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2239
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderSlowMotion()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 2253
    :cond_2
    :goto_2
    const-string v5, "CamcorderEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CAMERA_ENABLE_RECORDING_SPEED_CONTROL X: mMaxVideoDurationInMs("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") > getCamcorderSlowMotion("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderSlowMotion()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2258
    new-instance v5, Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v5, v6, v4}, Lcom/sec/android/app/camera/MediaRecorderProfile;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    iput-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    .line 2259
    return-void

    .line 2217
    .restart local v0       #extraVideoQuality:I
    :cond_3
    const/4 v4, 0x2

    goto/16 :goto_0

    .line 2227
    .end local v0           #extraVideoQuality:I
    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v5, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camcorder;->getRemainTime()I

    move-result v5

    mul-int/lit16 v2, v5, 0x3e8

    .line 2228
    .local v2, nRemainTime:I
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderVideoDurationInMS()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    .line 2229
    iget v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    if-le v5, v2, :cond_1

    .line 2230
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

    .line 2231
    iput v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    goto/16 :goto_1

    .line 2241
    .end local v2           #nRemainTime:I
    :pswitch_0
    iget v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    goto/16 :goto_2

    .line 2244
    :pswitch_1
    iget v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    div-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    goto/16 :goto_2

    .line 2247
    :pswitch_2
    iget v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    div-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    goto/16 :goto_2

    .line 2239
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private registerVideo()V
    .locals 9

    .prologue
    const v8, 0x7f0900ea

    const/4 v7, 0x0

    .line 2121
    const-string v3, "CamcorderEngine"

    const-string v4, "registerVideo"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v3, :cond_0

    .line 2124
    const-string v3, "content://media/external/video/media"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2125
    .local v2, videoTable:Landroid/net/Uri;
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v4, "_size"

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2126
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v4, "resolution"

    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2131
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMediaMetadataRetriever()Landroid/media/MediaMetadataRetriever;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 2132
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v4, "duration"

    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMediaMetadataRetriever()Landroid/media/MediaMetadataRetriever;

    move-result-object v5

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2140
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    .line 2142
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camcorder;

    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camcorder;->onVideoStoringCompleted(Landroid/net/Uri;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3

    .line 2169
    .end local v2           #videoTable:Landroid/net/Uri;
    :goto_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 2170
    return-void

    .line 2133
    .restart local v2       #videoTable:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 2134
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "CamcorderEngine"

    const-string v4, "setDataSource failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v4, "duration"

    iget-wide v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoRecordingTimeInMiliSecond:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 2143
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 2144
    .local v1, sfe:Landroid/database/sqlite/SQLiteFullException;
    const-string v3, "CamcorderEngine"

    const-string v4, "Not enough space in database"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-static {v3, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 2146
    .end local v1           #sfe:Landroid/database/sqlite/SQLiteFullException;
    :catch_2
    move-exception v0

    .line 2147
    .local v0, e:Ljava/lang/UnsupportedOperationException;
    const-string v3, "CamcorderEngine"

    const-string v4, "insert failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2149
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camcorder;->onVideoStoringFailed()V

    goto :goto_1

    .line 2150
    .end local v0           #e:Ljava/lang/UnsupportedOperationException;
    :catch_3
    move-exception v0

    .line 2151
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v3, "CamcorderEngine"

    const-string v4, "insert failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2153
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camcorder;->onVideoStoringFailed()V

    goto :goto_1

    .line 2158
    .end local v0           #e:Ljava/lang/IllegalStateException;
    .end local v2           #videoTable:Landroid/net/Uri;
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camcorder;

    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camcorder;->onVideoStoringCompleted(Landroid/net/Uri;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_1

    .line 2159
    :catch_4
    move-exception v1

    .line 2160
    .restart local v1       #sfe:Landroid/database/sqlite/SQLiteFullException;
    const-string v3, "CamcorderEngine"

    const-string v4, "Not enough space in database"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-static {v3, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 2162
    .end local v1           #sfe:Landroid/database/sqlite/SQLiteFullException;
    :catch_5
    move-exception v0

    .line 2163
    .local v0, e:Ljava/lang/UnsupportedOperationException;
    const-string v3, "CamcorderEngine"

    const-string v4, "insert failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2165
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camcorder;->onVideoStoringFailed()V

    goto/16 :goto_1
.end method

.method private renameTempFile()V
    .locals 3

    .prologue
    .line 2115
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getTempFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2116
    .local v1, src:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2117
    .local v0, dest:Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2118
    return-void
.end method

.method private setRecorderUsingInnerProfile()V
    .locals 7

    .prologue
    const/16 v6, 0x2d0

    const/16 v5, 0x1e0

    const/4 v4, 0x1

    .line 681
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioRecording()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 682
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioSource(I)V

    .line 685
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 686
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setLocation(FF)V

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0, v4}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoSource(I)V

    .line 693
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 694
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0, v4}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFormat(I)V

    .line 698
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setMaxDuration(I)V

    .line 700
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderFastMotionEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 701
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoFps:I

    int-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/CameraSettings;->getTimeLapseFps(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setCaptureRate(D)V

    .line 706
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setDurationInterval(I)V

    .line 707
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v0, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    const/16 v1, 0x780

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v0, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    const/16 v1, 0x438

    if-ne v0, v1, :cond_6

    .line 708
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v1, 0xaf000

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_c

    .line 732
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 742
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoFps:I

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoFrameRate(I)V

    .line 743
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoSize(II)V

    .line 745
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoEncodingBitRate(I)V

    .line 746
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioBitrate:I

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioEncodingBitRate(I)V

    .line 747
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioChannels:I

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioChannels(I)V

    .line 748
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioSamplingRate:I

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioSamplingRate(I)V

    .line 749
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoEncoder:I

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoEncoder(I)V

    .line 752
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioRecording()I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 753
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioEncoder:I

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioEncoder(I)V

    .line 754
    :cond_4
    return-void

    .line 696
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mOutputFormat:I

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFormat(I)V

    goto/16 :goto_0

    .line 709
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v0, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    const/16 v1, 0x500

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v0, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    if-ne v0, v6, :cond_7

    .line 710
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v1, 0x7d000

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_1

    .line 724
    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 711
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v0, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    if-ne v0, v6, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v0, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    if-ne v0, v5, :cond_8

    .line 712
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v1, 0x1e000

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_1

    .line 713
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v0, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    const/16 v1, 0x280

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v0, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    if-ne v0, v5, :cond_9

    .line 714
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v1, 0x19000

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_1

    .line 715
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v0, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    const/16 v1, 0x140

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v0, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_a

    .line 716
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/16 v1, 0x7800

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_1

    .line 717
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v0, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    const/16 v1, 0xb0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v0, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    const/16 v1, 0x90

    if-ne v0, v1, :cond_3

    .line 718
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v0

    if-ne v0, v4, :cond_b

    .line 719
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/16 v1, 0x1800

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_1

    .line 721
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/16 v1, 0x3000

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 734
    :cond_c
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->createVideoPath()V

    .line 735
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getTempFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private setRecorderUsingProfile()V
    .locals 7

    .prologue
    const/16 v6, 0x2d0

    const/16 v5, 0x1e0

    const/4 v4, 0x1

    .line 758
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioRecording()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 759
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioSource(I)V

    .line 762
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 763
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setLocation(FF)V

    .line 769
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0, v4}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoSource(I)V

    .line 770
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 771
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0, v4}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFormat(I)V

    .line 775
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setMaxDuration(I)V

    .line 777
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderFastMotionEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 778
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/CameraSettings;->getTimeLapseFps(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setCaptureRate(D)V

    .line 783
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setDurationInterval(I)V

    .line 784
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v1, 0x780

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v1, 0x438

    if-ne v0, v1, :cond_6

    .line 785
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v1, 0xaf000

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_c

    .line 809
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 819
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoFrameRate(I)V

    .line 820
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoSize(II)V

    .line 824
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoEncodingBitRate(I)V

    .line 829
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioEncodingBitRate(I)V

    .line 830
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioChannels(I)V

    .line 831
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioSamplingRate(I)V

    .line 832
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoEncoder(I)V

    .line 835
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioRecording()I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 836
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioEncoder(I)V

    .line 837
    :cond_4
    return-void

    .line 773
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFormat(I)V

    goto/16 :goto_0

    .line 786
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v1, 0x500

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-ne v0, v6, :cond_7

    .line 787
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v1, 0x7d000

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_1

    .line 801
    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 788
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    if-ne v0, v6, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-ne v0, v5, :cond_8

    .line 789
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v1, 0x1e000

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_1

    .line 790
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v1, 0x280

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-ne v0, v5, :cond_9

    .line 791
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v1, 0x19000

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_1

    .line 792
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v1, 0x140

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_a

    .line 793
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/16 v1, 0x7800

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_1

    .line 794
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v1, 0xb0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v1, 0x90

    if-ne v0, v1, :cond_3

    .line 795
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v0

    if-ne v0, v4, :cond_b

    .line 796
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/16 v1, 0x1800

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_1

    .line 798
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/16 v1, 0x3000

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 811
    :cond_c
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->createVideoPath()V

    .line 812
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

    .line 1060
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

    .line 1062
    return-void
.end method

.method private updateOutdoorVisibility()V
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x4

    :try_start_0
    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)Z

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderOutdoorVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 245
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)Z

    .line 253
    :goto_0
    return-void

    .line 247
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateSettingsWhenSwitchCamera()V
    .locals 1

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->refreshCamcorderSettingValuesFromPreferences()V

    .line 1433
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->refreshCamcorderSettingValues()V

    .line 1434
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->updateRecordingModeWhenSwitchCamera()V

    .line 1435
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderSettingValuesAsDefault()V

    .line 1436
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->refreshButtonDimForCamcorder()V

    .line 1437
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1438
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->setDefaultCamcorderVideoDuration()V

    .line 1440
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelAutoFocus()V
    .locals 2

    .prologue
    .line 1663
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v0, :cond_1

    .line 1664
    const-string v0, "CamcorderEngine"

    const-string v1, "cancelAutoFocus - this cmd is skiped because mCameraDevice is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    :cond_0
    :goto_0
    return-void

    .line 1668
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    if-eqz v0, :cond_2

    .line 1669
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1670
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    new-instance v1, Lcom/sec/android/app/camera/CamcorderEngine$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CamcorderEngine$6;-><init>(Lcom/sec/android/app/camera/CamcorderEngine;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 1679
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->isAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1680
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    if-eqz v0, :cond_0

    .line 1681
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public closeCamcorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 256
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 257
    const-string v0, "CamcorderEngine"

    const-string v1, "closeCamcorder"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraHolder;->release()V

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v2}, Lcom/sec/android/seccamera/SecCamera;->setZoomChangeListener(Lcom/sec/android/seccamera/SecCamera$OnZoomChangeListener;)V

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v2}, Lcom/sec/android/seccamera/SecCamera;->setFaceDetectionListener(Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;)V

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v2}, Lcom/sec/android/seccamera/SecCamera;->setErrorCallback(Lcom/sec/android/seccamera/SecCamera$ErrorCallback;)V

    .line 263
    iput-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    .line 264
    iput-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    .line 268
    :cond_0
    return-void
.end method

.method public closeVideoFileDescriptor()V
    .locals 3

    .prologue
    .line 881
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 883
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 887
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 889
    :cond_0
    return-void

    .line 884
    :catch_0
    move-exception v0

    .line 885
    .local v0, e:Ljava/io/IOException;
    const-string v1, "CamcorderEngine"

    const-string v2, "Fail to close fd"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public disableSystemSoundEffect()V
    .locals 3

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sound_effects_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1071
    return-void
.end method

.method public doAutoFocusAsync()V
    .locals 2

    .prologue
    .line 1656
    const-string v0, "CamcorderEngine"

    const-string v1, "doAutoFocusAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mFocusState:I

    .line 1659
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mAutoFocusCallback:Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->autoFocus(Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;)V

    .line 1660
    return-void
.end method

.method public doCancelVideoRecordingSync()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1265
    const-string v5, "CamcorderEngine"

    const-string v6, "doCancelVideoRecordingSync"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    const-string v5, "CamcorderEngine"

    const-string v6, "Cancelling VideoRecording..."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    iget-boolean v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v5, :cond_6

    .line 1270
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderFlashMode()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 1271
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1272
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v5, v6}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 1278
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->reset()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1283
    :goto_0
    iput-boolean v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    .line 1284
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 1289
    :cond_1
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.server.CpuGovernorService.action.IOBUSY_UNVOTE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1291
    .local v2, ioBusyUnVoteIntent:Landroid/content/Intent;
    const-string v5, "com.android.server.CpuGovernorService.voteType"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1292
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v5, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1294
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.sec.chaton.util.ACTION_VIDEO_RECORDING_STOP"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1295
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getSystemSoundEffect()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1296
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->enableSystemSoundEffect()V

    .line 1306
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->cleanupTempFile()V

    .line 1308
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v5, :cond_4

    .line 1309
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1310
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 1312
    .local v3, myExtras:Landroid/os/Bundle;
    iget-boolean v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mIsVideoCaptureIntent:Z

    if-eqz v5, :cond_3

    if-eqz v3, :cond_3

    .line 1313
    const-string v5, "output"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 1316
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

    .line 1321
    .end local v4           #saveUri:Landroid/net/Uri;
    :cond_3
    :goto_2
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1325
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #myExtras:Landroid/os/Bundle;
    :cond_4
    iput-boolean v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRecordingInitiated:Z

    .line 1327
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->enableAlertSound()V

    .line 1328
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v5, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camcorder;->hideZoomMenu()V

    .line 1329
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v5, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camcorder;->isRecordingMenuTop()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1330
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v5, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camcorder;->hideRecordingLayout()V

    .line 1331
    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 1333
    :cond_5
    const-string v5, "CamcorderEngine"

    const-string v6, "Cancelling VideoRecording is completed!"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    return-void

    .line 1279
    .end local v2           #ioBusyUnVoteIntent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1280
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

    .line 1285
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_6
    iget-boolean v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    if-eqz v5, :cond_1

    .line 1286
    iput-boolean v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    goto/16 :goto_1

    .line 1317
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

    .line 429
    const-string v3, "CamcorderEngine"

    const-string v4, "doChangeParameterSync"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v3, :cond_0

    .line 432
    const-string v1, "CamcorderEngine"

    const-string v2, "returning because mCameraDevice is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :goto_0
    return-void

    .line 436
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v3, :cond_1

    .line 437
    const-string v1, "CamcorderEngine"

    const-string v2, "CamcorderParameters is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 441
    check-cast v0, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;

    .line 443
    .local v0, p:Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 483
    :goto_1
    :sswitch_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v1

    const/16 v3, 0x68

    if-ne v1, v3, :cond_2

    .line 484
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v1

    const/16 v3, 0xe

    invoke-static {v1, v3}, Lcom/sec/android/app/camera/CameraResolution;->compare(II)I

    move-result v1

    if-ltz v1, :cond_4

    .line 486
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchDuplicateRequest(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 500
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    goto :goto_0

    .line 445
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 448
    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getEffectString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 451
    :sswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getWhitebalanceString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 454
    :sswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getIsoString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 457
    :sswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 460
    :sswitch_6
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    if-ne v4, v1, :cond_3

    :goto_3
    invoke-virtual {v3, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setVideoStabilization(Z)V

    goto/16 :goto_1

    :cond_3
    move v1, v2

    goto :goto_3

    .line 466
    :sswitch_7
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 476
    :sswitch_8
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingFastFPSMode(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 489
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 502
    :cond_5
    const-string v1, "CamcorderEngine"

    const-string v2, "parameter will set next operation coming"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 443
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_4
        0xb -> :sswitch_5
        0x69 -> :sswitch_1
        0x6b -> :sswitch_3
        0x6c -> :sswitch_2
        0x6d -> :sswitch_7
        0x6e -> :sswitch_7
        0x70 -> :sswitch_7
        0x72 -> :sswitch_0
        0x73 -> :sswitch_0
        0x74 -> :sswitch_0
        0x7d -> :sswitch_6
        0x7e -> :sswitch_8
    .end sparse-switch
.end method

.method public doLaunchGallerySync(Ljava/lang/String;)V
    .locals 2
    .parameter "keyValue"

    .prologue
    .line 1343
    const-string v0, "CamcorderEngine"

    const-string v1, "doLaunchGallerySync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/Camcorder;->onLaunchGallery(Ljava/lang/String;)V

    .line 1346
    return-void
.end method

.method public doPauseVideoRecordingSync()V
    .locals 3

    .prologue
    .line 1101
    const-string v1, "CamcorderEngine"

    const-string v2, "doPauseVideoRecordingSync"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-nez v1, :cond_0

    .line 1104
    const-string v1, "CamcorderEngine"

    const-string v2, "SecMediaRecorder is not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    :goto_0
    return-void

    .line 1108
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    if-nez v1, :cond_1

    .line 1109
    const-string v1, "CamcorderEngine"

    const-string v2, "Recording is not started yet."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1114
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->pause()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1121
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->enableAlertSound()V

    goto :goto_0

    .line 1115
    :catch_0
    move-exception v0

    .line 1116
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "CamcorderEngine"

    const-string v2, "Could not pause media recorder. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1117
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->enableAlertSound()V

    goto :goto_0
.end method

.method public doPrepareVideoRecordingAsync()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 917
    const-string v0, "CamcorderEngine"

    const-string v1, "doPrepareVideoRecordingAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMainHandler:Lcom/sec/android/app/camera/CameraEngine$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$MainHandler;->removeMessages(I)V

    .line 921
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v0, :cond_0

    .line 922
    const-string v0, "CamcorderEngine"

    const-string v1, "mMediaRecorder is already initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    const-string v0, "CamcorderEngine"

    const-string v1, "Releasing mMediaRecorder..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 928
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderFlashMode()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 929
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 930
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 933
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 934
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 935
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->stopContinuousAF()V

    .line 936
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->hideFocusIndicator()V

    .line 939
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_4

    .line 940
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/CamcorderEngine$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CamcorderEngine$3;-><init>(Lcom/sec/android/app/camera/CamcorderEngine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    .line 956
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    const-string v1, "PrepareRecordingThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 957
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 959
    :cond_4
    return-void
.end method

.method public doResetSettingsSync()V
    .locals 1

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->resetButtonDim()V

    .line 1446
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->resetCamcorderSettingsToDefault()V

    .line 1448
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->updateUIWhenResetSettings()V

    .line 1450
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->refreshButtonDimForCamcorder()V

    .line 1451
    return-void
.end method

.method public doResumeVideoRecordingSync()V
    .locals 3

    .prologue
    .line 1131
    const-string v1, "CamcorderEngine"

    const-string v2, "doResumeVideoRecordingSync"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-nez v1, :cond_0

    .line 1134
    const-string v1, "CamcorderEngine"

    const-string v2, "SecMediaRecorder is not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    :goto_0
    return-void

    .line 1138
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    if-nez v1, :cond_1

    .line 1139
    const-string v1, "CamcorderEngine"

    const-string v2, "Recording is not started yet."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1144
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->resume()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1149
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->disableAlertSound()V

    goto :goto_0

    .line 1145
    :catch_0
    move-exception v0

    .line 1146
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "CamcorderEngine"

    const-string v2, "Could not resume media recorder. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public doSetAllParamsSync()V
    .locals 0

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->initialize()V

    .line 426
    return-void
.end method

.method public doStartEngineAsync()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 371
    const-string v0, "CamcorderEngine"

    const-string v1, "doStartEngineAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRecordingInitiated:Z

    .line 376
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    if-nez v0, :cond_0

    .line 377
    new-instance v0, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    .line 380
    :cond_0
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    .line 391
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/CamcorderEngine$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CamcorderEngine$2;-><init>(Lcom/sec/android/app/camera/CamcorderEngine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mOpenCameraThread:Ljava/lang/Thread;

    .line 397
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mOpenCameraThread:Ljava/lang/Thread;

    const-string v1, "openCamcorderThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mOpenCameraThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 401
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->isProviderEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->startReceivingLocationUpdates()V

    .line 408
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->setOrientationListener()V

    .line 409
    return-void

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setGPS(I)V

    goto :goto_0
.end method

.method public doStartPreviewAsync()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 1349
    const-string v2, "CamcorderEngine"

    const-string v3, "doStartPreviewAsync"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v2, :cond_1

    .line 1352
    const-string v2, "CamcorderEngine"

    const-string v3, "return because mSurfaceHolder is null."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    if-eqz v2, :cond_0

    .line 1355
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 1402
    :cond_0
    :goto_0
    return-void

    .line 1361
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v2, :cond_2

    .line 1362
    const-string v2, "CamcorderEngine"

    const-string v3, "return because mCameraDevice is null."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1366
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->resetPreviewSize()V

    .line 1369
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1379
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/camera/CamcorderEngine$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/CamcorderEngine$5;-><init>(Lcom/sec/android/app/camera/CamcorderEngine;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1394
    .local v1, startPreviewThread:Ljava/lang/Thread;
    const-string v2, "startPreviewThread"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1395
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1396
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    .line 1398
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v2, :cond_3

    .line 1399
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v2}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0

    .line 1370
    .end local v1           #startPreviewThread:Ljava/lang/Thread;
    :catch_0
    move-exception v0

    .line 1371
    .local v0, exception:Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->closeCamcorder()V

    .line 1374
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    .line 1375
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    const/4 v3, -0x3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1401
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

    .line 970
    const-string v0, "CamcorderEngine"

    const-string v1, "doStartVideoRecordingAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    iput-wide v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoFileLengthInByte:J

    .line 972
    iput-wide v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoRecordingTimeInMiliSecond:J

    .line 975
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRecordingInitiated:Z

    .line 978
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 979
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 985
    :cond_0
    :goto_0
    const-string v0, "CamcorderEngine"

    const-string v1, "start video recording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    if-nez v0, :cond_1

    .line 988
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/CamcorderEngine$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CamcorderEngine$4;-><init>(Lcom/sec/android/app/camera/CamcorderEngine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStartRecordingThread:Ljava/lang/Thread;

    .line 1026
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStartRecordingThread:Ljava/lang/Thread;

    const-string v1, "StartRecordingThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1027
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStartRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1038
    :cond_1
    return-void

    .line 981
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public doStopEngineSync()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 412
    const-string v0, "CamcorderEngine"

    const-string v1, "doStopEngineSync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;->removeMessages(I)V

    .line 416
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    .line 419
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->closeCamcorder()V

    .line 421
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    .line 422
    return-void
.end method

.method public doStopPreviewSync()V
    .locals 2

    .prologue
    .line 1405
    const-string v0, "CamcorderEngine"

    const-string v1, "doStopPreviewSync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 1408
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->stopPreview()V

    .line 1411
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    .line 1413
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    .line 1414
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 1417
    :goto_0
    return-void

    .line 1416
    :cond_1
    const-string v0, "CamcorderEngine"

    const-string v1, "doStopPreviewSync : mOrientationListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public doStopVideoRecordingSync()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1159
    const-string v3, "CamcorderEngine"

    const-string v4, "doStopVideoRecordingSync"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    const-string v3, "CamcorderEngine"

    const-string v4, "Stopping VideoRecording..."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    iget-boolean v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v3, :cond_6

    .line 1164
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderFlashMode()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 1165
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1166
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v3, v4}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 1169
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1170
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1171
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->startContinuousAF()V

    .line 1172
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camcorder;->hideFocusIndicator()V

    .line 1176
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.server.CpuGovernorService.action.IOBUSY_UNVOTE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1178
    .local v2, ioBusyUnVoteIntent:Landroid/content/Intent;
    const-string v3, "com.android.server.CpuGovernorService.voteType"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1179
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1181
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.sec.chaton.util.ACTION_VIDEO_RECORDING_STOP"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1182
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getSystemSoundEffect()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1183
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->enableSystemSoundEffect()V

    .line 1189
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->stop()V

    .line 1190
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopInactivityTimer()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1205
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->makeVideoFileSlow()V

    .line 1207
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v3, :cond_3

    .line 1208
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->renameTempFile()V

    .line 1210
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1212
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    .line 1213
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 1223
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->registerVideo()V

    .line 1226
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 1227
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 1228
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.android.cloudagent.ACTION_REQUEST_CAPTURED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1229
    .local v1, i:Landroid/content/Intent;
    const-string v3, "LOCALPATH"

    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1231
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1233
    const-string v3, "CamcorderEngine"

    const-string v4, "Google drive: Camera auto upload"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    .end local v1           #i:Landroid/content/Intent;
    .end local v2           #ioBusyUnVoteIntent:Landroid/content/Intent;
    :cond_4
    :goto_0
    iput-object v7, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    .line 1243
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->removeHideFocusRectMessage()V

    .line 1245
    sget-boolean v3, Lcom/sec/android/app/camera/CamcorderEngine;->m_bIsTouchAutoFocusing:Z

    if-eqz v3, :cond_5

    .line 1246
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMainHandler:Lcom/sec/android/app/camera/CameraEngine$MainHandler;

    const/4 v4, 0x1

    const-wide/16 v5, 0xbb8

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/android/app/camera/CameraEngine$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1252
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->enableAlertSound()V

    .line 1253
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->updateRemainTime()V

    .line 1255
    const-string v3, "CamcorderEngine"

    const-string v4, "Stopping VideoRecording is completed!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    :goto_1
    return-void

    .line 1191
    .restart local v2       #ioBusyUnVoteIntent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1192
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "CamcorderEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stop failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    .line 1194
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 1196
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->cleanupTempFile()V

    .line 1197
    iput-object v7, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    .line 1198
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->closeVideoFileDescriptor()V

    .line 1200
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->enableAlertSound()V

    goto :goto_1

    .line 1237
    .end local v0           #e:Ljava/lang/RuntimeException;
    .end local v2           #ioBusyUnVoteIntent:Landroid/content/Intent;
    :cond_6
    iget-boolean v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    if-eqz v3, :cond_4

    .line 1238
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    goto :goto_0
.end method

.method public final doTakePictureAsync()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2373
    const-string v1, "CamcorderEngine"

    const-string v2, "doTakePictureAsync from camcorder engine"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v1, :cond_0

    .line 2376
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastOrientation()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->setOrientationOnTake(I)V

    .line 2377
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getOrientationOnTake()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->calculateOrientationForPicture(I)I

    move-result v0

    .line 2379
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

    .line 2380
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setRotation(I)V

    .line 2381
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 2383
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    new-instance v2, Lcom/sec/android/app/camera/CamcorderEngine$7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/CamcorderEngine$7;-><init>(Lcom/sec/android/app/camera/CamcorderEngine;)V

    invoke-virtual {v1, v4, v4, v2}, Lcom/sec/android/seccamera/SecCamera;->takePicture(Lcom/sec/android/seccamera/SecCamera$ShutterCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;)V

    .line 2508
    .end local v0           #rotation:I
    :cond_0
    return-void
.end method

.method public doWaitForSurfaceAsync()V
    .locals 2

    .prologue
    .line 897
    const-string v0, "CamcorderEngine"

    const-string v1, "doWaitForSurfaceAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 900
    const-string v0, "CamcorderEngine"

    const-string v1, "mSurfaceHolder is already created!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    .line 906
    :goto_0
    return-void

    .line 903
    :cond_0
    const-string v0, "CamcorderEngine"

    const-string v1, "start waiting for mSurfaceHolder..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    goto :goto_0
.end method

.method public enableSystemSoundEffect()V
    .locals 3

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sound_effects_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1076
    return-void
.end method

.method public getCamcorderInnerProfile()Lcom/sec/android/app/camera/MediaRecorderProfile;
    .locals 3

    .prologue
    .line 548
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    if-nez v0, :cond_0

    .line 549
    const-string v0, "CamcorderEngine"

    const-string v1, "getCamcorderInnerProfile: mCameraSettings is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const/4 v0, 0x0

    .line 557
    :goto_0
    return-object v0

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    if-eqz v0, :cond_1

    .line 554
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    goto :goto_0

    .line 556
    :cond_1
    new-instance v0, Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderQuality()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/MediaRecorderProfile;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    .line 557
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    goto :goto_0
.end method

.method public getCamcorderProfile()Landroid/media/CamcorderProfile;
    .locals 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    if-nez v0, :cond_0

    .line 534
    const-string v0, "CamcorderEngine"

    const-string v1, "getCamcorderProfile: mCameraSettings is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const/4 v0, 0x0

    .line 544
    :goto_0
    return-object v0

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v0, :cond_1

    .line 539
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    goto :goto_0

    .line 541
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

    .line 544
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    goto :goto_0
.end method

.method public getCurrentVideoFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2270
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getGpsLocation()Landroid/location/Location;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    .line 2541
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 2543
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

    .line 2546
    .end local v0           #loc:Landroid/location/Location;
    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    .line 2541
    goto :goto_0
.end method

.method public getMaxFileSize()J
    .locals 2

    .prologue
    .line 676
    iget-wide v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->maxFileSize:J

    return-wide v0
.end method

.method public getRemainTime()I
    .locals 6

    .prologue
    .line 2328
    const/4 v1, 0x0

    .line 2329
    .local v1, nBitrate:I
    const/4 v3, 0x0

    .line 2330
    .local v3, nVideoBitrate:I
    const/4 v0, 0x0

    .line 2331
    .local v0, nAudioBitrate:I
    const/4 v2, 0x0

    .line 2333
    .local v2, nRemainTime:I
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->readVideoPreferences()V

    .line 2335
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoBitRateFromProfile()I

    move-result v3

    .line 2338
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioRecording()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 2339
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getAudioBitRateFromProfile()I

    move-result v0

    .line 2342
    :cond_0
    add-int v4, v3, v0

    div-int/lit8 v1, v4, 0x8

    .line 2343
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v4

    invoke-static {v4, v1}, Lcom/sec/android/app/camera/CheckMemory;->getRemainTime(II)I

    move-result v2

    .line 2345
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    .line 2347
    return v2
.end method

.method public getSurpportedVideoSize(II)Z
    .locals 5
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x1

    .line 2517
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v2

    .line 2518
    .local v2, sizes:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    if-nez v2, :cond_1

    .line 2519
    const-string v3, "CamcorderEngine"

    const-string v4, "supported video sizes is null"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    const/4 v3, 0x0

    .line 2527
    :cond_0
    :goto_0
    return v3

    .line 2522
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

    .line 2523
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
    .line 1065
    sget-boolean v0, Lcom/sec/android/app/camera/CamcorderEngine;->isSystemSoundEffectEnabled:Z

    return v0
.end method

.method public getTouchFocusPositioned()Z
    .locals 1

    .prologue
    .line 1549
    sget-boolean v0, Lcom/sec/android/app/camera/CamcorderEngine;->m_bIsTouchFocusPositioned:Z

    return v0
.end method

.method public getVideoFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public getVideoFileLengthInByte()J
    .locals 2

    .prologue
    .line 2262
    iget-wide v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoFileLengthInByte:J

    return-wide v0
.end method

.method public getVideoRecordingTimeInSecond()I
    .locals 4

    .prologue
    .line 2266
    iget-wide v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoRecordingTimeInMiliSecond:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public handleVideoRecordingStarted()V
    .locals 2

    .prologue
    .line 1041
    const-string v0, "CamcorderEngine"

    const-string v1, "handleVideoRecordingStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->onVideoRecordingStart()V

    .line 1044
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

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 177
    .local v0, camSettings:Lcom/sec/android/app/camera/CameraSettings;
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v3, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 181
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 184
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v4, 0x5

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mAutoFocusCallback:Lcom/sec/android/app/camera/CamcorderEngine$AutoFocusCallback;

    invoke-virtual {v3, v4}, Lcom/sec/android/seccamera/SecCamera;->setAutoFocusCb(Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;)V

    .line 187
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0x67

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0x6c

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderEffect()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getEffectString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getWhiteBalance()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getWhitebalanceString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0x70

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderZoomValue()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 191
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0x6d

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderExposureValue()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 192
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0x6e

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAutoContrast()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 193
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0x68

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0xd

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 196
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAntishake()I

    move-result v4

    if-ne v4, v1, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setVideoStabilization(Z)V

    .line 198
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v3, "video_recording_gamma"

    const-string v4, "on"

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v3, "slow_ae"

    const-string v4, "on"

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v3, 0xb

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAntiBanding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v3, 0xa

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getIsoString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 213
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getSceneModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    goto/16 :goto_0

    :cond_2
    move v1, v2

    .line 196
    goto :goto_1

    .line 215
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 216
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v3, 0x6d

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderExposureValue()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 217
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v3, 0x6c

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderEffect()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getEffectString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getWhiteBalance()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getWhitebalanceString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setVideoStabilization(Z)V

    .line 224
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAntiBanding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSelfFlip()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->setFrontSensorMirror(I)V

    goto :goto_2
.end method

.method public isMediaRecorderRecording()Z
    .locals 1

    .prologue
    .line 2324
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    return v0
.end method

.method public isRecorderStarting()Z
    .locals 2

    .prologue
    .line 525
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

    .line 526
    :cond_0
    const/4 v0, 0x1

    .line 529
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

    .line 513
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 521
    :cond_0
    :goto_0
    return v0

    .line 517
    :cond_1
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 521
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouchAutoFocusing()Z
    .locals 1

    .prologue
    .line 1575
    sget-boolean v0, Lcom/sec/android/app/camera/CamcorderEngine;->m_bIsTouchAutoFocusing:Z

    return v0
.end method

.method public onCameraSettingsChanged(II)V
    .locals 1
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 1454
    sparse-switch p1, :sswitch_data_0

    .line 1507
    :goto_0
    :sswitch_0
    return-void

    .line 1463
    :sswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleChangeParameter(II)V

    goto :goto_0

    .line 1480
    :sswitch_2
    new-instance v0, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;-><init>(Lcom/sec/android/app/camera/CameraEngine;II)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doChangeParameterSync(Ljava/lang/Object;)V

    goto :goto_0

    .line 1484
    :sswitch_3
    new-instance v0, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;-><init>(Lcom/sec/android/app/camera/CameraEngine;II)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doChangeParameterSync(Ljava/lang/Object;)V

    goto :goto_0

    .line 1490
    :sswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1491
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopPreview()V

    .line 1492
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleChangeParameter(II)V

    .line 1493
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    goto :goto_0

    .line 1496
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleChangeParameter(II)V

    goto :goto_0

    .line 1500
    :sswitch_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 1501
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->startReceivingLocationUpdates()V

    goto :goto_0

    .line 1503
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->stopReceivingLocationUpdates()V

    goto :goto_0

    .line 1454
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
        0x7d -> :sswitch_4
        0x7e -> :sswitch_3
        0x82 -> :sswitch_5
        0x83 -> :sswitch_0
    .end sparse-switch
.end method

.method public onError(Lcom/sec/android/secmediarecorder/SecMediaRecorder;II)V
    .locals 2
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 2274
    const-string v0, "CamcorderEngine"

    const-string v1, "onError"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2276
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 2277
    const-string v0, "CamcorderEngine"

    const-string v1, "MEDIA_RECORDER_ERROR_UNKNOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleCancelVideoRecording()V

    .line 2280
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 2281
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->finishRecordingWithError()V

    .line 2288
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    const/4 v1, -0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    .line 2289
    :goto_0
    return-void

    .line 2282
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 2283
    const-string v0, "CamcorderEngine"

    const-string v1, "MEDIA_RECORDER_ERROR_BUFFER_OVERFLOW"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v1, -0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finishOnError(I)V

    .line 2285
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopVideoRecording()V

    goto :goto_0
.end method

.method public onInfo(Lcom/sec/android/secmediarecorder/SecMediaRecorder;II)V
    .locals 7
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 2292
    const/16 v2, 0x320

    if-ne p2, v2, :cond_1

    .line 2293
    const-string v2, "CamcorderEngine"

    const-string v3, "onInfo - MEDIA_RECORDER_INFO_MAX_DURATION_REACHED"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v2, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/Camcorder;->handleRecordingCommand(I)V

    .line 2295
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 2321
    :cond_0
    :goto_0
    return-void

    .line 2296
    :cond_1
    const/16 v2, 0x321

    if-ne p2, v2, :cond_2

    .line 2297
    const-string v2, "CamcorderEngine"

    const-string v3, "onInfo - MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v2, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/Camcorder;->handleRecordingCommand(I)V

    .line 2299
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 2301
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v3, 0x7f09000a

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2302
    :cond_2
    const/16 v2, 0x384

    if-ne p2, v2, :cond_3

    .line 2303
    int-to-long v2, p3

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoFileLengthInByte:J

    goto :goto_0

    .line 2304
    :cond_3
    const/16 v2, 0x385

    if-ne p2, v2, :cond_0

    .line 2305
    int-to-long v2, p3

    iput-wide v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoRecordingTimeInMiliSecond:J

    .line 2307
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2308
    const-string v2, "CamcorderEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInfo - MEDIA_RECORDER_INFO_DURATION_PROGRESS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2309
    const/4 v1, 0x1

    .line 2310
    .local v1, timeScale:I
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderSlowMotion()I

    move-result v0

    .line 2311
    .local v0, speed:I
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    const/4 v2, 0x3

    if-ne v2, v0, :cond_5

    .line 2312
    const/16 v1, 0x8

    .line 2317
    :cond_4
    :goto_1
    mul-int v2, p3, v1

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoRecordingTimeInMiliSecond:J

    goto :goto_0

    .line 2313
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    if-ne v5, v0, :cond_6

    .line 2314
    const/4 v1, 0x4

    goto :goto_1

    .line 2315
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    if-ne v6, v0, :cond_4

    .line 2316
    const/4 v1, 0x2

    goto :goto_1
.end method

.method public releaseMediaRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1919
    const-string v0, "CamcorderEngine"

    const-string v1, "Releasing media recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v0, :cond_0

    .line 1921
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->cleanupEmptyFile()V

    .line 1922
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnErrorListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;)V

    .line 1923
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnInfoListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;)V

    .line 1924
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->reset()V

    .line 1925
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->release()V

    .line 1926
    iput-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    .line 1927
    iput-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Landroid/media/CamcorderProfile;

    .line 1929
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_1

    .line 1930
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->lock()V

    .line 1932
    :cond_1
    return-void
.end method

.method public removeHideFocusRectMessage()V
    .locals 2

    .prologue
    .line 2532
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mHideFocusRectHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2533
    return-void
.end method

.method protected resetPreviewSize()V
    .locals 15

    .prologue
    const/16 v14, 0x7530

    const/16 v13, 0x3a98

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 1687
    const-string v8, "CamcorderEngine"

    const-string v9, "resetPreviewSize()"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 1790
    :pswitch_0
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 1791
    const/16 v4, 0x3c0

    .line 1792
    .local v4, previewWidth:I
    const/16 v3, 0x2d0

    .line 1797
    .local v3, previewHeight:I
    :goto_0
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1798
    const/16 v2, 0xcc0

    .line 1799
    .local v2, pictureWidth:I
    const/16 v1, 0x990

    .line 1807
    .local v1, pictureHeight:I
    :goto_1
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v8

    if-ne v8, v11, :cond_0

    .line 1809
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1810
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v5

    .line 1811
    .local v5, resolutionId:I
    const/16 v8, 0x12

    if-ne v5, v8, :cond_15

    .line 1812
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_14

    .line 1813
    const/16 v4, 0x3c0

    .line 1814
    const/16 v3, 0x2d0

    .line 1832
    .end local v5           #resolutionId:I
    :cond_0
    :goto_2
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1833
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    .line 1834
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v5

    .line 1837
    .restart local v5       #resolutionId:I
    const/16 v8, 0xf

    if-ne v5, v8, :cond_1

    .line 1838
    const/16 v4, 0x2d0

    .line 1839
    const/16 v3, 0x1e0

    .line 1842
    :cond_1
    const/16 v8, 0xb

    if-ne v5, v8, :cond_2

    .line 1843
    const/16 v4, 0x280

    .line 1844
    const/16 v3, 0x1e0

    .line 1847
    :cond_2
    move v2, v4

    .line 1848
    move v1, v3

    .line 1862
    .end local v5           #resolutionId:I
    :cond_3
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-eqz v8, :cond_17

    .line 1863
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8, v11}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setRecordingHint(Z)V

    .line 1864
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

    .line 1865
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8, v4, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewSize(II)V

    .line 1866
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

    .line 1870
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8, v2, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPictureSize(II)V

    .line 1873
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v7

    .line 1874
    .local v7, thumbnailSizes:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    if-eqz v7, :cond_4

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v11, :cond_4

    .line 1875
    const/4 v6, 0x0

    .line 1876
    .local v6, thumbnaiSize:Lcom/sec/android/seccamera/SecCamera$Size;
    invoke-virtual {p0, v7, v4, v3}, Lcom/sec/android/app/camera/CamcorderEngine;->findThumbnailSize(Ljava/util/List;II)Lcom/sec/android/seccamera/SecCamera$Size;

    move-result-object v6

    .line 1877
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget v9, v6, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    iget v10, v6, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setJpegThumbnailSize(II)V

    .line 1881
    .end local v6           #thumbnaiSize:Lcom/sec/android/seccamera/SecCamera$Size;
    :cond_4
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v9, 0x25

    invoke-static {v9}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v11}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 1887
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v8

    if-ne v8, v11, :cond_18

    .line 1891
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {p0, v8, v13, v13}, Lcom/sec/android/app/camera/CamcorderEngine;->findBestFpsRange(Lcom/sec/android/seccamera/SecCamera$Parameters;II)[I

    move-result-object v0

    .line 1892
    .local v0, fpsRange:[I
    if-eqz v0, :cond_5

    .line 1893
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    aget v9, v0, v12

    aget v10, v0, v11

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 1906
    :cond_5
    :goto_3
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v8, :cond_1a

    .line 1907
    invoke-virtual {p0, v11}, Lcom/sec/android/app/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 1908
    const-string v8, "CamcorderEngine"

    const-string v9, "resetPreviewSize()- isCurrentState is INITIALIZING"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    .end local v0           #fpsRange:[I
    .end local v7           #thumbnailSizes:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    :goto_4
    return-void

    .line 1694
    .end local v1           #pictureHeight:I
    .end local v2           #pictureWidth:I
    .end local v3           #previewHeight:I
    .end local v4           #previewWidth:I
    :pswitch_1
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1695
    const/16 v4, 0x500

    .line 1696
    .restart local v4       #previewWidth:I
    const/16 v3, 0x2d0

    .line 1701
    .restart local v3       #previewHeight:I
    :goto_5
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1702
    const/16 v2, 0xcc0

    .line 1703
    .restart local v2       #pictureWidth:I
    const/16 v1, 0x72c

    .restart local v1       #pictureHeight:I
    goto/16 :goto_1

    .line 1698
    .end local v1           #pictureHeight:I
    .end local v2           #pictureWidth:I
    .end local v3           #previewHeight:I
    .end local v4           #previewWidth:I
    :cond_6
    const/16 v4, 0x500

    .line 1699
    .restart local v4       #previewWidth:I
    const/16 v3, 0x2d0

    .restart local v3       #previewHeight:I
    goto :goto_5

    .line 1705
    :cond_7
    const/16 v2, 0x780

    .line 1706
    .restart local v2       #pictureWidth:I
    const/16 v1, 0x438

    .line 1708
    .restart local v1       #pictureHeight:I
    goto/16 :goto_1

    .line 1710
    .end local v1           #pictureHeight:I
    .end local v2           #pictureWidth:I
    .end local v3           #previewHeight:I
    .end local v4           #previewWidth:I
    :pswitch_2
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1711
    const/16 v4, 0x500

    .line 1712
    .restart local v4       #previewWidth:I
    const/16 v3, 0x2d0

    .line 1717
    .restart local v3       #previewHeight:I
    :goto_6
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1718
    const/16 v2, 0xcc0

    .line 1719
    .restart local v2       #pictureWidth:I
    const/16 v1, 0x72c

    .restart local v1       #pictureHeight:I
    goto/16 :goto_1

    .line 1714
    .end local v1           #pictureHeight:I
    .end local v2           #pictureWidth:I
    .end local v3           #previewHeight:I
    .end local v4           #previewWidth:I
    :cond_8
    const/16 v4, 0x500

    .line 1715
    .restart local v4       #previewWidth:I
    const/16 v3, 0x2d0

    .restart local v3       #previewHeight:I
    goto :goto_6

    .line 1721
    :cond_9
    const/16 v2, 0x500

    .line 1722
    .restart local v2       #pictureWidth:I
    const/16 v1, 0x2d0

    .line 1724
    .restart local v1       #pictureHeight:I
    goto/16 :goto_1

    .line 1726
    .end local v1           #pictureHeight:I
    .end local v2           #pictureWidth:I
    .end local v3           #previewHeight:I
    .end local v4           #previewWidth:I
    :pswitch_3
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1727
    const/16 v4, 0x3f0

    .line 1728
    .restart local v4       #previewWidth:I
    const/16 v3, 0x2a0

    .line 1733
    .restart local v3       #previewHeight:I
    :goto_7
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1734
    const/16 v2, 0xcc0

    .line 1735
    .restart local v2       #pictureWidth:I
    const/16 v1, 0x880

    .restart local v1       #pictureHeight:I
    goto/16 :goto_1

    .line 1730
    .end local v1           #pictureHeight:I
    .end local v2           #pictureWidth:I
    .end local v3           #previewHeight:I
    .end local v4           #previewWidth:I
    :cond_a
    const/16 v4, 0x3f0

    .line 1731
    .restart local v4       #previewWidth:I
    const/16 v3, 0x2a0

    .restart local v3       #previewHeight:I
    goto :goto_7

    .line 1737
    :cond_b
    const/16 v2, 0x2d0

    .line 1738
    .restart local v2       #pictureWidth:I
    const/16 v1, 0x1e0

    .line 1740
    .restart local v1       #pictureHeight:I
    goto/16 :goto_1

    .line 1742
    .end local v1           #pictureHeight:I
    .end local v2           #pictureWidth:I
    .end local v3           #previewHeight:I
    .end local v4           #previewWidth:I
    :pswitch_4
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1743
    const/16 v4, 0x3c0

    .line 1744
    .restart local v4       #previewWidth:I
    const/16 v3, 0x2d0

    .line 1749
    .restart local v3       #previewHeight:I
    :goto_8
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1750
    const/16 v2, 0xcc0

    .line 1751
    .restart local v2       #pictureWidth:I
    const/16 v1, 0x990

    .restart local v1       #pictureHeight:I
    goto/16 :goto_1

    .line 1746
    .end local v1           #pictureHeight:I
    .end local v2           #pictureWidth:I
    .end local v3           #previewHeight:I
    .end local v4           #previewWidth:I
    :cond_c
    const/16 v4, 0x3c0

    .line 1747
    .restart local v4       #previewWidth:I
    const/16 v3, 0x2d0

    .restart local v3       #previewHeight:I
    goto :goto_8

    .line 1753
    :cond_d
    const/16 v2, 0x280

    .line 1754
    .restart local v2       #pictureWidth:I
    const/16 v1, 0x1e0

    .line 1756
    .restart local v1       #pictureHeight:I
    goto/16 :goto_1

    .line 1758
    .end local v1           #pictureHeight:I
    .end local v2           #pictureWidth:I
    .end local v3           #previewHeight:I
    .end local v4           #previewWidth:I
    :pswitch_5
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1759
    const/16 v4, 0x3c0

    .line 1760
    .restart local v4       #previewWidth:I
    const/16 v3, 0x2d0

    .line 1765
    .restart local v3       #previewHeight:I
    :goto_9
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1766
    const/16 v2, 0xcc0

    .line 1767
    .restart local v2       #pictureWidth:I
    const/16 v1, 0x990

    .restart local v1       #pictureHeight:I
    goto/16 :goto_1

    .line 1762
    .end local v1           #pictureHeight:I
    .end local v2           #pictureWidth:I
    .end local v3           #previewHeight:I
    .end local v4           #previewWidth:I
    :cond_e
    const/16 v4, 0x3c0

    .line 1763
    .restart local v4       #previewWidth:I
    const/16 v3, 0x2d0

    .restart local v3       #previewHeight:I
    goto :goto_9

    .line 1769
    :cond_f
    const/16 v2, 0x140

    .line 1770
    .restart local v2       #pictureWidth:I
    const/16 v1, 0xf0

    .line 1772
    .restart local v1       #pictureHeight:I
    goto/16 :goto_1

    .line 1774
    .end local v1           #pictureHeight:I
    .end local v2           #pictureWidth:I
    .end local v3           #previewHeight:I
    .end local v4           #previewWidth:I
    :pswitch_6
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 1775
    const/16 v4, 0x370

    .line 1776
    .restart local v4       #previewWidth:I
    const/16 v3, 0x2d0

    .line 1781
    .restart local v3       #previewHeight:I
    :goto_a
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 1782
    const/16 v2, 0xcc0

    .line 1783
    .restart local v2       #pictureWidth:I
    const/16 v1, 0x990

    .restart local v1       #pictureHeight:I
    goto/16 :goto_1

    .line 1778
    .end local v1           #pictureHeight:I
    .end local v2           #pictureWidth:I
    .end local v3           #previewHeight:I
    .end local v4           #previewWidth:I
    :cond_10
    const/16 v4, 0x370

    .line 1779
    .restart local v4       #previewWidth:I
    const/16 v3, 0x2d0

    .restart local v3       #previewHeight:I
    goto :goto_a

    .line 1785
    :cond_11
    const/16 v2, 0x140

    .line 1786
    .restart local v2       #pictureWidth:I
    const/16 v1, 0xf0

    .line 1788
    .restart local v1       #pictureHeight:I
    goto/16 :goto_1

    .line 1794
    .end local v1           #pictureHeight:I
    .end local v2           #pictureWidth:I
    .end local v3           #previewHeight:I
    .end local v4           #previewWidth:I
    :cond_12
    const/16 v4, 0x3c0

    .line 1795
    .restart local v4       #previewWidth:I
    const/16 v3, 0x2d0

    .restart local v3       #previewHeight:I
    goto/16 :goto_0

    .line 1801
    :cond_13
    const/16 v2, 0x280

    .line 1802
    .restart local v2       #pictureWidth:I
    const/16 v1, 0x1e0

    .restart local v1       #pictureHeight:I
    goto/16 :goto_1

    .line 1816
    .restart local v5       #resolutionId:I
    :cond_14
    const/16 v4, 0x3c0

    .line 1817
    const/16 v3, 0x2d0

    goto/16 :goto_2

    .line 1820
    :cond_15
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_16

    .line 1821
    const/16 v4, 0x370

    .line 1822
    const/16 v3, 0x2d0

    goto/16 :goto_2

    .line 1824
    :cond_16
    const/16 v4, 0x370

    .line 1825
    const/16 v3, 0x2d0

    goto/16 :goto_2

    .line 1883
    .end local v5           #resolutionId:I
    :cond_17
    const-string v8, "CamcorderEngine"

    const-string v9, "resetPreviewSize()- mParameters is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1900
    .restart local v7       #thumbnailSizes:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    :cond_18
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {p0, v8, v14, v14}, Lcom/sec/android/app/camera/CamcorderEngine;->findBestFpsRange(Lcom/sec/android/seccamera/SecCamera$Parameters;II)[I

    move-result-object v0

    .line 1901
    .restart local v0       #fpsRange:[I
    if-eqz v0, :cond_5

    .line 1902
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    aget v9, v0, v12

    aget v10, v0, v11

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto/16 :goto_3

    .line 1911
    :cond_19
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8, v9}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    goto/16 :goto_4

    .line 1913
    :cond_1a
    const-string v8, "CamcorderEngine"

    const-string v9, "resetPreviewSize()- mCameraDevice is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1692
    nop

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
    .line 1259
    const-string v0, "CamcorderEngine"

    const-string v1, "scheduleCancelVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x6a

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1262
    return-void
.end method

.method public scheduleLaunchGallery(Ljava/lang/String;)V
    .locals 2
    .parameter "keyValue"

    .prologue
    .line 1337
    const-string v0, "CamcorderEngine"

    const-string v1, "scheduleLaunchGallery"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x1a

    invoke-static {v1, p1}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1340
    return-void
.end method

.method public schedulePauseVideoRecording()V
    .locals 3

    .prologue
    .line 1095
    const-string v0, "CamcorderEngine"

    const-string v1, "schedulePauseVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x67

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1098
    return-void
.end method

.method public schedulePrepareVideoRecording()V
    .locals 3

    .prologue
    const/16 v2, 0x65

    .line 909
    const-string v0, "CamcorderEngine"

    const-string v1, "schedulePrepareVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 912
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 914
    :cond_0
    return-void
.end method

.method public scheduleResumeVideoRecording()V
    .locals 3

    .prologue
    .line 1125
    const-string v0, "CamcorderEngine"

    const-string v1, "scheduleResumeVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x68

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1128
    return-void
.end method

.method public scheduleStartVideoRecording()V
    .locals 3

    .prologue
    const/16 v2, 0x66

    .line 962
    const-string v0, "CamcorderEngine"

    const-string v1, "scheduleStartVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 965
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 967
    :cond_0
    return-void
.end method

.method public scheduleStopVideoRecording()V
    .locals 3

    .prologue
    .line 1153
    const-string v0, "CamcorderEngine"

    const-string v1, "scheduleStopVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x69

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1156
    return-void
.end method

.method public final scheduleTakePicture()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 2364
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchDuplicateRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2365
    const-string v0, "CamcorderEngine"

    const-string v1, "scheduleTakePicture - Now capturing, retun capture request."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    :goto_0
    return-void

    .line 2368
    :cond_0
    const-string v0, "CamcorderEngine"

    const-string v1, "scheduleTakePicture from camcorder engine"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2369
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
    .line 892
    const-string v0, "CamcorderEngine"

    const-string v1, "scheduleWaitForSurface"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x6b

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 894
    return-void
.end method

.method protected searchForLastContentUri()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 2173
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    if-nez v0, :cond_0

    .line 2207
    :goto_0
    return-void

    .line 2177
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

    .line 2178
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2180
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 2181
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2182
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 2183
    .local v8, idIndex:I
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 2185
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

    .line 2187
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder;->onVideoStoringCompleted(Landroid/net/Uri;)V

    .line 2188
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoFilename:Ljava/lang/String;

    .line 2189
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2192
    .end local v7           #dataIndex:I
    .end local v8           #idIndex:I
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRecordingInitiated:Z

    if-eqz v0, :cond_3

    .line 2193
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    if-nez v0, :cond_2

    .line 2194
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2197
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;->removeMessages(I)V

    .line 2198
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v9, v1, v2}, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2203
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2200
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder;->onVideoStoringCompleted(Landroid/net/Uri;)V

    goto :goto_1

    .line 2205
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

    .line 2536
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mHideFocusRectHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2537
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mHideFocusRectHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2538
    return-void
.end method

.method public setFrontSensorMirror(I)V
    .locals 3
    .parameter "flip"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2511
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v2, :cond_0

    .line 2512
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-ne p1, v0, :cond_1

    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setFrontSensorMirror(ZI)V

    .line 2514
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 2512
    goto :goto_0
.end method

.method public setIsVideoCaptureIntent(Z)Z
    .locals 3
    .parameter "chkIsVideoCaptureIntent"

    .prologue
    .line 507
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mIsVideoCaptureIntent:Z

    .line 508
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

    .line 509
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

    .line 1510
    const-string v6, "CamcorderEngine"

    const-string v7, "setTouchFocusPosition"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    iget-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060009

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v1, v6

    .line 1515
    .local v1, focusWidth:I
    iget-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06000a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    .line 1516
    .local v0, focusHeight:I
    iget v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mOriginalViewFinderWidth:I

    .line 1517
    .local v5, width:I
    iget v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mOriginalViewFinderHeight:I

    .line 1519
    .local v2, height:I
    iget-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mTapArea:Ljava/util/List;

    if-nez v6, :cond_0

    .line 1520
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mTapArea:Ljava/util/List;

    .line 1521
    iget-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mTapArea:Ljava/util/List;

    new-instance v7, Lcom/sec/android/seccamera/SecCamera$Area;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v7, v8, v12}, Lcom/sec/android/seccamera/SecCamera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1524
    :cond_0
    div-int/lit8 v6, v1, 0x2

    sub-int v6, p1, v6

    sub-int v7, v5, v1

    invoke-static {v6, v9, v7}, Lcom/sec/android/app/camera/CamcorderEngine;->clamp(III)I

    move-result v3

    .line 1525
    .local v3, left:I
    div-int/lit8 v6, v0, 0x2

    sub-int v6, p2, v6

    sub-int v7, v2, v0

    invoke-static {v6, v9, v7}, Lcom/sec/android/app/camera/CamcorderEngine;->clamp(III)I

    move-result v4

    .line 1527
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

    .line 1528
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

    .line 1529
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

    .line 1530
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

    .line 1539
    iget-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v7, 0x5

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v12}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    iget-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget-object v7, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mTapArea:Ljava/util/List;

    invoke-virtual {v6, v7}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 1543
    iget-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v7, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v6, v7}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 1545
    sput-boolean v12, Lcom/sec/android/app/camera/CamcorderEngine;->m_bIsTouchFocusPositioned:Z

    .line 1546
    return-void
.end method

.method public startContinuousAF()V
    .locals 1

    .prologue
    .line 1579
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 1580
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->startContinuousAF()V

    .line 1581
    :cond_0
    return-void
.end method

.method public startTouchAutoFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1554
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMainHandler:Lcom/sec/android/app/camera/CameraEngine$MainHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$MainHandler;->removeMessages(I)V

    .line 1555
    sput-boolean v1, Lcom/sec/android/app/camera/CamcorderEngine;->m_bIsTouchAutoFocusing:Z

    .line 1556
    return-void
.end method

.method public stopContinuousAF()V
    .locals 1

    .prologue
    .line 1584
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 1585
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->stopContinuousAF()V

    .line 1586
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->clearFocusState()V

    .line 1587
    return-void
.end method

.method public stopTouchAutoFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1559
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v0, :cond_0

    .line 1560
    const-string v0, "CamcorderEngine"

    const-string v1, "CamcorderParameters is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    :goto_0
    return-void

    .line 1564
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 1565
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1566
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_1

    .line 1568
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 1570
    :cond_1
    sput-boolean v3, Lcom/sec/android/app/camera/CamcorderEngine;->m_bIsTouchAutoFocusing:Z

    .line 1571
    sput-boolean v3, Lcom/sec/android/app/camera/CamcorderEngine;->m_bIsTouchFocusPositioned:Z

    goto :goto_0
.end method

.method public switchToBack()V
    .locals 3

    .prologue
    .line 1426
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

    .line 1427
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(I)V

    .line 1428
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->updateSettingsWhenSwitchCamera()V

    .line 1429
    return-void
.end method

.method public switchToFront()V
    .locals 3

    .prologue
    .line 1420
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

    .line 1421
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(I)V

    .line 1422
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->updateSettingsWhenSwitchCamera()V

    .line 1423
    return-void
.end method

.method public waitForStartRecordingThreadComplete()V
    .locals 1

    .prologue
    .line 1048
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 1051
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStartRecordingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 1052
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStartRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1057
    :cond_1
    :goto_0
    return-void

    .line 1054
    :catch_0
    move-exception v0

    goto :goto_0
.end method
