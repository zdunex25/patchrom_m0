.class Lcom/golgorz/hoveringcontrols/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/golgorz/hoveringcontrols/QuickGlance;


# direct methods
.method constructor <init>(Lcom/golgorz/hoveringcontrols/QuickGlance;)V
    .locals 0

    iput-object p1, p0, Lcom/golgorz/hoveringcontrols/ag;->a:Lcom/golgorz/hoveringcontrols/QuickGlance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/ag;->a:Lcom/golgorz/hoveringcontrols/QuickGlance;

    invoke-virtual {v0}, Lcom/golgorz/hoveringcontrols/QuickGlance;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/ag;->a:Lcom/golgorz/hoveringcontrols/QuickGlance;

    const v2, 0x1000001a

    const-string v3, "Hovering Controls"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, v1, Lcom/golgorz/hoveringcontrols/QuickGlance;->k:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/ag;->a:Lcom/golgorz/hoveringcontrols/QuickGlance;

    iget-object v0, v0, Lcom/golgorz/hoveringcontrols/QuickGlance;->k:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void
.end method
