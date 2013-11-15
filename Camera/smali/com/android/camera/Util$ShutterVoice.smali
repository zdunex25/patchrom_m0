.class Lcom/android/camera/Util$ShutterVoice;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/speech/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShutterVoice"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 947
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 1

    .prologue
    .line 960
    invoke-static {}, Lcom/android/camera/Util;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 962
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/Util;->access$002(Z)Z

    .line 963
    sget-object v0, Lcom/android/camera/Util;->mNoSpeechCountDown:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 965
    :cond_0
    return-void
.end method

.method public onBufferReceived([B)V
    .locals 0
    .parameter "buffer"

    .prologue
    .line 968
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 0

    .prologue
    .line 971
    return-void
.end method

.method public onError(I)V
    .locals 3
    .parameter "error"

    .prologue
    .line 977
    const-string v0, "Util"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    invoke-static {}, Lcom/android/camera/Util;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 980
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/Util;->access$002(Z)Z

    .line 981
    sget-object v0, Lcom/android/camera/Util;->mNoSpeechCountDown:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 983
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/Util;->enableSpeechRecognition(ZLcom/android/camera/PhotoModule;)V

    .line 984
    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 0
    .parameter "eventType"
    .parameter "params"

    .prologue
    .line 1020
    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 9
    .parameter "partialResults"

    .prologue
    const/4 v8, 0x0

    .line 997
    invoke-static {}, Lcom/android/camera/Util;->access$300()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1017
    :cond_0
    return-void

    .line 998
    :cond_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 999
    .local v5, str:Ljava/lang/String;
    const-string v6, "results_recognition"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1000
    .local v0, data:Ljava/util/ArrayList;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 1003
    const/4 v1, 0x0

    .local v1, f:I
    :goto_1
    invoke-static {}, Lcom/android/camera/Util;->access$400()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-ge v1, v6, :cond_4

    .line 1004
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1005
    .local v4, resultWords:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, g:I
    :goto_2
    array-length v6, v4

    if-ge v2, v6, :cond_3

    .line 1006
    invoke-static {}, Lcom/android/camera/Util;->access$400()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v1

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1007
    const-string v6, "Util"

    const-string v7, "matched to hotword! FIRE SHUTTER!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    invoke-static {}, Lcom/android/camera/Util;->access$500()Lcom/android/camera/PhotoModule;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/camera/PhotoModule;->onShutterButtonFocus(Z)V

    .line 1009
    invoke-static {}, Lcom/android/camera/Util;->access$500()Lcom/android/camera/PhotoModule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/PhotoModule;->onShutterButtonClick()V

    .line 1010
    invoke-static {v8}, Lcom/android/camera/Util;->access$302(Z)Z

    .line 1011
    const/4 v6, 0x0

    invoke-static {v8, v6}, Lcom/android/camera/Util;->enableSpeechRecognition(ZLcom/android/camera/PhotoModule;)V

    .line 1005
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1003
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1015
    .end local v2           #g:I
    .end local v4           #resultWords:[Ljava/lang/String;
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1000
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 3
    .parameter "params"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 951
    invoke-static {v2}, Lcom/android/camera/Util;->access$002(Z)Z

    .line 952
    sget-object v0, Lcom/android/camera/Util;->mNoSpeechCountDown:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 953
    invoke-static {}, Lcom/android/camera/Util;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 954
    invoke-static {}, Lcom/android/camera/Util;->access$200()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 955
    invoke-static {v1}, Lcom/android/camera/Util;->access$102(Z)Z

    .line 957
    :cond_0
    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 2
    .parameter "results"

    .prologue
    .line 988
    invoke-virtual {p0, p1}, Lcom/android/camera/Util$ShutterVoice;->onPartialResults(Landroid/os/Bundle;)V

    .line 990
    invoke-static {}, Lcom/android/camera/Util;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 991
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/Util;->enableSpeechRecognition(ZLcom/android/camera/PhotoModule;)V

    .line 993
    :cond_0
    return-void
.end method

.method public onRmsChanged(F)V
    .locals 0
    .parameter "rms"

    .prologue
    .line 974
    return-void
.end method
