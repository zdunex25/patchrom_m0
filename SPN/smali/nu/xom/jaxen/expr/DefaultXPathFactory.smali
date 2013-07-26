.class public Lnu/xom/jaxen/expr/DefaultXPathFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lnu/xom/jaxen/expr/XPathFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAbsoluteLocationPath()Lnu/xom/jaxen/expr/LocationPath;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    new-instance v0, Lnu/xom/jaxen/expr/DefaultAbsoluteLocationPath;

    invoke-direct {v0}, Lnu/xom/jaxen/expr/DefaultAbsoluteLocationPath;-><init>()V

    return-object v0
.end method

.method public createAdditiveExpr(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/Expr;I)Lnu/xom/jaxen/expr/BinaryExpr;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    packed-switch p3, :pswitch_data_0

    new-instance v0, Lnu/xom/jaxen/JaxenException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unhandled operator in createAdditiveExpr(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/jaxen/JaxenException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lnu/xom/jaxen/expr/DefaultPlusExpr;

    invoke-direct {v0, p1, p2}, Lnu/xom/jaxen/expr/DefaultPlusExpr;-><init>(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/Expr;)V

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lnu/xom/jaxen/expr/DefaultMinusExpr;

    invoke-direct {v0, p1, p2}, Lnu/xom/jaxen/expr/DefaultMinusExpr;-><init>(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/Expr;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public createAllNodeStep(I)Lnu/xom/jaxen/expr/Step;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnu/xom/jaxen/expr/DefaultXPathFactory;->getIterableAxis(I)Lnu/xom/jaxen/expr/iter/IterableAxis;

    move-result-object v0

    new-instance v1, Lnu/xom/jaxen/expr/DefaultAllNodeStep;

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultXPathFactory;->createPredicateSet()Lnu/xom/jaxen/expr/PredicateSet;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lnu/xom/jaxen/expr/DefaultAllNodeStep;-><init>(Lnu/xom/jaxen/expr/iter/IterableAxis;Lnu/xom/jaxen/expr/PredicateSet;)V

    return-object v1
.end method

.method public createAndExpr(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/Expr;)Lnu/xom/jaxen/expr/BinaryExpr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    new-instance v0, Lnu/xom/jaxen/expr/DefaultAndExpr;

    invoke-direct {v0, p1, p2}, Lnu/xom/jaxen/expr/DefaultAndExpr;-><init>(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/Expr;)V

    return-object v0
.end method

.method public createCommentNodeStep(I)Lnu/xom/jaxen/expr/Step;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnu/xom/jaxen/expr/DefaultXPathFactory;->getIterableAxis(I)Lnu/xom/jaxen/expr/iter/IterableAxis;

    move-result-object v0

    new-instance v1, Lnu/xom/jaxen/expr/DefaultCommentNodeStep;

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultXPathFactory;->createPredicateSet()Lnu/xom/jaxen/expr/PredicateSet;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lnu/xom/jaxen/expr/DefaultCommentNodeStep;-><init>(Lnu/xom/jaxen/expr/iter/IterableAxis;Lnu/xom/jaxen/expr/PredicateSet;)V

    return-object v1
.end method

.method public createEqualityExpr(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/Expr;I)Lnu/xom/jaxen/expr/BinaryExpr;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    packed-switch p3, :pswitch_data_0

    new-instance v0, Lnu/xom/jaxen/JaxenException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unhandled operator in createEqualityExpr(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/jaxen/JaxenException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lnu/xom/jaxen/expr/DefaultEqualsExpr;

    invoke-direct {v0, p1, p2}, Lnu/xom/jaxen/expr/DefaultEqualsExpr;-><init>(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/Expr;)V

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lnu/xom/jaxen/expr/DefaultNotEqualsExpr;

    invoke-direct {v0, p1, p2}, Lnu/xom/jaxen/expr/DefaultNotEqualsExpr;-><init>(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/Expr;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public createFilterExpr(Lnu/xom/jaxen/expr/Expr;)Lnu/xom/jaxen/expr/FilterExpr;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    new-instance v0, Lnu/xom/jaxen/expr/DefaultFilterExpr;

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultXPathFactory;->createPredicateSet()Lnu/xom/jaxen/expr/PredicateSet;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lnu/xom/jaxen/expr/DefaultFilterExpr;-><init>(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/PredicateSet;)V

    return-object v0
.end method

.method public createFunctionCallExpr(Ljava/lang/String;Ljava/lang/String;)Lnu/xom/jaxen/expr/FunctionCallExpr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    new-instance v0, Lnu/xom/jaxen/expr/DefaultFunctionCallExpr;

    invoke-direct {v0, p1, p2}, Lnu/xom/jaxen/expr/DefaultFunctionCallExpr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createLiteralExpr(Ljava/lang/String;)Lnu/xom/jaxen/expr/LiteralExpr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    new-instance v0, Lnu/xom/jaxen/expr/DefaultLiteralExpr;

    invoke-direct {v0, p1}, Lnu/xom/jaxen/expr/DefaultLiteralExpr;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createMultiplicativeExpr(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/Expr;I)Lnu/xom/jaxen/expr/BinaryExpr;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    packed-switch p3, :pswitch_data_0

    new-instance v0, Lnu/xom/jaxen/JaxenException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unhandled operator in createMultiplicativeExpr(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/jaxen/JaxenException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lnu/xom/jaxen/expr/DefaultMultiplyExpr;

    invoke-direct {v0, p1, p2}, Lnu/xom/jaxen/expr/DefaultMultiplyExpr;-><init>(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/Expr;)V

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lnu/xom/jaxen/expr/DefaultDivExpr;

    invoke-direct {v0, p1, p2}, Lnu/xom/jaxen/expr/DefaultDivExpr;-><init>(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/Expr;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lnu/xom/jaxen/expr/DefaultModExpr;

    invoke-direct {v0, p1, p2}, Lnu/xom/jaxen/expr/DefaultModExpr;-><init>(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/Expr;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public createNameStep(ILjava/lang/String;Ljava/lang/String;)Lnu/xom/jaxen/expr/Step;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnu/xom/jaxen/expr/DefaultXPathFactory;->getIterableAxis(I)Lnu/xom/jaxen/expr/iter/IterableAxis;

    move-result-object v0

    new-instance v1, Lnu/xom/jaxen/expr/DefaultNameStep;

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultXPathFactory;->createPredicateSet()Lnu/xom/jaxen/expr/PredicateSet;

    move-result-object v2

    invoke-direct {v1, v0, p2, p3, v2}, Lnu/xom/jaxen/expr/DefaultNameStep;-><init>(Lnu/xom/jaxen/expr/iter/IterableAxis;Ljava/lang/String;Ljava/lang/String;Lnu/xom/jaxen/expr/PredicateSet;)V

    return-object v1
.end method

.method public createNumberExpr(D)Lnu/xom/jaxen/expr/NumberExpr;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    new-instance v0, Lnu/xom/jaxen/expr/DefaultNumberExpr;

    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, p1, p2}, Ljava/lang/Double;-><init>(D)V

    invoke-direct {v0, v1}, Lnu/xom/jaxen/expr/DefaultNumberExpr;-><init>(Ljava/lang/Double;)V

    return-object v0
.end method

.method public createNumberExpr(I)Lnu/xom/jaxen/expr/NumberExpr;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    new-instance v0, Lnu/xom/jaxen/expr/DefaultNumberExpr;

    new-instance v1, Ljava/lang/Double;

    int-to-double v2, p1

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    invoke-direct {v0, v1}, Lnu/xom/jaxen/expr/DefaultNumberExpr;-><init>(Ljava/lang/Double;)V

    return-object v0
.end method

.method public createOrExpr(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/Expr;)Lnu/xom/jaxen/expr/BinaryExpr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    new-instance v0, Lnu/xom/jaxen/expr/DefaultOrExpr;

    invoke-direct {v0, p1, p2}, Lnu/xom/jaxen/expr/DefaultOrExpr;-><init>(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/Expr;)V

    return-object v0
.end method

.method public createPathExpr(Lnu/xom/jaxen/expr/FilterExpr;Lnu/xom/jaxen/expr/LocationPath;)Lnu/xom/jaxen/expr/PathExpr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    new-instance v0, Lnu/xom/jaxen/expr/DefaultPathExpr;

    invoke-direct {v0, p1, p2}, Lnu/xom/jaxen/expr/DefaultPathExpr;-><init>(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/LocationPath;)V

    return-object v0
.end method

.method public createPredicate(Lnu/xom/jaxen/expr/Expr;)Lnu/xom/jaxen/expr/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    new-instance v0, Lnu/xom/jaxen/expr/DefaultPredicate;

    invoke-direct {v0, p1}, Lnu/xom/jaxen/expr/DefaultPredicate;-><init>(Lnu/xom/jaxen/expr/Expr;)V

    return-object v0
.end method

.method public createPredicateSet()Lnu/xom/jaxen/expr/PredicateSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    new-instance v0, Lnu/xom/jaxen/expr/PredicateSet;

    invoke-direct {v0}, Lnu/xom/jaxen/expr/PredicateSet;-><init>()V

    return-object v0
.end method

.method public createProcessingInstructionNodeStep(ILjava/lang/String;)Lnu/xom/jaxen/expr/Step;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnu/xom/jaxen/expr/DefaultXPathFactory;->getIterableAxis(I)Lnu/xom/jaxen/expr/iter/IterableAxis;

    move-result-object v0

    new-instance v1, Lnu/xom/jaxen/expr/DefaultProcessingInstructionNodeStep;

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultXPathFactory;->createPredicateSet()Lnu/xom/jaxen/expr/PredicateSet;

    move-result-object v2

    invoke-direct {v1, v0, p2, v2}, Lnu/xom/jaxen/expr/DefaultProcessingInstructionNodeStep;-><init>(Lnu/xom/jaxen/expr/iter/IterableAxis;Ljava/lang/String;Lnu/xom/jaxen/expr/PredicateSet;)V

    return-object v1
.end method

.method public createRelationalExpr(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/Expr;I)Lnu/xom/jaxen/expr/BinaryExpr;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    packed-switch p3, :pswitch_data_0

    new-instance v0, Lnu/xom/jaxen/JaxenException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unhandled operator in createRelationalExpr(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/jaxen/JaxenException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lnu/xom/jaxen/expr/DefaultLessThanExpr;

    invoke-direct {v0, p1, p2}, Lnu/xom/jaxen/expr/DefaultLessThanExpr;-><init>(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/Expr;)V

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lnu/xom/jaxen/expr/DefaultGreaterThanExpr;

    invoke-direct {v0, p1, p2}, Lnu/xom/jaxen/expr/DefaultGreaterThanExpr;-><init>(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/Expr;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lnu/xom/jaxen/expr/DefaultLessThanEqualExpr;

    invoke-direct {v0, p1, p2}, Lnu/xom/jaxen/expr/DefaultLessThanEqualExpr;-><init>(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/Expr;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lnu/xom/jaxen/expr/DefaultGreaterThanEqualExpr;

    invoke-direct {v0, p1, p2}, Lnu/xom/jaxen/expr/DefaultGreaterThanEqualExpr;-><init>(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/Expr;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public createRelativeLocationPath()Lnu/xom/jaxen/expr/LocationPath;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    new-instance v0, Lnu/xom/jaxen/expr/DefaultRelativeLocationPath;

    invoke-direct {v0}, Lnu/xom/jaxen/expr/DefaultRelativeLocationPath;-><init>()V

    return-object v0
.end method

.method public createTextNodeStep(I)Lnu/xom/jaxen/expr/Step;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnu/xom/jaxen/expr/DefaultXPathFactory;->getIterableAxis(I)Lnu/xom/jaxen/expr/iter/IterableAxis;

    move-result-object v0

    new-instance v1, Lnu/xom/jaxen/expr/DefaultTextNodeStep;

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultXPathFactory;->createPredicateSet()Lnu/xom/jaxen/expr/PredicateSet;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lnu/xom/jaxen/expr/DefaultTextNodeStep;-><init>(Lnu/xom/jaxen/expr/iter/IterableAxis;Lnu/xom/jaxen/expr/PredicateSet;)V

    return-object v1
.end method

.method public createUnaryExpr(Lnu/xom/jaxen/expr/Expr;I)Lnu/xom/jaxen/expr/Expr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    packed-switch p2, :pswitch_data_0

    move-object v0, p1

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lnu/xom/jaxen/expr/DefaultUnaryExpr;

    invoke-direct {v0, p1}, Lnu/xom/jaxen/expr/DefaultUnaryExpr;-><init>(Lnu/xom/jaxen/expr/Expr;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public createUnionExpr(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/Expr;)Lnu/xom/jaxen/expr/UnionExpr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    new-instance v0, Lnu/xom/jaxen/expr/DefaultUnionExpr;

    invoke-direct {v0, p1, p2}, Lnu/xom/jaxen/expr/DefaultUnionExpr;-><init>(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/Expr;)V

    return-object v0
.end method

.method public createVariableReferenceExpr(Ljava/lang/String;Ljava/lang/String;)Lnu/xom/jaxen/expr/VariableReferenceExpr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    new-instance v0, Lnu/xom/jaxen/expr/DefaultVariableReferenceExpr;

    invoke-direct {v0, p1, p2}, Lnu/xom/jaxen/expr/DefaultVariableReferenceExpr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createXPath(Lnu/xom/jaxen/expr/Expr;)Lnu/xom/jaxen/expr/XPathExpr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    new-instance v0, Lnu/xom/jaxen/expr/DefaultXPathExpr;

    invoke-direct {v0, p1}, Lnu/xom/jaxen/expr/DefaultXPathExpr;-><init>(Lnu/xom/jaxen/expr/Expr;)V

    return-object v0
.end method

.method protected getIterableAxis(I)Lnu/xom/jaxen/expr/iter/IterableAxis;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    new-instance v0, Lnu/xom/jaxen/JaxenException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unrecognized axis code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/jaxen/JaxenException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lnu/xom/jaxen/expr/iter/IterableChildAxis;

    invoke-direct {v0, p1}, Lnu/xom/jaxen/expr/iter/IterableChildAxis;-><init>(I)V

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lnu/xom/jaxen/expr/iter/IterableDescendantAxis;

    invoke-direct {v0, p1}, Lnu/xom/jaxen/expr/iter/IterableDescendantAxis;-><init>(I)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lnu/xom/jaxen/expr/iter/IterableParentAxis;

    invoke-direct {v0, p1}, Lnu/xom/jaxen/expr/iter/IterableParentAxis;-><init>(I)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lnu/xom/jaxen/expr/iter/IterableFollowingSiblingAxis;

    invoke-direct {v0, p1}, Lnu/xom/jaxen/expr/iter/IterableFollowingSiblingAxis;-><init>(I)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lnu/xom/jaxen/expr/iter/IterablePrecedingSiblingAxis;

    invoke-direct {v0, p1}, Lnu/xom/jaxen/expr/iter/IterablePrecedingSiblingAxis;-><init>(I)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lnu/xom/jaxen/expr/iter/IterableFollowingAxis;

    invoke-direct {v0, p1}, Lnu/xom/jaxen/expr/iter/IterableFollowingAxis;-><init>(I)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lnu/xom/jaxen/expr/iter/IterablePrecedingAxis;

    invoke-direct {v0, p1}, Lnu/xom/jaxen/expr/iter/IterablePrecedingAxis;-><init>(I)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lnu/xom/jaxen/expr/iter/IterableAttributeAxis;

    invoke-direct {v0, p1}, Lnu/xom/jaxen/expr/iter/IterableAttributeAxis;-><init>(I)V

    goto :goto_0

    :pswitch_8
    new-instance v0, Lnu/xom/jaxen/expr/iter/IterableNamespaceAxis;

    invoke-direct {v0, p1}, Lnu/xom/jaxen/expr/iter/IterableNamespaceAxis;-><init>(I)V

    goto :goto_0

    :pswitch_9
    new-instance v0, Lnu/xom/jaxen/expr/iter/IterableSelfAxis;

    invoke-direct {v0, p1}, Lnu/xom/jaxen/expr/iter/IterableSelfAxis;-><init>(I)V

    goto :goto_0

    :pswitch_a
    new-instance v0, Lnu/xom/jaxen/expr/iter/IterableDescendantOrSelfAxis;

    invoke-direct {v0, p1}, Lnu/xom/jaxen/expr/iter/IterableDescendantOrSelfAxis;-><init>(I)V

    goto :goto_0

    :pswitch_b
    new-instance v0, Lnu/xom/jaxen/expr/iter/IterableAncestorOrSelfAxis;

    invoke-direct {v0, p1}, Lnu/xom/jaxen/expr/iter/IterableAncestorOrSelfAxis;-><init>(I)V

    goto :goto_0

    :pswitch_c
    new-instance v0, Lnu/xom/jaxen/expr/iter/IterableAncestorAxis;

    invoke-direct {v0, p1}, Lnu/xom/jaxen/expr/iter/IterableAncestorAxis;-><init>(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_c
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
