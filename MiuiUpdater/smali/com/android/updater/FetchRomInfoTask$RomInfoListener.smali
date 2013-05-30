.class public interface abstract Lcom/android/updater/FetchRomInfoTask$RomInfoListener;
.super Ljava/lang/Object;
.source "FetchRomInfoTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/FetchRomInfoTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RomInfoListener"
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onLoaded(Lcom/android/updater/RomInfo;)V
.end method

.method public abstract onStartLoading()V
.end method
