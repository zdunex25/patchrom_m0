.class Lcom/vipercn/viper4android/activity/ViPER4Android$1$1$1;
.super Ljava/lang/Object;
.source "ViPER4Android.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vipercn/viper4android/activity/ViPER4Android$1$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vipercn/viper4android/activity/ViPER4Android$1$1;


# direct methods
.method constructor <init>(Lcom/vipercn/viper4android/activity/ViPER4Android$1$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$1$1$1;->this$2:Lcom/vipercn/viper4android/activity/ViPER4Android$1$1;

    .line 331
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

    const v5, 0x7f060096

    .line 335
    iget-object v3, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$1$1$1;->this$2:Lcom/vipercn/viper4android/activity/ViPER4Android$1$1;

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android$1$1;->this$1:Lcom/vipercn/viper4android/activity/ViPER4Android$1;
    invoke-static {v3}, Lcom/vipercn/viper4android/activity/ViPER4Android$1$1;->access$0(Lcom/vipercn/viper4android/activity/ViPER4Android$1$1;)Lcom/vipercn/viper4android/activity/ViPER4Android$1;

    move-result-object v3

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android$1;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;
    invoke-static {v3}, Lcom/vipercn/viper4android/activity/ViPER4Android$1;->access$0(Lcom/vipercn/viper4android/activity/ViPER4Android$1;)Lcom/vipercn/viper4android/activity/ViPER4Android;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 336
    .local v2, szV4A_CPU:[Ljava/lang/String;
    aget-object v0, v2, p2

    .line 337
    .local v0, V4ALIB:Ljava/lang/String;
    const-string v3, "com.vipercn.viper4android.settings"

    iget-object v4, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$1$1$1;->this$2:Lcom/vipercn/viper4android/activity/ViPER4Android$1$1;

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android$1$1;->this$1:Lcom/vipercn/viper4android/activity/ViPER4Android$1;
    invoke-static {v4}, Lcom/vipercn/viper4android/activity/ViPER4Android$1$1;->access$0(Lcom/vipercn/viper4android/activity/ViPER4Android$1$1;)Lcom/vipercn/viper4android/activity/ViPER4Android$1;

    move-result-object v4

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android$1;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;
    invoke-static {v4}, Lcom/vipercn/viper4android/activity/ViPER4Android$1;->access$0(Lcom/vipercn/viper4android/activity/ViPER4Android$1;)Lcom/vipercn/viper4android/activity/ViPER4Android;

    move-result-object v4

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/vipercn/viper4android/activity/ViPER4Android;->access$0(Lcom/vipercn/viper4android/activity/ViPER4Android;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/vipercn/viper4android/activity/Utils;->InstallDrv_FX(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 339
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$1$1$1;->this$2:Lcom/vipercn/viper4android/activity/ViPER4Android$1$1;

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android$1$1;->this$1:Lcom/vipercn/viper4android/activity/ViPER4Android$1;
    invoke-static {v3}, Lcom/vipercn/viper4android/activity/ViPER4Android$1$1;->access$0(Lcom/vipercn/viper4android/activity/ViPER4Android$1$1;)Lcom/vipercn/viper4android/activity/ViPER4Android$1;

    move-result-object v3

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android$1;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;
    invoke-static {v3}, Lcom/vipercn/viper4android/activity/ViPER4Android$1;->access$0(Lcom/vipercn/viper4android/activity/ViPER4Android$1;)Lcom/vipercn/viper4android/activity/ViPER4Android;

    move-result-object v3

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/vipercn/viper4android/activity/ViPER4Android;->access$0(Lcom/vipercn/viper4android/activity/ViPER4Android;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 340
    .local v1, mResult:Landroid/app/AlertDialog$Builder;
    const-string v3, "ViPER4Android"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 341
    iget-object v3, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$1$1$1;->this$2:Lcom/vipercn/viper4android/activity/ViPER4Android$1$1;

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android$1$1;->this$1:Lcom/vipercn/viper4android/activity/ViPER4Android$1;
    invoke-static {v3}, Lcom/vipercn/viper4android/activity/ViPER4Android$1$1;->access$0(Lcom/vipercn/viper4android/activity/ViPER4Android$1$1;)Lcom/vipercn/viper4android/activity/ViPER4Android$1;

    move-result-object v3

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android$1;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;
    invoke-static {v3}, Lcom/vipercn/viper4android/activity/ViPER4Android$1;->access$0(Lcom/vipercn/viper4android/activity/ViPER4Android$1;)Lcom/vipercn/viper4android/activity/ViPER4Android;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600a0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 342
    iget-object v3, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$1$1$1;->this$2:Lcom/vipercn/viper4android/activity/ViPER4Android$1$1;

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android$1$1;->this$1:Lcom/vipercn/viper4android/activity/ViPER4Android$1;
    invoke-static {v3}, Lcom/vipercn/viper4android/activity/ViPER4Android$1$1;->access$0(Lcom/vipercn/viper4android/activity/ViPER4Android$1$1;)Lcom/vipercn/viper4android/activity/ViPER4Android$1;

    move-result-object v3

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android$1;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;
    invoke-static {v3}, Lcom/vipercn/viper4android/activity/ViPER4Android$1;->access$0(Lcom/vipercn/viper4android/activity/ViPER4Android$1;)Lcom/vipercn/viper4android/activity/ViPER4Android;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 343
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 353
    :goto_0
    return-void

    .line 347
    .end local v1           #mResult:Landroid/app/AlertDialog$Builder;
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$1$1$1;->this$2:Lcom/vipercn/viper4android/activity/ViPER4Android$1$1;

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android$1$1;->this$1:Lcom/vipercn/viper4android/activity/ViPER4Android$1;
    invoke-static {v3}, Lcom/vipercn/viper4android/activity/ViPER4Android$1$1;->access$0(Lcom/vipercn/viper4android/activity/ViPER4Android$1$1;)Lcom/vipercn/viper4android/activity/ViPER4Android$1;

    move-result-object v3

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android$1;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;
    invoke-static {v3}, Lcom/vipercn/viper4android/activity/ViPER4Android$1;->access$0(Lcom/vipercn/viper4android/activity/ViPER4Android$1;)Lcom/vipercn/viper4android/activity/ViPER4Android;

    move-result-object v3

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/vipercn/viper4android/activity/ViPER4Android;->access$0(Lcom/vipercn/viper4android/activity/ViPER4Android;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 348
    .restart local v1       #mResult:Landroid/app/AlertDialog$Builder;
    const-string v3, "ViPER4Android"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 349
    iget-object v3, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$1$1$1;->this$2:Lcom/vipercn/viper4android/activity/ViPER4Android$1$1;

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android$1$1;->this$1:Lcom/vipercn/viper4android/activity/ViPER4Android$1;
    invoke-static {v3}, Lcom/vipercn/viper4android/activity/ViPER4Android$1$1;->access$0(Lcom/vipercn/viper4android/activity/ViPER4Android$1$1;)Lcom/vipercn/viper4android/activity/ViPER4Android$1;

    move-result-object v3

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android$1;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;
    invoke-static {v3}, Lcom/vipercn/viper4android/activity/ViPER4Android$1;->access$0(Lcom/vipercn/viper4android/activity/ViPER4Android$1;)Lcom/vipercn/viper4android/activity/ViPER4Android;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600a2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 350
    iget-object v3, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$1$1$1;->this$2:Lcom/vipercn/viper4android/activity/ViPER4Android$1$1;

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android$1$1;->this$1:Lcom/vipercn/viper4android/activity/ViPER4Android$1;
    invoke-static {v3}, Lcom/vipercn/viper4android/activity/ViPER4Android$1$1;->access$0(Lcom/vipercn/viper4android/activity/ViPER4Android$1$1;)Lcom/vipercn/viper4android/activity/ViPER4Android$1;

    move-result-object v3

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android$1;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;
    invoke-static {v3}, Lcom/vipercn/viper4android/activity/ViPER4Android$1;->access$0(Lcom/vipercn/viper4android/activity/ViPER4Android$1;)Lcom/vipercn/viper4android/activity/ViPER4Android;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 351
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
