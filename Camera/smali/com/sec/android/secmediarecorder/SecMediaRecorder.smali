.class public Lcom/sec/android/secmediarecorder/SecMediaRecorder;
.super Ljava/lang/Object;
.source "SecMediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/secmediarecorder/SecMediaRecorder$EventHandler;,
        Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;,
        Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;,
        Lcom/sec/android/secmediarecorder/SecMediaRecorder$VideoEncoder;,
        Lcom/sec/android/secmediarecorder/SecMediaRecorder$AudioEncoder;,
        Lcom/sec/android/secmediarecorder/SecMediaRecorder$OutputFormat;,
        Lcom/sec/android/secmediarecorder/SecMediaRecorder$VideoSource;,
        Lcom/sec/android/secmediarecorder/SecMediaRecorder$AudioSource;
    }
.end annotation


# static fields
.field private static final MEDIARECORDER_CMD_PAUSE:I = 0x3e8

.field private static final MEDIARECORDER_CMD_RESUME:I = 0x3e9

.field public static final MEDIA_RECORDER_ERROR_BUFFER_OVERFLOW:I = 0x2

.field public static final MEDIA_RECORDER_ERROR_UNKNOWN:I = 0x1

.field public static final MEDIA_RECORDER_INFO_COMPLETION_STATUS:I = 0x322

.field public static final MEDIA_RECORDER_INFO_DURATION_PROGRESS:I = 0x385

.field public static final MEDIA_RECORDER_INFO_FILESIZE_PROGRESS:I = 0x384

.field public static final MEDIA_RECORDER_INFO_MAX_DURATION_REACHED:I = 0x320

.field public static final MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED:I = 0x321

.field public static final MEDIA_RECORDER_INFO_PROGRESS_FRAME_STATUS:I = 0x323

.field public static final MEDIA_RECORDER_INFO_PROGRESS_TIME_STATUS:I = 0x324

.field public static final MEDIA_RECORDER_INFO_UNKNOWN:I = 0x1

.field public static final MEDIA_RECORDER_TRACK_INFO_COMPLETION_STATUS:I = 0x3e8

.field public static final MEDIA_RECORDER_TRACK_INFO_DATA_KBYTES:I = 0x3f1

.field public static final MEDIA_RECORDER_TRACK_INFO_DURATION_MS:I = 0x3eb

.field public static final MEDIA_RECORDER_TRACK_INFO_ENCODED_FRAMES:I = 0x3ed

.field public static final MEDIA_RECORDER_TRACK_INFO_INITIAL_DELAY_MS:I = 0x3ef

.field public static final MEDIA_RECORDER_TRACK_INFO_LIST_END:I = 0x7d0

.field public static final MEDIA_RECORDER_TRACK_INFO_LIST_START:I = 0x3e8

.field public static final MEDIA_RECORDER_TRACK_INFO_MAX_CHUNK_DUR_MS:I = 0x3ec

.field public static final MEDIA_RECORDER_TRACK_INFO_PROGRESS_IN_TIME:I = 0x3e9

.field public static final MEDIA_RECORDER_TRACK_INFO_START_OFFSET_MS:I = 0x3f0

.field public static final MEDIA_RECORDER_TRACK_INFO_TYPE:I = 0x3ea

.field public static final MEDIA_RECORDER_TRACK_INTER_CHUNK_TIME_MS:I = 0x3ee

.field private static final TAG:Ljava/lang/String; = "SecMediaRecorder"


# instance fields
.field private mAudioSource:I

.field private mEventHandler:Lcom/sec/android/secmediarecorder/SecMediaRecorder$EventHandler;

.field private mFd:Ljava/io/FileDescriptor;

.field private mIsAudioEnabled:Z

.field private mIsVideoRecordEnabled:Z

.field private mNativeContext:I

.field private mOnErrorListener:Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;

.field private mOnInfoListener:Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;

.field private mPath:Ljava/lang/String;

.field private mSurface:Landroid/view/Surface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const-string v0, "secmediarecorder_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->native_init()V

    .line 106
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-boolean v1, p0, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mIsAudioEnabled:Z

    .line 129
    iput-boolean v1, p0, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mIsVideoRecordEnabled:Z

    .line 130
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mAudioSource:I

    .line 139
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 140
    new-instance v1, Lcom/sec/android/secmediarecorder/SecMediaRecorder$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder$EventHandler;-><init>(Lcom/sec/android/secmediarecorder/SecMediaRecorder;Lcom/sec/android/secmediarecorder/SecMediaRecorder;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mEventHandler:Lcom/sec/android/secmediarecorder/SecMediaRecorder$EventHandler;

    .line 150
    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->native_setup(Ljava/lang/Object;)V

    .line 151
    return-void

    .line 141
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 142
    new-instance v1, Lcom/sec/android/secmediarecorder/SecMediaRecorder$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder$EventHandler;-><init>(Lcom/sec/android/secmediarecorder/SecMediaRecorder;Lcom/sec/android/secmediarecorder/SecMediaRecorder;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mEventHandler:Lcom/sec/android/secmediarecorder/SecMediaRecorder$EventHandler;

    goto :goto_0

    .line 144
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mEventHandler:Lcom/sec/android/secmediarecorder/SecMediaRecorder$EventHandler;

    goto :goto_0
.end method

.method private native _prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native _setAudioSource(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setOutputFile(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static synthetic access$000(Lcom/sec/android/secmediarecorder/SecMediaRecorder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mNativeContext:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/secmediarecorder/SecMediaRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mOnErrorListener:Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/secmediarecorder/SecMediaRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mOnInfoListener:Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;

    return-object v0
.end method

.method private static checkAudioRecordEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    return v1
.end method

.method private static checkMicrophoneEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    return v1
.end method

.method private static checkVideoRecordEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    return v1
.end method

.method public static final getAudioSourceMax()I
    .locals 1

    .prologue
    .line 382
    const/16 v0, 0x14

    return v0
.end method

.method public static final native mfc_close()V
.end method

.method public static final native mfc_open()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_registerRecordingSurface(Lcom/sec/android/seccamera/SecCamera;)I
.end method

.method private native native_reset()V
.end method

.method private final native native_sendcommand(III)V
.end method

.method private final native native_setup(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private final native native_unregisterRecordingSurface(Lcom/sec/android/seccamera/SecCamera;)I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 4
    .parameter "secmediarecorder_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    const/4 v3, 0x1

    .line 1160
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    .line 1161
    .local v1, mr:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    if-nez v1, :cond_1

    .line 1186
    :cond_0
    :goto_0
    return-void

    .line 1165
    :cond_1
    iget-boolean v2, v1, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mIsAudioEnabled:Z

    if-ne v2, v3, :cond_2

    .line 1166
    invoke-static {}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->checkMicrophoneEnabled()Z

    .line 1169
    :cond_2
    iget v2, v1, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mAudioSource:I

    if-eq v2, v3, :cond_3

    iget v2, v1, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mAudioSource:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_3

    iget v2, v1, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mAudioSource:I

    const/16 v3, 0x9

    if-eq v2, v3, :cond_3

    iget v2, v1, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mAudioSource:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_4

    :cond_3
    invoke-static {}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->checkAudioRecordEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1176
    :cond_4
    iget-boolean v2, v1, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mIsVideoRecordEnabled:Z

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->checkVideoRecordEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1182
    :cond_5
    iget-object v2, v1, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mEventHandler:Lcom/sec/android/secmediarecorder/SecMediaRecorder$EventHandler;

    if-eqz v2, :cond_0

    .line 1183
    iget-object v2, v1, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mEventHandler:Lcom/sec/android/secmediarecorder/SecMediaRecorder$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/sec/android/secmediarecorder/SecMediaRecorder$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1184
    .local v0, m:Landroid/os/Message;
    iget-object v2, v1, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mEventHandler:Lcom/sec/android/secmediarecorder/SecMediaRecorder$EventHandler;

    invoke-virtual {v2, v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private setAuxVideoParameters()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 692
    invoke-static {v4}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 693
    .local v0, profile:Landroid/media/CamcorderProfile;
    if-eqz v0, :cond_0

    .line 694
    const-string v1, "video-aux-param-width=%d"

    new-array v2, v4, [Ljava/lang/Object;

    iget v3, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 695
    const-string v1, "video-aux-param-height=%d"

    new-array v2, v4, [Ljava/lang/Object;

    iget v3, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 696
    const-string v1, "video-aux-param-encoding-bitrate=%d"

    new-array v2, v4, [Ljava/lang/Object;

    iget v3, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 700
    :goto_0
    return-void

    .line 698
    :cond_0
    const-string v1, "SecMediaRecorder"

    const-string v2, "setAuxVideoParameters profile is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final native setGLSurface(Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native setParameter(Ljava/lang/String;)V
.end method


# virtual methods
.method public native _setVideoSource(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 1281
    invoke-direct {p0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->native_finalize()V

    return-void
.end method

.method public native getMaxAmplitude()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public final pause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1292
    const/16 v0, 0x3e8

    invoke-direct {p0, v0, v1, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->native_sendcommand(III)V

    .line 1293
    return-void
.end method

.method public prepare()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    .line 830
    const/4 v10, 0x1

    .line 831
    .local v10, videoRecordEnabled:Z
    const/4 v6, 0x1

    .line 832
    .local v6, audioRecordEnabled:Z
    iget-boolean v0, p0, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mIsVideoRecordEnabled:Z

    if-eqz v0, :cond_0

    .line 834
    :goto_0
    goto :goto_1

    .line 840
    new-instance v0, Ljava/io/IOException;

    const-string v1, "MDM is blocking video recording"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 836
    move-exception v7

    .line 837
    .local v7, e:Ljava/lang/Exception;
    const/4 v10, 0x1

    goto :goto_0

    .line 843
    .end local v7           #e:Ljava/lang/Exception;
    :cond_0
    :goto_1
    iget v0, p0, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mAudioSource:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mAudioSource:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mAudioSource:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mAudioSource:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 848
    :cond_1
    goto :goto_2

    .line 854
    new-instance v0, Ljava/io/IOException;

    const-string v1, "MDM is blocking audio recording"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 850
    move-exception v7

    .line 851
    .restart local v7       #e:Ljava/lang/Exception;
    const/4 v6, 0x1

    .line 858
    .end local v7           #e:Ljava/lang/Exception;
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 859
    new-instance v8, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mPath:Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 861
    .local v8, fos:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->_setOutputFile(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 863
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 871
    .end local v8           #fos:Ljava/io/FileOutputStream;
    :goto_3
    invoke-direct {p0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->_prepare()V

    .line 872
    return-void

    .line 863
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v0

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    throw v0

    .line 865
    .end local v8           #fos:Ljava/io/FileOutputStream;
    :cond_3
    iget-object v0, p0, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mFd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_4

    .line 866
    iget-object v1, p0, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mFd:Ljava/io/FileDescriptor;

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->_setOutputFile(Ljava/io/FileDescriptor;JJ)V

    goto :goto_3

    .line 868
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No valid output file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerRecordingSurface(Lcom/sec/android/seccamera/SecCamera;)V
    .locals 0
    .parameter "camera"

    .prologue
    .line 1372
    invoke-direct {p0, p1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->native_registerRecordingSurface(Lcom/sec/android/seccamera/SecCamera;)I

    .line 1373
    return-void
.end method

.method public native release()V
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 909
    invoke-direct {p0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->native_reset()V

    .line 912
    iget-object v0, p0, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mEventHandler:Lcom/sec/android/secmediarecorder/SecMediaRecorder$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 915
    iput-boolean v2, p0, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mIsAudioEnabled:Z

    .line 916
    iput-boolean v2, p0, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mIsVideoRecordEnabled:Z

    .line 917
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mAudioSource:I

    .line 919
    return-void
.end method

.method public final resume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1297
    const/16 v0, 0x3e9

    invoke-direct {p0, v0, v1, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->native_sendcommand(III)V

    .line 1298
    return-void
.end method

.method public set3dVideo(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 1348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "param-meta-three-d-video="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 1349
    return-void
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 2
    .parameter "album"

    .prologue
    .line 1318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "param-meta-album="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 1319
    return-void
.end method

.method public setAudioChannels(I)V
    .locals 2
    .parameter "numChannels"

    .prologue
    .line 647
    if-gtz p1, :cond_0

    .line 648
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of channels is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 650
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio-param-number-of-channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 651
    return-void
.end method

.method public native setAudioEncoder(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setAudioEncodingBitRate(I)V
    .locals 2
    .parameter "bitRate"

    .prologue
    .line 663
    if-gtz p1, :cond_0

    .line 664
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Audio encoding bit rate is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 666
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio-param-encoding-bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 667
    return-void
.end method

.method public setAudioSamplingRate(I)V
    .locals 2
    .parameter "samplingRate"

    .prologue
    .line 632
    if-gtz p1, :cond_0

    .line 633
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Audio sampling rate is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 635
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio-param-sampling-rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 636
    return-void
.end method

.method public setAudioSource(I)V
    .locals 1
    .parameter "audio_source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 362
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 365
    invoke-static {}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->checkMicrophoneEnabled()Z

    .line 366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mIsAudioEnabled:Z

    .line 369
    :cond_0
    iput p1, p0, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mAudioSource:I

    .line 371
    invoke-direct {p0, p1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->_setAudioSource(I)V

    .line 372
    return-void
.end method

.method public setAuthor(I)V
    .locals 2
    .parameter "author"

    .prologue
    .line 1324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "param-meta-author="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 1325
    return-void
.end method

.method public setAuxiliaryOutputFile(Ljava/io/FileDescriptor;)V
    .locals 2
    .parameter "fd"

    .prologue
    .line 730
    const-string v0, "SecMediaRecorder"

    const-string v1, "setAuxiliaryOutputFile(FileDescriptor) is no longer supported."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    return-void
.end method

.method public setAuxiliaryOutputFile(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 761
    const-string v0, "SecMediaRecorder"

    const-string v1, "setAuxiliaryOutputFile(String) is no longer supported."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    return-void
.end method

.method public native setCamera(Lcom/sec/android/seccamera/SecCamera;)V
.end method

.method public setCaptureRate(D)V
    .locals 7
    .parameter "fps"

    .prologue
    const/4 v6, 0x0

    .line 449
    const-string v3, "time-lapse-enable=1"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 451
    const-wide/high16 v3, 0x3ff0

    div-double v0, v3, p1

    .line 452
    .local v0, timeBetweenFrameCapture:D
    const-wide v3, 0x408f400000000000L

    mul-double/2addr v3, v0

    double-to-int v2, v3

    .line 453
    .local v2, timeBetweenFrameCaptureMs:I
    const-string v3, "time-between-time-lapse-frame-capture=%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 455
    return-void
.end method

.method public setCityId(J)V
    .locals 2
    .parameter "cityId"

    .prologue
    .line 1342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "param-meta-cityid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 1343
    return-void
.end method

.method public setDualCapture(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 1330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "param-meta-dual-capture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 1331
    return-void
.end method

.method public native setDurationInterval(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public native setFileSizeInterval(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public final setHDMICableConnected(I)V
    .locals 2
    .parameter "connected"

    .prologue
    .line 1302
    const/16 v0, 0x461

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->native_sendcommand(III)V

    .line 1303
    return-void
.end method

.method public setLocation(FF)V
    .locals 8
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    const v7, 0x461c4000

    const-wide/high16 v5, 0x3fe0

    .line 499
    mul-float v3, p1, v7

    float-to-double v3, v3

    add-double/2addr v3, v5

    double-to-int v0, v3

    .line 500
    .local v0, latitudex10000:I
    mul-float v3, p2, v7

    float-to-double v3, v3

    add-double/2addr v3, v5

    double-to-int v1, v3

    .line 502
    .local v1, longitudex10000:I
    const v3, 0xdbba0

    if-gt v0, v3, :cond_0

    const v3, -0xdbba0

    if-ge v0, v3, :cond_1

    .line 503
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Latitude: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " out of range."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 504
    .local v2, msg:Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 506
    .end local v2           #msg:Ljava/lang/String;
    :cond_1
    const v3, 0x1b7740

    if-gt v1, v3, :cond_2

    const v3, -0x1b7740

    if-ge v1, v3, :cond_3

    .line 507
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Longitude: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " out of range"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 508
    .restart local v2       #msg:Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 511
    .end local v2           #msg:Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "param-geotag-latitude="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 512
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "param-geotag-longitude="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 513
    return-void
.end method

.method public native setMaxDuration(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public native setMaxFileSize(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public setOnErrorListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 971
    iput-object p1, p0, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mOnErrorListener:Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;

    .line 972
    return-void
.end method

.method public setOnInfoListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1095
    iput-object p1, p0, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mOnInfoListener:Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;

    .line 1096
    return-void
.end method

.method public setOrientationHint(I)V
    .locals 3
    .parameter "degrees"

    .prologue
    .line 473
    if-eqz p1, :cond_0

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_0

    .line 477
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported angle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video-param-rotation-angle-degrees="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 480
    return-void
.end method

.method public setOutputFile(Ljava/io/FileDescriptor;)V
    .locals 1
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 795
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mPath:Ljava/lang/String;

    .line 796
    iput-object p1, p0, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mFd:Ljava/io/FileDescriptor;

    .line 797
    return-void
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .locals 1
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 809
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mFd:Ljava/io/FileDescriptor;

    .line 810
    iput-object p1, p0, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mPath:Ljava/lang/String;

    .line 811
    return-void
.end method

.method public native setOutputFormat(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setPerformer(Ljava/lang/String;)V
    .locals 2
    .parameter "performer"

    .prologue
    .line 1313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "param-meta-performer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 1314
    return-void
.end method

.method public setPreviewDisplay(Landroid/view/Surface;)V
    .locals 0
    .parameter "sv"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mSurface:Landroid/view/Surface;

    .line 178
    return-void
.end method

.method public setProfile(Landroid/media/CamcorderProfile;)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 414
    iget v0, p1, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {p0, v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFormat(I)V

    .line 415
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {p0, v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoFrameRate(I)V

    .line 416
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoSize(II)V

    .line 417
    iget v0, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {p0, v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoEncodingBitRate(I)V

    .line 418
    iget v0, p1, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {p0, v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoEncoder(I)V

    .line 419
    iget v0, p1, Landroid/media/CamcorderProfile;->quality:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    iget v0, p1, Landroid/media/CamcorderProfile;->quality:I

    const/16 v1, 0x3ee

    if-gt v0, v1, :cond_0

    .line 429
    :goto_0
    return-void

    .line 424
    :cond_0
    iget v0, p1, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {p0, v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioEncodingBitRate(I)V

    .line 425
    iget v0, p1, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {p0, v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioChannels(I)V

    .line 426
    iget v0, p1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {p0, v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioSamplingRate(I)V

    .line 427
    iget v0, p1, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {p0, v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioEncoder(I)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 1308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "param-meta-title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 1309
    return-void
.end method

.method public native setVideoEncoder(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setVideoEncodingBitRate(I)V
    .locals 2
    .parameter "bitRate"

    .prologue
    .line 679
    if-gtz p1, :cond_0

    .line 680
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Video encoding bit rate is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 682
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video-param-encoding-bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 683
    return-void
.end method

.method public native setVideoFrameRate(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native setVideoSize(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setVideoSource(I)V
    .locals 1
    .parameter "video_source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 396
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mIsVideoRecordEnabled:Z

    .line 397
    invoke-virtual {p0, p1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->_setVideoSource(I)V

    .line 398
    return-void
.end method

.method public setWeather(I)V
    .locals 2
    .parameter "weather"

    .prologue
    .line 1336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "param-meta-weather="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 1337
    return-void
.end method

.method public setZoom(I)V
    .locals 4
    .parameter "zoomLevel"

    .prologue
    .line 771
    if-gez p1, :cond_0

    .line 772
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "zoom level  is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 776
    :cond_0
    :try_start_0
    const-string v0, "zoom=%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setParameter(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 780
    :goto_0
    return-void

    .line 777
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public native start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public unregisterRecordingSurface(Lcom/sec/android/seccamera/SecCamera;)V
    .locals 0
    .parameter "camera"

    .prologue
    .line 1367
    invoke-direct {p0, p1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->native_unregisterRecordingSurface(Lcom/sec/android/seccamera/SecCamera;)I

    .line 1368
    return-void
.end method
