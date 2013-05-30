.class Lcom/android/OriginalSettings/cloud/CloudDialog$3;
.super Ljava/lang/Object;
.source "CloudDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/cloud/CloudDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/cloud/CloudDialog;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/cloud/CloudDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/OriginalSettings/cloud/CloudDialog$3;->this$0:Lcom/android/OriginalSettings/cloud/CloudDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/OriginalSettings/cloud/CloudDialog$3;->this$0:Lcom/android/OriginalSettings/cloud/CloudDialog;

    #getter for: Lcom/android/OriginalSettings/cloud/CloudDialog;->dialogListener:Lcom/android/OriginalSettings/cloud/CloudDialog$DialogListener;
    invoke-static {v0}, Lcom/android/OriginalSettings/cloud/CloudDialog;->access$200(Lcom/android/OriginalSettings/cloud/CloudDialog;)Lcom/android/OriginalSettings/cloud/CloudDialog$DialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/OriginalSettings/cloud/CloudDialog$3;->this$0:Lcom/android/OriginalSettings/cloud/CloudDialog;

    #getter for: Lcom/android/OriginalSettings/cloud/CloudDialog;->dialogListener:Lcom/android/OriginalSettings/cloud/CloudDialog$DialogListener;
    invoke-static {v0}, Lcom/android/OriginalSettings/cloud/CloudDialog;->access$200(Lcom/android/OriginalSettings/cloud/CloudDialog;)Lcom/android/OriginalSettings/cloud/CloudDialog$DialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/OriginalSettings/cloud/CloudDialog$DialogListener;->onPositiveButtonClick()V

    .line 143
    :cond_0
    return-void
.end method
