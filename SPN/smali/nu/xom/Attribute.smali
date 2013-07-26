.class public Lnu/xom/Attribute;
.super Lnu/xom/Node;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnu/xom/Attribute$Type;
    }
.end annotation


# instance fields
.field private URI:Ljava/lang/String;

.field private localName:Ljava/lang/String;

.field private prefix:Ljava/lang/String;

.field private type:Lnu/xom/Attribute$Type;

.field private value:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnu/xom/Node;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lnu/xom/Attribute;->value:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, ""

    sget-object v1, Lnu/xom/Attribute$Type;->UNDECLARED:Lnu/xom/Attribute$Type;

    invoke-direct {p0, p1, v0, p2, v1}, Lnu/xom/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnu/xom/Attribute$Type;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lnu/xom/Attribute$Type;->UNDECLARED:Lnu/xom/Attribute$Type;

    invoke-direct {p0, p1, p2, p3, v0}, Lnu/xom/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnu/xom/Attribute$Type;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnu/xom/Attribute$Type;)V
    .locals 2

    invoke-direct {p0}, Lnu/xom/Node;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lnu/xom/Attribute;->value:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lnu/xom/Attribute;->prefix:Ljava/lang/String;

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnu/xom/Attribute;->prefix:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    :try_start_0
    invoke-direct {p0, v0}, Lnu/xom/Attribute;->_setLocalName(Ljava/lang/String;)V
    :try_end_0
    .catch Lnu/xom/IllegalNameException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lnu/xom/Attribute;->prefix:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lnu/xom/Attribute;->_setNamespace(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lnu/xom/Attribute;->_setValue(Ljava/lang/String;)V

    invoke-direct {p0}, Lnu/xom/Attribute;->isXMLID()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnu/xom/Attribute$Type;->ID:Lnu/xom/Attribute$Type;

    invoke-direct {p0, v0}, Lnu/xom/Attribute;->_setType(Lnu/xom/Attribute$Type;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0, p1}, Lnu/xom/IllegalNameException;->setData(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p4}, Lnu/xom/Attribute;->_setType(Lnu/xom/Attribute$Type;)V

    goto :goto_1

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lnu/xom/Attribute$Type;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, p1, v0, p2, p3}, Lnu/xom/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnu/xom/Attribute$Type;)V

    return-void
.end method

.method public constructor <init>(Lnu/xom/Attribute;)V
    .locals 1

    invoke-direct {p0}, Lnu/xom/Node;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lnu/xom/Attribute;->value:Ljava/lang/String;

    iget-object v0, p1, Lnu/xom/Attribute;->localName:Ljava/lang/String;

    iput-object v0, p0, Lnu/xom/Attribute;->localName:Ljava/lang/String;

    iget-object v0, p1, Lnu/xom/Attribute;->prefix:Ljava/lang/String;

    iput-object v0, p0, Lnu/xom/Attribute;->prefix:Ljava/lang/String;

    iget-object v0, p1, Lnu/xom/Attribute;->URI:Ljava/lang/String;

    iput-object v0, p0, Lnu/xom/Attribute;->URI:Ljava/lang/String;

    iget-object v0, p1, Lnu/xom/Attribute;->value:Ljava/lang/String;

    iput-object v0, p0, Lnu/xom/Attribute;->value:Ljava/lang/String;

    iget-object v0, p1, Lnu/xom/Attribute;->type:Lnu/xom/Attribute$Type;

    iput-object v0, p0, Lnu/xom/Attribute;->type:Lnu/xom/Attribute$Type;

    return-void
.end method

.method private _setLocalName(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lnu/xom/Verifier;->checkNCName(Ljava/lang/String;)V

    const-string v0, "xmlns"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnu/xom/IllegalNameException;

    const-string v1, "The Attribute class is not used for namespace declaration attributes."

    invoke-direct {v0, v1}, Lnu/xom/IllegalNameException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lnu/xom/Attribute;->localName:Ljava/lang/String;

    return-void
.end method

.method private _setNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-nez p2, :cond_8

    const-string v0, ""

    move-object v1, v0

    :goto_0
    if-nez p1, :cond_7

    const-string v0, ""

    move-object v2, v0

    :goto_1
    const-string v0, "xmlns"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnu/xom/IllegalNameException;

    const-string v1, "Attribute objects are not used to represent  namespace declarations"

    invoke-direct {v0, v1}, Lnu/xom/IllegalNameException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "xml"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

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

    :cond_1
    const-string v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "xml"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lnu/xom/NamespaceConflictException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Wrong prefix for the XML namespace: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/NamespaceConflictException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ""

    iput-object v0, p0, Lnu/xom/Attribute;->prefix:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lnu/xom/Attribute;->URI:Ljava/lang/String;

    :goto_2
    return-void

    :cond_3
    new-instance v0, Lnu/xom/NamespaceConflictException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unprefixed attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lnu/xom/Attribute;->localName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " cannot be in default namespace "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/NamespaceConflictException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lnu/xom/NamespaceConflictException;

    const-string v1, "Attribute prefixes must be declared."

    invoke-direct {v0, v1}, Lnu/xom/NamespaceConflictException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {p0}, Lnu/xom/Attribute;->getParent()Lnu/xom/ParentNode;

    move-result-object v0

    if-eqz v0, :cond_6

    check-cast v0, Lnu/xom/Element;

    invoke-virtual {v0, v2}, Lnu/xom/Element;->getLocalNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lnu/xom/NamespaceConflictException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "New prefix "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "conflicts with existing namespace declaration"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/NamespaceConflictException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-static {v1}, Lnu/xom/Verifier;->checkAbsoluteURIReference(Ljava/lang/String;)V

    invoke-static {v2}, Lnu/xom/Verifier;->checkNCName(Ljava/lang/String;)V

    iput-object v1, p0, Lnu/xom/Attribute;->URI:Ljava/lang/String;

    iput-object v2, p0, Lnu/xom/Attribute;->prefix:Ljava/lang/String;

    goto :goto_2

    :cond_7
    move-object v2, p1

    goto/16 :goto_1

    :cond_8
    move-object v1, p2

    goto/16 :goto_0
.end method

.method private _setType(Lnu/xom/Attribute$Type;)V
    .locals 0

    iput-object p1, p0, Lnu/xom/Attribute;->type:Lnu/xom/Attribute$Type;

    return-void
.end method

.method private _setValue(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lnu/xom/Verifier;->checkPCDATA(Ljava/lang/String;)V

    invoke-direct {p0}, Lnu/xom/Attribute;->isXMLID()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lnu/xom/Attribute;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lnu/xom/Attribute;->value:Ljava/lang/String;

    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method static build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnu/xom/Attribute$Type;Ljava/lang/String;)Lnu/xom/Attribute;
    .locals 4

    new-instance v0, Lnu/xom/Attribute;

    invoke-direct {v0}, Lnu/xom/Attribute;-><init>()V

    const-string v1, ""

    const/16 v2, 0x3a

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "xml:id"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lnu/xom/Attribute$Type;->ID:Lnu/xom/Attribute$Type;

    invoke-static {p2}, Lnu/xom/Attribute;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    iput-object p4, v0, Lnu/xom/Attribute;->localName:Ljava/lang/String;

    iput-object v1, v0, Lnu/xom/Attribute;->prefix:Ljava/lang/String;

    iput-object v2, v0, Lnu/xom/Attribute;->type:Lnu/xom/Attribute$Type;

    iput-object p1, v0, Lnu/xom/Attribute;->URI:Ljava/lang/String;

    iput-object v3, v0, Lnu/xom/Attribute;->value:Ljava/lang/String;

    return-object v0

    :cond_0
    move-object v2, p3

    move-object v3, p2

    goto :goto_0
.end method

.method private static escapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    add-int/lit8 v2, v0, 0xc

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    packed-switch v3, :pswitch_data_0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_1
    const-string v3, "&#x09;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_2
    const-string v3, "&#x0A;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_3
    const-string v3, "&#x0D;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_4
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_5
    const/16 v3, 0x21

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_6
    const-string v3, "&quot;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_7
    const/16 v3, 0x23

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_8
    const/16 v3, 0x24

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_9
    const/16 v3, 0x25

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_a
    const-string v3, "&amp;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_b
    const/16 v3, 0x27

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_c
    const/16 v3, 0x28

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_d
    const/16 v3, 0x29

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_e
    const/16 v3, 0x2a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_f
    const/16 v3, 0x2b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_10
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_11
    const/16 v3, 0x2d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_12
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_13
    const/16 v3, 0x2f

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_14
    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_15
    const/16 v3, 0x31

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_16
    const/16 v3, 0x32

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_17
    const/16 v3, 0x33

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_18
    const/16 v3, 0x34

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_19
    const/16 v3, 0x35

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_1a
    const/16 v3, 0x36

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_1b
    const/16 v3, 0x37

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_1c
    const/16 v3, 0x38

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_1d
    const/16 v3, 0x39

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_1e
    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_1f
    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_20
    const-string v3, "&lt;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_21
    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_22
    const-string v3, "&gt;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
    .end packed-switch
.end method

.method private isXMLID()Z
    .locals 2

    const-string v0, "xml"

    iget-object v1, p0, Lnu/xom/Attribute;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "id"

    iget-object v1, p0, Lnu/xom/Attribute;->localName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x1

    const/16 v7, 0x20

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v6

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v8

    :goto_1
    if-lez v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    move v3, v6

    move v4, v6

    :goto_2
    if-ge v3, v1, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_3

    if-eqz v4, :cond_2

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v4, v8

    goto :goto_3

    :cond_3
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v4, v6

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public copy()Lnu/xom/Node;
    .locals 1

    new-instance v0, Lnu/xom/Attribute;

    invoke-direct {v0, p0}, Lnu/xom/Attribute;-><init>(Lnu/xom/Attribute;)V

    return-object v0
.end method

.method public final getChild(I)Lnu/xom/Node;
    .locals 2

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Attributes do not have children"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getChildCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getLocalName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnu/xom/Attribute;->localName:Ljava/lang/String;

    return-object v0
.end method

.method public final getNamespacePrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnu/xom/Attribute;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public final getNamespaceURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnu/xom/Attribute;->URI:Ljava/lang/String;

    return-object v0
.end method

.method public final getQualifiedName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnu/xom/Attribute;->prefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnu/xom/Attribute;->localName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lnu/xom/Attribute;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lnu/xom/Attribute;->localName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getType()Lnu/xom/Attribute$Type;
    .locals 1

    iget-object v0, p0, Lnu/xom/Attribute;->type:Lnu/xom/Attribute$Type;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnu/xom/Attribute;->value:Ljava/lang/String;

    return-object v0
.end method

.method isAttribute()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setLocalName(Ljava/lang/String;)V
    .locals 2

    const-string v0, "id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://www.w3.org/XML/1998/namespace"

    iget-object v1, p0, Lnu/xom/Attribute;->URI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnu/xom/Attribute;->value:Ljava/lang/String;

    invoke-static {v0}, Lnu/xom/Verifier;->checkNCName(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lnu/xom/Attribute;->_setLocalName(Ljava/lang/String;)V

    invoke-direct {p0}, Lnu/xom/Attribute;->isXMLID()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lnu/xom/Attribute$Type;->ID:Lnu/xom/Attribute$Type;

    invoke-virtual {p0, v0}, Lnu/xom/Attribute;->setType(Lnu/xom/Attribute$Type;)V

    :cond_1
    return-void
.end method

.method public setNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lnu/xom/Attribute;->_setNamespace(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lnu/xom/Attribute;->isXMLID()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnu/xom/Attribute$Type;->ID:Lnu/xom/Attribute$Type;

    invoke-virtual {p0, v0}, Lnu/xom/Attribute;->setType(Lnu/xom/Attribute$Type;)V

    :cond_0
    return-void
.end method

.method public setType(Lnu/xom/Attribute$Type;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null attribute type"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lnu/xom/Attribute;->isXMLID()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lnu/xom/Attribute$Type;->ID:Lnu/xom/Attribute$Type;

    invoke-virtual {v0, p1}, Lnu/xom/Attribute$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lnu/xom/IllegalDataException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Can\'t change type of xml:id attribute to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/IllegalDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0, p1}, Lnu/xom/Attribute;->_setType(Lnu/xom/Attribute$Type;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lnu/xom/Attribute;->_setValue(Ljava/lang/String;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
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

    invoke-virtual {p0}, Lnu/xom/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lnu/xom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnu/xom/Text;->escapeLineBreaksAndTruncate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toXML()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lnu/xom/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lnu/xom/Attribute;->value:Ljava/lang/String;

    invoke-static {v1}, Lnu/xom/Attribute;->escapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
