.class Lcom/golgorz/hoveringcontrols/ak;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field final synthetic e:Lcom/golgorz/hoveringcontrols/QuickGlance;


# direct methods
.method constructor <init>(Lcom/golgorz/hoveringcontrols/QuickGlance;)V
    .locals 1

    const/4 v0, -0x1

    iput-object p1, p0, Lcom/golgorz/hoveringcontrols/ak;->e:Lcom/golgorz/hoveringcontrols/QuickGlance;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput v0, p0, Lcom/golgorz/hoveringcontrols/ak;->a:I

    iput v0, p0, Lcom/golgorz/hoveringcontrols/ak;->b:I

    iput v0, p0, Lcom/golgorz/hoveringcontrols/ak;->c:I

    iput v0, p0, Lcom/golgorz/hoveringcontrols/ak;->d:I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v1, -0x1

    const-string v0, "level"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/golgorz/hoveringcontrols/ak;->b:I

    const-string v0, "scale"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/golgorz/hoveringcontrols/ak;->a:I

    const-string v0, "temperature"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/golgorz/hoveringcontrols/ak;->d:I

    const-string v0, "voltage"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/golgorz/hoveringcontrols/ak;->c:I

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/ak;->e:Lcom/golgorz/hoveringcontrols/QuickGlance;

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/golgorz/hoveringcontrols/ak;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/golgorz/hoveringcontrols/QuickGlance;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/ak;->e:Lcom/golgorz/hoveringcontrols/QuickGlance;

    iget-object v0, v0, Lcom/golgorz/hoveringcontrols/QuickGlance;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/ak;->e:Lcom/golgorz/hoveringcontrols/QuickGlance;

    iget-object v1, v1, Lcom/golgorz/hoveringcontrols/QuickGlance;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BatteryManager level is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/golgorz/hoveringcontrols/ak;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/golgorz/hoveringcontrols/ak;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", temp is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/golgorz/hoveringcontrols/ak;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", voltage is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/golgorz/hoveringcontrols/ak;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
