.class Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog$3;
.super Ljava/lang/Object;
.source "CamcorderSlowMotionMenuDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog$3;->this$0:Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog$3;->this$0:Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog$3;->this$0:Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->mSlowSettingValue:[I

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onCamcorderSpeedMenuSelect(I)V

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog$3;->this$0:Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->dismiss()V

    .line 132
    return-void
.end method
