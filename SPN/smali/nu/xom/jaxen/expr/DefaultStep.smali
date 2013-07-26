.class public abstract Lnu/xom/jaxen/expr/DefaultStep;
.super Ljava/lang/Object;

# interfaces
.implements Lnu/xom/jaxen/expr/Step;


# instance fields
.field private axis:Lnu/xom/jaxen/expr/iter/IterableAxis;

.field private predicates:Lnu/xom/jaxen/expr/PredicateSet;


# direct methods
.method public constructor <init>(Lnu/xom/jaxen/expr/iter/IterableAxis;Lnu/xom/jaxen/expr/PredicateSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnu/xom/jaxen/expr/DefaultStep;->axis:Lnu/xom/jaxen/expr/iter/IterableAxis;

    iput-object p2, p0, Lnu/xom/jaxen/expr/DefaultStep;->predicates:Lnu/xom/jaxen/expr/PredicateSet;

    return-void
.end method


# virtual methods
.method public addPredicate(Lnu/xom/jaxen/expr/Predicate;)V
    .locals 1

    iget-object v0, p0, Lnu/xom/jaxen/expr/DefaultStep;->predicates:Lnu/xom/jaxen/expr/PredicateSet;

    invoke-virtual {v0, p1}, Lnu/xom/jaxen/expr/PredicateSet;->addPredicate(Lnu/xom/jaxen/expr/Predicate;)V

    return-void
.end method

.method public axisIterator(Ljava/lang/Object;Lnu/xom/jaxen/ContextSupport;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/UnsupportedAxisException;
        }
    .end annotation

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultStep;->getIterableAxis()Lnu/xom/jaxen/expr/iter/IterableAxis;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnu/xom/jaxen/expr/iter/IterableAxis;->iterator(Ljava/lang/Object;Lnu/xom/jaxen/ContextSupport;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public evaluate(Lnu/xom/jaxen/Context;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    invoke-virtual {p1}, Lnu/xom/jaxen/Context;->getNodeSet()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lnu/xom/jaxen/expr/IdentitySet;

    invoke-direct {v1}, Lnu/xom/jaxen/expr/IdentitySet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lnu/xom/jaxen/Context;->getContextSupport()Lnu/xom/jaxen/ContextSupport;

    move-result-object v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_2

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, Lnu/xom/jaxen/expr/DefaultStep;->axis:Lnu/xom/jaxen/expr/iter/IterableAxis;

    invoke-virtual {v8, v7, v5}, Lnu/xom/jaxen/expr/iter/IterableAxis;->iterator(Ljava/lang/Object;Lnu/xom/jaxen/ContextSupport;)Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v8}, Lnu/xom/jaxen/expr/IdentitySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {p0, v8, v5}, Lnu/xom/jaxen/expr/DefaultStep;->matches(Ljava/lang/Object;Lnu/xom/jaxen/ContextSupport;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v1, v8}, Lnu/xom/jaxen/expr/IdentitySet;->add(Ljava/lang/Object;)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultStep;->getPredicateSet()Lnu/xom/jaxen/expr/PredicateSet;

    move-result-object v7

    invoke-virtual {v7, v3, v5}, Lnu/xom/jaxen/expr/PredicateSet;->evaluatePredicates(Ljava/util/List;Lnu/xom/jaxen/ContextSupport;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return-object v4
.end method

.method public getAxis()I
    .locals 1

    iget-object v0, p0, Lnu/xom/jaxen/expr/DefaultStep;->axis:Lnu/xom/jaxen/expr/iter/IterableAxis;

    invoke-virtual {v0}, Lnu/xom/jaxen/expr/iter/IterableAxis;->value()I

    move-result v0

    return v0
.end method

.method public getAxisName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultStep;->getAxis()I

    move-result v0

    invoke-static {v0}, Lnu/xom/jaxen/saxpath/Axis;->lookup(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIterableAxis()Lnu/xom/jaxen/expr/iter/IterableAxis;
    .locals 1

    iget-object v0, p0, Lnu/xom/jaxen/expr/DefaultStep;->axis:Lnu/xom/jaxen/expr/iter/IterableAxis;

    return-object v0
.end method

.method public getPredicateSet()Lnu/xom/jaxen/expr/PredicateSet;
    .locals 1

    iget-object v0, p0, Lnu/xom/jaxen/expr/DefaultStep;->predicates:Lnu/xom/jaxen/expr/PredicateSet;

    return-object v0
.end method

.method public getPredicates()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lnu/xom/jaxen/expr/DefaultStep;->predicates:Lnu/xom/jaxen/expr/PredicateSet;

    invoke-virtual {v0}, Lnu/xom/jaxen/expr/PredicateSet;->getPredicates()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnu/xom/jaxen/expr/DefaultStep;->predicates:Lnu/xom/jaxen/expr/PredicateSet;

    invoke-virtual {v0}, Lnu/xom/jaxen/expr/PredicateSet;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public simplify()V
    .locals 1

    iget-object v0, p0, Lnu/xom/jaxen/expr/DefaultStep;->predicates:Lnu/xom/jaxen/expr/PredicateSet;

    invoke-virtual {v0}, Lnu/xom/jaxen/expr/PredicateSet;->simplify()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultStep;->getIterableAxis()Lnu/xom/jaxen/expr/iter/IterableAxis;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
