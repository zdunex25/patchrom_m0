.class Lcom/golgorz/hoveringcontrols/am;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/golgorz/hoveringcontrols/QuickGlance;


# direct methods
.method constructor <init>(Lcom/golgorz/hoveringcontrols/QuickGlance;)V
    .locals 0

    iput-object p1, p0, Lcom/golgorz/hoveringcontrols/am;->a:Lcom/golgorz/hoveringcontrols/QuickGlance;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/am;->a:Lcom/golgorz/hoveringcontrols/QuickGlance;

    invoke-virtual {v0}, Lcom/golgorz/hoveringcontrols/QuickGlance;->finish()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "QUICKGLANCE KILLED"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
