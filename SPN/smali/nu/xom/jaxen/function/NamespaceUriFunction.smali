.class public Lnu/xom/jaxen/function/NamespaceUriFunction;
.super Ljava/lang/Object;

# interfaces
.implements Lnu/xom/jaxen/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static evaluate(Ljava/util/List;Lnu/xom/jaxen/Navigator;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/FunctionCallException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/List;

    invoke-static {p0, p1}, Lnu/xom/jaxen/function/NamespaceUriFunction;->evaluate(Ljava/util/List;Lnu/xom/jaxen/Navigator;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1, p0}, Lnu/xom/jaxen/Navigator;->isElement(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1, p0}, Lnu/xom/jaxen/Navigator;->getElementNamespaceUri(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {p1, p0}, Lnu/xom/jaxen/Navigator;->isAttribute(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1, p0}, Lnu/xom/jaxen/Navigator;->getAttributeNamespaceUri(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_3
    invoke-interface {p1, p0}, Lnu/xom/jaxen/Navigator;->isProcessingInstruction(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ""

    goto :goto_0

    :cond_4
    invoke-interface {p1, p0}, Lnu/xom/jaxen/Navigator;->isNamespace(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, ""

    goto :goto_0

    :cond_5
    invoke-interface {p1, p0}, Lnu/xom/jaxen/Navigator;->isDocument(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, ""

    goto :goto_0

    :cond_6
    invoke-interface {p1, p0}, Lnu/xom/jaxen/Navigator;->isComment(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, ""

    goto :goto_0

    :cond_7
    invoke-interface {p1, p0}, Lnu/xom/jaxen/Navigator;->isText(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, ""

    goto :goto_0

    :cond_8
    new-instance v0, Lnu/xom/jaxen/FunctionCallException;

    const-string v1, "The argument to the namespace-uri function must be a node-set"

    invoke-direct {v0, v1}, Lnu/xom/jaxen/FunctionCallException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public call(Lnu/xom/jaxen/Context;Ljava/util/List;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/FunctionCallException;
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lnu/xom/jaxen/Context;->getNodeSet()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lnu/xom/jaxen/Context;->getNavigator()Lnu/xom/jaxen/Navigator;

    move-result-object v1

    invoke-static {v0, v1}, Lnu/xom/jaxen/function/NamespaceUriFunction;->evaluate(Ljava/util/List;Lnu/xom/jaxen/Navigator;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lnu/xom/jaxen/Context;->getNavigator()Lnu/xom/jaxen/Navigator;

    move-result-object v0

    invoke-static {p2, v0}, Lnu/xom/jaxen/function/NamespaceUriFunction;->evaluate(Ljava/util/List;Lnu/xom/jaxen/Navigator;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lnu/xom/jaxen/FunctionCallException;

    const-string v1, "namespace-uri() requires zero or one argument."

    invoke-direct {v0, v1}, Lnu/xom/jaxen/FunctionCallException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
