.class Lcom/golgorz/hoveringcontrols/ah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/golgorz/hoveringcontrols/QuickGlance;


# direct methods
.method constructor <init>(Lcom/golgorz/hoveringcontrols/QuickGlance;)V
    .locals 0

    iput-object p1, p0, Lcom/golgorz/hoveringcontrols/ah;->a:Lcom/golgorz/hoveringcontrols/QuickGlance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "wakelock released from quickglance/lockinfo"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/ah;->a:Lcom/golgorz/hoveringcontrols/QuickGlance;

    iget-object v0, v0, Lcom/golgorz/hoveringcontrols/QuickGlance;->k:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/ah;->a:Lcom/golgorz/hoveringcontrols/QuickGlance;

    invoke-virtual {v0}, Lcom/golgorz/hoveringcontrols/QuickGlance;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method