.class public Landroid/media/AudioTrack;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioTrack$NativeEventHandlerDelegate;,
        Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;
    }
.end annotation


# static fields
.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x2

.field public static final ERROR_INVALID_OPERATION:I = -0x3

.field private static final ERROR_NATIVESETUP_AUDIOSYSTEM:I = -0x10

.field private static final ERROR_NATIVESETUP_INVALIDCHANNELMASK:I = -0x11

.field private static final ERROR_NATIVESETUP_INVALIDFORMAT:I = -0x12

.field private static final ERROR_NATIVESETUP_INVALIDSTREAMTYPE:I = -0x13

.field private static final ERROR_NATIVESETUP_NATIVEINITFAILED:I = -0x14

.field public static final MODE_STATIC:I = 0x0

.field public static final MODE_STREAM:I = 0x1

.field private static final NATIVE_EVENT_MARKER:I = 0x3

.field private static final NATIVE_EVENT_NEW_POS:I = 0x4

.field public static final PLAYSTATE_PAUSED:I = 0x2

.field public static final PLAYSTATE_PLAYING:I = 0x3

.field public static final PLAYSTATE_STOPPED:I = 0x1

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_NO_STATIC_DATA:I = 0x2

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static final SUPPORTED_OUT_CHANNELS:I = 0x4fc

.field private static final TAG:Ljava/lang/String; = "AudioTrack-Java"

.field private static final VOLUME_MAX:F = 1.0f

.field private static final VOLUME_MIN:F


# instance fields
.field private mAudioFormat:I

.field private mChannelConfiguration:I

.field private mChannelCount:I

.field private mChannels:I

.field private mDataLoadMode:I

.field private mEventHandlerDelegate:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

.field private mInitializationLooper:Landroid/os/Looper;

.field private mJniData:I

.field private mNativeBufferSizeInBytes:I

.field private mNativeTrackInJavaObj:I

.field private mPlayState:I

.field private final mPlayStateLock:Ljava/lang/Object;

.field private mPositionListener:Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

.field private final mPositionListenerLock:Ljava/lang/Object;

.field private mSampleRate:I

.field private mSessionId:I

.field private mState:I

.field private mStreamType:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 8
    .parameter "streamType"
    .parameter "sampleRateInHz"
    .parameter "channelConfig"
    .parameter "audioFormat"
    .parameter "bufferSizeInBytes"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 267
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    .line 269
    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 11
    .parameter "streamType"
    .parameter "sampleRateInHz"
    .parameter "channelConfig"
    .parameter "audioFormat"
    .parameter "bufferSizeInBytes"
    .parameter "mode"
    .parameter "sessionId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    .line 154
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 158
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    .line 164
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioTrack;->mPositionListener:Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    .line 168
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioTrack;->mPositionListenerLock:Ljava/lang/Object;

    .line 172
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 176
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    .line 180
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    .line 188
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 192
    const/4 v1, 0x4

    iput v1, p0, Landroid/media/AudioTrack;->mChannels:I

    .line 201
    const/4 v1, 0x3

    iput v1, p0, Landroid/media/AudioTrack;->mStreamType:I

    .line 205
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 209
    const/4 v1, 0x4

    iput v1, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 215
    const/4 v1, 0x2

    iput v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 219
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioTrack;->mSessionId:I

    .line 308
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    .line 311
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    if-nez v1, :cond_0

    .line 312
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    :cond_0
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p6

    .line 315
    invoke-direct/range {v1 .. v6}, Landroid/media/AudioTrack;->audioParamCheck(IIIII)V

    .line 317
    move/from16 v0, p5

    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->audioBuffSizeCheck(I)V

    .line 319
    if-gez p7, :cond_1

    .line 320
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid audio session ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 323
    :cond_1
    const/4 v1, 0x1

    new-array v9, v1, [I

    .line 324
    .local v9, session:[I
    const/4 v1, 0x0

    aput p7, v9, v1

    .line 326
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget v3, p0, Landroid/media/AudioTrack;->mStreamType:I

    iget v4, p0, Landroid/media/AudioTrack;->mSampleRate:I

    iget v5, p0, Landroid/media/AudioTrack;->mChannels:I

    iget v6, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    iget v7, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    iget v8, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/media/AudioTrack;->native_setup(Ljava/lang/Object;IIIIII[I)I

    move-result v10

    .line 329
    .local v10, initResult:I
    if-eqz v10, :cond_2

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when initializing AudioTrack."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 341
    :goto_0
    return-void

    .line 334
    :cond_2
    const/4 v1, 0x0

    aget v1, v9, v1

    iput v1, p0, Landroid/media/AudioTrack;->mSessionId:I

    .line 336
    iget v1, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v1, :cond_3

    .line 337
    const/4 v1, 0x2

    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    goto :goto_0

    .line 339
    :cond_3
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/media/AudioTrack;)Landroid/os/Looper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/AudioTrack;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Landroid/media/AudioTrack;->mPositionListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/AudioTrack;)Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Landroid/media/AudioTrack;->mPositionListener:Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    return-object v0
.end method

.method private audioBuffSizeCheck(I)V
    .locals 5
    .parameter "audioBufferSize"

    .prologue
    const/4 v2, 0x1

    .line 487
    iget v3, p0, Landroid/media/AudioTrack;->mChannelCount:I

    iget v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    move v1, v2

    :goto_0
    mul-int v0, v3, v1

    .line 489
    .local v0, frameSizeInBytes:I
    rem-int v1, p1, v0

    if-nez v1, :cond_0

    if-ge p1, v2, :cond_2

    .line 490
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid audio buffer size."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 487
    .end local v0           #frameSizeInBytes:I
    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    .line 493
    .restart local v0       #frameSizeInBytes:I
    :cond_2
    iput p1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 494
    return-void
.end method

.method private audioParamCheck(IIIII)V
    .locals 5
    .parameter "streamType"
    .parameter "sampleRateInHz"
    .parameter "channelConfig"
    .parameter "audioFormat"
    .parameter "mode"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 367
    if-eq p1, v4, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    if-eq p1, v3, :cond_0

    if-eq p1, v2, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 373
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid stream type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_0
    iput p1, p0, Landroid/media/AudioTrack;->mStreamType:I

    .line 380
    const/16 v0, 0xfa0

    if-lt p2, v0, :cond_1

    const v0, 0xbb80

    if-le p2, v0, :cond_2

    .line 381
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Hz is not a supported sample rate."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_2
    iput p2, p0, Landroid/media/AudioTrack;->mSampleRate:I

    .line 389
    iput p3, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 391
    sparse-switch p3, :sswitch_data_0

    .line 404
    invoke-static {p3}, Landroid/media/AudioTrack;->isMultichannelConfigSupported(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 406
    iput v1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 407
    iput v1, p0, Landroid/media/AudioTrack;->mChannels:I

    .line 408
    iput v1, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 409
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported channel configuration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :sswitch_0
    iput v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 396
    iput v4, p0, Landroid/media/AudioTrack;->mChannels:I

    .line 418
    :goto_0
    sparse-switch p4, :sswitch_data_1

    .line 432
    iput v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 433
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported sample encoding. Should be ENCODING_PCM_8BIT or ENCODING_PCM_16BIT."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :sswitch_1
    iput v3, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 401
    const/16 v0, 0xc

    iput v0, p0, Landroid/media/AudioTrack;->mChannels:I

    goto :goto_0

    .line 411
    :cond_3
    iput p3, p0, Landroid/media/AudioTrack;->mChannels:I

    .line 412
    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    iput v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    goto :goto_0

    .line 420
    :sswitch_2
    iput v3, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 439
    :goto_1
    if-eq p5, v2, :cond_4

    if-eqz p5, :cond_4

    .line 440
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :sswitch_3
    iput p4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    goto :goto_1

    .line 442
    :cond_4
    iput p5, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 444
    return-void

    .line 391
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0xc -> :sswitch_1
    .end sparse-switch

    .line 418
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_3
        0x64 -> :sswitch_3
        0x65 -> :sswitch_3
        0x66 -> :sswitch_3
        0x67 -> :sswitch_3
        0x68 -> :sswitch_3
    .end sparse-switch
.end method

.method public static getMaxVolume()F
    .locals 1

    .prologue
    .line 535
    const/high16 v0, 0x3f80

    return v0
.end method

.method public static getMinBufferSize(III)I
    .locals 4
    .parameter "sampleRateInHz"
    .parameter "channelConfig"
    .parameter "audioFormat"

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 666
    const/4 v0, 0x0

    .line 667
    .local v0, channelCount:I
    sparse-switch p1, :sswitch_data_0

    .line 677
    and-int/lit16 v3, p1, 0x4fc

    if-eq v3, p1, :cond_1

    .line 679
    const-string v2, "getMinBufferSize(): Invalid channel configuration."

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 709
    :cond_0
    :goto_0
    return v1

    .line 670
    :sswitch_0
    const/4 v0, 0x1

    .line 686
    :goto_1
    const/4 v3, 0x2

    if-eq p2, v3, :cond_2

    const/4 v3, 0x3

    if-eq p2, v3, :cond_2

    const/16 v3, 0x64

    if-eq p2, v3, :cond_2

    const/16 v3, 0x65

    if-eq p2, v3, :cond_2

    const/16 v3, 0x66

    if-eq p2, v3, :cond_2

    const/16 v3, 0x67

    if-eq p2, v3, :cond_2

    const/16 v3, 0x68

    if-eq p2, v3, :cond_2

    .line 693
    const-string v2, "getMinBufferSize(): Invalid audio format."

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 674
    :sswitch_1
    const/4 v0, 0x2

    .line 675
    goto :goto_1

    .line 682
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    goto :goto_1

    .line 698
    :cond_2
    const/16 v3, 0xfa0

    if-lt p0, v3, :cond_3

    const v3, 0xbb80

    if-le p0, v3, :cond_4

    .line 699
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMinBufferSize(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Hz is not a supported sample rate."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 703
    :cond_4
    invoke-static {p0, v0, p2}, Landroid/media/AudioTrack;->native_get_min_buff_size(III)I

    move-result v1

    .line 704
    .local v1, size:I
    if-eq v1, v2, :cond_5

    if-nez v1, :cond_0

    .line 705
    :cond_5
    const-string v3, "getMinBufferSize(): error querying hardware"

    invoke-static {v3}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    move v1, v2

    .line 706
    goto :goto_0

    .line 667
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0xc -> :sswitch_1
    .end sparse-switch
.end method

.method public static getMinVolume()F
    .locals 1

    .prologue
    .line 526
    const/4 v0, 0x0

    return v0
.end method

.method public static getNativeOutputSampleRate(I)I
    .locals 1
    .parameter "streamType"

    .prologue
    .line 645
    invoke-static {p0}, Landroid/media/AudioTrack;->native_get_output_sample_rate(I)I

    move-result v0

    return v0
.end method

.method private static isMultichannelConfigSupported(I)Z
    .locals 5
    .parameter "channelConfig"

    .prologue
    const/4 v2, 0x0

    .line 453
    and-int/lit16 v3, p0, 0x4fc

    if-eq v3, p0, :cond_0

    .line 454
    const-string v3, "AudioTrack-Java"

    const-string v4, "Channel configuration features unsupported channels"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :goto_0
    return v2

    .line 460
    :cond_0
    const/16 v1, 0xc

    .line 462
    .local v1, frontPair:I
    and-int/lit8 v3, p0, 0xc

    const/16 v4, 0xc

    if-eq v3, v4, :cond_1

    .line 463
    const-string v3, "AudioTrack-Java"

    const-string v4, "Front channels must be present in multichannel configurations"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 466
    :cond_1
    const/16 v0, 0xc0

    .line 468
    .local v0, backPair:I
    and-int/lit16 v3, p0, 0xc0

    if-eqz v3, :cond_2

    .line 469
    and-int/lit16 v3, p0, 0xc0

    const/16 v4, 0xc0

    if-eq v3, v4, :cond_2

    .line 470
    const-string v3, "AudioTrack-Java"

    const-string v4, "Rear channels can\'t be used independently"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 474
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1272
    const-string v0, "AudioTrack-Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ android.media.AudioTrack ] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1276
    const-string v0, "AudioTrack-Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ android.media.AudioTrack ] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    return-void
.end method

.method private final native native_attachAuxEffect(I)I
.end method

.method private final native native_finalize()V
.end method

.method private final native native_flush()V
.end method

.method private final native native_get_marker_pos()I
.end method

.method private static final native native_get_min_buff_size(III)I
.end method

.method private final native native_get_native_frame_count()I
.end method

.method private static final native native_get_output_sample_rate(I)I
.end method

.method private final native native_get_playback_rate()I
.end method

.method private final native native_get_pos_update_period()I
.end method

.method private final native native_get_position()I
.end method

.method private final native native_get_session_id()I
.end method

.method private final native native_pause()V
.end method

.method private final native native_release()V
.end method

.method private final native native_reload_static()I
.end method

.method private final native native_setAuxEffectSendLevel(F)V
.end method

.method private final native native_setVolume(FF)V
.end method

.method private final native native_set_loop(III)I
.end method

.method private final native native_set_marker_pos(I)I
.end method

.method private final native native_set_playback_rate(I)I
.end method

.method private final native native_set_pos_update_period(I)I
.end method

.method private final native native_set_position(I)I
.end method

.method private final native native_setup(Ljava/lang/Object;IIIIII[I)I
.end method

.method private final native native_start()V
.end method

.method private final native native_stop()V
.end method

.method private final native native_write_byte([BIII)I
.end method

.method private final native native_write_short([SIII)I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .parameter "audiotrack_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 1198
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioTrack;

    .line 1199
    .local v1, track:Landroid/media/AudioTrack;
    if-nez v1, :cond_1

    .line 1209
    :cond_0
    :goto_0
    return-void

    .line 1203
    :cond_1
    iget-object v2, v1, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    if-eqz v2, :cond_0

    .line 1204
    iget-object v2, v1, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    invoke-virtual {v2}, Landroid/media/AudioTrack$NativeEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1206
    .local v0, m:Landroid/os/Message;
    iget-object v2, v1, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    invoke-virtual {v2}, Landroid/media/AudioTrack$NativeEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public attachAuxEffect(I)I
    .locals 2
    .parameter "effectId"

    .prologue
    .line 1069
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1070
    const/4 v0, -0x3

    .line 1072
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_attachAuxEffect(I)I

    move-result v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 514
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_finalize()V

    .line 515
    return-void
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 954
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 956
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_flush()V

    .line 959
    :cond_0
    return-void
.end method

.method public getAudioFormat()I
    .locals 1

    .prologue
    .line 557
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 719
    iget v0, p0, Landroid/media/AudioTrack;->mSessionId:I

    return v0
.end method

.method public getChannelConfiguration()I
    .locals 1

    .prologue
    .line 578
    iget v0, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    return v0
.end method

.method public getChannelCount()I
    .locals 1

    .prologue
    .line 585
    iget v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    return v0
.end method

.method protected getNativeFrameCount()I
    .locals 1

    .prologue
    .line 617
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_native_frame_count()I

    move-result v0

    return v0
.end method

.method public getNotificationMarkerPosition()I
    .locals 1

    .prologue
    .line 624
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_marker_pos()I

    move-result v0

    return v0
.end method

.method public getPlayState()I
    .locals 2

    .prologue
    .line 608
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 609
    :try_start_0
    iget v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    monitor-exit v1

    return v0

    .line 610
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPlaybackHeadPosition()I
    .locals 1

    .prologue
    .line 638
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_position()I

    move-result v0

    return v0
.end method

.method public getPlaybackRate()I
    .locals 1

    .prologue
    .line 549
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_playback_rate()I

    move-result v0

    return v0
.end method

.method public getPositionNotificationPeriod()I
    .locals 1

    .prologue
    .line 631
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_pos_update_period()I

    move-result v0

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 542
    iget v0, p0, Landroid/media/AudioTrack;->mSampleRate:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 598
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    return v0
.end method

.method public getStreamType()I
    .locals 1

    .prologue
    .line 568
    iget v0, p0, Landroid/media/AudioTrack;->mStreamType:I

    return v0
.end method

.method public pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 932
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 933
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "pause() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 938
    :cond_0
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 939
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_pause()V

    .line 940
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 941
    monitor-exit v1

    .line 942
    return-void

    .line 941
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public play()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 892
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 893
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "play() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 896
    :cond_0
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 897
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_start()V

    .line 898
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 899
    monitor-exit v1

    .line 900
    return-void

    .line 899
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 504
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    :goto_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_release()V

    .line 509
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 510
    return-void

    .line 505
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public reloadStaticData()I
    .locals 2

    .prologue
    .line 1041
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1042
    const/4 v0, -0x3

    .line 1044
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_reload_static()I

    move-result v0

    goto :goto_0
.end method

.method public setAuxEffectSendLevel(F)I
    .locals 2
    .parameter "level"

    .prologue
    .line 1091
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1092
    const/4 v0, -0x3

    .line 1102
    :goto_0
    return v0

    .line 1095
    :cond_0
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 1096
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result p1

    .line 1098
    :cond_1
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 1099
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result p1

    .line 1101
    :cond_2
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_setAuxEffectSendLevel(F)V

    .line 1102
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLoopPoints(III)I
    .locals 2
    .parameter "startInFrames"
    .parameter "endInFrames"
    .parameter "loopCount"

    .prologue
    .line 866
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 867
    const/4 v0, -0x3

    .line 869
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioTrack;->native_set_loop(III)I

    move-result v0

    goto :goto_0
.end method

.method public setNotificationMarkerPosition(I)I
    .locals 2
    .parameter "markerInFrames"

    .prologue
    .line 820
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 821
    const/4 v0, -0x3

    .line 823
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_marker_pos(I)I

    move-result v0

    goto :goto_0
.end method

.method public setPlaybackHeadPosition(I)I
    .locals 3
    .parameter "positionInFrames"

    .prologue
    .line 847
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 848
    :try_start_0
    iget v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 849
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_position(I)I

    move-result v0

    monitor-exit v1

    .line 851
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x3

    monitor-exit v1

    goto :goto_0

    .line 853
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 733
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    .line 734
    return-void
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V
    .locals 2
    .parameter "listener"
    .parameter "handler"

    .prologue
    .line 746
    iget-object v1, p0, Landroid/media/AudioTrack;->mPositionListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 747
    :try_start_0
    iput-object p1, p0, Landroid/media/AudioTrack;->mPositionListener:Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    .line 748
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 749
    if-eqz p1, :cond_0

    .line 750
    new-instance v0, Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    invoke-direct {v0, p0, p0, p2}, Landroid/media/AudioTrack$NativeEventHandlerDelegate;-><init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    .line 753
    :cond_0
    return-void

    .line 748
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setPlaybackRate(I)I
    .locals 2
    .parameter "sampleRateInHz"

    .prologue
    .line 803
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 804
    const/4 v0, -0x3

    .line 809
    :goto_0
    return v0

    .line 806
    :cond_0
    if-gtz p1, :cond_1

    .line 807
    const/4 v0, -0x2

    goto :goto_0

    .line 809
    :cond_1
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_playback_rate(I)I

    move-result v0

    goto :goto_0
.end method

.method public setPositionNotificationPeriod(I)I
    .locals 2
    .parameter "periodInFrames"

    .prologue
    .line 833
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 834
    const/4 v0, -0x3

    .line 836
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_pos_update_period(I)I

    move-result v0

    goto :goto_0
.end method

.method protected setState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 878
    iput p1, p0, Landroid/media/AudioTrack;->mState:I

    .line 879
    return-void
.end method

.method public setStereoVolume(FF)I
    .locals 2
    .parameter "leftVolume"
    .parameter "rightVolume"

    .prologue
    .line 767
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 768
    const/4 v0, -0x3

    .line 787
    :goto_0
    return v0

    .line 772
    :cond_0
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 773
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result p1

    .line 775
    :cond_1
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 776
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result p1

    .line 778
    :cond_2
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_3

    .line 779
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result p2

    .line 781
    :cond_3
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_4

    .line 782
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result p2

    .line 785
    :cond_4
    invoke-direct {p0, p1, p2}, Landroid/media/AudioTrack;->native_setVolume(FF)V

    .line 787
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 912
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eq v0, v1, :cond_0

    .line 913
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "stop() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 917
    :cond_0
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 918
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_stop()V

    .line 919
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 920
    monitor-exit v1

    .line 921
    return-void

    .line 920
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public write([BII)I
    .locals 3
    .parameter "audioData"
    .parameter "offsetInBytes"
    .parameter "sizeInBytes"

    .prologue
    const/4 v2, 0x1

    .line 978
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    if-lez p3, :cond_0

    .line 981
    iput v2, p0, Landroid/media/AudioTrack;->mState:I

    .line 984
    :cond_0
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eq v0, v2, :cond_1

    .line 985
    const/4 v0, -0x3

    .line 993
    :goto_0
    return v0

    .line 988
    :cond_1
    if-eqz p1, :cond_2

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_3

    .line 990
    :cond_2
    const/4 v0, -0x2

    goto :goto_0

    .line 993
    :cond_3
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/AudioTrack;->native_write_byte([BIII)I

    move-result v0

    goto :goto_0
.end method

.method public write([SII)I
    .locals 3
    .parameter "audioData"
    .parameter "offsetInShorts"
    .parameter "sizeInShorts"

    .prologue
    const/4 v2, 0x1

    .line 1014
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    if-lez p3, :cond_0

    .line 1017
    iput v2, p0, Landroid/media/AudioTrack;->mState:I

    .line 1020
    :cond_0
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eq v0, v2, :cond_1

    .line 1021
    const/4 v0, -0x3

    .line 1029
    :goto_0
    return v0

    .line 1024
    :cond_1
    if-eqz p1, :cond_2

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_3

    .line 1026
    :cond_2
    const/4 v0, -0x2

    goto :goto_0

    .line 1029
    :cond_3
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/AudioTrack;->native_write_short([SIII)I

    move-result v0

    goto :goto_0
.end method
