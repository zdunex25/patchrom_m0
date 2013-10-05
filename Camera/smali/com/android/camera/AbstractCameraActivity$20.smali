.class Lcom/android/camera/AbstractCameraActivity$20;
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
    .line 1777
    iput-object p1, p0, Lcom/android/camera/AbstractCameraActivity$20;->this$0:Lcom/android/camera/AbstractCameraActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1782
    iget-object v0, p0, Lcom/android/camera/AbstractCameraActivity$20;->this$0:Lcom/android/camera/AbstractCameraActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->removeDialog(I)V

    .line 1783
    iget-object v0, p0, Lcom/android/camera/AbstractCameraActivity$20;->this$0:Lcom/android/camera/AbstractCameraActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/camera/AbstractCameraActivity;->mShowWifiDialog:Z

    .line 1784
    return-void
.end method
