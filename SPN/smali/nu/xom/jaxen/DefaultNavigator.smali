.class public abstract Lnu/xom/jaxen/DefaultNavigator;
.super Ljava/lang/Object;

# interfaces
.implements Lnu/xom/jaxen/Navigator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAncestorAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/UnsupportedAxisException;
        }
    .end annotation

    new-instance v0, Lnu/xom/jaxen/util/AncestorAxisIterator;

    invoke-direct {v0, p1, p0}, Lnu/xom/jaxen/util/AncestorAxisIterator;-><init>(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)V

    return-object v0
.end method

.method public getAncestorOrSelfAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/UnsupportedAxisException;
        }
    .end annotation

    new-instance v0, Lnu/xom/jaxen/util/AncestorOrSelfAxisIterator;

    invoke-direct {v0, p1, p0}, Lnu/xom/jaxen/util/AncestorOrSelfAxisIterator;-><init>(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)V

    return-object v0
.end method

.method public getAttributeAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/UnsupportedAxisException;
        }
    .end annotation

    new-instance v0, Lnu/xom/jaxen/UnsupportedAxisException;

    const-string v1, "attribute"

    invoke-direct {v0, v1}, Lnu/xom/jaxen/UnsupportedAxisException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChildAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/UnsupportedAxisException;
        }
    .end annotation

    new-instance v0, Lnu/xom/jaxen/UnsupportedAxisException;

    const-string v1, "child"

    invoke-direct {v0, v1}, Lnu/xom/jaxen/UnsupportedAxisException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDescendantAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/UnsupportedAxisException;
        }
    .end annotation

    new-instance v0, Lnu/xom/jaxen/util/DescendantAxisIterator;

    invoke-direct {v0, p1, p0}, Lnu/xom/jaxen/util/DescendantAxisIterator;-><init>(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)V

    return-object v0
.end method

.method public getDescendantOrSelfAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/UnsupportedAxisException;
        }
    .end annotation

    new-instance v0, Lnu/xom/jaxen/util/DescendantOrSelfAxisIterator;

    invoke-direct {v0, p1, p0}, Lnu/xom/jaxen/util/DescendantOrSelfAxisIterator;-><init>(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)V

    return-object v0
.end method

.method public getDocument(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/FunctionCallException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocumentNode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getElementById(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFollowingAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/UnsupportedAxisException;
        }
    .end annotation

    new-instance v0, Lnu/xom/jaxen/util/FollowingAxisIterator;

    invoke-direct {v0, p1, p0}, Lnu/xom/jaxen/util/FollowingAxisIterator;-><init>(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)V

    return-object v0
.end method

.method public getFollowingSiblingAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/UnsupportedAxisException;
        }
    .end annotation

    new-instance v0, Lnu/xom/jaxen/util/FollowingSiblingAxisIterator;

    invoke-direct {v0, p1, p0}, Lnu/xom/jaxen/util/FollowingSiblingAxisIterator;-><init>(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)V

    return-object v0
.end method

.method public getNamespaceAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/UnsupportedAxisException;
        }
    .end annotation

    new-instance v0, Lnu/xom/jaxen/UnsupportedAxisException;

    const-string v1, "namespace"

    invoke-direct {v0, v1}, Lnu/xom/jaxen/UnsupportedAxisException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNodeType(Ljava/lang/Object;)S
    .locals 1

    invoke-virtual {p0, p1}, Lnu/xom/jaxen/DefaultNavigator;->isElement(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lnu/xom/jaxen/DefaultNavigator;->isAttribute(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lnu/xom/jaxen/DefaultNavigator;->isText(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lnu/xom/jaxen/DefaultNavigator;->isComment(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lnu/xom/jaxen/DefaultNavigator;->isDocument(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x9

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lnu/xom/jaxen/DefaultNavigator;->isProcessingInstruction(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x7

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Lnu/xom/jaxen/DefaultNavigator;->isNamespace(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0xd

    goto :goto_0

    :cond_6
    const/16 v0, 0xe

    goto :goto_0
.end method

.method public getParentAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/UnsupportedAxisException;
        }
    .end annotation

    new-instance v0, Lnu/xom/jaxen/UnsupportedAxisException;

    const-string v1, "parent"

    invoke-direct {v0, v1}, Lnu/xom/jaxen/UnsupportedAxisException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getParentNode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/UnsupportedAxisException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnu/xom/jaxen/DefaultNavigator;->getParentAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrecedingAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/UnsupportedAxisException;
        }
    .end annotation

    new-instance v0, Lnu/xom/jaxen/util/PrecedingAxisIterator;

    invoke-direct {v0, p1, p0}, Lnu/xom/jaxen/util/PrecedingAxisIterator;-><init>(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)V

    return-object v0
.end method

.method public getPrecedingSiblingAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/UnsupportedAxisException;
        }
    .end annotation

    new-instance v0, Lnu/xom/jaxen/util/PrecedingSiblingAxisIterator;

    invoke-direct {v0, p1, p0}, Lnu/xom/jaxen/util/PrecedingSiblingAxisIterator;-><init>(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)V

    return-object v0
.end method

.method public getProcessingInstructionData(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProcessingInstructionTarget(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelfAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/UnsupportedAxisException;
        }
    .end annotation

    new-instance v0, Lnu/xom/jaxen/util/SelfAxisIterator;

    invoke-direct {v0, p1}, Lnu/xom/jaxen/util/SelfAxisIterator;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public translateNamespacePrefixToUri(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
