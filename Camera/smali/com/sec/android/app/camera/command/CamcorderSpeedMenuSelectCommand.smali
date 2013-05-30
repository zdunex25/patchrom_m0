.class public Lcom/sec/android/app/camera/command/CamcorderSpeedMenuSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "CamcorderSpeedMenuSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CamcorderSpeedMenuSelectCommand"


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mSpeed:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V
    .locals 1
    .parameter "context"
    .parameter "commandid"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/sec/android/app/camera/command/CamcorderSpeedMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 36
    packed-switch p2, :pswitch_data_0

    .line 62
    :goto_0
    return-void

    .line 38
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/command/CamcorderSpeedMenuSelectCommand;->mSpeed:I

    goto :goto_0

    .line 41
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/command/CamcorderSpeedMenuSelectCommand;->mSpeed:I

    goto :goto_0

    .line 44
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/command/CamcorderSpeedMenuSelectCommand;->mSpeed:I

    goto :goto_0

    .line 47
    :pswitch_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/command/CamcorderSpeedMenuSelectCommand;->mSpeed:I

    goto :goto_0

    .line 50
    :pswitch_4
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/app/camera/command/CamcorderSpeedMenuSelectCommand;->mSpeed:I

    goto :goto_0

    .line 53
    :pswitch_5
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/app/camera/command/CamcorderSpeedMenuSelectCommand;->mSpeed:I

    goto :goto_0

    .line 56
    :pswitch_6
    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/android/app/camera/command/CamcorderSpeedMenuSelectCommand;->mSpeed:I

    goto :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x960
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/camera/command/CamcorderSpeedMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    const-string v0, "CamcorderSpeedMenuSelectCommand"

    const-string v1, "return isStartPreview.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/command/CamcorderSpeedMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIsLaunchGallery()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    const-string v0, "CamcorderSpeedMenuSelectCommand"

    const-string v1, "return getIsLaunchGallery.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/command/CamcorderSpeedMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/command/CamcorderSpeedMenuSelectCommand;->mSpeed:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onCamcorderSpeedMenuSelect(I)V

    .line 77
    iget v0, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mZOrder:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/command/CamcorderSpeedMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0
.end method
