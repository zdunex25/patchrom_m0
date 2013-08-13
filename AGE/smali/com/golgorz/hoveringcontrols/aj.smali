.class Lcom/golgorz/hoveringcontrols/aj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/golgorz/hoveringcontrols/SensorTest;


# direct methods
.method constructor <init>(Lcom/golgorz/hoveringcontrols/SensorTest;)V
    .locals 0

    iput-object p1, p0, Lcom/golgorz/hoveringcontrols/aj;->a:Lcom/golgorz/hoveringcontrols/SensorTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/aj;->a:Lcom/golgorz/hoveringcontrols/SensorTest;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/SensorTest;->a(Lcom/golgorz/hoveringcontrols/SensorTest;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Hover Hold"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/aj;->a:Lcom/golgorz/hoveringcontrols/SensorTest;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/SensorTest;->b(Lcom/golgorz/hoveringcontrols/SensorTest;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020005

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method
