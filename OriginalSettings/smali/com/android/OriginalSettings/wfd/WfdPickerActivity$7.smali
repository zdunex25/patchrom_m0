.class Lcom/android/OriginalSettings/wfd/WfdPickerActivity$7;
.super Ljava/lang/Object;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->createErrorHandlingDialog(I)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1439
    iput-object p1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$7;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/16 v2, 0xd

    .line 1442
    const-string v0, "WfdPickerActivity"

    const-string v1, "createErrorHandlingDialog ok is clicked.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$7;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z
    invoke-static {v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1500(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$7;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$7;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getNfcDevAddrFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$2900(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1445
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$7;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->finish()V

    .line 1448
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$7;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDDialogState:I
    invoke-static {v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$3000(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$7;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDDialogState:I
    invoke-static {v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$3000(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1452
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$7;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->scanDevice()V
    invoke-static {v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1100(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    .line 1454
    :cond_2
    return-void
.end method
