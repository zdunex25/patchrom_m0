.class public Lnu/xom/canonical/Canonicalizer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnu/xom/canonical/Canonicalizer$1;,
        Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;,
        Lnu/xom/canonical/Canonicalizer$AttributeComparator;
    }
.end annotation


# static fields
.field public static final CANONICAL_XML:Ljava/lang/String; = "http://www.w3.org/TR/2001/REC-xml-c14n-20010315"

.field public static final CANONICAL_XML_11:Ljava/lang/String; = "http://www.w3.org/2006/12/xml-c14n11"

.field public static final CANONICAL_XML_11_WITH_COMMENTS:Ljava/lang/String; = "http://www.w3.org/2006/12/xml-c14n11#WithComments"

.field public static final CANONICAL_XML_WITH_COMMENTS:Ljava/lang/String; = "http://www.w3.org/TR/2001/REC-xml-c14n-20010315#WithComments"

.field public static final EXCLUSIVE_XML_CANONICALIZATION:Ljava/lang/String; = "http://www.w3.org/2001/10/xml-exc-c14n#"

.field public static final EXCLUSIVE_XML_CANONICALIZATION_WITH_COMMENTS:Ljava/lang/String; = "http://www.w3.org/2001/10/xml-exc-c14n#WithComments"

.field private static comparator:Ljava/util/Comparator;


# instance fields
.field private exclusive:Z

.field private inclusiveNamespacePrefixes:Ljava/util/List;

.field private serializer:Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;

.field private v11:Z

.field private withComments:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnu/xom/canonical/Canonicalizer$AttributeComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnu/xom/canonical/Canonicalizer$AttributeComparator;-><init>(Lnu/xom/canonical/Canonicalizer$1;)V

    sput-object v0, Lnu/xom/canonical/Canonicalizer;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lnu/xom/canonical/Canonicalizer;-><init>(Ljava/io/OutputStream;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lnu/xom/canonical/Canonicalizer;->exclusive:Z

    iput-boolean v2, p0, Lnu/xom/canonical/Canonicalizer;->v11:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnu/xom/canonical/Canonicalizer;->inclusiveNamespacePrefixes:Ljava/util/List;

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null algorithm"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;

    invoke-direct {v0, p0, p1}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;-><init>(Lnu/xom/canonical/Canonicalizer;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lnu/xom/canonical/Canonicalizer;->serializer:Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;

    iget-object v0, p0, Lnu/xom/canonical/Canonicalizer;->serializer:Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->setLineSeparator(Ljava/lang/String;)V

    const-string v0, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lnu/xom/canonical/Canonicalizer;->withComments:Z

    iput-boolean v2, p0, Lnu/xom/canonical/Canonicalizer;->exclusive:Z

    :goto_0
    return-void

    :cond_1
    const-string v0, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315#WithComments"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lnu/xom/canonical/Canonicalizer;->withComments:Z

    iput-boolean v2, p0, Lnu/xom/canonical/Canonicalizer;->exclusive:Z

    goto :goto_0

    :cond_2
    const-string v0, "http://www.w3.org/2001/10/xml-exc-c14n#"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lnu/xom/canonical/Canonicalizer;->withComments:Z

    iput-boolean v3, p0, Lnu/xom/canonical/Canonicalizer;->exclusive:Z

    goto :goto_0

    :cond_3
    const-string v0, "http://www.w3.org/2001/10/xml-exc-c14n#WithComments"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v3, p0, Lnu/xom/canonical/Canonicalizer;->withComments:Z

    iput-boolean v3, p0, Lnu/xom/canonical/Canonicalizer;->exclusive:Z

    goto :goto_0

    :cond_4
    const-string v0, "http://www.w3.org/2006/12/xml-c14n11"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Lnu/xom/canonical/Canonicalizer;->withComments:Z

    iput-boolean v2, p0, Lnu/xom/canonical/Canonicalizer;->exclusive:Z

    iput-boolean v3, p0, Lnu/xom/canonical/Canonicalizer;->v11:Z

    goto :goto_0

    :cond_5
    const-string v0, "http://www.w3.org/2006/12/xml-c14n11#WithComments"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v3, p0, Lnu/xom/canonical/Canonicalizer;->withComments:Z

    iput-boolean v2, p0, Lnu/xom/canonical/Canonicalizer;->exclusive:Z

    iput-boolean v3, p0, Lnu/xom/canonical/Canonicalizer;->v11:Z

    goto :goto_0

    :cond_6
    new-instance v0, Lnu/xom/canonical/CanonicalizationException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unsupported canonicalization algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/canonical/CanonicalizationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnu/xom/canonical/Canonicalizer;-><init>(Ljava/io/OutputStream;ZZ)V

    return-void
.end method

.method private constructor <init>(Ljava/io/OutputStream;ZZ)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lnu/xom/canonical/Canonicalizer;->exclusive:Z

    iput-boolean v0, p0, Lnu/xom/canonical/Canonicalizer;->v11:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnu/xom/canonical/Canonicalizer;->inclusiveNamespacePrefixes:Ljava/util/List;

    new-instance v0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;

    invoke-direct {v0, p0, p1}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;-><init>(Lnu/xom/canonical/Canonicalizer;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lnu/xom/canonical/Canonicalizer;->serializer:Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;

    iget-object v0, p0, Lnu/xom/canonical/Canonicalizer;->serializer:Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->setLineSeparator(Ljava/lang/String;)V

    iput-boolean p2, p0, Lnu/xom/canonical/Canonicalizer;->withComments:Z

    iput-boolean p3, p0, Lnu/xom/canonical/Canonicalizer;->exclusive:Z

    return-void
.end method

.method static synthetic access$100(Lnu/xom/canonical/Canonicalizer;)Z
    .locals 1

    iget-boolean v0, p0, Lnu/xom/canonical/Canonicalizer;->withComments:Z

    return v0
.end method

.method static synthetic access$200(Lnu/xom/canonical/Canonicalizer;)Z
    .locals 1

    iget-boolean v0, p0, Lnu/xom/canonical/Canonicalizer;->exclusive:Z

    return v0
.end method

.method static synthetic access$300(Lnu/xom/canonical/Canonicalizer;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lnu/xom/canonical/Canonicalizer;->inclusiveNamespacePrefixes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lnu/xom/canonical/Canonicalizer;)Z
    .locals 1

    iget-boolean v0, p0, Lnu/xom/canonical/Canonicalizer;->v11:Z

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lnu/xom/canonical/Canonicalizer;->joinURIReferences(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lnu/xom/canonical/Canonicalizer;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method private static joinURIReferences(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ".."

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "../"

    :goto_0
    const-string v1, ".."

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "../"

    :goto_1
    if-nez v1, :cond_0

    :goto_2
    return-object v0

    :cond_0
    invoke-static {v0, v1}, Lnu/xom/canonical/URIJoiner;->absolutize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    move-object v1, p1

    goto :goto_1

    :cond_2
    move-object v0, p0

    goto :goto_0
.end method

.method private sort(Lnu/xom/Nodes;)Lnu/xom/Nodes;
    .locals 8

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object v1

    invoke-virtual {v1}, Lnu/xom/Node;->getDocument()Lnu/xom/Document;

    move-result-object v1

    invoke-virtual {p1}, Lnu/xom/Nodes;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    new-instance v2, Lnu/xom/Nodes;

    invoke-direct {v2}, Lnu/xom/Nodes;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lnu/xom/Nodes;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p1}, Lnu/xom/Nodes;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-virtual {p1, v5}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    instance-of v7, v6, Lnu/xom/Namespace;

    if-eqz v7, :cond_0

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    check-cast v0, Lnu/xom/ParentNode;

    move-object p0, v0

    invoke-static {v3, v4, v2, p0}, Lnu/xom/canonical/Canonicalizer;->sort(Ljava/util/List;Ljava/util/List;Lnu/xom/Nodes;Lnu/xom/ParentNode;)V

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnu/xom/Node;

    invoke-virtual {p0}, Lnu/xom/Node;->getDocument()Lnu/xom/Document;

    move-result-object v4

    if-eq v1, v4, :cond_2

    new-instance v1, Lnu/xom/canonical/CanonicalizationException;

    const-string v2, "Cannot canonicalize subsets that contain nodes from more than one document"

    invoke-direct {v1, v2}, Lnu/xom/canonical/CanonicalizationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move-object v1, v2

    :goto_1
    return-object v1

    :cond_4
    new-instance v1, Lnu/xom/Nodes;

    invoke-virtual {p1, v5}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object v2

    invoke-direct {v1, v2}, Lnu/xom/Nodes;-><init>(Lnu/xom/Node;)V

    goto :goto_1
.end method

.method private static sort(Ljava/util/List;Ljava/util/List;Lnu/xom/Nodes;Lnu/xom/ParentNode;)V
    .locals 7

    const/4 v6, 0x0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, p3}, Lnu/xom/Nodes;->append(Lnu/xom/Node;)V

    invoke-interface {p0, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p3}, Lnu/xom/ParentNode;->getChildCount()I

    move-result v2

    move v3, v6

    :goto_1
    if-ge v3, v2, :cond_0

    invoke-virtual {p3, v3}, Lnu/xom/ParentNode;->getChild(I)Lnu/xom/Node;

    move-result-object v0

    instance-of v1, v0, Lnu/xom/Element;

    if-eqz v1, :cond_9

    check-cast v0, Lnu/xom/Element;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2, v0}, Lnu/xom/Nodes;->append(Lnu/xom/Node;)V

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v5, v1, Lnu/xom/Namespace;

    if-eqz v5, :cond_4

    check-cast v1, Lnu/xom/Namespace;

    invoke-virtual {v1}, Lnu/xom/Namespace;->getParent()Lnu/xom/ParentNode;

    move-result-object v5

    if-ne v0, v5, :cond_4

    invoke-virtual {p2, v1}, Lnu/xom/Nodes;->append(Lnu/xom/Node;)V

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_5
    move v1, v6

    :goto_3
    invoke-virtual {v0}, Lnu/xom/Element;->getAttributeCount()I

    move-result v4

    if-ge v1, v4, :cond_7

    invoke-virtual {v0, v1}, Lnu/xom/Element;->getAttribute(I)Lnu/xom/Attribute;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p2, v4}, Lnu/xom/Nodes;->append(Lnu/xom/Node;)V

    invoke-interface {p0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    invoke-static {p0, p1, p2, v0}, Lnu/xom/canonical/Canonicalizer;->sort(Ljava/util/List;Ljava/util/List;Lnu/xom/Nodes;Lnu/xom/ParentNode;)V

    :cond_8
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_9
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p2, v0}, Lnu/xom/Nodes;->append(Lnu/xom/Node;)V

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_0
.end method


# virtual methods
.method public final setInclusiveNamespacePrefixList(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnu/xom/canonical/Canonicalizer;->inclusiveNamespacePrefixes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-boolean v0, p0, Lnu/xom/canonical/Canonicalizer;->exclusive:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, " \t\r\n"

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnu/xom/canonical/Canonicalizer;->inclusiveNamespacePrefixes:Ljava/util/List;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final write(Lnu/xom/Node;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v7, 0x0

    instance-of v1, p1, Lnu/xom/Element;

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lnu/xom/Node;->getDocument()Lnu/xom/Document;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v2, Lnu/xom/Element;

    const-string v1, "pseudo"

    invoke-direct {v2, v1}, Lnu/xom/Element;-><init>(Ljava/lang/String;)V

    new-instance v1, Lnu/xom/Document;

    invoke-direct {v1, v2}, Lnu/xom/Document;-><init>(Lnu/xom/Element;)V

    move-object v0, p1

    check-cast v0, Lnu/xom/ParentNode;

    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lnu/xom/ParentNode;->getParent()Lnu/xom/ParentNode;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lnu/xom/ParentNode;->getParent()Lnu/xom/ParentNode;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v1}, Lnu/xom/Element;->appendChild(Lnu/xom/Node;)V

    :cond_1
    :try_start_0
    const-string v1, ".//. | .//@* | .//namespace::*"

    invoke-virtual {p1, v1}, Lnu/xom/Node;->query(Ljava/lang/String;)Lnu/xom/Nodes;

    move-result-object v3

    iget-boolean v1, p0, Lnu/xom/canonical/Canonicalizer;->exclusive:Z

    if-eqz v1, :cond_6

    new-instance v4, Ljava/util/HashSet;

    invoke-virtual {v3}, Lnu/xom/Nodes;->size()I

    move-result v1

    invoke-direct {v4, v1}, Ljava/util/HashSet;-><init>(I)V

    move v5, v7

    :goto_1
    invoke-virtual {v3}, Lnu/xom/Nodes;->size()I

    move-result v1

    if-ge v5, v1, :cond_5

    invoke-virtual {v3, v5}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object v1

    instance-of v6, v1, Lnu/xom/Element;

    if-eqz v6, :cond_3

    check-cast v1, Lnu/xom/Element;

    invoke-virtual {v1}, Lnu/xom/Element;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    :cond_3
    instance-of v6, v1, Lnu/xom/Attribute;

    if-eqz v6, :cond_2

    check-cast v1, Lnu/xom/Attribute;

    invoke-virtual {v1}, Lnu/xom/Attribute;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v1

    const-string v6, ""

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    if-eqz v2, :cond_4

    invoke-virtual {v2, v7}, Lnu/xom/Element;->removeChild(I)Lnu/xom/Node;

    :cond_4
    throw v1

    :cond_5
    move v5, v7

    :goto_3
    :try_start_1
    invoke-virtual {v3}, Lnu/xom/Nodes;->size()I

    move-result v1

    if-ge v5, v1, :cond_6

    invoke-virtual {v3, v5}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object v1

    instance-of v6, v1, Lnu/xom/Namespace;

    if-eqz v6, :cond_9

    check-cast v1, Lnu/xom/Namespace;

    invoke-virtual {v1}, Lnu/xom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v3, v5}, Lnu/xom/Nodes;->remove(I)Lnu/xom/Node;

    add-int/lit8 v1, v5, -0x1

    :goto_4
    add-int/lit8 v1, v1, 0x1

    move v5, v1

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v3}, Lnu/xom/canonical/Canonicalizer;->write(Lnu/xom/Nodes;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_7

    invoke-virtual {v2, v7}, Lnu/xom/Element;->removeChild(I)Lnu/xom/Node;

    :cond_7
    :goto_5
    iget-object v1, p0, Lnu/xom/canonical/Canonicalizer;->serializer:Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;

    invoke-virtual {v1}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->flush()V

    return-void

    :cond_8
    iget-object v1, p0, Lnu/xom/canonical/Canonicalizer;->serializer:Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;

    #setter for: Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->nodes:Lnu/xom/Nodes;
    invoke-static {v1, v2}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->access$702(Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;Lnu/xom/Nodes;)Lnu/xom/Nodes;

    iget-object v1, p0, Lnu/xom/canonical/Canonicalizer;->serializer:Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;

    invoke-virtual {v1, p1}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->write(Lnu/xom/Node;)V

    goto :goto_5

    :cond_9
    move v1, v5

    goto :goto_4
.end method

.method public final write(Lnu/xom/Nodes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lnu/xom/Nodes;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object v0

    invoke-virtual {v0}, Lnu/xom/Node;->getDocument()Lnu/xom/Document;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lnu/xom/canonical/CanonicalizationException;

    const-string v1, "Canonicalization is not defined for detached nodes"

    invoke-direct {v0, v1}, Lnu/xom/canonical/CanonicalizationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lnu/xom/canonical/Canonicalizer;->sort(Lnu/xom/Nodes;)Lnu/xom/Nodes;

    move-result-object v1

    iget-object v2, p0, Lnu/xom/canonical/Canonicalizer;->serializer:Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;

    #setter for: Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->nodes:Lnu/xom/Nodes;
    invoke-static {v2, v1}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->access$702(Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;Lnu/xom/Nodes;)Lnu/xom/Nodes;

    iget-object v1, p0, Lnu/xom/canonical/Canonicalizer;->serializer:Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;

    invoke-virtual {v1, v0}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->write(Lnu/xom/Document;)V

    iget-object v0, p0, Lnu/xom/canonical/Canonicalizer;->serializer:Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;

    invoke-virtual {v0}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->flush()V

    :cond_1
    return-void
.end method
