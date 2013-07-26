.class public Lnu/xom/jaxen/BaseXPath;
.super Ljava/lang/Object;

# interfaces
.implements Lnu/xom/jaxen/XPath;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1bab28097f7d0630L


# instance fields
.field private final exprText:Ljava/lang/String;

.field private navigator:Lnu/xom/jaxen/Navigator;

.field private support:Lnu/xom/jaxen/ContextSupport;

.field private final xpath:Lnu/xom/jaxen/expr/XPathExpr;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {}, Lnu/xom/jaxen/saxpath/helpers/XPathReaderFactory;->createReader()Lnu/xom/jaxen/saxpath/XPathReader;

    move-result-object v0

    new-instance v1, Lnu/xom/jaxen/JaxenHandler;

    invoke-direct {v1}, Lnu/xom/jaxen/JaxenHandler;-><init>()V

    invoke-interface {v0, v1}, Lnu/xom/jaxen/saxpath/XPathReader;->setXPathHandler(Lnu/xom/jaxen/saxpath/XPathHandler;)V

    invoke-interface {v0, p1}, Lnu/xom/jaxen/saxpath/XPathReader;->parse(Ljava/lang/String;)V

    invoke-virtual {v1}, Lnu/xom/jaxen/JaxenHandler;->getXPathExpr()Lnu/xom/jaxen/expr/XPathExpr;

    move-result-object v0

    iput-object v0, p0, Lnu/xom/jaxen/BaseXPath;->xpath:Lnu/xom/jaxen/expr/XPathExpr;
    :try_end_0
    .catch Lnu/xom/jaxen/saxpath/XPathSyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnu/xom/jaxen/saxpath/SAXPathException; {:try_start_0 .. :try_end_0} :catch_1

    iput-object p1, p0, Lnu/xom/jaxen/BaseXPath;->exprText:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lnu/xom/jaxen/XPathSyntaxException;

    invoke-direct {v1, v0}, Lnu/xom/jaxen/XPathSyntaxException;-><init>(Lnu/xom/jaxen/saxpath/XPathSyntaxException;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lnu/xom/jaxen/JaxenException;

    invoke-direct {v1, v0}, Lnu/xom/jaxen/JaxenException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;Lnu/xom/jaxen/Navigator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lnu/xom/jaxen/BaseXPath;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lnu/xom/jaxen/BaseXPath;->navigator:Lnu/xom/jaxen/Navigator;

    return-void
.end method


# virtual methods
.method public addNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    invoke-virtual {p0}, Lnu/xom/jaxen/BaseXPath;->getNamespaceContext()Lnu/xom/jaxen/NamespaceContext;

    move-result-object p0

    instance-of v0, p0, Lnu/xom/jaxen/SimpleNamespaceContext;

    if-eqz v0, :cond_0

    check-cast p0, Lnu/xom/jaxen/SimpleNamespaceContext;

    invoke-virtual {p0, p1, p2}, Lnu/xom/jaxen/SimpleNamespaceContext;->addNamespace(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lnu/xom/jaxen/JaxenException;

    const-string v1, "Operation not permitted while using a non-simple namespace context."

    invoke-direct {v0, v1}, Lnu/xom/jaxen/JaxenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public booleanValueOf(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnu/xom/jaxen/BaseXPath;->getContext(Ljava/lang/Object;)Lnu/xom/jaxen/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnu/xom/jaxen/BaseXPath;->selectNodesForContext(Lnu/xom/jaxen/Context;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lnu/xom/jaxen/Context;->getNavigator()Lnu/xom/jaxen/Navigator;

    move-result-object v0

    invoke-static {v1, v0}, Lnu/xom/jaxen/function/BooleanFunction;->evaluate(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method protected createFunctionContext()Lnu/xom/jaxen/FunctionContext;
    .locals 1

    invoke-static {}, Lnu/xom/jaxen/XPathFunctionContext;->getInstance()Lnu/xom/jaxen/FunctionContext;

    move-result-object v0

    return-object v0
.end method

.method protected createNamespaceContext()Lnu/xom/jaxen/NamespaceContext;
    .locals 1

    new-instance v0, Lnu/xom/jaxen/SimpleNamespaceContext;

    invoke-direct {v0}, Lnu/xom/jaxen/SimpleNamespaceContext;-><init>()V

    return-object v0
.end method

.method protected createVariableContext()Lnu/xom/jaxen/VariableContext;
    .locals 1

    new-instance v0, Lnu/xom/jaxen/SimpleVariableContext;

    invoke-direct {v0}, Lnu/xom/jaxen/SimpleVariableContext;-><init>()V

    return-object v0
.end method

.method public debug()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnu/xom/jaxen/BaseXPath;->xpath:Lnu/xom/jaxen/expr/XPathExpr;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public evaluate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnu/xom/jaxen/BaseXPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_0

    instance-of v2, v1, Ljava/lang/Number;

    if-nez v2, :cond_0

    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method protected getContext(Ljava/lang/Object;)Lnu/xom/jaxen/Context;
    .locals 2

    instance-of v0, p1, Lnu/xom/jaxen/Context;

    if-eqz v0, :cond_0

    check-cast p1, Lnu/xom/jaxen/Context;

    move-object v0, p1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lnu/xom/jaxen/Context;

    invoke-virtual {p0}, Lnu/xom/jaxen/BaseXPath;->getContextSupport()Lnu/xom/jaxen/ContextSupport;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/jaxen/Context;-><init>(Lnu/xom/jaxen/ContextSupport;)V

    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lnu/xom/jaxen/Context;->setNodeSet(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lnu/xom/jaxen/util/SingletonList;

    invoke-direct {v1, p1}, Lnu/xom/jaxen/util/SingletonList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lnu/xom/jaxen/Context;->setNodeSet(Ljava/util/List;)V

    goto :goto_0
.end method

.method protected getContextSupport()Lnu/xom/jaxen/ContextSupport;
    .locals 5

    iget-object v0, p0, Lnu/xom/jaxen/BaseXPath;->support:Lnu/xom/jaxen/ContextSupport;

    if-nez v0, :cond_0

    new-instance v0, Lnu/xom/jaxen/ContextSupport;

    invoke-virtual {p0}, Lnu/xom/jaxen/BaseXPath;->createNamespaceContext()Lnu/xom/jaxen/NamespaceContext;

    move-result-object v1

    invoke-virtual {p0}, Lnu/xom/jaxen/BaseXPath;->createFunctionContext()Lnu/xom/jaxen/FunctionContext;

    move-result-object v2

    invoke-virtual {p0}, Lnu/xom/jaxen/BaseXPath;->createVariableContext()Lnu/xom/jaxen/VariableContext;

    move-result-object v3

    invoke-virtual {p0}, Lnu/xom/jaxen/BaseXPath;->getNavigator()Lnu/xom/jaxen/Navigator;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lnu/xom/jaxen/ContextSupport;-><init>(Lnu/xom/jaxen/NamespaceContext;Lnu/xom/jaxen/FunctionContext;Lnu/xom/jaxen/VariableContext;Lnu/xom/jaxen/Navigator;)V

    iput-object v0, p0, Lnu/xom/jaxen/BaseXPath;->support:Lnu/xom/jaxen/ContextSupport;

    :cond_0
    iget-object v0, p0, Lnu/xom/jaxen/BaseXPath;->support:Lnu/xom/jaxen/ContextSupport;

    return-object v0
.end method

.method public getFunctionContext()Lnu/xom/jaxen/FunctionContext;
    .locals 1

    invoke-virtual {p0}, Lnu/xom/jaxen/BaseXPath;->getContextSupport()Lnu/xom/jaxen/ContextSupport;

    move-result-object v0

    invoke-virtual {v0}, Lnu/xom/jaxen/ContextSupport;->getFunctionContext()Lnu/xom/jaxen/FunctionContext;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceContext()Lnu/xom/jaxen/NamespaceContext;
    .locals 1

    invoke-virtual {p0}, Lnu/xom/jaxen/BaseXPath;->getContextSupport()Lnu/xom/jaxen/ContextSupport;

    move-result-object v0

    invoke-virtual {v0}, Lnu/xom/jaxen/ContextSupport;->getNamespaceContext()Lnu/xom/jaxen/NamespaceContext;

    move-result-object v0

    return-object v0
.end method

.method public getNavigator()Lnu/xom/jaxen/Navigator;
    .locals 1

    iget-object v0, p0, Lnu/xom/jaxen/BaseXPath;->navigator:Lnu/xom/jaxen/Navigator;

    return-object v0
.end method

.method public getRootExpr()Lnu/xom/jaxen/expr/Expr;
    .locals 1

    iget-object v0, p0, Lnu/xom/jaxen/BaseXPath;->xpath:Lnu/xom/jaxen/expr/XPathExpr;

    invoke-interface {v0}, Lnu/xom/jaxen/expr/XPathExpr;->getRootExpr()Lnu/xom/jaxen/expr/Expr;

    move-result-object v0

    return-object v0
.end method

.method public getVariableContext()Lnu/xom/jaxen/VariableContext;
    .locals 1

    invoke-virtual {p0}, Lnu/xom/jaxen/BaseXPath;->getContextSupport()Lnu/xom/jaxen/ContextSupport;

    move-result-object v0

    invoke-virtual {v0}, Lnu/xom/jaxen/ContextSupport;->getVariableContext()Lnu/xom/jaxen/VariableContext;

    move-result-object v0

    return-object v0
.end method

.method public numberValueOf(Ljava/lang/Object;)Ljava/lang/Number;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnu/xom/jaxen/BaseXPath;->getContext(Ljava/lang/Object;)Lnu/xom/jaxen/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnu/xom/jaxen/BaseXPath;->selectSingleNodeForContext(Lnu/xom/jaxen/Context;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lnu/xom/jaxen/Context;->getNavigator()Lnu/xom/jaxen/Navigator;

    move-result-object v0

    invoke-static {v1, v0}, Lnu/xom/jaxen/function/NumberFunction;->evaluate(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public selectNodes(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnu/xom/jaxen/BaseXPath;->getContext(Ljava/lang/Object;)Lnu/xom/jaxen/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnu/xom/jaxen/BaseXPath;->selectNodesForContext(Lnu/xom/jaxen/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected selectNodesForContext(Lnu/xom/jaxen/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    iget-object v0, p0, Lnu/xom/jaxen/BaseXPath;->xpath:Lnu/xom/jaxen/expr/XPathExpr;

    invoke-interface {v0, p1}, Lnu/xom/jaxen/expr/XPathExpr;->asList(Lnu/xom/jaxen/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public selectSingleNode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnu/xom/jaxen/BaseXPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected selectSingleNodeForContext(Lnu/xom/jaxen/Context;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnu/xom/jaxen/BaseXPath;->selectNodesForContext(Lnu/xom/jaxen/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public setFunctionContext(Lnu/xom/jaxen/FunctionContext;)V
    .locals 1

    invoke-virtual {p0}, Lnu/xom/jaxen/BaseXPath;->getContextSupport()Lnu/xom/jaxen/ContextSupport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnu/xom/jaxen/ContextSupport;->setFunctionContext(Lnu/xom/jaxen/FunctionContext;)V

    return-void
.end method

.method public setNamespaceContext(Lnu/xom/jaxen/NamespaceContext;)V
    .locals 1

    invoke-virtual {p0}, Lnu/xom/jaxen/BaseXPath;->getContextSupport()Lnu/xom/jaxen/ContextSupport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnu/xom/jaxen/ContextSupport;->setNamespaceContext(Lnu/xom/jaxen/NamespaceContext;)V

    return-void
.end method

.method public setVariableContext(Lnu/xom/jaxen/VariableContext;)V
    .locals 1

    invoke-virtual {p0}, Lnu/xom/jaxen/BaseXPath;->getContextSupport()Lnu/xom/jaxen/ContextSupport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnu/xom/jaxen/ContextSupport;->setVariableContext(Lnu/xom/jaxen/VariableContext;)V

    return-void
.end method

.method public stringValueOf(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnu/xom/jaxen/BaseXPath;->getContext(Ljava/lang/Object;)Lnu/xom/jaxen/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnu/xom/jaxen/BaseXPath;->selectSingleNodeForContext(Lnu/xom/jaxen/Context;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lnu/xom/jaxen/Context;->getNavigator()Lnu/xom/jaxen/Navigator;

    move-result-object v0

    invoke-static {v1, v0}, Lnu/xom/jaxen/function/StringFunction;->evaluate(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnu/xom/jaxen/BaseXPath;->exprText:Ljava/lang/String;

    return-object v0
.end method

.method public valueOf(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnu/xom/jaxen/BaseXPath;->stringValueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
