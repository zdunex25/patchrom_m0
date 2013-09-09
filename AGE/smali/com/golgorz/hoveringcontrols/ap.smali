.class Lcom/golgorz/hoveringcontrols/ap;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lcom/golgorz/hoveringcontrols/SensorTest;


# direct methods
.method constructor <init>(Lcom/golgorz/hoveringcontrols/SensorTest;)V
    .locals 0

    iput-object p1, p0, Lcom/golgorz/hoveringcontrols/ap;->a:Lcom/golgorz/hoveringcontrols/SensorTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/ap;->a:Lcom/golgorz/hoveringcontrols/SensorTest;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/SensorTest;->i(Lcom/golgorz/hoveringcontrols/SensorTest;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "started seekbar"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "stopped seekbar"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/SensorTest;->a(I)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/ap;->a:Lcom/golgorz/hoveringcontrols/SensorTest;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/SensorTest;->h(Lcom/golgorz/hoveringcontrols/SensorTest;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sensibility"

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
