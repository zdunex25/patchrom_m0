.class Lnu/xom/xslt/XOMSource;
.super Ljavax/xml/transform/sax/SAXSource;


# instance fields
.field private final source:Lnu/xom/Nodes;


# direct methods
.method constructor <init>(Lnu/xom/Document;)V
    .locals 1

    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXSource;-><init>()V

    new-instance v0, Lnu/xom/Nodes;

    invoke-direct {v0, p1}, Lnu/xom/Nodes;-><init>(Lnu/xom/Node;)V

    iput-object v0, p0, Lnu/xom/xslt/XOMSource;->source:Lnu/xom/Nodes;

    return-void
.end method

.method public constructor <init>(Lnu/xom/Nodes;)V
    .locals 0

    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXSource;-><init>()V

    iput-object p1, p0, Lnu/xom/xslt/XOMSource;->source:Lnu/xom/Nodes;

    return-void
.end method


# virtual methods
.method public getInputSource()Lorg/xml/sax/InputSource;
    .locals 2

    new-instance v0, Lnu/xom/xslt/XOMInputSource;

    iget-object v1, p0, Lnu/xom/xslt/XOMSource;->source:Lnu/xom/Nodes;

    invoke-direct {v0, v1}, Lnu/xom/xslt/XOMInputSource;-><init>(Lnu/xom/Nodes;)V

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnu/xom/xslt/XOMSource;->source:Lnu/xom/Nodes;

    invoke-virtual {v0}, Lnu/xom/Nodes;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnu/xom/xslt/XOMSource;->source:Lnu/xom/Nodes;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object v0

    invoke-virtual {v0}, Lnu/xom/Node;->getBaseURI()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getXMLReader()Lorg/xml/sax/XMLReader;
    .locals 1

    new-instance v0, Lnu/xom/xslt/XOMReader;

    invoke-direct {v0}, Lnu/xom/xslt/XOMReader;-><init>()V

    return-object v0
.end method
