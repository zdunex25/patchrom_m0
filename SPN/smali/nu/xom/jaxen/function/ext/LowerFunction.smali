.class public Lnu/xom/jaxen/function/ext/LowerFunction;
.super Lnu/xom/jaxen/function/ext/LocaleFunctionSupport;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnu/xom/jaxen/function/ext/LocaleFunctionSupport;-><init>()V

    return-void
.end method

.method public static evaluate(Ljava/lang/Object;Ljava/util/Locale;Lnu/xom/jaxen/Navigator;)Ljava/lang/String;
    .locals 2

    invoke-static {p0, p2}, Lnu/xom/jaxen/function/StringFunction;->evaluate(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v1, p1

    goto :goto_0
.end method


# virtual methods
.method public call(Lnu/xom/jaxen/Context;Ljava/util/List;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/FunctionCallException;
        }
    .end annotation

    const/4 v4, 0x1

    invoke-virtual {p1}, Lnu/xom/jaxen/Context;->getNavigator()Lnu/xom/jaxen/Navigator;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-le v1, v4, :cond_1

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lnu/xom/jaxen/function/ext/LowerFunction;->getLocale(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Ljava/util/Locale;

    move-result-object v1

    :goto_0
    invoke-static {v2, v1, v0}, Lnu/xom/jaxen/function/ext/LowerFunction;->evaluate(Ljava/lang/Object;Ljava/util/Locale;Lnu/xom/jaxen/Navigator;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lnu/xom/jaxen/FunctionCallException;

    const-string v1, "lower-case() requires at least one argument."

    invoke-direct {v0, v1}, Lnu/xom/jaxen/FunctionCallException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v1, v3

    goto :goto_0
.end method
