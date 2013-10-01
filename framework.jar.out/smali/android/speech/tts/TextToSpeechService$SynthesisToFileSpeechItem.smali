.class Landroid/speech/tts/TextToSpeechService$SynthesisToFileSpeechItem;
.super Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SynthesisToFileSpeechItem"
.end annotation


# instance fields
.field private final mFile:Ljava/io/File;

.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter "callerIdentity"
    .parameter "callerUid"
    .parameter "callerPid"
    .parameter "params"
    .parameter "text"
    .parameter "file"

    .prologue
    .line 638
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisToFileSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 639
    invoke-direct/range {p0 .. p6}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;)V

    .line 640
    iput-object p7, p0, Landroid/speech/tts/TextToSpeechService$SynthesisToFileSpeechItem;->mFile:Ljava/io/File;

    .line 641
    return-void
.end method


# virtual methods
.method protected createSynthesisCallback()Landroid/speech/tts/AbstractSynthesisCallback;
    .locals 2

    .prologue
    .line 645
    new-instance v0, Landroid/speech/tts/FileSynthesisCallback;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisToFileSpeechItem;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Landroid/speech/tts/FileSynthesisCallback;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method protected playImpl()I
    .locals 1

    .prologue
    .line 650
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisToFileSpeechItem;->dispatchOnStart()V

    .line 651
    invoke-super {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->playImpl()I

    move-result v0

    .line 652
    .local v0, status:I
    if-nez v0, :cond_0

    .line 653
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisToFileSpeechItem;->dispatchOnDone()V

    .line 657
    :goto_0
    return v0

    .line 655
    :cond_0
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisToFileSpeechItem;->dispatchOnError()V

    goto :goto_0
.end method
