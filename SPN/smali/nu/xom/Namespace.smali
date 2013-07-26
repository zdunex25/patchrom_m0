.class public final Lnu/xom/Namespace;
.super Lnu/xom/Node;


# static fields
.field public static final XML_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"


# instance fields
.field private final prefix:Ljava/lang/String;

.field private final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lnu/xom/Element;)V
    .locals 3

    invoke-direct {p0}, Lnu/xom/Node;-><init>()V

    if-nez p1, :cond_1

    const-string v0, ""

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lnu/xom/Verifier;->checkNCName(Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_3

    const-string v1, ""

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    new-instance v0, Lnu/xom/NamespaceConflictException;

    const-string v1, "Prefixed elements must have namespace URIs."

    invoke-direct {v0, v1}, Lnu/xom/NamespaceConflictException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "xmlns"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lnu/xom/IllegalNameException;

    const-string v1, "The xmlns prefix may not be bound to a URI."

    invoke-direct {v0, v1}, Lnu/xom/IllegalNameException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v0, "xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lnu/xom/NamespaceConflictException;

    const-string v1, "The prefix xml can only be bound to the URI http://www.w3.org/XML/1998/namespace"

    invoke-direct {v0, v1}, Lnu/xom/NamespaceConflictException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string v1, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "xml"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v0, Lnu/xom/NamespaceConflictException;

    const-string v1, "The URI http://www.w3.org/XML/1998/namespace can only be bound to the prefix xml"

    invoke-direct {v0, v1}, Lnu/xom/NamespaceConflictException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {v1}, Lnu/xom/Verifier;->checkAbsoluteURIReference(Ljava/lang/String;)V

    :cond_5
    iput-object v0, p0, Lnu/xom/Namespace;->prefix:Ljava/lang/String;

    iput-object v1, p0, Lnu/xom/Namespace;->uri:Ljava/lang/String;

    invoke-super {p0, p3}, Lnu/xom/Node;->setParent(Lnu/xom/ParentNode;)V

    return-void

    :cond_6
    move-object v1, p2

    goto :goto_1

    :cond_7
    move-object v0, p1

    goto :goto_0
.end method


# virtual methods
.method public copy()Lnu/xom/Node;
    .locals 4

    new-instance v0, Lnu/xom/Namespace;

    iget-object v1, p0, Lnu/xom/Namespace;->prefix:Ljava/lang/String;

    iget-object v2, p0, Lnu/xom/Namespace;->uri:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnu/xom/Namespace;-><init>(Ljava/lang/String;Ljava/lang/String;Lnu/xom/Element;)V

    return-object v0
.end method

.method public detach()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lnu/xom/Node;->setParent(Lnu/xom/ParentNode;)V

    return-void
.end method

.method public getChild(I)Lnu/xom/Node;
    .locals 2

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Namespaces do not have children"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChildCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnu/xom/Namespace;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnu/xom/Namespace;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[Namespace: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lnu/xom/Namespace;->toXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnu/xom/Namespace;->prefix:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "xmlns"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lnu/xom/Namespace;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lnu/xom/Namespace;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ":"

    goto :goto_0
.end method
