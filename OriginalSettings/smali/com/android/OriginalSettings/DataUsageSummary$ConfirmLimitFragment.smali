.class public Lcom/android/OriginalSettings/DataUsageSummary$ConfirmLimitFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLimitFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1872
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/OriginalSettings/DataUsageSummary;)V
    .locals 15
    .parameter "parent"

    .prologue
    const-wide/32 v13, 0x40000000

    const v12, 0x7f09080b

    .line 1877
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isAdded()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1913
    :goto_0
    return-void

    .line 1879
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1881
    .local v9, res:Landroid/content/res/Resources;
    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyEditor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;
    invoke-static {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->access$3100(Lcom/android/OriginalSettings/DataUsageSummary;)Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

    move-result-object v10

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->access$3000(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/OriginalSettings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v10

    iget-wide v10, v10, Landroid/net/NetworkPolicy;->warningBytes:J

    long-to-float v10, v10

    const v11, 0x3f99999a

    mul-float/2addr v10, v11

    float-to-long v7, v10

    .line 1886
    .local v7, minLimitBytes:J
    const/4 v2, 0x5

    .line 1887
    .local v2, defaultLimitGB:I
    invoke-static {}, Lcom/android/OriginalSettings/DataUsageSummary;->access$3200()Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v2, 0x50

    .line 1891
    :cond_1
    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->access$500(Lcom/android/OriginalSettings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v1

    .line 1892
    .local v1, currentTab:Ljava/lang/String;
    const-string v10, "3g"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1893
    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1894
    .local v6, message:Ljava/lang/CharSequence;
    int-to-long v10, v2

    mul-long/2addr v10, v13

    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 1905
    .local v4, limitBytes:J
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1906
    .local v0, args:Landroid/os/Bundle;
    const-string v10, "message"

    invoke-virtual {v0, v10, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1907
    const-string v10, "limitBytes"

    invoke-virtual {v0, v10, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1909
    new-instance v3, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmLimitFragment;

    invoke-direct {v3}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmLimitFragment;-><init>()V

    .line 1910
    .local v3, dialog:Lcom/android/OriginalSettings/DataUsageSummary$ConfirmLimitFragment;
    invoke-virtual {v3, v0}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmLimitFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1911
    const/4 v10, 0x0

    invoke-virtual {v3, p0, v10}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmLimitFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1912
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    const-string v11, "confirmLimit"

    invoke-virtual {v3, v10, v11}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmLimitFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1895
    .end local v0           #args:Landroid/os/Bundle;
    .end local v3           #dialog:Lcom/android/OriginalSettings/DataUsageSummary$ConfirmLimitFragment;
    .end local v4           #limitBytes:J
    .end local v6           #message:Ljava/lang/CharSequence;
    :cond_2
    const-string v10, "4g"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1896
    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1897
    .restart local v6       #message:Ljava/lang/CharSequence;
    int-to-long v10, v2

    mul-long/2addr v10, v13

    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .restart local v4       #limitBytes:J
    goto :goto_1

    .line 1898
    .end local v4           #limitBytes:J
    .end local v6           #message:Ljava/lang/CharSequence;
    :cond_3
    const-string v10, "mobile"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1899
    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1900
    .restart local v6       #message:Ljava/lang/CharSequence;
    int-to-long v10, v2

    mul-long/2addr v10, v13

    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .restart local v4       #limitBytes:J
    goto :goto_1

    .line 1902
    .end local v4           #limitBytes:J
    .end local v6           #message:Ljava/lang/CharSequence;
    :cond_4
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unknown current tab: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 1926
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmLimitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1928
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmLimitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "message"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1929
    .local v4, message:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmLimitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "limitBytes"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1931
    .local v2, limitBytes:J
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1933
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-static {}, Lcom/android/OriginalSettings/DataUsageSummary;->access$3300()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/android/OriginalSettings/DataUsageSummary;->access$3200()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1934
    :cond_0
    const v5, 0x7f090d2f

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1939
    :goto_0
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1941
    const v5, 0x104000a

    new-instance v6, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmLimitFragment$1;

    invoke-direct {v6, p0, v2, v3}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmLimitFragment$1;-><init>(Lcom/android/OriginalSettings/DataUsageSummary$ConfirmLimitFragment;J)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1951
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    .line 1936
    :cond_1
    const v5, 0x7f090809

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
