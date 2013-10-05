.class public interface abstract Lcom/sec/android/seccamera/SecCamera$OnDramaShotEventListener;
.super Ljava/lang/Object;
.source "SecCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/seccamera/SecCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDramaShotEventListener"
.end annotation


# virtual methods
.method public abstract onDramaShotCapturingProgress(II)V
.end method

.method public abstract onDramaShotError(I)V
.end method

.method public abstract onDramaShotInputString([B)V
.end method

.method public abstract onDramaShotResultString([B)V
.end method

.method public abstract onDramaShotSavingProgress(I)V
.end method
