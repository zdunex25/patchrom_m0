.class Lcom/sec/android/app/camera/AbstractCameraActivity$58;
.super Ljava/lang/Object;
.source "AbstractCameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/AbstractCameraActivity;->showHDRTextDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2721
    iput-object p1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$58;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iput-object p2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$58;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2723
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$58;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$58;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CameraSettings;->setHDRHelpTextDialog(I)V

    .line 2724
    return-void

    .line 2723
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
