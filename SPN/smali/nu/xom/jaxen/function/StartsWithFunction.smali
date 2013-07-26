.class public Lnu/xom/jaxen/function/StartsWithFunction;
.super Ljava/lang/Object;

# interfaces
.implements Lnu/xom/jaxen/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static evaluate(Ljava/lang/Object;Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Ljava/lang/Boolean;
    .locals 2

    invoke-static {p0, p2}, Lnu/xom/jaxen/function/StringFunction;->evaluate(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lnu/xom/jaxen/function/StringFunction;->evaluate(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method


# virtual methods
.method public call(Lnu/xom/jaxen/Context;Ljava/util/List;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/FunctionCallException;
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lnu/xom/jaxen/Context;->getNavigator()Lnu/xom/jaxen/Navigator;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnu/xom/jaxen/function/StartsWithFunction;->evaluate(Ljava/lang/Object;Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lnu/xom/jaxen/FunctionCallException;

    const-string v1, "starts-with() requires two arguments."

    invoke-direct {v0, v1}, Lnu/xom/jaxen/FunctionCallException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
