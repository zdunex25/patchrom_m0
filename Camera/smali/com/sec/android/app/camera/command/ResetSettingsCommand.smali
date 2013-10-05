.class public Lcom/android/camera/command/ResetSettingsCommand;
.super Lcom/android/camera/command/MenuCommand;
.source "ResetSettingsCommand.java"


# instance fields
.field private mActivityContext:Lcom/android/camera/AbstractCameraActivity;


# direct methods
.method public constructor <init>(Lcom/android/camera/AbstractCameraActivity;)V
    .locals 0
    .parameter "activityContext"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/camera/command/MenuCommand;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/camera/command/ResetSettingsCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    .line 28
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/command/ResetSettingsCommand;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->showResetPopup()V

    .line 33
    return-void
.end method
