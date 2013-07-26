.class public Lnu/xom/jaxen/Context;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x20240388da254e0fL


# instance fields
.field private contextSupport:Lnu/xom/jaxen/ContextSupport;

.field private nodeSet:Ljava/util/List;

.field private position:I

.field private size:I


# direct methods
.method public constructor <init>(Lnu/xom/jaxen/ContextSupport;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnu/xom/jaxen/Context;->contextSupport:Lnu/xom/jaxen/ContextSupport;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lnu/xom/jaxen/Context;->nodeSet:Ljava/util/List;

    iput v1, p0, Lnu/xom/jaxen/Context;->size:I

    iput v1, p0, Lnu/xom/jaxen/Context;->position:I

    return-void
.end method


# virtual methods
.method public duplicate()Lnu/xom/jaxen/Context;
    .locals 4

    new-instance v0, Lnu/xom/jaxen/Context;

    invoke-virtual {p0}, Lnu/xom/jaxen/Context;->getContextSupport()Lnu/xom/jaxen/ContextSupport;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/jaxen/Context;-><init>(Lnu/xom/jaxen/ContextSupport;)V

    invoke-virtual {p0}, Lnu/xom/jaxen/Context;->getNodeSet()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v2}, Lnu/xom/jaxen/Context;->setNodeSet(Ljava/util/List;)V

    iget v1, p0, Lnu/xom/jaxen/Context;->position:I

    invoke-virtual {v0, v1}, Lnu/xom/jaxen/Context;->setPosition(I)V

    :cond_0
    return-object v0
.end method

.method public getContextSupport()Lnu/xom/jaxen/ContextSupport;
    .locals 1

    iget-object v0, p0, Lnu/xom/jaxen/Context;->contextSupport:Lnu/xom/jaxen/ContextSupport;

    return-object v0
.end method

.method public getFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnu/xom/jaxen/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/UnresolvableException;
        }
    .end annotation

    invoke-virtual {p0}, Lnu/xom/jaxen/Context;->getContextSupport()Lnu/xom/jaxen/ContextSupport;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lnu/xom/jaxen/ContextSupport;->getFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnu/xom/jaxen/Function;

    move-result-object v0

    return-object v0
.end method

.method public getNavigator()Lnu/xom/jaxen/Navigator;
    .locals 1

    invoke-virtual {p0}, Lnu/xom/jaxen/Context;->getContextSupport()Lnu/xom/jaxen/ContextSupport;

    move-result-object v0

    invoke-virtual {v0}, Lnu/xom/jaxen/ContextSupport;->getNavigator()Lnu/xom/jaxen/Navigator;

    move-result-object v0

    return-object v0
.end method

.method public getNodeSet()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lnu/xom/jaxen/Context;->nodeSet:Ljava/util/List;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lnu/xom/jaxen/Context;->position:I

    return v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lnu/xom/jaxen/Context;->size:I

    return v0
.end method

.method public getVariableValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/UnresolvableException;
        }
    .end annotation

    invoke-virtual {p0}, Lnu/xom/jaxen/Context;->getContextSupport()Lnu/xom/jaxen/ContextSupport;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lnu/xom/jaxen/ContextSupport;->getVariableValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setContextSupport(Lnu/xom/jaxen/ContextSupport;)V
    .locals 0

    iput-object p1, p0, Lnu/xom/jaxen/Context;->contextSupport:Lnu/xom/jaxen/ContextSupport;

    return-void
.end method

.method public setNodeSet(Ljava/util/List;)V
    .locals 2

    iput-object p1, p0, Lnu/xom/jaxen/Context;->nodeSet:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lnu/xom/jaxen/Context;->size:I

    iget v0, p0, Lnu/xom/jaxen/Context;->position:I

    iget v1, p0, Lnu/xom/jaxen/Context;->size:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lnu/xom/jaxen/Context;->position:I

    :cond_0
    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lnu/xom/jaxen/Context;->position:I

    return-void
.end method

.method public setSize(I)V
    .locals 0

    iput p1, p0, Lnu/xom/jaxen/Context;->size:I

    return-void
.end method

.method public translateNamespacePrefixToUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lnu/xom/jaxen/Context;->getContextSupport()Lnu/xom/jaxen/ContextSupport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnu/xom/jaxen/ContextSupport;->translateNamespacePrefixToUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
