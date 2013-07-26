.class abstract Lnu/xom/jaxen/expr/DefaultEqualityExpr;
.super Lnu/xom/jaxen/expr/DefaultTruthExpr;

# interfaces
.implements Lnu/xom/jaxen/expr/EqualityExpr;


# direct methods
.method constructor <init>(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/Expr;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnu/xom/jaxen/expr/DefaultTruthExpr;-><init>(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/Expr;)V

    return-void
.end method

.method private evaluateObjectObject(Ljava/lang/Object;Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Z
    .locals 2

    invoke-virtual {p0, p1, p2}, Lnu/xom/jaxen/expr/DefaultEqualityExpr;->eitherIsBoolean(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p3}, Lnu/xom/jaxen/function/BooleanFunction;->evaluate(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2, p3}, Lnu/xom/jaxen/function/BooleanFunction;->evaluate(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnu/xom/jaxen/expr/DefaultEqualityExpr;->evaluateObjectObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lnu/xom/jaxen/expr/DefaultEqualityExpr;->eitherIsNumber(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p3}, Lnu/xom/jaxen/function/NumberFunction;->evaluate(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Ljava/lang/Double;

    move-result-object v0

    invoke-static {p2, p3}, Lnu/xom/jaxen/function/NumberFunction;->evaluate(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnu/xom/jaxen/expr/DefaultEqualityExpr;->evaluateObjectObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {p1, p3}, Lnu/xom/jaxen/function/StringFunction;->evaluate(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3}, Lnu/xom/jaxen/function/StringFunction;->evaluate(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnu/xom/jaxen/expr/DefaultEqualityExpr;->evaluateObjectObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private evaluateSetSet(Ljava/util/List;Ljava/util/List;Lnu/xom/jaxen/Navigator;)Ljava/lang/Boolean;
    .locals 4

    invoke-virtual {p0, p1}, Lnu/xom/jaxen/expr/DefaultEqualityExpr;->setIsEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lnu/xom/jaxen/expr/DefaultEqualityExpr;->setIsEmpty(Ljava/util/List;)Z

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

    invoke-direct {p0, v1, v3, p3}, Lnu/xom/jaxen/expr/DefaultEqualityExpr;->evaluateObjectObject(Ljava/lang/Object;Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Z

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

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultEqualityExpr;->getLHS()Lnu/xom/jaxen/expr/Expr;

    move-result-object v0

    invoke-interface {v0, p1}, Lnu/xom/jaxen/expr/Expr;->evaluate(Lnu/xom/jaxen/Context;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultEqualityExpr;->getRHS()Lnu/xom/jaxen/expr/Expr;

    move-result-object v1

    invoke-interface {v1, p1}, Lnu/xom/jaxen/expr/Expr;->evaluate(Lnu/xom/jaxen/Context;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lnu/xom/jaxen/Context;->getNavigator()Lnu/xom/jaxen/Navigator;

    move-result-object v2

    invoke-virtual {p0, v0, v1}, Lnu/xom/jaxen/expr/DefaultEqualityExpr;->bothAreSets(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    check-cast v0, Ljava/util/List;

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v0, v1, v2}, Lnu/xom/jaxen/expr/DefaultEqualityExpr;->evaluateSetSet(Ljava/util/List;Ljava/util/List;Lnu/xom/jaxen/Navigator;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lnu/xom/jaxen/expr/DefaultEqualityExpr;->isSet(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, v1}, Lnu/xom/jaxen/expr/DefaultEqualityExpr;->isBoolean(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    check-cast v1, Ljava/lang/Boolean;

    invoke-direct {p0, v0, v1, v2}, Lnu/xom/jaxen/expr/DefaultEqualityExpr;->evaluateObjectObject(Ljava/lang/Object;Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0}, Lnu/xom/jaxen/expr/DefaultEqualityExpr;->isBoolean(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0, v1}, Lnu/xom/jaxen/expr/DefaultEqualityExpr;->isSet(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    check-cast v0, Ljava/lang/Boolean;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2
    invoke-direct {p0, v0, v1, v2}, Lnu/xom/jaxen/expr/DefaultEqualityExpr;->evaluateObjectObject(Ljava/lang/Object;Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_5
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v0, v1}, Lnu/xom/jaxen/expr/DefaultEqualityExpr;->eitherIsSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0, v0}, Lnu/xom/jaxen/expr/DefaultEqualityExpr;->isSet(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    check-cast v0, Ljava/util/List;

    invoke-static {v1}, Lnu/xom/jaxen/expr/DefaultEqualityExpr;->convertToList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lnu/xom/jaxen/expr/DefaultEqualityExpr;->evaluateSetSet(Ljava/util/List;Ljava/util/List;Lnu/xom/jaxen/Navigator;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_7
    invoke-static {v0}, Lnu/xom/jaxen/expr/DefaultEqualityExpr;->convertToList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v0, v1, v2}, Lnu/xom/jaxen/expr/DefaultEqualityExpr;->evaluateSetSet(Ljava/util/List;Ljava/util/List;Lnu/xom/jaxen/Navigator;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_8
    invoke-direct {p0, v0, v1, v2}, Lnu/xom/jaxen/expr/DefaultEqualityExpr;->evaluateObjectObject(Ljava/lang/Object;Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected abstract evaluateObjectObject(Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[(DefaultEqualityExpr): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultEqualityExpr;->getLHS()Lnu/xom/jaxen/expr/Expr;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultEqualityExpr;->getRHS()Lnu/xom/jaxen/expr/Expr;

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
