.class Lcom/vipercn/viper4android_v2/activity/ViPER4Android$6;
.super Ljava/lang/Object;
.source "ViPER4Android.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;


# direct methods
.method constructor <init>(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$6;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    .line 897
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 900
    iget-object v2, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$6;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    invoke-virtual {v2}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 901
    const v3, 0x7f0900c5

    .line 900
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 902
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 903
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$6;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    invoke-virtual {v2, v0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->startActivity(Landroid/content/Intent;)V

    .line 904
    return-void
.end method
