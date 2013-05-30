.class public Lcom/android/OriginalSettings/cloud/CloudDialog;
.super Landroid/app/DialogFragment;
.source "CloudDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/cloud/CloudDialog$DialogListener;
    }
.end annotation


# instance fields
.field private dialogListener:Lcom/android/OriginalSettings/cloud/CloudDialog$DialogListener;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/android/OriginalSettings/cloud/CloudDialog;->progressDialog:Landroid/app/ProgressDialog;

    .line 66
    iput-object v0, p0, Lcom/android/OriginalSettings/cloud/CloudDialog;->dialogListener:Lcom/android/OriginalSettings/cloud/CloudDialog$DialogListener;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/cloud/CloudDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/OriginalSettings/cloud/CloudDialog;->dismissProgressDialog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/cloud/CloudDialog;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/OriginalSettings/cloud/CloudDialog;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/cloud/CloudDialog;)Lcom/android/OriginalSettings/cloud/CloudDialog$DialogListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/OriginalSettings/cloud/CloudDialog;->dialogListener:Lcom/android/OriginalSettings/cloud/CloudDialog$DialogListener;

    return-object v0
.end method

.method private dismissProgressDialog()Z
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/OriginalSettings/cloud/CloudDialog;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/OriginalSettings/cloud/CloudDialog;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/OriginalSettings/cloud/CloudDialog;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/cloud/CloudDialog;->progressDialog:Landroid/app/ProgressDialog;

    .line 173
    const/4 v0, 0x1

    .line 176
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance(ILjava/lang/String;Lcom/android/OriginalSettings/cloud/CloudDialog$DialogListener;)Lcom/android/OriginalSettings/cloud/CloudDialog;
    .locals 3
    .parameter "dialogType"
    .parameter "message"
    .parameter "dialogListener"

    .prologue
    .line 85
    new-instance v1, Lcom/android/OriginalSettings/cloud/CloudDialog;

    invoke-direct {v1}, Lcom/android/OriginalSettings/cloud/CloudDialog;-><init>()V

    .line 86
    .local v1, cloudDialog:Lcom/android/OriginalSettings/cloud/CloudDialog;
    iput-object p2, v1, Lcom/android/OriginalSettings/cloud/CloudDialog;->dialogListener:Lcom/android/OriginalSettings/cloud/CloudDialog$DialogListener;

    .line 87
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 88
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "dialogType"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 89
    const-string v2, "message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1, v0}, Lcom/android/OriginalSettings/cloud/CloudDialog;->setArguments(Landroid/os/Bundle;)V

    .line 92
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    .line 100
    const/4 v6, 0x0

    .line 101
    .local v6, alertDialog:Landroid/app/AlertDialog;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/cloud/CloudDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 103
    .local v7, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cloud/CloudDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dialogType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    move-object v0, v6

    .line 162
    :goto_1
    return-object v0

    .line 105
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cloud/CloudDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f090d89

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/cloud/CloudDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/cloud/CloudDialog;->progressDialog:Landroid/app/ProgressDialog;

    .line 109
    new-instance v0, Lcom/android/OriginalSettings/cloud/CloudDialog$1;

    const-wide/16 v2, 0x4e20

    const-wide/16 v4, 0x1388

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/cloud/CloudDialog$1;-><init>(Lcom/android/OriginalSettings/cloud/CloudDialog;JJ)V

    invoke-virtual {v0}, Lcom/android/OriginalSettings/cloud/CloudDialog$1;->start()Landroid/os/CountDownTimer;

    .line 129
    iget-object v0, p0, Lcom/android/OriginalSettings/cloud/CloudDialog;->progressDialog:Landroid/app/ProgressDialog;

    goto :goto_1

    .line 131
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cloud/CloudDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 132
    .local v8, warningMessage:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/cloud/CloudDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090d8d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090d8e

    new-instance v2, Lcom/android/OriginalSettings/cloud/CloudDialog$3;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/cloud/CloudDialog$3;-><init>(Lcom/android/OriginalSettings/cloud/CloudDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/OriginalSettings/cloud/CloudDialog$2;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/cloud/CloudDialog$2;-><init>(Lcom/android/OriginalSettings/cloud/CloudDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 155
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 156
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
