.class public Lcom/android/OriginalSettings/DateTimeSettings$ConfirmAutoTimeAndTimezoneFragment;
.super Landroid/app/DialogFragment;
.source "DateTimeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/DateTimeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmAutoTimeAndTimezoneFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 677
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/OriginalSettings/DateTimeSettings;)V
    .locals 3
    .parameter "parent"

    .prologue
    .line 679
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 684
    :goto_0
    return-void

    .line 681
    :cond_0
    new-instance v0, Lcom/android/OriginalSettings/DateTimeSettings$ConfirmAutoTimeAndTimezoneFragment;

    invoke-direct {v0}, Lcom/android/OriginalSettings/DateTimeSettings$ConfirmAutoTimeAndTimezoneFragment;-><init>()V

    .line 682
    .local v0, dialog:Lcom/android/OriginalSettings/DateTimeSettings$ConfirmAutoTimeAndTimezoneFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/OriginalSettings/DateTimeSettings$ConfirmAutoTimeAndTimezoneFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 683
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmAutoTime"

    invoke-virtual {v0, v1, v2}, Lcom/android/OriginalSettings/DateTimeSettings$ConfirmAutoTimeAndTimezoneFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 688
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettings$ConfirmAutoTimeAndTimezoneFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 690
    .local v1, context:Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 691
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f09013c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f09013d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 695
    const v2, 0x104000a

    new-instance v3, Lcom/android/OriginalSettings/DateTimeSettings$ConfirmAutoTimeAndTimezoneFragment$1;

    invoke-direct {v3, p0, v1}, Lcom/android/OriginalSettings/DateTimeSettings$ConfirmAutoTimeAndTimezoneFragment$1;-><init>(Lcom/android/OriginalSettings/DateTimeSettings$ConfirmAutoTimeAndTimezoneFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 716
    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 718
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
