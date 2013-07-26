.class public Lnu/xom/jaxen/util/AncestorOrSelfAxisIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private contextNode:Ljava/lang/Object;

.field private navigator:Lnu/xom/jaxen/Navigator;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnu/xom/jaxen/util/AncestorOrSelfAxisIterator;->contextNode:Ljava/lang/Object;

    iput-object p2, p0, Lnu/xom/jaxen/util/AncestorOrSelfAxisIterator;->navigator:Lnu/xom/jaxen/Navigator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lnu/xom/jaxen/util/AncestorOrSelfAxisIterator;->contextNode:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lnu/xom/jaxen/util/AncestorOrSelfAxisIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnu/xom/jaxen/util/AncestorOrSelfAxisIterator;->contextNode:Ljava/lang/Object;

    iget-object v1, p0, Lnu/xom/jaxen/util/AncestorOrSelfAxisIterator;->navigator:Lnu/xom/jaxen/Navigator;

    iget-object v2, p0, Lnu/xom/jaxen/util/AncestorOrSelfAxisIterator;->contextNode:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lnu/xom/jaxen/Navigator;->getParentNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lnu/xom/jaxen/util/AncestorOrSelfAxisIterator;->contextNode:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Exhausted ancestor-or-self axis"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lnu/xom/jaxen/UnsupportedAxisException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lnu/xom/jaxen/JaxenRuntimeException;

    invoke-direct {v1, v0}, Lnu/xom/jaxen/JaxenRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
