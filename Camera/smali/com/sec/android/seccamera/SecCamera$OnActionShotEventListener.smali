.class public interface abstract Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
.super Ljava/lang/Object;
.source "SecCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/seccamera/SecCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnActionShotEventListener"
.end annotation


# virtual methods
.method public abstract onActionShotAcquisitionProgress(I)V
.end method

.method public abstract onActionShotCaptured()V
.end method

.method public abstract onActionShotCreatingResultCompleted(Z)V
.end method

.method public abstract onActionShotCreatingResultProgress(I)V
.end method

.method public abstract onActionShotCreatingResultStarted()V
.end method

.method public abstract onActionShotRectChanged([B)V
.end method
