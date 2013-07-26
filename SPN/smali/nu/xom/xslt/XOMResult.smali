.class Lnu/xom/xslt/XOMResult;
.super Ljavax/xml/transform/sax/SAXResult;


# direct methods
.method constructor <init>(Lnu/xom/NodeFactory;)V
    .locals 1

    new-instance v0, Lnu/xom/xslt/XSLTHandler;

    invoke-direct {v0, p1}, Lnu/xom/xslt/XSLTHandler;-><init>(Lnu/xom/NodeFactory;)V

    invoke-direct {p0, v0}, Ljavax/xml/transform/sax/SAXResult;-><init>(Lorg/xml/sax/ContentHandler;)V

    invoke-virtual {p0}, Lnu/xom/xslt/XOMResult;->getHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    invoke-virtual {p0, v0}, Lnu/xom/xslt/XOMResult;->setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V

    return-void
.end method


# virtual methods
.method public getResult()Lnu/xom/Nodes;
    .locals 1

    invoke-virtual {p0}, Lnu/xom/xslt/XOMResult;->getHandler()Lorg/xml/sax/ContentHandler;

    move-result-object p0

    check-cast p0, Lnu/xom/xslt/XSLTHandler;

    invoke-virtual {p0}, Lnu/xom/xslt/XSLTHandler;->getResult()Lnu/xom/Nodes;

    move-result-object v0

    return-object v0
.end method
