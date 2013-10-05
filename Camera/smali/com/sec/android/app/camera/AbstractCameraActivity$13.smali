.class Lcom/android/camera/AbstractCameraActivity$13;
.super Ljava/lang/Object;
.source "AbstractCameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/AbstractCameraActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 1669
    iput-object p1, p0, Lcom/android/camera/AbstractCameraActivity$13;->this$0:Lcom/android/camera/AbstractCameraActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1671
    iget-object v0, p0, Lcom/android/camera/AbstractCameraActivity$13;->this$0:Lcom/android/camera/AbstractCameraActivity;

    #getter for: Lcom/android/camera/AbstractCameraActivity;->mCameraSettings:Lcom/android/camera/CameraSettings;
    invoke-static {v0}, Lcom/android/camera/AbstractCameraActivity;->access$100(Lcom/android/camera/AbstractCameraActivity;)Lcom/android/camera/CameraSettings;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1686
    :goto_0
    return-void

    .line 1673
    :cond_0
    iget-object v0, p0, Lcom/android/camera/AbstractCameraActivity$13;->this$0:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0, v2}, Lcom/android/camera/AbstractCameraActivity;->hideDlg(I)V

    .line 1674
    iget-object v0, p0, Lcom/android/camera/AbstractCameraActivity$13;->this$0:Lcom/android/camera/AbstractCameraActivity;

    #getter for: Lcom/android/camera/AbstractCameraActivity;->mCameraSettings:Lcom/android/camera/CameraSettings;
    invoke-static {v0}, Lcom/android/camera/AbstractCameraActivity;->access$100(Lcom/android/camera/AbstractCameraActivity;)Lcom/android/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getStorage()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/CheckMemory;->isStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/AbstractCameraActivity$13;->this$0:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0, v3}, Lcom/android/camera/AbstractCameraActivity;->checkStorageLow(I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/AbstractCameraActivity$13;->this$0:Lcom/android/camera/AbstractCameraActivity;

    #getter for: Lcom/android/camera/AbstractCameraActivity;->mCameraSettings:Lcom/android/camera/CameraSettings;
    invoke-static {v0}, Lcom/android/camera/AbstractCameraActivity;->access$100(Lcom/android/camera/AbstractCameraActivity;)Lcom/android/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/AbstractCameraActivity$13;->this$0:Lcom/android/camera/AbstractCameraActivity;

    #getter for: Lcom/android/camera/AbstractCameraActivity;->mCameraSettings:Lcom/android/camera/CameraSettings;
    invoke-static {v0}, Lcom/android/camera/AbstractCameraActivity;->access$100(Lcom/android/camera/AbstractCameraActivity;)Lcom/android/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    .line 1679
    iget-object v0, p0, Lcom/android/camera/AbstractCameraActivity$13;->this$0:Lcom/android/camera/AbstractCameraActivity;

    #getter for: Lcom/android/camera/AbstractCameraActivity;->mCameraSettings:Lcom/android/camera/CameraSettings;
    invoke-static {v0}, Lcom/android/camera/AbstractCameraActivity;->access$100(Lcom/android/camera/AbstractCameraActivity;)Lcom/android/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraSettings;->setStorage(I)V

    goto :goto_0

    .line 1680
    :cond_1
    iget-object v0, p0, Lcom/android/camera/AbstractCameraActivity$13;->this$0:Lcom/android/camera/AbstractCameraActivity;

    #getter for: Lcom/android/camera/AbstractCameraActivity;->mCameraSettings:Lcom/android/camera/CameraSettings;
    invoke-static {v0}, Lcom/android/camera/AbstractCameraActivity;->access$100(Lcom/android/camera/AbstractCameraActivity;)Lcom/android/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getStorage()I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/camera/AbstractCameraActivity$13;->this$0:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0, v2}, Lcom/android/camera/AbstractCameraActivity;->checkStorageLow(I)I

    move-result v0

    if-nez v0, :cond_2

    .line 1682
    iget-object v0, p0, Lcom/android/camera/AbstractCameraActivity$13;->this$0:Lcom/android/camera/AbstractCameraActivity;

    #getter for: Lcom/android/camera/AbstractCameraActivity;->mCameraSettings:Lcom/android/camera/CameraSettings;
    invoke-static {v0}, Lcom/android/camera/AbstractCameraActivity;->access$100(Lcom/android/camera/AbstractCameraActivity;)Lcom/android/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraSettings;->setStorage(I)V

    goto :goto_0

    .line 1684
    :cond_2
    iget-object v0, p0, Lcom/android/camera/AbstractCameraActivity$13;->this$0:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->finish()V

    goto :goto_0
.end method
