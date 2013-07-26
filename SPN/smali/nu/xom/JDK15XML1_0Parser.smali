.class Lnu/xom/JDK15XML1_0Parser;
.super Lcom/sun/org/apache/xerces/internal/parsers/SAXParser;


# direct methods
.method constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;-><init>()V

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/parsers/SAXParser;-><init>(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;)V

    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/util/SecurityManager;-><init>()V

    const-string v1, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {p0, v1, v0}, Lnu/xom/JDK15XML1_0Parser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
