.class public Lcom/android/OriginalSettings/DataUsageSummary$ConfirmWarningFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmWarningFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1956
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/app/DialogFragment;
    .locals 14
    .parameter "parent"

    .prologue
    const-wide/32 v12, 0x40000000

    const-wide/16 v10, 0x0

    .line 1961
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isAdded()Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v2, 0x0

    .line 1988
    :goto_0
    return-object v2

    .line 1963
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1965
    .local v5, res:Landroid/content/res/Resources;
    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mChart:Lcom/android/OriginalSettings/widget/ChartDataUsageView;
    invoke-static {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->access$1900(Lcom/android/OriginalSettings/DataUsageSummary;)Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->getLimitBytes()J

    move-result-wide v3

    .line 1967
    .local v3, limitBytes:J
    const/4 v1, 0x2

    .line 1968
    .local v1, defaultWarningGB:I
    invoke-static {}, Lcom/android/OriginalSettings/DataUsageSummary;->access$3200()Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v1, 0x32

    .line 1969
    :cond_1
    int-to-long v8, v1

    mul-long v6, v8, v12

    .line 1972
    .local v6, warningBytes:J
    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;
    invoke-static {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->access$1000(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/widget/CheckBox;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1973
    cmp-long v8, v3, v10

    if-nez v8, :cond_3

    .line 1974
    const-wide/16 v6, 0x0

    .line 1980
    :cond_2
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1981
    .local v0, args:Landroid/os/Bundle;
    const-string v8, "warningBytes"

    invoke-virtual {v0, v8, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1983
    new-instance v2, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmWarningFragment;

    invoke-direct {v2}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmWarningFragment;-><init>()V

    .line 1984
    .local v2, dialog:Lcom/android/OriginalSettings/DataUsageSummary$ConfirmWarningFragment;
    invoke-virtual {v2, v0}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmWarningFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1985
    const/4 v8, 0x0

    invoke-virtual {v2, p0, v8}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmWarningFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1986
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    const-string v9, "confirmWarning"

    invoke-virtual {v2, v8, v9}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmWarningFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1975
    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #dialog:Lcom/android/OriginalSettings/DataUsageSummary$ConfirmWarningFragment;
    :cond_3
    cmp-long v8, v3, v10

    if-lez v8, :cond_2

    int-to-long v8, v1

    mul-long/2addr v8, v12

    cmp-long v8, v3, v8

    if-gtz v8, :cond_2

    .line 1976
    const-wide/32 v8, 0x100000

    sub-long v6, v3, v8

    goto :goto_1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 1993
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmWarningFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1995
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmWarningFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "warningBytes"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1997
    .local v2, warningBytes:J
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1998
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f090d2c

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1999
    const v4, 0x7f090d2d

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2001
    const v4, 0x104000a

    new-instance v5, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmWarningFragment$1;

    invoke-direct {v5, p0, v2, v3}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmWarningFragment$1;-><init>(Lcom/android/OriginalSettings/DataUsageSummary$ConfirmWarningFragment;J)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2010
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method
