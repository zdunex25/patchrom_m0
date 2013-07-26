.class public Lnu/xom/tests/XOMTestCase;
.super Ljunit/framework/TestCase;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljunit/framework/TestCase;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static assertEquals(Ljava/lang/String;Lnu/xom/Attribute;Lnu/xom/Attribute;)V
    .locals 5

    const/16 v4, 0x2f

    if-ne p2, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p1, p2}, Lnu/xom/tests/XOMTestCase;->nullCheck(Ljava/lang/String;Lnu/xom/Node;Lnu/xom/Node;)V

    invoke-virtual {p1}, Lnu/xom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lnu/xom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "xml:base"

    invoke-virtual {p1}, Lnu/xom/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "../"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p0, v0}, Lnu/xom/tests/XOMTestCase;->assertTrue(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_1
    invoke-static {p0, v0}, Lnu/xom/tests/XOMTestCase;->assertTrue(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    invoke-static {p0, v0, v1}, Lnu/xom/tests/XOMTestCase;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnu/xom/Attribute;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lnu/xom/Attribute;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lnu/xom/tests/XOMTestCase;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnu/xom/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lnu/xom/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lnu/xom/tests/XOMTestCase;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnu/xom/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lnu/xom/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lnu/xom/tests/XOMTestCase;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static assertEquals(Ljava/lang/String;Lnu/xom/Comment;Lnu/xom/Comment;)V
    .locals 2

    if-ne p2, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lnu/xom/tests/XOMTestCase;->nullCheck(Ljava/lang/String;Lnu/xom/Node;Lnu/xom/Node;)V

    invoke-virtual {p1}, Lnu/xom/Comment;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lnu/xom/Comment;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lnu/xom/tests/XOMTestCase;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static assertEquals(Ljava/lang/String;Lnu/xom/DocType;Lnu/xom/DocType;)V
    .locals 2

    if-ne p2, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lnu/xom/tests/XOMTestCase;->nullCheck(Ljava/lang/String;Lnu/xom/Node;Lnu/xom/Node;)V

    invoke-virtual {p1}, Lnu/xom/DocType;->getPublicID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lnu/xom/DocType;->getPublicID()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lnu/xom/tests/XOMTestCase;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnu/xom/DocType;->getSystemID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lnu/xom/DocType;->getSystemID()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lnu/xom/tests/XOMTestCase;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnu/xom/DocType;->getRootElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lnu/xom/DocType;->getRootElementName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lnu/xom/tests/XOMTestCase;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static assertEquals(Ljava/lang/String;Lnu/xom/Document;Lnu/xom/Document;)V
    .locals 3

    if-ne p2, p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {p0, p1, p2}, Lnu/xom/tests/XOMTestCase;->nullCheck(Ljava/lang/String;Lnu/xom/Node;Lnu/xom/Node;)V

    invoke-virtual {p1}, Lnu/xom/Document;->getChildCount()I

    move-result v0

    invoke-virtual {p2}, Lnu/xom/Document;->getChildCount()I

    move-result v1

    invoke-static {p0, v0, v1}, Lnu/xom/tests/XOMTestCase;->assertEquals(Ljava/lang/String;II)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lnu/xom/Document;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lnu/xom/Document;->getChild(I)Lnu/xom/Node;

    move-result-object v1

    invoke-virtual {p2, v0}, Lnu/xom/Document;->getChild(I)Lnu/xom/Node;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lnu/xom/tests/XOMTestCase;->assertEquals(Ljava/lang/String;Lnu/xom/Node;Lnu/xom/Node;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static assertEquals(Ljava/lang/String;Lnu/xom/Element;Lnu/xom/Element;)V
    .locals 5

    const/4 v4, 0x0

    if-ne p2, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lnu/xom/tests/XOMTestCase;->nullCheck(Ljava/lang/String;Lnu/xom/Node;Lnu/xom/Node;)V

    invoke-virtual {p1}, Lnu/xom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lnu/xom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lnu/xom/tests/XOMTestCase;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnu/xom/Element;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lnu/xom/Element;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lnu/xom/tests/XOMTestCase;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnu/xom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lnu/xom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lnu/xom/tests/XOMTestCase;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnu/xom/Element;->getAttributeCount()I

    move-result v0

    invoke-virtual {p2}, Lnu/xom/Element;->getAttributeCount()I

    move-result v1

    invoke-static {p0, v0, v1}, Lnu/xom/tests/XOMTestCase;->assertEquals(Ljava/lang/String;II)V

    move v0, v4

    :goto_1
    invoke-virtual {p1}, Lnu/xom/Element;->getAttributeCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lnu/xom/Element;->getAttribute(I)Lnu/xom/Attribute;

    move-result-object v1

    invoke-virtual {v1}, Lnu/xom/Attribute;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lnu/xom/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lnu/xom/Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Lnu/xom/Attribute;

    move-result-object v2

    invoke-static {p0, v2}, Lnu/xom/tests/XOMTestCase;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, v1, v2}, Lnu/xom/tests/XOMTestCase;->assertEquals(Ljava/lang/String;Lnu/xom/Attribute;Lnu/xom/Attribute;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_2
    invoke-virtual {p1}, Lnu/xom/Element;->getNamespaceDeclarationCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Lnu/xom/Element;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnu/xom/Element;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1}, Lnu/xom/Element;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lnu/xom/tests/XOMTestCase;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, v1}, Lnu/xom/Element;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v2, v1}, Lnu/xom/tests/XOMTestCase;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v4

    :goto_3
    invoke-virtual {p2}, Lnu/xom/Element;->getNamespaceDeclarationCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p2, v0}, Lnu/xom/Element;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lnu/xom/Element;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1}, Lnu/xom/Element;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lnu/xom/tests/XOMTestCase;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lnu/xom/Element;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v2, v1}, Lnu/xom/tests/XOMTestCase;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    invoke-static {p0, p1, p2}, Lnu/xom/tests/XOMTestCase;->compareChildren(Ljava/lang/String;Lnu/xom/Element;Lnu/xom/Element;)V

    goto/16 :goto_0
.end method

.method public static assertEquals(Ljava/lang/String;Lnu/xom/Namespace;Lnu/xom/Namespace;)V
    .locals 2

    if-ne p2, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lnu/xom/tests/XOMTestCase;->nullCheck(Ljava/lang/String;Lnu/xom/Node;Lnu/xom/Node;)V

    invoke-virtual {p1}, Lnu/xom/Namespace;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lnu/xom/Namespace;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lnu/xom/tests/XOMTestCase;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnu/xom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lnu/xom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lnu/xom/tests/XOMTestCase;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static assertEquals(Ljava/lang/String;Lnu/xom/Node;Lnu/xom/Node;)V
    .locals 5

    if-ne p2, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lnu/xom/tests/XOMTestCase;->nullCheck(Ljava/lang/String;Lnu/xom/Node;Lnu/xom/Node;)V

    :try_start_0
    instance-of v1, p1, Lnu/xom/Document;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lnu/xom/Document;

    move-object v1, v0

    move-object v0, p2

    check-cast v0, Lnu/xom/Document;

    move-object v2, v0

    invoke-static {p0, v1, v2}, Lnu/xom/tests/XOMTestCase;->assertEquals(Ljava/lang/String;Lnu/xom/Document;Lnu/xom/Document;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v1, Ljunit/framework/ComparisonFailure;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "; Mismatched node types: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lnu/xom/Node;->toXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lnu/xom/Node;->toXML()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Ljunit/framework/ComparisonFailure;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_1
    :try_start_1
    instance-of v1, p1, Lnu/xom/Element;

    if-eqz v1, :cond_2

    move-object v0, p1

    check-cast v0, Lnu/xom/Element;

    move-object v1, v0

    move-object v0, p2

    check-cast v0, Lnu/xom/Element;

    move-object v2, v0

    invoke-static {p0, v1, v2}, Lnu/xom/tests/XOMTestCase;->assertEquals(Ljava/lang/String;Lnu/xom/Element;Lnu/xom/Element;)V

    goto :goto_0

    :cond_2
    instance-of v1, p1, Lnu/xom/Text;

    if-eqz v1, :cond_3

    move-object v0, p1

    check-cast v0, Lnu/xom/Text;

    move-object v1, v0

    move-object v0, p2

    check-cast v0, Lnu/xom/Text;

    move-object v2, v0

    invoke-static {p0, v1, v2}, Lnu/xom/tests/XOMTestCase;->assertEquals(Ljava/lang/String;Lnu/xom/Text;Lnu/xom/Text;)V

    goto :goto_0

    :cond_3
    instance-of v1, p1, Lnu/xom/DocType;

    if-eqz v1, :cond_4

    move-object v0, p1

    check-cast v0, Lnu/xom/DocType;

    move-object v1, v0

    move-object v0, p2

    check-cast v0, Lnu/xom/DocType;

    move-object v2, v0

    invoke-static {p0, v1, v2}, Lnu/xom/tests/XOMTestCase;->assertEquals(Ljava/lang/String;Lnu/xom/DocType;Lnu/xom/DocType;)V

    goto/16 :goto_0

    :cond_4
    instance-of v1, p1, Lnu/xom/Comment;

    if-eqz v1, :cond_5

    move-object v0, p1

    check-cast v0, Lnu/xom/Comment;

    move-object v1, v0

    move-object v0, p2

    check-cast v0, Lnu/xom/Comment;

    move-object v2, v0

    invoke-static {p0, v1, v2}, Lnu/xom/tests/XOMTestCase;->assertEquals(Ljava/lang/String;Lnu/xom/Comment;Lnu/xom/Comment;)V

    goto/16 :goto_0

    :cond_5
    instance-of v1, p1, Lnu/xom/ProcessingInstruction;

    if-eqz v1, :cond_6

    move-object v0, p1

    check-cast v0, Lnu/xom/ProcessingInstruction;

    move-object v1, v0

    move-object v0, p2

    check-cast v0, Lnu/xom/ProcessingInstruction;

    move-object v2, v0

    invoke-static {p0, v1, v2}, Lnu/xom/tests/XOMTestCase;->assertEquals(Ljava/lang/String;Lnu/xom/ProcessingInstruction;Lnu/xom/ProcessingInstruction;)V

    goto/16 :goto_0

    :cond_6
    instance-of v1, p1, Lnu/xom/Attribute;

    if-eqz v1, :cond_7

    move-object v0, p1

    check-cast v0, Lnu/xom/Attribute;

    move-object v1, v0

    move-object v0, p2

    check-cast v0, Lnu/xom/Attribute;

    move-object v2, v0

    invoke-static {p0, v1, v2}, Lnu/xom/tests/XOMTestCase;->assertEquals(Ljava/lang/String;Lnu/xom/Attribute;Lnu/xom/Attribute;)V

    goto/16 :goto_0

    :cond_7
    instance-of v1, p1, Lnu/xom/Namespace;

    if-eqz v1, :cond_8

    move-object v0, p1

    check-cast v0, Lnu/xom/Namespace;

    move-object v1, v0

    move-object v0, p2

    check-cast v0, Lnu/xom/Namespace;

    move-object v2, v0

    invoke-static {p0, v1, v2}, Lnu/xom/tests/XOMTestCase;->assertEquals(Ljava/lang/String;Lnu/xom/Namespace;Lnu/xom/Namespace;)V

    goto/16 :goto_0

    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unexpected node type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public static assertEquals(Ljava/lang/String;Lnu/xom/ProcessingInstruction;Lnu/xom/ProcessingInstruction;)V
    .locals 2

    if-ne p2, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lnu/xom/tests/XOMTestCase;->nullCheck(Ljava/lang/String;Lnu/xom/Node;Lnu/xom/Node;)V

    invoke-virtual {p1}, Lnu/xom/ProcessingInstruction;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lnu/xom/ProcessingInstruction;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lnu/xom/tests/XOMTestCase;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnu/xom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lnu/xom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lnu/xom/tests/XOMTestCase;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static assertEquals(Ljava/lang/String;Lnu/xom/Text;Lnu/xom/Text;)V
    .locals 2

    if-ne p2, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lnu/xom/tests/XOMTestCase;->nullCheck(Ljava/lang/String;Lnu/xom/Node;Lnu/xom/Node;)V

    invoke-virtual {p1}, Lnu/xom/Text;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lnu/xom/Text;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lnu/xom/tests/XOMTestCase;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static assertEquals(Lnu/xom/Attribute;Lnu/xom/Attribute;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lnu/xom/tests/XOMTestCase;->assertEquals(Ljava/lang/String;Lnu/xom/Attribute;Lnu/xom/Attribute;)V

    return-void
.end method

.method public static assertEquals(Lnu/xom/Comment;Lnu/xom/Comment;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lnu/xom/tests/XOMTestCase;->assertEquals(Ljava/lang/String;Lnu/xom/Comment;Lnu/xom/Comment;)V

    return-void
.end method

.method public static assertEquals(Lnu/xom/DocType;Lnu/xom/DocType;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lnu/xom/tests/XOMTestCase;->assertEquals(Ljava/lang/String;Lnu/xom/DocType;Lnu/xom/DocType;)V

    return-void
.end method

.method public static assertEquals(Lnu/xom/Document;Lnu/xom/Document;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lnu/xom/tests/XOMTestCase;->assertEquals(Ljava/lang/String;Lnu/xom/Document;Lnu/xom/Document;)V

    return-void
.end method

.method public static assertEquals(Lnu/xom/Element;Lnu/xom/Element;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lnu/xom/tests/XOMTestCase;->assertEquals(Ljava/lang/String;Lnu/xom/Element;Lnu/xom/Element;)V

    return-void
.end method

.method public static assertEquals(Lnu/xom/Node;Lnu/xom/Node;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lnu/xom/tests/XOMTestCase;->assertEquals(Ljava/lang/String;Lnu/xom/Node;Lnu/xom/Node;)V

    return-void
.end method

.method public static assertEquals(Lnu/xom/ProcessingInstruction;Lnu/xom/ProcessingInstruction;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lnu/xom/tests/XOMTestCase;->assertEquals(Ljava/lang/String;Lnu/xom/ProcessingInstruction;Lnu/xom/ProcessingInstruction;)V

    return-void
.end method

.method public static assertEquals(Lnu/xom/Text;Lnu/xom/Text;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lnu/xom/tests/XOMTestCase;->assertEquals(Ljava/lang/String;Lnu/xom/Text;Lnu/xom/Text;)V

    return-void
.end method

.method private static combineTextNodes(Lnu/xom/Element;)Lnu/xom/Element;
    .locals 10

    const/4 v8, 0x0

    new-instance v0, Lnu/xom/Element;

    const-string v1, "a"

    invoke-direct {v0, v1}, Lnu/xom/Element;-><init>(Ljava/lang/String;)V

    new-instance v1, Lnu/xom/Comment;

    const-string v2, "c"

    invoke-direct {v1, v2}, Lnu/xom/Comment;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lnu/xom/Element;->getChildCount()I

    move-result v3

    move v4, v8

    :goto_0
    if-ge v4, v3, :cond_4

    invoke-virtual {p0, v4}, Lnu/xom/Element;->getChild(I)Lnu/xom/Node;

    move-result-object v5

    instance-of v6, v5, Lnu/xom/Text;

    if-eqz v6, :cond_3

    const-string v6, ""

    invoke-virtual {v5}, Lnu/xom/Node;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_1
    move-object v9, v5

    move v5, v4

    move-object v4, v9

    invoke-virtual {v4}, Lnu/xom/Node;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v5, 0x1

    if-ne v4, v3, :cond_2

    :goto_2
    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnu/xom/Element;->appendChild(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v4}, Lnu/xom/Element;->getChild(I)Lnu/xom/Node;

    move-result-object v5

    instance-of v6, v5, Lnu/xom/Text;

    if-nez v6, :cond_1

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lnu/xom/Comment;->copy()Lnu/xom/Node;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnu/xom/Element;->appendChild(Lnu/xom/Node;)V

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private static compareChildren(Ljava/lang/String;Lnu/xom/Element;Lnu/xom/Element;)V
    .locals 9

    const/4 v7, 0x0

    invoke-static {p1}, Lnu/xom/tests/XOMTestCase;->hasAdjacentTextNodes(Lnu/xom/Element;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Lnu/xom/tests/XOMTestCase;->combineTextNodes(Lnu/xom/Element;)Lnu/xom/Element;

    move-result-object v0

    :goto_0
    invoke-static {p2}, Lnu/xom/tests/XOMTestCase;->hasAdjacentTextNodes(Lnu/xom/Element;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p2}, Lnu/xom/tests/XOMTestCase;->combineTextNodes(Lnu/xom/Element;)Lnu/xom/Element;

    move-result-object v1

    :goto_1
    invoke-virtual {v0}, Lnu/xom/Element;->getChildCount()I

    move-result v2

    invoke-virtual {v1}, Lnu/xom/Element;->getChildCount()I

    move-result v3

    invoke-static {p0, v2, v3}, Lnu/xom/tests/XOMTestCase;->assertEquals(Ljava/lang/String;II)V

    move v3, v7

    move v4, v2

    :goto_2
    if-ge v3, v2, :cond_1

    invoke-virtual {v0, v3}, Lnu/xom/Element;->getChild(I)Lnu/xom/Node;

    move-result-object v5

    instance-of v6, v5, Lnu/xom/Text;

    if-eqz v6, :cond_0

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3}, Lnu/xom/Element;->getChild(I)Lnu/xom/Node;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lnu/xom/tests/XOMTestCase;->assertEquals(Ljava/lang/String;Lnu/xom/Node;Lnu/xom/Node;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lnu/xom/Element;->getChildCount()I

    move-result v0

    move v1, v7

    move v2, v7

    :goto_3
    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Lnu/xom/Element;->getChild(I)Lnu/xom/Node;

    move-result-object v3

    instance-of v4, v3, Lnu/xom/Text;

    if-eqz v4, :cond_2

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {p2, v2}, Lnu/xom/Element;->getChild(I)Lnu/xom/Node;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    move-object v8, v4

    move v4, v2

    move-object v2, v8

    :goto_5
    instance-of v5, v2, Lnu/xom/Text;

    if-eqz v5, :cond_3

    invoke-virtual {p2, v4}, Lnu/xom/Element;->getChild(I)Lnu/xom/Node;

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_3
    invoke-static {p0, v3, v2}, Lnu/xom/tests/XOMTestCase;->assertEquals(Ljava/lang/String;Lnu/xom/Node;Lnu/xom/Node;)V

    move v2, v4

    goto :goto_4

    :cond_4
    return-void

    :cond_5
    move-object v1, p2

    goto :goto_1

    :cond_6
    move-object v0, p1

    goto :goto_0
.end method

.method private static hasAdjacentTextNodes(Lnu/xom/Element;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lnu/xom/Element;->getChildCount()I

    move-result v0

    move v1, v5

    move v2, v5

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Lnu/xom/Element;->getChild(I)Lnu/xom/Node;

    move-result-object v3

    instance-of v4, v3, Lnu/xom/Text;

    if-eqz v4, :cond_2

    if-eqz v2, :cond_0

    move v0, v6

    :goto_1
    return v0

    :cond_0
    const-string v2, ""

    invoke-virtual {v3}, Lnu/xom/Node;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v6

    goto :goto_1

    :cond_1
    move v2, v6

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v2, v5

    goto :goto_2

    :cond_3
    move v0, v5

    goto :goto_1
.end method

.method private static nullCheck(Ljava/lang/String;Lnu/xom/Node;Lnu/xom/Node;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljunit/framework/ComparisonFailure;

    invoke-virtual {p2}, Lnu/xom/Node;->toXML()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v2, v1}, Ljunit/framework/ComparisonFailure;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljunit/framework/ComparisonFailure;

    invoke-virtual {p1}, Lnu/xom/Node;->toXML()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Ljunit/framework/ComparisonFailure;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method
