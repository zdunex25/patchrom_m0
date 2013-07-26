.class public Lnu/xom/Document;
.super Lnu/xom/ParentNode;


# direct methods
.method public constructor <init>(Lnu/xom/Document;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lnu/xom/ParentNode;-><init>()V

    invoke-virtual {p1}, Lnu/xom/Document;->getRootElement()Lnu/xom/Element;

    move-result-object v0

    invoke-virtual {v0}, Lnu/xom/Element;->copy()Lnu/xom/Node;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lnu/xom/Document;->insertChild(Lnu/xom/Node;I)V

    invoke-virtual {p1}, Lnu/xom/Document;->getChildCount()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Lnu/xom/Document;->getChild(I)Lnu/xom/Node;

    move-result-object v2

    invoke-virtual {v2}, Lnu/xom/Node;->isElement()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lnu/xom/Node;->copy()Lnu/xom/Node;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lnu/xom/Document;->insertChild(Lnu/xom/Node;I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lnu/xom/Document;->actualBaseURI:Ljava/lang/String;

    iput-object v0, p0, Lnu/xom/Document;->actualBaseURI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lnu/xom/Element;)V
    .locals 1

    invoke-direct {p0}, Lnu/xom/ParentNode;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnu/xom/Document;->_insertChild(Lnu/xom/Node;I)V

    return-void
.end method

.method private getRootPosition()I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lnu/xom/Document;->getChild(I)Lnu/xom/Node;

    move-result-object v1

    invoke-virtual {v1}, Lnu/xom/Node;->isElement()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public copy()Lnu/xom/Node;
    .locals 1

    new-instance v0, Lnu/xom/Document;

    invoke-direct {v0, p0}, Lnu/xom/Document;-><init>(Lnu/xom/Document;)V

    return-object v0
.end method

.method public final getBaseURI()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lnu/xom/Document;->getActualBaseURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDocType()Lnu/xom/DocType;
    .locals 4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lnu/xom/Document;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lnu/xom/Document;->getChild(I)Lnu/xom/Node;

    move-result-object v1

    invoke-virtual {v1}, Lnu/xom/Node;->isDocType()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v1

    check-cast v0, Lnu/xom/DocType;

    move-object p0, v0

    move-object v1, p0

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final getRootElement()Lnu/xom/Element;
    .locals 4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0, v2}, Lnu/xom/Document;->getChild(I)Lnu/xom/Node;

    move-result-object v1

    invoke-virtual {v1}, Lnu/xom/Node;->isElement()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v1

    check-cast v0, Lnu/xom/Element;

    move-object p0, v0

    return-object p0

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lnu/xom/Document;->getRootElement()Lnu/xom/Element;

    move-result-object v0

    invoke-virtual {v0}, Lnu/xom/Element;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final insertionAllowed(Lnu/xom/Node;I)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Tried to insert a null child in the document"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lnu/xom/Node;->getParent()Lnu/xom/ParentNode;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lnu/xom/MultipleParentException;

    const-string v1, "Child already has a parent."

    invoke-direct {v0, v1}, Lnu/xom/MultipleParentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lnu/xom/Node;->isComment()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lnu/xom/Node;->isProcessingInstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p1}, Lnu/xom/Node;->isDocType()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lnu/xom/Document;->getRootPosition()I

    move-result v0

    if-gt p2, v0, :cond_4

    invoke-virtual {p0}, Lnu/xom/Document;->getDocType()Lnu/xom/DocType;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Lnu/xom/IllegalAddException;

    const-string v1, "Tried to insert a second DOCTYPE"

    invoke-direct {v0, v1}, Lnu/xom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lnu/xom/IllegalAddException;

    const-string v1, "Cannot add a document type declaration after the root element"

    invoke-direct {v0, v1}, Lnu/xom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {p1}, Lnu/xom/Node;->isElement()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lnu/xom/Document;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lnu/xom/IllegalAddException;

    const-string v1, "Cannot add a second root element to a Document."

    invoke-direct {v0, v1}, Lnu/xom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
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

    const-string v2, " to a Document."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method isDocument()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public removeChild(I)Lnu/xom/Node;
    .locals 2

    invoke-direct {p0}, Lnu/xom/Document;->getRootPosition()I

    move-result v0

    if-ne p1, v0, :cond_0

    new-instance v0, Lnu/xom/WellformednessException;

    const-string v1, "Cannot remove the root element"

    invoke-direct {v0, v1}, Lnu/xom/WellformednessException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Lnu/xom/ParentNode;->removeChild(I)Lnu/xom/Node;

    move-result-object v0

    return-object v0
.end method

.method public removeChild(Lnu/xom/Node;)Lnu/xom/Node;
    .locals 2

    invoke-virtual {p0}, Lnu/xom/Document;->getRootElement()Lnu/xom/Element;

    move-result-object v0

    if-ne p1, v0, :cond_0

    new-instance v0, Lnu/xom/WellformednessException;

    const-string v1, "Cannot remove the root element"

    invoke-direct {v0, v1}, Lnu/xom/WellformednessException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Lnu/xom/ParentNode;->removeChild(Lnu/xom/Node;)Lnu/xom/Node;

    move-result-object v0

    return-object v0
.end method

.method public replaceChild(Lnu/xom/Node;Lnu/xom/Node;)V
    .locals 1

    invoke-virtual {p0}, Lnu/xom/Document;->getRootElement()Lnu/xom/Element;

    move-result-object v0

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lnu/xom/Node;->isElement()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p2, Lnu/xom/Element;

    invoke-virtual {p0, p2}, Lnu/xom/Document;->setRootElement(Lnu/xom/Element;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lnu/xom/Document;->getDocType()Lnu/xom/DocType;

    move-result-object v0

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lnu/xom/Node;->isDocType()Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p2, Lnu/xom/DocType;

    invoke-virtual {p0, p2}, Lnu/xom/Document;->setDocType(Lnu/xom/DocType;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lnu/xom/ParentNode;->replaceChild(Lnu/xom/Node;Lnu/xom/Node;)V

    goto :goto_0
.end method

.method public setBaseURI(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnu/xom/Document;->setActualBaseURI(Ljava/lang/String;)V

    return-void
.end method

.method public setDocType(Lnu/xom/DocType;)V
    .locals 2

    invoke-virtual {p0}, Lnu/xom/Document;->getDocType()Lnu/xom/DocType;

    move-result-object v0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null DocType"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ne p1, v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lnu/xom/DocType;->getParent()Lnu/xom/ParentNode;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v0, Lnu/xom/MultipleParentException;

    const-string v1, "DocType belongs to another document"

    invoke-direct {v0, v1}, Lnu/xom/MultipleParentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnu/xom/Document;->insertChild(Lnu/xom/Node;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lnu/xom/Document;->indexOf(Lnu/xom/Node;)I

    move-result v1

    invoke-super {p0, v1}, Lnu/xom/ParentNode;->removeChild(I)Lnu/xom/Node;

    invoke-virtual {p0, p1, v1}, Lnu/xom/Document;->fastInsertChild(Lnu/xom/Node;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnu/xom/DocType;->setParent(Lnu/xom/ParentNode;)V

    invoke-virtual {p1, p0}, Lnu/xom/DocType;->setParent(Lnu/xom/ParentNode;)V

    goto :goto_0
.end method

.method public setRootElement(Lnu/xom/Element;)V
    .locals 3

    invoke-virtual {p0}, Lnu/xom/Document;->getRootElement()Lnu/xom/Element;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Root element cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lnu/xom/Element;->getParent()Lnu/xom/ParentNode;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v0, Lnu/xom/MultipleParentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lnu/xom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " already has a parent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/MultipleParentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0, v0}, Lnu/xom/Document;->fillInBaseURI(Lnu/xom/Element;)V

    invoke-virtual {p0, v0}, Lnu/xom/Document;->indexOf(Lnu/xom/Node;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lnu/xom/Element;->setParent(Lnu/xom/ParentNode;)V

    iget-object v0, p0, Lnu/xom/Document;->children:[Lnu/xom/Node;

    aput-object p1, v0, v1

    invoke-virtual {p1, p0}, Lnu/xom/Element;->setParent(Lnu/xom/ParentNode;)V

    goto :goto_0
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

    invoke-virtual {p0}, Lnu/xom/Document;->getRootElement()Lnu/xom/Element;

    move-result-object v1

    invoke-virtual {v1}, Lnu/xom/Element;->getQualifiedName()Ljava/lang/String;

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
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "<?xml version=\"1.0\"?>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lnu/xom/Document;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lnu/xom/Document;->getChild(I)Lnu/xom/Node;

    move-result-object v2

    invoke-virtual {v2}, Lnu/xom/Node;->toXML()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
