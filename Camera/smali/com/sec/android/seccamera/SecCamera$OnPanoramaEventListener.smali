.class public interface abstract Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
.super Ljava/lang/Object;
.source "SecCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/seccamera/SecCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPanoramaEventListener"
.end annotation


# virtual methods
.method public abstract onPanoramaCaptured()V
.end method

.method public abstract onPanoramaCapturedMaxFrames()V
.end method

.method public abstract onPanoramaCapturedNew()V
.end method

.method public abstract onPanoramaDirectionChanged(I)V
.end method

.method public abstract onPanoramaError(I)V
.end method

.method public abstract onPanoramaLivePreviewData([B)V
.end method

.method public abstract onPanoramaLowResolutionData([B)V
.end method

.method public abstract onPanoramaMoveSlowly()V
.end method

.method public abstract onPanoramaProgressStitching(I)V
.end method

.method public abstract onPanoramaRectChanged(II)V
.end method
