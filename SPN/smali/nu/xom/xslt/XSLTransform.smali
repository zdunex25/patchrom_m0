.class public final Lnu/xom/xslt/XSLTransform;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnu/xom/xslt/XSLTransform$1;,
        Lnu/xom/xslt/XSLTransform$FatalListener;
    }
.end annotation


# static fields
.field private static errorsAreFatal:Ljavax/xml/transform/ErrorListener;


# instance fields
.field private factory:Lnu/xom/NodeFactory;

.field private parameters:Ljava/util/Map;

.field private templates:Ljavax/xml/transform/Templates;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnu/xom/xslt/XSLTransform$FatalListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnu/xom/xslt/XSLTransform$FatalListener;-><init>(Lnu/xom/xslt/XSLTransform$1;)V

    sput-object v0, Lnu/xom/xslt/XSLTransform;->errorsAreFatal:Ljavax/xml/transform/ErrorListener;

    return-void
.end method

.method private constructor <init>(Ljavax/xml/transform/Source;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/xslt/XSLException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnu/xom/xslt/XSLTransform;->parameters:Ljava/util/Map;

    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    sget-object v1, Lnu/xom/xslt/XSLTransform;->errorsAreFatal:Ljavax/xml/transform/ErrorListener;

    invoke-virtual {v0, v1}, Ljavax/xml/transform/TransformerFactory;->setErrorListener(Ljavax/xml/transform/ErrorListener;)V

    invoke-virtual {v0, p1}, Ljavax/xml/transform/TransformerFactory;->newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;

    move-result-object v0

    iput-object v0, p0, Lnu/xom/xslt/XSLTransform;->templates:Ljavax/xml/transform/Templates;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lnu/xom/xslt/XSLException;

    const-string v2, "Could not locate a TrAX TransformerFactory"

    invoke-direct {v1, v2, v0}, Lnu/xom/xslt/XSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lnu/xom/xslt/XSLException;

    const-string v2, "Syntax error in stylesheet"

    invoke-direct {v1, v2, v0}, Lnu/xom/xslt/XSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lnu/xom/Document;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/xslt/XSLException;
        }
    .end annotation

    new-instance v0, Lnu/xom/NodeFactory;

    invoke-direct {v0}, Lnu/xom/NodeFactory;-><init>()V

    invoke-direct {p0, p1, v0}, Lnu/xom/xslt/XSLTransform;-><init>(Lnu/xom/Document;Lnu/xom/NodeFactory;)V

    return-void
.end method

.method public constructor <init>(Lnu/xom/Document;Lnu/xom/NodeFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/xslt/XSLException;
        }
    .end annotation

    new-instance v0, Lnu/xom/xslt/XOMSource;

    invoke-direct {v0, p1}, Lnu/xom/xslt/XOMSource;-><init>(Lnu/xom/Document;)V

    invoke-direct {p0, v0}, Lnu/xom/xslt/XSLTransform;-><init>(Ljavax/xml/transform/Source;)V

    if-nez p2, :cond_0

    new-instance v0, Lnu/xom/NodeFactory;

    invoke-direct {v0}, Lnu/xom/NodeFactory;-><init>()V

    iput-object v0, p0, Lnu/xom/xslt/XSLTransform;->factory:Lnu/xom/NodeFactory;

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lnu/xom/xslt/XSLTransform;->factory:Lnu/xom/NodeFactory;

    goto :goto_0
.end method

.method private _setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-nez p2, :cond_0

    iget-object v0, p0, Lnu/xom/xslt/XSLTransform;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnu/xom/xslt/XSLTransform;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static toDocument(Lnu/xom/Nodes;)Lnu/xom/Document;
    .locals 5

    const/4 v3, 0x0

    const/4 v0, 0x0

    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lnu/xom/Nodes;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object v2

    instance-of v2, v2, Lnu/xom/Element;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object v0

    check-cast v0, Lnu/xom/Element;

    move v4, v1

    move-object v1, v0

    move v0, v4

    :goto_1
    if-nez v1, :cond_1

    new-instance v0, Lnu/xom/XMLException;

    const-string v1, "No root element"

    invoke-direct {v0, v1}, Lnu/xom/XMLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Lnu/xom/Document;

    invoke-direct {v2, v1}, Lnu/xom/Document;-><init>(Lnu/xom/Element;)V

    move v1, v3

    :goto_2
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lnu/xom/Document;->insertChild(Lnu/xom/Node;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    :goto_3
    invoke-virtual {p0}, Lnu/xom/Nodes;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnu/xom/Document;->appendChild(Lnu/xom/Node;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-object v2

    :cond_4
    move-object v1, v0

    move v0, v3

    goto :goto_1
.end method

.method private transform(Ljavax/xml/transform/Source;)Lnu/xom/Nodes;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/xslt/XSLException;
        }
    .end annotation

    :try_start_0
    new-instance v2, Lnu/xom/xslt/XOMResult;

    iget-object v1, p0, Lnu/xom/xslt/XSLTransform;->factory:Lnu/xom/NodeFactory;

    invoke-direct {v2, v1}, Lnu/xom/xslt/XOMResult;-><init>(Lnu/xom/NodeFactory;)V

    iget-object v1, p0, Lnu/xom/xslt/XSLTransform;->templates:Ljavax/xml/transform/Templates;

    invoke-interface {v1}, Ljavax/xml/transform/Templates;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v3

    const-string v1, "method"

    const-string v4, "xml"

    invoke-virtual {v3, v1, v4}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lnu/xom/xslt/XSLTransform;->errorsAreFatal:Ljavax/xml/transform/ErrorListener;

    invoke-virtual {v3, v1}, Ljavax/xml/transform/Transformer;->setErrorListener(Ljavax/xml/transform/ErrorListener;)V

    iget-object v1, p0, Lnu/xom/xslt/XSLTransform;->parameters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v5, p0, Lnu/xom/xslt/XSLTransform;->parameters:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Ljavax/xml/transform/Transformer;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    instance-of v2, v1, Ljavax/xml/transform/TransformerException;

    if-eqz v2, :cond_2

    move-object v0, v1

    check-cast v0, Ljavax/xml/transform/TransformerException;

    move-object p0, v0

    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2

    instance-of v3, v2, Lorg/xml/sax/SAXParseException;

    if-eqz v3, :cond_0

    move-object v0, v2

    check-cast v0, Lorg/xml/sax/SAXParseException;

    move-object p0, v0

    invoke-virtual {p0}, Lorg/xml/sax/SAXParseException;->getException()Ljava/lang/Exception;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v2, v3

    :cond_0
    :goto_1
    new-instance v3, Lnu/xom/xslt/XSLException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v2}, Lnu/xom/xslt/XSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_1
    :try_start_1
    invoke-virtual {v3, p1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    invoke-virtual {v2}, Lnu/xom/xslt/XOMResult;->getResult()Lnu/xom/Nodes;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    return-object v1

    :cond_2
    move-object v2, v1

    goto :goto_1
.end method


# virtual methods
.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lnu/xom/xslt/XSLTransform;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p1, p3}, Lnu/xom/xslt/XSLTransform;->_setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lnu/xom/xslt/XSLTransform;->_setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lnu/xom/xslt/XSLTransform;->templates:Ljavax/xml/transform/Templates;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lnu/xom/Document;)Lnu/xom/Nodes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/xslt/XSLException;
        }
    .end annotation

    new-instance v0, Lnu/xom/xslt/XOMSource;

    invoke-direct {v0, p1}, Lnu/xom/xslt/XOMSource;-><init>(Lnu/xom/Document;)V

    invoke-direct {p0, v0}, Lnu/xom/xslt/XSLTransform;->transform(Ljavax/xml/transform/Source;)Lnu/xom/Nodes;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lnu/xom/Nodes;)Lnu/xom/Nodes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/xslt/XSLException;
        }
    .end annotation

    invoke-virtual {p1}, Lnu/xom/Nodes;->size()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lnu/xom/Nodes;

    invoke-direct {v0}, Lnu/xom/Nodes;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lnu/xom/xslt/XOMSource;

    invoke-direct {v0, p1}, Lnu/xom/xslt/XOMSource;-><init>(Lnu/xom/Nodes;)V

    invoke-direct {p0, v0}, Lnu/xom/xslt/XSLTransform;->transform(Ljavax/xml/transform/Source;)Lnu/xom/Nodes;

    move-result-object v0

    goto :goto_0
.end method
