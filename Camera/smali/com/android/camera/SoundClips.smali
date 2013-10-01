.class public Lcom/android/camera/SoundClips;
.super Ljava/lang/Object;
.source "SoundClips.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/SoundClips$SoundPoolPlayer;,
        Lcom/android/camera/SoundClips$MediaActionSoundPlayer;,
        Lcom/android/camera/SoundClips$Player;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    return-void
.end method

.method public static getPlayer(Landroid/content/Context;)Lcom/android/camera/SoundClips$Player;
    .locals 1
    .parameter "context"

    .prologue
    .line 43
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_MEDIA_ACTION_SOUND:Z

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Lcom/android/camera/SoundClips$MediaActionSoundPlayer;

    invoke-direct {v0}, Lcom/android/camera/SoundClips$MediaActionSoundPlayer;-><init>()V

    .line 46
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/camera/SoundClips$SoundPoolPlayer;

    invoke-direct {v0, p0}, Lcom/android/camera/SoundClips$SoundPoolPlayer;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method
