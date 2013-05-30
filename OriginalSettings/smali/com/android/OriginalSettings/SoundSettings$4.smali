.class Lcom/android/OriginalSettings/SoundSettings$4;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/SoundSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/SoundSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/OriginalSettings/SoundSettings$4;->this$0:Lcom/android/OriginalSettings/SoundSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 399
    const-string v0, "SoundSettings"

    const-string v1, "SoundSettings unloadSoundEffect() call"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings$4;->this$0:Lcom/android/OriginalSettings/SoundSettings;

    #getter for: Lcom/android/OriginalSettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/OriginalSettings/SoundSettings;->access$600(Lcom/android/OriginalSettings/SoundSettings;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->unloadSoundEffects()V

    .line 401
    return-void
.end method
