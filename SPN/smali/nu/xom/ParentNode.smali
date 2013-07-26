.class public abstract Lnu/xom/ParentNode;
.super Lnu/xom/Node;


# instance fields
.field actualBaseURI:Ljava/lang/String;

.field childCount:I

.field children:[Lnu/xom/Node;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnu/xom/Node;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnu/xom/ParentNode;->childCount:I

    return-void
.end method

.method private checkCapacity(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lnu/xom/ParentNode;->children:[Lnu/xom/Node;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Lnu/xom/Node;

    iput-object v0, p0, Lnu/xom/ParentNode;->children:[Lnu/xom/Node;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lnu/xom/ParentNode;->children:[Lnu/xom/Node;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lnu/xom/ParentNode;->children:[Lnu/xom/Node;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lnu/xom/Node;

    iget-object v1, p0, Lnu/xom/ParentNode;->children:[Lnu/xom/Node;

    iget-object v2, p0, Lnu/xom/ParentNode;->children:[Lnu/xom/Node;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lnu/xom/ParentNode;->children:[Lnu/xom/Node;

    goto :goto_0
.end method


# virtual methods
.method final _insertChild(Lnu/xom/Node;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lnu/xom/ParentNode;->insertionAllowed(Lnu/xom/Node;I)V

    invoke-virtual {p0, p1, p2}, Lnu/xom/ParentNode;->fastInsertChild(Lnu/xom/Node;I)V

    return-void
.end method

.method public appendChild(Lnu/xom/Node;)V
    .locals 1

    iget v0, p0, Lnu/xom/ParentNode;->childCount:I

    invoke-virtual {p0, p1, v0}, Lnu/xom/ParentNode;->insertChild(Lnu/xom/Node;I)V

    return-void
.end method

.method fastInsertChild(Lnu/xom/Node;I)V
    .locals 4

    iget v0, p0, Lnu/xom/ParentNode;->childCount:I

    if-le p2, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Inserted node at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " after children"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lnu/xom/ParentNode;->childCount:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lnu/xom/ParentNode;->checkCapacity(I)V

    iget v0, p0, Lnu/xom/ParentNode;->childCount:I

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lnu/xom/ParentNode;->children:[Lnu/xom/Node;

    iget-object v1, p0, Lnu/xom/ParentNode;->children:[Lnu/xom/Node;

    add-int/lit8 v2, p2, 0x1

    iget v3, p0, Lnu/xom/ParentNode;->childCount:I

    sub-int/2addr v3, p2

    invoke-static {v0, p2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v0, p0, Lnu/xom/ParentNode;->children:[Lnu/xom/Node;

    aput-object p1, v0, p2

    iget v0, p0, Lnu/xom/ParentNode;->childCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnu/xom/ParentNode;->childCount:I

    invoke-virtual {p1, p0}, Lnu/xom/Node;->setParent(Lnu/xom/ParentNode;)V

    return-void
.end method

.method fillInBaseURI(Lnu/xom/Element;)V
    .locals 3

    const-string v0, ""

    move-object v1, p1

    :goto_0
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lnu/xom/ParentNode;->getActualBaseURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lnu/xom/ParentNode;->getParent()Lnu/xom/ParentNode;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lnu/xom/Element;->setActualBaseURI(Ljava/lang/String;)V

    return-void
.end method

.method final findActualBaseURI()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    :cond_0
    invoke-virtual {v0}, Lnu/xom/ParentNode;->getActualBaseURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lnu/xom/ParentNode;->getParent()Lnu/xom/ParentNode;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method getActualBaseURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnu/xom/ParentNode;->actualBaseURI:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnu/xom/ParentNode;->actualBaseURI:Ljava/lang/String;

    goto :goto_0
.end method

.method public getChild(I)Lnu/xom/Node;
    .locals 2

    iget-object v0, p0, Lnu/xom/ParentNode;->children:[Lnu/xom/Node;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "This node has no children"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lnu/xom/ParentNode;->children:[Lnu/xom/Node;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    iget v0, p0, Lnu/xom/ParentNode;->childCount:I

    return v0
.end method

.method public indexOf(Lnu/xom/Node;)I
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lnu/xom/ParentNode;->children:[Lnu/xom/Node;

    if-nez v0, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lnu/xom/ParentNode;->childCount:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lnu/xom/ParentNode;->children:[Lnu/xom/Node;

    aget-object v1, v1, v0

    if-eq p1, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public insertChild(Lnu/xom/Node;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lnu/xom/ParentNode;->_insertChild(Lnu/xom/Node;I)V

    return-void
.end method

.method abstract insertionAllowed(Lnu/xom/Node;I)V
.end method

.method public removeChild(I)Lnu/xom/Node;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v1, p0, Lnu/xom/ParentNode;->children:[Lnu/xom/Node;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "This node has no children"

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lnu/xom/ParentNode;->children:[Lnu/xom/Node;

    aget-object v2, v1, p1

    invoke-virtual {v2}, Lnu/xom/Node;->isElement()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v2

    check-cast v0, Lnu/xom/Element;

    move-object v1, v0

    invoke-virtual {p0, v1}, Lnu/xom/ParentNode;->fillInBaseURI(Lnu/xom/Element;)V

    :cond_1
    iget v1, p0, Lnu/xom/ParentNode;->childCount:I

    sub-int/2addr v1, p1

    sub-int/2addr v1, v6

    if-lez v1, :cond_2

    iget-object v3, p0, Lnu/xom/ParentNode;->children:[Lnu/xom/Node;

    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Lnu/xom/ParentNode;->children:[Lnu/xom/Node;

    invoke-static {v3, v4, v5, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget v1, p0, Lnu/xom/ParentNode;->childCount:I

    sub-int/2addr v1, v6

    iput v1, p0, Lnu/xom/ParentNode;->childCount:I

    iget-object v1, p0, Lnu/xom/ParentNode;->children:[Lnu/xom/Node;

    iget v3, p0, Lnu/xom/ParentNode;->childCount:I

    aput-object v7, v1, v3

    invoke-virtual {v2, v7}, Lnu/xom/Node;->setParent(Lnu/xom/ParentNode;)V

    return-object v2
.end method

.method public removeChild(Lnu/xom/Node;)Lnu/xom/Node;
    .locals 3

    iget-object v1, p0, Lnu/xom/ParentNode;->children:[Lnu/xom/Node;

    if-nez v1, :cond_0

    new-instance v1, Lnu/xom/NoSuchChildException;

    const-string v2, "Child does not belong to this node"

    invoke-direct {v1, v2}, Lnu/xom/NoSuchChildException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0, p1}, Lnu/xom/ParentNode;->indexOf(Lnu/xom/Node;)I

    move-result v2

    const/4 v1, -0x1

    if-ne v2, v1, :cond_1

    new-instance v1, Lnu/xom/NoSuchChildException;

    const-string v2, "Child does not belong to this node"

    invoke-direct {v1, v2}, Lnu/xom/NoSuchChildException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p1}, Lnu/xom/Node;->isElement()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, p1

    check-cast v0, Lnu/xom/Element;

    move-object v1, v0

    invoke-virtual {p0, v1}, Lnu/xom/ParentNode;->fillInBaseURI(Lnu/xom/Element;)V

    :cond_2
    invoke-virtual {p0, v2}, Lnu/xom/ParentNode;->removeChild(I)Lnu/xom/Node;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lnu/xom/Node;->setParent(Lnu/xom/ParentNode;)V

    return-object p1
.end method

.method public replaceChild(Lnu/xom/Node;Lnu/xom/Node;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Tried to replace null child"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Tried to replace child with null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lnu/xom/ParentNode;->children:[Lnu/xom/Node;

    if-nez v0, :cond_2

    new-instance v0, Lnu/xom/NoSuchChildException;

    const-string v1, "Reference node is not a child of this node."

    invoke-direct {v0, v1}, Lnu/xom/NoSuchChildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0, p1}, Lnu/xom/ParentNode;->indexOf(Lnu/xom/Node;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    new-instance v0, Lnu/xom/NoSuchChildException;

    const-string v1, "Reference node is not a child of this node."

    invoke-direct {v0, v1}, Lnu/xom/NoSuchChildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-ne p1, p2, :cond_4

    :goto_0
    return-void

    :cond_4
    invoke-virtual {p0, p2, v0}, Lnu/xom/ParentNode;->insertionAllowed(Lnu/xom/Node;I)V

    invoke-virtual {p0, v0}, Lnu/xom/ParentNode;->removeChild(I)Lnu/xom/Node;

    invoke-virtual {p0, p2, v0}, Lnu/xom/ParentNode;->insertChild(Lnu/xom/Node;I)V

    goto :goto_0
.end method

.method setActualBaseURI(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_1

    const-string v0, ""

    :goto_0
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lnu/xom/Verifier;->checkAbsoluteURI(Ljava/lang/String;)V

    :cond_0
    iput-object v0, p0, Lnu/xom/ParentNode;->actualBaseURI:Ljava/lang/String;

    return-void

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public abstract setBaseURI(Ljava/lang/String;)V
.end method
