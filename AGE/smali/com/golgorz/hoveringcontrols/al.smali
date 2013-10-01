.class Lcom/golgorz/hoveringcontrols/al;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/golgorz/hoveringcontrols/QuickGlance;


# direct methods
.method constructor <init>(Lcom/golgorz/hoveringcontrols/QuickGlance;)V
    .locals 0

    iput-object p1, p0, Lcom/golgorz/hoveringcontrols/al;->a:Lcom/golgorz/hoveringcontrols/QuickGlance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "wakelock released from quickglance/lockinfo"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/al;->a:Lcom/golgorz/hoveringcontrols/QuickGlance;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Lcom/golgorz/hoveringcontrols/QuickGlance;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/al;->a:Lcom/golgorz/hoveringcontrols/QuickGlance;

    invoke-virtual {v2}, Lcom/golgorz/hoveringcontrols/QuickGlance;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/golgorz/hoveringcontrols/DeviceAdminSample;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "DEBEMOS HACER LOCK"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->lockNow()V

    :goto_0
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/al;->a:Lcom/golgorz/hoveringcontrols/QuickGlance;

    iget-object v0, v0, Lcom/golgorz/hoveringcontrols/QuickGlance;->k:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/al;->a:Lcom/golgorz/hoveringcontrols/QuickGlance;

    invoke-virtual {v0}, Lcom/golgorz/hoveringcontrols/QuickGlance;->finish()V

    :goto_1
    return-void

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "not active"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
