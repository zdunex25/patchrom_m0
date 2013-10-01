.class Lcom/golgorz/hoveringcontrols/ae;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/golgorz/hoveringcontrols/MyService;


# direct methods
.method constructor <init>(Lcom/golgorz/hoveringcontrols/MyService;)V
    .locals 0

    iput-object p1, p0, Lcom/golgorz/hoveringcontrols/ae;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/ae;->a:Lcom/golgorz/hoveringcontrols/MyService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/golgorz/hoveringcontrols/MyService;->g(Lcom/golgorz/hoveringcontrols/MyService;Z)V

    return-void
.end method
