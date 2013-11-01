.class Lcom/vipercn/viper4android/activity/ViPER4Android$16;
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
    iput-object p1, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$16;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    .line 1095
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

    .line 1099
    iget-object v3, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$16;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    invoke-virtual {v3}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1100
    .local v2, szV4A_CPU:[Ljava/lang/String;
    aget-object v0, v2, p2

    .line 1101
    .local v0, V4ALIB:Ljava/lang/String;
    const-string v3, "com.vipercn.viper4android.settings"

    iget-object v4, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$16;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/vipercn/viper4android/activity/ViPER4Android;->access$0(Lcom/vipercn/viper4android/activity/ViPER4Android;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/vipercn/viper4android/activity/Utils;->InstallDrv_FX(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1103
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$16;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/vipercn/viper4android/activity/ViPER4Android;->access$0(Lcom/vipercn/viper4android/activity/ViPER4Android;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1104
    .local v1, mResult:Landroid/app/AlertDialog$Builder;
    const-string v3, "ViPER4Android"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1105
    iget-object v3, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$16;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    invoke-virtual {v3}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600a0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1106
    iget-object v3, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$16;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    invoke-virtual {v3}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1107
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1117
    :goto_0
    return-void

    .line 1111
    .end local v1           #mResult:Landroid/app/AlertDialog$Builder;
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$16;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/vipercn/viper4android/activity/ViPER4Android;->access$0(Lcom/vipercn/viper4android/activity/ViPER4Android;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1112
    .restart local v1       #mResult:Landroid/app/AlertDialog$Builder;
    const-string v3, "ViPER4Android"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1113
    iget-object v3, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$16;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    invoke-virtual {v3}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600a2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1114
    iget-object v3, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$16;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    invoke-virtual {v3}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1115
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
