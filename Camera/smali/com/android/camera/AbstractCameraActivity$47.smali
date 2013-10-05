.class Lcom/android/camera/AbstractCameraActivity$47;
.super Ljava/lang/Object;
.source "AbstractCameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/AbstractCameraActivity;->showChangeStoragetDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/AbstractCameraActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/AbstractCameraActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2520
    iput-object p1, p0, Lcom/android/camera/AbstractCameraActivity$47;->this$0:Lcom/android/camera/AbstractCameraActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 2522
    iget-object v0, p0, Lcom/android/camera/AbstractCameraActivity$47;->this$0:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraSettings;->setStorage(I)V

    .line 2523
    iget-object v0, p0, Lcom/android/camera/AbstractCameraActivity$47;->this$0:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraSettings;->setChangeStorageSettingDialog(I)V

    .line 2524
    return-void
.end method
