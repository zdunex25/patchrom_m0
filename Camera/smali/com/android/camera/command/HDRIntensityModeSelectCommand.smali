.class public Lcom/android/camera/command/HDRIntensityModeSelectCommand;
.super Lcom/android/camera/command/MenuCommand;
.source "HDRIntensityModeSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HDRIntensityModeSelectCommand"


# instance fields
.field private mActivityContext:Lcom/android/camera/AbstractCameraActivity;

.field private mHDRIntensityMode:I


# direct methods
.method public constructor <init>(Lcom/android/camera/AbstractCameraActivity;I)V
    .locals 1
    .parameter "context"
    .parameter "commandid"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/camera/command/MenuCommand;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/camera/command/HDRIntensityModeSelectCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    .line 38
    packed-switch p2, :pswitch_data_0

    .line 48
    :goto_0
    return-void

    .line 40
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/command/HDRIntensityModeSelectCommand;->mHDRIntensityMode:I

    goto :goto_0

    .line 43
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/command/HDRIntensityModeSelectCommand;->mHDRIntensityMode:I

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x13ec
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/command/HDRIntensityModeSelectCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->isPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    const-string v0, "HDRIntensityModeSelectCommand"

    const-string v1, "return isStartPreview.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/android/camera/command/HDRIntensityModeSelectCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->getIsLaunchGallery()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    const-string v0, "HDRIntensityModeSelectCommand"

    const-string v1, "return getIsLaunchGallery.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/android/camera/command/HDRIntensityModeSelectCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    instance-of v0, v0, Lcom/android/camera/Camera;

    if-eqz v0, :cond_3

    .line 63
    iget-object v0, p0, Lcom/android/camera/command/HDRIntensityModeSelectCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    const-string v0, "HDRIntensityModeSelectCommand"

    const-string v1, "return isCapturing.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 69
    :cond_3
    iget-object v0, p0, Lcom/android/camera/command/HDRIntensityModeSelectCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/android/camera/command/HDRIntensityModeSelectCommand;->mHDRIntensityMode:I

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->onHDRIntensityModeSelectCommand(I)V

    .line 71
    iget v0, p0, Lcom/android/camera/command/MenuCommand;->mZOrder:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/camera/command/HDRIntensityModeSelectCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0
.end method
