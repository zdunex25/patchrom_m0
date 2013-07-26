.class public interface abstract Lnu/xom/jaxen/expr/Predicate;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract evaluate(Lnu/xom/jaxen/Context;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation
.end method

.method public abstract getExpr()Lnu/xom/jaxen/expr/Expr;
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract setExpr(Lnu/xom/jaxen/expr/Expr;)V
.end method

.method public abstract simplify()V
.end method
