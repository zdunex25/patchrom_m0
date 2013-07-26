.class public abstract Lnu/xom/jaxen/expr/iter/IterableAxis;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private value:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnu/xom/jaxen/expr/iter/IterableAxis;->value:I

    return-void
.end method


# virtual methods
.method public abstract iterator(Ljava/lang/Object;Lnu/xom/jaxen/ContextSupport;)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/UnsupportedAxisException;
        }
    .end annotation
.end method

.method public namedAccessIterator(Ljava/lang/Object;Lnu/xom/jaxen/ContextSupport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/UnsupportedAxisException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Named access unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public supportsNamedAccess(Lnu/xom/jaxen/ContextSupport;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public value()I
    .locals 1

    iget v0, p0, Lnu/xom/jaxen/expr/iter/IterableAxis;->value:I

    return v0
.end method
