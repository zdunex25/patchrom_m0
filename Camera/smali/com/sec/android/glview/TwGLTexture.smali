.class public abstract Lcom/sec/android/glview/TwGLTexture;
.super Lcom/sec/android/glview/TwGLView;
.source "TwGLTexture.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TwGLTexture"

.field private static final TEXTURE_PADDING_SIZE:I = 0x2


# instance fields
.field private mAsyncLodingInProgress:Z

.field protected mBitmap:Landroid/graphics/Bitmap;

.field protected mCoordBuffer:[F

.field protected mFlip:Z

.field protected mGL:Ljavax/microedition/khronos/opengles/GL11;

.field protected mIndexBuffer:Ljava/nio/ByteBuffer;

.field mIndices:[B

.field protected mTexCoordBuffer:Ljava/nio/ByteBuffer;

.field protected mTexCoordHeight:F

.field protected mTexCoordWidth:F

.field protected mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

.field protected mTextureLoaded:Z

.field protected mTextureReloaded:Z

.field protected mTextures:[I

.field protected mVertexBuffer:Ljava/nio/FloatBuffer;

.field mVertices:[F


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF)V
    .locals 2
    .parameter "glContext"
    .parameter "left"
    .parameter "top"

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 53
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    .line 69
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLTexture;->mFlip:Z

    .line 71
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureReloaded:Z

    .line 73
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLTexture;->mAsyncLodingInProgress:Z

    .line 78
    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    .line 89
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureLoaded:Z

    .line 100
    return-void

    .line 78
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF)V
    .locals 2
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 53
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    .line 69
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLTexture;->mFlip:Z

    .line 71
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureReloaded:Z

    .line 73
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLTexture;->mAsyncLodingInProgress:Z

    .line 78
    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    .line 89
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureLoaded:Z

    .line 113
    return-void

    .line 78
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$002(Lcom/sec/android/glview/TwGLTexture;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLTexture;->mAsyncLodingInProgress:Z

    return p1
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    .line 200
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->clearBuffers()V

    .line 201
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLContext;->addTextureToDelete(Lcom/sec/android/glview/TwGLTexture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    monitor-exit p0

    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized clearBuffers()V
    .locals 1

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 160
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 161
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mIndexBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 164
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mIndexBuffer:Ljava/nio/ByteBuffer;

    .line 165
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 168
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    .line 169
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    .line 170
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 172
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    monitor-exit p0

    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearTexture(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "gl"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 209
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    if-eqz v0, :cond_0

    new-array v0, v3, [I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    aget v1, v1, v2

    aput v1, v0, v2

    invoke-interface {p1, v3, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 210
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    .line 211
    return-void
.end method

.method public declared-synchronized getLoaded(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 1
    .parameter "gl"

    .prologue
    .line 370
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized initBuffers()V
    .locals 4

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->clearBuffers()V

    .line 120
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    invoke-static {v2}, Lcom/sec/android/glview/TwGLUtil;->getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, offset:I
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    if-nez v2, :cond_0

    .line 124
    const/4 v2, 0x6

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    .line 125
    :cond_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0           #offset:I
    .local v1, offset:I
    const/4 v3, 0x0

    aput-byte v3, v2, v0

    .line 126
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1           #offset:I
    .restart local v0       #offset:I
    const/4 v3, 0x1

    aput-byte v3, v2, v1

    .line 127
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0           #offset:I
    .restart local v1       #offset:I
    const/4 v3, 0x3

    aput-byte v3, v2, v0

    .line 128
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1           #offset:I
    .restart local v0       #offset:I
    const/4 v3, 0x0

    aput-byte v3, v2, v1

    .line 129
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0           #offset:I
    .restart local v1       #offset:I
    const/4 v3, 0x3

    aput-byte v3, v2, v0

    .line 130
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    const/4 v3, 0x2

    aput-byte v3, v2, v1

    .line 132
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    invoke-static {v2}, Lcom/sec/android/glview/TwGLUtil;->getByteBufferFromByteArray([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mIndexBuffer:Ljava/nio/ByteBuffer;

    .line 134
    const/16 v2, 0x20

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    .line 135
    const/16 v2, 0x20

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    .line 137
    const/4 v0, 0x0

    .line 138
    .end local v1           #offset:I
    .restart local v0       #offset:I
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    if-nez v2, :cond_1

    .line 139
    const/16 v2, 0x8

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    .line 140
    :cond_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0           #offset:I
    .restart local v1       #offset:I
    const/4 v3, 0x0

    aput v3, v2, v0

    .line 141
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1           #offset:I
    .restart local v0       #offset:I
    const/4 v3, 0x0

    aput v3, v2, v1

    .line 142
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0           #offset:I
    .restart local v1       #offset:I
    const/4 v3, 0x0

    aput v3, v2, v0

    .line 143
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1           #offset:I
    .restart local v0       #offset:I
    const/high16 v3, 0x3f80

    aput v3, v2, v1

    .line 144
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0           #offset:I
    .restart local v1       #offset:I
    const/high16 v3, 0x3f80

    aput v3, v2, v0

    .line 145
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1           #offset:I
    .restart local v0       #offset:I
    const/4 v3, 0x0

    aput v3, v2, v1

    .line 146
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0           #offset:I
    .restart local v1       #offset:I
    const/high16 v3, 0x3f80

    aput v3, v2, v0

    .line 147
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    const/high16 v3, 0x3f80

    aput v3, v2, v1

    .line 149
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 150
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit p0

    return-void

    .line 119
    .end local v1           #offset:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected declared-synchronized initCoordBuffer(IIII)V
    .locals 4
    .parameter "width"
    .parameter "height"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    .line 382
    monitor-enter p0

    int-to-float v2, p1

    int-to-float v3, p3

    div-float/2addr v2, v3

    :try_start_0
    iput v2, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordWidth:F

    .line 383
    int-to-float v2, p2

    int-to-float v3, p4

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordHeight:F

    .line 385
    const/4 v0, 0x0

    .line 386
    .local v0, offset:I
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0           #offset:I
    .local v1, offset:I
    const/4 v3, 0x0

    aput v3, v2, v0

    .line 387
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1           #offset:I
    .restart local v0       #offset:I
    const/4 v3, 0x0

    aput v3, v2, v1

    .line 388
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0           #offset:I
    .restart local v1       #offset:I
    const/4 v3, 0x0

    aput v3, v2, v0

    .line 389
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1           #offset:I
    .restart local v0       #offset:I
    iget v3, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordHeight:F

    aput v3, v2, v1

    .line 390
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0           #offset:I
    .restart local v1       #offset:I
    iget v3, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordWidth:F

    aput v3, v2, v0

    .line 391
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1           #offset:I
    .restart local v0       #offset:I
    const/4 v3, 0x0

    aput v3, v2, v1

    .line 392
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0           #offset:I
    .restart local v1       #offset:I
    iget v3, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordWidth:F

    aput v3, v2, v0

    .line 393
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    iget v3, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordHeight:F

    aput v3, v2, v1

    .line 395
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 397
    const/4 v0, 0x0

    .line 398
    .end local v1           #offset:I
    .restart local v0       #offset:I
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0           #offset:I
    .restart local v1       #offset:I
    iget v3, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordWidth:F

    aput v3, v2, v0

    .line 399
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1           #offset:I
    .restart local v0       #offset:I
    const/4 v3, 0x0

    aput v3, v2, v1

    .line 400
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0           #offset:I
    .restart local v1       #offset:I
    iget v3, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordWidth:F

    aput v3, v2, v0

    .line 401
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1           #offset:I
    .restart local v0       #offset:I
    iget v3, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordHeight:F

    aput v3, v2, v1

    .line 402
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0           #offset:I
    .restart local v1       #offset:I
    const/4 v3, 0x0

    aput v3, v2, v0

    .line 403
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1           #offset:I
    .restart local v0       #offset:I
    const/4 v3, 0x0

    aput v3, v2, v1

    .line 404
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0           #offset:I
    .restart local v1       #offset:I
    const/4 v3, 0x0

    aput v3, v2, v0

    .line 405
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    iget v3, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordHeight:F

    aput v3, v2, v1

    .line 407
    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    monitor-exit p0

    return-void

    .line 382
    .end local v1           #offset:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized initSize()V
    .locals 2

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->loadBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getSizeSpecified()Z

    move-result v0

    if-nez v0, :cond_2

    .line 185
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLTexture;->setSize(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 187
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLTexture;->setSize(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract loadBitmap()Landroid/graphics/Bitmap;
.end method

.method protected declared-synchronized loadGLTexture(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 35
    .parameter "gl"

    .prologue
    .line 418
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 455
    :goto_0
    monitor-exit p0

    return-void

    .line 421
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    .line 422
    .local v24, width:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    .line 423
    .local v15, height:I
    invoke-static/range {v24 .. v24}, Lcom/sec/android/glview/TwGLUtil;->nextPowerOf2(I)I

    move-result v6

    .line 424
    .local v6, newWidth:I
    invoke-static {v15}, Lcom/sec/android/glview/TwGLUtil;->nextPowerOf2(I)I

    move-result v7

    .line 426
    .local v7, newHeight:I
    move/from16 v0, v24

    if-ne v0, v6, :cond_2

    if-ne v15, v7, :cond_2

    .line 427
    const/16 v2, 0xde1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    invoke-static {v2, v3, v4, v8}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 449
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 450
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 451
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 454
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1, v15, v6, v7}, Lcom/sec/android/glview/TwGLTexture;->initCoordBuffer(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 418
    .end local v6           #newWidth:I
    .end local v7           #newHeight:I
    .end local v15           #height:I
    .end local v24           #width:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 429
    .restart local v6       #newWidth:I
    .restart local v7       #newHeight:I
    .restart local v15       #height:I
    .restart local v24       #width:I
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v5

    .line 430
    .local v5, format:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v10

    .line 432
    .local v10, type:I
    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, p1

    move v9, v5

    invoke-interface/range {v2 .. v11}, Ljavax/microedition/khronos/opengles/GL11;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 434
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v20

    .line 435
    .local v20, paddingBuffer:Ljava/nio/IntBuffer;
    if-eqz v20, :cond_3

    .line 436
    const/16 v12, 0xde1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x2

    move-object/from16 v11, p1

    move/from16 v16, v6

    move/from16 v18, v5

    move/from16 v19, v10

    invoke-interface/range {v11 .. v20}, Ljavax/microedition/khronos/opengles/GL11;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 437
    const/16 v22, 0xde1

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x2

    move-object/from16 v21, p1

    move/from16 v27, v7

    move/from16 v28, v5

    move/from16 v29, v10

    move-object/from16 v30, v20

    invoke-interface/range {v21 .. v30}, Ljavax/microedition/khronos/opengles/GL11;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 439
    const/16 v26, 0xde1

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/4 v2, 0x2

    if-ge v7, v2, :cond_4

    const/16 v29, 0x0

    :goto_2
    const/16 v31, 0x2

    move-object/from16 v25, p1

    move/from16 v30, v6

    move/from16 v32, v5

    move/from16 v33, v10

    move-object/from16 v34, v20

    invoke-interface/range {v25 .. v34}, Ljavax/microedition/khronos/opengles/GL11;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 440
    const/16 v26, 0xde1

    const/16 v27, 0x0

    const/4 v2, 0x2

    if-ge v6, v2, :cond_5

    const/16 v28, 0x0

    :goto_3
    const/16 v29, 0x0

    const/16 v30, 0x2

    move-object/from16 v25, p1

    move/from16 v31, v7

    move/from16 v32, v5

    move/from16 v33, v10

    move-object/from16 v34, v20

    invoke-interface/range {v25 .. v34}, Ljavax/microedition/khronos/opengles/GL11;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 442
    invoke-virtual/range {v20 .. v20}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 443
    const/16 v20, 0x0

    .line 446
    :cond_3
    const/16 v25, 0xde1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v29, v0

    move/from16 v30, v5

    move/from16 v31, v10

    invoke-static/range {v25 .. v31}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 439
    :cond_4
    add-int/lit8 v29, v7, -0x2

    goto :goto_2

    .line 440
    :cond_5
    add-int/lit8 v28, v6, -0x2

    goto :goto_3
.end method

.method public onAlphaUpdated()V
    .locals 0

    .prologue
    .line 224
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->onAlphaUpdated()V

    .line 225
    return-void
.end method

.method public declared-synchronized onDraw(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 4
    .parameter "gl"

    .prologue
    .line 461
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 508
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 464
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLayoutUpdated:Z

    if-eqz v0, :cond_5

    .line 465
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->setVertices()V

    .line 466
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    .line 467
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 469
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    invoke-static {v0}, Lcom/sec/android/glview/TwGLUtil;->getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 470
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 472
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLayoutUpdated:Z

    .line 481
    :cond_3
    :goto_1
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 490
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 491
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 493
    const/16 v0, 0x900

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glFrontFace(I)V

    .line 494
    const/4 v0, 0x3

    const/16 v1, 0x1406

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 496
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLTexture;->mFlip:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 497
    const/4 v0, 0x2

    const/16 v1, 0x1406

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 501
    :goto_2
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureReloaded:Z

    if-eqz v0, :cond_4

    .line 502
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLTexture;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 503
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureReloaded:Z

    .line 505
    :cond_4
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    array-length v1, v1

    const/16 v2, 0x1401

    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 506
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisableClientState(I)V

    .line 507
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisableClientState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 461
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 474
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mIndexBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_3

    .line 475
    :cond_6
    const-string v0, "TwGLTexture"

    const-string v1, "init buffers on onDraw"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->setVertices()V

    .line 477
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->initBuffers()V

    goto :goto_1

    .line 499
    :cond_7
    const/4 v0, 0x2

    const/16 v1, 0x1406

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIILjava/nio/Buffer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public onLayoutUpdated()V
    .locals 1

    .prologue
    .line 218
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdated()V

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLayoutUpdated:Z

    .line 220
    return-void
.end method

.method protected declared-synchronized onLoad(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 8
    .parameter "gl"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 257
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sec/android/glview/TwGLTexture;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 259
    iget-boolean v6, p0, Lcom/sec/android/glview/TwGLView;->mAsyncLoad:Z

    if-eqz v6, :cond_2

    .line 260
    iget-boolean v6, p0, Lcom/sec/android/glview/TwGLTexture;->mAsyncLodingInProgress:Z

    if-nez v6, :cond_0

    .line 261
    new-instance v2, Ljava/lang/Thread;

    new-instance v6, Lcom/sec/android/glview/TwGLTexture$1;

    invoke-direct {v6, p0}, Lcom/sec/android/glview/TwGLTexture$1;-><init>(Lcom/sec/android/glview/TwGLTexture;)V

    invoke-direct {v2, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 300
    .local v2, t:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 301
    iget-boolean v6, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureLoaded:Z

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/sec/android/glview/TwGLTexture;->mAsyncLodingInProgress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    .line 341
    .end local v2           #t:Ljava/lang/Thread;
    :cond_0
    :goto_0
    monitor-exit p0

    return v4

    .restart local v2       #t:Ljava/lang/Thread;
    :cond_1
    move v4, v5

    .line 304
    goto :goto_0

    .line 308
    .end local v2           #t:Ljava/lang/Thread;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->initSize()V

    .line 309
    iget-object v6, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_3

    move v4, v5

    .line 310
    goto :goto_0

    .line 311
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->setVertices()V

    .line 312
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->initBuffers()V

    .line 314
    iget-object v5, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 315
    .local v3, width:I
    iget-object v5, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 317
    .local v1, height:I
    const/4 v5, 0x4

    new-array v0, v5, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v0, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v0, v5

    const/4 v5, 0x2

    int-to-float v6, v3

    aput v6, v0, v5

    const/4 v5, 0x3

    int-to-float v6, v1

    aput v6, v0, v5

    .line 319
    .local v0, cropRect:[F
    iget-object v5, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    if-nez v5, :cond_4

    .line 320
    const/4 v5, 0x1

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    .line 321
    :cond_4
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    const/4 v7, 0x0

    invoke-interface {p1, v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL11;->glGenTextures(I[II)V

    .line 322
    const/16 v5, 0xde1

    iget-object v6, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-interface {p1, v5, v6}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 324
    rem-int/lit8 v5, v3, 0x2

    if-ne v5, v4, :cond_5

    .line 325
    const/16 v5, 0xcf5

    const/4 v6, 0x2

    invoke-interface {p1, v5, v6}, Ljavax/microedition/khronos/opengles/GL11;->glPixelStorei(II)V

    .line 329
    :goto_1
    const/16 v5, 0xde1

    const v6, 0x8b9d

    const/4 v7, 0x0

    invoke-interface {p1, v5, v6, v0, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(II[FI)V

    .line 331
    const/16 v5, 0xde1

    const/16 v6, 0x2801

    const v7, 0x46180400

    invoke-interface {p1, v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 332
    const/16 v5, 0xde1

    const/16 v6, 0x2800

    const v7, 0x46180400

    invoke-interface {p1, v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 334
    const/16 v5, 0xde1

    const/16 v6, 0x2802

    const v7, 0x46240400

    invoke-interface {p1, v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 335
    const/16 v5, 0xde1

    const/16 v6, 0x2803

    const v7, 0x46240400

    invoke-interface {p1, v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 337
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLTexture;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 339
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureLoaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 257
    .end local v0           #cropRect:[F
    .end local v1           #height:I
    .end local v3           #width:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 327
    .restart local v0       #cropRect:[F
    .restart local v1       #height:I
    .restart local v3       #width:I
    :cond_5
    const/16 v5, 0xcf5

    const/4 v6, 0x4

    :try_start_2
    invoke-interface {p1, v5, v6}, Ljavax/microedition/khronos/opengles/GL11;->glPixelStorei(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onReset()V
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 521
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 524
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureLoaded:Z

    .line 525
    return-void
.end method

.method protected declared-synchronized reLoad()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 345
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 362
    :goto_0
    monitor-exit p0

    return v0

    .line 348
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureLoaded:Z

    .line 350
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 354
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->loadBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 356
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->setVertices()V

    .line 357
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->initBuffers()V

    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureLoaded:Z

    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureReloaded:Z

    .line 361
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 362
    goto :goto_0

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setFlip(Z)V
    .locals 0
    .parameter "flip"

    .prologue
    .line 228
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLTexture;->mFlip:Z

    .line 229
    return-void
.end method

.method protected declared-synchronized setVertices()V
    .locals 4

    .prologue
    .line 235
    monitor-enter p0

    const/4 v1, 0x2

    :try_start_0
    new-array v0, v1, [F

    .line 236
    .local v0, glCoordinate:[F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getTop()F

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 237
    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v0, v3

    aput v3, v1, v2

    .line 238
    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/4 v2, 0x1

    const/4 v3, 0x1

    aget v3, v0, v3

    aput v3, v1, v2

    .line 240
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getBottom()F

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 241
    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/4 v2, 0x3

    const/4 v3, 0x0

    aget v3, v0, v3

    aput v3, v1, v2

    .line 242
    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/4 v2, 0x4

    const/4 v3, 0x1

    aget v3, v0, v3

    aput v3, v1, v2

    .line 244
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getRight()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getTop()F

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 245
    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/4 v2, 0x6

    const/4 v3, 0x0

    aget v3, v0, v3

    aput v3, v1, v2

    .line 246
    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/4 v2, 0x7

    const/4 v3, 0x1

    aget v3, v0, v3

    aput v3, v1, v2

    .line 248
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getRight()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->getBottom()F

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 249
    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/16 v2, 0x9

    const/4 v3, 0x0

    aget v3, v0, v3

    aput v3, v1, v2

    .line 250
    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mVertices:[F

    const/16 v2, 0xa

    const/4 v3, 0x1

    aget v3, v0, v3

    aput v3, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    monitor-exit p0

    return-void

    .line 235
    .end local v0           #glCoordinate:[F
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
