.class Lcom/golgorz/hoveringcontrols/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/golgorz/hoveringcontrols/MainActivity;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/golgorz/hoveringcontrols/MainActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/golgorz/hoveringcontrols/u;->a:Lcom/golgorz/hoveringcontrols/MainActivity;

    iput-boolean p2, p0, Lcom/golgorz/hoveringcontrols/u;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/u;->a:Lcom/golgorz/hoveringcontrols/MainActivity;

    invoke-virtual {v1, v0}, Lcom/golgorz/hoveringcontrols/MainActivity;->setProgressBarIndeterminateVisibility(Z)V

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/u;->a:Lcom/golgorz/hoveringcontrols/MainActivity;

    iget-boolean v2, p0, Lcom/golgorz/hoveringcontrols/u;->b:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/golgorz/hoveringcontrols/MainActivity;->showDialog(I)V

    return-void
.end method
