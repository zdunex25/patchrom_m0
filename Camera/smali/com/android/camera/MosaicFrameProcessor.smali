.class public Lcom/android/camera/MosaicFrameProcessor;
.super Ljava/lang/Object;
.source "MosaicFrameProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/MosaicFrameProcessor$ProgressListener;
    }
.end annotation


# static fields
.field private static sMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;


# instance fields
.field private mCurrProcessFrameIdx:I

.field private mDeltaX:[F

.field private mDeltaY:[F

.field private mFillIn:I

.field private mFirstRun:Z

.field private mIsMosaicMemoryAllocated:Z

.field private mLastProcessFrameIdx:I

.field private mMosaicer:Lcom/android/camera/Mosaic;

.field private mOldestIdx:I

.field private mPanningRateX:F

.field private mPanningRateY:F

.field private mPreviewBufferSize:I

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mProgressListener:Lcom/android/camera/MosaicFrameProcessor$ProgressListener;

.field private mTotalFrameCount:I

.field private mTotalTranslationX:F

.field private mTotalTranslationY:F

.field private mTranslationLastX:F

.field private mTranslationLastY:F


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v1, p0, Lcom/android/camera/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z

    .line 40
    iput v1, p0, Lcom/android/camera/MosaicFrameProcessor;->mFillIn:I

    .line 41
    iput v1, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalFrameCount:I

    .line 42
    iput v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mLastProcessFrameIdx:I

    .line 43
    iput v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mCurrProcessFrameIdx:I

    .line 51
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mDeltaX:[F

    .line 52
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mDeltaY:[F

    .line 53
    iput v1, p0, Lcom/android/camera/MosaicFrameProcessor;->mOldestIdx:I

    .line 54
    iput v2, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalTranslationX:F

    .line 55
    iput v2, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalTranslationY:F

    .line 78
    new-instance v0, Lcom/android/camera/Mosaic;

    invoke-direct {v0}, Lcom/android/camera/Mosaic;-><init>()V

    iput-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mMosaicer:Lcom/android/camera/Mosaic;

    .line 79
    return-void
.end method

.method public static getInstance()Lcom/android/camera/MosaicFrameProcessor;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/camera/MosaicFrameProcessor;->sMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/android/camera/MosaicFrameProcessor;

    invoke-direct {v0}, Lcom/android/camera/MosaicFrameProcessor;-><init>()V

    sput-object v0, Lcom/android/camera/MosaicFrameProcessor;->sMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    .line 74
    :cond_0
    sget-object v0, Lcom/android/camera/MosaicFrameProcessor;->sMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    return-object v0
.end method

.method private setupMosaicer(III)V
    .locals 4
    .parameter "previewWidth"
    .parameter "previewHeight"
    .parameter "bufSize"

    .prologue
    const/16 v3, 0x2c

    .line 117
    const-string v0, "MosaicFrameProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupMosaicer w, h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-boolean v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "MosaicFrameProcessor in use!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z

    .line 121
    iget-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mMosaicer:Lcom/android/camera/Mosaic;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/Mosaic;->allocateMosaicMemory(II)V

    .line 122
    return-void
.end method


# virtual methods
.method public calculateTranslationRate()V
    .locals 8

    .prologue
    const/high16 v7, 0x4040

    .line 196
    iget-object v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mMosaicer:Lcom/android/camera/Mosaic;

    invoke-virtual {v5}, Lcom/android/camera/Mosaic;->setSourceImageFromGPU()[F

    move-result-object v0

    .line 197
    .local v0, frameData:[F
    const/16 v5, 0xa

    aget v5, v0, v5

    float-to-int v2, v5

    .line 198
    .local v2, ret_code:I
    const/16 v5, 0x9

    aget v5, v0, v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalFrameCount:I

    .line 199
    const/4 v5, 0x2

    aget v3, v0, v5

    .line 200
    .local v3, translationCurrX:F
    const/4 v5, 0x5

    aget v4, v0, v5

    .line 202
    .local v4, translationCurrY:F
    iget-boolean v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mFirstRun:Z

    if-eqz v5, :cond_0

    .line 204
    iput v3, p0, Lcom/android/camera/MosaicFrameProcessor;->mTranslationLastX:F

    .line 205
    iput v4, p0, Lcom/android/camera/MosaicFrameProcessor;->mTranslationLastY:F

    .line 206
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mFirstRun:Z

    .line 235
    :goto_0
    return-void

    .line 212
    :cond_0
    iget v1, p0, Lcom/android/camera/MosaicFrameProcessor;->mOldestIdx:I

    .line 213
    .local v1, idx:I
    iget v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalTranslationX:F

    iget-object v6, p0, Lcom/android/camera/MosaicFrameProcessor;->mDeltaX:[F

    aget v6, v6, v1

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalTranslationX:F

    .line 214
    iget v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalTranslationY:F

    iget-object v6, p0, Lcom/android/camera/MosaicFrameProcessor;->mDeltaY:[F

    aget v6, v6, v1

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalTranslationY:F

    .line 215
    iget-object v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mDeltaX:[F

    iget v6, p0, Lcom/android/camera/MosaicFrameProcessor;->mTranslationLastX:F

    sub-float v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    aput v6, v5, v1

    .line 216
    iget-object v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mDeltaY:[F

    iget v6, p0, Lcom/android/camera/MosaicFrameProcessor;->mTranslationLastY:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    aput v6, v5, v1

    .line 217
    iget v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalTranslationX:F

    iget-object v6, p0, Lcom/android/camera/MosaicFrameProcessor;->mDeltaX:[F

    aget v6, v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalTranslationX:F

    .line 218
    iget v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalTranslationY:F

    iget-object v6, p0, Lcom/android/camera/MosaicFrameProcessor;->mDeltaY:[F

    aget v6, v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalTranslationY:F

    .line 227
    iget v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalTranslationX:F

    iget v6, p0, Lcom/android/camera/MosaicFrameProcessor;->mPreviewWidth:I

    div-int/lit8 v6, v6, 0x4

    int-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v5, v7

    iput v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mPanningRateX:F

    .line 229
    iget v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalTranslationY:F

    iget v6, p0, Lcom/android/camera/MosaicFrameProcessor;->mPreviewHeight:I

    div-int/lit8 v6, v6, 0x4

    int-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v5, v7

    iput v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mPanningRateY:F

    .line 232
    iput v3, p0, Lcom/android/camera/MosaicFrameProcessor;->mTranslationLastX:F

    .line 233
    iput v4, p0, Lcom/android/camera/MosaicFrameProcessor;->mTranslationLastY:F

    .line 234
    iget v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mOldestIdx:I

    add-int/lit8 v5, v5, 0x1

    rem-int/lit8 v5, v5, 0x3

    iput v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mOldestIdx:I

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mMosaicer:Lcom/android/camera/Mosaic;

    invoke-virtual {v0}, Lcom/android/camera/Mosaic;->freeMosaicMemory()V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z

    .line 103
    :cond_0
    monitor-enter p0

    .line 104
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 105
    monitor-exit p0

    .line 106
    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createMosaic(Z)I
    .locals 1
    .parameter "highRes"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mMosaicer:Lcom/android/camera/Mosaic;

    invoke-virtual {v0, p1}, Lcom/android/camera/Mosaic;->createMosaic(Z)I

    move-result v0

    return v0
.end method

.method public getFinalMosaicNV21()[B
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mMosaicer:Lcom/android/camera/Mosaic;

    invoke-virtual {v0}, Lcom/android/camera/Mosaic;->getFinalMosaicNV21()[B

    move-result-object v0

    return-object v0
.end method

.method public initialize(III)V
    .locals 3
    .parameter "previewWidth"
    .parameter "previewHeight"
    .parameter "bufSize"

    .prologue
    .line 90
    iput p1, p0, Lcom/android/camera/MosaicFrameProcessor;->mPreviewWidth:I

    .line 91
    iput p2, p0, Lcom/android/camera/MosaicFrameProcessor;->mPreviewHeight:I

    .line 92
    iput p3, p0, Lcom/android/camera/MosaicFrameProcessor;->mPreviewBufferSize:I

    .line 93
    iget v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mPreviewWidth:I

    iget v1, p0, Lcom/android/camera/MosaicFrameProcessor;->mPreviewHeight:I

    iget v2, p0, Lcom/android/camera/MosaicFrameProcessor;->mPreviewBufferSize:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/MosaicFrameProcessor;->setupMosaicer(III)V

    .line 94
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/MosaicFrameProcessor;->setStripType(I)V

    .line 95
    invoke-virtual {p0}, Lcom/android/camera/MosaicFrameProcessor;->reset()V

    .line 96
    return-void
.end method

.method public isMosaicMemoryAllocated()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z

    return v0
.end method

.method public processFrame()V
    .locals 7

    .prologue
    const/high16 v6, 0x4080

    .line 157
    iget-boolean v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z

    if-nez v0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mFillIn:I

    iput v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mCurrProcessFrameIdx:I

    .line 165
    iget v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mFillIn:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mFillIn:I

    .line 169
    iget v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mCurrProcessFrameIdx:I

    iget v1, p0, Lcom/android/camera/MosaicFrameProcessor;->mLastProcessFrameIdx:I

    if-eq v0, v1, :cond_0

    .line 170
    iget v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mCurrProcessFrameIdx:I

    iput v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mLastProcessFrameIdx:I

    .line 174
    iget v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalFrameCount:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    .line 177
    invoke-virtual {p0}, Lcom/android/camera/MosaicFrameProcessor;->calculateTranslationRate()V

    .line 180
    iget-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mProgressListener:Lcom/android/camera/MosaicFrameProcessor$ProgressListener;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mProgressListener:Lcom/android/camera/MosaicFrameProcessor$ProgressListener;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/camera/MosaicFrameProcessor;->mPanningRateX:F

    iget v3, p0, Lcom/android/camera/MosaicFrameProcessor;->mPanningRateY:F

    iget v4, p0, Lcom/android/camera/MosaicFrameProcessor;->mTranslationLastX:F

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mPreviewWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTranslationLastY:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/android/camera/MosaicFrameProcessor;->mPreviewHeight:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/MosaicFrameProcessor$ProgressListener;->onProgress(ZFFFF)V

    goto :goto_0

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mProgressListener:Lcom/android/camera/MosaicFrameProcessor$ProgressListener;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mProgressListener:Lcom/android/camera/MosaicFrameProcessor$ProgressListener;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/camera/MosaicFrameProcessor;->mPanningRateX:F

    iget v3, p0, Lcom/android/camera/MosaicFrameProcessor;->mPanningRateY:F

    iget v4, p0, Lcom/android/camera/MosaicFrameProcessor;->mTranslationLastX:F

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mPreviewWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTranslationLastY:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/android/camera/MosaicFrameProcessor;->mPreviewHeight:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/MosaicFrameProcessor$ProgressListener;->onProgress(ZFFFF)V

    goto :goto_0
.end method

.method public reportProgress(ZZ)I
    .locals 1
    .parameter "hires"
    .parameter "cancel"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mMosaicer:Lcom/android/camera/Mosaic;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/Mosaic;->reportProgress(ZZ)I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 127
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/MosaicFrameProcessor;->mFirstRun:Z

    .line 128
    iput v4, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalFrameCount:I

    .line 129
    iput v4, p0, Lcom/android/camera/MosaicFrameProcessor;->mFillIn:I

    .line 130
    iput v2, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalTranslationX:F

    .line 131
    iput v2, p0, Lcom/android/camera/MosaicFrameProcessor;->mTranslationLastX:F

    .line 132
    iput v2, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalTranslationY:F

    .line 133
    iput v2, p0, Lcom/android/camera/MosaicFrameProcessor;->mTranslationLastY:F

    .line 134
    iput v2, p0, Lcom/android/camera/MosaicFrameProcessor;->mPanningRateX:F

    .line 135
    iput v2, p0, Lcom/android/camera/MosaicFrameProcessor;->mPanningRateY:F

    .line 136
    iput v3, p0, Lcom/android/camera/MosaicFrameProcessor;->mLastProcessFrameIdx:I

    .line 137
    iput v3, p0, Lcom/android/camera/MosaicFrameProcessor;->mCurrProcessFrameIdx:I

    .line 138
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/android/camera/MosaicFrameProcessor;->mDeltaX:[F

    aput v2, v1, v0

    .line 140
    iget-object v1, p0, Lcom/android/camera/MosaicFrameProcessor;->mDeltaY:[F

    aput v2, v1, v0

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/android/camera/MosaicFrameProcessor;->mMosaicer:Lcom/android/camera/Mosaic;

    invoke-virtual {v1}, Lcom/android/camera/Mosaic;->reset()V

    .line 143
    return-void
.end method

.method public setProgressListener(Lcom/android/camera/MosaicFrameProcessor$ProgressListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/camera/MosaicFrameProcessor;->mProgressListener:Lcom/android/camera/MosaicFrameProcessor$ProgressListener;

    .line 83
    return-void
.end method

.method public setStripType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mMosaicer:Lcom/android/camera/Mosaic;

    invoke-virtual {v0, p1}, Lcom/android/camera/Mosaic;->setStripType(I)V

    .line 114
    return-void
.end method
