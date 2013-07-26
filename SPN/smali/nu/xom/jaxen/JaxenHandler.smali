.class public Lnu/xom/jaxen/JaxenHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lnu/xom/jaxen/saxpath/XPathHandler;


# instance fields
.field protected simplified:Z

.field protected stack:Ljava/util/LinkedList;

.field private xpath:Lnu/xom/jaxen/expr/XPathExpr;

.field private xpathFactory:Lnu/xom/jaxen/expr/XPathFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnu/xom/jaxen/JaxenHandler;->stack:Ljava/util/LinkedList;

    new-instance v0, Lnu/xom/jaxen/expr/DefaultXPathFactory;

    invoke-direct {v0}, Lnu/xom/jaxen/expr/DefaultXPathFactory;-><init>()V

    iput-object v0, p0, Lnu/xom/jaxen/JaxenHandler;->xpathFactory:Lnu/xom/jaxen/expr/XPathFactory;

    return-void
.end method


# virtual methods
.method protected addParameters(Lnu/xom/jaxen/expr/FunctionCallExpr;Ljava/util/Iterator;)V
    .locals 1

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnu/xom/jaxen/expr/Expr;

    invoke-interface {p1, p0}, Lnu/xom/jaxen/expr/FunctionCallExpr;->addParameter(Lnu/xom/jaxen/expr/Expr;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected addPredicates(Lnu/xom/jaxen/expr/Predicated;Ljava/util/Iterator;)V
    .locals 1

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnu/xom/jaxen/expr/Predicate;

    invoke-interface {p1, p0}, Lnu/xom/jaxen/expr/Predicated;->addPredicate(Lnu/xom/jaxen/expr/Predicate;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected addSteps(Lnu/xom/jaxen/expr/LocationPath;Ljava/util/Iterator;)V
    .locals 1

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnu/xom/jaxen/expr/Step;

    invoke-interface {p1, p0}, Lnu/xom/jaxen/expr/LocationPath;->addStep(Lnu/xom/jaxen/expr/Step;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected canPop()Z
    .locals 1

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->peekFrame()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public endAbsoluteLocationPath()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->endLocationPath()V

    return-void
.end method

.method public endAdditiveExpr(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnu/xom/jaxen/expr/Expr;

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnu/xom/jaxen/expr/Expr;

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->getXPathFactory()Lnu/xom/jaxen/expr/XPathFactory;

    move-result-object v2

    invoke-interface {v2, v1, v0, p1}, Lnu/xom/jaxen/expr/XPathFactory;->createAdditiveExpr(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/Expr;I)Lnu/xom/jaxen/expr/BinaryExpr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnu/xom/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public endAllNodeStep()V
    .locals 0

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->endStep()V

    return-void
.end method

.method public endAndExpr(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnu/xom/jaxen/expr/Expr;

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnu/xom/jaxen/expr/Expr;

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->getXPathFactory()Lnu/xom/jaxen/expr/XPathFactory;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lnu/xom/jaxen/expr/XPathFactory;->createAndExpr(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/Expr;)Lnu/xom/jaxen/expr/BinaryExpr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnu/xom/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public endCommentNodeStep()V
    .locals 0

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->endStep()V

    return-void
.end method

.method public endEqualityExpr(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnu/xom/jaxen/expr/Expr;

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnu/xom/jaxen/expr/Expr;

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->getXPathFactory()Lnu/xom/jaxen/expr/XPathFactory;

    move-result-object v2

    invoke-interface {v2, v1, v0, p1}, Lnu/xom/jaxen/expr/XPathFactory;->createEqualityExpr(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/Expr;I)Lnu/xom/jaxen/expr/BinaryExpr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnu/xom/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public endFilterExpr()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->peekFrame()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnu/xom/jaxen/expr/Expr;

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->getXPathFactory()Lnu/xom/jaxen/expr/XPathFactory;

    move-result-object v1

    invoke-interface {v1, v0}, Lnu/xom/jaxen/expr/XPathFactory;->createFilterExpr(Lnu/xom/jaxen/expr/Expr;)Lnu/xom/jaxen/expr/FilterExpr;

    move-result-object v0

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->popFrame()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnu/xom/jaxen/JaxenHandler;->addPredicates(Lnu/xom/jaxen/expr/Predicated;Ljava/util/Iterator;)V

    invoke-virtual {p0, v0}, Lnu/xom/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public endFunction()V
    .locals 2

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->peekFrame()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnu/xom/jaxen/expr/FunctionCallExpr;

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->popFrame()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnu/xom/jaxen/JaxenHandler;->addParameters(Lnu/xom/jaxen/expr/FunctionCallExpr;Ljava/util/Iterator;)V

    invoke-virtual {p0, v0}, Lnu/xom/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    return-void
.end method

.method protected endLocationPath()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->peekFrame()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnu/xom/jaxen/expr/LocationPath;

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->popFrame()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnu/xom/jaxen/JaxenHandler;->addSteps(Lnu/xom/jaxen/expr/LocationPath;Ljava/util/Iterator;)V

    invoke-virtual {p0, v0}, Lnu/xom/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public endMultiplicativeExpr(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnu/xom/jaxen/expr/Expr;

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnu/xom/jaxen/expr/Expr;

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->getXPathFactory()Lnu/xom/jaxen/expr/XPathFactory;

    move-result-object v2

    invoke-interface {v2, v1, v0, p1}, Lnu/xom/jaxen/expr/XPathFactory;->createMultiplicativeExpr(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/Expr;I)Lnu/xom/jaxen/expr/BinaryExpr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnu/xom/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public endNameStep()V
    .locals 0

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->endStep()V

    return-void
.end method

.method public endOrExpr(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnu/xom/jaxen/expr/Expr;

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnu/xom/jaxen/expr/Expr;

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->getXPathFactory()Lnu/xom/jaxen/expr/XPathFactory;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lnu/xom/jaxen/expr/XPathFactory;->createOrExpr(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/Expr;)Lnu/xom/jaxen/expr/BinaryExpr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnu/xom/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public endPathExpr()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->stackSize()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnu/xom/jaxen/expr/LocationPath;

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnu/xom/jaxen/expr/FilterExpr;

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->popFrame()Ljava/util/LinkedList;

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->getXPathFactory()Lnu/xom/jaxen/expr/XPathFactory;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lnu/xom/jaxen/expr/XPathFactory;->createPathExpr(Lnu/xom/jaxen/expr/FilterExpr;Lnu/xom/jaxen/expr/LocationPath;)Lnu/xom/jaxen/expr/PathExpr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnu/xom/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->pop()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lnu/xom/jaxen/expr/LocationPath;

    if-eqz v1, :cond_1

    check-cast v0, Lnu/xom/jaxen/expr/LocationPath;

    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_1
    check-cast v0, Lnu/xom/jaxen/expr/FilterExpr;

    move-object v1, v2

    goto :goto_0
.end method

.method public endPredicate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->getXPathFactory()Lnu/xom/jaxen/expr/XPathFactory;

    move-result-object v1

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnu/xom/jaxen/expr/Expr;

    invoke-interface {v1, v0}, Lnu/xom/jaxen/expr/XPathFactory;->createPredicate(Lnu/xom/jaxen/expr/Expr;)Lnu/xom/jaxen/expr/Predicate;

    move-result-object v0

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->popFrame()Ljava/util/LinkedList;

    invoke-virtual {p0, v0}, Lnu/xom/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public endProcessingInstructionNodeStep()V
    .locals 0

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->endStep()V

    return-void
.end method

.method public endRelationalExpr(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnu/xom/jaxen/expr/Expr;

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnu/xom/jaxen/expr/Expr;

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->getXPathFactory()Lnu/xom/jaxen/expr/XPathFactory;

    move-result-object v2

    invoke-interface {v2, v1, v0, p1}, Lnu/xom/jaxen/expr/XPathFactory;->createRelationalExpr(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/Expr;I)Lnu/xom/jaxen/expr/BinaryExpr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnu/xom/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public endRelativeLocationPath()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->endLocationPath()V

    return-void
.end method

.method protected endStep()V
    .locals 2

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->peekFrame()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnu/xom/jaxen/expr/Step;

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->popFrame()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnu/xom/jaxen/JaxenHandler;->addPredicates(Lnu/xom/jaxen/expr/Predicated;Ljava/util/Iterator;)V

    invoke-virtual {p0, v0}, Lnu/xom/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public endTextNodeStep()V
    .locals 0

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->endStep()V

    return-void
.end method

.method public endUnaryExpr(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->getXPathFactory()Lnu/xom/jaxen/expr/XPathFactory;

    move-result-object v1

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnu/xom/jaxen/expr/Expr;

    invoke-interface {v1, v0, p1}, Lnu/xom/jaxen/expr/XPathFactory;->createUnaryExpr(Lnu/xom/jaxen/expr/Expr;I)Lnu/xom/jaxen/expr/Expr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnu/xom/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public endUnionExpr(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnu/xom/jaxen/expr/Expr;

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnu/xom/jaxen/expr/Expr;

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->getXPathFactory()Lnu/xom/jaxen/expr/XPathFactory;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lnu/xom/jaxen/expr/XPathFactory;->createUnionExpr(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/Expr;)Lnu/xom/jaxen/expr/UnionExpr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnu/xom/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public endXPath()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->getXPathFactory()Lnu/xom/jaxen/expr/XPathFactory;

    move-result-object v1

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnu/xom/jaxen/expr/Expr;

    invoke-interface {v1, v0}, Lnu/xom/jaxen/expr/XPathFactory;->createXPath(Lnu/xom/jaxen/expr/Expr;)Lnu/xom/jaxen/expr/XPathExpr;

    move-result-object v0

    iput-object v0, p0, Lnu/xom/jaxen/JaxenHandler;->xpath:Lnu/xom/jaxen/expr/XPathExpr;

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->popFrame()Ljava/util/LinkedList;

    return-void
.end method

.method public getXPathExpr()Lnu/xom/jaxen/expr/XPathExpr;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnu/xom/jaxen/JaxenHandler;->getXPathExpr(Z)Lnu/xom/jaxen/expr/XPathExpr;

    move-result-object v0

    return-object v0
.end method

.method public getXPathExpr(Z)Lnu/xom/jaxen/expr/XPathExpr;
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lnu/xom/jaxen/JaxenHandler;->simplified:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnu/xom/jaxen/JaxenHandler;->xpath:Lnu/xom/jaxen/expr/XPathExpr;

    invoke-interface {v0}, Lnu/xom/jaxen/expr/XPathExpr;->simplify()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnu/xom/jaxen/JaxenHandler;->simplified:Z

    :cond_0
    iget-object v0, p0, Lnu/xom/jaxen/JaxenHandler;->xpath:Lnu/xom/jaxen/expr/XPathExpr;

    return-object v0
.end method

.method public getXPathFactory()Lnu/xom/jaxen/expr/XPathFactory;
    .locals 1

    iget-object v0, p0, Lnu/xom/jaxen/JaxenHandler;->xpathFactory:Lnu/xom/jaxen/expr/XPathFactory;

    return-object v0
.end method

.method public literal(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->getXPathFactory()Lnu/xom/jaxen/expr/XPathFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lnu/xom/jaxen/expr/XPathFactory;->createLiteralExpr(Ljava/lang/String;)Lnu/xom/jaxen/expr/LiteralExpr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnu/xom/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public number(D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->getXPathFactory()Lnu/xom/jaxen/expr/XPathFactory;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnu/xom/jaxen/expr/XPathFactory;->createNumberExpr(D)Lnu/xom/jaxen/expr/NumberExpr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnu/xom/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public number(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->getXPathFactory()Lnu/xom/jaxen/expr/XPathFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lnu/xom/jaxen/expr/XPathFactory;->createNumberExpr(I)Lnu/xom/jaxen/expr/NumberExpr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnu/xom/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    return-void
.end method

.method protected peekFrame()Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lnu/xom/jaxen/JaxenHandler;->stack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedList;

    return-object p0
.end method

.method protected pop()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->peekFrame()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected popFrame()Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lnu/xom/jaxen/JaxenHandler;->stack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedList;

    return-object p0
.end method

.method protected push(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->peekFrame()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method protected pushFrame()V
    .locals 2

    iget-object v0, p0, Lnu/xom/jaxen/JaxenHandler;->stack:Ljava/util/LinkedList;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method protected returnExpr()V
    .locals 1

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnu/xom/jaxen/expr/Expr;

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->popFrame()Ljava/util/LinkedList;

    invoke-virtual {p0, v0}, Lnu/xom/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public setXPathFactory(Lnu/xom/jaxen/expr/XPathFactory;)V
    .locals 0

    iput-object p1, p0, Lnu/xom/jaxen/JaxenHandler;->xpathFactory:Lnu/xom/jaxen/expr/XPathFactory;

    return-void
.end method

.method protected stackSize()I
    .locals 1

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->peekFrame()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public startAbsoluteLocationPath()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->pushFrame()V

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->getXPathFactory()Lnu/xom/jaxen/expr/XPathFactory;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/expr/XPathFactory;->createAbsoluteLocationPath()Lnu/xom/jaxen/expr/LocationPath;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnu/xom/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public startAdditiveExpr()V
    .locals 0

    return-void
.end method

.method public startAllNodeStep(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->pushFrame()V

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->getXPathFactory()Lnu/xom/jaxen/expr/XPathFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lnu/xom/jaxen/expr/XPathFactory;->createAllNodeStep(I)Lnu/xom/jaxen/expr/Step;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnu/xom/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public startAndExpr()V
    .locals 0

    return-void
.end method

.method public startCommentNodeStep(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->pushFrame()V

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->getXPathFactory()Lnu/xom/jaxen/expr/XPathFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lnu/xom/jaxen/expr/XPathFactory;->createCommentNodeStep(I)Lnu/xom/jaxen/expr/Step;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnu/xom/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public startEqualityExpr()V
    .locals 0

    return-void
.end method

.method public startFilterExpr()V
    .locals 0

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->pushFrame()V

    return-void
.end method

.method public startFunction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->pushFrame()V

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->getXPathFactory()Lnu/xom/jaxen/expr/XPathFactory;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnu/xom/jaxen/expr/XPathFactory;->createFunctionCallExpr(Ljava/lang/String;Ljava/lang/String;)Lnu/xom/jaxen/expr/FunctionCallExpr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnu/xom/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public startMultiplicativeExpr()V
    .locals 0

    return-void
.end method

.method public startNameStep(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->pushFrame()V

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->getXPathFactory()Lnu/xom/jaxen/expr/XPathFactory;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lnu/xom/jaxen/expr/XPathFactory;->createNameStep(ILjava/lang/String;Ljava/lang/String;)Lnu/xom/jaxen/expr/Step;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnu/xom/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public startOrExpr()V
    .locals 0

    return-void
.end method

.method public startPathExpr()V
    .locals 0

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->pushFrame()V

    return-void
.end method

.method public startPredicate()V
    .locals 0

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->pushFrame()V

    return-void
.end method

.method public startProcessingInstructionNodeStep(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->pushFrame()V

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->getXPathFactory()Lnu/xom/jaxen/expr/XPathFactory;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnu/xom/jaxen/expr/XPathFactory;->createProcessingInstructionNodeStep(ILjava/lang/String;)Lnu/xom/jaxen/expr/Step;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnu/xom/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public startRelationalExpr()V
    .locals 0

    return-void
.end method

.method public startRelativeLocationPath()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->pushFrame()V

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->getXPathFactory()Lnu/xom/jaxen/expr/XPathFactory;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/expr/XPathFactory;->createRelativeLocationPath()Lnu/xom/jaxen/expr/LocationPath;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnu/xom/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public startTextNodeStep(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->pushFrame()V

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->getXPathFactory()Lnu/xom/jaxen/expr/XPathFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lnu/xom/jaxen/expr/XPathFactory;->createTextNodeStep(I)Lnu/xom/jaxen/expr/Step;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnu/xom/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public startUnaryExpr()V
    .locals 0

    return-void
.end method

.method public startUnionExpr()V
    .locals 0

    return-void
.end method

.method public startXPath()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnu/xom/jaxen/JaxenHandler;->simplified:Z

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->pushFrame()V

    return-void
.end method

.method public variableReference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    invoke-virtual {p0}, Lnu/xom/jaxen/JaxenHandler;->getXPathFactory()Lnu/xom/jaxen/expr/XPathFactory;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnu/xom/jaxen/expr/XPathFactory;->createVariableReferenceExpr(Ljava/lang/String;Ljava/lang/String;)Lnu/xom/jaxen/expr/VariableReferenceExpr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnu/xom/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    return-void
.end method
