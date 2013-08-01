.class Lcom/golgorz/hoveringcontrols/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/golgorz/hoveringcontrols/MyService;


# direct methods
.method constructor <init>(Lcom/golgorz/hoveringcontrols/MyService;)V
    .locals 0

    iput-object p1, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->F(Lcom/golgorz/hoveringcontrols/MyService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->w(Lcom/golgorz/hoveringcontrols/MyService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
