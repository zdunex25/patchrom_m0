.class Lcom/sec/android/app/camera/AbstractCameraActivity$12;
.super Ljava/lang/Object;
.source "AbstractCameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/AbstractCameraActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1407
    iput-object p1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$12;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1409
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$12;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    #getter for: Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->access$000(Lcom/sec/android/app/camera/AbstractCameraActivity;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1425
    :goto_0
    return-void

    .line 1411
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$12;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideDlg(I)V

    .line 1412
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$12;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    #getter for: Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->access$000(Lcom/sec/android/app/camera/AbstractCameraActivity;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$12;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->checkStorageLow(I)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$12;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    #getter for: Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->access$000(Lcom/sec/android/app/camera/AbstractCameraActivity;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$12;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    #getter for: Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->access$000(Lcom/sec/android/app/camera/AbstractCameraActivity;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$12;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    #getter for: Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->access$000(Lcom/sec/android/app/camera/AbstractCameraActivity;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v0

    if-eq v0, v2, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$12;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    #getter for: Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->access$000(Lcom/sec/android/app/camera/AbstractCameraActivity;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2

    .line 1418
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$12;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    #getter for: Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->access$000(Lcom/sec/android/app/camera/AbstractCameraActivity;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    goto :goto_0

    .line 1419
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$12;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    #getter for: Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->access$000(Lcom/sec/android/app/camera/AbstractCameraActivity;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$12;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->checkStorageLow(I)I

    move-result v0

    if-nez v0, :cond_3

    .line 1421
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$12;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    #getter for: Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->access$000(Lcom/sec/android/app/camera/AbstractCameraActivity;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    goto :goto_0

    .line 1423
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$12;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finish()V

    goto/16 :goto_0
.end method
