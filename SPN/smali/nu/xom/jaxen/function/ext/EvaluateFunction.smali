.class public Lnu/xom/jaxen/function/ext/EvaluateFunction;
.super Ljava/lang/Object;

# interfaces
.implements Lnu/xom/jaxen/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static evaluate(Lnu/xom/jaxen/Context;Ljava/lang/Object;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/FunctionCallException;
        }
    .end annotation

    invoke-virtual {p0}, Lnu/xom/jaxen/Context;->getNodeSet()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lnu/xom/jaxen/Context;->getNavigator()Lnu/xom/jaxen/Navigator;

    move-result-object v0

    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/lang/String;

    move-object v1, p1

    :goto_1
    :try_start_0
    invoke-interface {v0, v1}, Lnu/xom/jaxen/Navigator;->parseXPath(Ljava/lang/String;)Lnu/xom/jaxen/XPath;

    move-result-object v0

    invoke-virtual {p0}, Lnu/xom/jaxen/Context;->getContextSupport()Lnu/xom/jaxen/ContextSupport;

    move-result-object v1

    invoke-virtual {v1}, Lnu/xom/jaxen/ContextSupport;->getVariableContext()Lnu/xom/jaxen/VariableContext;

    move-result-object v2

    invoke-interface {v0, v2}, Lnu/xom/jaxen/XPath;->setVariableContext(Lnu/xom/jaxen/VariableContext;)V

    invoke-virtual {v1}, Lnu/xom/jaxen/ContextSupport;->getFunctionContext()Lnu/xom/jaxen/FunctionContext;

    move-result-object v2

    invoke-interface {v0, v2}, Lnu/xom/jaxen/XPath;->setFunctionContext(Lnu/xom/jaxen/FunctionContext;)V

    invoke-virtual {v1}, Lnu/xom/jaxen/ContextSupport;->getNamespaceContext()Lnu/xom/jaxen/NamespaceContext;

    move-result-object v1

    invoke-interface {v0, v1}, Lnu/xom/jaxen/XPath;->setNamespaceContext(Lnu/xom/jaxen/NamespaceContext;)V

    invoke-virtual {p0}, Lnu/xom/jaxen/Context;->duplicate()Lnu/xom/jaxen/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lnu/xom/jaxen/XPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Lnu/xom/jaxen/saxpath/SAXPathException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p1, v0}, Lnu/xom/jaxen/function/StringFunction;->evaluate(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lnu/xom/jaxen/FunctionCallException;

    invoke-virtual {v0}, Lnu/xom/jaxen/saxpath/SAXPathException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnu/xom/jaxen/FunctionCallException;-><init>(Ljava/lang/String;)V

    throw v1
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

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lnu/xom/jaxen/function/ext/EvaluateFunction;->evaluate(Lnu/xom/jaxen/Context;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lnu/xom/jaxen/FunctionCallException;

    const-string v1, "evaluate() requires one argument"

    invoke-direct {v0, v1}, Lnu/xom/jaxen/FunctionCallException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
