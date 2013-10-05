.class public interface abstract Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;
.super Ljava/lang/Object;
.source "SecCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/seccamera/SecCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnHDRShotEventListener"
.end annotation


# virtual methods
.method public abstract onHDRShotAllProgressCompleted(Z)V
.end method

.method public abstract onHDRShotResultCompleted(Z)V
.end method

.method public abstract onHDRShotResultProgress(I)V
.end method

.method public abstract onHDRShotResultStarted()V
.end method

.method public abstract onHDRShotYUVFileString(Ljava/lang/String;)V
.end method
