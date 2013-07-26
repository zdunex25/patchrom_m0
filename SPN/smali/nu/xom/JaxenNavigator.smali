.class Lnu/xom/JaxenNavigator;
.super Lnu/xom/jaxen/DefaultNavigator;

# interfaces
.implements Lnu/xom/jaxen/NamedAccessNavigator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnu/xom/JaxenNavigator$NamedChildIterator;,
        Lnu/xom/JaxenNavigator$ChildIterator;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x61440c9f29ac78c6L


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnu/xom/jaxen/DefaultNavigator;-><init>()V

    return-void
.end method

.method public static findByID(Lnu/xom/Element;Ljava/lang/String;)Lnu/xom/Element;
    .locals 3

    invoke-static {p0, p1}, Lnu/xom/JaxenNavigator;->hasID(Lnu/xom/Element;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lnu/xom/Element;->getChildElements()Lnu/xom/Elements;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Lnu/xom/Elements;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Lnu/xom/Elements;->get(I)Lnu/xom/Element;

    move-result-object v2

    invoke-static {v2, p1}, Lnu/xom/JaxenNavigator;->findByID(Lnu/xom/Element;Ljava/lang/String;)Lnu/xom/Element;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static hasID(Lnu/xom/Element;Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lnu/xom/Element;->getAttributeCount()I

    move-result v0

    move v1, v5

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lnu/xom/Element;->getAttribute(I)Lnu/xom/Attribute;

    move-result-object v2

    sget-object v3, Lnu/xom/Attribute$Type;->ID:Lnu/xom/Attribute$Type;

    invoke-virtual {v2}, Lnu/xom/Attribute;->getType()Lnu/xom/Attribute$Type;

    move-result-object v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lnu/xom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v5

    goto :goto_1
.end method


# virtual methods
.method public getAttributeAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1

    :try_start_0
    check-cast p1, Lnu/xom/Element;

    invoke-virtual {p1}, Lnu/xom/Element;->attributeIterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lnu/xom/jaxen/JaxenConstants;->EMPTY_ITERATOR:Ljava/util/Iterator;

    goto :goto_0
.end method

.method public getAttributeAxisIterator(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/UnsupportedAxisException;
        }
    .end annotation

    :try_start_0
    check-cast p1, Lnu/xom/Element;

    if-nez p4, :cond_0

    invoke-virtual {p1, p2}, Lnu/xom/Element;->getAttribute(Ljava/lang/String;)Lnu/xom/Attribute;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Lnu/xom/jaxen/JaxenConstants;->EMPTY_ITERATOR:Ljava/util/Iterator;

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p1, p2, p4}, Lnu/xom/Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Lnu/xom/Attribute;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Lnu/xom/jaxen/util/SingleObjectIterator;

    invoke-direct {v1, v0}, Lnu/xom/jaxen/util/SingleObjectIterator;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v0, Lnu/xom/jaxen/JaxenConstants;->EMPTY_ITERATOR:Ljava/util/Iterator;

    goto :goto_1
.end method

.method public getAttributeName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    check-cast p1, Lnu/xom/Attribute;

    invoke-virtual {p1}, Lnu/xom/Attribute;->getLocalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNamespaceUri(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    check-cast p1, Lnu/xom/Attribute;

    invoke-virtual {p1}, Lnu/xom/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeQName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    check-cast p1, Lnu/xom/Attribute;

    invoke-virtual {p1}, Lnu/xom/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    check-cast p1, Lnu/xom/Attribute;

    invoke-virtual {p1}, Lnu/xom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChildAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1

    instance-of v0, p1, Lnu/xom/ParentNode;

    if-eqz v0, :cond_0

    new-instance v0, Lnu/xom/JaxenNavigator$ChildIterator;

    check-cast p1, Lnu/xom/ParentNode;

    invoke-direct {v0, p1}, Lnu/xom/JaxenNavigator$ChildIterator;-><init>(Lnu/xom/ParentNode;)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lnu/xom/jaxen/JaxenConstants;->EMPTY_ITERATOR:Ljava/util/Iterator;

    goto :goto_0
.end method

.method public getChildAxisIterator(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/UnsupportedAxisException;
        }
    .end annotation

    instance-of v0, p1, Lnu/xom/ParentNode;

    if-eqz v0, :cond_0

    new-instance v0, Lnu/xom/JaxenNavigator$NamedChildIterator;

    check-cast p1, Lnu/xom/ParentNode;

    invoke-direct {v0, p1, p2, p3, p4}, Lnu/xom/JaxenNavigator$NamedChildIterator;-><init>(Lnu/xom/ParentNode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lnu/xom/jaxen/JaxenConstants;->EMPTY_ITERATOR:Ljava/util/Iterator;

    goto :goto_0
.end method

.method public getCommentStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    check-cast p1, Lnu/xom/Comment;

    invoke-virtual {p1}, Lnu/xom/Comment;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDocument(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/FunctionCallException;
        }
    .end annotation

    new-instance v0, Lnu/xom/jaxen/FunctionCallException;

    const-string v1, "document() function not supported"

    invoke-direct {v0, v1}, Lnu/xom/jaxen/FunctionCallException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDocumentNode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lnu/xom/Node;

    invoke-virtual {p1}, Lnu/xom/Node;->getRoot()Lnu/xom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getElementById(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/4 v2, 0x0

    instance-of v0, p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnu/xom/Node;

    :goto_0
    invoke-virtual {p0}, Lnu/xom/Node;->isElement()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnu/xom/Node;->isDocument()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    check-cast p0, Lnu/xom/ParentNode;

    move-object v0, p0

    :goto_1
    move-object p0, v0

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lnu/xom/ParentNode;->getParent()Lnu/xom/ParentNode;

    move-result-object v1

    move-object p0, v0

    move-object v0, v1

    goto :goto_2

    :cond_1
    check-cast p1, Lnu/xom/Node;

    move-object p0, p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lnu/xom/Node;->getParent()Lnu/xom/ParentNode;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lnu/xom/ParentNode;->isDocument()Z

    move-result v0

    if-eqz v0, :cond_4

    check-cast p0, Lnu/xom/Document;

    invoke-virtual {p0}, Lnu/xom/Document;->getRootElement()Lnu/xom/Element;

    move-result-object v0

    :goto_3
    invoke-static {v0, p2}, Lnu/xom/JaxenNavigator;->findByID(Lnu/xom/Element;Ljava/lang/String;)Lnu/xom/Element;

    move-result-object v0

    :goto_4
    return-object v0

    :cond_4
    invoke-virtual {p0, v2}, Lnu/xom/ParentNode;->getChild(I)Lnu/xom/Node;

    move-result-object v0

    invoke-virtual {v0}, Lnu/xom/Node;->isElement()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v2}, Lnu/xom/ParentNode;->getChild(I)Lnu/xom/Node;

    move-result-object p0

    check-cast p0, Lnu/xom/Element;

    move-object v0, p0

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public getElementName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    check-cast p1, Lnu/xom/Element;

    invoke-virtual {p1}, Lnu/xom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getElementNamespaceUri(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    check-cast p1, Lnu/xom/Element;

    invoke-virtual {p1}, Lnu/xom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getElementQName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    check-cast p1, Lnu/xom/Element;

    invoke-virtual {p1}, Lnu/xom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getElementStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    check-cast p1, Lnu/xom/Element;

    invoke-virtual {p1}, Lnu/xom/Element;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFollowingSiblingAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 3

    instance-of v0, p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnu/xom/Node;

    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Lnu/xom/Node;->getParent()Lnu/xom/ParentNode;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v0, Lnu/xom/jaxen/JaxenConstants;->EMPTY_ITERATOR:Ljava/util/Iterator;

    :goto_1
    return-object v0

    :cond_0
    check-cast p1, Lnu/xom/Node;

    move-object v0, p1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Lnu/xom/ParentNode;->indexOf(Lnu/xom/Node;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-instance v2, Lnu/xom/JaxenNavigator$ChildIterator;

    invoke-direct {v2, v1, v0}, Lnu/xom/JaxenNavigator$ChildIterator;-><init>(Lnu/xom/ParentNode;I)V

    move-object v0, v2

    goto :goto_1
.end method

.method public getNamespaceAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 5

    :try_start_0
    check-cast p1, Lnu/xom/Element;

    invoke-virtual {p1}, Lnu/xom/Element;->getNamespacePrefixesInScope()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Lnu/xom/Namespace;

    const-string v3, "xml"

    const-string v4, "http://www.w3.org/XML/1998/namespace"

    invoke-direct {v0, v3, v4, p1}, Lnu/xom/Namespace;-><init>(Ljava/lang/String;Ljava/lang/String;Lnu/xom/Element;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, ""

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    new-instance v3, Lnu/xom/Namespace;

    invoke-direct {v3, v0, p0, p1}, Lnu/xom/Namespace;-><init>(Ljava/lang/String;Ljava/lang/String;Lnu/xom/Element;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lnu/xom/jaxen/JaxenConstants;->EMPTY_ITERATOR:Ljava/util/Iterator;

    :goto_1
    return-object v0

    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method public getNamespacePrefix(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    check-cast p1, Lnu/xom/Namespace;

    invoke-virtual {p1}, Lnu/xom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    check-cast p1, Lnu/xom/Namespace;

    invoke-virtual {p1}, Lnu/xom/Namespace;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0, p1}, Lnu/xom/JaxenNavigator;->getParentNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnu/xom/Node;

    if-nez p0, :cond_0

    sget-object v0, Lnu/xom/jaxen/JaxenConstants;->EMPTY_ITERATOR:Ljava/util/Iterator;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lnu/xom/jaxen/util/SingleObjectIterator;

    invoke-direct {v0, p0}, Lnu/xom/jaxen/util/SingleObjectIterator;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getParentNode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnu/xom/Node;

    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Lnu/xom/Node;->getParent()Lnu/xom/ParentNode;

    move-result-object v0

    return-object v0

    :cond_0
    check-cast p1, Lnu/xom/Node;

    move-object v0, p1

    goto :goto_0
.end method

.method public getProcessingInstructionData(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    check-cast p1, Lnu/xom/ProcessingInstruction;

    invoke-virtual {p1}, Lnu/xom/ProcessingInstruction;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProcessingInstructionTarget(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    check-cast p1, Lnu/xom/ProcessingInstruction;

    invoke-virtual {p1}, Lnu/xom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelfAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 6

    const/4 v5, 0x1

    instance-of v0, p1, Lnu/xom/Text;

    if-eqz v0, :cond_2

    check-cast p1, Lnu/xom/Text;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lnu/xom/Text;->getParent()Lnu/xom/ParentNode;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnu/xom/ParentNode;->indexOf(Lnu/xom/Node;)I

    move-result v2

    move v3, v2

    :goto_0
    if-lez v3, :cond_0

    sub-int v4, v3, v5

    invoke-virtual {v1, v4}, Lnu/xom/ParentNode;->getChild(I)Lnu/xom/Node;

    move-result-object v4

    invoke-virtual {v4}, Lnu/xom/Node;->isText()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {v1}, Lnu/xom/ParentNode;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v5

    if-ge v2, v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v4}, Lnu/xom/ParentNode;->getChild(I)Lnu/xom/Node;

    move-result-object v4

    invoke-virtual {v4}, Lnu/xom/Node;->isText()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-gt v3, v2, :cond_3

    invoke-virtual {v1, v3}, Lnu/xom/ParentNode;->getChild(I)Lnu/xom/Node;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    move-object v0, p1

    :cond_3
    new-instance v1, Lnu/xom/jaxen/util/SingleObjectIterator;

    invoke-direct {v1, v0}, Lnu/xom/jaxen/util/SingleObjectIterator;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public getTextStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnu/xom/Text;

    invoke-virtual {p0}, Lnu/xom/Text;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnu/xom/Text;

    invoke-virtual {p0}, Lnu/xom/Text;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isAttribute(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnu/xom/Attribute;

    return v0
.end method

.method public isComment(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnu/xom/Comment;

    return v0
.end method

.method public isDocument(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnu/xom/Document;

    if-nez v0, :cond_0

    instance-of v0, p1, Lnu/xom/DocumentFragment;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isElement(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnu/xom/Element;

    return v0
.end method

.method public isNamespace(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnu/xom/Namespace;

    return v0
.end method

.method public isProcessingInstruction(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnu/xom/ProcessingInstruction;

    return v0
.end method

.method public isText(Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x0

    instance-of v0, p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lnu/xom/Text;

    if-nez v1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public parseXPath(Ljava/lang/String;)Lnu/xom/jaxen/XPath;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    new-instance v0, Lnu/xom/JaxenConnector;

    invoke-direct {v0, p1}, Lnu/xom/JaxenConnector;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
