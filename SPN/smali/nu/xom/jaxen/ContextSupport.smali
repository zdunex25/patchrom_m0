.class public Lnu/xom/jaxen/ContextSupport;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3e5e2fed5f38e54fL


# instance fields
.field private transient functionContext:Lnu/xom/jaxen/FunctionContext;

.field private namespaceContext:Lnu/xom/jaxen/NamespaceContext;

.field private navigator:Lnu/xom/jaxen/Navigator;

.field private variableContext:Lnu/xom/jaxen/VariableContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lnu/xom/jaxen/NamespaceContext;Lnu/xom/jaxen/FunctionContext;Lnu/xom/jaxen/VariableContext;Lnu/xom/jaxen/Navigator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lnu/xom/jaxen/ContextSupport;->setNamespaceContext(Lnu/xom/jaxen/NamespaceContext;)V

    invoke-virtual {p0, p2}, Lnu/xom/jaxen/ContextSupport;->setFunctionContext(Lnu/xom/jaxen/FunctionContext;)V

    invoke-virtual {p0, p3}, Lnu/xom/jaxen/ContextSupport;->setVariableContext(Lnu/xom/jaxen/VariableContext;)V

    iput-object p4, p0, Lnu/xom/jaxen/ContextSupport;->navigator:Lnu/xom/jaxen/Navigator;

    return-void
.end method


# virtual methods
.method public getFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnu/xom/jaxen/Function;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/UnresolvableException;
        }
    .end annotation

    invoke-virtual {p0}, Lnu/xom/jaxen/ContextSupport;->getFunctionContext()Lnu/xom/jaxen/FunctionContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lnu/xom/jaxen/FunctionContext;->getFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnu/xom/jaxen/Function;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lnu/xom/jaxen/UnresolvableException;

    const-string v1, "No function context installed"

    invoke-direct {v0, v1}, Lnu/xom/jaxen/UnresolvableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFunctionContext()Lnu/xom/jaxen/FunctionContext;
    .locals 1

    iget-object v0, p0, Lnu/xom/jaxen/ContextSupport;->functionContext:Lnu/xom/jaxen/FunctionContext;

    return-object v0
.end method

.method public getNamespaceContext()Lnu/xom/jaxen/NamespaceContext;
    .locals 1

    iget-object v0, p0, Lnu/xom/jaxen/ContextSupport;->namespaceContext:Lnu/xom/jaxen/NamespaceContext;

    return-object v0
.end method

.method public getNavigator()Lnu/xom/jaxen/Navigator;
    .locals 1

    iget-object v0, p0, Lnu/xom/jaxen/ContextSupport;->navigator:Lnu/xom/jaxen/Navigator;

    return-object v0
.end method

.method public getVariableContext()Lnu/xom/jaxen/VariableContext;
    .locals 1

    iget-object v0, p0, Lnu/xom/jaxen/ContextSupport;->variableContext:Lnu/xom/jaxen/VariableContext;

    return-object v0
.end method

.method public getVariableValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/UnresolvableException;
        }
    .end annotation

    invoke-virtual {p0}, Lnu/xom/jaxen/ContextSupport;->getVariableContext()Lnu/xom/jaxen/VariableContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lnu/xom/jaxen/VariableContext;->getVariableValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lnu/xom/jaxen/UnresolvableException;

    const-string v1, "No variable context installed"

    invoke-direct {v0, v1}, Lnu/xom/jaxen/UnresolvableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFunctionContext(Lnu/xom/jaxen/FunctionContext;)V
    .locals 0

    iput-object p1, p0, Lnu/xom/jaxen/ContextSupport;->functionContext:Lnu/xom/jaxen/FunctionContext;

    return-void
.end method

.method public setNamespaceContext(Lnu/xom/jaxen/NamespaceContext;)V
    .locals 0

    iput-object p1, p0, Lnu/xom/jaxen/ContextSupport;->namespaceContext:Lnu/xom/jaxen/NamespaceContext;

    return-void
.end method

.method public setVariableContext(Lnu/xom/jaxen/VariableContext;)V
    .locals 0

    iput-object p1, p0, Lnu/xom/jaxen/ContextSupport;->variableContext:Lnu/xom/jaxen/VariableContext;

    return-void
.end method

.method public translateNamespacePrefixToUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://www.w3.org/XML/1998/namespace"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lnu/xom/jaxen/ContextSupport;->getNamespaceContext()Lnu/xom/jaxen/NamespaceContext;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lnu/xom/jaxen/NamespaceContext;->translateNamespacePrefixToUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
