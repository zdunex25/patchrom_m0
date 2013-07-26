.class public Lnu/xom/Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnu/xom/Builder$1;,
        Lnu/xom/Builder$NamespaceWellformednessRequired;,
        Lnu/xom/Builder$ValidityRequired;
    }
.end annotation


# static fields
.field private static fileURLPrefix:Ljava/lang/String;

.field private static parsers:[Ljava/lang/String;

.field private static xercesVersion:D


# instance fields
.field private factory:Lnu/xom/NodeFactory;

.field private parser:Lorg/xml/sax/XMLReader;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v9, 0xc

    const/16 v8, 0xa

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/16 v5, 0x9

    const-wide v0, 0x4004cccccccccccdL

    sput-wide v0, Lnu/xom/Builder;->xercesVersion:D

    :try_start_0
    invoke-static {}, Lorg/apache/xerces/impl/Version;->getVersion()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ge v1, v8, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ge v1, v7, :cond_0

    const/16 v1, 0x9

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    sput-wide v0, Lnu/xom/Builder;->xercesVersion:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "nu.xom.XML1_0Parser"

    aput-object v1, v0, v6

    const/4 v1, 0x1

    const-string v2, "nu.xom.JDK15XML1_0Parser"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "org.apache.xerces.parsers.SAXParser"

    aput-object v2, v0, v1

    const-string v1, "org.apache.xerces.jaxp.SAXParserImpl$JAXPSAXParser"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "com.sun.org.apache.xerces.internal.jaxp.SAXParserImpl$JAXPSAXParser"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.sun.org.apache.xerces.internal.parsers.SAXParser"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "gnu.xml.aelfred2.XmlReader"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "org.apache.crimson.parser.XMLReaderImpl"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.bluecast.xml.Piccolo"

    aput-object v2, v0, v1

    const-string v1, "oracle.xml.parser.v2.SAXParser"

    aput-object v1, v0, v5

    const-string v1, "com.jclark.xml.sax.SAX2Driver"

    aput-object v1, v0, v8

    const/16 v1, 0xb

    const-string v2, "net.sf.saxon.aelfred.SAXDriver"

    aput-object v2, v0, v1

    const-string v1, "com.icl.saxon.aelfred.SAXDriver"

    aput-object v1, v0, v9

    const/16 v1, 0xd

    const-string v2, "org.dom4j.io.aelfred2.SAXDriver"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "org.dom4j.io.aelfred.SAXDriver"

    aput-object v2, v0, v1

    sput-object v0, Lnu/xom/Builder;->parsers:[Ljava/lang/String;

    const-string v0, "file://"

    sput-object v0, Lnu/xom/Builder;->fileURLPrefix:Ljava/lang/String;

    const-string v0, "os.name"

    const-string v1, "Unix"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    const-string v0, "file:/"

    sput-object v0, Lnu/xom/Builder;->fileURLPrefix:Ljava/lang/String;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnu/xom/Builder;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Lnu/xom/NodeFactory;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {v1}, Lnu/xom/Builder;->findParser(Z)Lorg/xml/sax/XMLReader;

    move-result-object v0

    invoke-direct {p0, v0, v1, p1}, Lnu/xom/Builder;-><init>(Lorg/xml/sax/XMLReader;ZLnu/xom/NodeFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnu/xom/Builder;-><init>(Lorg/xml/sax/XMLReader;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnu/xom/Builder;-><init>(Lorg/xml/sax/XMLReader;ZLnu/xom/NodeFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;ZLnu/xom/NodeFactory;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {p1, p2}, Lnu/xom/Builder;->setupParser(Lorg/xml/sax/XMLReader;Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, p0, Lnu/xom/Builder;->parser:Lorg/xml/sax/XMLReader;

    iput-object p3, p0, Lnu/xom/Builder;->factory:Lnu/xom/NodeFactory;

    invoke-direct {p0}, Lnu/xom/Builder;->setHandlers()V

    return-void

    :catch_0
    move-exception v0

    if-eqz p2, :cond_0

    new-instance v1, Lnu/xom/XMLException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " does not support validation."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lnu/xom/XMLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v1, Lnu/xom/XMLException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " does not support the entity resolution"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " features XOM requires."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lnu/xom/XMLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Z)V
    .locals 2

    invoke-static {p1}, Lnu/xom/Builder;->findParser(Z)Lorg/xml/sax/XMLReader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lnu/xom/Builder;-><init>(Lorg/xml/sax/XMLReader;ZLnu/xom/NodeFactory;)V

    return-void
.end method

.method public constructor <init>(ZLnu/xom/NodeFactory;)V
    .locals 1

    invoke-static {p1}, Lnu/xom/Builder;->findParser(Z)Lorg/xml/sax/XMLReader;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lnu/xom/Builder;-><init>(Lorg/xml/sax/XMLReader;ZLnu/xom/NodeFactory;)V

    return-void
.end method

.method private build(Lorg/xml/sax/InputSource;)Lnu/xom/Document;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/ParsingException;,
            Lnu/xom/ValidityException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, -0x1

    iget-object v1, p0, Lnu/xom/Builder;->parser:Lorg/xml/sax/XMLReader;

    invoke-interface {v1}, Lorg/xml/sax/XMLReader;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lnu/xom/XOMHandler;

    move-object v7, v0

    :try_start_0
    iget-object v1, p0, Lnu/xom/Builder;->parser:Lorg/xml/sax/XMLReader;

    invoke-interface {v1, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    invoke-virtual {v7}, Lnu/xom/XOMHandler;->getDocument()Lnu/xom/Document;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnu/xom/XMLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/UTFDataFormatException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/CharConversionException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v1

    invoke-virtual {v7}, Lnu/xom/XOMHandler;->freeMemory()V

    if-nez v1, :cond_1

    new-instance v1, Lnu/xom/ParsingException;

    const-string v2, "Parser did not build document"

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v4, v4}, Lnu/xom/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v1

    :catch_0
    move-exception v1

    move-object v6, v1

    :try_start_1
    new-instance v1, Lnu/xom/ParsingException;

    invoke-virtual {v6}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lorg/xml/sax/SAXParseException;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v4

    invoke-virtual {v6}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result v5

    invoke-direct/range {v1 .. v6}, Lnu/xom/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    invoke-virtual {v7}, Lnu/xom/XOMHandler;->freeMemory()V

    throw v1

    :catch_1
    move-exception v1

    :try_start_2
    new-instance v2, Lnu/xom/ParsingException;

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lnu/xom/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v1

    new-instance v2, Lnu/xom/ParsingException;

    invoke-virtual {v1}, Lnu/xom/XMLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lnu/xom/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_3
    move-exception v1

    new-instance v2, Lnu/xom/ParsingException;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lnu/xom/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_4
    move-exception v1

    new-instance v2, Lnu/xom/ParsingException;

    invoke-virtual {v1}, Ljava/io/UTFDataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lnu/xom/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_5
    move-exception v1

    new-instance v2, Lnu/xom/ParsingException;

    invoke-virtual {v1}, Ljava/io/CharConversionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lnu/xom/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "org.apache.xerces.util.URI$MalformedURIException"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lnu/xom/ParsingException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lnu/xom/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    const-string v2, ""

    invoke-virtual {v1}, Lnu/xom/Document;->getBaseURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnu/xom/Document;->setBaseURI(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lnu/xom/Builder;->parser:Lorg/xml/sax/XMLReader;

    invoke-interface {v2}, Lorg/xml/sax/XMLReader;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object p0

    instance-of v2, p0, Lnu/xom/Builder$ValidityRequired;

    if-eqz v2, :cond_3

    check-cast p0, Lnu/xom/Builder$ValidityRequired;

    invoke-virtual {p0}, Lnu/xom/Builder$ValidityRequired;->isValid()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lnu/xom/Builder$ValidityRequired;->vexception:Lnu/xom/ValidityException;

    invoke-virtual {v2, v1}, Lnu/xom/ValidityException;->setDocument(Lnu/xom/Document;)V

    invoke-virtual {p0}, Lnu/xom/Builder$ValidityRequired;->reset()V

    throw v2

    :cond_3
    return-object v1
.end method

.method private canonicalizeURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const-string v1, "/"

    :cond_1
    invoke-static {v1}, Lnu/xom/URIUtil;->removeDotSegments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "://"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v3, :cond_2

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    if-ltz v0, :cond_3

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v4, :cond_4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, p1

    goto :goto_0
.end method

.method static findParser(Z)Lorg/xml/sax/XMLReader;
    .locals 3

    :try_start_0
    new-instance v0, Lnu/xom/XML1_0Parser;

    invoke-direct {v0}, Lnu/xom/XML1_0Parser;-><init>()V

    invoke-static {v0, p0}, Lnu/xom/Builder;->setupParser(Lorg/xml/sax/XMLReader;Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    :try_start_1
    const-string v0, "nu.xom.JDK15XML1_0Parser"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xml/sax/XMLReader;

    invoke-static {v0, p0}, Lnu/xom/Builder;->setupParser(Lorg/xml/sax/XMLReader;Z)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_2
    const/4 v0, 0x2

    :goto_3
    sget-object v1, Lnu/xom/Builder;->parsers:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    :try_start_2
    sget-object v1, Lnu/xom/Builder;->parsers:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader(Ljava/lang/String;)Lorg/xml/sax/XMLReader;

    move-result-object v1

    invoke-static {v1, p0}, Lnu/xom/Builder;->setupParser(Lorg/xml/sax/XMLReader;Z)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v1

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_0
    :try_start_3
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    invoke-static {v0, p0}, Lnu/xom/Builder;->setupParser(Lorg/xml/sax/XMLReader;Z)V
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    new-instance v1, Lnu/xom/XMLException;

    const-string v2, "Could not find a suitable SAX2 parser"

    invoke-direct {v1, v2, v0}, Lnu/xom/XMLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_2

    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_2

    :catch_8
    move-exception v0

    goto :goto_2

    :catch_9
    move-exception v0

    goto :goto_1
.end method

.method private static knownGoodParser(Lorg/xml/sax/XMLReader;)Z
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.apache.xml.resolver.tools.ResolvingXMLFilter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast p0, Lorg/xml/sax/XMLFilter;

    invoke-interface {p0}, Lorg/xml/sax/XMLFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "gnu.xml.aelfred2.XmlReader"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v5

    :goto_0
    return v0

    :cond_1
    const-string v1, "net.sf.saxon.aelfred.SAXDriver"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    const-string v1, "com.icl.saxon.aelfred.SAXDriver"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v0, v5

    goto :goto_0

    :cond_3
    const-string v1, "org.apache.xerces.parsers.SAXParser"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-wide v1, Lnu/xom/Builder;->xercesVersion:D

    const-wide v3, 0x4003333333333333L

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_4

    move v0, v5

    goto :goto_0

    :cond_4
    move v1, v5

    :goto_1
    sget-object v2, Lnu/xom/Builder;->parsers:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    sget-object v2, Lnu/xom/Builder;->parsers:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    move v0, v5

    goto :goto_0
.end method

.method private setHandlers()V
    .locals 3

    iget-object v0, p0, Lnu/xom/Builder;->factory:Lnu/xom/NodeFactory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnu/xom/Builder;->factory:Lnu/xom/NodeFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nu.xom.NodeFactory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lnu/xom/Builder;->parser:Lorg/xml/sax/XMLReader;

    invoke-static {v0}, Lnu/xom/Builder;->knownGoodParser(Lorg/xml/sax/XMLReader;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnu/xom/Builder;->factory:Lnu/xom/NodeFactory;

    if-nez v0, :cond_1

    new-instance v0, Lnu/xom/NodeFactory;

    invoke-direct {v0}, Lnu/xom/NodeFactory;-><init>()V

    :cond_1
    new-instance v1, Lnu/xom/NonVerifyingHandler;

    invoke-direct {v1, v0}, Lnu/xom/NonVerifyingHandler;-><init>(Lnu/xom/NodeFactory;)V

    move-object v0, v1

    :goto_0
    iget-object v1, p0, Lnu/xom/Builder;->parser:Lorg/xml/sax/XMLReader;

    invoke-interface {v1, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    iget-object v1, p0, Lnu/xom/Builder;->parser:Lorg/xml/sax/XMLReader;

    invoke-interface {v1, v0}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    :try_start_0
    iget-object v1, p0, Lnu/xom/Builder;->parser:Lorg/xml/sax/XMLReader;

    const-string v2, "http://xml.org/sax/properties/lexical-handler"

    invoke-interface {v1, v2, v0}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    iget-object v1, p0, Lnu/xom/Builder;->parser:Lorg/xml/sax/XMLReader;

    const-string v2, "http://xml.org/sax/properties/declaration-handler"

    invoke-interface {v1, v2, v0}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lnu/xom/Builder;->parser:Lorg/xml/sax/XMLReader;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.apache.crimson.parser.XMLReaderImpl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, v0, Lnu/xom/XOMHandler;->usingCrimson:Z
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lnu/xom/Builder;->factory:Lnu/xom/NodeFactory;

    if-nez v0, :cond_4

    new-instance v0, Lnu/xom/NodeFactory;

    invoke-direct {v0}, Lnu/xom/NodeFactory;-><init>()V

    iput-object v0, p0, Lnu/xom/Builder;->factory:Lnu/xom/NodeFactory;

    :cond_4
    new-instance v0, Lnu/xom/XOMHandler;

    iget-object v1, p0, Lnu/xom/Builder;->factory:Lnu/xom/NodeFactory;

    invoke-direct {v0, v1}, Lnu/xom/XOMHandler;-><init>(Lnu/xom/NodeFactory;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private static setupParser(Lorg/xml/sax/XMLReader;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v1, "http://xml.org/sax/features/namespace-prefixes"

    invoke-interface {p0, v1, v3}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    const-string v1, "http://xml.org/sax/features/namespaces"

    invoke-interface {p0, v1, v3}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    move-object v2, p0

    :goto_0
    instance-of v1, v2, Lorg/xml/sax/XMLFilter;

    if-eqz v1, :cond_0

    move-object v0, v2

    check-cast v0, Lorg/xml/sax/XMLFilter;

    move-object v1, v0

    invoke-interface {v1}, Lorg/xml/sax/XMLFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_5

    const-string v2, "org.apache.crimson.parser.XMLReaderImpl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lnu/xom/Builder$NamespaceWellformednessRequired;

    invoke-direct {v2, v4}, Lnu/xom/Builder$NamespaceWellformednessRequired;-><init>(Lnu/xom/Builder$1;)V

    invoke-interface {p0, v2}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    :goto_1
    :try_start_0
    const-string v2, "http://xml.org/sax/features/string-interning"

    const/4 v3, 0x1

    invoke-interface {p0, v2, v3}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_2
    const-string v2, "nu.xom.XML1_0Parser"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "nu.xom.JDK15XML1_0Parser"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "org.apache.xerces.parsers.SAXParser"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.sun.org.apache.xerces.internal.parsers.SAXParser"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "org.apache.xerces.jaxp.SAXParserImpl$JAXPSAXParser"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.sun.org.apache.xerces.internal.jaxp.SAXParserImpl$JAXPSAXParser"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :try_start_1
    const-string v1, "http://apache.org/xml/features/allow-java-encodings"

    const/4 v2, 0x1

    invoke-interface {p0, v1, v2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    :try_start_2
    const-string v1, "http://apache.org/xml/features/standard-uri-conformant"

    const/4 v2, 0x1

    invoke-interface {p0, v1, v2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_4
    return-void

    :cond_3
    move-object v2, v1

    goto :goto_0

    :cond_4
    const-string v2, "http://xml.org/sax/features/external-general-entities"

    invoke-interface {p0, v2, v3}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    const-string v2, "http://xml.org/sax/features/external-parameter-entities"

    invoke-interface {p0, v2, v3}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_5
    const-string v2, "http://xml.org/sax/features/validation"

    invoke-interface {p0, v2, v3}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    new-instance v2, Lnu/xom/Builder$ValidityRequired;

    invoke-direct {v2, v4}, Lnu/xom/Builder$ValidityRequired;-><init>(Lnu/xom/Builder$1;)V

    invoke-interface {p0, v2}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v2

    goto :goto_2
.end method


# virtual methods
.method public build(Ljava/io/File;)Lnu/xom/Document;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/ParsingException;,
            Lnu/xom/ValidityException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v11, 0x0

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    sget-object v3, Lnu/xom/Builder;->fileURLPrefix:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sget-char v4, Ljava/io/File;->separatorChar:C

    move-object v5, v2

    move v2, v11

    :goto_0
    if-ge v2, v3, :cond_5

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_1

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    packed-switch v6, :pswitch_data_0

    const v7, 0xd800

    if-lt v6, v7, :cond_2

    const v7, 0xdfff

    if-le v6, v7, :cond_3

    :cond_2
    invoke-static {v6}, Lnu/xom/URIUtil;->percentEscape(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_0
    const-string v6, "%20"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_2
    const-string v6, "%22"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_3
    const-string v6, "%23"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_5
    const-string v6, "%25"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_6
    const/16 v6, 0x26

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_7
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_b
    const-string v6, "%2B"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_f
    const-string v6, "%2F"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_10
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_11
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_12
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_13
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_14
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_15
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_16
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_17
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_18
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_19
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_1a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_1b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_1c
    const-string v6, "%3C"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_1d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_1e
    const-string v6, "%3E"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_1f
    const-string v6, "%3F"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_20
    const-string v6, "%40"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_21
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_22
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_23
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_24
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_25
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_26
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_27
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_28
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_29
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_2a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_2b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_2c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_2d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_2e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_2f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_30
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_31
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_32
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_33
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_34
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_35
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_36
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_37
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_38
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_39
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_3a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_3b
    const-string v6, "%5B"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_3c
    const-string v6, "%5C"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_3d
    const-string v6, "%5D"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_3e
    const-string v6, "%5E"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_3f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_40
    const-string v6, "%60"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_41
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_42
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_43
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_44
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_45
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_46
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_47
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_49
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_4a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_4b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_4c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_4d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_4e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_4f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_50
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_51
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_52
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_53
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_54
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_55
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_56
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_57
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_58
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_59
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_5a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_5b
    const-string v6, "%7B"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_5c
    const-string v6, "%7C"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_5d
    const-string v6, "%7D"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_5e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_3
    const v7, 0xdbff

    if-gt v6, v7, :cond_4

    add-int/lit8 v2, v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    move v7, v11

    :goto_2
    const/4 v8, 0x4

    if-ge v7, v8, :cond_0

    const/16 v8, 0x25

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-byte v8, v6, v7

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x2

    sub-int/2addr v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :catch_0
    move-exception v5

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v11}, Ljava/lang/StringBuffer;-><init>(I)V

    goto/16 :goto_1

    :cond_4
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v11}, Ljava/lang/StringBuffer;-><init>(I)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_1
    invoke-virtual {p0, v0, v1}, Lnu/xom/Builder;->build(Ljava/io/InputStream;Ljava/lang/String;)Lnu/xom/Document;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
    .end packed-switch
.end method

.method public build(Ljava/io/InputStream;)Lnu/xom/Document;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/ParsingException;,
            Lnu/xom/ValidityException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null InputStream"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lnu/xom/Builder;->build(Lorg/xml/sax/InputSource;)Lnu/xom/Document;

    move-result-object v0

    return-object v0
.end method

.method public build(Ljava/io/InputStream;Ljava/lang/String;)Lnu/xom/Document;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/ParsingException;,
            Lnu/xom/ValidityException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lnu/xom/Builder;->canonicalizeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, v0}, Lnu/xom/Builder;->build(Lorg/xml/sax/InputSource;)Lnu/xom/Document;

    move-result-object v0

    return-object v0
.end method

.method public build(Ljava/io/Reader;)Lnu/xom/Document;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/ParsingException;,
            Lnu/xom/ValidityException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Attempted to build from null reader"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Lnu/xom/Builder;->build(Lorg/xml/sax/InputSource;)Lnu/xom/Document;

    move-result-object v0

    return-object v0
.end method

.method public build(Ljava/io/Reader;Ljava/lang/String;)Lnu/xom/Document;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/ParsingException;,
            Lnu/xom/ValidityException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lnu/xom/Builder;->canonicalizeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, v0}, Lnu/xom/Builder;->build(Lorg/xml/sax/InputSource;)Lnu/xom/Document;

    move-result-object v0

    return-object v0
.end method

.method public build(Ljava/lang/String;)Lnu/xom/Document;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/ParsingException;,
            Lnu/xom/ValidityException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lnu/xom/Builder;->canonicalizeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lnu/xom/Builder;->build(Lorg/xml/sax/InputSource;)Lnu/xom/Document;

    move-result-object v0

    return-object v0
.end method

.method public build(Ljava/lang/String;Ljava/lang/String;)Lnu/xom/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/ParsingException;,
            Lnu/xom/ValidityException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lnu/xom/Builder;->build(Ljava/io/Reader;Ljava/lang/String;)Lnu/xom/Document;

    move-result-object v0

    return-object v0
.end method

.method public getNodeFactory()Lnu/xom/NodeFactory;
    .locals 1

    iget-object v0, p0, Lnu/xom/Builder;->factory:Lnu/xom/NodeFactory;

    return-object v0
.end method
