.class Lcom/vipercn/viper4android_v2/activity/ViPER4Android$14$1;
.super Ljava/lang/Object;
.source "ViPER4Android.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vipercn/viper4android_v2/activity/ViPER4Android$14;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vipercn/viper4android_v2/activity/ViPER4Android$14;

.field private final synthetic val$szResult:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vipercn/viper4android_v2/activity/ViPER4Android$14;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$14$1;->this$1:Lcom/vipercn/viper4android_v2/activity/ViPER4Android$14;

    iput-object p2, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$14$1;->val$szResult:Ljava/lang/String;

    .line 1093
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f060098

    .line 1098
    iget-object v1, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$14$1;->this$1:Lcom/vipercn/viper4android_v2/activity/ViPER4Android$14;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android$14;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;
    invoke-static {v1}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$14;->access$0(Lcom/vipercn/viper4android_v2/activity/ViPER4Android$14;)Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    move-result-object v1

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$3(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$14$1;->val$szResult:Ljava/lang/String;

    invoke-static {v2}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->DetermineCPUWithDriver(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vipercn/viper4android_v2/activity/Utils;->InstallDrv_FX(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1100
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$14$1;->this$1:Lcom/vipercn/viper4android_v2/activity/ViPER4Android$14;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android$14;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;
    invoke-static {v1}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$14;->access$0(Lcom/vipercn/viper4android_v2/activity/ViPER4Android$14;)Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    move-result-object v1

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$3(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1101
    .local v0, mResult:Landroid/app/AlertDialog$Builder;
    const-string v1, "ViPER4Android"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1102
    iget-object v1, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$14$1;->this$1:Lcom/vipercn/viper4android_v2/activity/ViPER4Android$14;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android$14;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;
    invoke-static {v1}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$14;->access$0(Lcom/vipercn/viper4android_v2/activity/ViPER4Android$14;)Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    move-result-object v1

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$3(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1103
    iget-object v1, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$14$1;->this$1:Lcom/vipercn/viper4android_v2/activity/ViPER4Android$14;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android$14;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;
    invoke-static {v1}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$14;->access$0(Lcom/vipercn/viper4android_v2/activity/ViPER4Android$14;)Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    move-result-object v1

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$3(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1104
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1114
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1115
    return-void

    .line 1108
    .end local v0           #mResult:Landroid/app/AlertDialog$Builder;
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$14$1;->this$1:Lcom/vipercn/viper4android_v2/activity/ViPER4Android$14;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android$14;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;
    invoke-static {v1}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$14;->access$0(Lcom/vipercn/viper4android_v2/activity/ViPER4Android$14;)Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    move-result-object v1

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$3(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1109
    .restart local v0       #mResult:Landroid/app/AlertDialog$Builder;
    const-string v1, "ViPER4Android"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1110
    iget-object v1, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$14$1;->this$1:Lcom/vipercn/viper4android_v2/activity/ViPER4Android$14;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android$14;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;
    invoke-static {v1}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$14;->access$0(Lcom/vipercn/viper4android_v2/activity/ViPER4Android$14;)Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    move-result-object v1

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$3(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1111
    iget-object v1, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$14$1;->this$1:Lcom/vipercn/viper4android_v2/activity/ViPER4Android$14;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android$14;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;
    invoke-static {v1}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$14;->access$0(Lcom/vipercn/viper4android_v2/activity/ViPER4Android$14;)Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    move-result-object v1

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$3(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1112
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
