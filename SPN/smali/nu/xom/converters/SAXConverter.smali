.class public Lnu/xom/converters/SAXConverter;
.super Ljava/lang/Object;


# instance fields
.field private contentHandler:Lorg/xml/sax/ContentHandler;

.field private lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

.field private locator:Lorg/xml/sax/helpers/LocatorImpl;

.field private stripBaseAttributes:Z


# direct methods
.method public constructor <init>(Lorg/xml/sax/ContentHandler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnu/xom/converters/SAXConverter;->stripBaseAttributes:Z

    invoke-virtual {p0, p1}, Lnu/xom/converters/SAXConverter;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    return-void
.end method

.method private convertElement(Lnu/xom/Element;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v10, 0x0

    iget-object v0, p0, Lnu/xom/converters/SAXConverter;->locator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-virtual {p1}, Lnu/xom/Element;->getBaseURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnu/xom/Element;->getNamespaceDeclarationCount()I

    move-result v0

    new-array v6, v0, [Ljava/lang/String;

    move v1, v10

    move v7, v10

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Lnu/xom/Element;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lnu/xom/converters/SAXConverter;->convertNamespace(Lnu/xom/Element;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    aput-object v2, v6, v7

    add-int/lit8 v2, v7, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v7, v2

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    invoke-virtual {p1}, Lnu/xom/Element;->getAttributeCount()I

    move-result v8

    move v9, v10

    :goto_2
    if-ge v9, v8, :cond_2

    invoke-virtual {p1, v9}, Lnu/xom/Element;->getAttribute(I)Lnu/xom/Attribute;

    move-result-object v5

    const-string v1, "base"

    invoke-virtual {v5}, Lnu/xom/Attribute;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v5}, Lnu/xom/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lnu/xom/converters/SAXConverter;->stripBaseAttributes:Z

    if-eqz v1, :cond_1

    :goto_3
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_2

    :cond_1
    invoke-virtual {v5}, Lnu/xom/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lnu/xom/Attribute;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lnu/xom/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Lnu/xom/converters/SAXConverter;->getSAXType(Lnu/xom/Attribute;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lnu/xom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lnu/xom/converters/SAXConverter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {p1}, Lnu/xom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lnu/xom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lnu/xom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4, v0}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p1}, Lnu/xom/Element;->getChildCount()I

    move-result v0

    move v1, v10

    :goto_4
    if-ge v1, v0, :cond_3

    invoke-virtual {p1, v1}, Lnu/xom/Element;->getChild(I)Lnu/xom/Node;

    move-result-object v2

    invoke-direct {p0, v2}, Lnu/xom/converters/SAXConverter;->process(Lnu/xom/Node;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_3
    iget-object v0, p0, Lnu/xom/converters/SAXConverter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {p1}, Lnu/xom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lnu/xom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lnu/xom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v10

    :goto_5
    if-ge v0, v7, :cond_4

    iget-object v1, p0, Lnu/xom/converters/SAXConverter;->contentHandler:Lorg/xml/sax/ContentHandler;

    aget-object v2, v6, v0

    invoke-interface {v1, v2}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_4
    return-void

    :cond_5
    move v2, v7

    goto/16 :goto_1
.end method

.method private convertNamespace(Lnu/xom/Element;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p1, p2}, Lnu/xom/Element;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lnu/xom/Element;->getParent()Lnu/xom/ParentNode;

    move-result-object v0

    const/4 v2, 0x0

    instance-of v3, v0, Lnu/xom/Element;

    if-eqz v3, :cond_2

    check-cast v0, Lnu/xom/Element;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lnu/xom/Element;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v4

    :goto_1
    return v0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lnu/xom/converters/SAXConverter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p2, v1}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method private static getSAXType(Lnu/xom/Attribute;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lnu/xom/Attribute;->getType()Lnu/xom/Attribute$Type;

    move-result-object v0

    sget-object v1, Lnu/xom/Attribute$Type;->UNDECLARED:Lnu/xom/Attribute$Type;

    invoke-virtual {v0, v1}, Lnu/xom/Attribute$Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "CDATA"

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lnu/xom/Attribute$Type;->CDATA:Lnu/xom/Attribute$Type;

    invoke-virtual {v0, v1}, Lnu/xom/Attribute$Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "CDATA"

    goto :goto_0

    :cond_1
    sget-object v1, Lnu/xom/Attribute$Type;->ID:Lnu/xom/Attribute$Type;

    invoke-virtual {v0, v1}, Lnu/xom/Attribute$Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "ID"

    goto :goto_0

    :cond_2
    sget-object v1, Lnu/xom/Attribute$Type;->IDREF:Lnu/xom/Attribute$Type;

    invoke-virtual {v0, v1}, Lnu/xom/Attribute$Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "IDREF"

    goto :goto_0

    :cond_3
    sget-object v1, Lnu/xom/Attribute$Type;->IDREFS:Lnu/xom/Attribute$Type;

    invoke-virtual {v0, v1}, Lnu/xom/Attribute$Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "IDREFS"

    goto :goto_0

    :cond_4
    sget-object v1, Lnu/xom/Attribute$Type;->NMTOKEN:Lnu/xom/Attribute$Type;

    invoke-virtual {v0, v1}, Lnu/xom/Attribute$Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "NMTOKEN"

    goto :goto_0

    :cond_5
    sget-object v1, Lnu/xom/Attribute$Type;->NMTOKENS:Lnu/xom/Attribute$Type;

    invoke-virtual {v0, v1}, Lnu/xom/Attribute$Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "NMTOKENS"

    goto :goto_0

    :cond_6
    sget-object v1, Lnu/xom/Attribute$Type;->ENTITY:Lnu/xom/Attribute$Type;

    invoke-virtual {v0, v1}, Lnu/xom/Attribute$Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "ENTITY"

    goto :goto_0

    :cond_7
    sget-object v1, Lnu/xom/Attribute$Type;->ENTITIES:Lnu/xom/Attribute$Type;

    invoke-virtual {v0, v1}, Lnu/xom/Attribute$Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, "ENTITIES"

    goto :goto_0

    :cond_8
    sget-object v1, Lnu/xom/Attribute$Type;->NOTATION:Lnu/xom/Attribute$Type;

    invoke-virtual {v0, v1}, Lnu/xom/Attribute$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "NOTATION"

    goto :goto_0

    :cond_9
    const-string v0, "NMTOKEN"

    goto :goto_0
.end method

.method private process(Lnu/xom/Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v3, 0x0

    instance-of v0, p1, Lnu/xom/Element;

    if-eqz v0, :cond_1

    check-cast p1, Lnu/xom/Element;

    invoke-direct {p0, p1}, Lnu/xom/converters/SAXConverter;->convertElement(Lnu/xom/Element;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lnu/xom/Text;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lnu/xom/Node;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnu/xom/converters/SAXConverter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {v1, v2, v3, v0}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lnu/xom/ProcessingInstruction;

    if-eqz v0, :cond_3

    check-cast p1, Lnu/xom/ProcessingInstruction;

    iget-object v0, p0, Lnu/xom/converters/SAXConverter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {p1}, Lnu/xom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lnu/xom/ProcessingInstruction;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lnu/xom/Comment;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnu/xom/converters/SAXConverter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lnu/xom/Node;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnu/xom/converters/SAXConverter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {v1, v2, v3, v0}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lnu/xom/DocType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnu/xom/converters/SAXConverter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    check-cast p1, Lnu/xom/DocType;

    iget-object v0, p0, Lnu/xom/converters/SAXConverter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-virtual {p1}, Lnu/xom/DocType;->getRootElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lnu/xom/DocType;->getPublicID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lnu/xom/DocType;->getSystemID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnu/xom/converters/SAXConverter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V

    goto :goto_0
.end method


# virtual methods
.method public convert(Lnu/xom/Document;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lorg/xml/sax/helpers/LocatorImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    iput-object v0, p0, Lnu/xom/converters/SAXConverter;->locator:Lorg/xml/sax/helpers/LocatorImpl;

    iget-object v0, p0, Lnu/xom/converters/SAXConverter;->locator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-virtual {p1}, Lnu/xom/Document;->getBaseURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    iget-object v0, p0, Lnu/xom/converters/SAXConverter;->contentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v1, p0, Lnu/xom/converters/SAXConverter;->locator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-interface {v0, v1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    iget-object v0, p0, Lnu/xom/converters/SAXConverter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lnu/xom/Document;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lnu/xom/Document;->getChild(I)Lnu/xom/Node;

    move-result-object v1

    invoke-direct {p0, v1}, Lnu/xom/converters/SAXConverter;->process(Lnu/xom/Node;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnu/xom/converters/SAXConverter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    return-void
.end method

.method public convert(Lnu/xom/Nodes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p1}, Lnu/xom/Nodes;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v2}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object v0

    instance-of v0, v0, Lnu/xom/Document;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object v0

    check-cast v0, Lnu/xom/Document;

    invoke-virtual {p0, v0}, Lnu/xom/converters/SAXConverter;->convert(Lnu/xom/Document;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/xml/sax/helpers/LocatorImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    iput-object v0, p0, Lnu/xom/converters/SAXConverter;->locator:Lorg/xml/sax/helpers/LocatorImpl;

    iget-object v0, p0, Lnu/xom/converters/SAXConverter;->contentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v1, p0, Lnu/xom/converters/SAXConverter;->locator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-interface {v0, v1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    iget-object v0, p0, Lnu/xom/converters/SAXConverter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    move v0, v2

    :goto_1
    invoke-virtual {p1}, Lnu/xom/Nodes;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object v1

    invoke-direct {p0, v1}, Lnu/xom/converters/SAXConverter;->process(Lnu/xom/Node;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lnu/xom/converters/SAXConverter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    goto :goto_0
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    iget-object v0, p0, Lnu/xom/converters/SAXConverter;->contentHandler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .locals 1

    iget-object v0, p0, Lnu/xom/converters/SAXConverter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    return-object v0
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ContentHandler must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "nu.xom.xslt.XSLTHandler"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnu/xom/converters/SAXConverter;->stripBaseAttributes:Z

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lnu/xom/converters/SAXConverter;->contentHandler:Lorg/xml/sax/ContentHandler;

    goto :goto_0
.end method

.method public setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 0

    iput-object p1, p0, Lnu/xom/converters/SAXConverter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    return-void
.end method
