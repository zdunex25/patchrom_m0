.class public Lnu/xom/Element;
.super Lnu/xom/ParentNode;


# instance fields
.field private URI:Ljava/lang/String;

.field private attributes:[Lnu/xom/Attribute;

.field private localName:Ljava/lang/String;

.field namespaces:Lnu/xom/Namespaces;

.field private numAttributes:I

.field private prefix:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lnu/xom/ParentNode;-><init>()V

    iput-object v1, p0, Lnu/xom/Element;->attributes:[Lnu/xom/Attribute;

    const/4 v0, 0x0

    iput v0, p0, Lnu/xom/Element;->numAttributes:I

    iput-object v1, p0, Lnu/xom/Element;->namespaces:Lnu/xom/Namespaces;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lnu/xom/Element;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lnu/xom/ParentNode;-><init>()V

    iput-object v0, p0, Lnu/xom/Element;->attributes:[Lnu/xom/Attribute;

    iput v2, p0, Lnu/xom/Element;->numAttributes:I

    iput-object v0, p0, Lnu/xom/Element;->namespaces:Lnu/xom/Namespaces;

    const-string v0, ""

    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    invoke-direct {p0, v1}, Lnu/xom/Element;->_setNamespacePrefix(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lnu/xom/Element;->_setNamespaceURI(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0, v0}, Lnu/xom/Element;->_setLocalName(Ljava/lang/String;)V
    :try_end_0
    .catch Lnu/xom/IllegalNameException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0, p1}, Lnu/xom/IllegalNameException;->setData(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v1, v0

    move-object v0, p1

    goto :goto_0
.end method

.method public constructor <init>(Lnu/xom/Element;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lnu/xom/ParentNode;-><init>()V

    iput-object v1, p0, Lnu/xom/Element;->attributes:[Lnu/xom/Attribute;

    const/4 v0, 0x0

    iput v0, p0, Lnu/xom/Element;->numAttributes:I

    iput-object v1, p0, Lnu/xom/Element;->namespaces:Lnu/xom/Namespaces;

    iget-object v0, p1, Lnu/xom/Element;->prefix:Ljava/lang/String;

    iput-object v0, p0, Lnu/xom/Element;->prefix:Ljava/lang/String;

    iget-object v0, p1, Lnu/xom/Element;->localName:Ljava/lang/String;

    iput-object v0, p0, Lnu/xom/Element;->localName:Ljava/lang/String;

    iget-object v0, p1, Lnu/xom/Element;->URI:Ljava/lang/String;

    iput-object v0, p0, Lnu/xom/Element;->URI:Ljava/lang/String;

    iget-object v0, p1, Lnu/xom/Element;->namespaces:Lnu/xom/Namespaces;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lnu/xom/Element;->namespaces:Lnu/xom/Namespaces;

    invoke-virtual {v0}, Lnu/xom/Namespaces;->copy()Lnu/xom/Namespaces;

    move-result-object v0

    iput-object v0, p0, Lnu/xom/Element;->namespaces:Lnu/xom/Namespaces;

    :cond_0
    iget-object v0, p1, Lnu/xom/Element;->attributes:[Lnu/xom/Attribute;

    if-eqz v0, :cond_1

    invoke-direct {p1, p0}, Lnu/xom/Element;->copyAttributes(Lnu/xom/Element;)[Lnu/xom/Attribute;

    move-result-object v0

    iput-object v0, p0, Lnu/xom/Element;->attributes:[Lnu/xom/Attribute;

    iget v0, p1, Lnu/xom/Element;->numAttributes:I

    iput v0, p0, Lnu/xom/Element;->numAttributes:I

    :cond_1
    invoke-virtual {p1}, Lnu/xom/Element;->findActualBaseURI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnu/xom/Element;->actualBaseURI:Ljava/lang/String;

    invoke-static {p1, p0}, Lnu/xom/Element;->copyChildren(Lnu/xom/Element;Lnu/xom/Element;)V

    return-void
.end method

.method private _setLocalName(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lnu/xom/Verifier;->checkNCName(Ljava/lang/String;)V

    iput-object p1, p0, Lnu/xom/Element;->localName:Ljava/lang/String;

    return-void
.end method

.method private _setNamespacePrefix(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_3

    const-string v0, ""

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lnu/xom/Verifier;->checkNCName(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, v0}, Lnu/xom/Element;->getLocalNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lnu/xom/Element;->URI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "xml"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lnu/xom/NamespaceConflictException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " conflicts with existing prefix"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnu/xom/NamespaceConflictException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v1, ""

    iget-object v2, p0, Lnu/xom/Element;->URI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Lnu/xom/NamespaceConflictException;

    const-string v1, "Cannot assign prefix to element in no namespace"

    invoke-direct {v0, v1}, Lnu/xom/NamespaceConflictException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object v0, p0, Lnu/xom/Element;->prefix:Ljava/lang/String;

    return-void

    :cond_3
    move-object v0, p1

    goto :goto_0
.end method

.method private _setNamespaceURI(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_9

    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lnu/xom/Element;->URI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lnu/xom/Element;->prefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lnu/xom/NamespaceConflictException;

    const-string v1, "Prefixed elements must have namespace URIs."

    invoke-direct {v0, v1}, Lnu/xom/NamespaceConflictException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v0}, Lnu/xom/Verifier;->checkAbsoluteURIReference(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lnu/xom/Element;->namespaces:Lnu/xom/Namespaces;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnu/xom/Element;->namespaces:Lnu/xom/Namespaces;

    iget-object v2, p0, Lnu/xom/Element;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lnu/xom/Namespaces;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v0, Lnu/xom/NamespaceConflictException;

    const-string v1, "new URI conflicts with existing prefix"

    invoke-direct {v0, v1}, Lnu/xom/NamespaceConflictException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    iget-object v1, p0, Lnu/xom/Element;->attributes:[Lnu/xom/Attribute;

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Lnu/xom/Element;->numAttributes:I

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Lnu/xom/Element;->attributes:[Lnu/xom/Attribute;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lnu/xom/Attribute;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Lnu/xom/Attribute;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnu/xom/Element;->prefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v1, Lnu/xom/NamespaceConflictException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "new element URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, " conflicts with attribute "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v2}, Lnu/xom/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnu/xom/NamespaceConflictException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    const-string v1, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "xml"

    iget-object v2, p0, Lnu/xom/Element;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v0, Lnu/xom/NamespaceConflictException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Wrong prefix "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lnu/xom/Element;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " for the http://www.w3.org/XML/1998/namespace namespace URI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/NamespaceConflictException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const-string v1, "xml"

    iget-object v2, p0, Lnu/xom/Element;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v1, Lnu/xom/NamespaceConflictException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Wrong namespace URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " for the xml prefix"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnu/xom/NamespaceConflictException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    iput-object v0, p0, Lnu/xom/Element;->URI:Ljava/lang/String;

    goto/16 :goto_1

    :cond_9
    move-object v0, p1

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lnu/xom/Element;)I
    .locals 1

    iget v0, p0, Lnu/xom/Element;->numAttributes:I

    return v0
.end method

.method static synthetic access$100(Lnu/xom/Element;)[Lnu/xom/Attribute;
    .locals 1

    iget-object v0, p0, Lnu/xom/Element;->attributes:[Lnu/xom/Attribute;

    return-object v0
.end method

.method private add(Lnu/xom/Attribute;)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lnu/xom/Element;->numAttributes:I

    iget-object v1, p0, Lnu/xom/Element;->attributes:[Lnu/xom/Attribute;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnu/xom/Element;->attributes:[Lnu/xom/Attribute;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lnu/xom/Attribute;

    iget-object v1, p0, Lnu/xom/Element;->attributes:[Lnu/xom/Attribute;

    iget v2, p0, Lnu/xom/Element;->numAttributes:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lnu/xom/Element;->attributes:[Lnu/xom/Attribute;

    :cond_0
    iget-object v0, p0, Lnu/xom/Element;->attributes:[Lnu/xom/Attribute;

    iget v1, p0, Lnu/xom/Element;->numAttributes:I

    aput-object p1, v0, v1

    iget v0, p0, Lnu/xom/Element;->numAttributes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnu/xom/Element;->numAttributes:I

    return-void
.end method

.method private addPrefixIfNotAlreadyPresent(Ljava/util/HashMap;Lnu/xom/Element;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p3}, Lnu/xom/Element;->getLocalNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnu/xom/Element;
    .locals 3

    new-instance v0, Lnu/xom/Element;

    invoke-direct {v0}, Lnu/xom/Element;-><init>()V

    const-string v1, ""

    const/16 v2, 0x3a

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, v0, Lnu/xom/Element;->prefix:Ljava/lang/String;

    iput-object p2, v0, Lnu/xom/Element;->localName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lnu/xom/Verifier;->checkAbsoluteURIReference(Ljava/lang/String;)V

    :cond_1
    iput-object p1, v0, Lnu/xom/Element;->URI:Ljava/lang/String;

    return-object v0
.end method

.method private static checkCycle(Lnu/xom/Node;Lnu/xom/ParentNode;)V
    .locals 2

    if-ne p0, p1, :cond_0

    new-instance v0, Lnu/xom/CycleException;

    const-string v1, "Cannot add a node to itself"

    invoke-direct {v0, v1}, Lnu/xom/CycleException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lnu/xom/Node;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    move-object v0, p1

    :cond_3
    invoke-virtual {v0}, Lnu/xom/ParentNode;->getParent()Lnu/xom/ParentNode;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_3

    new-instance v0, Lnu/xom/CycleException;

    const-string v1, "Cannot add an ancestor as a child"

    invoke-direct {v0, v1}, Lnu/xom/CycleException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkPrefixConflict(Lnu/xom/Attribute;)V
    .locals 5

    invoke-virtual {p1}, Lnu/xom/Attribute;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnu/xom/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lnu/xom/Element;->numAttributes:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lnu/xom/Element;->attributes:[Lnu/xom/Attribute;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lnu/xom/Attribute;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lnu/xom/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lnu/xom/NamespaceConflictException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Prefix of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lnu/xom/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " conflicts with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v3}, Lnu/xom/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/NamespaceConflictException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private copyAttributes(Lnu/xom/Element;)[Lnu/xom/Attribute;
    .locals 3

    iget v0, p0, Lnu/xom/Element;->numAttributes:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lnu/xom/Element;->numAttributes:I

    new-array v1, v0, [Lnu/xom/Attribute;

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    iget v0, p0, Lnu/xom/Element;->numAttributes:I

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lnu/xom/Element;->attributes:[Lnu/xom/Attribute;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lnu/xom/Attribute;->copy()Lnu/xom/Node;

    move-result-object v0

    check-cast v0, Lnu/xom/Attribute;

    aput-object v0, v1, v2

    aget-object v0, v1, v2

    invoke-virtual {v0, p1}, Lnu/xom/Attribute;->setParent(Lnu/xom/ParentNode;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private static copyChildren(Lnu/xom/Element;Lnu/xom/Element;)V
    .locals 12

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Lnu/xom/Element;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/16 v1, 0xa

    new-array v1, v1, [I

    aput v9, v1, v9

    move v2, v9

    move-object v3, v1

    move v4, v9

    move-object v5, p0

    move-object v6, p1

    move v1, v9

    :goto_0
    if-nez v1, :cond_2

    invoke-virtual {v5}, Lnu/xom/Node;->getChildCount()I

    move-result v7

    if-lez v7, :cond_2

    invoke-virtual {v5, v9}, Lnu/xom/Node;->getChild(I)Lnu/xom/Node;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    invoke-static {v3, v2}, Lnu/xom/Element;->grow([II)[I

    move-result-object v3

    aput v9, v3, v2

    move-object v5, v3

    move v7, v9

    move v3, v1

    move v11, v2

    move-object v2, v4

    move v4, v11

    :goto_1
    invoke-virtual {v2}, Lnu/xom/Node;->isElement()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v0, v2

    check-cast v0, Lnu/xom/Element;

    move-object v1, v0

    invoke-static {v1}, Lnu/xom/Element;->copyTag(Lnu/xom/Element;)Lnu/xom/Element;

    move-result-object v1

    invoke-virtual {v6, v1}, Lnu/xom/ParentNode;->appendChild(Lnu/xom/Node;)V

    invoke-virtual {v2}, Lnu/xom/Node;->getChildCount()I

    move-result v8

    if-lez v8, :cond_5

    :goto_2
    move-object v6, v1

    move v1, v3

    move-object v3, v5

    move-object v5, v2

    move v2, v4

    move v4, v7

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Lnu/xom/Node;->getParent()Lnu/xom/ParentNode;

    move-result-object v5

    invoke-virtual {v5}, Lnu/xom/ParentNode;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v10

    if-ne v1, v4, :cond_3

    add-int/lit8 v2, v2, -0x1

    if-eq v5, p0, :cond_0

    invoke-virtual {v6}, Lnu/xom/ParentNode;->getParent()Lnu/xom/ParentNode;

    move-result-object v1

    check-cast v1, Lnu/xom/Element;

    aget v4, v3, v2

    move-object v6, v1

    move v1, v10

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v4, 0x1

    aput v1, v3, v2

    invoke-virtual {v5, v1}, Lnu/xom/ParentNode;->getChild(I)Lnu/xom/Node;

    move-result-object v4

    move-object v5, v3

    move v7, v1

    move v3, v9

    move v11, v2

    move-object v2, v4

    move v4, v11

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Lnu/xom/Node;->copy()Lnu/xom/Node;

    move-result-object v1

    invoke-virtual {v6, v1}, Lnu/xom/ParentNode;->appendChild(Lnu/xom/Node;)V

    move v1, v3

    move-object v3, v5

    move-object v5, v2

    move v2, v4

    move v4, v7

    goto :goto_0

    :cond_5
    move-object v1, v6

    goto :goto_2
.end method

.method private static copyTag(Lnu/xom/Element;)Lnu/xom/Element;
    .locals 2

    invoke-virtual {p0}, Lnu/xom/Element;->shallowCopy()Lnu/xom/Element;

    move-result-object v0

    iget-object v1, p0, Lnu/xom/Element;->namespaces:Lnu/xom/Namespaces;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnu/xom/Element;->namespaces:Lnu/xom/Namespaces;

    invoke-virtual {v1}, Lnu/xom/Namespaces;->copy()Lnu/xom/Namespaces;

    move-result-object v1

    iput-object v1, v0, Lnu/xom/Element;->namespaces:Lnu/xom/Namespaces;

    :cond_0
    iget-object v1, p0, Lnu/xom/Element;->attributes:[Lnu/xom/Attribute;

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lnu/xom/Element;->copyAttributes(Lnu/xom/Element;)[Lnu/xom/Attribute;

    move-result-object v1

    iput-object v1, v0, Lnu/xom/Element;->attributes:[Lnu/xom/Attribute;

    iget v1, p0, Lnu/xom/Element;->numAttributes:I

    iput v1, v0, Lnu/xom/Element;->numAttributes:I

    :cond_1
    invoke-virtual {p0}, Lnu/xom/Element;->findActualBaseURI()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnu/xom/Element;->actualBaseURI:Ljava/lang/String;

    return-object v0
.end method

.method private static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    add-int/lit8 v2, v0, 0xc

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x26

    if-ne v3, v4, :cond_0

    const-string v3, "&amp;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEntityURI()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lnu/xom/ParentNode;->actualBaseURI:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lnu/xom/ParentNode;->actualBaseURI:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lnu/xom/ParentNode;->actualBaseURI:Ljava/lang/String;

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lnu/xom/ParentNode;->getParent()Lnu/xom/ParentNode;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method private getNamespacePrefixes()Ljava/util/Set;
    .locals 5

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    const-string v1, "xml"

    iget-object v2, p0, Lnu/xom/Element;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnu/xom/Element;->prefix:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lnu/xom/Element;->namespaces:Lnu/xom/Namespaces;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnu/xom/Element;->namespaces:Lnu/xom/Namespaces;

    invoke-virtual {v1}, Lnu/xom/Namespaces;->getPrefixes()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v1, p0, Lnu/xom/Element;->attributes:[Lnu/xom/Attribute;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lnu/xom/Element;->getAttributeCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v3, p0, Lnu/xom/Element;->attributes:[Lnu/xom/Attribute;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lnu/xom/Attribute;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "xml"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static grow([II)[I
    .locals 3

    const/4 v2, 0x0

    array-length v0, p0

    if-ge p1, v0, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private legalURI(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    invoke-static {p1}, Lnu/xom/Verifier;->checkURIReference(Ljava/lang/String;)V
    :try_end_0
    .catch Lnu/xom/MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private remove(Lnu/xom/Attribute;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v5, 0x1

    move v0, v3

    :goto_0
    iget-object v1, p0, Lnu/xom/Element;->attributes:[Lnu/xom/Attribute;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lnu/xom/Element;->attributes:[Lnu/xom/Attribute;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    :goto_1
    if-ne v0, v2, :cond_1

    move v0, v3

    :goto_2
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Lnu/xom/Element;->numAttributes:I

    sub-int/2addr v1, v0

    sub-int/2addr v1, v5

    if-lez v1, :cond_2

    iget-object v2, p0, Lnu/xom/Element;->attributes:[Lnu/xom/Attribute;

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lnu/xom/Element;->attributes:[Lnu/xom/Attribute;

    invoke-static {v2, v3, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget v0, p0, Lnu/xom/Element;->numAttributes:I

    sub-int/2addr v0, v5

    iput v0, p0, Lnu/xom/Element;->numAttributes:I

    iget-object v0, p0, Lnu/xom/Element;->attributes:[Lnu/xom/Attribute;

    iget v1, p0, Lnu/xom/Element;->numAttributes:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    move v0, v5

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private static writeEndTag(Lnu/xom/Element;Ljava/lang/StringBuffer;)V
    .locals 1

    const-string v0, "</"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lnu/xom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method private static writeStartTag(Lnu/xom/Element;Ljava/lang/StringBuffer;)V
    .locals 7

    const/4 v6, 0x0

    const/16 v1, 0x3c

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lnu/xom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lnu/xom/Element;->getParent()Lnu/xom/ParentNode;

    move-result-object v2

    move v3, v6

    :goto_0
    invoke-virtual {p0}, Lnu/xom/Element;->getNamespaceDeclarationCount()I

    move-result v1

    if-ge v3, v1, :cond_4

    invoke-virtual {p0, v3}, Lnu/xom/Element;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lnu/xom/Element;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lnu/xom/ParentNode;->isElement()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v2

    check-cast v0, Lnu/xom/Element;

    move-object v1, v0

    invoke-virtual {v1, v4}, Lnu/xom/Element;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const-string v1, " xmlns"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    const-string v1, "=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v5}, Lnu/xom/Element;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x22

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lnu/xom/Element;->attributes:[Lnu/xom/Attribute;

    if-eqz v1, :cond_5

    move v1, v6

    :goto_2
    iget v2, p0, Lnu/xom/Element;->numAttributes:I

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lnu/xom/Element;->attributes:[Lnu/xom/Attribute;

    aget-object v2, v2, v1

    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lnu/xom/Attribute;->toXML()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lnu/xom/Element;->getChildCount()I

    move-result v1

    if-lez v1, :cond_6

    const/16 v1, 0x3e

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    return-void

    :cond_6
    const-string v1, " />"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3
.end method


# virtual methods
.method public addAttribute(Lnu/xom/Attribute;)V
    .locals 4

    invoke-virtual {p1}, Lnu/xom/Attribute;->getParent()Lnu/xom/ParentNode;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lnu/xom/MultipleParentException;

    const-string v1, "Attribute already has a parent"

    invoke-direct {v0, v1}, Lnu/xom/MultipleParentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lnu/xom/Attribute;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "xml"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lnu/xom/Element;->prefix:Ljava/lang/String;

    invoke-virtual {p1}, Lnu/xom/Attribute;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lnu/xom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lnu/xom/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Lnu/xom/NamespaceConflictException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Prefix of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lnu/xom/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " conflicts with element prefix "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lnu/xom/Element;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/NamespaceConflictException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lnu/xom/Element;->namespaces:Lnu/xom/Namespaces;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnu/xom/Element;->namespaces:Lnu/xom/Namespaces;

    invoke-virtual {p1}, Lnu/xom/Attribute;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnu/xom/Namespaces;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lnu/xom/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lnu/xom/NamespaceConflictException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Attribute prefix  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " conflicts with namespace declaration."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnu/xom/NamespaceConflictException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v0, p0, Lnu/xom/Element;->attributes:[Lnu/xom/Attribute;

    if-nez v0, :cond_3

    const/4 v0, 0x1

    new-array v0, v0, [Lnu/xom/Attribute;

    iput-object v0, p0, Lnu/xom/Element;->attributes:[Lnu/xom/Attribute;

    :cond_3
    invoke-direct {p0, p1}, Lnu/xom/Element;->checkPrefixConflict(Lnu/xom/Attribute;)V

    invoke-virtual {p1}, Lnu/xom/Attribute;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnu/xom/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnu/xom/Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Lnu/xom/Attribute;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v0}, Lnu/xom/Element;->remove(Lnu/xom/Attribute;)Z

    :cond_4
    invoke-direct {p0, p1}, Lnu/xom/Element;->add(Lnu/xom/Attribute;)V

    invoke-virtual {p1, p0}, Lnu/xom/Attribute;->setParent(Lnu/xom/ParentNode;)V

    return-void
.end method

.method public addNamespaceDeclaration(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_b

    const-string v0, ""

    :goto_0
    if-nez p2, :cond_a

    const-string v1, ""

    :goto_1
    const-string v2, "xmlns"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_2
    return-void

    :cond_1
    new-instance v0, Lnu/xom/NamespaceConflictException;

    const-string v1, "The xmlns prefix cannot bound to any URI"

    invoke-direct {v0, v1}, Lnu/xom/NamespaceConflictException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v2, "xml"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lnu/xom/NamespaceConflictException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Wrong namespace URI for xml prefix: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/NamespaceConflictException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string v2, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v1, Lnu/xom/NamespaceConflictException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Wrong prefix for http://www.w3.org/XML/1998/namespace namespace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnu/xom/NamespaceConflictException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v0}, Lnu/xom/Verifier;->checkNCName(Ljava/lang/String;)V

    invoke-static {v1}, Lnu/xom/Verifier;->checkAbsoluteURIReference(Ljava/lang/String;)V

    :cond_5
    :goto_3
    invoke-virtual {p0, v0}, Lnu/xom/Element;->getLocalNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Additional namespace "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " conflicts with existing default namespace "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    new-instance v1, Lnu/xom/NamespaceConflictException;

    invoke-direct {v1, v0}, Lnu/xom/NamespaceConflictException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v1}, Lnu/xom/Verifier;->checkAbsoluteURIReference(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Additional namespace "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " for the prefix "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " conflicts with existing namespace binding "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_8
    iget-object v2, p0, Lnu/xom/Element;->namespaces:Lnu/xom/Namespaces;

    if-nez v2, :cond_9

    new-instance v2, Lnu/xom/Namespaces;

    invoke-direct {v2}, Lnu/xom/Namespaces;-><init>()V

    iput-object v2, p0, Lnu/xom/Element;->namespaces:Lnu/xom/Namespaces;

    :cond_9
    iget-object v2, p0, Lnu/xom/Element;->namespaces:Lnu/xom/Namespaces;

    invoke-virtual {v2, v0, v1}, Lnu/xom/Namespaces;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    move-object v1, p2

    goto/16 :goto_1

    :cond_b
    move-object v0, p1

    goto/16 :goto_0
.end method

.method public appendChild(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lnu/xom/Text;

    invoke-direct {v0, p1}, Lnu/xom/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnu/xom/Element;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lnu/xom/Element;->insertChild(Lnu/xom/Node;I)V

    return-void
.end method

.method attributeIterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lnu/xom/Element$1;

    invoke-direct {v0, p0}, Lnu/xom/Element$1;-><init>(Lnu/xom/Element;)V

    return-object v0
.end method

.method public copy()Lnu/xom/Node;
    .locals 1

    invoke-static {p0}, Lnu/xom/Element;->copyTag(Lnu/xom/Element;)Lnu/xom/Element;

    move-result-object v0

    invoke-static {p0, v0}, Lnu/xom/Element;->copyChildren(Lnu/xom/Element;Lnu/xom/Element;)V

    return-object v0
.end method

.method fastAddAttribute(Lnu/xom/Attribute;)V
    .locals 1

    iget-object v0, p0, Lnu/xom/Element;->attributes:[Lnu/xom/Attribute;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lnu/xom/Attribute;

    iput-object v0, p0, Lnu/xom/Element;->attributes:[Lnu/xom/Attribute;

    :cond_0
    invoke-direct {p0, p1}, Lnu/xom/Element;->add(Lnu/xom/Attribute;)V

    invoke-virtual {p1, p0}, Lnu/xom/Attribute;->setParent(Lnu/xom/ParentNode;)V

    return-void
.end method

.method public final getAttribute(I)Lnu/xom/Attribute;
    .locals 2

    iget-object v0, p0, Lnu/xom/Element;->attributes:[Lnu/xom/Attribute;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Element does not have any attributes"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lnu/xom/Element;->attributes:[Lnu/xom/Attribute;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getAttribute(Ljava/lang/String;)Lnu/xom/Attribute;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lnu/xom/Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Lnu/xom/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public final getAttribute(Ljava/lang/String;Ljava/lang/String;)Lnu/xom/Attribute;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lnu/xom/Element;->attributes:[Lnu/xom/Attribute;

    if-nez v0, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lnu/xom/Element;->numAttributes:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lnu/xom/Element;->attributes:[Lnu/xom/Attribute;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lnu/xom/Attribute;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lnu/xom/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v3

    goto :goto_0
.end method

.method public final getAttributeCount()I
    .locals 1

    iget v0, p0, Lnu/xom/Element;->numAttributes:I

    return v0
.end method

.method public final getAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lnu/xom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lnu/xom/Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Lnu/xom/Attribute;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lnu/xom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 8

    const-string v1, ""

    invoke-virtual {p0}, Lnu/xom/Element;->getActualBaseURI()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move-object v4, v1

    :goto_0
    invoke-virtual {v2}, Lnu/xom/ParentNode;->getActualBaseURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v3, v4}, Lnu/xom/URIUtil;->absolutize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Lnu/xom/URIUtil;->isAbsolute(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    :goto_2
    return-object v1

    :cond_0
    invoke-virtual {v2}, Lnu/xom/ParentNode;->isDocument()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v5, v4}, Lnu/xom/URIUtil;->absolutize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v0, v2

    check-cast v0, Lnu/xom/Element;

    move-object v1, v0

    const-string v6, "base"

    const-string v7, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v1, v6, v7}, Lnu/xom/Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Lnu/xom/Attribute;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lnu/xom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnu/xom/URIUtil;->toURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, ""

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0}, Lnu/xom/Element;->getEntityURI()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-direct {p0, v1}, Lnu/xom/Element;->legalURI(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, ""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v4, v1

    :goto_3
    invoke-static {v1}, Lnu/xom/URIUtil;->isAbsolute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v1, v4

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lnu/xom/URIUtil;->isOpaque(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v1, v4

    goto :goto_1

    :cond_4
    invoke-static {v1, v4}, Lnu/xom/URIUtil;->absolutize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_5
    move-object v1, v4

    invoke-virtual {v2}, Lnu/xom/ParentNode;->getParent()Lnu/xom/ParentNode;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-static {v5, v1}, Lnu/xom/URIUtil;->absolutize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_6
    move-object v4, v1

    goto :goto_0

    :cond_7
    const-string v1, ""

    goto :goto_2
.end method

.method public final getChildElements()Lnu/xom/Elements;
    .locals 4

    new-instance v1, Lnu/xom/Elements;

    invoke-direct {v1}, Lnu/xom/Elements;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p0}, Lnu/xom/Element;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lnu/xom/Element;->getChild(I)Lnu/xom/Node;

    move-result-object v0

    invoke-virtual {v0}, Lnu/xom/Node;->isElement()Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast v0, Lnu/xom/Element;

    invoke-virtual {v1, v0}, Lnu/xom/Elements;->add(Lnu/xom/Element;)V

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final getChildElements(Ljava/lang/String;)Lnu/xom/Elements;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lnu/xom/Element;->getChildElements(Ljava/lang/String;Ljava/lang/String;)Lnu/xom/Elements;

    move-result-object v0

    return-object v0
.end method

.method public final getChildElements(Ljava/lang/String;Ljava/lang/String;)Lnu/xom/Elements;
    .locals 6

    if-nez p2, :cond_4

    const-string v0, ""

    move-object v1, v0

    :goto_0
    if-nez p1, :cond_3

    const-string v0, ""

    move-object v2, v0

    :goto_1
    new-instance v3, Lnu/xom/Elements;

    invoke-direct {v3}, Lnu/xom/Elements;-><init>()V

    const/4 v0, 0x0

    move v4, v0

    :goto_2
    invoke-virtual {p0}, Lnu/xom/Element;->getChildCount()I

    move-result v0

    if-ge v4, v0, :cond_2

    invoke-virtual {p0, v4}, Lnu/xom/Element;->getChild(I)Lnu/xom/Node;

    move-result-object v0

    invoke-virtual {v0}, Lnu/xom/Node;->isElement()Z

    move-result v5

    if-eqz v5, :cond_1

    check-cast v0, Lnu/xom/Element;

    invoke-virtual {v0}, Lnu/xom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    invoke-virtual {v0}, Lnu/xom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, v0}, Lnu/xom/Elements;->add(Lnu/xom/Element;)V

    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :cond_2
    return-object v3

    :cond_3
    move-object v2, p1

    goto :goto_1

    :cond_4
    move-object v1, p2

    goto :goto_0
.end method

.method public final getFirstChildElement(Ljava/lang/String;)Lnu/xom/Element;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lnu/xom/Element;->getFirstChildElement(Ljava/lang/String;Ljava/lang/String;)Lnu/xom/Element;

    move-result-object v0

    return-object v0
.end method

.method public final getFirstChildElement(Ljava/lang/String;Ljava/lang/String;)Lnu/xom/Element;
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lnu/xom/Element;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lnu/xom/Element;->getChild(I)Lnu/xom/Node;

    move-result-object v0

    invoke-virtual {v0}, Lnu/xom/Node;->isElement()Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v0, Lnu/xom/Element;

    invoke-virtual {v0}, Lnu/xom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lnu/xom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final getLocalName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnu/xom/Element;->localName:Ljava/lang/String;

    return-object v0
.end method

.method final getLocalNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnu/xom/Element;->prefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnu/xom/Element;->URI:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "http://www.w3.org/XML/1998/namespace"

    goto :goto_0

    :cond_2
    const-string v0, "xmlns"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lnu/xom/Element;->namespaces:Lnu/xom/Namespaces;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnu/xom/Element;->namespaces:Lnu/xom/Namespaces;

    invoke-virtual {v0, p1}, Lnu/xom/Namespaces;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lnu/xom/Element;->attributes:[Lnu/xom/Attribute;

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lnu/xom/Element;->numAttributes:I

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lnu/xom/Element;->attributes:[Lnu/xom/Attribute;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lnu/xom/Attribute;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lnu/xom/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getNamespaceDeclarationCount()I
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lnu/xom/Element;->namespaces:Lnu/xom/Namespaces;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lnu/xom/Element;->namespaces:Lnu/xom/Namespaces;

    invoke-virtual {v1}, Lnu/xom/Namespaces;->getPrefixes()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lnu/xom/Element;->prefix:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "xml"

    iget-object v2, p0, Lnu/xom/Element;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_1
    invoke-virtual {p0}, Lnu/xom/Element;->getAttributeCount()I

    move-result v1

    const/4 v2, 0x0

    move v5, v2

    move-object v2, v0

    move v0, v5

    :goto_0
    if-ge v0, v1, :cond_4

    iget-object v3, p0, Lnu/xom/Element;->attributes:[Lnu/xom/Attribute;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lnu/xom/Attribute;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "xml"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v4, p0, Lnu/xom/Element;->prefix:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    if-nez v2, :cond_5

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_5
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    goto :goto_1
.end method

.method public final getNamespacePrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnu/xom/Element;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public final getNamespacePrefix(I)Ljava/lang/String;
    .locals 3

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Negative prefix number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "xml"

    iget-object v1, p0, Lnu/xom/Element;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnu/xom/Element;->prefix:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lnu/xom/Element;->getNamespacePrefixes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_2

    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "th namespace"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getNamespacePrefixesInScope()Ljava/util/Map;
    .locals 7

    const/4 v6, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, p0

    :goto_0
    const-string v2, "xml"

    iget-object v3, v0, Lnu/xom/Element;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lnu/xom/Element;->prefix:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2}, Lnu/xom/Element;->addPrefixIfNotAlreadyPresent(Ljava/util/HashMap;Lnu/xom/Element;Ljava/lang/String;)V

    :cond_0
    iget-object v2, v0, Lnu/xom/Element;->attributes:[Lnu/xom/Attribute;

    if-eqz v2, :cond_2

    iget v2, v0, Lnu/xom/Element;->numAttributes:I

    move v3, v6

    :goto_1
    if-ge v3, v2, :cond_2

    iget-object v4, v0, Lnu/xom/Element;->attributes:[Lnu/xom/Attribute;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lnu/xom/Attribute;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "xml"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0, v1, v0, v4}, Lnu/xom/Element;->addPrefixIfNotAlreadyPresent(Ljava/util/HashMap;Lnu/xom/Element;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, v0, Lnu/xom/Element;->namespaces:Lnu/xom/Namespaces;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lnu/xom/Element;->namespaces:Lnu/xom/Namespaces;

    invoke-virtual {v2}, Lnu/xom/Namespaces;->size()I

    move-result v2

    move v3, v6

    :goto_2
    if-ge v3, v2, :cond_3

    iget-object v4, v0, Lnu/xom/Element;->namespaces:Lnu/xom/Namespaces;

    invoke-virtual {v4, v3}, Lnu/xom/Namespaces;->getPrefix(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v0, v4}, Lnu/xom/Element;->addPrefixIfNotAlreadyPresent(Ljava/util/HashMap;Lnu/xom/Element;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lnu/xom/Element;->getParent()Lnu/xom/ParentNode;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lnu/xom/ParentNode;->isDocument()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lnu/xom/ParentNode;->isDocumentFragment()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    return-object v1

    :cond_5
    check-cast v0, Lnu/xom/Element;

    goto :goto_0
.end method

.method public final getNamespaceURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnu/xom/Element;->URI:Ljava/lang/String;

    return-object v0
.end method

.method public final getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lnu/xom/Element;->getLocalNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {v1}, Lnu/xom/Element;->getParent()Lnu/xom/ParentNode;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lnu/xom/ParentNode;->isDocument()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    if-nez v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0

    :cond_2
    check-cast p0, Lnu/xom/Element;

    invoke-virtual {p0, p1}, Lnu/xom/Element;->getLocalNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    goto :goto_0
.end method

.method public final getQualifiedName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnu/xom/Element;->prefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnu/xom/Element;->localName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lnu/xom/Element;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lnu/xom/Element;->localName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lnu/xom/Element;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v7}, Lnu/xom/Element;->getChild(I)Lnu/xom/Node;

    move-result-object v1

    if-ne v0, v8, :cond_1

    invoke-virtual {v1}, Lnu/xom/Node;->isText()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lnu/xom/Node;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v2, 0xa

    new-array v2, v2, [I

    aput v7, v2, v7

    move-object v3, v2

    move v4, v7

    move-object v5, v1

    move v2, v7

    move v1, v7

    :goto_1
    if-nez v1, :cond_2

    invoke-virtual {v5}, Lnu/xom/Node;->getChildCount()I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual {v5, v7}, Lnu/xom/Node;->getChild(I)Lnu/xom/Node;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    invoke-static {v3, v2}, Lnu/xom/Element;->grow([II)[I

    move-result-object v3

    aput v7, v3, v2

    move-object v5, v4

    move v4, v7

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Lnu/xom/Node;->isText()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v5}, Lnu/xom/Node;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v5}, Lnu/xom/Node;->getParent()Lnu/xom/ParentNode;

    move-result-object v1

    invoke-virtual {v1}, Lnu/xom/ParentNode;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v8

    if-ne v5, v4, :cond_5

    add-int/lit8 v2, v2, -0x1

    if-ne v1, p0, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    aget v4, v3, v2

    move-object v5, v1

    move v1, v8

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v2

    invoke-virtual {v1, v4}, Lnu/xom/ParentNode;->getChild(I)Lnu/xom/Node;

    move-result-object v1

    move-object v5, v1

    move v1, v7

    goto :goto_1
.end method

.method public insertChild(Ljava/lang/String;I)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Inserted null string"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lnu/xom/Text;

    invoke-direct {v0, p1}, Lnu/xom/Text;-><init>(Ljava/lang/String;)V

    invoke-super {p0, v0, p2}, Lnu/xom/ParentNode;->fastInsertChild(Lnu/xom/Node;I)V

    return-void
.end method

.method insertionAllowed(Lnu/xom/Node;I)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Tried to insert a null child in the tree"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lnu/xom/Node;->getParent()Lnu/xom/ParentNode;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lnu/xom/MultipleParentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " child already has a parent."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/MultipleParentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lnu/xom/Node;->isElement()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1, p0}, Lnu/xom/Element;->checkCycle(Lnu/xom/Node;Lnu/xom/ParentNode;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p1}, Lnu/xom/Node;->isText()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lnu/xom/Node;->isProcessingInstruction()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lnu/xom/Node;->isComment()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lnu/xom/IllegalAddException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Cannot add a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " to an Element."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method isElement()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public removeAttribute(Lnu/xom/Attribute;)Lnu/xom/Attribute;
    .locals 3

    iget-object v0, p0, Lnu/xom/Element;->attributes:[Lnu/xom/Attribute;

    if-nez v0, :cond_0

    new-instance v0, Lnu/xom/NoSuchAttributeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Tried to remove attribute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lnu/xom/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " from non-parent element"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/NoSuchAttributeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Tried to remove null attribute"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0, p1}, Lnu/xom/Element;->remove(Lnu/xom/Attribute;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnu/xom/Attribute;->setParent(Lnu/xom/ParentNode;)V

    return-object p1

    :cond_2
    new-instance v0, Lnu/xom/NoSuchAttributeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Tried to remove attribute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lnu/xom/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " from non-parent element"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/NoSuchAttributeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeChildren()Lnu/xom/Nodes;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lnu/xom/Element;->getChildCount()I

    move-result v3

    new-instance v4, Lnu/xom/Nodes;

    invoke-direct {v4}, Lnu/xom/Nodes;-><init>()V

    move v5, v6

    :goto_0
    if-ge v5, v3, :cond_1

    invoke-virtual {p0, v5}, Lnu/xom/Element;->getChild(I)Lnu/xom/Node;

    move-result-object v2

    invoke-virtual {v2}, Lnu/xom/Node;->isElement()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, v2

    check-cast v0, Lnu/xom/Element;

    move-object v1, v0

    invoke-virtual {p0, v1}, Lnu/xom/Element;->fillInBaseURI(Lnu/xom/Element;)V

    :cond_0
    invoke-virtual {v2, v7}, Lnu/xom/Node;->setParent(Lnu/xom/ParentNode;)V

    invoke-virtual {v4, v2}, Lnu/xom/Nodes;->append(Lnu/xom/Node;)V

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    :cond_1
    iput-object v7, p0, Lnu/xom/Element;->children:[Lnu/xom/Node;

    iput v6, p0, Lnu/xom/Element;->childCount:I

    return-object v4
.end method

.method public removeNamespaceDeclaration(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnu/xom/Element;->namespaces:Lnu/xom/Namespaces;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnu/xom/Element;->namespaces:Lnu/xom/Namespaces;

    invoke-virtual {v0, p1}, Lnu/xom/Namespaces;->remove(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setBaseURI(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnu/xom/Element;->setActualBaseURI(Ljava/lang/String;)V

    return-void
.end method

.method public setLocalName(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lnu/xom/Element;->_setLocalName(Ljava/lang/String;)V

    return-void
.end method

.method public setNamespacePrefix(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lnu/xom/Element;->_setNamespacePrefix(Ljava/lang/String;)V

    return-void
.end method

.method public setNamespaceURI(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lnu/xom/Element;->_setNamespaceURI(Ljava/lang/String;)V

    return-void
.end method

.method protected shallowCopy()Lnu/xom/Element;
    .locals 3

    new-instance v0, Lnu/xom/Element;

    invoke-virtual {p0}, Lnu/xom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnu/xom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnu/xom/Element;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lnu/xom/Element;->getQualifiedName()Ljava/lang/String;

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

.method public final toXML()Ljava/lang/String;
    .locals 11

    const/4 v9, 0x1

    const/4 v2, -0x1

    const/4 v8, 0x0

    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v1, 0x400

    invoke-direct {v4, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v1, 0xa

    new-array v1, v1, [I

    aput v2, v1, v8

    move v5, v8

    move-object v6, v1

    move v3, v8

    move v1, v2

    move-object v2, p0

    :goto_0
    if-nez v3, :cond_0

    invoke-virtual {v2}, Lnu/xom/Node;->getChildCount()I

    move-result v7

    if-lez v7, :cond_0

    move-object v0, v2

    check-cast v0, Lnu/xom/Element;

    move-object v1, v0

    invoke-static {v1, v4}, Lnu/xom/Element;->writeStartTag(Lnu/xom/Element;Ljava/lang/StringBuffer;)V

    invoke-virtual {v2, v8}, Lnu/xom/Node;->getChild(I)Lnu/xom/Node;

    move-result-object v1

    add-int/lit8 v2, v5, 0x1

    invoke-static {v6, v2}, Lnu/xom/Element;->grow([II)[I

    move-result-object v5

    aput v8, v5, v2

    move-object v6, v5

    move v5, v2

    move-object v2, v1

    move v1, v8

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_2

    move-object v0, v2

    check-cast v0, Lnu/xom/Element;

    move-object v3, v0

    invoke-static {v3, v4}, Lnu/xom/Element;->writeEndTag(Lnu/xom/Element;Ljava/lang/StringBuffer;)V

    if-ne v2, p0, :cond_3

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    invoke-virtual {v2}, Lnu/xom/Node;->isElement()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, v2

    check-cast v0, Lnu/xom/Element;

    move-object v3, v0

    invoke-static {v3, v4}, Lnu/xom/Element;->writeStartTag(Lnu/xom/Element;Ljava/lang/StringBuffer;)V

    if-eq v2, p0, :cond_1

    :cond_3
    :goto_1
    invoke-virtual {v2}, Lnu/xom/Node;->getParent()Lnu/xom/ParentNode;

    move-result-object v2

    invoke-virtual {v2}, Lnu/xom/ParentNode;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v9

    if-ne v3, v1, :cond_6

    add-int/lit8 v3, v5, -0x1

    if-eq v2, p0, :cond_4

    aget v1, v6, v3

    :cond_4
    move-object v5, v2

    move v2, v1

    move v1, v3

    move v3, v9

    :goto_2
    move v10, v1

    move v1, v2

    move-object v2, v5

    move v5, v10

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Lnu/xom/Node;->toXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    aput v1, v6, v5

    invoke-virtual {v2, v1}, Lnu/xom/ParentNode;->getChild(I)Lnu/xom/Node;

    move-result-object v2

    move v3, v8

    move v10, v1

    move v1, v5

    move-object v5, v2

    move v2, v10

    goto :goto_2
.end method
