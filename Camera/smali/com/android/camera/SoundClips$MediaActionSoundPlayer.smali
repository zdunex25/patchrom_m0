.class Lcom/android/camera/SoundClips$MediaActionSoundPlayer;
.super Ljava/lang/Object;
.source "SoundClips.java"

# interfaces
.implements Lcom/android/camera/SoundClips$Player;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SoundClips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaActionSoundPlayer"
.end annotation


# instance fields
.field private mSound:Landroid/media/MediaActionSound;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/media/MediaActionSound;

    invoke-direct {v0}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v0, p0, Lcom/android/camera/SoundClips$MediaActionSoundPlayer;->mSound:Landroid/media/MediaActionSound;

    .line 69
    iget-object v0, p0, Lcom/android/camera/SoundClips$MediaActionSoundPlayer;->mSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->load(I)V

    .line 70
    iget-object v0, p0, Lcom/android/camera/SoundClips$MediaActionSoundPlayer;->mSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->load(I)V

    .line 71
    iget-object v0, p0, Lcom/android/camera/SoundClips$MediaActionSoundPlayer;->mSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->load(I)V

    .line 72
    return-void
.end method


# virtual methods
.method public declared-synchronized play(I)V
    .locals 3
    .parameter "action"

    .prologue
    .line 76
    monitor-enter p0

    packed-switch p1, :pswitch_data_0

    .line 87
    :try_start_0
    const-string v0, "MediaActionSoundPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :goto_0
    monitor-exit p0

    return-void

    .line 78
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/SoundClips$MediaActionSoundPlayer;->mSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 81
    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/SoundClips$MediaActionSoundPlayer;->mSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V

    goto :goto_0

    .line 84
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/SoundClips$MediaActionSoundPlayer;->mSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public release()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/SoundClips$MediaActionSoundPlayer;->mSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/camera/SoundClips$MediaActionSoundPlayer;->mSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/SoundClips$MediaActionSoundPlayer;->mSound:Landroid/media/MediaActionSound;

    .line 65
    :cond_0
    return-void
.end method
