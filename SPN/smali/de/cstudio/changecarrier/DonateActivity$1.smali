.class Lde/cstudio/changecarrier/DonateActivity$1;
.super Ljava/lang/Object;
.source "DonateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/cstudio/changecarrier/DonateActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/cstudio/changecarrier/DonateActivity;


# direct methods
.method constructor <init>(Lde/cstudio/changecarrier/DonateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lde/cstudio/changecarrier/DonateActivity$1;->this$0:Lde/cstudio/changecarrier/DonateActivity;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "button"

    .prologue
    .line 29
    const-string v1, "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=WXYTL4RGZPPEL"

    .line 30
    .local v1, donateUrl:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 31
    .local v0, browser:Landroid/content/Intent;
    iget-object v2, p0, Lde/cstudio/changecarrier/DonateActivity$1;->this$0:Lde/cstudio/changecarrier/DonateActivity;

    invoke-virtual {v2, v0}, Lde/cstudio/changecarrier/DonateActivity;->startActivity(Landroid/content/Intent;)V

    .line 32
    return-void
.end method
