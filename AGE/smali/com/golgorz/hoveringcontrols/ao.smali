.class Lcom/golgorz/hoveringcontrols/ao;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/golgorz/hoveringcontrols/SensorTest;


# direct methods
.method constructor <init>(Lcom/golgorz/hoveringcontrols/SensorTest;)V
    .locals 0

    iput-object p1, p0, Lcom/golgorz/hoveringcontrols/ao;->a:Lcom/golgorz/hoveringcontrols/SensorTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/ao;->a:Lcom/golgorz/hoveringcontrols/SensorTest;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/SensorTest;->g(Lcom/golgorz/hoveringcontrols/SensorTest;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Waiting for shake"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
