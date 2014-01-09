.class Lcom/sec/android/app/camera/AbstractCameraActivity$45;
.super Ljava/lang/Object;
.source "AbstractCameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/AbstractCameraActivity;->displayEULADialog()V
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
    .line 2243
    iput-object p1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$45;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iput-object p2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$45;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v1, 0x1

    .line 2245
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$45;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2246
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$45;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->setEULAenable(Z)V

    .line 2248
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$45;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setGPS(I)V

    .line 2249
    return-void
.end method
