.class public interface abstract Lnu/xom/jaxen/expr/Expr;
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

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract simplify()Lnu/xom/jaxen/expr/Expr;
.end method
