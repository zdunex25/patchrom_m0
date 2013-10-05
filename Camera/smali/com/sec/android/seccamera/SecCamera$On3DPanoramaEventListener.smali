.class public interface abstract Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;
.super Ljava/lang/Object;
.source "SecCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/seccamera/SecCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "On3DPanoramaEventListener"
.end annotation


# virtual methods
.method public abstract on3DPanoramaCaptured()V
.end method

.method public abstract on3DPanoramaCapturedMaxFrames()V
.end method

.method public abstract on3DPanoramaCapturedNew()V
.end method

.method public abstract on3DPanoramaDirectionChanged(I)V
.end method

.method public abstract on3DPanoramaError(I)V
.end method

.method public abstract on3DPanoramaLivePreviewData([B)V
.end method

.method public abstract on3DPanoramaLowResolutionData([B)V
.end method

.method public abstract on3DPanoramaMpoData([B)V
.end method

.method public abstract on3DPanoramaProgressStitching(I)V
.end method

.method public abstract on3DPanoramaRectChanged(II)V
.end method
