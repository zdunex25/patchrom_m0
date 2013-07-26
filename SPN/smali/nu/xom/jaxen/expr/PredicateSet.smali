.class public Lnu/xom/jaxen/expr/PredicateSet;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x63747e449e1e84bdL


# instance fields
.field private predicates:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lnu/xom/jaxen/expr/PredicateSet;->predicates:Ljava/util/List;

    return-void
.end method

.method private anyMatchingNode(Ljava/util/List;Lnu/xom/jaxen/ContextSupport;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lnu/xom/jaxen/expr/PredicateSet;->predicates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnu/xom/jaxen/expr/PredicateSet;->predicates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Lnu/xom/jaxen/Context;

    invoke-direct {v2, p2}, Lnu/xom/jaxen/Context;-><init>(Lnu/xom/jaxen/ContextSupport;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2, v3}, Lnu/xom/jaxen/Context;->setNodeSet(Ljava/util/List;)V

    move v4, v7

    :goto_1
    if-ge v4, v1, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v3}, Lnu/xom/jaxen/Context;->setNodeSet(Ljava/util/List;)V

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v2, v5}, Lnu/xom/jaxen/Context;->setPosition(I)V

    invoke-virtual {v2, v1}, Lnu/xom/jaxen/Context;->setSize(I)V

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnu/xom/jaxen/expr/Predicate;

    invoke-interface {p0, v2}, Lnu/xom/jaxen/expr/Predicate;->evaluate(Lnu/xom/jaxen/Context;)Ljava/lang/Object;

    move-result-object p0

    instance-of v5, p0, Ljava/lang/Number;

    if-eqz v5, :cond_2

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v5

    add-int/lit8 v6, v4, 0x1

    if-ne v5, v6, :cond_3

    move v0, v8

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lnu/xom/jaxen/Context;->getNavigator()Lnu/xom/jaxen/Navigator;

    move-result-object v5

    invoke-static {p0, v5}, Lnu/xom/jaxen/function/BooleanFunction;->evaluate(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    move v0, v8

    goto :goto_0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    move v0, v7

    goto :goto_0
.end method


# virtual methods
.method public addPredicate(Lnu/xom/jaxen/expr/Predicate;)V
    .locals 2

    iget-object v0, p0, Lnu/xom/jaxen/expr/PredicateSet;->predicates:Ljava/util/List;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnu/xom/jaxen/expr/PredicateSet;->predicates:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lnu/xom/jaxen/expr/PredicateSet;->predicates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public applyPredicate(Lnu/xom/jaxen/expr/Predicate;Ljava/util/List;Lnu/xom/jaxen/ContextSupport;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Lnu/xom/jaxen/Context;

    invoke-direct {v2, p3}, Lnu/xom/jaxen/Context;-><init>(Lnu/xom/jaxen/ContextSupport;)V

    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2, v3}, Lnu/xom/jaxen/Context;->setNodeSet(Ljava/util/List;)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v3}, Lnu/xom/jaxen/Context;->setNodeSet(Ljava/util/List;)V

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v2, v6}, Lnu/xom/jaxen/Context;->setPosition(I)V

    invoke-virtual {v2, v0}, Lnu/xom/jaxen/Context;->setSize(I)V

    invoke-interface {p1, v2}, Lnu/xom/jaxen/expr/Predicate;->evaluate(Lnu/xom/jaxen/Context;)Ljava/lang/Object;

    move-result-object p0

    instance-of v6, p0, Ljava/lang/Number;

    if-eqz v6, :cond_1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v6

    add-int/lit8 v7, v4, 0x1

    if-ne v6, v7, :cond_0

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lnu/xom/jaxen/Context;->getNavigator()Lnu/xom/jaxen/Navigator;

    move-result-object v6

    invoke-static {p0, v6}, Lnu/xom/jaxen/function/BooleanFunction;->evaluate(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method protected evaluateAsBoolean(Ljava/util/List;Lnu/xom/jaxen/ContextSupport;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lnu/xom/jaxen/expr/PredicateSet;->anyMatchingNode(Ljava/util/List;Lnu/xom/jaxen/ContextSupport;)Z

    move-result v0

    return v0
.end method

.method protected evaluatePredicates(Ljava/util/List;Lnu/xom/jaxen/ContextSupport;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    iget-object v0, p0, Lnu/xom/jaxen/expr/PredicateSet;->predicates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnu/xom/jaxen/expr/PredicateSet;->predicates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, p1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnu/xom/jaxen/expr/Predicate;

    invoke-virtual {p0, v0, v2, p2}, Lnu/xom/jaxen/expr/PredicateSet;->applyPredicate(Lnu/xom/jaxen/expr/Predicate;Ljava/util/List;Lnu/xom/jaxen/ContextSupport;)Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method public getPredicates()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lnu/xom/jaxen/expr/PredicateSet;->predicates:Ljava/util/List;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lnu/xom/jaxen/expr/PredicateSet;->predicates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnu/xom/jaxen/expr/Predicate;

    invoke-interface {p0}, Lnu/xom/jaxen/expr/Predicate;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public simplify()V
    .locals 2

    iget-object v0, p0, Lnu/xom/jaxen/expr/PredicateSet;->predicates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnu/xom/jaxen/expr/Predicate;

    invoke-interface {p0}, Lnu/xom/jaxen/expr/Predicate;->simplify()V

    goto :goto_0

    :cond_0
    return-void
.end method
