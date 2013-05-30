.class Lcom/android/OriginalSettings/DataUsageSummary$5;
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
    .line 1217
    iput-object p1, p0, Lcom/android/OriginalSettings/DataUsageSummary$5;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1220
    iget-object v5, p0, Lcom/android/OriginalSettings/DataUsageSummary$5;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mBinding:Z
    invoke-static {v5}, Lcom/android/OriginalSettings/DataUsageSummary;->access$300(Lcom/android/OriginalSettings/DataUsageSummary;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1253
    :cond_0
    :goto_0
    return-void

    .line 1221
    :cond_1
    iget-object v5, p0, Lcom/android/OriginalSettings/DataUsageSummary$5;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-virtual {v5}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1223
    .local v2, isAirplaneMode:I
    if-nez v2, :cond_0

    .line 1227
    iget-object v5, p0, Lcom/android/OriginalSettings/DataUsageSummary$5;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabled:Landroid/widget/CheckBox;
    invoke-static {v5}, Lcom/android/OriginalSettings/DataUsageSummary;->access$400(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/widget/CheckBox;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-nez v5, :cond_4

    move v1, v3

    .line 1228
    .local v1, dataEnabled:Z
    :goto_1
    iget-object v5, p0, Lcom/android/OriginalSettings/DataUsageSummary$5;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/OriginalSettings/DataUsageSummary;->access$500(Lcom/android/OriginalSettings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v0

    .line 1229
    .local v0, currentTab:Ljava/lang/String;
    const-string v5, "mobile"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1230
    if-eqz v1, :cond_7

    .line 1231
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isDomesticModel()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1232
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary$5;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v5, "confirmDataEnable"

    invoke-virtual {v3, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1233
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary$5;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v3}, Lcom/android/OriginalSettings/DataUsageSummary;->access$600(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1234
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary$5;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v3}, Lcom/android/OriginalSettings/DataUsageSummary;->access$600(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/DialogFragment;->dismiss()V

    .line 1236
    :cond_2
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary$5;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    iget-object v5, p0, Lcom/android/OriginalSettings/DataUsageSummary$5;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-static {v5}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmDataEnableFragment;->show(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v5

    #setter for: Lcom/android/OriginalSettings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v3, v5}, Lcom/android/OriginalSettings/DataUsageSummary;->access$602(Lcom/android/OriginalSettings/DataUsageSummary;Landroid/app/DialogFragment;)Landroid/app/DialogFragment;

    .line 1252
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary$5;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #calls: Lcom/android/OriginalSettings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v3, v4}, Lcom/android/OriginalSettings/DataUsageSummary;->access$800(Lcom/android/OriginalSettings/DataUsageSummary;Z)V

    goto :goto_0

    .end local v0           #currentTab:Ljava/lang/String;
    .end local v1           #dataEnabled:Z
    :cond_4
    move v1, v4

    .line 1227
    goto :goto_1

    .line 1238
    .restart local v0       #currentTab:Ljava/lang/String;
    .restart local v1       #dataEnabled:Z
    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Setting_EnablePromptPopupWhenActivatingDataConnection"

    invoke-virtual {v5, v6, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1239
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary$5;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v5, "confirmDataEnable"

    invoke-virtual {v3, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1240
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary$5;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-static {v3}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmDataEnableFragment;->show(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/app/DialogFragment;

    goto :goto_2

    .line 1243
    :cond_6
    iget-object v5, p0, Lcom/android/OriginalSettings/DataUsageSummary$5;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #calls: Lcom/android/OriginalSettings/DataUsageSummary;->setMobileDataEnabled(Z)V
    invoke-static {v5, v3}, Lcom/android/OriginalSettings/DataUsageSummary;->access$700(Lcom/android/OriginalSettings/DataUsageSummary;Z)V

    goto :goto_2

    .line 1248
    :cond_7
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary$5;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-static {v3}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmDataDisableFragment;->show(Lcom/android/OriginalSettings/DataUsageSummary;)V

    goto :goto_2
.end method
