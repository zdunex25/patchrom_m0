.class public Lnu/xom/jaxen/expr/DefaultFilterExpr;
.super Lnu/xom/jaxen/expr/DefaultExpr;

# interfaces
.implements Lnu/xom/jaxen/expr/FilterExpr;
.implements Lnu/xom/jaxen/expr/Predicated;


# static fields
.field private static final serialVersionUID:J = -0x7a0b7447af91c67L


# instance fields
.field private expr:Lnu/xom/jaxen/expr/Expr;

.field private predicates:Lnu/xom/jaxen/expr/PredicateSet;


# direct methods
.method public constructor <init>(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/PredicateSet;)V
    .locals 0

    invoke-direct {p0}, Lnu/xom/jaxen/expr/DefaultExpr;-><init>()V

    iput-object p1, p0, Lnu/xom/jaxen/expr/DefaultFilterExpr;->expr:Lnu/xom/jaxen/expr/Expr;

    iput-object p2, p0, Lnu/xom/jaxen/expr/DefaultFilterExpr;->predicates:Lnu/xom/jaxen/expr/PredicateSet;

    return-void
.end method

.method public constructor <init>(Lnu/xom/jaxen/expr/PredicateSet;)V
    .locals 0

    invoke-direct {p0}, Lnu/xom/jaxen/expr/DefaultExpr;-><init>()V

    iput-object p1, p0, Lnu/xom/jaxen/expr/DefaultFilterExpr;->predicates:Lnu/xom/jaxen/expr/PredicateSet;

    return-void
.end method


# virtual methods
.method public addPredicate(Lnu/xom/jaxen/expr/Predicate;)V
    .locals 1

    iget-object v0, p0, Lnu/xom/jaxen/expr/DefaultFilterExpr;->predicates:Lnu/xom/jaxen/expr/PredicateSet;

    invoke-virtual {v0, p1}, Lnu/xom/jaxen/expr/PredicateSet;->addPredicate(Lnu/xom/jaxen/expr/Predicate;)V

    return-void
.end method

.method public asBoolean(Lnu/xom/jaxen/Context;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    iget-object v1, p0, Lnu/xom/jaxen/expr/DefaultFilterExpr;->expr:Lnu/xom/jaxen/expr/Expr;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnu/xom/jaxen/expr/DefaultFilterExpr;->expr:Lnu/xom/jaxen/expr/Expr;

    invoke-interface {v1, p1}, Lnu/xom/jaxen/expr/Expr;->evaluate(Lnu/xom/jaxen/Context;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Ljava/lang/Boolean;

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_1
    return v1

    :cond_0
    invoke-virtual {p1}, Lnu/xom/jaxen/Context;->getNodeSet()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v1, v2

    goto :goto_0

    :cond_1
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultFilterExpr;->getPredicateSet()Lnu/xom/jaxen/expr/PredicateSet;

    move-result-object v2

    check-cast v1, Ljava/util/List;

    invoke-virtual {p1}, Lnu/xom/jaxen/Context;->getContextSupport()Lnu/xom/jaxen/ContextSupport;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lnu/xom/jaxen/expr/PredicateSet;->evaluateAsBoolean(Ljava/util/List;Lnu/xom/jaxen/ContextSupport;)Z

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public evaluate(Lnu/xom/jaxen/Context;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultFilterExpr;->getExpr()Lnu/xom/jaxen/expr/Expr;

    move-result-object v1

    invoke-interface {v1, p1}, Lnu/xom/jaxen/expr/Expr;->evaluate(Lnu/xom/jaxen/Context;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultFilterExpr;->getPredicateSet()Lnu/xom/jaxen/expr/PredicateSet;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    move-object p0, v0

    invoke-virtual {p1}, Lnu/xom/jaxen/Context;->getContextSupport()Lnu/xom/jaxen/ContextSupport;

    move-result-object v1

    invoke-virtual {v2, p0, v1}, Lnu/xom/jaxen/expr/PredicateSet;->evaluatePredicates(Ljava/util/List;Lnu/xom/jaxen/ContextSupport;)Ljava/util/List;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getExpr()Lnu/xom/jaxen/expr/Expr;
    .locals 1

    iget-object v0, p0, Lnu/xom/jaxen/expr/DefaultFilterExpr;->expr:Lnu/xom/jaxen/expr/Expr;

    return-object v0
.end method

.method public getPredicateSet()Lnu/xom/jaxen/expr/PredicateSet;
    .locals 1

    iget-object v0, p0, Lnu/xom/jaxen/expr/DefaultFilterExpr;->predicates:Lnu/xom/jaxen/expr/PredicateSet;

    return-object v0
.end method

.method public getPredicates()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lnu/xom/jaxen/expr/DefaultFilterExpr;->predicates:Lnu/xom/jaxen/expr/PredicateSet;

    invoke-virtual {v0}, Lnu/xom/jaxen/expr/PredicateSet;->getPredicates()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    iget-object v1, p0, Lnu/xom/jaxen/expr/DefaultFilterExpr;->expr:Lnu/xom/jaxen/expr/Expr;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lnu/xom/jaxen/expr/DefaultFilterExpr;->expr:Lnu/xom/jaxen/expr/Expr;

    invoke-interface {v0}, Lnu/xom/jaxen/expr/Expr;->getText()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lnu/xom/jaxen/expr/DefaultFilterExpr;->predicates:Lnu/xom/jaxen/expr/PredicateSet;

    invoke-virtual {v1}, Lnu/xom/jaxen/expr/PredicateSet;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public simplify()Lnu/xom/jaxen/expr/Expr;
    .locals 1

    iget-object v0, p0, Lnu/xom/jaxen/expr/DefaultFilterExpr;->predicates:Lnu/xom/jaxen/expr/PredicateSet;

    invoke-virtual {v0}, Lnu/xom/jaxen/expr/PredicateSet;->simplify()V

    iget-object v0, p0, Lnu/xom/jaxen/expr/DefaultFilterExpr;->expr:Lnu/xom/jaxen/expr/Expr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnu/xom/jaxen/expr/DefaultFilterExpr;->expr:Lnu/xom/jaxen/expr/Expr;

    invoke-interface {v0}, Lnu/xom/jaxen/expr/Expr;->simplify()Lnu/xom/jaxen/expr/Expr;

    move-result-object v0

    iput-object v0, p0, Lnu/xom/jaxen/expr/DefaultFilterExpr;->expr:Lnu/xom/jaxen/expr/Expr;

    :cond_0
    iget-object v0, p0, Lnu/xom/jaxen/expr/DefaultFilterExpr;->predicates:Lnu/xom/jaxen/expr/PredicateSet;

    invoke-virtual {v0}, Lnu/xom/jaxen/expr/PredicateSet;->getPredicates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultFilterExpr;->getExpr()Lnu/xom/jaxen/expr/Expr;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[(DefaultFilterExpr): expr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lnu/xom/jaxen/expr/DefaultFilterExpr;->expr:Lnu/xom/jaxen/expr/Expr;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " predicates: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lnu/xom/jaxen/expr/DefaultFilterExpr;->predicates:Lnu/xom/jaxen/expr/PredicateSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
