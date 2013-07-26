.class public final Lnu/xom/XPathContext;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnu/xom/XPathContext$1;,
        Lnu/xom/XPathContext$JaxenNamespaceContext;
    }
.end annotation


# instance fields
.field private namespaces:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnu/xom/XPathContext;->namespaces:Ljava/util/Map;

    const-string v0, "xml"

    const-string v1, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p0, v0, v1}, Lnu/xom/XPathContext;->addNamespace(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lnu/xom/XPathContext;-><init>()V

    invoke-virtual {p0, p1, p2}, Lnu/xom/XPathContext;->addNamespace(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static makeNamespaceContext(Lnu/xom/Element;)Lnu/xom/XPathContext;
    .locals 2

    new-instance v0, Lnu/xom/XPathContext;

    invoke-direct {v0}, Lnu/xom/XPathContext;-><init>()V

    invoke-virtual {p0}, Lnu/xom/Element;->getNamespacePrefixesInScope()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lnu/xom/XPathContext;->namespaces:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public addNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lnu/xom/NamespaceConflictException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Wrong namespace URI for xml prefix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/NamespaceConflictException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Prefixes used in XPath expressions cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lnu/xom/NamespaceConflictException;

    const-string v1, "XPath expressions do not use the default namespace"

    invoke-direct {v0, v1}, Lnu/xom/NamespaceConflictException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {p1}, Lnu/xom/Verifier;->checkNCName(Ljava/lang/String;)V

    if-nez v0, :cond_3

    iget-object v0, p0, Lnu/xom/XPathContext;->namespaces:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void

    :cond_3
    iget-object v1, p0, Lnu/xom/XPathContext;->namespaces:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    move-object v0, p2

    goto :goto_0
.end method

.method getJaxenContext()Lnu/xom/jaxen/NamespaceContext;
    .locals 2

    new-instance v0, Lnu/xom/XPathContext$JaxenNamespaceContext;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnu/xom/XPathContext$JaxenNamespaceContext;-><init>(Lnu/xom/XPathContext;Lnu/xom/XPathContext$1;)V

    return-object v0
.end method

.method public lookup(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnu/xom/XPathContext;->namespaces:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
