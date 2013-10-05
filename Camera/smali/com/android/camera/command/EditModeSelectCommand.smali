.class public Lcom/android/camera/command/EditModeSelectCommand;
.super Lcom/android/camera/command/MenuCommand;
.source "EditModeSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EditModeSelectCommand"


# instance fields
.field private mActivityContext:Lcom/android/camera/AbstractCameraActivity;


# direct methods
.method public constructor <init>(Lcom/android/camera/AbstractCameraActivity;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/camera/command/MenuCommand;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/camera/command/EditModeSelectCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    .line 34
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/command/EditModeSelectCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    instance-of v0, v0, Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/camera/command/EditModeSelectCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    const-string v0, "EditModeSelectCommand"

    const-string v1, "return isCapturing.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/android/camera/command/EditModeSelectCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camcorder;

    invoke-virtual {v0}, Lcom/android/camera/Camcorder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    const-string v0, "EditModeSelectCommand"

    const-string v1, "return isRecording.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/android/camera/command/EditModeSelectCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->isPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 51
    const-string v0, "EditModeSelectCommand"

    const-string v1, "return isStartPreview.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/android/camera/command/EditModeSelectCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->getIsLaunchGallery()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56
    const-string v0, "EditModeSelectCommand"

    const-string v1, "return getIsLaunchGallery.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 60
    :cond_3
    iget-object v0, p0, Lcom/android/camera/command/EditModeSelectCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->onEditModeSelectCommand()V

    goto :goto_0
.end method
