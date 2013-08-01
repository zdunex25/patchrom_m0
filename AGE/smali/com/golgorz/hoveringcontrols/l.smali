.class Lcom/golgorz/hoveringcontrols/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/golgorz/hoveringcontrols/MyService;


# direct methods
.method constructor <init>(Lcom/golgorz/hoveringcontrols/MyService;)V
    .locals 0

    iput-object p1, p0, Lcom/golgorz/hoveringcontrols/l;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.KEY_EVENT"

    new-instance v2, Landroid/view/KeyEvent;

    const/16 v3, 0x4f

    invoke-direct {v2, v4, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/l;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/MyService;->i(Lcom/golgorz/hoveringcontrols/MyService;)I

    move-result v1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/l;->a:Lcom/golgorz/hoveringcontrols/MyService;

    const-string v2, "android.permission.CALL_PRIVILEGED"

    invoke-virtual {v1, v0, v2}, Lcom/golgorz/hoveringcontrols/MyService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
