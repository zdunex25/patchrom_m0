.class public interface abstract Lcom/android/camera/MonitoredActivity$LifeCycleListener;
.super Ljava/lang/Object;
.source "MonitoredActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/MonitoredActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LifeCycleListener"
.end annotation


# virtual methods
.method public abstract onActivityCreated(Lcom/android/camera/MonitoredActivity;)V
.end method

.method public abstract onActivityDestroyed(Lcom/android/camera/MonitoredActivity;)V
.end method

.method public abstract onActivityStarted(Lcom/android/camera/MonitoredActivity;)V
.end method

.method public abstract onActivityStopped(Lcom/android/camera/MonitoredActivity;)V
.end method
