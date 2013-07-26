.class abstract Lnu/xom/jaxen/expr/DefaultRelationalExpr;
.super Lnu/xom/jaxen/expr/DefaultTruthExpr;

# interfaces
.implements Lnu/xom/jaxen/expr/RelationalExpr;


# direct methods
.method constructor <init>(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/Expr;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnu/xom/jaxen/expr/DefaultTruthExpr;-><init>(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/Expr;)V

    return-void
.end method

.method private evaluateObjectObject(Ljava/lang/Object;Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Z
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v0, v3

    :goto_0
    return v0

    :cond_1
    invoke-static {p1, p3}, Lnu/xom/jaxen/function/NumberFunction;->evaluate(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Ljava/lang/Double;

    move-result-object v0

    invoke-static {p2, p3}, Lnu/xom/jaxen/function/NumberFunction;->evaluate(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0}, Lnu/xom/jaxen/function/NumberFunction;->isNaN(Ljava/lang/Double;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lnu/xom/jaxen/function/NumberFunction;->isNaN(Ljava/lang/Double;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0, v1}, Lnu/xom/jaxen/expr/DefaultRelationalExpr;->evaluateDoubleDouble(Ljava/lang/Double;Ljava/lang/Double;)Z

    move-result v0

    goto :goto_0
.end method

.method private evaluateSetSet(Ljava/util/List;Ljava/util/List;Lnu/xom/jaxen/Navigator;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0, p1}, Lnu/xom/jaxen/expr/DefaultRelationalExpr;->setIsEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lnu/xom/jaxen/expr/DefaultRelationalExpr;->setIsEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v1, v3, p3}, Lnu/xom/jaxen/expr/DefaultRelationalExpr;->evaluateObjectObject(Ljava/lang/Object;Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method


# virtual methods
.method public evaluate(Lnu/xom/jaxen/Context;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultRelationalExpr;->getLHS()Lnu/xom/jaxen/expr/Expr;

    move-result-object v0

    invoke-interface {v0, p1}, Lnu/xom/jaxen/expr/Expr;->evaluate(Lnu/xom/jaxen/Context;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultRelationalExpr;->getRHS()Lnu/xom/jaxen/expr/Expr;

    move-result-object v1

    invoke-interface {v1, p1}, Lnu/xom/jaxen/expr/Expr;->evaluate(Lnu/xom/jaxen/Context;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lnu/xom/jaxen/Context;->getNavigator()Lnu/xom/jaxen/Navigator;

    move-result-object v2

    invoke-virtual {p0, v0, v1}, Lnu/xom/jaxen/expr/DefaultRelationalExpr;->bothAreSets(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast v0, Ljava/util/List;

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v0, v1, v2}, Lnu/xom/jaxen/expr/DefaultRelationalExpr;->evaluateSetSet(Ljava/util/List;Ljava/util/List;Lnu/xom/jaxen/Navigator;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0, v1}, Lnu/xom/jaxen/expr/DefaultRelationalExpr;->eitherIsSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v0}, Lnu/xom/jaxen/expr/DefaultRelationalExpr;->isSet(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    check-cast v0, Ljava/util/List;

    invoke-static {v1}, Lnu/xom/jaxen/expr/DefaultRelationalExpr;->convertToList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lnu/xom/jaxen/expr/DefaultRelationalExpr;->evaluateSetSet(Ljava/util/List;Ljava/util/List;Lnu/xom/jaxen/Navigator;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lnu/xom/jaxen/expr/DefaultRelationalExpr;->convertToList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v0, v1, v2}, Lnu/xom/jaxen/expr/DefaultRelationalExpr;->evaluateSetSet(Ljava/util/List;Ljava/util/List;Lnu/xom/jaxen/Navigator;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0, v1, v2}, Lnu/xom/jaxen/expr/DefaultRelationalExpr;->evaluateObjectObject(Ljava/lang/Object;Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method protected abstract evaluateDoubleDouble(Ljava/lang/Double;Ljava/lang/Double;)Z
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[(DefaultRelationalExpr): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultRelationalExpr;->getLHS()Lnu/xom/jaxen/expr/Expr;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultRelationalExpr;->getRHS()Lnu/xom/jaxen/expr/Expr;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
