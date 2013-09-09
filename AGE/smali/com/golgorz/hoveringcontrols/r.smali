.class Lcom/golgorz/hoveringcontrols/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field a:Z

.field final synthetic b:Lcom/golgorz/hoveringcontrols/MainActivity;


# direct methods
.method constructor <init>(Lcom/golgorz/hoveringcontrols/MainActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/golgorz/hoveringcontrols/r;->b:Lcom/golgorz/hoveringcontrols/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/golgorz/hoveringcontrols/r;->a:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-boolean v0, p0, Lcom/golgorz/hoveringcontrols/r;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/r;->b:Lcom/golgorz/hoveringcontrols/MainActivity;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MainActivity;->a(Lcom/golgorz/hoveringcontrols/MainActivity;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://market.android.com/details?id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/golgorz/hoveringcontrols/r;->b:Lcom/golgorz/hoveringcontrols/MainActivity;

    invoke-virtual {v3}, Lcom/golgorz/hoveringcontrols/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/r;->b:Lcom/golgorz/hoveringcontrols/MainActivity;

    invoke-virtual {v1, v0}, Lcom/golgorz/hoveringcontrols/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
