.class Lnu/xom/XOMHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;
.implements Lorg/xml/sax/ext/DeclHandler;
.implements Lorg/xml/sax/DTDHandler;


# instance fields
.field protected buffer:Ljava/lang/StringBuffer;

.field protected current:Lnu/xom/ParentNode;

.field protected doctype:Lnu/xom/DocType;

.field protected document:Lnu/xom/Document;

.field protected documentBaseURI:Ljava/lang/String;

.field protected factory:Lnu/xom/NodeFactory;

.field protected finishedCDATA:Z

.field protected inCDATA:Z

.field protected inDTD:Z

.field protected inExternalSubset:Z

.field protected inProlog:Z

.field protected internalDTDSubset:Ljava/lang/StringBuffer;

.field protected locator:Lorg/xml/sax/Locator;

.field protected parent:Lnu/xom/ParentNode;

.field protected parents:Ljava/util/ArrayList;

.field protected position:I

.field protected textString:Ljava/lang/String;

.field usingCrimson:Z


# direct methods
.method constructor <init>(Lnu/xom/NodeFactory;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lnu/xom/XOMHandler;->usingCrimson:Z

    iput-object v1, p0, Lnu/xom/XOMHandler;->textString:Ljava/lang/String;

    iput-object v1, p0, Lnu/xom/XOMHandler;->buffer:Ljava/lang/StringBuffer;

    iput-boolean v0, p0, Lnu/xom/XOMHandler;->inExternalSubset:Z

    iput-boolean v0, p0, Lnu/xom/XOMHandler;->inCDATA:Z

    iput-boolean v0, p0, Lnu/xom/XOMHandler;->finishedCDATA:Z

    iput-object p1, p0, Lnu/xom/XOMHandler;->factory:Lnu/xom/NodeFactory;

    return-void
.end method

.method static convertStringToType(Ljava/lang/String;)Lnu/xom/Attribute$Type;
    .locals 1

    const-string v0, "CDATA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnu/xom/Attribute$Type;->CDATA:Lnu/xom/Attribute$Type;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "ID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lnu/xom/Attribute$Type;->ID:Lnu/xom/Attribute$Type;

    goto :goto_0

    :cond_1
    const-string v0, "IDREF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lnu/xom/Attribute$Type;->IDREF:Lnu/xom/Attribute$Type;

    goto :goto_0

    :cond_2
    const-string v0, "IDREFS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lnu/xom/Attribute$Type;->IDREFS:Lnu/xom/Attribute$Type;

    goto :goto_0

    :cond_3
    const-string v0, "NMTOKEN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lnu/xom/Attribute$Type;->NMTOKEN:Lnu/xom/Attribute$Type;

    goto :goto_0

    :cond_4
    const-string v0, "NMTOKENS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lnu/xom/Attribute$Type;->NMTOKENS:Lnu/xom/Attribute$Type;

    goto :goto_0

    :cond_5
    const-string v0, "ENTITY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lnu/xom/Attribute$Type;->ENTITY:Lnu/xom/Attribute$Type;

    goto :goto_0

    :cond_6
    const-string v0, "ENTITIES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lnu/xom/Attribute$Type;->ENTITIES:Lnu/xom/Attribute$Type;

    goto :goto_0

    :cond_7
    const-string v0, "NOTATION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lnu/xom/Attribute$Type;->NOTATION:Lnu/xom/Attribute$Type;

    goto :goto_0

    :cond_8
    const-string v0, "ENUMERATION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lnu/xom/Attribute$Type;->ENUMERATION:Lnu/xom/Attribute$Type;

    goto :goto_0

    :cond_9
    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lnu/xom/Attribute$Type;->ENUMERATION:Lnu/xom/Attribute$Type;

    goto :goto_0

    :cond_a
    sget-object v0, Lnu/xom/Attribute$Type;->UNDECLARED:Lnu/xom/Attribute$Type;

    goto :goto_0
.end method

.method private static escapeReservedCharactersInDeclarations(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

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
    const-string v3, "&#x0D;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_2
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_3
    const/16 v3, 0x21

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_4
    const-string v3, "&#x22;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_5
    const/16 v3, 0x23

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_6
    const/16 v3, 0x24

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_7
    const-string v3, "&#x25;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_8
    const-string v3, "&#x26;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
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
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private static escapeReservedCharactersInDefaultAttributeValues(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

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
    const-string v3, "&#x0D;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_2
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_3
    const/16 v3, 0x21

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_4
    const-string v3, "&quot;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_5
    const/16 v3, 0x23

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_6
    const/16 v3, 0x24

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_7
    const-string v3, "&#x25;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_8
    const-string v3, "&amp;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_9
    const/16 v3, 0x27

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_a
    const/16 v3, 0x28

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_b
    const/16 v3, 0x29

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_c
    const/16 v3, 0x2a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_d
    const/16 v3, 0x2b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_e
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_f
    const/16 v3, 0x2d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_10
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_11
    const/16 v3, 0x2f

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_12
    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_13
    const/16 v3, 0x31

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_14
    const/16 v3, 0x32

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_15
    const/16 v3, 0x33

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_16
    const/16 v3, 0x34

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_17
    const/16 v3, 0x35

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_18
    const/16 v3, 0x36

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_19
    const/16 v3, 0x37

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_1a
    const/16 v3, 0x38

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_1b
    const/16 v3, 0x39

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_1c
    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_1d
    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_1e
    const-string v3, "&lt;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
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
        :pswitch_2
        :pswitch_3
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
    .end packed-switch
.end method

.method private flushText()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lnu/xom/XOMHandler;->buffer:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnu/xom/XOMHandler;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnu/xom/XOMHandler;->textString:Ljava/lang/String;

    iput-object v5, p0, Lnu/xom/XOMHandler;->buffer:Ljava/lang/StringBuffer;

    :cond_0
    iget-object v0, p0, Lnu/xom/XOMHandler;->textString:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lnu/xom/XOMHandler;->inCDATA:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lnu/xom/XOMHandler;->factory:Lnu/xom/NodeFactory;

    iget-object v1, p0, Lnu/xom/XOMHandler;->textString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnu/xom/NodeFactory;->makeText(Ljava/lang/String;)Lnu/xom/Nodes;

    move-result-object v0

    move-object v2, v0

    :goto_0
    move v3, v4

    :goto_1
    invoke-virtual {v2}, Lnu/xom/Nodes;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    invoke-virtual {v2, v3}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object v1

    invoke-virtual {v1}, Lnu/xom/Node;->isAttribute()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnu/xom/XOMHandler;->parent:Lnu/xom/ParentNode;

    check-cast v0, Lnu/xom/Element;

    check-cast v1, Lnu/xom/Attribute;

    invoke-virtual {v0, v1}, Lnu/xom/Element;->addAttribute(Lnu/xom/Attribute;)V

    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lnu/xom/XOMHandler;->factory:Lnu/xom/NodeFactory;

    iget-object v1, p0, Lnu/xom/XOMHandler;->textString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnu/xom/NodeFactory;->makeCDATASection(Ljava/lang/String;)Lnu/xom/Nodes;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnu/xom/XOMHandler;->parent:Lnu/xom/ParentNode;

    invoke-virtual {v0, v1}, Lnu/xom/ParentNode;->appendChild(Lnu/xom/Node;)V

    goto :goto_2

    :cond_3
    iput-object v5, p0, Lnu/xom/XOMHandler;->textString:Ljava/lang/String;

    :cond_4
    iput-boolean v4, p0, Lnu/xom/XOMHandler;->inCDATA:Z

    iput-boolean v4, p0, Lnu/xom/XOMHandler;->finishedCDATA:Z

    return-void
.end method


# virtual methods
.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0x22

    const/16 v3, 0x20

    const-string v0, "NOTATION "

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x28

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    const-string v0, ")"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "NOTATION ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "NOTATION "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lnu/xom/XOMHandler;->inInternalSubset()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnu/xom/XOMHandler;->doctype:Lnu/xom/DocType;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    const-string v2, "  <!ATTLIST "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p4, :cond_0

    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    if-eqz p5, :cond_1

    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    invoke-static {p5}, Lnu/xom/XOMHandler;->escapeReservedCharactersInDefaultAttributeValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    return-void

    :cond_3
    move-object v0, p3

    goto :goto_0
.end method

.method public characters([CII)V
    .locals 2

    if-gtz p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lnu/xom/XOMHandler;->textString:Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lnu/xom/XOMHandler;->textString:Ljava/lang/String;

    :goto_1
    iget-boolean v0, p0, Lnu/xom/XOMHandler;->finishedCDATA:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnu/xom/XOMHandler;->inCDATA:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnu/xom/XOMHandler;->buffer:Ljava/lang/StringBuffer;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnu/xom/XOMHandler;->textString:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnu/xom/XOMHandler;->buffer:Ljava/lang/StringBuffer;

    :cond_3
    iget-object v0, p0, Lnu/xom/XOMHandler;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public comment([CII)V
    .locals 5

    iget-boolean v0, p0, Lnu/xom/XOMHandler;->inDTD:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lnu/xom/XOMHandler;->flushText()V

    :cond_0
    iget-boolean v0, p0, Lnu/xom/XOMHandler;->inDTD:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnu/xom/XOMHandler;->inInternalSubset()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lnu/xom/XOMHandler;->factory:Lnu/xom/NodeFactory;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lnu/xom/NodeFactory;->makeComment(Ljava/lang/String;)Lnu/xom/Nodes;

    move-result-object v2

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    invoke-virtual {v2}, Lnu/xom/Nodes;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    invoke-virtual {v2, v3}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object v1

    iget-boolean v0, p0, Lnu/xom/XOMHandler;->inDTD:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lnu/xom/XOMHandler;->inProlog:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnu/xom/XOMHandler;->parent:Lnu/xom/ParentNode;

    iget v4, p0, Lnu/xom/XOMHandler;->position:I

    invoke-virtual {v0, v1, v4}, Lnu/xom/ParentNode;->insertChild(Lnu/xom/Node;I)V

    iget v0, p0, Lnu/xom/XOMHandler;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnu/xom/XOMHandler;->position:I

    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_3
    instance-of v0, v1, Lnu/xom/Attribute;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnu/xom/XOMHandler;->parent:Lnu/xom/ParentNode;

    check-cast v0, Lnu/xom/Element;

    check-cast v1, Lnu/xom/Attribute;

    invoke-virtual {v0, v1}, Lnu/xom/Element;->addAttribute(Lnu/xom/Attribute;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lnu/xom/XOMHandler;->parent:Lnu/xom/ParentNode;

    invoke-virtual {v0, v1}, Lnu/xom/ParentNode;->appendChild(Lnu/xom/Node;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Lnu/xom/Node;->isComment()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v1}, Lnu/xom/Node;->isProcessingInstruction()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    const-string v4, "  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lnu/xom/Node;->toXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_7
    new-instance v0, Lnu/xom/XMLException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Factory tried to put a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " in the internal DTD subset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/XMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lnu/xom/XOMHandler;->inInternalSubset()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnu/xom/XOMHandler;->doctype:Lnu/xom/DocType;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    const-string v1, "  <!ELEMENT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "#PCDATA"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x7c

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    return-void
.end method

.method public endCDATA()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnu/xom/XOMHandler;->finishedCDATA:Z

    return-void
.end method

.method public endDTD()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnu/xom/XOMHandler;->inDTD:Z

    iget-object v0, p0, Lnu/xom/XOMHandler;->doctype:Lnu/xom/DocType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnu/xom/XOMHandler;->doctype:Lnu/xom/DocType;

    iget-object v1, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnu/xom/DocType;->setInternalDTDSubset(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 3

    iget-object v0, p0, Lnu/xom/XOMHandler;->factory:Lnu/xom/NodeFactory;

    iget-object v1, p0, Lnu/xom/XOMHandler;->document:Lnu/xom/Document;

    invoke-virtual {v0, v1}, Lnu/xom/NodeFactory;->finishMakingDocument(Lnu/xom/Document;)V

    iget-object v0, p0, Lnu/xom/XOMHandler;->parents:Ljava/util/ArrayList;

    iget-object v1, p0, Lnu/xom/XOMHandler;->parents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lnu/xom/XOMHandler;->parents:Ljava/util/ArrayList;

    iget-object v1, p0, Lnu/xom/XOMHandler;->parents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnu/xom/ParentNode;

    iput-object v0, p0, Lnu/xom/XOMHandler;->current:Lnu/xom/ParentNode;

    invoke-direct {p0}, Lnu/xom/XOMHandler;->flushText()V

    iget-object v0, p0, Lnu/xom/XOMHandler;->current:Lnu/xom/ParentNode;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lnu/xom/XOMHandler;->current:Lnu/xom/ParentNode;

    invoke-virtual {v0}, Lnu/xom/ParentNode;->getParent()Lnu/xom/ParentNode;

    move-result-object v0

    iput-object v0, p0, Lnu/xom/XOMHandler;->parent:Lnu/xom/ParentNode;

    iget-object v1, p0, Lnu/xom/XOMHandler;->factory:Lnu/xom/NodeFactory;

    iget-object v0, p0, Lnu/xom/XOMHandler;->current:Lnu/xom/ParentNode;

    check-cast v0, Lnu/xom/Element;

    invoke-virtual {v1, v0}, Lnu/xom/NodeFactory;->finishMakingElement(Lnu/xom/Element;)Lnu/xom/Nodes;

    move-result-object v2

    invoke-virtual {v2}, Lnu/xom/Nodes;->size()I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-virtual {v2, v6}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object v0

    iget-object v1, p0, Lnu/xom/XOMHandler;->current:Lnu/xom/ParentNode;

    if-eq v0, v1, :cond_8

    :cond_0
    iget-object v0, p0, Lnu/xom/XOMHandler;->parent:Lnu/xom/ParentNode;

    invoke-virtual {v0}, Lnu/xom/ParentNode;->isDocument()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lnu/xom/XOMHandler;->parent:Lnu/xom/ParentNode;

    invoke-virtual {v0}, Lnu/xom/ParentNode;->getChildCount()I

    move-result v0

    :try_start_0
    iget-object v1, p0, Lnu/xom/XOMHandler;->parent:Lnu/xom/ParentNode;

    sub-int/2addr v0, v3

    invoke-virtual {v1, v0}, Lnu/xom/ParentNode;->removeChild(I)Lnu/xom/Node;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v6

    :goto_0
    invoke-virtual {v2}, Lnu/xom/Nodes;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    invoke-virtual {v2, v3}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object v1

    invoke-virtual {v1}, Lnu/xom/Node;->isAttribute()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnu/xom/XOMHandler;->parent:Lnu/xom/ParentNode;

    check-cast v0, Lnu/xom/Element;

    check-cast v1, Lnu/xom/Attribute;

    invoke-virtual {v0, v1}, Lnu/xom/Element;->addAttribute(Lnu/xom/Attribute;)V

    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lnu/xom/XMLException;

    const-string v2, "Factory detached element in finishMakingElement()"

    invoke-direct {v1, v2, v0}, Lnu/xom/XMLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    iget-object v0, p0, Lnu/xom/XOMHandler;->parent:Lnu/xom/ParentNode;

    invoke-virtual {v0, v1}, Lnu/xom/ParentNode;->appendChild(Lnu/xom/Node;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lnu/xom/XOMHandler;->parent:Lnu/xom/ParentNode;

    check-cast p0, Lnu/xom/Document;

    invoke-virtual {p0}, Lnu/xom/Document;->getRootElement()Lnu/xom/Element;

    move-result-object v1

    move v4, v3

    move v3, v6

    :goto_2
    invoke-virtual {v2}, Lnu/xom/Nodes;->size()I

    move-result v0

    if-ge v3, v0, :cond_7

    invoke-virtual {v2, v3}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object v0

    invoke-virtual {v0}, Lnu/xom/Node;->isElement()Z

    move-result v5

    if-eqz v5, :cond_5

    if-eq v0, v1, :cond_4

    if-nez v4, :cond_3

    new-instance v0, Lnu/xom/IllegalAddException;

    const-string v1, "Factory returned multiple roots"

    invoke-direct {v0, v1}, Lnu/xom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    check-cast v0, Lnu/xom/Element;

    invoke-virtual {p0, v0}, Lnu/xom/Document;->setRootElement(Lnu/xom/Element;)V

    :cond_4
    move v0, v6

    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v4, v0

    goto :goto_2

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lnu/xom/Document;->getRootElement()Lnu/xom/Element;

    move-result-object v5

    invoke-virtual {p0, v5}, Lnu/xom/Document;->indexOf(Lnu/xom/Node;)I

    move-result v5

    invoke-virtual {p0, v0, v5}, Lnu/xom/Document;->insertChild(Lnu/xom/Node;I)V

    move v0, v4

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v0}, Lnu/xom/Document;->appendChild(Lnu/xom/Node;)V

    move v0, v4

    goto :goto_3

    :cond_7
    if-eqz v4, :cond_8

    new-instance v0, Lnu/xom/WellformednessException;

    const-string v1, "Factory attempted to remove the root element"

    invoke-direct {v0, v1}, Lnu/xom/WellformednessException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 1

    const-string v0, "[dtd]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnu/xom/XOMHandler;->inExternalSubset:Z

    :cond_0
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x5

    invoke-virtual {p0}, Lnu/xom/XOMHandler;->inInternalSubset()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnu/xom/XOMHandler;->doctype:Lnu/xom/DocType;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    const-string v1, "  <!ENTITY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    const-string v1, "% "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    iget-object v0, p0, Lnu/xom/XOMHandler;->locator:Lorg/xml/sax/Locator;

    if-eqz v0, :cond_5

    invoke-static {p3}, Lnu/xom/URIUtil;->isAbsolute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lnu/xom/XOMHandler;->locator:Lorg/xml/sax/Locator;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "file:/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "file:///"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "file:/"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "file:///"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p3, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v0, v1}, Lnu/xom/URIUtil;->relativize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-eqz p2, :cond_3

    iget-object v1, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    const-string v2, " PUBLIC \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    const-string v2, "\" \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    const-string v1, "\">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    const-string v2, " SYSTEM \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_4
    move-object v1, p3

    goto :goto_1

    :cond_5
    move-object v0, p3

    goto :goto_2
.end method

.method freeMemory()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnu/xom/XOMHandler;->document:Lnu/xom/Document;

    iput-object v0, p0, Lnu/xom/XOMHandler;->parent:Lnu/xom/ParentNode;

    iput-object v0, p0, Lnu/xom/XOMHandler;->current:Lnu/xom/ParentNode;

    iput-object v0, p0, Lnu/xom/XOMHandler;->parents:Ljava/util/ArrayList;

    iput-object v0, p0, Lnu/xom/XOMHandler;->locator:Lorg/xml/sax/Locator;

    iput-object v0, p0, Lnu/xom/XOMHandler;->doctype:Lnu/xom/DocType;

    iput-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    return-void
.end method

.method getDocument()Lnu/xom/Document;
    .locals 1

    iget-object v0, p0, Lnu/xom/XOMHandler;->document:Lnu/xom/Document;

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lnu/xom/XOMHandler;->characters([CII)V

    return-void
.end method

.method protected inInternalSubset()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lnu/xom/XOMHandler;->usingCrimson:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lnu/xom/XOMHandler;->inExternalSubset:Z

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnu/xom/XOMHandler;->locator:Lorg/xml/sax/Locator;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnu/xom/XOMHandler;->documentBaseURI:Ljava/lang/String;

    if-ne v0, v1, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lnu/xom/XOMHandler;->documentBaseURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lnu/xom/XOMHandler;->inInternalSubset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnu/xom/XOMHandler;->doctype:Lnu/xom/DocType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    const-string v1, "  <!ENTITY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    const-string v1, "% "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    invoke-static {p2}, Lnu/xom/XOMHandler;->escapeReservedCharactersInDeclarations(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    const-string v1, "\">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/16 v3, 0x22

    if-eqz p3, :cond_3

    invoke-static {p3}, Lnu/xom/XOMHandler;->escapeReservedCharactersInDeclarations(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lnu/xom/XOMHandler;->inInternalSubset()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnu/xom/XOMHandler;->doctype:Lnu/xom/DocType;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    const-string v2, "  <!NOTATION "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p2, :cond_2

    iget-object v1, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    const-string v2, " PUBLIC \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    const-string v2, " \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    :goto_1
    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    const-string v2, " SYSTEM \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    move-object v0, p3

    goto :goto_0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-boolean v0, p0, Lnu/xom/XOMHandler;->inDTD:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lnu/xom/XOMHandler;->flushText()V

    :cond_0
    iget-boolean v0, p0, Lnu/xom/XOMHandler;->inDTD:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnu/xom/XOMHandler;->inInternalSubset()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lnu/xom/XOMHandler;->factory:Lnu/xom/NodeFactory;

    invoke-virtual {v0, p1, p2}, Lnu/xom/NodeFactory;->makeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lnu/xom/Nodes;

    move-result-object v2

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    invoke-virtual {v2}, Lnu/xom/Nodes;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    invoke-virtual {v2, v3}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object v1

    iget-boolean v0, p0, Lnu/xom/XOMHandler;->inDTD:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lnu/xom/XOMHandler;->inProlog:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnu/xom/XOMHandler;->parent:Lnu/xom/ParentNode;

    iget v4, p0, Lnu/xom/XOMHandler;->position:I

    invoke-virtual {v0, v1, v4}, Lnu/xom/ParentNode;->insertChild(Lnu/xom/Node;I)V

    iget v0, p0, Lnu/xom/XOMHandler;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnu/xom/XOMHandler;->position:I

    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lnu/xom/Node;->isAttribute()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnu/xom/XOMHandler;->parent:Lnu/xom/ParentNode;

    check-cast v0, Lnu/xom/Element;

    check-cast v1, Lnu/xom/Attribute;

    invoke-virtual {v0, v1}, Lnu/xom/Element;->addAttribute(Lnu/xom/Attribute;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lnu/xom/XOMHandler;->parent:Lnu/xom/ParentNode;

    invoke-virtual {v0, v1}, Lnu/xom/ParentNode;->appendChild(Lnu/xom/Node;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Lnu/xom/Node;->isProcessingInstruction()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v1}, Lnu/xom/Node;->isComment()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    const-string v4, "  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lnu/xom/Node;->toXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_7
    new-instance v0, Lnu/xom/XMLException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Factory tried to put a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " in the internal DTD subset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/XMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    iput-object p1, p0, Lnu/xom/XOMHandler;->locator:Lorg/xml/sax/Locator;

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 3

    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lnu/xom/XOMHandler;->flushText()V

    new-instance v0, Lnu/xom/XMLException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not resolve entity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/XMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startCDATA()V
    .locals 1

    iget-object v0, p0, Lnu/xom/XOMHandler;->textString:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnu/xom/XOMHandler;->inCDATA:Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnu/xom/XOMHandler;->finishedCDATA:Z

    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnu/xom/XOMHandler;->inDTD:Z

    iget-object v0, p0, Lnu/xom/XOMHandler;->factory:Lnu/xom/NodeFactory;

    invoke-virtual {v0, p1, p2, p3}, Lnu/xom/NodeFactory;->makeDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnu/xom/Nodes;

    move-result-object v1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {v1}, Lnu/xom/Nodes;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-virtual {v1, v2}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object v0

    iget-object v3, p0, Lnu/xom/XOMHandler;->document:Lnu/xom/Document;

    iget v4, p0, Lnu/xom/XOMHandler;->position:I

    invoke-virtual {v3, v0, v4}, Lnu/xom/Document;->insertChild(Lnu/xom/Node;I)V

    iget v3, p0, Lnu/xom/XOMHandler;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lnu/xom/XOMHandler;->position:I

    invoke-virtual {v0}, Lnu/xom/Node;->isDocType()Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast v0, Lnu/xom/DocType;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v3, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    iput-object v0, p0, Lnu/xom/XOMHandler;->doctype:Lnu/xom/DocType;

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public startDocument()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-boolean v3, p0, Lnu/xom/XOMHandler;->inDTD:Z

    iget-object v0, p0, Lnu/xom/XOMHandler;->factory:Lnu/xom/NodeFactory;

    invoke-virtual {v0}, Lnu/xom/NodeFactory;->startMakingDocument()Lnu/xom/Document;

    move-result-object v0

    iput-object v0, p0, Lnu/xom/XOMHandler;->document:Lnu/xom/Document;

    iget-object v0, p0, Lnu/xom/XOMHandler;->document:Lnu/xom/Document;

    iput-object v0, p0, Lnu/xom/XOMHandler;->parent:Lnu/xom/ParentNode;

    iget-object v0, p0, Lnu/xom/XOMHandler;->document:Lnu/xom/Document;

    iput-object v0, p0, Lnu/xom/XOMHandler;->current:Lnu/xom/ParentNode;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnu/xom/XOMHandler;->parents:Ljava/util/ArrayList;

    iget-object v0, p0, Lnu/xom/XOMHandler;->parents:Ljava/util/ArrayList;

    iget-object v1, p0, Lnu/xom/XOMHandler;->document:Lnu/xom/Document;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnu/xom/XOMHandler;->inProlog:Z

    iput v3, p0, Lnu/xom/XOMHandler;->position:I

    iput-object v2, p0, Lnu/xom/XOMHandler;->textString:Ljava/lang/String;

    iput-object v2, p0, Lnu/xom/XOMHandler;->doctype:Lnu/xom/DocType;

    iget-object v0, p0, Lnu/xom/XOMHandler;->locator:Lorg/xml/sax/Locator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnu/xom/XOMHandler;->locator:Lorg/xml/sax/Locator;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnu/xom/XOMHandler;->documentBaseURI:Ljava/lang/String;

    iget-object v0, p0, Lnu/xom/XOMHandler;->document:Lnu/xom/Document;

    iget-object v1, p0, Lnu/xom/XOMHandler;->documentBaseURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnu/xom/Document;->setBaseURI(Ljava/lang/String;)V

    :cond_0
    iput-object v2, p0, Lnu/xom/XOMHandler;->buffer:Ljava/lang/StringBuffer;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 9

    const/4 v8, 0x0

    invoke-direct {p0}, Lnu/xom/XOMHandler;->flushText()V

    iget-object v0, p0, Lnu/xom/XOMHandler;->parent:Lnu/xom/ParentNode;

    iget-object v1, p0, Lnu/xom/XOMHandler;->document:Lnu/xom/Document;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lnu/xom/XOMHandler;->factory:Lnu/xom/NodeFactory;

    invoke-virtual {v0, p3, p1}, Lnu/xom/NodeFactory;->startMakingElement(Ljava/lang/String;Ljava/lang/String;)Lnu/xom/Element;

    move-result-object v0

    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lnu/xom/XOMHandler;->current:Lnu/xom/ParentNode;

    iget-object v0, p0, Lnu/xom/XOMHandler;->parents:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_b

    iget-object v0, p0, Lnu/xom/XOMHandler;->parent:Lnu/xom/ParentNode;

    iget-object v2, p0, Lnu/xom/XOMHandler;->document:Lnu/xom/Document;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lnu/xom/XOMHandler;->parent:Lnu/xom/ParentNode;

    invoke-virtual {v0, v1}, Lnu/xom/ParentNode;->appendChild(Lnu/xom/Node;)V

    :cond_0
    iget-object v0, p0, Lnu/xom/XOMHandler;->locator:Lorg/xml/sax/Locator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnu/xom/XOMHandler;->locator:Lorg/xml/sax/Locator;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lnu/xom/XOMHandler;->documentBaseURI:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, v0}, Lnu/xom/Element;->setActualBaseURI(Ljava/lang/String;)V

    :cond_1
    move v2, v8

    :goto_1
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_7

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "xmlns:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "xmlns"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lnu/xom/XOMHandler;->factory:Lnu/xom/NodeFactory;

    invoke-virtual {v0, p3, p1}, Lnu/xom/NodeFactory;->makeRootElement(Ljava/lang/String;Ljava/lang/String;)Lnu/xom/Element;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Factory failed to create root element."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v1, p0, Lnu/xom/XOMHandler;->document:Lnu/xom/Document;

    invoke-virtual {v1, v0}, Lnu/xom/Document;->setRootElement(Lnu/xom/Element;)V

    iput-boolean v8, p0, Lnu/xom/XOMHandler;->inProlog:Z

    move-object v1, v0

    goto :goto_0

    :cond_5
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lnu/xom/XOMHandler;->factory:Lnu/xom/NodeFactory;

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnu/xom/XOMHandler;->convertStringToType(Ljava/lang/String;)Lnu/xom/Attribute$Type;

    move-result-object v6

    invoke-virtual {v5, v0, v3, v4, v6}, Lnu/xom/NodeFactory;->makeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnu/xom/Attribute$Type;)Lnu/xom/Nodes;

    move-result-object v3

    move v4, v8

    move v5, v8

    :goto_2
    invoke-virtual {v3}, Lnu/xom/Nodes;->size()I

    move-result v0

    if-ge v4, v0, :cond_2

    invoke-virtual {v3, v4}, Lnu/xom/Nodes;->get(I)Lnu/xom/Node;

    move-result-object v0

    invoke-virtual {v0}, Lnu/xom/Node;->isAttribute()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lnu/xom/XOMHandler;->factory:Lnu/xom/NodeFactory;

    check-cast v0, Lnu/xom/Attribute;

    invoke-virtual {v6, v1, v0}, Lnu/xom/NodeFactory;->addAttribute(Lnu/xom/Element;Lnu/xom/Attribute;)V

    move v0, v5

    :goto_3
    add-int/lit8 v4, v4, 0x1

    move v5, v0

    goto :goto_2

    :cond_6
    iget-object v6, p0, Lnu/xom/XOMHandler;->factory:Lnu/xom/NodeFactory;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v1, v0, v5}, Lnu/xom/NodeFactory;->insertChild(Lnu/xom/Element;Lnu/xom/Node;I)V

    move v0, v7

    goto :goto_3

    :cond_7
    move v0, v8

    :goto_4
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_a

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "xmlns:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnu/xom/Element;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v1}, Lnu/xom/Element;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v1, v2, v3}, Lnu/xom/Element;->addNamespaceDeclaration(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    const-string v3, "xmlns"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v3}, Lnu/xom/Element;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, ""

    invoke-virtual {v1}, Lnu/xom/Element;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v1, v3, v2}, Lnu/xom/Element;->addNamespaceDeclaration(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    iput-object v1, p0, Lnu/xom/XOMHandler;->parent:Lnu/xom/ParentNode;

    :cond_b
    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 1

    const-string v0, "[dtd]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnu/xom/XOMHandler;->inExternalSubset:Z

    :cond_0
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lnu/xom/XOMHandler;->inInternalSubset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnu/xom/XOMHandler;->doctype:Lnu/xom/DocType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    const-string v1, "  <!ENTITY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    const-string v1, " PUBLIC \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    const-string v1, "\" \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    const-string v1, "\" NDATA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    const-string v1, " SYSTEM \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    const-string v1, "\" NDATA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lnu/xom/XOMHandler;->internalDTDSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
