.class public Lnu/xom/jaxen/expr/DefaultNameStep;
.super Lnu/xom/jaxen/expr/DefaultStep;

# interfaces
.implements Lnu/xom/jaxen/expr/NameStep;


# static fields
.field private static final serialVersionUID:J = 0x5f20917c50161f6L


# instance fields
.field private hasPrefix:Z

.field private localName:Ljava/lang/String;

.field private matchesAnyName:Z

.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnu/xom/jaxen/expr/iter/IterableAxis;Ljava/lang/String;Ljava/lang/String;Lnu/xom/jaxen/expr/PredicateSet;)V
    .locals 1

    invoke-direct {p0, p1, p4}, Lnu/xom/jaxen/expr/DefaultStep;-><init>(Lnu/xom/jaxen/expr/iter/IterableAxis;Lnu/xom/jaxen/expr/PredicateSet;)V

    iput-object p2, p0, Lnu/xom/jaxen/expr/DefaultNameStep;->prefix:Ljava/lang/String;

    iput-object p3, p0, Lnu/xom/jaxen/expr/DefaultNameStep;->localName:Ljava/lang/String;

    const-string v0, "*"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lnu/xom/jaxen/expr/DefaultNameStep;->matchesAnyName:Z

    iget-object v0, p0, Lnu/xom/jaxen/expr/DefaultNameStep;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnu/xom/jaxen/expr/DefaultNameStep;->prefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lnu/xom/jaxen/expr/DefaultNameStep;->hasPrefix:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasNamespace(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public evaluate(Lnu/xom/jaxen/Context;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lnu/xom/jaxen/Context;->getNodeSet()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lnu/xom/jaxen/Context;->getContextSupport()Lnu/xom/jaxen/ContextSupport;

    move-result-object v2

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultNameStep;->getIterableAxis()Lnu/xom/jaxen/expr/iter/IterableAxis;

    move-result-object v0

    iget-boolean v1, p0, Lnu/xom/jaxen/expr/DefaultNameStep;->matchesAnyName:Z

    if-nez v1, :cond_1

    invoke-virtual {v0, v2}, Lnu/xom/jaxen/expr/iter/IterableAxis;->supportsNamedAccess(Lnu/xom/jaxen/ContextSupport;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v3, v5

    :goto_1
    if-ne v7, v5, :cond_b

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lnu/xom/jaxen/expr/DefaultNameStep;->hasPrefix:Z

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lnu/xom/jaxen/expr/DefaultNameStep;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lnu/xom/jaxen/ContextSupport;->translateNamespacePrefixToUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v0, Lnu/xom/jaxen/UnresolvableException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "XPath expression uses unbound namespace prefix "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lnu/xom/jaxen/expr/DefaultNameStep;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/jaxen/UnresolvableException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v3, v4

    goto :goto_1

    :cond_2
    move-object v5, v3

    :goto_2
    iget-object v3, p0, Lnu/xom/jaxen/expr/DefaultNameStep;->localName:Ljava/lang/String;

    iget-object v4, p0, Lnu/xom/jaxen/expr/DefaultNameStep;->prefix:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lnu/xom/jaxen/expr/iter/IterableAxis;->namedAccessIterator(Ljava/lang/Object;Lnu/xom/jaxen/ContextSupport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultNameStep;->getPredicateSet()Lnu/xom/jaxen/expr/PredicateSet;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lnu/xom/jaxen/expr/PredicateSet;->evaluatePredicates(Ljava/util/List;Lnu/xom/jaxen/ContextSupport;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-virtual {v0, v1, v2}, Lnu/xom/jaxen/expr/iter/IterableAxis;->iterator(Ljava/lang/Object;Lnu/xom/jaxen/ContextSupport;)Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto/16 :goto_0

    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    :cond_9
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lnu/xom/jaxen/expr/DefaultNameStep;->matches(Ljava/lang/Object;Lnu/xom/jaxen/ContextSupport;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultNameStep;->getPredicateSet()Lnu/xom/jaxen/expr/PredicateSet;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lnu/xom/jaxen/expr/PredicateSet;->evaluatePredicates(Ljava/util/List;Lnu/xom/jaxen/ContextSupport;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    new-instance v8, Lnu/xom/jaxen/expr/IdentitySet;

    invoke-direct {v8}, Lnu/xom/jaxen/expr/IdentitySet;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v7}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v7}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v3, :cond_12

    iget-boolean v1, p0, Lnu/xom/jaxen/expr/DefaultNameStep;->hasPrefix:Z

    if-eqz v1, :cond_19

    iget-object v1, p0, Lnu/xom/jaxen/expr/DefaultNameStep;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lnu/xom/jaxen/ContextSupport;->translateNamespacePrefixToUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    new-instance v0, Lnu/xom/jaxen/UnresolvableException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "XPath expression uses unbound namespace prefix "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lnu/xom/jaxen/expr/DefaultNameStep;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/jaxen/UnresolvableException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    move-object v5, v1

    :goto_5
    move v11, v4

    :goto_6
    if-ge v11, v7, :cond_18

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lnu/xom/jaxen/expr/DefaultNameStep;->localName:Ljava/lang/String;

    iget-object v4, p0, Lnu/xom/jaxen/expr/DefaultNameStep;->prefix:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lnu/xom/jaxen/expr/iter/IterableAxis;->namedAccessIterator(Ljava/lang/Object;Lnu/xom/jaxen/ContextSupport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_e

    :cond_d
    :goto_7
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_6

    :cond_e
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_f
    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultNameStep;->getPredicateSet()Lnu/xom/jaxen/expr/PredicateSet;

    move-result-object v1

    invoke-virtual {v1, v9, v2}, Lnu/xom/jaxen/expr/PredicateSet;->evaluatePredicates(Ljava/util/List;Lnu/xom/jaxen/ContextSupport;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8, v3}, Lnu/xom/jaxen/expr/IdentitySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {v8, v3}, Lnu/xom/jaxen/expr/IdentitySet;->add(Ljava/lang/Object;)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_11
    invoke-interface {v9}, Ljava/util/List;->clear()V

    goto :goto_7

    :cond_12
    move v0, v4

    :goto_a
    if-ge v0, v7, :cond_18

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lnu/xom/jaxen/expr/DefaultNameStep;->axisIterator(Ljava/lang/Object;Lnu/xom/jaxen/ContextSupport;)Ljava/util/Iterator;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_14

    :cond_13
    :goto_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_14
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lnu/xom/jaxen/expr/DefaultNameStep;->matches(Ljava/lang/Object;Lnu/xom/jaxen/ContextSupport;)Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_15
    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultNameStep;->getPredicateSet()Lnu/xom/jaxen/expr/PredicateSet;

    move-result-object v1

    invoke-virtual {v1, v9, v2}, Lnu/xom/jaxen/expr/PredicateSet;->evaluatePredicates(Ljava/util/List;Lnu/xom/jaxen/ContextSupport;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8, v3}, Lnu/xom/jaxen/expr/IdentitySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    invoke-virtual {v8, v3}, Lnu/xom/jaxen/expr/IdentitySet;->add(Ljava/lang/Object;)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_17
    invoke-interface {v9}, Ljava/util/List;->clear()V

    goto :goto_b

    :cond_18
    move-object v0, v10

    goto/16 :goto_0

    :cond_19
    move-object v5, v11

    goto/16 :goto_5

    :cond_1a
    move-object v5, v11

    goto/16 :goto_2
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnu/xom/jaxen/expr/DefaultNameStep;->localName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnu/xom/jaxen/expr/DefaultNameStep;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultNameStep;->getAxisName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultNameStep;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultNameStep;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultNameStep;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultNameStep;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-super {p0}, Lnu/xom/jaxen/expr/DefaultStep;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMatchesAnyName()Z
    .locals 1

    iget-boolean v0, p0, Lnu/xom/jaxen/expr/DefaultNameStep;->matchesAnyName:Z

    return v0
.end method

.method public matches(Ljava/lang/Object;Lnu/xom/jaxen/ContextSupport;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {p2}, Lnu/xom/jaxen/ContextSupport;->getNavigator()Lnu/xom/jaxen/Navigator;

    move-result-object v0

    invoke-interface {v0, p1}, Lnu/xom/jaxen/Navigator;->isElement(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Lnu/xom/jaxen/Navigator;->getElementName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1}, Lnu/xom/jaxen/Navigator;->getElementNamespaceUri(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-boolean v2, p0, Lnu/xom/jaxen/expr/DefaultNameStep;->hasPrefix:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lnu/xom/jaxen/expr/DefaultNameStep;->prefix:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lnu/xom/jaxen/ContextSupport;->translateNamespacePrefixToUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    new-instance v0, Lnu/xom/jaxen/UnresolvableException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Cannot resolve namespace prefix \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lnu/xom/jaxen/expr/DefaultNameStep;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/jaxen/UnresolvableException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {v0, p1}, Lnu/xom/jaxen/Navigator;->isText(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v5

    :goto_1
    return v0

    :cond_1
    invoke-interface {v0, p1}, Lnu/xom/jaxen/Navigator;->isAttribute(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultNameStep;->getAxis()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    move v0, v5

    goto :goto_1

    :cond_2
    invoke-interface {v0, p1}, Lnu/xom/jaxen/Navigator;->getAttributeName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1}, Lnu/xom/jaxen/Navigator;->getAttributeNamespaceUri(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-interface {v0, p1}, Lnu/xom/jaxen/Navigator;->isDocument(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v5

    goto :goto_1

    :cond_4
    invoke-interface {v0, p1}, Lnu/xom/jaxen/Navigator;->isNamespace(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultNameStep;->getAxis()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_5

    move v0, v5

    goto :goto_1

    :cond_5
    invoke-interface {v0, p1}, Lnu/xom/jaxen/Navigator;->getNamespacePrefix(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    :cond_6
    move v0, v5

    goto :goto_1

    :cond_7
    iget-boolean v2, p0, Lnu/xom/jaxen/expr/DefaultNameStep;->matchesAnyName:Z

    if-eqz v2, :cond_8

    const/4 v0, 0x1

    goto :goto_1

    :cond_8
    move-object v2, v3

    :cond_9
    invoke-direct {p0, v2}, Lnu/xom/jaxen/expr/DefaultNameStep;->hasNamespace(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {p0, v0}, Lnu/xom/jaxen/expr/DefaultNameStep;->hasNamespace(Ljava/lang/String;)Z

    move-result v4

    if-eq v3, v4, :cond_a

    move v0, v5

    goto :goto_1

    :cond_a
    iget-boolean v3, p0, Lnu/xom/jaxen/expr/DefaultNameStep;->matchesAnyName:Z

    if-nez v3, :cond_b

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultNameStep;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    invoke-virtual {p0, v2, v0}, Lnu/xom/jaxen/expr/DefaultNameStep;->matchesNamespaceURIs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_c
    move v0, v5

    goto :goto_1
.end method

.method protected matchesNamespaceURIs(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-ne p1, p2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    if-nez p2, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultNameStep;->getPrefix()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultNameStep;->getLocalName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "[(DefaultNameStep): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultNameStep;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultNameStep;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
