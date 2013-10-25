.class Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1;
.super Ljava/lang/Object;
.source "ViPER4Android.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1;

.field private final synthetic val$ctxInstance:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1;->this$1:Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1;

    iput-object p2, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1;->val$ctxInstance:Landroid/content/Context;

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f060098

    .line 336
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->CPUHasQualitySelection()Z

    move-result v0

    .line 337
    .local v0, bCanChooseQuality:Z
    if-eqz v0, :cond_0

    .line 339
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1;->val$ctxInstance:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 340
    const v4, 0x7f06009a

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 341
    const/high16 v4, 0x7f02

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 342
    const/high16 v4, 0x7f05

    new-instance v5, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1$1;

    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1;->val$ctxInstance:Landroid/content/Context;

    invoke-direct {v5, p0, v6}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1$1;-><init>(Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1;Landroid/content/Context;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 401
    const v4, 0x7f060099

    new-instance v5, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1$2;

    invoke-direct {v5, p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1$2;-><init>(Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 402
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 424
    :goto_0
    return-void

    .line 406
    :cond_0
    const-string v3, ""

    invoke-static {v3}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->DetermineCPUWithDriver(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 407
    .local v2, szDriverFileName:Ljava/lang/String;
    iget-object v3, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1;->val$ctxInstance:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/vipercn/viper4android_v2/activity/Utils;->InstallDrv_FX(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 409
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1;->val$ctxInstance:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 410
    .local v1, mResult:Landroid/app/AlertDialog$Builder;
    const-string v3, "ViPER4Android"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 411
    iget-object v3, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1;->val$ctxInstance:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600a4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 412
    iget-object v3, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1;->val$ctxInstance:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 413
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 417
    .end local v1           #mResult:Landroid/app/AlertDialog$Builder;
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1;->val$ctxInstance:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 418
    .restart local v1       #mResult:Landroid/app/AlertDialog$Builder;
    const-string v3, "ViPER4Android"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 419
    iget-object v3, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1;->val$ctxInstance:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600a6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 420
    iget-object v3, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1;->val$ctxInstance:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 421
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
