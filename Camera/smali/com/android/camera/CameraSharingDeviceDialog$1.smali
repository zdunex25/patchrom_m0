.class Lcom/android/camera/CameraSharingDeviceDialog$1;
.super Ljava/lang/Object;
.source "CameraSharingDeviceDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraSharingDeviceDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraSharingDeviceDialog;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraSharingDeviceDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/camera/CameraSharingDeviceDialog$1;->this$0:Lcom/android/camera/CameraSharingDeviceDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/camera/CameraSharingDeviceDialog$1;->this$0:Lcom/android/camera/CameraSharingDeviceDialog;

    invoke-virtual {v0}, Lcom/android/camera/CameraSharingDeviceDialog;->dismiss()V

    .line 189
    return-void
.end method
