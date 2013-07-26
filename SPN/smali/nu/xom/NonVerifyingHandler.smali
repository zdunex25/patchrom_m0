.class Lnu/xom/NonVerifyingHandler;
.super Lnu/xom/XOMHandler;


# direct methods
.method constructor <init>(Lnu/xom/NodeFactory;)V
    .locals 0

    invoke-direct {p0, p1}, Lnu/xom/XOMHandler;-><init>(Lnu/xom/NodeFactory;)V

    return-void
.end method

.method private flushText()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lnu/xom/NonVerifyingHandler;->buffer:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnu/xom/NonVerifyingHandler;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnu/xom/NonVerifyingHandler;->textString:Ljava/lang/String;

    iput-object v4, p0, Lnu/xom/NonVerifyingHandler;->buffer:Ljava/lang/StringBuffer;

    :cond_0
    iget-object v0, p0, Lnu/xom/NonVerifyingHandler;->textString:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lnu/xom/NonVerifyingHandler;->inCDATA:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lnu/xom/NonVerifyingHandler;->textString:Ljava/lang/String;

    invoke-static {v0}, Lnu/xom/Text;->build(Ljava/lang/String;)Lnu/xom/Text;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lnu/xom/NonVerifyingHandler;->parent:Lnu/xom/ParentNode;

    iget-object v2, p0, Lnu/xom/NonVerifyingHandler;->parent:Lnu/xom/ParentNode;

    invoke-virtual {v2}, Lnu/xom/ParentNode;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lnu/xom/ParentNode;->fastInsertChild(Lnu/xom/Node;I)V

    iput-object v4, p0, Lnu/xom/NonVerifyingHandler;->textString:Ljava/lang/String;

    :cond_1
    iput-boolean v3, p0, Lnu/xom/NonVerifyingHandler;->inCDATA:Z

    iput-boolean v3, p0, Lnu/xom/NonVerifyingHandler;->finishedCDATA:Z

    return-void

    :cond_2
    iget-object v0, p0, Lnu/xom/NonVerifyingHandler;->textString:Ljava/lang/String;

    invoke-static {v0}, Lnu/xom/CDATASection;->build(Ljava/lang/String;)Lnu/xom/Text;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public comment([CII)V
    .locals 3

    iget-boolean v0, p0, Lnu/xom/NonVerifyingHandler;->inDTD:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lnu/xom/NonVerifyingHandler;->flushText()V

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0}, Lnu/xom/Comment;->build(Ljava/lang/String;)Lnu/xom/Comment;

    move-result-object v0

    iget-boolean v1, p0, Lnu/xom/NonVerifyingHandler;->inDTD:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lnu/xom/NonVerifyingHandler;->inProlog:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnu/xom/NonVerifyingHandler;->parent:Lnu/xom/ParentNode;

    iget v2, p0, Lnu/xom/NonVerifyingHandler;->position:I

    invoke-virtual {v1, v0, v2}, Lnu/xom/ParentNode;->insertChild(Lnu/xom/Node;I)V

    iget v0, p0, Lnu/xom/NonVerifyingHandler;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnu/xom/NonVerifyingHandler;->position:I

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lnu/xom/NonVerifyingHandler;->inInternalSubset()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lnu/xom/NonVerifyingHandler;->parent:Lnu/xom/ParentNode;

    iget-object v2, p0, Lnu/xom/NonVerifyingHandler;->parent:Lnu/xom/ParentNode;

    invoke-virtual {v2}, Lnu/xom/ParentNode;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lnu/xom/ParentNode;->fastInsertChild(Lnu/xom/Node;I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lnu/xom/NonVerifyingHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnu/xom/NonVerifyingHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lnu/xom/Comment;->toXML()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lnu/xom/NonVerifyingHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public endDTD()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnu/xom/NonVerifyingHandler;->inDTD:Z

    iget-object v0, p0, Lnu/xom/NonVerifyingHandler;->doctype:Lnu/xom/DocType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnu/xom/NonVerifyingHandler;->doctype:Lnu/xom/DocType;

    iget-object v1, p0, Lnu/xom/NonVerifyingHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnu/xom/DocType;->fastSetInternalDTDSubset(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lnu/xom/NonVerifyingHandler;->parents:Ljava/util/ArrayList;

    iget-object v1, p0, Lnu/xom/NonVerifyingHandler;->parents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnu/xom/ParentNode;

    iput-object v0, p0, Lnu/xom/NonVerifyingHandler;->current:Lnu/xom/ParentNode;

    invoke-direct {p0}, Lnu/xom/NonVerifyingHandler;->flushText()V

    iget-object v0, p0, Lnu/xom/NonVerifyingHandler;->current:Lnu/xom/ParentNode;

    invoke-virtual {v0}, Lnu/xom/ParentNode;->getParent()Lnu/xom/ParentNode;

    move-result-object v0

    iput-object v0, p0, Lnu/xom/NonVerifyingHandler;->parent:Lnu/xom/ParentNode;

    iget-object v0, p0, Lnu/xom/NonVerifyingHandler;->parent:Lnu/xom/ParentNode;

    invoke-virtual {v0}, Lnu/xom/ParentNode;->isDocument()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnu/xom/NonVerifyingHandler;->parent:Lnu/xom/ParentNode;

    check-cast v0, Lnu/xom/Document;

    iget-object p0, p0, Lnu/xom/NonVerifyingHandler;->current:Lnu/xom/ParentNode;

    check-cast p0, Lnu/xom/Element;

    invoke-virtual {v0, p0}, Lnu/xom/Document;->setRootElement(Lnu/xom/Element;)V

    :cond_0
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lnu/xom/NonVerifyingHandler;->inDTD:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lnu/xom/NonVerifyingHandler;->flushText()V

    :cond_0
    invoke-static {p1, p2}, Lnu/xom/ProcessingInstruction;->build(Ljava/lang/String;Ljava/lang/String;)Lnu/xom/ProcessingInstruction;

    move-result-object v0

    iget-boolean v1, p0, Lnu/xom/NonVerifyingHandler;->inDTD:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lnu/xom/NonVerifyingHandler;->inProlog:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnu/xom/NonVerifyingHandler;->parent:Lnu/xom/ParentNode;

    iget v2, p0, Lnu/xom/NonVerifyingHandler;->position:I

    invoke-virtual {v1, v0, v2}, Lnu/xom/ParentNode;->fastInsertChild(Lnu/xom/Node;I)V

    iget v0, p0, Lnu/xom/NonVerifyingHandler;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnu/xom/NonVerifyingHandler;->position:I

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lnu/xom/NonVerifyingHandler;->inInternalSubset()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lnu/xom/NonVerifyingHandler;->parent:Lnu/xom/ParentNode;

    iget-object v2, p0, Lnu/xom/NonVerifyingHandler;->parent:Lnu/xom/ParentNode;

    invoke-virtual {v2}, Lnu/xom/ParentNode;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lnu/xom/ParentNode;->fastInsertChild(Lnu/xom/Node;I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lnu/xom/NonVerifyingHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnu/xom/NonVerifyingHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lnu/xom/ProcessingInstruction;->toXML()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lnu/xom/NonVerifyingHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnu/xom/NonVerifyingHandler;->inDTD:Z

    invoke-static {p1, p2, p3}, Lnu/xom/DocType;->build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnu/xom/DocType;

    move-result-object v0

    iget-object v1, p0, Lnu/xom/NonVerifyingHandler;->document:Lnu/xom/Document;

    iget v2, p0, Lnu/xom/NonVerifyingHandler;->position:I

    invoke-virtual {v1, v0, v2}, Lnu/xom/Document;->fastInsertChild(Lnu/xom/Node;I)V

    iget v1, p0, Lnu/xom/NonVerifyingHandler;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnu/xom/NonVerifyingHandler;->position:I

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lnu/xom/NonVerifyingHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    iput-object v0, p0, Lnu/xom/NonVerifyingHandler;->doctype:Lnu/xom/DocType;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 9

    const/4 v8, 0x0

    invoke-direct {p0}, Lnu/xom/NonVerifyingHandler;->flushText()V

    invoke-static {p3, p1, p2}, Lnu/xom/Element;->build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnu/xom/Element;

    move-result-object v0

    iget-object v1, p0, Lnu/xom/NonVerifyingHandler;->parent:Lnu/xom/ParentNode;

    iget-object v2, p0, Lnu/xom/NonVerifyingHandler;->document:Lnu/xom/Document;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lnu/xom/NonVerifyingHandler;->document:Lnu/xom/Document;

    invoke-virtual {v1, v0}, Lnu/xom/Document;->setRootElement(Lnu/xom/Element;)V

    iput-boolean v8, p0, Lnu/xom/NonVerifyingHandler;->inProlog:Z

    :cond_0
    iput-object v0, p0, Lnu/xom/NonVerifyingHandler;->current:Lnu/xom/ParentNode;

    iget-object v1, p0, Lnu/xom/NonVerifyingHandler;->parents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lnu/xom/NonVerifyingHandler;->parent:Lnu/xom/ParentNode;

    iget-object v2, p0, Lnu/xom/NonVerifyingHandler;->document:Lnu/xom/Document;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lnu/xom/NonVerifyingHandler;->parent:Lnu/xom/ParentNode;

    iget-object v2, p0, Lnu/xom/NonVerifyingHandler;->parent:Lnu/xom/ParentNode;

    invoke-virtual {v2}, Lnu/xom/ParentNode;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lnu/xom/ParentNode;->fastInsertChild(Lnu/xom/Node;I)V

    :cond_1
    iget-object v1, p0, Lnu/xom/NonVerifyingHandler;->locator:Lorg/xml/sax/Locator;

    invoke-interface {v1}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lnu/xom/NonVerifyingHandler;->documentBaseURI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Lnu/xom/Element;->setActualBaseURI(Ljava/lang/String;)V

    :cond_2
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    move v2, v8

    :goto_0
    if-ge v2, v1, :cond_5

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "xmlns:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "xmlns"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnu/xom/NonVerifyingHandler;->convertStringToType(Ljava/lang/String;)Lnu/xom/Attribute$Type;

    move-result-object v6

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v4, v5, v6, v7}, Lnu/xom/Attribute;->build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnu/xom/Attribute$Type;Ljava/lang/String;)Lnu/xom/Attribute;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnu/xom/Element;->fastAddAttribute(Lnu/xom/Attribute;)V

    goto :goto_1

    :cond_5
    move v2, v8

    :goto_2
    if-ge v2, v1, :cond_8

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "xmlns:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnu/xom/Element;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v0, v3, v4}, Lnu/xom/Element;->addNamespaceDeclaration(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    const-string v4, "xmlns"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v0, v4}, Lnu/xom/Element;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v0, v4, v3}, Lnu/xom/Element;->addNamespaceDeclaration(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    iput-object v0, p0, Lnu/xom/NonVerifyingHandler;->parent:Lnu/xom/ParentNode;

    return-void
.end method
