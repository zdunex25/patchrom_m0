.class Lcom/golgorz/hoveringcontrols/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/golgorz/hoveringcontrols/MyService;


# direct methods
.method constructor <init>(Lcom/golgorz/hoveringcontrols/MyService;)V
    .locals 0

    iput-object p1, p0, Lcom/golgorz/hoveringcontrols/z;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x1

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.KEY_EVENT"

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x1

    const/16 v4, 0x4f

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/z;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/MyService;->l(Lcom/golgorz/hoveringcontrols/MyService;)B

    move-result v1

    if-ne v1, v5, :cond_0

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/z;->a:Lcom/golgorz/hoveringcontrols/MyService;

    const-string v2, "android.permission.CALL_PRIVILEGED"

    invoke-virtual {v1, v0, v2}, Lcom/golgorz/hoveringcontrols/MyService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/z;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-virtual {v1}, Lcom/golgorz/hoveringcontrols/MyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Unable to auto-answer the call"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
