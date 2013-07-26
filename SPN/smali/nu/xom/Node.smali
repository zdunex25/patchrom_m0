.class public abstract Lnu/xom/Node;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnu/xom/Node$1;,
        Lnu/xom/Node$EmptyNamespaceContext;
    }
.end annotation


# static fields
.field private static emptyContext:Lnu/xom/jaxen/NamespaceContext;


# instance fields
.field private parent:Lnu/xom/ParentNode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnu/xom/Node$EmptyNamespaceContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnu/xom/Node$EmptyNamespaceContext;-><init>(Lnu/xom/Node$1;)V

    sput-object v0, Lnu/xom/Node;->emptyContext:Lnu/xom/jaxen/NamespaceContext;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnu/xom/Node;->parent:Lnu/xom/ParentNode;

    return-void
.end method


# virtual methods
.method public abstract copy()Lnu/xom/Node;
.end method

.method public detach()V
    .locals 1

    iget-object v0, p0, Lnu/xom/Node;->parent:Lnu/xom/ParentNode;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lnu/xom/Node;->isAttribute()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnu/xom/Node;->parent:Lnu/xom/ParentNode;

    check-cast v0, Lnu/xom/Element;

    check-cast p0, Lnu/xom/Attribute;

    invoke-virtual {v0, p0}, Lnu/xom/Element;->removeAttribute(Lnu/xom/Attribute;)Lnu/xom/Attribute;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnu/xom/Node;->parent:Lnu/xom/ParentNode;

    invoke-virtual {v0, p0}, Lnu/xom/ParentNode;->removeChild(Lnu/xom/Node;)Lnu/xom/Node;

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnu/xom/Node;->parent:Lnu/xom/ParentNode;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnu/xom/Node;->parent:Lnu/xom/ParentNode;

    invoke-virtual {v0}, Lnu/xom/ParentNode;->getBaseURI()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract getChild(I)Lnu/xom/Node;
.end method

.method public abstract getChildCount()I
.end method

.method public final getDocument()Lnu/xom/Document;
    .locals 1

    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lnu/xom/Node;->isDocument()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnu/xom/Node;->getParent()Lnu/xom/ParentNode;

    move-result-object v0

    move-object p0, v0

    goto :goto_0

    :cond_0
    check-cast p0, Lnu/xom/Document;

    return-object p0
.end method

.method public final getParent()Lnu/xom/ParentNode;
    .locals 1

    iget-object v0, p0, Lnu/xom/Node;->parent:Lnu/xom/ParentNode;

    return-object v0
.end method

.method final getRoot()Lnu/xom/Node;
    .locals 2

    invoke-virtual {p0}, Lnu/xom/Node;->getParent()Lnu/xom/ParentNode;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, p0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lnu/xom/Node;->getParent()Lnu/xom/ParentNode;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lnu/xom/Node;->getParent()Lnu/xom/ParentNode;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract getValue()Ljava/lang/String;
.end method

.method public final hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method isAttribute()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isComment()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isDocType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isDocument()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isDocumentFragment()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isElement()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isProcessingInstruction()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isText()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final query(Ljava/lang/String;)Lnu/xom/Nodes;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnu/xom/Node;->query(Ljava/lang/String;Lnu/xom/XPathContext;)Lnu/xom/Nodes;

    move-result-object v0

    return-object v0
.end method

.method public final query(Ljava/lang/String;Lnu/xom/XPathContext;)Lnu/xom/Nodes;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lnu/xom/Node;->isDocType()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnu/xom/XPathException;

    const-string v1, "Can\'t use XPath on a DocType"

    invoke-direct {v0, v1}, Lnu/xom/XPathException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lnu/xom/Node;->getRoot()Lnu/xom/Node;

    move-result-object v1

    invoke-virtual {v1}, Lnu/xom/Node;->isDocument()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Lnu/xom/DocumentFragment;

    invoke-direct {v0}, Lnu/xom/DocumentFragment;-><init>()V

    invoke-virtual {v0, v1}, Lnu/xom/DocumentFragment;->appendChild(Lnu/xom/Node;)V

    :cond_1
    :try_start_0
    new-instance v1, Lnu/xom/JaxenConnector;

    invoke-direct {v1, p1}, Lnu/xom/JaxenConnector;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_3

    sget-object v2, Lnu/xom/Node;->emptyContext:Lnu/xom/jaxen/NamespaceContext;

    invoke-virtual {v1, v2}, Lnu/xom/JaxenConnector;->setNamespaceContext(Lnu/xom/jaxen/NamespaceContext;)V

    :goto_0
    invoke-virtual {v1, p0}, Lnu/xom/JaxenConnector;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lnu/xom/Nodes;

    invoke-direct {v2, v1}, Lnu/xom/Nodes;-><init>(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lnu/xom/XPathException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_2

    invoke-virtual {v0, v5}, Lnu/xom/DocumentFragment;->removeChild(I)Lnu/xom/Node;

    :cond_2
    return-object v2

    :cond_3
    :try_start_1
    invoke-virtual {p2}, Lnu/xom/XPathContext;->getJaxenContext()Lnu/xom/jaxen/NamespaceContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnu/xom/JaxenConnector;->setNamespaceContext(Lnu/xom/jaxen/NamespaceContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lnu/xom/XPathException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1, p1}, Lnu/xom/XPathException;->setXPath(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    invoke-virtual {v0, v5}, Lnu/xom/DocumentFragment;->removeChild(I)Lnu/xom/Node;

    :cond_4
    throw v1

    :catch_1
    move-exception v1

    :try_start_3
    new-instance v2, Lnu/xom/XPathException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "XPath error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lnu/xom/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2, p1}, Lnu/xom/XPathException;->setXPath(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method final setParent(Lnu/xom/ParentNode;)V
    .locals 0

    iput-object p1, p0, Lnu/xom/Node;->parent:Lnu/xom/ParentNode;

    return-void
.end method

.method public abstract toXML()Ljava/lang/String;
.end method
