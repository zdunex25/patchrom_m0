.class Lcom/golgorz/hoveringcontrols/as;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/golgorz/hoveringcontrols/UnlockNormal;


# direct methods
.method constructor <init>(Lcom/golgorz/hoveringcontrols/UnlockNormal;)V
    .locals 0

    iput-object p1, p0, Lcom/golgorz/hoveringcontrols/as;->a:Lcom/golgorz/hoveringcontrols/UnlockNormal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/as;->a:Lcom/golgorz/hoveringcontrols/UnlockNormal;

    invoke-virtual {v0}, Lcom/golgorz/hoveringcontrols/UnlockNormal;->finish()V

    return-void
.end method
