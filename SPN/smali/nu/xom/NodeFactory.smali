.class public Lnu/xom/NodeFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method addAttribute(Lnu/xom/Element;Lnu/xom/Attribute;)V
    .locals 0

    invoke-virtual {p1, p2}, Lnu/xom/Element;->addAttribute(Lnu/xom/Attribute;)V

    return-void
.end method

.method public finishMakingDocument(Lnu/xom/Document;)V
    .locals 0

    return-void
.end method

.method public finishMakingElement(Lnu/xom/Element;)Lnu/xom/Nodes;
    .locals 1

    new-instance v0, Lnu/xom/Nodes;

    invoke-direct {v0, p1}, Lnu/xom/Nodes;-><init>(Lnu/xom/Node;)V

    return-object v0
.end method

.method insertChild(Lnu/xom/Element;Lnu/xom/Node;I)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Lnu/xom/Element;->insertChild(Lnu/xom/Node;I)V

    return-void
.end method

.method public makeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnu/xom/Attribute$Type;)Lnu/xom/Nodes;
    .locals 2

    new-instance v0, Lnu/xom/Nodes;

    new-instance v1, Lnu/xom/Attribute;

    invoke-direct {v1, p1, p2, p3, p4}, Lnu/xom/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnu/xom/Attribute$Type;)V

    invoke-direct {v0, v1}, Lnu/xom/Nodes;-><init>(Lnu/xom/Node;)V

    return-object v0
.end method

.method makeCDATASection(Ljava/lang/String;)Lnu/xom/Nodes;
    .locals 1

    invoke-virtual {p0, p1}, Lnu/xom/NodeFactory;->makeText(Ljava/lang/String;)Lnu/xom/Nodes;

    move-result-object v0

    return-object v0
.end method

.method public makeComment(Ljava/lang/String;)Lnu/xom/Nodes;
    .locals 2

    new-instance v0, Lnu/xom/Nodes;

    new-instance v1, Lnu/xom/Comment;

    invoke-direct {v1, p1}, Lnu/xom/Comment;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lnu/xom/Nodes;-><init>(Lnu/xom/Node;)V

    return-object v0
.end method

.method public makeDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnu/xom/Nodes;
    .locals 2

    new-instance v0, Lnu/xom/Nodes;

    new-instance v1, Lnu/xom/DocType;

    invoke-direct {v1, p1, p2, p3}, Lnu/xom/DocType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lnu/xom/Nodes;-><init>(Lnu/xom/Node;)V

    return-object v0
.end method

.method public makeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lnu/xom/Nodes;
    .locals 2

    new-instance v0, Lnu/xom/Nodes;

    new-instance v1, Lnu/xom/ProcessingInstruction;

    invoke-direct {v1, p1, p2}, Lnu/xom/ProcessingInstruction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lnu/xom/Nodes;-><init>(Lnu/xom/Node;)V

    return-object v0
.end method

.method public makeRootElement(Ljava/lang/String;Ljava/lang/String;)Lnu/xom/Element;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lnu/xom/NodeFactory;->startMakingElement(Ljava/lang/String;Ljava/lang/String;)Lnu/xom/Element;

    move-result-object v0

    return-object v0
.end method

.method public makeText(Ljava/lang/String;)Lnu/xom/Nodes;
    .locals 2

    new-instance v0, Lnu/xom/Nodes;

    new-instance v1, Lnu/xom/Text;

    invoke-direct {v1, p1}, Lnu/xom/Text;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lnu/xom/Nodes;-><init>(Lnu/xom/Node;)V

    return-object v0
.end method

.method public startMakingDocument()Lnu/xom/Document;
    .locals 4

    new-instance v0, Lnu/xom/Document;

    const-string v1, "root"

    const-string v2, "http://www.xom.nu/fakeRoot"

    const-string v3, "root"

    invoke-static {v1, v2, v3}, Lnu/xom/Element;->build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnu/xom/Element;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/Document;-><init>(Lnu/xom/Element;)V

    return-object v0
.end method

.method public startMakingElement(Ljava/lang/String;Ljava/lang/String;)Lnu/xom/Element;
    .locals 1

    new-instance v0, Lnu/xom/Element;

    invoke-direct {v0, p1, p2}, Lnu/xom/Element;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
