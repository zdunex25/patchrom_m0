.class public interface abstract Lnu/xom/jaxen/expr/XPathFactory;
.super Ljava/lang/Object;


# virtual methods
.method public abstract createAbsoluteLocationPath()Lnu/xom/jaxen/expr/LocationPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation
.end method

.method public abstract createAdditiveExpr(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/Expr;I)Lnu/xom/jaxen/expr/BinaryExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation
.end method

.method public abstract createAllNodeStep(I)Lnu/xom/jaxen/expr/Step;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation
.end method

.method public abstract createAndExpr(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/Expr;)Lnu/xom/jaxen/expr/BinaryExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation
.end method

.method public abstract createCommentNodeStep(I)Lnu/xom/jaxen/expr/Step;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation
.end method

.method public abstract createEqualityExpr(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/Expr;I)Lnu/xom/jaxen/expr/BinaryExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation
.end method

.method public abstract createFilterExpr(Lnu/xom/jaxen/expr/Expr;)Lnu/xom/jaxen/expr/FilterExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation
.end method

.method public abstract createFunctionCallExpr(Ljava/lang/String;Ljava/lang/String;)Lnu/xom/jaxen/expr/FunctionCallExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation
.end method

.method public abstract createLiteralExpr(Ljava/lang/String;)Lnu/xom/jaxen/expr/LiteralExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation
.end method

.method public abstract createMultiplicativeExpr(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/Expr;I)Lnu/xom/jaxen/expr/BinaryExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation
.end method

.method public abstract createNameStep(ILjava/lang/String;Ljava/lang/String;)Lnu/xom/jaxen/expr/Step;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation
.end method

.method public abstract createNumberExpr(D)Lnu/xom/jaxen/expr/NumberExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation
.end method

.method public abstract createNumberExpr(I)Lnu/xom/jaxen/expr/NumberExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation
.end method

.method public abstract createOrExpr(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/Expr;)Lnu/xom/jaxen/expr/BinaryExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation
.end method

.method public abstract createPathExpr(Lnu/xom/jaxen/expr/FilterExpr;Lnu/xom/jaxen/expr/LocationPath;)Lnu/xom/jaxen/expr/PathExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation
.end method

.method public abstract createPredicate(Lnu/xom/jaxen/expr/Expr;)Lnu/xom/jaxen/expr/Predicate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation
.end method

.method public abstract createPredicateSet()Lnu/xom/jaxen/expr/PredicateSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation
.end method

.method public abstract createProcessingInstructionNodeStep(ILjava/lang/String;)Lnu/xom/jaxen/expr/Step;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation
.end method

.method public abstract createRelationalExpr(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/Expr;I)Lnu/xom/jaxen/expr/BinaryExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation
.end method

.method public abstract createRelativeLocationPath()Lnu/xom/jaxen/expr/LocationPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation
.end method

.method public abstract createTextNodeStep(I)Lnu/xom/jaxen/expr/Step;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation
.end method

.method public abstract createUnaryExpr(Lnu/xom/jaxen/expr/Expr;I)Lnu/xom/jaxen/expr/Expr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation
.end method

.method public abstract createUnionExpr(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/Expr;)Lnu/xom/jaxen/expr/UnionExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation
.end method

.method public abstract createVariableReferenceExpr(Ljava/lang/String;Ljava/lang/String;)Lnu/xom/jaxen/expr/VariableReferenceExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation
.end method

.method public abstract createXPath(Lnu/xom/jaxen/expr/Expr;)Lnu/xom/jaxen/expr/XPathExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation
.end method
