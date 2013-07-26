.class public Lnu/xom/converters/DOMConverter;
.super Ljava/lang/Object;


# static fields
.field private static final XMLNS_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/2000/xmlns/"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendNodes(Lnu/xom/Nodes;Lnu/xom/Nodes;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lnu/xom/Nodes;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnu/xom/Nodes;->append(Lnu/xom/Node;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static convert(Lorg/w3c/dom/Attr;)Lnu/xom/Attribute;
    .locals 4

    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    new-instance v2, Lnu/xom/Attribute;

    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lnu/xom/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static convert(Lorg/w3c/dom/Comment;)Lnu/xom/Comment;
    .locals 2

    new-instance v0, Lnu/xom/Comment;

    invoke-interface {p0}, Lorg/w3c/dom/Comment;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/Comment;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static convert(Lorg/w3c/dom/DocumentType;)Lnu/xom/DocType;
    .locals 4

    new-instance v0, Lnu/xom/DocType;

    invoke-interface {p0}, Lorg/w3c/dom/DocumentType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lnu/xom/DocType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/w3c/dom/DocumentType;->getInternalSubset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnu/xom/DocType;->setInternalDTDSubset(Ljava/lang/String;)V

    return-object v0
.end method

.method public static convert(Lorg/w3c/dom/Document;)Lnu/xom/Document;
    .locals 1

    new-instance v0, Lnu/xom/NodeFactory;

    invoke-direct {v0}, Lnu/xom/NodeFactory;-><init>()V

    invoke-static {p0, v0}, Lnu/xom/converters/DOMConverter;->convert(Lorg/w3c/dom/Document;Lnu/xom/NodeFactory;)Lnu/xom/Document;

    move-result-object v0

    return-object v0
.end method

.method public static convert(Lorg/w3c/dom/Document;Lnu/xom/NodeFactory;)Lnu/xom/Document;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lnu/xom/NodeFactory;->makeRootElement(Ljava/lang/String;Ljava/lang/String;)Lnu/xom/Element;

    move-result-object v1

    invoke-virtual {p1}, Lnu/xom/NodeFactory;->startMakingDocument()Lnu/xom/Document;

    move-result-object v2

    invoke-virtual {v2, v1}, Lnu/xom/Document;->setRootElement(Lnu/xom/Element;)V

    invoke-static {v0, p1}, Lnu/xom/converters/DOMConverter;->convert(Lorg/w3c/dom/Element;Lnu/xom/NodeFactory;)Lnu/xom/Nodes;

    move-result-object v1

    move v3, v7

    move v4, v7

    move v5, v8

    :goto_0
    invoke-virtual {v1}, Lnu/xom/Nodes;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    invoke-virtual {v1, v3}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object v0

    if-eqz v5, :cond_1

    instance-of v6, v0, Lnu/xom/Element;

    if-eqz v6, :cond_0

    check-cast v0, Lnu/xom/Element;

    invoke-virtual {v2, v0}, Lnu/xom/Document;->setRootElement(Lnu/xom/Element;)V

    move v0, v4

    move v4, v7

    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v5, v4

    move v4, v0

    goto :goto_0

    :cond_0
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v2, v0, v4}, Lnu/xom/Document;->insertChild(Lnu/xom/Node;I)V

    move v0, v6

    move v4, v5

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v0}, Lnu/xom/Document;->appendChild(Lnu/xom/Node;)V

    move v0, v4

    move v4, v5

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    move-object v1, v0

    move v0, v7

    :goto_2
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    if-eq v3, v8, :cond_4

    invoke-static {v1, p1}, Lnu/xom/converters/DOMConverter;->convert(Lorg/w3c/dom/Node;Lnu/xom/NodeFactory;)Lnu/xom/Nodes;

    move-result-object v3

    move v4, v0

    move v0, v7

    :goto_3
    invoke-virtual {v3}, Lnu/xom/Nodes;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    invoke-virtual {v3, v0}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v2, v5, v4}, Lnu/xom/Document;->insertChild(Lnu/xom/Node;I)V

    add-int/lit8 v0, v0, 0x1

    move v4, v6

    goto :goto_3

    :cond_3
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    move-object v1, v0

    move v0, v4

    goto :goto_2

    :cond_4
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_6

    invoke-static {v0, p1}, Lnu/xom/converters/DOMConverter;->convert(Lorg/w3c/dom/Node;Lnu/xom/NodeFactory;)Lnu/xom/Nodes;

    move-result-object v1

    move v3, v7

    :goto_5
    invoke-virtual {v1}, Lnu/xom/Nodes;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-virtual {v1, v3}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object v4

    invoke-virtual {v2, v4}, Lnu/xom/Document;->appendChild(Lnu/xom/Node;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_4

    :cond_6
    return-object v2
.end method

.method public static convert(Lorg/w3c/dom/Element;)Lnu/xom/Element;
    .locals 2

    new-instance v0, Lnu/xom/NodeFactory;

    invoke-direct {v0}, Lnu/xom/NodeFactory;-><init>()V

    invoke-static {p0, v0}, Lnu/xom/converters/DOMConverter;->convert(Lorg/w3c/dom/Element;Lnu/xom/NodeFactory;)Lnu/xom/Nodes;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object p0

    check-cast p0, Lnu/xom/Element;

    return-object p0
.end method

.method private static convert(Lorg/w3c/dom/Comment;Lnu/xom/NodeFactory;)Lnu/xom/Nodes;
    .locals 1

    invoke-interface {p0}, Lorg/w3c/dom/Comment;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnu/xom/NodeFactory;->makeComment(Ljava/lang/String;)Lnu/xom/Nodes;

    move-result-object v0

    return-object v0
.end method

.method public static convert(Lorg/w3c/dom/DocumentFragment;)Lnu/xom/Nodes;
    .locals 1

    new-instance v0, Lnu/xom/NodeFactory;

    invoke-direct {v0}, Lnu/xom/NodeFactory;-><init>()V

    invoke-static {p0, v0}, Lnu/xom/converters/DOMConverter;->convert(Lorg/w3c/dom/DocumentFragment;Lnu/xom/NodeFactory;)Lnu/xom/Nodes;

    move-result-object v0

    return-object v0
.end method

.method public static convert(Lorg/w3c/dom/DocumentFragment;Lnu/xom/NodeFactory;)Lnu/xom/Nodes;
    .locals 4

    new-instance v0, Lnu/xom/Nodes;

    invoke-direct {v0}, Lnu/xom/Nodes;-><init>()V

    invoke-interface {p0}, Lorg/w3c/dom/DocumentFragment;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-static {v3, p1}, Lnu/xom/converters/DOMConverter;->convert(Lorg/w3c/dom/Node;Lnu/xom/NodeFactory;)Lnu/xom/Nodes;

    move-result-object v3

    invoke-static {v0, v3}, Lnu/xom/converters/DOMConverter;->appendNodes(Lnu/xom/Nodes;Lnu/xom/Nodes;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static convert(Lorg/w3c/dom/DocumentType;Lnu/xom/NodeFactory;)Lnu/xom/Nodes;
    .locals 4

    invoke-interface {p0}, Lorg/w3c/dom/DocumentType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lnu/xom/NodeFactory;->makeDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnu/xom/Nodes;

    move-result-object v1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {v1}, Lnu/xom/Nodes;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-virtual {v1, v2}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object v0

    instance-of v3, v0, Lnu/xom/DocType;

    if-eqz v3, :cond_1

    check-cast v0, Lnu/xom/DocType;

    invoke-interface {p0}, Lorg/w3c/dom/DocumentType;->getInternalSubset()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnu/xom/DocType;->setInternalDTDSubset(Ljava/lang/String;)V

    :cond_0
    return-object v1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method private static convert(Lorg/w3c/dom/Element;Lnu/xom/NodeFactory;)Lnu/xom/Nodes;
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {p0, p1}, Lnu/xom/converters/DOMConverter;->makeElement(Lorg/w3c/dom/Element;Lnu/xom/NodeFactory;)Lnu/xom/Element;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v1, Lnu/xom/Nodes;

    invoke-direct {v1}, Lnu/xom/Nodes;-><init>()V

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    move v3, v8

    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-static {v4, p1}, Lnu/xom/converters/DOMConverter;->convert(Lorg/w3c/dom/Node;Lnu/xom/NodeFactory;)Lnu/xom/Nodes;

    move-result-object v4

    move v5, v8

    :goto_1
    invoke-virtual {v4}, Lnu/xom/Nodes;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-virtual {v4, v5}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object v6

    invoke-virtual {v1, v6}, Lnu/xom/Nodes;->append(Lnu/xom/Node;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v1, v8

    move-object v4, v3

    move-object v2, p0

    :goto_2
    invoke-interface {v2}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v1, :cond_2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    move v5, v8

    move-object v2, v1

    :goto_3
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-ne v1, v9, :cond_6

    move-object v0, v2

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v1, v0

    invoke-static {v1, p1}, Lnu/xom/converters/DOMConverter;->makeElement(Lorg/w3c/dom/Element;Lnu/xom/NodeFactory;)Lnu/xom/Element;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v4, v1}, Lnu/xom/ParentNode;->appendChild(Lnu/xom/Node;)V

    invoke-interface {v2}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v6

    if-eqz v6, :cond_7

    :goto_4
    move-object v4, v1

    move v1, v5

    goto :goto_2

    :cond_2
    if-ne v2, p0, :cond_4

    invoke-virtual {p1, v3}, Lnu/xom/NodeFactory;->finishMakingElement(Lnu/xom/Element;)Lnu/xom/Nodes;

    move-result-object v1

    :cond_3
    return-object v1

    :cond_4
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    move v5, v8

    move-object v2, v1

    goto :goto_3

    :cond_5
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-virtual {v4}, Lnu/xom/ParentNode;->getParent()Lnu/xom/ParentNode;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v4}, Lnu/xom/ParentNode;->getParent()Lnu/xom/ParentNode;

    move-result-object v2

    move-object v4, v2

    move-object v2, v1

    move v1, v9

    goto :goto_2

    :cond_6
    invoke-static {v2, p1}, Lnu/xom/converters/DOMConverter;->convert(Lorg/w3c/dom/Node;Lnu/xom/NodeFactory;)Lnu/xom/Nodes;

    move-result-object v1

    move v6, v8

    :goto_5
    invoke-virtual {v1}, Lnu/xom/Nodes;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    invoke-virtual {v1, v6}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object v7

    invoke-virtual {v4, v7}, Lnu/xom/ParentNode;->appendChild(Lnu/xom/Node;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_7
    move-object v1, v4

    goto :goto_4

    :cond_8
    move-object v2, v1

    move v1, v9

    goto :goto_2
.end method

.method private static convert(Lorg/w3c/dom/Node;Lnu/xom/NodeFactory;)Lnu/xom/Nodes;
    .locals 4

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v1, Lnu/xom/XMLException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unexpected DOM node type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnu/xom/XMLException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    check-cast p0, Lorg/w3c/dom/Element;

    invoke-static {p0, p1}, Lnu/xom/converters/DOMConverter;->convert(Lorg/w3c/dom/Element;Lnu/xom/NodeFactory;)Lnu/xom/Nodes;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_2
    check-cast p0, Lorg/w3c/dom/Comment;

    invoke-static {p0, p1}, Lnu/xom/converters/DOMConverter;->convert(Lorg/w3c/dom/Comment;Lnu/xom/NodeFactory;)Lnu/xom/Nodes;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    check-cast p0, Lorg/w3c/dom/DocumentType;

    invoke-static {p0, p1}, Lnu/xom/converters/DOMConverter;->convert(Lorg/w3c/dom/DocumentType;Lnu/xom/NodeFactory;)Lnu/xom/Nodes;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    check-cast p0, Lorg/w3c/dom/Text;

    invoke-static {p0, p1}, Lnu/xom/converters/DOMConverter;->convert(Lorg/w3c/dom/Text;Lnu/xom/NodeFactory;)Lnu/xom/Nodes;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    check-cast p0, Lorg/w3c/dom/Text;

    invoke-static {p0, p1}, Lnu/xom/converters/DOMConverter;->convert(Lorg/w3c/dom/Text;Lnu/xom/NodeFactory;)Lnu/xom/Nodes;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    check-cast p0, Lorg/w3c/dom/ProcessingInstruction;

    invoke-static {p0, p1}, Lnu/xom/converters/DOMConverter;->convert(Lorg/w3c/dom/ProcessingInstruction;Lnu/xom/NodeFactory;)Lnu/xom/Nodes;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static convert(Lorg/w3c/dom/ProcessingInstruction;Lnu/xom/NodeFactory;)Lnu/xom/Nodes;
    .locals 2

    invoke-interface {p0}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lorg/w3c/dom/ProcessingInstruction;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lnu/xom/NodeFactory;->makeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lnu/xom/Nodes;

    move-result-object v0

    return-object v0
.end method

.method private static convert(Lorg/w3c/dom/Text;Lnu/xom/NodeFactory;)Lnu/xom/Nodes;
    .locals 1

    invoke-interface {p0}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnu/xom/NodeFactory;->makeText(Ljava/lang/String;)Lnu/xom/Nodes;

    move-result-object v0

    return-object v0
.end method

.method public static convert(Lorg/w3c/dom/ProcessingInstruction;)Lnu/xom/ProcessingInstruction;
    .locals 3

    new-instance v0, Lnu/xom/ProcessingInstruction;

    invoke-interface {p0}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lorg/w3c/dom/ProcessingInstruction;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnu/xom/ProcessingInstruction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static convert(Lorg/w3c/dom/Text;)Lnu/xom/Text;
    .locals 2

    new-instance v0, Lnu/xom/Text;

    invoke-interface {p0}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/Text;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static convert(Lnu/xom/Comment;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Comment;
    .locals 1

    invoke-virtual {p0}, Lnu/xom/Comment;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object v0

    return-object v0
.end method

.method public static convert(Lnu/xom/Document;Lorg/w3c/dom/DOMImplementation;)Lorg/w3c/dom/Document;
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lnu/xom/Document;->getRootElement()Lnu/xom/Element;

    move-result-object v0

    invoke-virtual {v0}, Lnu/xom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lnu/xom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnu/xom/Document;->getDocType()Lnu/xom/DocType;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lnu/xom/DocType;->getPublicID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lnu/xom/DocType;->getSystemID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v3, v2}, Lorg/w3c/dom/DOMImplementation;->createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/DocumentType;

    move-result-object v2

    :goto_0
    invoke-interface {p1, v0, v1, v2}, Lorg/w3c/dom/DOMImplementation;->createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    const/4 v0, 0x1

    move v3, v6

    move v4, v0

    :goto_1
    invoke-virtual {p0}, Lnu/xom/Document;->getChildCount()I

    move-result v0

    if-ge v3, v0, :cond_3

    invoke-virtual {p0, v3}, Lnu/xom/Document;->getChild(I)Lnu/xom/Node;

    move-result-object v0

    instance-of v5, v0, Lnu/xom/DocType;

    if-eqz v5, :cond_0

    move v0, v4

    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v4, v0

    goto :goto_1

    :cond_0
    instance-of v5, v0, Lnu/xom/Element;

    if-eqz v5, :cond_1

    check-cast v0, Lnu/xom/Element;

    invoke-static {v0, v1}, Lnu/xom/converters/DOMConverter;->convert(Lnu/xom/Element;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move v0, v6

    goto :goto_2

    :cond_1
    invoke-static {v0, v1}, Lnu/xom/converters/DOMConverter;->convert(Lnu/xom/Node;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v4, :cond_2

    invoke-interface {v1, v0, v2}, Lorg/w3c/dom/Document;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move v0, v4

    goto :goto_2

    :cond_2
    invoke-interface {v1, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move v0, v4

    goto :goto_2

    :cond_3
    return-object v1

    :cond_4
    move-object v2, v3

    goto :goto_0
.end method

.method private static convert(Lnu/xom/Element;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 13

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-static {p0, p1}, Lnu/xom/converters/DOMConverter;->makeElement(Lnu/xom/Element;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v3

    const/16 v1, 0xa

    new-array v1, v1, [I

    aput v10, v1, v10

    move v2, v10

    move-object v4, v1

    move v5, v10

    move-object v6, p0

    move-object v7, v3

    move v1, v10

    :goto_0
    if-nez v1, :cond_0

    invoke-virtual {v6}, Lnu/xom/Node;->getChildCount()I

    move-result v8

    if-lez v8, :cond_0

    invoke-virtual {v6, v10}, Lnu/xom/Node;->getChild(I)Lnu/xom/Node;

    move-result-object v5

    add-int/lit8 v2, v2, 0x1

    invoke-static {v4, v2}, Lnu/xom/converters/DOMConverter;->grow([II)[I

    move-result-object v4

    aput v10, v4, v2

    move-object v6, v4

    move-object v8, v7

    move v4, v1

    move v7, v10

    move-object v12, v5

    move v5, v2

    move-object v2, v12

    :goto_1
    instance-of v1, v2, Lnu/xom/Element;

    if-eqz v1, :cond_4

    move-object v0, v2

    check-cast v0, Lnu/xom/Element;

    move-object v1, v0

    invoke-static {v1, p1}, Lnu/xom/converters/DOMConverter;->makeElement(Lnu/xom/Element;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v8, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move v12, v4

    move-object v4, v6

    move-object v6, v2

    move v2, v5

    move v5, v7

    move-object v7, v1

    move v1, v12

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Lnu/xom/Node;->getParent()Lnu/xom/ParentNode;

    move-result-object v1

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    if-ne v9, v11, :cond_5

    instance-of v6, v6, Lnu/xom/Element;

    if-eqz v6, :cond_5

    move-object v6, v8

    :goto_2
    invoke-virtual {v1}, Lnu/xom/ParentNode;->getChildCount()I

    move-result v7

    sub-int/2addr v7, v11

    if-ne v7, v5, :cond_3

    add-int/lit8 v2, v2, -0x1

    if-ne v1, p0, :cond_2

    :cond_1
    return-object v3

    :cond_2
    invoke-virtual {v1}, Lnu/xom/Node;->getParent()Lnu/xom/ParentNode;

    move-result-object v5

    if-eqz v5, :cond_1

    aget v5, v4, v2

    move-object v7, v6

    move-object v6, v1

    move v1, v11

    goto :goto_0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v2

    invoke-virtual {v1, v5}, Lnu/xom/ParentNode;->getChild(I)Lnu/xom/Node;

    move-result-object v1

    move v7, v5

    move-object v8, v6

    move-object v6, v4

    move v5, v2

    move-object v2, v1

    move v4, v10

    goto :goto_1

    :cond_4
    invoke-static {v2, p1}, Lnu/xom/converters/DOMConverter;->convert(Lnu/xom/Node;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v8, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move v1, v4

    move-object v4, v6

    move-object v6, v2

    move v2, v5

    move v5, v7

    move-object v7, v8

    goto :goto_0

    :cond_5
    move-object v6, v7

    goto :goto_2
.end method

.method private static convert(Lnu/xom/Node;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Node;
    .locals 3

    instance-of v0, p0, Lnu/xom/Text;

    if-eqz v0, :cond_0

    check-cast p0, Lnu/xom/Text;

    invoke-static {p0, p1}, Lnu/xom/converters/DOMConverter;->convert(Lnu/xom/Text;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Text;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p0, Lnu/xom/Comment;

    if-eqz v0, :cond_1

    check-cast p0, Lnu/xom/Comment;

    invoke-static {p0, p1}, Lnu/xom/converters/DOMConverter;->convert(Lnu/xom/Comment;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Comment;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lnu/xom/ProcessingInstruction;

    if-eqz v0, :cond_2

    check-cast p0, Lnu/xom/ProcessingInstruction;

    invoke-static {p0, p1}, Lnu/xom/converters/DOMConverter;->convert(Lnu/xom/ProcessingInstruction;Lorg/w3c/dom/Document;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Lnu/xom/XMLException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unexpected node type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/XMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static convert(Lnu/xom/ProcessingInstruction;Lorg/w3c/dom/Document;)Lorg/w3c/dom/ProcessingInstruction;
    .locals 2

    invoke-virtual {p0}, Lnu/xom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnu/xom/ProcessingInstruction;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v0

    return-object v0
.end method

.method private static convert(Lnu/xom/Text;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Text;
    .locals 1

    invoke-virtual {p0}, Lnu/xom/Text;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v0

    return-object v0
.end method

.method private static grow([II)[I
    .locals 3

    const/4 v2, 0x0

    array-length v0, p0

    if-ge p1, v0, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private static makeElement(Lorg/w3c/dom/Element;Lnu/xom/NodeFactory;)Lnu/xom/Element;
    .locals 8

    const/4 v7, 0x0

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    :cond_0
    invoke-virtual {p1, v1, v0}, Lnu/xom/NodeFactory;->makeRootElement(Ljava/lang/String;Ljava/lang/String;)Lnu/xom/Element;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {p1, v1, v0}, Lnu/xom/NodeFactory;->startMakingElement(Ljava/lang/String;Ljava/lang/String;)Lnu/xom/Element;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    move v2, v7

    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Attr;

    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v5

    if-nez v4, :cond_4

    const-string v4, ""

    :cond_4
    const-string v6, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v4, "xmlns"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnu/xom/Element;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v0, v3, v5}, Lnu/xom/Element;->addNamespaceDeclaration(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    sget-object v6, Lnu/xom/Attribute$Type;->UNDECLARED:Lnu/xom/Attribute$Type;

    invoke-virtual {p1, v3, v4, v5, v6}, Lnu/xom/NodeFactory;->makeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnu/xom/Attribute$Type;)Lnu/xom/Nodes;

    move-result-object v3

    move v4, v7

    :goto_3
    invoke-virtual {v3}, Lnu/xom/Nodes;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    invoke-virtual {v3, v4}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object p0

    instance-of v5, p0, Lnu/xom/Attribute;

    if-eqz v5, :cond_8

    check-cast p0, Lnu/xom/Attribute;

    invoke-virtual {v0, p0}, Lnu/xom/Element;->addAttribute(Lnu/xom/Attribute;)V

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v0, p0}, Lnu/xom/Element;->appendChild(Lnu/xom/Node;)V

    goto :goto_4
.end method

.method private static makeElement(Lnu/xom/Element;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 8

    const/4 v6, 0x0

    invoke-virtual {p0}, Lnu/xom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnu/xom/Element;->getParent()Lnu/xom/ParentNode;

    move-result-object v1

    instance-of v1, v1, Lnu/xom/Document;

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    move-object v1, v0

    :goto_0
    invoke-virtual {p0}, Lnu/xom/Element;->getAttributeCount()I

    move-result v0

    move v2, v6

    :goto_1
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Lnu/xom/Element;->getAttribute(I)Lnu/xom/Attribute;

    move-result-object v3

    invoke-virtual {v3}, Lnu/xom/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lnu/xom/Attribute;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    :goto_2
    invoke-virtual {v3}, Lnu/xom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lnu/xom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lnu/xom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lnu/xom/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Lorg/w3c/dom/Document;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lnu/xom/Element;->getNamespaceDeclarationCount()I

    move-result v2

    move v3, v6

    :goto_3
    if-ge v3, v2, :cond_8

    invoke-virtual {p0, v3}, Lnu/xom/Element;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lnu/xom/Element;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lnu/xom/Element;->getParent()Lnu/xom/ParentNode;

    move-result-object v0

    instance-of v6, v0, Lnu/xom/Element;

    if-eqz v6, :cond_5

    check-cast v0, Lnu/xom/Element;

    invoke-virtual {v0, v4}, Lnu/xom/Element;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    :goto_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_5
    const-string v0, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_6
    const-string v0, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "http://www.w3.org/2000/xmlns/"

    const-string v4, "xmlns"

    invoke-interface {p1, v0, v4}, Lorg/w3c/dom/Document;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    invoke-interface {v0, v5}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    const-string v0, "http://www.w3.org/2000/xmlns/"

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "xmlns:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v0, v4}, Lorg/w3c/dom/Document;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    invoke-interface {v0, v5}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    return-object v1
.end method
