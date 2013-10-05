.class Lcom/android/camera/AbstractCameraActivity$4;
.super Ljava/lang/Object;
.source "AbstractCameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/AbstractCameraActivity;
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
    .line 603
    iput-object p1, p0, Lcom/android/camera/AbstractCameraActivity$4;->this$0:Lcom/android/camera/AbstractCameraActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/camera/AbstractCameraActivity$4;->this$0:Lcom/android/camera/AbstractCameraActivity;

    iget-object v0, v0, Lcom/android/camera/AbstractCameraActivity;->mSpinnerDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/android/camera/AbstractCameraActivity$4;->this$0:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->inflateWaitingView()V

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/android/camera/AbstractCameraActivity$4;->this$0:Lcom/android/camera/AbstractCameraActivity;

    iget-object v0, v0, Lcom/android/camera/AbstractCameraActivity;->mSpinnerDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 609
    iget-object v0, p0, Lcom/android/camera/AbstractCameraActivity$4;->this$0:Lcom/android/camera/AbstractCameraActivity;

    iget-object v0, v0, Lcom/android/camera/AbstractCameraActivity;->mSpinnerDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 611
    :cond_1
    return-void
.end method
