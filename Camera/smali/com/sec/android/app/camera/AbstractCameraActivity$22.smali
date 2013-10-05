.class Lcom/android/camera/AbstractCameraActivity$22;
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
    .line 1814
    iput-object p1, p0, Lcom/android/camera/AbstractCameraActivity$22;->this$0:Lcom/android/camera/AbstractCameraActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 1819
    iget-object v0, p0, Lcom/android/camera/AbstractCameraActivity$22;->this$0:Lcom/android/camera/AbstractCameraActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->removeDialog(I)V

    .line 1820
    iget-object v0, p0, Lcom/android/camera/AbstractCameraActivity$22;->this$0:Lcom/android/camera/AbstractCameraActivity;

    iput-boolean v2, v0, Lcom/android/camera/AbstractCameraActivity;->mShowWifiDialog:Z

    .line 1821
    iget-object v0, p0, Lcom/android/camera/AbstractCameraActivity$22;->this$0:Lcom/android/camera/AbstractCameraActivity;

    iput-boolean v2, v0, Lcom/android/camera/AbstractCameraActivity;->mIsFromSNS:Z

    .line 1823
    iget-object v0, p0, Lcom/android/camera/AbstractCameraActivity$22;->this$0:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/AbstractCameraActivity$22;->this$0:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    iget v1, v1, Lcom/android/camera/CameraSettings;->mPreviousShootingMode:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraSettings;->setShootingMode(I)V

    .line 1824
    return-void
.end method
