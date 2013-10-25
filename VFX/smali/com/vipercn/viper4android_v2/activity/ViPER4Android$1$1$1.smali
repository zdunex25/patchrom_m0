.class Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1$1;
.super Ljava/lang/Object;
.source "ViPER4Android.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1;

.field private final synthetic val$ctxInstance:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1$1;->this$2:Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1;

    iput-object p2, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1$1;->val$ctxInstance:Landroid/content/Context;

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f060098

    .line 346
    iget-object v4, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1$1;->val$ctxInstance:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 347
    .local v2, szQual:[Ljava/lang/String;
    aget-object v3, v2, p2

    .line 348
    .local v3, szResult:Ljava/lang/String;
    const-string v4, "sq"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 350
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1$1;->val$ctxInstance:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 351
    .local v1, mSQWarn:Landroid/app/AlertDialog$Builder;
    const-string v4, "ViPER4Android"

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 352
    iget-object v4, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1$1;->val$ctxInstance:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06009b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 353
    iget-object v4, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1$1;->val$ctxInstance:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1$1$1;

    iget-object v6, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1$1;->val$ctxInstance:Landroid/content/Context;

    invoke-direct {v5, p0, v6, v3}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1$1$1;-><init>(Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1$1;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 377
    iget-object v4, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1$1;->val$ctxInstance:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060099

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1$1$2;

    invoke-direct {v5, p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1$1$2;-><init>(Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1$1;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 379
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 400
    .end local v1           #mSQWarn:Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 383
    :cond_0
    iget-object v4, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1$1;->val$ctxInstance:Landroid/content/Context;

    invoke-static {v3}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->DetermineCPUWithDriver(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vipercn/viper4android_v2/activity/Utils;->InstallDrv_FX(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 385
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1$1;->val$ctxInstance:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 386
    .local v0, mResult:Landroid/app/AlertDialog$Builder;
    const-string v4, "ViPER4Android"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 387
    iget-object v4, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1$1;->val$ctxInstance:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0600a4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 388
    iget-object v4, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1$1;->val$ctxInstance:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 389
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 393
    .end local v0           #mResult:Landroid/app/AlertDialog$Builder;
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1$1;->val$ctxInstance:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 394
    .restart local v0       #mResult:Landroid/app/AlertDialog$Builder;
    const-string v4, "ViPER4Android"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 395
    iget-object v4, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1$1;->val$ctxInstance:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0600a6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 396
    iget-object v4, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$1$1$1;->val$ctxInstance:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 397
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
