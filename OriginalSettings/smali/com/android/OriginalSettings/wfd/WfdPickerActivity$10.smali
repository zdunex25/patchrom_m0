.class Lcom/android/OriginalSettings/wfd/WfdPickerActivity$10;
.super Ljava/lang/Object;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->createAutoConnectDialog()Landroid/app/AlertDialog;
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
    .line 1549
    iput-object p1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$10;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$10;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDDialogState:I
    invoke-static {v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$3000(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 1553
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$10;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1554
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$10;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;
    invoke-static {v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$3600(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Lcom/android/OriginalSettings/ProgressCategory;

    move-result-object v0

    const v1, 0x7f090363

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/ProgressCategory;->setTitle(I)V

    .line 1555
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$10;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;
    invoke-static {v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$3600(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Lcom/android/OriginalSettings/ProgressCategory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/OriginalSettings/ProgressCategory;->removeAll()V

    .line 1556
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$10;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;
    invoke-static {v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$3600(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Lcom/android/OriginalSettings/ProgressCategory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    .line 1557
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$10;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$10;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;
    invoke-static {v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$3600(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Lcom/android/OriginalSettings/ProgressCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1559
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$10;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->cancelWfdConnect()V
    invoke-static {v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$600(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    .line 1561
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$10;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z
    invoke-static {v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1500(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1562
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$10;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->cancelConnect()V

    .line 1564
    :cond_0
    return-void
.end method
