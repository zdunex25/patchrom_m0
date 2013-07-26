.class public interface abstract Lnu/xom/jaxen/expr/FilterExpr;
.super Ljava/lang/Object;

# interfaces
.implements Lnu/xom/jaxen/expr/Expr;
.implements Lnu/xom/jaxen/expr/Predicated;


# virtual methods
.method public abstract asBoolean(Lnu/xom/jaxen/Context;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation
.end method

.method public abstract getExpr()Lnu/xom/jaxen/expr/Expr;
.end method
