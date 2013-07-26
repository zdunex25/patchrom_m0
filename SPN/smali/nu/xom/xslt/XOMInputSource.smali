.class Lnu/xom/xslt/XOMInputSource;
.super Lorg/xml/sax/InputSource;


# instance fields
.field private final nodes:Lnu/xom/Nodes;


# direct methods
.method constructor <init>(Lnu/xom/Nodes;)V
    .locals 0

    invoke-direct {p0}, Lorg/xml/sax/InputSource;-><init>()V

    iput-object p1, p0, Lnu/xom/xslt/XOMInputSource;->nodes:Lnu/xom/Nodes;

    return-void
.end method


# virtual methods
.method getNodes()Lnu/xom/Nodes;
    .locals 1

    iget-object v0, p0, Lnu/xom/xslt/XOMInputSource;->nodes:Lnu/xom/Nodes;

    return-object v0
.end method
