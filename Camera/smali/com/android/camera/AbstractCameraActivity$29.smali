.class Lcom/android/camera/AbstractCameraActivity$29;
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
    .line 1896
    iput-object p1, p0, Lcom/android/camera/AbstractCameraActivity$29;->this$0:Lcom/android/camera/AbstractCameraActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 1898
    const/4 v0, 0x1

    .line 1900
    .local v0, mstate:I
    iget-object v1, p0, Lcom/android/camera/AbstractCameraActivity$29;->this$0:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/CameraSettings;->androidBeamController(ZI)V

    .line 1901
    iget-object v1, p0, Lcom/android/camera/AbstractCameraActivity$29;->this$0:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraSettings;->setAutoShareShotMode(I)V

    .line 1902
    iget-object v1, p0, Lcom/android/camera/AbstractCameraActivity$29;->this$0:Lcom/android/camera/AbstractCameraActivity;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/camera/AbstractCameraActivity;->hideDlg(I)V

    .line 1903
    return-void
.end method
