.class Lcom/golgorz/hoveringcontrols/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/a/a/m;


# instance fields
.field final synthetic a:Lcom/golgorz/hoveringcontrols/MainActivity;


# direct methods
.method private constructor <init>(Lcom/golgorz/hoveringcontrols/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/golgorz/hoveringcontrols/w;->a:Lcom/golgorz/hoveringcontrols/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/golgorz/hoveringcontrols/MainActivity;Lcom/golgorz/hoveringcontrols/w;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/golgorz/hoveringcontrols/w;-><init>(Lcom/golgorz/hoveringcontrols/MainActivity;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/w;->a:Lcom/golgorz/hoveringcontrols/MainActivity;

    invoke-virtual {v0}, Lcom/golgorz/hoveringcontrols/MainActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/w;->a:Lcom/golgorz/hoveringcontrols/MainActivity;

    const-string v1, "allow"

    invoke-static {v0, v1}, Lcom/golgorz/hoveringcontrols/MainActivity;->a(Lcom/golgorz/hoveringcontrols/MainActivity;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "allow"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(I)V
    .locals 2

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/w;->a:Lcom/golgorz/hoveringcontrols/MainActivity;

    invoke-virtual {v0}, Lcom/golgorz/hoveringcontrols/MainActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/w;->a:Lcom/golgorz/hoveringcontrols/MainActivity;

    const-string v1, "do not allow"

    invoke-static {v0, v1}, Lcom/golgorz/hoveringcontrols/MainActivity;->a(Lcom/golgorz/hoveringcontrols/MainActivity;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "do not allow"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/w;->a:Lcom/golgorz/hoveringcontrols/MainActivity;

    const/16 v0, 0x123

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v0}, Lcom/golgorz/hoveringcontrols/MainActivity;->a(Lcom/golgorz/hoveringcontrols/MainActivity;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public c(I)V
    .locals 4

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/w;->a:Lcom/golgorz/hoveringcontrols/MainActivity;

    invoke-virtual {v0}, Lcom/golgorz/hoveringcontrols/MainActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "license code error, contact developer"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/w;->a:Lcom/golgorz/hoveringcontrols/MainActivity;

    invoke-static {v1, v0}, Lcom/golgorz/hoveringcontrols/MainActivity;->a(Lcom/golgorz/hoveringcontrols/MainActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
