.class abstract Lcom/sec/android/app/fm/MainActivity$Callback;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Callback"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public earPhoneConnected()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public earPhoneDisconnected()V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method public notifyUI()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public onChannelFound(J)V
    .locals 0
    .parameter "frequency"

    .prologue
    .line 151
    return-void
.end method

.method public onOff(I)V
    .locals 0
    .parameter "reasonCode"

    .prologue
    .line 153
    return-void
.end method

.method public onOn()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method public onScanFinished([J)V
    .locals 0
    .parameter "frequency"

    .prologue
    .line 157
    return-void
.end method

.method public onScanStarted()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public onScanStopped([J)V
    .locals 0
    .parameter "frequency"

    .prologue
    .line 161
    return-void
.end method

.method public onTune(J)V
    .locals 0
    .parameter "frequency"

    .prologue
    .line 163
    return-void
.end method
