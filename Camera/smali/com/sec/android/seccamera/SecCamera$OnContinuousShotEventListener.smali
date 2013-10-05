.class public interface abstract Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;
.super Ljava/lang/Object;
.source "SecCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/seccamera/SecCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnContinuousShotEventListener"
.end annotation


# virtual methods
.method public abstract onContinuousShotCapturingProgressed(II)V
.end method

.method public abstract onContinuousShotCapturingStopped(I)V
.end method

.method public abstract onContinuousShotSavingCompleted()V
.end method
