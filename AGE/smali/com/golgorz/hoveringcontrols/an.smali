.class Lcom/golgorz/hoveringcontrols/an;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/golgorz/hoveringcontrols/SensorTest;


# direct methods
.method constructor <init>(Lcom/golgorz/hoveringcontrols/SensorTest;)V
    .locals 0

    iput-object p1, p0, Lcom/golgorz/hoveringcontrols/an;->a:Lcom/golgorz/hoveringcontrols/SensorTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RUNNING NEWRUNABLE:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/an;->a:Lcom/golgorz/hoveringcontrols/SensorTest;

    invoke-static {v2}, Lcom/golgorz/hoveringcontrols/SensorTest;->a(Lcom/golgorz/hoveringcontrols/SensorTest;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/an;->a:Lcom/golgorz/hoveringcontrols/SensorTest;

    invoke-static {v2}, Lcom/golgorz/hoveringcontrols/SensorTest;->b(Lcom/golgorz/hoveringcontrols/SensorTest;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/an;->a:Lcom/golgorz/hoveringcontrols/SensorTest;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/SensorTest;->c(Lcom/golgorz/hoveringcontrols/SensorTest;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/an;->a:Lcom/golgorz/hoveringcontrols/SensorTest;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/SensorTest;->d(Lcom/golgorz/hoveringcontrols/SensorTest;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Hover Hold:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/an;->a:Lcom/golgorz/hoveringcontrols/SensorTest;

    invoke-static {v2}, Lcom/golgorz/hoveringcontrols/SensorTest;->c(Lcom/golgorz/hoveringcontrols/SensorTest;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/an;->a:Lcom/golgorz/hoveringcontrols/SensorTest;

    invoke-static {v2}, Lcom/golgorz/hoveringcontrols/SensorTest;->a(Lcom/golgorz/hoveringcontrols/SensorTest;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/an;->a:Lcom/golgorz/hoveringcontrols/SensorTest;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/SensorTest;->e(Lcom/golgorz/hoveringcontrols/SensorTest;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020008

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "HOLDINGGGG"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/an;->a:Lcom/golgorz/hoveringcontrols/SensorTest;

    invoke-static {v0, v3}, Lcom/golgorz/hoveringcontrols/SensorTest;->a(Lcom/golgorz/hoveringcontrols/SensorTest;I)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/an;->a:Lcom/golgorz/hoveringcontrols/SensorTest;

    invoke-static {v0, v3}, Lcom/golgorz/hoveringcontrols/SensorTest;->a(Lcom/golgorz/hoveringcontrols/SensorTest;Z)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/an;->a:Lcom/golgorz/hoveringcontrols/SensorTest;

    invoke-static {v0, v4}, Lcom/golgorz/hoveringcontrols/SensorTest;->b(Lcom/golgorz/hoveringcontrols/SensorTest;Z)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/an;->a:Lcom/golgorz/hoveringcontrols/SensorTest;

    invoke-static {v0, v3}, Lcom/golgorz/hoveringcontrols/SensorTest;->c(Lcom/golgorz/hoveringcontrols/SensorTest;Z)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/an;->a:Lcom/golgorz/hoveringcontrols/SensorTest;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/golgorz/hoveringcontrols/SensorTest;->a(Lcom/golgorz/hoveringcontrols/SensorTest;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/an;->a:Lcom/golgorz/hoveringcontrols/SensorTest;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/SensorTest;->a(Lcom/golgorz/hoveringcontrols/SensorTest;)I

    move-result v0

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/an;->a:Lcom/golgorz/hoveringcontrols/SensorTest;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/SensorTest;->b(Lcom/golgorz/hoveringcontrols/SensorTest;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ONE SLIDERRRR"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/an;->a:Lcom/golgorz/hoveringcontrols/SensorTest;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/SensorTest;->d(Lcom/golgorz/hoveringcontrols/SensorTest;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Slide Once. Slide duration:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/an;->a:Lcom/golgorz/hoveringcontrols/SensorTest;

    invoke-static {v2}, Lcom/golgorz/hoveringcontrols/SensorTest;->f(Lcom/golgorz/hoveringcontrols/SensorTest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/an;->a:Lcom/golgorz/hoveringcontrols/SensorTest;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/SensorTest;->e(Lcom/golgorz/hoveringcontrols/SensorTest;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020010

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/an;->a:Lcom/golgorz/hoveringcontrols/SensorTest;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/SensorTest;->a(Lcom/golgorz/hoveringcontrols/SensorTest;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/an;->a:Lcom/golgorz/hoveringcontrols/SensorTest;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/SensorTest;->b(Lcom/golgorz/hoveringcontrols/SensorTest;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "TWO SLIDERRRRS"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/an;->a:Lcom/golgorz/hoveringcontrols/SensorTest;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/SensorTest;->d(Lcom/golgorz/hoveringcontrols/SensorTest;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Slide Twice. Slides duration:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/an;->a:Lcom/golgorz/hoveringcontrols/SensorTest;

    invoke-static {v2}, Lcom/golgorz/hoveringcontrols/SensorTest;->f(Lcom/golgorz/hoveringcontrols/SensorTest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/an;->a:Lcom/golgorz/hoveringcontrols/SensorTest;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/SensorTest;->e(Lcom/golgorz/hoveringcontrols/SensorTest;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020015

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/an;->a:Lcom/golgorz/hoveringcontrols/SensorTest;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/SensorTest;->d(Lcom/golgorz/hoveringcontrols/SensorTest;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No action recognized. Slide(s) duration:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/an;->a:Lcom/golgorz/hoveringcontrols/SensorTest;

    invoke-static {v2}, Lcom/golgorz/hoveringcontrols/SensorTest;->f(Lcom/golgorz/hoveringcontrols/SensorTest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
