.class Lnu/xom/xslt/XSLTHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;


# instance fields
.field private buffer:Ljava/lang/StringBuffer;

.field private current:Lnu/xom/Element;

.field private final factory:Lnu/xom/NodeFactory;

.field private namespaceDeclarations:Lorg/xml/sax/helpers/AttributesImpl;

.field private final parents:Ljava/util/ArrayList;

.field private final result:Lnu/xom/Nodes;


# direct methods
.method constructor <init>(Lnu/xom/NodeFactory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    iput-object v0, p0, Lnu/xom/xslt/XSLTHandler;->namespaceDeclarations:Lorg/xml/sax/helpers/AttributesImpl;

    iput-object p1, p0, Lnu/xom/xslt/XSLTHandler;->factory:Lnu/xom/NodeFactory;

    new-instance v0, Lnu/xom/Nodes;

    invoke-direct {v0}, Lnu/xom/Nodes;-><init>()V

    iput-object v0, p0, Lnu/xom/xslt/XSLTHandler;->result:Lnu/xom/Nodes;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnu/xom/xslt/XSLTHandler;->parents:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lnu/xom/xslt/XSLTHandler;->buffer:Ljava/lang/StringBuffer;

    return-void
.end method

.method private addToResultTree(Lnu/xom/Nodes;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lnu/xom/xslt/XSLTHandler;->parents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    :goto_0
    invoke-virtual {p1}, Lnu/xom/Nodes;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lnu/xom/xslt/XSLTHandler;->result:Lnu/xom/Nodes;

    invoke-virtual {p1, v1}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnu/xom/Nodes;->append(Lnu/xom/Node;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnu/xom/xslt/XSLTHandler;->parents:Ljava/util/ArrayList;

    iget-object v2, p0, Lnu/xom/xslt/XSLTHandler;->parents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnu/xom/ParentNode;

    move v3, v4

    :goto_1
    invoke-virtual {p1}, Lnu/xom/Nodes;->size()I

    move-result v1

    if-ge v3, v1, :cond_2

    invoke-virtual {p1, v3}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object v2

    instance-of v1, v2, Lnu/xom/Attribute;

    if-eqz v1, :cond_1

    move-object v0, p0

    check-cast v0, Lnu/xom/Element;

    move-object v1, v0

    check-cast v2, Lnu/xom/Attribute;

    invoke-virtual {v1, v2}, Lnu/xom/Element;->addAttribute(Lnu/xom/Attribute;)V

    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2}, Lnu/xom/ParentNode;->appendChild(Lnu/xom/Node;)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method private flushText()V
    .locals 2

    iget-object v0, p0, Lnu/xom/xslt/XSLTHandler;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lnu/xom/xslt/XSLTHandler;->factory:Lnu/xom/NodeFactory;

    iget-object v1, p0, Lnu/xom/xslt/XSLTHandler;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnu/xom/NodeFactory;->makeText(Ljava/lang/String;)Lnu/xom/Nodes;

    move-result-object v0

    invoke-direct {p0, v0}, Lnu/xom/xslt/XSLTHandler;->addToResultTree(Lnu/xom/Nodes;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lnu/xom/xslt/XSLTHandler;->buffer:Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    iget-object v0, p0, Lnu/xom/xslt/XSLTHandler;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    return-void
.end method

.method public comment([CII)V
    .locals 5

    invoke-direct {p0}, Lnu/xom/xslt/XSLTHandler;->flushText()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    move v4, v1

    move-object v1, v0

    move v0, v4

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "- -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto :goto_0

    :cond_0
    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lnu/xom/xslt/XSLTHandler;->factory:Lnu/xom/NodeFactory;

    invoke-virtual {v1, v0}, Lnu/xom/NodeFactory;->makeComment(Ljava/lang/String;)Lnu/xom/Nodes;

    move-result-object v0

    invoke-direct {p0, v0}, Lnu/xom/xslt/XSLTHandler;->addToResultTree(Lnu/xom/Nodes;)V

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public endCDATA()V
    .locals 0

    return-void
.end method

.method public endDTD()V
    .locals 0

    return-void
.end method

.method public endDocument()V
    .locals 0

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    invoke-direct {p0}, Lnu/xom/xslt/XSLTHandler;->flushText()V

    iget-object v1, p0, Lnu/xom/xslt/XSLTHandler;->parents:Ljava/util/ArrayList;

    iget-object v2, p0, Lnu/xom/xslt/XSLTHandler;->parents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnu/xom/Element;

    iget-object v2, p0, Lnu/xom/xslt/XSLTHandler;->parents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lnu/xom/xslt/XSLTHandler;->factory:Lnu/xom/NodeFactory;

    iget-object v2, p0, Lnu/xom/xslt/XSLTHandler;->current:Lnu/xom/Element;

    invoke-virtual {v1, v2}, Lnu/xom/NodeFactory;->finishMakingElement(Lnu/xom/Element;)Lnu/xom/Nodes;

    move-result-object v1

    move v2, v4

    :goto_0
    invoke-virtual {v1}, Lnu/xom/Nodes;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lnu/xom/xslt/XSLTHandler;->result:Lnu/xom/Nodes;

    invoke-virtual {v1, v2}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnu/xom/Nodes;->append(Lnu/xom/Node;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lnu/xom/xslt/XSLTHandler;->current:Lnu/xom/Element;

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lnu/xom/xslt/XSLTHandler;->factory:Lnu/xom/NodeFactory;

    invoke-virtual {v2, v1}, Lnu/xom/NodeFactory;->finishMakingElement(Lnu/xom/Element;)Lnu/xom/Nodes;

    move-result-object v3

    invoke-virtual {v1}, Lnu/xom/Element;->getParent()Lnu/xom/ParentNode;

    move-result-object v2

    invoke-virtual {v1}, Lnu/xom/Element;->detach()V

    :goto_1
    invoke-virtual {v3}, Lnu/xom/Nodes;->size()I

    move-result v1

    if-ge v4, v1, :cond_1

    invoke-virtual {v3, v4}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object v1

    instance-of v5, v1, Lnu/xom/Attribute;

    if-eqz v5, :cond_3

    move-object v0, v2

    check-cast v0, Lnu/xom/Element;

    move-object p0, v0

    check-cast v1, Lnu/xom/Attribute;

    invoke-virtual {p0, v1}, Lnu/xom/Element;->addAttribute(Lnu/xom/Attribute;)V

    :goto_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v1}, Lnu/xom/ParentNode;->appendChild(Lnu/xom/Node;)V

    goto :goto_2
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method getResult()Lnu/xom/Nodes;
    .locals 1

    invoke-direct {p0}, Lnu/xom/xslt/XSLTHandler;->flushText()V

    iget-object v0, p0, Lnu/xom/xslt/XSLTHandler;->result:Lnu/xom/Nodes;

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lnu/xom/xslt/XSLTHandler;->characters([CII)V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "saxon:warning"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "continue"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "javax.xml.transform.disable-output-escaping"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "javax.xml.transform.enable-output-escaping"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lnu/xom/xslt/XSLTHandler;->flushText()V

    const-string v0, "?>"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    move-object v1, p2

    :goto_1
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "? >"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "?>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lnu/xom/xslt/XSLTHandler;->factory:Lnu/xom/NodeFactory;

    invoke-virtual {v0, p1, v1}, Lnu/xom/NodeFactory;->makeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lnu/xom/Nodes;

    move-result-object v0

    invoke-direct {p0, v0}, Lnu/xom/xslt/XSLTHandler;->addToResultTree(Lnu/xom/Nodes;)V

    goto :goto_0
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lnu/xom/xslt/XSLTHandler;->flushText()V

    new-instance v0, Lnu/xom/XMLException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not resolve entity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/XMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startCDATA()V
    .locals 0

    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public startDocument()V
    .locals 0

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 11

    const/4 v10, 0x0

    invoke-direct {p0}, Lnu/xom/xslt/XSLTHandler;->flushText()V

    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v6

    move v7, v10

    :goto_0
    if-ge v7, v6, :cond_0

    iget-object v0, p0, Lnu/xom/xslt/XSLTHandler;->namespaceDeclarations:Lorg/xml/sax/helpers/AttributesImpl;

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnu/xom/xslt/XSLTHandler;->namespaceDeclarations:Lorg/xml/sax/helpers/AttributesImpl;

    iget-object v0, p0, Lnu/xom/xslt/XSLTHandler;->factory:Lnu/xom/NodeFactory;

    invoke-virtual {v0, p3, p1}, Lnu/xom/NodeFactory;->startMakingElement(Ljava/lang/String;Ljava/lang/String;)Lnu/xom/Element;

    move-result-object v2

    iget-object v0, p0, Lnu/xom/xslt/XSLTHandler;->parents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object v2, p0, Lnu/xom/xslt/XSLTHandler;->current:Lnu/xom/Element;

    :goto_1
    iget-object v0, p0, Lnu/xom/xslt/XSLTHandler;->parents:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    move v4, v10

    :goto_2
    if-ge v4, v3, :cond_5

    invoke-interface {v1, v4}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "xmlns"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "xmlns:"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lnu/xom/xslt/XSLTHandler;->parents:Ljava/util/ArrayList;

    iget-object v3, p0, Lnu/xom/xslt/XSLTHandler;->parents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnu/xom/ParentNode;

    invoke-virtual {v0, v2}, Lnu/xom/ParentNode;->appendChild(Lnu/xom/Node;)V

    goto :goto_1

    :cond_3
    invoke-interface {v1, v4}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lnu/xom/xslt/XSLTHandler;->factory:Lnu/xom/NodeFactory;

    sget-object v8, Lnu/xom/Attribute$Type;->UNDECLARED:Lnu/xom/Attribute$Type;

    invoke-virtual {v7, v0, v5, v6, v8}, Lnu/xom/NodeFactory;->makeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnu/xom/Attribute$Type;)Lnu/xom/Nodes;

    move-result-object v5

    invoke-virtual {v5}, Lnu/xom/Nodes;->size()I

    move-result v6

    move v7, v10

    :goto_3
    if-ge v7, v6, :cond_1

    invoke-virtual {v5, v7}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object v0

    instance-of v8, v0, Lnu/xom/Attribute;

    if-eqz v8, :cond_4

    check-cast v0, Lnu/xom/Attribute;

    :goto_4
    :try_start_0
    invoke-virtual {v2, v0}, Lnu/xom/Element;->addAttribute(Lnu/xom/Attribute;)V
    :try_end_0
    .catch Lnu/xom/NamespaceConflictException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_3

    :catch_0
    move-exception v8

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "p"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v0}, Lnu/xom/Attribute;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lnu/xom/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lnu/xom/Attribute;->setNamespace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v2, v0}, Lnu/xom/Element;->appendChild(Lnu/xom/Node;)V

    goto :goto_5

    :cond_5
    move v0, v10

    :goto_6
    if-ge v0, v3, :cond_9

    invoke-interface {v1, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "xmlns:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lnu/xom/Element;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    :try_start_1
    invoke-virtual {v2, v4, v5}, Lnu/xom/Element;->addNamespaceDeclaration(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lnu/xom/NamespaceConflictException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_6
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    const-string v5, "xmlns"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    const-string v4, ""

    :cond_8
    const-string v5, ""

    invoke-virtual {v2, v5}, Lnu/xom/Element;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    :try_start_2
    invoke-virtual {v2, v5, v4}, Lnu/xom/Element;->addNamespaceDeclaration(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lnu/xom/NamespaceConflictException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    :catch_1
    move-exception v6

    const-string v6, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, ""

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Lnu/xom/Element;->addNamespaceDeclaration(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_9
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    iput-object v0, p0, Lnu/xom/xslt/XSLTHandler;->namespaceDeclarations:Lorg/xml/sax/helpers/AttributesImpl;

    return-void

    :catch_2
    move-exception v4

    goto :goto_7
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnu/xom/xslt/XSLTHandler;->namespaceDeclarations:Lorg/xml/sax/helpers/AttributesImpl;

    const-string v1, ""

    const-string v2, "xmlns"

    const-string v3, "xmlns"

    const-string v4, "CDATA"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnu/xom/xslt/XSLTHandler;->namespaceDeclarations:Lorg/xml/sax/helpers/AttributesImpl;

    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "xmlns:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "xmlns:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CDATA"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
