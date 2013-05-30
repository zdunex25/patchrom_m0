.class Lcom/android/OriginalSettings/DataUsageSummary$8;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 1285
    iput-object p1, p0, Lcom/android/OriginalSettings/DataUsageSummary$8;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary$8;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mAlertAtWarning:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->access$1200(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1289
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary$8;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    const-wide/16 v1, -0x1

    #calls: Lcom/android/OriginalSettings/DataUsageSummary;->setPolicyWarningBytes(J)V
    invoke-static {v0, v1, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->access$1300(Lcom/android/OriginalSettings/DataUsageSummary;J)V

    .line 1290
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary$8;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mAlertAtWarning:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->access$1200(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1300
    :cond_0
    :goto_0
    return-void

    .line 1293
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary$8;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "confirmWarning"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1294
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary$8;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->access$600(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1295
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary$8;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->access$600(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 1297
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary$8;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary$8;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmWarningFragment;->show(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v1

    #setter for: Lcom/android/OriginalSettings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/DataUsageSummary;->access$602(Lcom/android/OriginalSettings/DataUsageSummary;Landroid/app/DialogFragment;)Landroid/app/DialogFragment;

    goto :goto_0
.end method
