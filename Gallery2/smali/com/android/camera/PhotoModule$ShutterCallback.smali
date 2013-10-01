.class final Lcom/android/camera/PhotoModule$ShutterCallback;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShutterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 904
    iput-object p1, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 904
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule$ShutterCallback;-><init>(Lcom/android/camera/PhotoModule;)V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 5

    .prologue
    .line 908
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/android/camera/PhotoModule;->mShutterCallbackTime:J
    invoke-static {v0, v1, v2}, Lcom/android/camera/PhotoModule;->access$3602(Lcom/android/camera/PhotoModule;J)J

    .line 909
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v1, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mShutterCallbackTime:J
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$3600(Lcom/android/camera/PhotoModule;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v3, v3, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/camera/PhotoModule;->mShutterLag:J

    .line 910
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShutterLag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v2, v2, Lcom/android/camera/PhotoModule;->mShutterLag:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    return-void
.end method
