.class Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;
.super Lnu/xom/Serializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnu/xom/canonical/Canonicalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CanonicalXMLSerializer"
.end annotation


# instance fields
.field private inScope:Lorg/xml/sax/helpers/NamespaceSupport;

.field private nodes:Lnu/xom/Nodes;

.field private final synthetic this$0:Lnu/xom/canonical/Canonicalizer;

.field private final xmlcontext:Lnu/xom/XPathContext;


# direct methods
.method constructor <init>(Lnu/xom/canonical/Canonicalizer;Ljava/io/OutputStream;)V
    .locals 3

    invoke-direct {p0, p2}, Lnu/xom/Serializer;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->this$0:Lnu/xom/canonical/Canonicalizer;

    new-instance v0, Lnu/xom/XPathContext;

    const-string v1, "xml"

    const-string v2, "http://www.w3.org/XML/1998/namespace"

    invoke-direct {v0, v1, v2}, Lnu/xom/XPathContext;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->xmlcontext:Lnu/xom/XPathContext;

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->setLineSeparator(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$702(Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;Lnu/xom/Nodes;)Lnu/xom/Nodes;
    .locals 0

    iput-object p1, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->nodes:Lnu/xom/Nodes;

    return-object p1
.end method

.method private getOmittedBases(Lnu/xom/Element;)Ljava/util/List;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lnu/xom/Element;->getParent()Lnu/xom/ParentNode;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    instance-of v2, v0, Lnu/xom/Element;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->nodes:Lnu/xom/Nodes;

    invoke-virtual {v2, v0}, Lnu/xom/Nodes;->contains(Lnu/xom/Node;)Z

    move-result v2

    if-nez v2, :cond_1

    check-cast v0, Lnu/xom/Element;

    const-string v2, "base"

    const-string v3, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0, v2, v3}, Lnu/xom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0}, Lnu/xom/Element;->getParent()Lnu/xom/ParentNode;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private grow([II)[I
    .locals 3

    const/4 v2, 0x0

    array-length v0, p1

    if-ge p2, v0, :cond_0

    move-object v0, p1

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private indexOf(Lnu/xom/Element;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->nodes:Lnu/xom/Nodes;

    invoke-virtual {v1}, Lnu/xom/Nodes;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->nodes:Lnu/xom/Nodes;

    invoke-virtual {v1, v0}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object v1

    if-ne v1, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private needToDeclareNamespace(Lnu/xom/Element;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->visiblyUtilized(Lnu/xom/Element;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->this$0:Lnu/xom/canonical/Canonicalizer;

    #getter for: Lnu/xom/canonical/Canonicalizer;->inclusiveNamespacePrefixes:Ljava/util/List;
    invoke-static {v0}, Lnu/xom/canonical/Canonicalizer;->access$300(Lnu/xom/canonical/Canonicalizer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->noOutputAncestorUsesPrefix(Lnu/xom/Element;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private noOutputAncestorUsesPrefix(Lnu/xom/Element;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Lnu/xom/Element;->getParent()Lnu/xom/ParentNode;

    move-result-object v1

    instance-of v2, v1, Lnu/xom/Document;

    if-eqz v2, :cond_7

    const-string v2, ""

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v1, v5

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v2}, Lnu/xom/ParentNode;->getParent()Lnu/xom/ParentNode;

    move-result-object v1

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_6

    instance-of v1, v2, Lnu/xom/Document;

    if-nez v1, :cond_6

    iget-object v1, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->nodes:Lnu/xom/Nodes;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->nodes:Lnu/xom/Nodes;

    invoke-virtual {v1, v2}, Lnu/xom/Nodes;->contains(Lnu/xom/Node;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    move-object v0, v2

    check-cast v0, Lnu/xom/Element;

    move-object v1, v0

    invoke-virtual {v1}, Lnu/xom/Element;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, p2}, Lnu/xom/Element;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v6

    goto :goto_0

    :cond_2
    move v1, v5

    goto :goto_0

    :cond_3
    move v3, v5

    :goto_2
    invoke-virtual {v1}, Lnu/xom/Element;->getAttributeCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {v1, v3}, Lnu/xom/Element;->getAttribute(I)Lnu/xom/Attribute;

    move-result-object v4

    invoke-virtual {v4}, Lnu/xom/Attribute;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v1, p2}, Lnu/xom/Element;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v6

    goto :goto_0

    :cond_4
    move v1, v5

    goto :goto_0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    move v1, v6

    goto :goto_0

    :cond_7
    move-object v2, v1

    goto :goto_1
.end method

.method private prepareAttributeValue(Lnu/xom/Attribute;)Ljava/lang/String;
    .locals 10

    const/16 v9, 0xd

    const/16 v8, 0xa

    const/16 v7, 0x9

    const/4 v6, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lnu/xom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p1}, Lnu/xom/Attribute;->getType()Lnu/xom/Attribute$Type;

    move-result-object v2

    sget-object v3, Lnu/xom/Attribute$Type;->CDATA:Lnu/xom/Attribute$Type;

    invoke-virtual {v2, v3}, Lnu/xom/Attribute$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lnu/xom/Attribute;->getType()Lnu/xom/Attribute$Type;

    move-result-object v2

    sget-object v3, Lnu/xom/Attribute$Type;->UNDECLARED:Lnu/xom/Attribute$Type;

    invoke-virtual {v2, v3}, Lnu/xom/Attribute$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    move v2, v4

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_10

    aget-char v3, v0, v2

    if-ne v3, v7, :cond_1

    const-string v3, "&#x9;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-ne v3, v8, :cond_2

    const-string v3, "&#xA;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    if-ne v3, v9, :cond_3

    const-string v3, "&#xD;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    const/16 v4, 0x22

    if-ne v3, v4, :cond_4

    const-string v3, "&quot;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    const/16 v4, 0x26

    if-ne v3, v4, :cond_5

    const-string v3, "&amp;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_5
    const/16 v4, 0x3c

    if-ne v3, v4, :cond_6

    const-string v3, "&lt;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    move v2, v4

    move v3, v4

    :goto_2
    array-length v4, v0

    if-ge v2, v4, :cond_10

    aget-char v4, v0, v2

    const/16 v5, 0x20

    if-ne v4, v5, :cond_9

    array-length v4, v0

    sub-int/2addr v4, v6

    if-eq v2, v4, :cond_8

    add-int/lit8 v4, v2, 0x1

    aget-char v4, v0, v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_8

    if-eqz v3, :cond_8

    aget-char v4, v0, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_8
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    aget-char v3, v0, v2

    if-ne v3, v7, :cond_a

    const-string v3, "&#x9;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v3, v6

    goto :goto_3

    :cond_a
    aget-char v3, v0, v2

    if-ne v3, v8, :cond_b

    const-string v3, "&#xA;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v3, v6

    goto :goto_3

    :cond_b
    aget-char v3, v0, v2

    if-ne v3, v9, :cond_c

    const-string v3, "&#xD;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v3, v6

    goto :goto_3

    :cond_c
    aget-char v3, v0, v2

    const/16 v4, 0x22

    if-ne v3, v4, :cond_d

    const-string v3, "&quot;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v3, v6

    goto :goto_3

    :cond_d
    aget-char v3, v0, v2

    const/16 v4, 0x26

    if-ne v3, v4, :cond_e

    const-string v3, "&amp;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v3, v6

    goto :goto_3

    :cond_e
    aget-char v3, v0, v2

    const/16 v4, 0x3c

    if-ne v3, v4, :cond_f

    const-string v3, "&lt;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v3, v6

    goto :goto_3

    :cond_f
    aget-char v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v3, v6

    goto :goto_3

    :cond_10
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private sortAttributes(Lnu/xom/Element;)[Lnu/xom/Attribute;
    .locals 8

    const/4 v7, 0x0

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    iget-object v0, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->this$0:Lnu/xom/canonical/Canonicalizer;

    #getter for: Lnu/xom/canonical/Canonicalizer;->exclusive:Z
    invoke-static {v0}, Lnu/xom/canonical/Canonicalizer;->access$200(Lnu/xom/canonical/Canonicalizer;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->nodes:Lnu/xom/Nodes;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->nodes:Lnu/xom/Nodes;

    invoke-virtual {v0, p1}, Lnu/xom/Nodes;->contains(Lnu/xom/Node;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->nodes:Lnu/xom/Nodes;

    invoke-virtual {p1}, Lnu/xom/Element;->getParent()Lnu/xom/ParentNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnu/xom/Nodes;->contains(Lnu/xom/Node;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "ancestor::*/@xml:*"

    iget-object v1, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->xmlcontext:Lnu/xom/XPathContext;

    invoke-virtual {p1, v0, v1}, Lnu/xom/Element;->query(Ljava/lang/String;Lnu/xom/XPathContext;)Lnu/xom/Nodes;

    move-result-object v3

    invoke-virtual {v3}, Lnu/xom/Nodes;->size()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v3}, Lnu/xom/Nodes;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v4, v0

    :goto_0
    if-ltz v4, :cond_5

    invoke-virtual {v3, v4}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object v0

    check-cast v0, Lnu/xom/Attribute;

    invoke-virtual {v0}, Lnu/xom/Attribute;->getLocalName()Ljava/lang/String;

    move-result-object v5

    const-string v1, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p1, v5, v1}, Lnu/xom/Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Lnu/xom/Attribute;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->this$0:Lnu/xom/canonical/Canonicalizer;

    #getter for: Lnu/xom/canonical/Canonicalizer;->v11:Z
    invoke-static {v1}, Lnu/xom/canonical/Canonicalizer;->access$400(Lnu/xom/canonical/Canonicalizer;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "id"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->this$0:Lnu/xom/canonical/Canonicalizer;

    #getter for: Lnu/xom/canonical/Canonicalizer;->v11:Z
    invoke-static {v1}, Lnu/xom/canonical/Canonicalizer;->access$400(Lnu/xom/canonical/Canonicalizer;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "lang"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "space"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    invoke-virtual {v0}, Lnu/xom/Attribute;->getParent()Lnu/xom/ParentNode;

    move-result-object v1

    check-cast v1, Lnu/xom/Element;

    iget-object v6, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->nodes:Lnu/xom/Nodes;

    invoke-virtual {v6, v1}, Lnu/xom/Nodes;->contains(Lnu/xom/Node;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnu/xom/Attribute;

    if-nez v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->this$0:Lnu/xom/canonical/Canonicalizer;

    #getter for: Lnu/xom/canonical/Canonicalizer;->v11:Z
    invoke-static {v0}, Lnu/xom/canonical/Canonicalizer;->access$400(Lnu/xom/canonical/Canonicalizer;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p1}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->getOmittedBases(Lnu/xom/Element;)Ljava/util/List;

    move-result-object v0

    const-string v1, "base"

    const-string v3, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p1, v1, v3}, Lnu/xom/Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Lnu/xom/Attribute;

    move-result-object v1

    const-string v3, ""

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lnu/xom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1}, Lnu/xom/Element;->removeAttribute(Lnu/xom/Attribute;)Lnu/xom/Attribute;

    :cond_8
    move-object v1, v3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    move-object v3, v1

    move v1, v7

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    #calls: Lnu/xom/canonical/Canonicalizer;->joinURIReferences(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p0, v3}, Lnu/xom/canonical/Canonicalizer;->access$500(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    move-object v0, v3

    :goto_4
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a

    const-string v1, "base"

    new-instance v3, Lnu/xom/Attribute;

    const-string v4, "xml:base"

    const-string v5, "http://www.w3.org/XML/1998/namespace"

    invoke-direct {v3, v4, v5, v0}, Lnu/xom/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    invoke-virtual {p1}, Lnu/xom/Element;->getAttributeCount()I

    move-result v0

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v1, v0

    new-array v1, v1, [Lnu/xom/Attribute;

    move v3, v7

    :goto_5
    if-ge v3, v0, :cond_b

    invoke-virtual {p1, v3}, Lnu/xom/Element;->getAttribute(I)Lnu/xom/Attribute;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_b
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    array-length v3, v1

    if-ge v0, v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnu/xom/Attribute;

    aput-object p0, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_c
    invoke-static {}, Lnu/xom/canonical/Canonicalizer;->access$600()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v1

    :cond_d
    move-object v0, v1

    goto :goto_4
.end method

.method private visiblyUtilized(Lnu/xom/Element;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lnu/xom/Element;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnu/xom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    move v0, v3

    :goto_1
    invoke-virtual {p1}, Lnu/xom/Element;->getAttributeCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Lnu/xom/Element;->getAttribute(I)Lnu/xom/Attribute;

    move-result-object v1

    iget-object v2, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->nodes:Lnu/xom/Nodes;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->nodes:Lnu/xom/Nodes;

    invoke-virtual {v2, v1}, Lnu/xom/Nodes;->contains(Lnu/xom/Node;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {v1}, Lnu/xom/Attribute;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_0
.end method

.method private write(Lnu/xom/Namespace;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lnu/xom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnu/xom/Namespace;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, " xmlns"

    invoke-virtual {p0, v2}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->writeRaw(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ":"

    invoke-virtual {p0, v2}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->writeRaw(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->writeRaw(Ljava/lang/String;)V

    :cond_0
    const-string v0, "=\""

    invoke-virtual {p0, v0}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->writeRaw(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->writeAttributeValue(Ljava/lang/String;)V

    const-string v0, "\""

    invoke-virtual {p0, v0}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->writeRaw(Ljava/lang/String;)V

    return-void
.end method

.method private writeNamespaceDeclarations(Ljava/util/SortedMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, " "

    invoke-virtual {p0, v3}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->writeRaw(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->writeNamespaceDeclaration(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->inScope:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v3, v1, v0}, Lorg/xml/sax/helpers/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected write(Lnu/xom/Attribute;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, " "

    invoke-virtual {p0, v0}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->writeRaw(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnu/xom/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->writeRaw(Ljava/lang/String;)V

    const-string v0, "=\""

    invoke-virtual {p0, v0}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->writeRaw(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->prepareAttributeValue(Lnu/xom/Attribute;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->writeRaw(Ljava/lang/String;)V

    const-string v0, "\""

    invoke-virtual {p0, v0}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->writeRaw(Ljava/lang/String;)V

    return-void
.end method

.method protected final write(Lnu/xom/Comment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->this$0:Lnu/xom/canonical/Canonicalizer;

    #getter for: Lnu/xom/canonical/Canonicalizer;->withComments:Z
    invoke-static {v0}, Lnu/xom/canonical/Canonicalizer;->access$100(Lnu/xom/canonical/Canonicalizer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->nodes:Lnu/xom/Nodes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->nodes:Lnu/xom/Nodes;

    invoke-virtual {v0, p1}, Lnu/xom/Nodes;->contains(Lnu/xom/Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lnu/xom/Serializer;->write(Lnu/xom/Comment;)V

    :cond_1
    return-void
.end method

.method protected final write(Lnu/xom/DocType;)V
    .locals 0

    return-void
.end method

.method public final write(Lnu/xom/Document;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-direct {v0}, Lorg/xml/sax/helpers/NamespaceSupport;-><init>()V

    iput-object v0, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->inScope:Lorg/xml/sax/helpers/NamespaceSupport;

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p1, v0}, Lnu/xom/Document;->getChild(I)Lnu/xom/Node;

    move-result-object v1

    iget-object v2, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->nodes:Lnu/xom/Nodes;

    if-eqz v2, :cond_1

    instance-of v2, v1, Lnu/xom/Element;

    if-nez v2, :cond_1

    iget-object v2, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->nodes:Lnu/xom/Nodes;

    invoke-virtual {v2, v1}, Lnu/xom/Nodes;->contains(Lnu/xom/Node;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p0, v1}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->writeChild(Lnu/xom/Node;)V

    instance-of v2, v1, Lnu/xom/ProcessingInstruction;

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->breakLine()V

    :cond_2
    :goto_0
    add-int/lit8 v0, v0, 0x1

    instance-of v1, v1, Lnu/xom/Element;

    if-eqz v1, :cond_0

    :goto_1
    invoke-virtual {p1}, Lnu/xom/Document;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_8

    invoke-virtual {p1, v0}, Lnu/xom/Document;->getChild(I)Lnu/xom/Node;

    move-result-object v1

    iget-object v2, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->nodes:Lnu/xom/Nodes;

    if-eqz v2, :cond_3

    instance-of v2, v1, Lnu/xom/Element;

    if-nez v2, :cond_3

    iget-object v2, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->nodes:Lnu/xom/Nodes;

    invoke-virtual {v2, v1}, Lnu/xom/Nodes;->contains(Lnu/xom/Node;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    instance-of v2, v1, Lnu/xom/ProcessingInstruction;

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->breakLine()V

    :cond_4
    :goto_2
    invoke-virtual {p0, v1}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->writeChild(Lnu/xom/Node;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    instance-of v2, v1, Lnu/xom/Comment;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->this$0:Lnu/xom/canonical/Canonicalizer;

    #getter for: Lnu/xom/canonical/Canonicalizer;->withComments:Z
    invoke-static {v2}, Lnu/xom/canonical/Canonicalizer;->access$100(Lnu/xom/canonical/Canonicalizer;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->breakLine()V

    goto :goto_0

    :cond_7
    instance-of v2, v1, Lnu/xom/Comment;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->this$0:Lnu/xom/canonical/Canonicalizer;

    #getter for: Lnu/xom/canonical/Canonicalizer;->withComments:Z
    invoke-static {v2}, Lnu/xom/canonical/Canonicalizer;->access$100(Lnu/xom/canonical/Canonicalizer;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->breakLine()V

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->flush()V

    return-void
.end method

.method protected final write(Lnu/xom/Element;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v2, -0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Lnu/xom/Element;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1, v7}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->writeStartTag(Lnu/xom/Element;Z)V

    invoke-virtual {p0, p1}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->writeEndTag(Lnu/xom/Element;)V

    :cond_0
    return-void

    :cond_1
    const/16 v1, 0xa

    new-array v1, v1, [I

    aput v2, v1, v7

    move v4, v7

    move-object v5, v1

    move v3, v7

    move v1, v2

    move-object v2, p1

    :goto_0
    if-nez v3, :cond_2

    invoke-virtual {v2}, Lnu/xom/Node;->getChildCount()I

    move-result v6

    if-lez v6, :cond_2

    move-object v0, v2

    check-cast v0, Lnu/xom/Element;

    move-object v1, v0

    invoke-virtual {p0, v1, v7}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->writeStartTag(Lnu/xom/Element;Z)V

    invoke-virtual {v2, v7}, Lnu/xom/Node;->getChild(I)Lnu/xom/Node;

    move-result-object v1

    add-int/lit8 v2, v4, 0x1

    invoke-direct {p0, v5, v2}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->grow([II)[I

    move-result-object v4

    aput v7, v4, v2

    move-object v5, v4

    move v4, v2

    move-object v2, v1

    move v1, v7

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_4

    move-object v0, v2

    check-cast v0, Lnu/xom/Element;

    move-object v3, v0

    invoke-virtual {p0, v3}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->writeEndTag(Lnu/xom/Element;)V

    if-eq v2, p1, :cond_0

    :goto_1
    invoke-virtual {v2}, Lnu/xom/Node;->getParent()Lnu/xom/ParentNode;

    move-result-object v2

    invoke-virtual {v2}, Lnu/xom/ParentNode;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v8

    if-ne v3, v1, :cond_5

    add-int/lit8 v3, v4, -0x1

    if-eq v2, p1, :cond_3

    aget v1, v5, v3

    :cond_3
    move-object v4, v2

    move v2, v1

    move v1, v3

    move v3, v8

    :goto_2
    move v9, v1

    move v1, v2

    move-object v2, v4

    move v4, v9

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v2}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->writeChild(Lnu/xom/Node;)V

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    aput v1, v5, v4

    invoke-virtual {v2, v1}, Lnu/xom/ParentNode;->getChild(I)Lnu/xom/Node;

    move-result-object v2

    move v3, v7

    move v9, v1

    move v1, v4

    move-object v4, v2

    move v2, v9

    goto :goto_2
.end method

.method public write(Lnu/xom/Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lnu/xom/Document;

    if-eqz v0, :cond_0

    check-cast p1, Lnu/xom/Document;

    invoke-virtual {p0, p1}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->write(Lnu/xom/Document;)V

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, Lnu/xom/Attribute;

    if-eqz v0, :cond_1

    check-cast p1, Lnu/xom/Attribute;

    invoke-virtual {p0, p1}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->write(Lnu/xom/Attribute;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lnu/xom/Namespace;

    if-eqz v0, :cond_2

    check-cast p1, Lnu/xom/Namespace;

    invoke-direct {p0, p1}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->write(Lnu/xom/Namespace;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->writeChild(Lnu/xom/Node;)V

    goto :goto_0
.end method

.method protected final write(Lnu/xom/ProcessingInstruction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->nodes:Lnu/xom/Nodes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->nodes:Lnu/xom/Nodes;

    invoke-virtual {v0, p1}, Lnu/xom/Nodes;->contains(Lnu/xom/Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lnu/xom/Serializer;->write(Lnu/xom/ProcessingInstruction;)V

    :cond_1
    return-void
.end method

.method protected final write(Lnu/xom/Text;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->nodes:Lnu/xom/Nodes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->nodes:Lnu/xom/Nodes;

    invoke-virtual {v0, p1}, Lnu/xom/Nodes;->contains(Lnu/xom/Node;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    invoke-virtual {p1}, Lnu/xom/Text;->getValue()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_1

    const-string v3, "&#xD;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v4, 0x26

    if-ne v3, v4, :cond_2

    const-string v3, "&amp;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    const/16 v4, 0x3c

    if-ne v3, v4, :cond_3

    const-string v3, "&lt;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    const/16 v4, 0x3e

    if-ne v3, v4, :cond_4

    const-string v3, "&gt;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->writeRaw(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method protected writeEndTag(Lnu/xom/Element;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->nodes:Lnu/xom/Nodes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->nodes:Lnu/xom/Nodes;

    invoke-virtual {v0, p1}, Lnu/xom/Nodes;->contains(Lnu/xom/Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "</"

    invoke-virtual {p0, v0}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->writeRaw(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnu/xom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->writeRaw(Ljava/lang/String;)V

    const-string v0, ">"

    invoke-virtual {p0, v0}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->writeRaw(Ljava/lang/String;)V

    iget-object v0, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->inScope:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport;->popContext()V

    :cond_1
    return-void
.end method

.method protected writeStartTag(Lnu/xom/Element;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    iget-object v0, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->nodes:Lnu/xom/Nodes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->nodes:Lnu/xom/Nodes;

    invoke-virtual {v0, p1}, Lnu/xom/Nodes;->contains(Lnu/xom/Node;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->inScope:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport;->pushContext()V

    const-string v0, "<"

    invoke-virtual {p0, v0}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->writeRaw(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnu/xom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->writeRaw(Ljava/lang/String;)V

    :cond_1
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    iget-object v0, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->nodes:Lnu/xom/Nodes;

    if-nez v0, :cond_a

    invoke-virtual {p1}, Lnu/xom/Element;->getParent()Lnu/xom/ParentNode;

    move-result-object v0

    const/4 v3, 0x0

    instance-of v4, v0, Lnu/xom/Element;

    if-eqz v4, :cond_14

    check-cast v0, Lnu/xom/Element;

    :goto_1
    move v3, v8

    :goto_2
    invoke-virtual {p1}, Lnu/xom/Element;->getNamespaceDeclarationCount()I

    move-result v4

    if-ge v3, v4, :cond_7

    invoke-virtual {p1, v3}, Lnu/xom/Element;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lnu/xom/Element;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->inScope:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v6, v4}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move v1, v8

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->this$0:Lnu/xom/canonical/Canonicalizer;

    #getter for: Lnu/xom/canonical/Canonicalizer;->exclusive:Z
    invoke-static {v6}, Lnu/xom/canonical/Canonicalizer;->access$200(Lnu/xom/canonical/Canonicalizer;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-direct {p0, p1, v4, v5}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->needToDeclareNamespace(Lnu/xom/Element;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2, v4, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz v0, :cond_2

    const-string v6, ""

    const-string v7, ""

    invoke-virtual {v0, v7}, Lnu/xom/Element;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v2, v4, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    invoke-interface {v2, v4, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    invoke-direct {p0, v2}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->writeNamespaceDeclarations(Ljava/util/SortedMap;)V

    :goto_4
    invoke-direct {p0, p1}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->sortAttributes(Lnu/xom/Element;)[Lnu/xom/Attribute;

    move-result-object v0

    move v2, v8

    :goto_5
    array-length v3, v0

    if-ge v2, v3, :cond_12

    iget-object v3, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->nodes:Lnu/xom/Nodes;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->nodes:Lnu/xom/Nodes;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Lnu/xom/Nodes;->contains(Lnu/xom/Node;)Z

    move-result v3

    if-nez v3, :cond_8

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lnu/xom/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lnu/xom/Attribute;->getParent()Lnu/xom/ParentNode;

    move-result-object v3

    if-eq v3, p1, :cond_9

    :cond_8
    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->write(Lnu/xom/Attribute;)V

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    invoke-direct {p0, p1}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->indexOf(Lnu/xom/Element;)I

    move-result v3

    const/4 v0, -0x1

    if-eq v3, v0, :cond_c

    const-string v0, ""

    invoke-virtual {p1}, Lnu/xom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lnu/xom/Element;->getParent()Lnu/xom/ParentNode;

    move-result-object v0

    :goto_6
    instance-of v4, v0, Lnu/xom/Element;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->nodes:Lnu/xom/Nodes;

    invoke-virtual {v4, v0}, Lnu/xom/Nodes;->contains(Lnu/xom/Node;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {v0}, Lnu/xom/ParentNode;->getParent()Lnu/xom/ParentNode;

    move-result-object v0

    goto :goto_6

    :cond_b
    instance-of v4, v0, Lnu/xom/Element;

    if-eqz v4, :cond_c

    check-cast v0, Lnu/xom/Element;

    const-string v4, ""

    invoke-virtual {v0, v4}, Lnu/xom/Element;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, ""

    const-string v4, ""

    invoke-interface {v2, v0, v4}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    :goto_7
    iget-object v0, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->nodes:Lnu/xom/Nodes;

    invoke-virtual {v0}, Lnu/xom/Nodes;->size()I

    move-result v0

    if-ge v3, v0, :cond_d

    iget-object v0, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->nodes:Lnu/xom/Nodes;

    invoke-virtual {v0, v3}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object v0

    instance-of v4, v0, Lnu/xom/Namespace;

    if-nez v4, :cond_e

    :cond_d
    invoke-direct {p0, v2}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->writeNamespaceDeclarations(Ljava/util/SortedMap;)V

    goto/16 :goto_4

    :cond_e
    check-cast v0, Lnu/xom/Namespace;

    invoke-virtual {v0}, Lnu/xom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lnu/xom/Namespace;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->inScope:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v5, v4}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    :cond_f
    :goto_8
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_7

    :cond_10
    iget-object v5, p0, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->this$0:Lnu/xom/canonical/Canonicalizer;

    #getter for: Lnu/xom/canonical/Canonicalizer;->exclusive:Z
    invoke-static {v5}, Lnu/xom/canonical/Canonicalizer;->access$200(Lnu/xom/canonical/Canonicalizer;)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-direct {p0, p1, v4, v0}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->needToDeclareNamespace(Lnu/xom/Element;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v2, v4, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_11
    invoke-interface {v2, v4, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_12
    if-eqz v1, :cond_13

    const-string v0, ">"

    invoke-virtual {p0, v0}, Lnu/xom/canonical/Canonicalizer$CanonicalXMLSerializer;->writeRaw(Ljava/lang/String;)V

    :cond_13
    return-void

    :cond_14
    move-object v0, v3

    goto/16 :goto_1
.end method
