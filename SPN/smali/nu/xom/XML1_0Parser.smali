.class Lnu/xom/XML1_0Parser;
.super Lorg/apache/xerces/parsers/SAXParser;


# direct methods
.method constructor <init>()V
    .locals 1

    new-instance v0, Lorg/apache/xerces/parsers/DTDConfiguration;

    invoke-direct {v0}, Lorg/apache/xerces/parsers/DTDConfiguration;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/xerces/parsers/SAXParser;-><init>(Lorg/apache/xerces/xni/parser/XMLParserConfiguration;)V

    return-void
.end method
