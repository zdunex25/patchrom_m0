.class Lcom/android/camera/Camera$7;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->isGpsEULAEnabledinCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3661
    iput-object p1, p0, Lcom/android/camera/Camera$7;->this$0:Lcom/android/camera/Camera;

    iput-object p2, p0, Lcom/android/camera/Camera$7;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v3, 0x1

    .line 3663
    iget-object v0, p0, Lcom/android/camera/Camera$7;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3664
    iget-object v0, p0, Lcom/android/camera/Camera$7;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0, v3}, Lcom/android/camera/Camera;->setEULAenable(Z)V

    .line 3665
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set isEULAenabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera$7;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getEULAenable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3668
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera$7;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraEngine:Lcom/android/camera/CameraEngine;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$100(Lcom/android/camera/Camera;)Lcom/android/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine;->isProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera$7;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraEngine:Lcom/android/camera/CameraEngine;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$100(Lcom/android/camera/Camera;)Lcom/android/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine;->isNetworkProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3669
    iget-object v0, p0, Lcom/android/camera/Camera$7;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->IsGpsEnableInSettings()V

    .line 3673
    :goto_0
    return-void

    .line 3671
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera$7;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraSettings;->setGPS(I)V

    goto :goto_0
.end method
