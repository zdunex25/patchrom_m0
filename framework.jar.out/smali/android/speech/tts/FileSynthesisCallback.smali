.class Landroid/speech/tts/FileSynthesisCallback;
.super Landroid/speech/tts/AbstractSynthesisCallback;
.source "FileSynthesisCallback.java"


# static fields
.field private static final DBG:Z = false

.field private static final MAX_AUDIO_BUFFER_SIZE:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "FileSynthesisRequest"

.field private static final WAV_FORMAT_PCM:S = 0x1s

.field private static final WAV_HEADER_LENGTH:I = 0x2c


# instance fields
.field private mAudioFormat:I

.field private mChannelCount:I

.field private mDone:Z

.field private mFile:Ljava/io/RandomAccessFile;

.field private final mFileName:Ljava/io/File;

.field private mSampleRateInHz:I

.field private final mStateLock:Ljava/lang/Object;

.field private mStopped:Z


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 2
    .parameter "fileName"

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Landroid/speech/tts/AbstractSynthesisCallback;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    .line 47
    iput-boolean v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStopped:Z

    .line 48
    iput-boolean v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z

    .line 51
    iput-object p1, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileName:Ljava/io/File;

    .line 52
    return-void
.end method

.method private cleanUp()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->closeFileAndWidenPermissions()V

    .line 67
    iget-object v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 70
    :cond_0
    return-void
.end method

.method private closeFileAndWidenPermissions()V
    .locals 6

    .prologue
    .line 77
    :try_start_0
    iget-object v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mFile:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_0

    .line 78
    iget-object v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 79
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mFile:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileName:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1b6

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-static {v2, v3, v4, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    :goto_1
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "FileSynthesisRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to close "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileName:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 93
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 94
    .local v1, se:Ljava/lang/SecurityException;
    const-string v2, "FileSynthesisRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Security exception setting rw permissions on : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileName:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private makeWavHeader(IIII)[B
    .locals 9
    .parameter "sampleRateInHz"
    .parameter "audioFormat"
    .parameter "channelCount"
    .parameter "dataLength"

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x4

    .line 232
    const/4 v7, 0x3

    if-ne p2, v7, :cond_0

    move v5, v6

    .line 233
    .local v5, sampleSizeInBytes:I
    :goto_0
    mul-int v7, p1, v5

    mul-int v2, v7, p3

    .line 234
    .local v2, byteRate:I
    mul-int v7, v5, p3

    int-to-short v1, v7

    .line 235
    .local v1, blockAlign:S
    mul-int/lit8 v7, v5, 0x8

    int-to-short v0, v7

    .line 237
    .local v0, bitsPerSample:S
    const/16 v7, 0x2c

    new-array v4, v7, [B

    .line 238
    .local v4, headerBuf:[B
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 239
    .local v3, header:Ljava/nio/ByteBuffer;
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 241
    new-array v7, v8, [B

    fill-array-data v7, :array_0

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 242
    add-int/lit8 v7, p4, 0x2c

    add-int/lit8 v7, v7, -0x8

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 243
    new-array v7, v8, [B

    fill-array-data v7, :array_1

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 244
    new-array v7, v8, [B

    fill-array-data v7, :array_2

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 245
    const/16 v7, 0x10

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 246
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 247
    int-to-short v6, p3

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 248
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 249
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 250
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 251
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 252
    new-array v6, v8, [B

    fill-array-data v6, :array_3

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 253
    invoke-virtual {v3, p4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 255
    return-object v4

    .line 232
    .end local v0           #bitsPerSample:S
    .end local v1           #blockAlign:S
    .end local v2           #byteRate:I
    .end local v3           #header:Ljava/nio/ByteBuffer;
    .end local v4           #headerBuf:[B
    .end local v5           #sampleSizeInBytes:I
    :cond_0
    const/4 v5, 0x2

    goto :goto_0

    .line 241
    :array_0
    .array-data 0x1
        0x52t
        0x49t
        0x46t
        0x46t
    .end array-data

    .line 243
    :array_1
    .array-data 0x1
        0x57t
        0x41t
        0x56t
        0x45t
    .end array-data

    .line 244
    :array_2
    .array-data 0x1
        0x66t
        0x6dt
        0x74t
        0x20t
    .end array-data

    .line 252
    :array_3
    .array-data 0x1
        0x64t
        0x61t
        0x74t
        0x61t
    .end array-data
.end method

.method private maybeCleanupExistingFile(Ljava/io/File;)Z
    .locals 3
    .parameter "file"

    .prologue
    .line 102
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const-string v0, "FileSynthesisRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exists, deleting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    const-string v0, "FileSynthesisRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v0, 0x0

    .line 110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public audioAvailable([BII)I
    .locals 6
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v1, -0x1

    .line 166
    iget-object v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 167
    :try_start_0
    iget-boolean v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mStopped:Z

    if-eqz v3, :cond_0

    .line 169
    monitor-exit v2

    .line 181
    :goto_0
    return v1

    .line 171
    :cond_0
    iget-object v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mFile:Ljava/io/RandomAccessFile;

    if-nez v3, :cond_1

    .line 172
    const-string v3, "FileSynthesisRequest"

    const-string v4, "File not open"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    monitor-exit v2

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 176
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 177
    const/4 v1, 0x0

    :try_start_2
    monitor-exit v2

    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, ex:Ljava/io/IOException;
    const-string v3, "FileSynthesisRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileName:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V

    .line 181
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public done()I
    .locals 8

    .prologue
    const/4 v2, -0x1

    .line 189
    iget-object v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 190
    :try_start_0
    iget-boolean v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z

    if-eqz v4, :cond_0

    .line 194
    monitor-exit v3

    .line 216
    :goto_0
    return v2

    .line 196
    :cond_0
    iget-boolean v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mStopped:Z

    if-eqz v4, :cond_1

    .line 198
    monitor-exit v3

    goto :goto_0

    .line 218
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 200
    :cond_1
    :try_start_1
    iget-object v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mFile:Ljava/io/RandomAccessFile;

    if-nez v4, :cond_2

    .line 201
    const-string v4, "FileSynthesisRequest"

    const-string v5, "File not open"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 206
    :cond_2
    :try_start_2
    iget-object v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mFile:Ljava/io/RandomAccessFile;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 207
    iget-object v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x2c

    sub-long/2addr v4, v6

    long-to-int v0, v4

    .line 208
    .local v0, dataLength:I
    iget-object v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mFile:Ljava/io/RandomAccessFile;

    iget v5, p0, Landroid/speech/tts/FileSynthesisCallback;->mSampleRateInHz:I

    iget v6, p0, Landroid/speech/tts/FileSynthesisCallback;->mAudioFormat:I

    iget v7, p0, Landroid/speech/tts/FileSynthesisCallback;->mChannelCount:I

    invoke-direct {p0, v5, v6, v7, v0}, Landroid/speech/tts/FileSynthesisCallback;->makeWavHeader(IIII)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/RandomAccessFile;->write([B)V

    .line 210
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->closeFileAndWidenPermissions()V

    .line 211
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 212
    const/4 v2, 0x0

    :try_start_3
    monitor-exit v3

    goto :goto_0

    .line 213
    .end local v0           #dataLength:I
    :catch_0
    move-exception v1

    .line 214
    .local v1, ex:Ljava/io/IOException;
    const-string v4, "FileSynthesisRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to write to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileName:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V

    .line 216
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public error()V
    .locals 2

    .prologue
    .line 224
    iget-object v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 225
    :try_start_0
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V

    .line 226
    monitor-exit v1

    .line 227
    return-void

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMaxBufferSize()I
    .locals 1

    .prologue
    .line 116
    const/16 v0, 0x2000

    return v0
.end method

.method isDone()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z

    return v0
.end method

.method public start(III)I
    .locals 6
    .parameter "sampleRateInHz"
    .parameter "audioFormat"
    .parameter "channelCount"

    .prologue
    const/4 v1, -0x1

    .line 130
    iget-object v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 131
    :try_start_0
    iget-boolean v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mStopped:Z

    if-eqz v3, :cond_0

    .line 133
    monitor-exit v2

    .line 155
    :goto_0
    return v1

    .line 135
    :cond_0
    iget-object v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mFile:Ljava/io/RandomAccessFile;

    if-eqz v3, :cond_1

    .line 136
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V

    .line 137
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "FileSynthesisRequest.start() called twice"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 140
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileName:Ljava/io/File;

    invoke-direct {p0, v3}, Landroid/speech/tts/FileSynthesisCallback;->maybeCleanupExistingFile(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 141
    monitor-exit v2

    goto :goto_0

    .line 144
    :cond_2
    iput p1, p0, Landroid/speech/tts/FileSynthesisCallback;->mSampleRateInHz:I

    .line 145
    iput p2, p0, Landroid/speech/tts/FileSynthesisCallback;->mAudioFormat:I

    .line 146
    iput p3, p0, Landroid/speech/tts/FileSynthesisCallback;->mChannelCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    :try_start_2
    new-instance v3, Ljava/io/RandomAccessFile;

    iget-object v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileName:Ljava/io/File;

    const-string/jumbo v5, "rw"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mFile:Ljava/io/RandomAccessFile;

    .line 150
    iget-object v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mFile:Ljava/io/RandomAccessFile;

    const/16 v4, 0x2c

    new-array v4, v4, [B

    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 151
    const/4 v1, 0x0

    :try_start_3
    monitor-exit v2

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, ex:Ljava/io/IOException;
    const-string v3, "FileSynthesisRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to open "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileName:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V

    .line 155
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method stop()V
    .locals 2

    .prologue
    .line 56
    iget-object v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 57
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mStopped:Z

    .line 58
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V

    .line 59
    monitor-exit v1

    .line 60
    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
