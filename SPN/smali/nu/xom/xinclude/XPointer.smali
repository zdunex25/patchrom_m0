.class Lnu/xom/xinclude/XPointer;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static findByID(Lnu/xom/Element;Ljava/lang/String;)Lnu/xom/Element;
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v1, -0x1

    move v3, v1

    move v4, v9

    move-object v2, p0

    :goto_0
    instance-of v1, v2, Lnu/xom/Element;

    if-eqz v1, :cond_1

    move-object v0, v2

    check-cast v0, Lnu/xom/Element;

    move-object v1, v0

    move v5, v9

    :goto_1
    invoke-virtual {v1}, Lnu/xom/Element;->getAttributeCount()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-virtual {v1, v5}, Lnu/xom/Element;->getAttribute(I)Lnu/xom/Attribute;

    move-result-object v6

    invoke-virtual {v6}, Lnu/xom/Attribute;->getType()Lnu/xom/Attribute$Type;

    move-result-object v7

    sget-object v8, Lnu/xom/Attribute$Type;->ID:Lnu/xom/Attribute$Type;

    if-ne v7, v8, :cond_0

    invoke-virtual {v6}, Lnu/xom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_2
    return-object v1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    invoke-virtual {v2}, Lnu/xom/Node;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v2, v9}, Lnu/xom/Node;->getChild(I)Lnu/xom/Node;

    move-result-object v1

    move v3, v9

    move-object v2, v1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    if-ne v2, p0, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lnu/xom/Node;->getParent()Lnu/xom/ParentNode;

    move-result-object v1

    invoke-virtual {v1}, Lnu/xom/ParentNode;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v10

    if-ne v2, v3, :cond_4

    if-eq v1, p0, :cond_5

    invoke-virtual {v1}, Lnu/xom/Node;->getParent()Lnu/xom/ParentNode;

    move-result-object v2

    invoke-virtual {v2, v1}, Lnu/xom/ParentNode;->indexOf(Lnu/xom/Node;)I

    move-result v2

    :goto_3
    move-object v3, v1

    move v1, v2

    move v2, v10

    :goto_4
    move v4, v2

    move-object v2, v3

    move v3, v1

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v1, v2}, Lnu/xom/ParentNode;->getChild(I)Lnu/xom/Node;

    move-result-object v1

    move-object v3, v1

    move v1, v2

    move v2, v9

    goto :goto_4

    :cond_5
    move v2, v3

    goto :goto_3
.end method

.method private static findElementSchemeData(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/xinclude/XPointerSyntaxException;
        }
    .end annotation

    const/16 v10, 0x5e

    const/16 v9, 0x29

    const/4 v8, 0x1

    const/16 v7, 0x28

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_1

    :cond_0
    :try_start_0
    new-instance v4, Lnu/xom/Element;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "http://www.example.com/"

    invoke-direct {v4, v5, v6}, Lnu/xom/Element;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lnu/xom/IllegalNameException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v3, v3, 0x1

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move v5, v3

    move v3, v8

    :goto_1
    if-lez v3, :cond_7

    :try_start_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    if-ne v6, v10, :cond_4

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eq v6, v10, :cond_2

    if-eq v6, v7, :cond_2

    if-eq v6, v9, :cond_2

    new-instance v0, Lnu/xom/xinclude/XPointerSyntaxException;

    const-string v1, "Illegal XPointer escape sequence"

    invoke-direct {v0, v1}, Lnu/xom/xinclude/XPointerSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Lnu/xom/xinclude/XPointerSyntaxException;

    const-string v1, "Unbalanced parentheses"

    invoke-direct {v0, v1}, Lnu/xom/xinclude/XPointerSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lnu/xom/xinclude/XPointerSyntaxException;

    invoke-virtual {v0}, Lnu/xom/IllegalNameException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnu/xom/xinclude/XPointerSyntaxException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    if-ne v6, v7, :cond_5

    :try_start_2
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    if-ne v6, v9, :cond_6

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_3

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_6
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "element"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v2, v5, 0x1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-ge v2, v3, :cond_9

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnu/xom/xinclude/XPointer;->findElementSchemeData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_9
    return-object v0
.end method

.method private static findNthChildElement(Lnu/xom/ParentNode;I)Lnu/xom/Element;
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    invoke-virtual {p0}, Lnu/xom/ParentNode;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lnu/xom/ParentNode;->getChild(I)Lnu/xom/Node;

    move-result-object v1

    instance-of v4, v1, Lnu/xom/Element;

    if-eqz v4, :cond_2

    if-ne v3, p1, :cond_0

    move-object v0, v1

    check-cast v0, Lnu/xom/Element;

    move-object p0, v0

    move-object v1, p0

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v1, v3, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v3, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2
.end method

.method static query(Lnu/xom/Document;Ljava/lang/String;)Lnu/xom/Nodes;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/xinclude/XPointerSyntaxException;,
            Lnu/xom/xinclude/XPointerResourceException;
        }
    .end annotation

    const/4 v10, 0x1

    const/16 v9, 0x2f

    const/4 v8, 0x0

    new-instance v1, Lnu/xom/Nodes;

    invoke-direct {v1}, Lnu/xom/Nodes;-><init>()V

    :try_start_0
    new-instance v0, Lnu/xom/Element;

    const-string v2, "http://www.example.com"

    invoke-direct {v0, p1, v2}, Lnu/xom/Element;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnu/xom/Document;->getRootElement()Lnu/xom/Element;

    move-result-object v0

    invoke-static {v0, p1}, Lnu/xom/xinclude/XPointer;->findByID(Lnu/xom/Element;Ljava/lang/String;)Lnu/xom/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lnu/xom/Nodes;->append(Lnu/xom/Node;)V
    :try_end_0
    .catch Lnu/xom/IllegalNameException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    move v0, v8

    :goto_1
    if-eqz v0, :cond_8

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {p1}, Lnu/xom/xinclude/XPointer;->findElementSchemeData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lnu/xom/xinclude/XPointerSyntaxException;

    const-string v1, "No supported XPointer schemes found"

    invoke-direct {v0, v1}, Lnu/xom/xinclude/XPointerSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v3, v8

    move v4, v8

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_c

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    new-array v5, v8, [I

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    :try_start_1
    new-instance v6, Lnu/xom/Element;

    invoke-direct {v6, v0}, Lnu/xom/Element;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lnu/xom/IllegalNameException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {p0}, Lnu/xom/Document;->getRootElement()Lnu/xom/Element;

    move-result-object v6

    invoke-static {v6, v0}, Lnu/xom/xinclude/XPointer;->findByID(Lnu/xom/Element;Ljava/lang/String;)Lnu/xom/Element;

    move-result-object v0

    if-eqz v0, :cond_b

    if-nez v4, :cond_2

    invoke-virtual {v1, v0}, Lnu/xom/Nodes;->append(Lnu/xom/Node;)V

    :cond_2
    move v0, v10

    :goto_3
    move-object v4, v5

    move v5, v0

    move-object v0, p0

    :goto_4
    move-object v6, v0

    move v0, v8

    :goto_5
    array-length v7, v4

    if-ge v0, v7, :cond_a

    aget v7, v4, v0

    invoke-static {v6, v7}, Lnu/xom/xinclude/XPointer;->findNthChildElement(Lnu/xom/ParentNode;I)Lnu/xom/Element;

    move-result-object v6

    if-nez v6, :cond_7

    move-object v0, v6

    :goto_6
    if-eq v0, p0, :cond_9

    if-eqz v0, :cond_9

    if-nez v5, :cond_3

    invoke-virtual {v1, v0}, Lnu/xom/Nodes;->append(Lnu/xom/Node;)V

    :cond_3
    move v0, v10

    :goto_7
    add-int/lit8 v3, v3, 0x1

    move v4, v0

    goto :goto_2

    :catch_1
    move-exception v0

    move v0, v4

    goto :goto_7

    :cond_4
    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {v0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :try_start_2
    new-instance v6, Lnu/xom/Element;

    invoke-direct {v6, v5}, Lnu/xom/Element;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lnu/xom/XMLException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-virtual {p0}, Lnu/xom/Document;->getRootElement()Lnu/xom/Element;

    move-result-object v6

    invoke-static {v6, v5}, Lnu/xom/xinclude/XPointer;->findByID(Lnu/xom/Element;Ljava/lang/String;)Lnu/xom/Element;

    move-result-object v5

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnu/xom/xinclude/XPointer;->split(Ljava/lang/String;)[I

    move-result-object v0

    if-nez v5, :cond_5

    move v0, v4

    goto :goto_7

    :catch_2
    move-exception v0

    move v0, v4

    goto :goto_7

    :cond_5
    move-object v11, v5

    move v5, v4

    move-object v4, v0

    move-object v0, v11

    goto :goto_4

    :cond_6
    invoke-static {v0}, Lnu/xom/xinclude/XPointer;->split(Ljava/lang/String;)[I

    move-result-object v0

    move v5, v4

    move-object v4, v0

    move-object v0, p0

    goto :goto_4

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    new-instance v0, Lnu/xom/xinclude/XPointerResourceException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "XPointer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " did not locate any nodes in the document "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lnu/xom/Document;->getBaseURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/xinclude/XPointerResourceException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move v0, v5

    goto :goto_7

    :cond_a
    move-object v0, v6

    goto :goto_6

    :cond_b
    move v0, v4

    goto/16 :goto_3

    :cond_c
    move v0, v4

    goto/16 :goto_1
.end method

.method private static split(Ljava/lang/String;)[I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/xinclude/XPointerSyntaxException;
        }
    .end annotation

    const/16 v6, 0x2f

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v3, 0x0

    move v0, v3

    move v1, v3

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-array v0, v1, [I

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v2, v1

    move v1, v5

    :goto_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v3

    add-int/lit8 v2, v3, 0x1

    new-instance v3, Ljava/lang/StringBuffer;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v7, v3

    move v3, v2

    move-object v2, v7

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Lnu/xom/xinclude/XPointerSyntaxException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " is not syntactically correct"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lnu/xom/xinclude/XPointerSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    :try_start_1
    array-length v1, v0

    sub-int/2addr v1, v5

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0
.end method
