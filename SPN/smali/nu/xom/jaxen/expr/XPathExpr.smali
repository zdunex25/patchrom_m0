.class public interface abstract Lnu/xom/jaxen/expr/XPathExpr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract asList(Lnu/xom/jaxen/Context;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation
.end method

.method public abstract getRootExpr()Lnu/xom/jaxen/expr/Expr;
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract setRootExpr(Lnu/xom/jaxen/expr/Expr;)V
.end method

.method public abstract simplify()V
.end method
