.class public Lnu/xom/xinclude/XIncluder;
.super Ljava/lang/Object;


# static fields
.field public static final XINCLUDE_NS:Ljava/lang/String; = "http://www.w3.org/2001/XInclude"

.field private static version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "java.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnu/xom/xinclude/XIncluder;->version:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static absolutize(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Lnu/xom/xinclude/BadHrefAttributeException;
        }
    .end annotation

    new-instance v0, Lnu/xom/Element;

    const-string v1, "c"

    invoke-direct {v0, v1}, Lnu/xom/Element;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnu/xom/Element;->setBaseURI(Ljava/lang/String;)V

    new-instance v2, Lnu/xom/Element;

    const-string v3, "c"

    invoke-direct {v2, v3}, Lnu/xom/Element;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnu/xom/Element;->appendChild(Lnu/xom/Node;)V

    new-instance v0, Lnu/xom/Attribute;

    const-string v3, "xml:base"

    const-string v4, "http://www.w3.org/XML/1998/namespace"

    invoke-direct {v0, v3, v4, p1}, Lnu/xom/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lnu/xom/Element;->addAttribute(Lnu/xom/Attribute;)V

    new-instance v0, Ljava/net/URL;

    invoke-virtual {v2}, Lnu/xom/Element;->getBaseURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lnu/xom/xinclude/BadHrefAttributeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " is not a syntactically correct IRI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/xinclude/BadHrefAttributeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method private static checkHeader(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/xinclude/BadHTTPHeaderException;
        }
    .end annotation

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-lt v2, v3, :cond_2

    const/16 v3, 0x7e

    if-le v2, v3, :cond_3

    :cond_2
    new-instance v0, Lnu/xom/xinclude/BadHTTPHeaderException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Header contains illegal character 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/xinclude/BadHTTPHeaderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static contains(Lnu/xom/ParentNode;Lnu/xom/Node;)Z
    .locals 1

    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    invoke-virtual {v0}, Lnu/xom/Node;->getParent()Lnu/xom/ParentNode;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static downloadTextDocument(Ljava/net/URL;Ljava/lang/String;Lnu/xom/Builder;Ljava/lang/String;Ljava/lang/String;)Lnu/xom/Nodes;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnu/xom/xinclude/XIncludeException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    :cond_0
    const-string v0, "UTF-8"

    :goto_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    invoke-static {v1, p3, p4}, Lnu/xom/xinclude/XIncluder;->setHeaders(Ljava/net/URLConnection;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v4

    if-gez v4, :cond_1

    const/16 v4, 0x400

    :cond_1
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    if-eqz v2, :cond_5

    move-object v0, v2

    :cond_2
    :goto_1
    :try_start_0
    sget-object v1, Lnu/xom/xinclude/XIncluder;->version:Ljava/lang/String;

    const-string v2, "1.2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lnu/xom/xinclude/XIncluder;->version:Ljava/lang/String;

    const-string v2, "1.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const-string v1, "UTF-16"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x2

    invoke-virtual {v5, v0}, Ljava/io/InputStream;->mark(I)V

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_8

    const-string v0, "UnicodeLittle"

    :goto_2
    invoke-virtual {v5}, Ljava/io/InputStream;->reset()V

    :cond_4
    :goto_3
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v1}, Ljava/io/Reader;->read()I

    move-result v2

    :goto_4
    const/4 v3, -0x1

    if-eq v2, v3, :cond_b

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/io/Reader;->read()I

    move-result v2

    goto :goto_4

    :cond_5
    if-eqz v3, :cond_2

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "application/xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "text/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "+xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    const-string v2, "application/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "+xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_7
    invoke-static {v5}, Lnu/xom/xinclude/EncodingHeuristics;->readEncodingFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_8
    const-string v0, "UnicodeBig"

    goto :goto_2

    :cond_9
    const-string v1, "UnicodeBigUnmarked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v0, "UnicodeBig"

    goto :goto_3

    :cond_a
    const-string v1, "UnicodeLittleUnmarked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "UnicodeLittle"

    goto :goto_3

    :cond_b
    invoke-virtual {p2}, Lnu/xom/Builder;->getNodeFactory()Lnu/xom/NodeFactory;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnu/xom/NodeFactory;->makeText(Ljava/lang/String;)Lnu/xom/Nodes;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :goto_5
    return-object v0

    :cond_c
    :try_start_1
    new-instance v1, Lnu/xom/Nodes;

    new-instance v2, Lnu/xom/Text;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lnu/xom/Text;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lnu/xom/Nodes;-><init>(Lnu/xom/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    move-object v0, v1

    goto :goto_5

    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_d
    move-object v0, p1

    goto/16 :goto_0
.end method

.method private static downloadXMLDocument(Ljava/net/URL;Ljava/lang/String;Lnu/xom/Builder;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnu/xom/Nodes;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnu/xom/ParsingException;,
            Lnu/xom/xinclude/XIncludeException;,
            Lnu/xom/xinclude/XPointerSyntaxException;,
            Lnu/xom/xinclude/XPointerResourceException;
        }
    .end annotation

    const/16 v8, 0x23

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Lnu/xom/xinclude/InclusionLoopException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Tried to include the already included document "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v1, v0, p0}, Lnu/xom/xinclude/InclusionLoopException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-static {v0, p4, p5}, Lnu/xom/xinclude/XIncluder;->setHeaders(Ljava/net/URLConnection;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lnu/xom/Builder;->build(Ljava/io/InputStream;Ljava/lang/String;)Lnu/xom/Document;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-static {v0, p2, p3}, Lnu/xom/xinclude/XIncluder;->resolveInPlace(Lnu/xom/Document;Lnu/xom/Builder;Ljava/util/ArrayList;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0, p1}, Lnu/xom/xinclude/XPointer;->query(Lnu/xom/Document;Ljava/lang/String;)Lnu/xom/Nodes;

    move-result-object v1

    move v2, v7

    :goto_0
    invoke-virtual {v1}, Lnu/xom/Nodes;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {v1, v2}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object p0

    check-cast p0, Lnu/xom/Element;

    const-string v3, "lang"

    const-string v4, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p0, v3, v4}, Lnu/xom/Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Lnu/xom/Attribute;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {p0}, Lnu/xom/xinclude/XIncluder;->getXMLLangValue(Lnu/xom/Element;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Lnu/xom/Attribute;

    const-string v5, "xml:lang"

    const-string v6, "http://www.w3.org/XML/1998/namespace"

    invoke-direct {v4, v5, v6, v3}, Lnu/xom/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lnu/xom/Element;->addAttribute(Lnu/xom/Attribute;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_2
    new-instance v1, Lnu/xom/Nodes;

    invoke-direct {v1}, Lnu/xom/Nodes;-><init>()V

    move v2, v7

    :goto_1
    invoke-virtual {v0}, Lnu/xom/Document;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {v0, v2}, Lnu/xom/Document;->getChild(I)Lnu/xom/Node;

    move-result-object v3

    instance-of v4, v3, Lnu/xom/DocType;

    if-nez v4, :cond_3

    invoke-virtual {v1, v3}, Lnu/xom/Nodes;->append(Lnu/xom/Node;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    new-instance v2, Lnu/xom/Element;

    const-string v3, "f"

    invoke-direct {v2, v3}, Lnu/xom/Element;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnu/xom/Document;->setRootElement(Lnu/xom/Element;)V

    move v0, v7

    :goto_2
    invoke-virtual {v1}, Lnu/xom/Nodes;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    invoke-virtual {v1, v0}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object p0

    invoke-virtual {p0}, Lnu/xom/Node;->getBaseURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_5

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_5
    invoke-virtual {p0}, Lnu/xom/Node;->detach()V

    instance-of v3, p0, Lnu/xom/Element;

    if-eqz v3, :cond_6

    check-cast p0, Lnu/xom/Element;

    invoke-virtual {p0, v2}, Lnu/xom/Element;->setBaseURI(Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    return-object v1
.end method

.method private static getDirectoryBase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getXMLLangValue(Lnu/xom/Element;)Ljava/lang/String;
    .locals 3

    move-object v0, p0

    :goto_0
    const-string v1, "lang"

    const-string v2, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0, v1, v2}, Lnu/xom/Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Lnu/xom/Attribute;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lnu/xom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lnu/xom/Element;->getParent()Lnu/xom/ParentNode;

    move-result-object p0

    if-nez p0, :cond_1

    const-string v0, ""

    goto :goto_1

    :cond_1
    instance-of v0, p0, Lnu/xom/Document;

    if-eqz v0, :cond_2

    const-string v0, ""

    goto :goto_1

    :cond_2
    check-cast p0, Lnu/xom/Element;

    move-object v0, p0

    goto :goto_0
.end method

.method private static isFallbackElement(Lnu/xom/Element;)Z
    .locals 2

    invoke-virtual {p0}, Lnu/xom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fallback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnu/xom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://www.w3.org/2001/XInclude"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isIncludeElement(Lnu/xom/Element;)Z
    .locals 2

    invoke-virtual {p0}, Lnu/xom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "include"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnu/xom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://www.w3.org/2001/XInclude"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static processFallback(Lnu/xom/Element;Lnu/xom/Builder;Ljava/util/ArrayList;Lnu/xom/ParentNode;Ljava/lang/Exception;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/xinclude/XIncludeException;,
            Ljava/io/IOException;,
            Lnu/xom/ParsingException;
        }
    .end annotation

    const/4 v3, 0x0

    const-string v0, "fallback"

    const-string v1, "http://www.w3.org/2001/XInclude"

    invoke-virtual {p0, v0, v1}, Lnu/xom/Element;->getFirstChildElement(Ljava/lang/String;Ljava/lang/String;)Lnu/xom/Element;

    move-result-object v1

    if-nez v1, :cond_1

    instance-of v0, p4, Ljava/io/IOException;

    if-eqz v0, :cond_0

    check-cast p4, Ljava/io/IOException;

    throw p4

    :cond_0
    new-instance v0, Lnu/xom/xinclude/XIncludeException;

    invoke-virtual {p4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnu/xom/Element;->getDocument()Lnu/xom/Document;

    move-result-object v2

    invoke-virtual {v2}, Lnu/xom/Document;->getBaseURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnu/xom/xinclude/XIncludeException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lnu/xom/xinclude/XIncludeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lnu/xom/Element;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {v1, v3}, Lnu/xom/Element;->getChild(I)Lnu/xom/Node;

    move-result-object v0

    instance-of v2, v0, Lnu/xom/Element;

    if-eqz v2, :cond_2

    check-cast v0, Lnu/xom/Element;

    invoke-static {v0, p1, p2}, Lnu/xom/xinclude/XIncluder;->resolve(Lnu/xom/Element;Lnu/xom/Builder;Ljava/util/ArrayList;)V

    :cond_2
    invoke-virtual {v1, v3}, Lnu/xom/Element;->getChild(I)Lnu/xom/Node;

    move-result-object v0

    invoke-virtual {v0}, Lnu/xom/Node;->detach()V

    invoke-virtual {p3, p0}, Lnu/xom/ParentNode;->indexOf(Lnu/xom/Node;)I

    move-result v2

    invoke-virtual {p3, v0, v2}, Lnu/xom/ParentNode;->insertChild(Lnu/xom/Node;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lnu/xom/Element;->detach()V

    return-void
.end method

.method public static resolve(Lnu/xom/Document;)Lnu/xom/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/xinclude/BadParseAttributeException;,
            Lnu/xom/xinclude/InclusionLoopException;,
            Ljava/io/IOException;,
            Lnu/xom/xinclude/NoIncludeLocationException;,
            Lnu/xom/ParsingException;,
            Ljava/io/UnsupportedEncodingException;,
            Lnu/xom/xinclude/XIncludeException;
        }
    .end annotation

    new-instance v0, Lnu/xom/Builder;

    invoke-direct {v0}, Lnu/xom/Builder;-><init>()V

    invoke-static {p0, v0}, Lnu/xom/xinclude/XIncluder;->resolve(Lnu/xom/Document;Lnu/xom/Builder;)Lnu/xom/Document;

    move-result-object v0

    return-object v0
.end method

.method public static resolve(Lnu/xom/Document;Lnu/xom/Builder;)Lnu/xom/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/xinclude/BadParseAttributeException;,
            Lnu/xom/xinclude/InclusionLoopException;,
            Ljava/io/IOException;,
            Lnu/xom/xinclude/NoIncludeLocationException;,
            Lnu/xom/ParsingException;,
            Ljava/io/UnsupportedEncodingException;,
            Lnu/xom/xinclude/XIncludeException;
        }
    .end annotation

    new-instance v0, Lnu/xom/Document;

    invoke-direct {v0, p0}, Lnu/xom/Document;-><init>(Lnu/xom/Document;)V

    invoke-static {v0, p1}, Lnu/xom/xinclude/XIncluder;->resolveInPlace(Lnu/xom/Document;Lnu/xom/Builder;)V

    return-object v0
.end method

.method private static resolve(Lnu/xom/Element;Lnu/xom/Builder;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnu/xom/ParsingException;,
            Lnu/xom/xinclude/XIncludeException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lnu/xom/xinclude/XIncluder;->resolve(Lnu/xom/Element;Lnu/xom/Builder;Ljava/util/ArrayList;Lnu/xom/Document;)V

    return-void
.end method

.method private static resolve(Lnu/xom/Element;Lnu/xom/Builder;Ljava/util/ArrayList;Lnu/xom/Document;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnu/xom/ParsingException;,
            Lnu/xom/xinclude/XIncludeException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-static {p0}, Lnu/xom/xinclude/XIncluder;->isIncludeElement(Lnu/xom/Element;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {p0}, Lnu/xom/xinclude/XIncluder;->verifyIncludeElement(Lnu/xom/Element;)V

    const-string v1, "parse"

    invoke-virtual {p0, v1}, Lnu/xom/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_18

    const-string v1, "xml"

    move-object v3, v1

    :goto_0
    const-string v1, "xpointer"

    invoke-virtual {p0, v1}, Lnu/xom/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "encoding"

    invoke-virtual {p0, v1}, Lnu/xom/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "href"

    invoke-virtual {p0, v1}, Lnu/xom/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v1, v7

    :cond_0
    invoke-virtual {p0}, Lnu/xom/Element;->getParent()Lnu/xom/ParentNode;

    move-result-object v8

    invoke-virtual {p0}, Lnu/xom/Element;->getBaseURI()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v6

    :goto_1
    if-eqz v5, :cond_5

    if-eqz v1, :cond_5

    :try_start_1
    invoke-static {v5, v1}, Lnu/xom/xinclude/XIncluder;->absolutize(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    :goto_2
    const-string v5, "accept"

    invoke-virtual {p0, v5}, Lnu/xom/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnu/xom/xinclude/XIncluder;->checkHeader(Ljava/lang/String;)V

    const-string v6, "accept-language"

    invoke-virtual {p0, v6}, Lnu/xom/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnu/xom/xinclude/XIncluder;->checkHeader(Ljava/lang/String;)V

    const-string v7, "xml"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    const-string v3, ""

    instance-of v4, v8, Lnu/xom/Element;

    if-eqz v4, :cond_16

    move-object v0, v8

    check-cast v0, Lnu/xom/Element;

    move-object v3, v0

    invoke-static {v3}, Lnu/xom/xinclude/XIncluder;->getXMLLangValue(Lnu/xom/Element;)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    :goto_3
    if-eqz v1, :cond_8

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v1 .. v7}, Lnu/xom/xinclude/XIncluder;->downloadXMLDocument(Ljava/net/URL;Ljava/lang/String;Lnu/xom/Builder;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnu/xom/Nodes;

    move-result-object v2

    move v3, v10

    :goto_4
    invoke-virtual {v2}, Lnu/xom/Nodes;->size()I

    move-result v1

    if-ge v3, v1, :cond_b

    invoke-virtual {v2, v3}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object v1

    instance-of v4, v1, Lnu/xom/Element;

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lnu/xom/Node;->getBaseURI()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x23

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_1

    const/4 v5, 0x0

    const/16 v6, 0x23

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_1
    check-cast v1, Lnu/xom/Element;

    invoke-virtual {v8}, Lnu/xom/ParentNode;->getBaseURI()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, Lnu/xom/xinclude/XIncluder;->getDirectoryBase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_2
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :cond_3
    new-instance v5, Lnu/xom/Attribute;

    const-string v6, "xml:base"

    const-string v7, "http://www.w3.org/XML/1998/namespace"

    invoke-direct {v5, v6, v7, v4}, Lnu/xom/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lnu/xom/Element;->addAttribute(Lnu/xom/Attribute;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lnu/xom/xinclude/XPointerSyntaxException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lnu/xom/xinclude/XPointerResourceException; {:try_start_1 .. :try_end_1} :catch_4

    :cond_4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_4

    :catch_0
    move-exception v5

    move-object v5, v7

    goto/16 :goto_1

    :cond_5
    if-eqz v1, :cond_17

    :try_start_2
    invoke-static {v1}, Lnu/xom/xinclude/XIncluder;->testURISyntax(Ljava/lang/String;)V

    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lnu/xom/MalformedURIException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lnu/xom/xinclude/XPointerSyntaxException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lnu/xom/xinclude/XPointerResourceException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v1, v6

    goto/16 :goto_2

    :catch_1
    move-exception v2

    if-nez v5, :cond_7

    :try_start_3
    new-instance v2, Lnu/xom/xinclude/BadHrefAttributeException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Could not resolve relative URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " because the xi:include element does"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " not have a base URI."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lnu/xom/xinclude/BadHrefAttributeException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lnu/xom/xinclude/XPointerSyntaxException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lnu/xom/xinclude/XPointerResourceException; {:try_start_3 .. :try_end_3} :catch_4

    :catch_2
    move-exception v1

    invoke-static {p0, p1, p2, v8, v1}, Lnu/xom/xinclude/XIncluder;->processFallback(Lnu/xom/Element;Lnu/xom/Builder;Ljava/util/ArrayList;Lnu/xom/ParentNode;Ljava/lang/Exception;)V

    :cond_6
    :goto_5
    return-void

    :cond_7
    :try_start_4
    new-instance v2, Lnu/xom/xinclude/BadHrefAttributeException;

    const-string v3, "Illegal IRI in href attribute"

    invoke-direct {v2, v3, v1}, Lnu/xom/xinclude/BadHrefAttributeException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lnu/xom/xinclude/XPointerSyntaxException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lnu/xom/xinclude/XPointerResourceException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_3
    move-exception v1

    invoke-static {p0, p1, p2, v8, v1}, Lnu/xom/xinclude/XIncluder;->processFallback(Lnu/xom/Element;Lnu/xom/Builder;Ljava/util/ArrayList;Lnu/xom/ParentNode;Ljava/lang/Exception;)V

    goto :goto_5

    :cond_8
    :try_start_5
    invoke-virtual {p0}, Lnu/xom/Element;->getDocument()Lnu/xom/Document;

    move-result-object v1

    if-nez v1, :cond_15

    move-object v3, p3

    :goto_6
    invoke-static {v3, v2}, Lnu/xom/xinclude/XPointer;->query(Lnu/xom/Document;Ljava/lang/String;)Lnu/xom/Nodes;

    move-result-object v4

    new-instance v5, Lnu/xom/Nodes;

    invoke-direct {v5}, Lnu/xom/Nodes;-><init>()V

    move v6, v10

    :goto_7
    invoke-virtual {v4}, Lnu/xom/Nodes;->size()I

    move-result v1

    if-ge v6, v1, :cond_a

    invoke-virtual {v4, v6}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lnu/xom/Element;

    move-object v1, v0

    invoke-static {v1, p0}, Lnu/xom/xinclude/XIncluder;->contains(Lnu/xom/ParentNode;Lnu/xom/Node;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Lnu/xom/xinclude/InclusionLoopException;

    const-string v2, "Element tried to include itself"

    invoke-direct {v1, v2}, Lnu/xom/xinclude/InclusionLoopException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lnu/xom/xinclude/XPointerSyntaxException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lnu/xom/xinclude/XPointerResourceException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    move-exception v1

    invoke-static {p0, p1, p2, v8, v1}, Lnu/xom/xinclude/XIncluder;->processFallback(Lnu/xom/Element;Lnu/xom/Builder;Ljava/util/ArrayList;Lnu/xom/ParentNode;Ljava/lang/Exception;)V

    goto :goto_5

    :cond_9
    :try_start_6
    invoke-virtual {v2}, Lnu/xom/Node;->copy()Lnu/xom/Node;

    move-result-object v1

    invoke-virtual {v5, v1}, Lnu/xom/Nodes;->append(Lnu/xom/Node;)V

    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_7

    :cond_a
    invoke-static {v5, p1, p2, v3}, Lnu/xom/xinclude/XIncluder;->resolveXPointerSelection(Lnu/xom/Nodes;Lnu/xom/Builder;Ljava/util/ArrayList;Lnu/xom/Document;)Lnu/xom/Nodes;

    move-result-object v1

    move-object v2, v1

    :cond_b
    instance-of v1, v8, Lnu/xom/Element;

    if-eqz v1, :cond_d

    invoke-virtual {v8, p0}, Lnu/xom/ParentNode;->indexOf(Lnu/xom/Node;)I

    move-result v1

    move v3, v10

    :goto_8
    invoke-virtual {v2}, Lnu/xom/Nodes;->size()I

    move-result v4

    if-ge v3, v4, :cond_c

    invoke-virtual {v2, v3}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object v4

    add-int v5, v1, v3

    invoke-virtual {v8, v4, v5}, Lnu/xom/ParentNode;->insertChild(Lnu/xom/Node;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_c
    invoke-virtual {p0}, Lnu/xom/Element;->detach()V

    goto :goto_5

    :cond_d
    move-object v0, v8

    check-cast v0, Lnu/xom/Document;

    move-object v9, v0

    move v3, v10

    :goto_9
    invoke-virtual {v2, v3}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    instance-of v4, v1, Lnu/xom/Element;

    if-eqz v4, :cond_e

    check-cast v1, Lnu/xom/Element;

    invoke-virtual {v9, v1}, Lnu/xom/Document;->setRootElement(Lnu/xom/Element;)V

    invoke-virtual {v9}, Lnu/xom/Document;->getRootElement()Lnu/xom/Element;

    move-result-object v1

    invoke-virtual {v9, v1}, Lnu/xom/Document;->indexOf(Lnu/xom/Node;)I

    move-result v1

    move v4, v3

    :goto_a
    invoke-virtual {v2}, Lnu/xom/Nodes;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    invoke-virtual {v2, v4}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    add-int/2addr v6, v4

    sub-int/2addr v6, v3

    invoke-virtual {v9, v5, v6}, Lnu/xom/Document;->insertChild(Lnu/xom/Node;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_e
    invoke-virtual {v9, p0}, Lnu/xom/Document;->indexOf(Lnu/xom/Node;)I

    move-result v4

    invoke-virtual {v9, v1, v4}, Lnu/xom/Document;->insertChild(Lnu/xom/Node;I)V

    goto :goto_9

    :cond_f
    const-string v2, "text"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-static {v1, v4, p1, v5, v6}, Lnu/xom/xinclude/XIncluder;->downloadTextDocument(Ljava/net/URL;Ljava/lang/String;Lnu/xom/Builder;Ljava/lang/String;Ljava/lang/String;)Lnu/xom/Nodes;

    move-result-object v2

    move v3, v10

    :goto_b
    invoke-virtual {v2}, Lnu/xom/Nodes;->size()I

    move-result v1

    if-ge v3, v1, :cond_11

    invoke-virtual {v2, v3}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object v1

    instance-of v4, v1, Lnu/xom/Attribute;

    if-eqz v4, :cond_10

    move-object v0, v8

    check-cast v0, Lnu/xom/Element;

    move-object v9, v0

    check-cast v1, Lnu/xom/Attribute;

    invoke-virtual {v9, v1}, Lnu/xom/Element;->addAttribute(Lnu/xom/Attribute;)V

    :goto_c
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_b

    :cond_10
    invoke-virtual {v8, p0}, Lnu/xom/ParentNode;->indexOf(Lnu/xom/Node;)I

    move-result v4

    invoke-virtual {v8, v1, v4}, Lnu/xom/ParentNode;->insertChild(Lnu/xom/Node;I)V

    goto :goto_c

    :cond_11
    invoke-virtual {v8, p0}, Lnu/xom/ParentNode;->removeChild(Lnu/xom/Node;)Lnu/xom/Node;

    goto/16 :goto_5

    :cond_12
    new-instance v1, Lnu/xom/xinclude/BadParseAttributeException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Bad value for parse attribute: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lnu/xom/Element;->getDocument()Lnu/xom/Document;

    move-result-object v3

    invoke-virtual {v3}, Lnu/xom/Document;->getBaseURI()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lnu/xom/xinclude/BadParseAttributeException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lnu/xom/xinclude/XPointerSyntaxException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lnu/xom/xinclude/XPointerResourceException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_13
    invoke-static {p0}, Lnu/xom/xinclude/XIncluder;->isFallbackElement(Lnu/xom/Element;)Z

    move-result v1

    if-eqz v1, :cond_14

    new-instance v1, Lnu/xom/xinclude/MisplacedFallbackException;

    const-string v2, "Fallback element outside include element"

    invoke-virtual {p0}, Lnu/xom/Element;->getDocument()Lnu/xom/Document;

    move-result-object v3

    invoke-virtual {v3}, Lnu/xom/Document;->getBaseURI()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lnu/xom/xinclude/MisplacedFallbackException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_14
    invoke-virtual {p0}, Lnu/xom/Element;->getChildElements()Lnu/xom/Elements;

    move-result-object v1

    move v2, v10

    :goto_d
    invoke-virtual {v1}, Lnu/xom/Elements;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    invoke-virtual {v1, v2}, Lnu/xom/Elements;->get(I)Lnu/xom/Element;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lnu/xom/xinclude/XIncluder;->resolve(Lnu/xom/Element;Lnu/xom/Builder;Ljava/util/ArrayList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_15
    move-object v3, v1

    goto/16 :goto_6

    :cond_16
    move-object v7, v3

    goto/16 :goto_3

    :cond_17
    move-object v1, v7

    goto/16 :goto_2

    :cond_18
    move-object v3, v1

    goto/16 :goto_0
.end method

.method public static resolveInPlace(Lnu/xom/Document;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/xinclude/BadParseAttributeException;,
            Lnu/xom/xinclude/InclusionLoopException;,
            Ljava/io/IOException;,
            Lnu/xom/xinclude/NoIncludeLocationException;,
            Lnu/xom/ParsingException;,
            Ljava/io/UnsupportedEncodingException;,
            Lnu/xom/xinclude/XIncludeException;
        }
    .end annotation

    new-instance v0, Lnu/xom/Builder;

    invoke-direct {v0}, Lnu/xom/Builder;-><init>()V

    invoke-static {p0, v0}, Lnu/xom/xinclude/XIncluder;->resolveInPlace(Lnu/xom/Document;Lnu/xom/Builder;)V

    return-void
.end method

.method public static resolveInPlace(Lnu/xom/Document;Lnu/xom/Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/xinclude/BadParseAttributeException;,
            Lnu/xom/xinclude/InclusionLoopException;,
            Ljava/io/IOException;,
            Lnu/xom/xinclude/NoIncludeLocationException;,
            Lnu/xom/ParsingException;,
            Ljava/io/UnsupportedEncodingException;,
            Lnu/xom/xinclude/XIncludeException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1, v0}, Lnu/xom/xinclude/XIncluder;->resolveInPlace(Lnu/xom/Document;Lnu/xom/Builder;Ljava/util/ArrayList;)V

    return-void
.end method

.method private static resolveInPlace(Lnu/xom/Document;Lnu/xom/Builder;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnu/xom/ParsingException;,
            Lnu/xom/xinclude/XIncludeException;
        }
    .end annotation

    invoke-virtual {p0}, Lnu/xom/Document;->getBaseURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "file:///"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "file:/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lnu/xom/Document;->getRootElement()Lnu/xom/Element;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lnu/xom/xinclude/XIncluder;->resolve(Lnu/xom/Element;Lnu/xom/Builder;Ljava/util/ArrayList;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private static resolveSilently(Lnu/xom/Element;Lnu/xom/Builder;Ljava/util/ArrayList;Lnu/xom/Document;)Lnu/xom/Nodes;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnu/xom/ParsingException;,
            Lnu/xom/xinclude/XIncludeException;
        }
    .end annotation

    invoke-static {p0}, Lnu/xom/xinclude/XIncluder;->isIncludeElement(Lnu/xom/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lnu/xom/xinclude/XIncluder;->isFallbackElement(Lnu/xom/Element;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "XOM BUG: include or fallback element passed to resolveSilently; please report with a test case"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lnu/xom/Element;->getChildElements()Lnu/xom/Elements;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lnu/xom/Elements;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Lnu/xom/Elements;->get(I)Lnu/xom/Element;

    move-result-object v2

    invoke-static {v2, p1, p2, p3}, Lnu/xom/xinclude/XIncluder;->resolve(Lnu/xom/Element;Lnu/xom/Builder;Ljava/util/ArrayList;Lnu/xom/Document;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lnu/xom/Nodes;

    invoke-direct {v0, p0}, Lnu/xom/Nodes;-><init>(Lnu/xom/Node;)V

    return-object v0
.end method

.method private static resolveXPointerSelection(Lnu/xom/Nodes;Lnu/xom/Builder;Ljava/util/ArrayList;Lnu/xom/Document;)Lnu/xom/Nodes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnu/xom/ParsingException;,
            Lnu/xom/xinclude/XIncludeException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object p0

    check-cast p0, Lnu/xom/Element;

    invoke-static {p0, p1, p2, p3}, Lnu/xom/xinclude/XIncluder;->resolveSilently(Lnu/xom/Element;Lnu/xom/Builder;Ljava/util/ArrayList;Lnu/xom/Document;)Lnu/xom/Nodes;

    move-result-object v0

    return-object v0
.end method

.method private static setHeaders(Ljava/net/URLConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/xinclude/BadHTTPHeaderException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {p1}, Lnu/xom/xinclude/XIncluder;->checkHeader(Ljava/lang/String;)V

    const-string v0, "accept"

    invoke-virtual {p0, v0, p1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p2}, Lnu/xom/xinclude/XIncluder;->checkHeader(Ljava/lang/String;)V

    const-string v0, "accept-language"

    invoke-virtual {p0, v0, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static testForForbiddenChildElements(Lnu/xom/Element;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/xinclude/XIncludeException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Lnu/xom/Element;->getChildElements()Lnu/xom/Elements;

    move-result-object v0

    invoke-virtual {v0}, Lnu/xom/Elements;->size()I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Lnu/xom/Elements;->get(I)Lnu/xom/Element;

    move-result-object v4

    const-string v5, "http://www.w3.org/2001/XInclude"

    invoke-virtual {v4}, Lnu/xom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "fallback"

    invoke-virtual {v4}, Lnu/xom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    new-instance v0, Lnu/xom/xinclude/XIncludeException;

    const-string v1, "Multiple fallback elements"

    invoke-virtual {p0}, Lnu/xom/Element;->getDocument()Lnu/xom/Document;

    move-result-object v2

    invoke-virtual {v2}, Lnu/xom/Document;->getBaseURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnu/xom/xinclude/XIncludeException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lnu/xom/xinclude/XIncludeException;

    const-string v1, "Include element contains an include child"

    invoke-virtual {p0}, Lnu/xom/Element;->getDocument()Lnu/xom/Document;

    move-result-object v2

    invoke-virtual {v2}, Lnu/xom/Document;->getBaseURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnu/xom/xinclude/XIncludeException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static testForFragmentIdentifier(Lnu/xom/Element;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/xinclude/BadHrefAttributeException;
        }
    .end annotation

    const-string v0, "href"

    invoke-virtual {p0, v0}, Lnu/xom/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    new-instance v1, Lnu/xom/xinclude/BadHrefAttributeException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "fragment identifier in URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnu/xom/Element;->getBaseURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lnu/xom/xinclude/BadHrefAttributeException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method private static testHref(Lnu/xom/Element;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/xinclude/NoIncludeLocationException;
        }
    .end annotation

    const-string v0, "href"

    invoke-virtual {p0, v0}, Lnu/xom/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "xpointer"

    invoke-virtual {p0, v1}, Lnu/xom/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    new-instance v0, Lnu/xom/xinclude/NoIncludeLocationException;

    const-string v1, "Missing href attribute"

    invoke-virtual {p0}, Lnu/xom/Element;->getDocument()Lnu/xom/Document;

    move-result-object v2

    invoke-virtual {v2}, Lnu/xom/Document;->getBaseURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnu/xom/xinclude/NoIncludeLocationException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static testURISyntax(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lnu/xom/Element;

    const-string v1, "e"

    invoke-direct {v0, v1}, Lnu/xom/Element;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lnu/xom/Element;->setNamespaceURI(Ljava/lang/String;)V

    return-void
.end method

.method private static verifyEncoding(Lnu/xom/Element;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/xinclude/BadEncodingAttributeException;
        }
    .end annotation

    const/16 v8, 0x7a

    const/16 v7, 0x61

    const/16 v6, 0x5a

    const/16 v5, 0x41

    const-string v0, "encoding"

    invoke-virtual {p0, v0}, Lnu/xom/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-nez v2, :cond_2

    new-instance v0, Lnu/xom/xinclude/BadEncodingAttributeException;

    const-string v1, "Empty encoding attribute"

    invoke-virtual {p0}, Lnu/xom/Element;->getBaseURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnu/xom/xinclude/BadEncodingAttributeException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v2, 0x0

    aget-char v2, v1, v2

    if-lt v2, v5, :cond_3

    if-le v2, v6, :cond_5

    :cond_3
    if-lt v2, v7, :cond_4

    if-le v2, v8, :cond_5

    :cond_4
    new-instance v1, Lnu/xom/xinclude/BadEncodingAttributeException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Illegal value for encoding attribute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnu/xom/Element;->getBaseURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lnu/xom/xinclude/BadEncodingAttributeException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_5
    const/4 v2, 0x1

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-char v3, v1, v2

    if-lt v3, v5, :cond_6

    if-le v3, v6, :cond_9

    :cond_6
    if-lt v3, v7, :cond_7

    if-le v3, v8, :cond_9

    :cond_7
    const/16 v4, 0x30

    if-lt v3, v4, :cond_8

    const/16 v4, 0x39

    if-le v3, v4, :cond_9

    :cond_8
    const/16 v4, 0x2d

    if-eq v3, v4, :cond_9

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_9

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_a

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_a
    new-instance v1, Lnu/xom/xinclude/BadEncodingAttributeException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Illegal value for encoding attribute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnu/xom/Element;->getBaseURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lnu/xom/xinclude/BadEncodingAttributeException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method private static verifyIncludeElement(Lnu/xom/Element;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/xinclude/XIncludeException;
        }
    .end annotation

    invoke-static {p0}, Lnu/xom/xinclude/XIncluder;->testHref(Lnu/xom/Element;)V

    invoke-static {p0}, Lnu/xom/xinclude/XIncluder;->testForFragmentIdentifier(Lnu/xom/Element;)V

    invoke-static {p0}, Lnu/xom/xinclude/XIncluder;->verifyEncoding(Lnu/xom/Element;)V

    invoke-static {p0}, Lnu/xom/xinclude/XIncluder;->testForForbiddenChildElements(Lnu/xom/Element;)V

    return-void
.end method
