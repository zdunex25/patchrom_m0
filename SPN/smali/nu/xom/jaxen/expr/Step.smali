.class public interface abstract Lnu/xom/jaxen/expr/Step;
.super Ljava/lang/Object;

# interfaces
.implements Lnu/xom/jaxen/expr/Predicated;


# virtual methods
.method public abstract axisIterator(Ljava/lang/Object;Lnu/xom/jaxen/ContextSupport;)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/UnsupportedAxisException;
        }
    .end annotation
.end method

.method public abstract evaluate(Lnu/xom/jaxen/Context;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation
.end method

.method public abstract getAxis()I
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract matches(Ljava/lang/Object;Lnu/xom/jaxen/ContextSupport;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation
.end method

.method public abstract simplify()V
.end method
