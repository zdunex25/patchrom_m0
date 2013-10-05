.class public interface abstract Lcom/sec/android/seccamera/SecCamera$OnSecImageEffectListner;
.super Ljava/lang/Object;
.source "SecCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/seccamera/SecCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSecImageEffectListner"
.end annotation


# virtual methods
.method public abstract onEffectShotCreatingCompleted(Z)V
.end method

.method public abstract onEffectShotCreatingProgress(I)V
.end method

.method public abstract onEffectShotCreatingStarted()V
.end method
