.class Lcom/vipercn/viper4android/activity/ViPER4Android$15;
.super Ljava/lang/Object;
.source "ViPER4Android.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vipercn/viper4android/activity/ViPER4Android;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;


# direct methods
.method constructor <init>(Lcom/vipercn/viper4android/activity/ViPER4Android;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$15;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    .line 1071
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1077
    const-string v1, "com.vipercn.viper4android.settings"

    iget-object v2, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$15;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/vipercn/viper4android/activity/ViPER4Android;->access$0(Lcom/vipercn/viper4android/activity/ViPER4Android;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vipercn/viper4android/activity/Utils;->UninstallDrv_FX(Ljava/lang/String;Landroid/content/Context;)V

    .line 1079
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$15;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/vipercn/viper4android/activity/ViPER4Android;->access$0(Lcom/vipercn/viper4android/activity/ViPER4Android;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1080
    .local v0, mResult:Landroid/app/AlertDialog$Builder;
    const-string v1, "ViPER4Android"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1081
    iget-object v1, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$15;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    invoke-virtual {v1}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1082
    iget-object v1, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$15;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    invoke-virtual {v1}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060096

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1083
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1084
    return-void
.end method
