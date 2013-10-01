.class Lcom/android/camera/SoundClips$SoundPoolPlayer;
.super Ljava/lang/Object;
.source "SoundClips.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;
.implements Lcom/android/camera/SoundClips$Player;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SoundClips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundPoolPlayer"
.end annotation


# static fields
.field private static final SOUND_RES:[I


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mSoundIDReady:[Z

.field private mSoundIDToPlay:I

.field private final mSoundIDs:[I

.field private mSoundPool:Landroid/media/SoundPool;

.field private final mSoundRes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->SOUND_RES:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x3t 0x0t 0x8t 0x7ft
        0x6t 0x0t 0x8t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundRes:[I

    .line 122
    iput-object p1, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mContext:Landroid/content/Context;

    .line 123
    const-class v0, Landroid/media/AudioManager;

    const-string v2, "STREAM_SYSTEM_ENFORCED"

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v2, v3, v4}, Lcom/android/gallery3d/common/ApiHelper;->getIntFieldIfExists(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;I)I

    move-result v0

    .line 126
    iput v1, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundIDToPlay:I

    .line 128
    new-instance v2, Landroid/media/SoundPool;

    invoke-direct {v2, v6, v0, v1}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v2, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    .line 129
    iget-object v0, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 131
    sget-object v0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->SOUND_RES:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    .line 132
    sget-object v0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->SOUND_RES:[I

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundIDReady:[Z

    move v0, v1

    .line 133
    :goto_0
    sget-object v2, Lcom/android/camera/SoundClips$SoundPoolPlayer;->SOUND_RES:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 134
    iget-object v2, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    iget-object v3, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/camera/SoundClips$SoundPoolPlayer;->SOUND_RES:[I

    aget v5, v5, v0

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v2, v0

    .line 135
    iget-object v2, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundIDReady:[Z

    aput-boolean v1, v2, v0

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_0
    return-void

    .line 110
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 8
    .parameter "pool"
    .parameter "soundID"
    .parameter "status"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v4, 0x0

    .line 169
    if-eqz p3, :cond_2

    .line 170
    const-string v0, "SoundPoolPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loading sound tracks failed (status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    array-length v0, v0

    if-ge v7, v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    aget v0, v0, v7

    if-ne v0, p2, :cond_1

    .line 173
    iget-object v0, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    aput v4, v0, v7

    .line 191
    :cond_0
    :goto_1
    return-void

    .line 171
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 180
    .end local v7           #i:I
    :cond_2
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_2
    iget-object v0, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    array-length v0, v0

    if-ge v7, v0, :cond_3

    .line 181
    iget-object v0, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    aget v0, v0, v7

    if-ne v0, p2, :cond_4

    .line 182
    iget-object v0, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundIDReady:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v7

    .line 187
    :cond_3
    iget v0, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundIDToPlay:I

    if-ne p2, v0, :cond_0

    .line 188
    iput v4, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundIDToPlay:I

    .line 189
    iget-object v0, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    move v1, p2

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_1

    .line 180
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method public declared-synchronized play(I)V
    .locals 8
    .parameter "action"

    .prologue
    .line 149
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundRes:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 150
    :cond_0
    const-string v0, "SoundPoolPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource ID not found for action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in play()."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :goto_0
    monitor-exit p0

    return-void

    .line 154
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundRes:[I

    aget v7, v0, p1

    .line 155
    .local v7, index:I
    iget-object v0, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    aget v0, v0, v7

    if-nez v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    iget-object v1, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/camera/SoundClips$SoundPoolPlayer;->SOUND_RES:[I

    aget v3, v3, v7

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v7

    .line 158
    iget-object v0, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    aget v0, v0, v7

    iput v0, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundIDToPlay:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 149
    .end local v7           #index:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 159
    .restart local v7       #index:I
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundIDReady:[Z

    aget-boolean v0, v0, v7

    if-nez v0, :cond_3

    .line 161
    iget-object v0, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    aget v0, v0, v7

    iput v0, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundIDToPlay:I

    goto :goto_0

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    aget v1, v1, v7

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized release()V
    .locals 1

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :cond_0
    monitor-exit p0

    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
