.class Lnu/xom/JaxenNavigator$NamedChildIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnu/xom/JaxenNavigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NamedChildIterator"
.end annotation


# instance fields
.field private final URI:Ljava/lang/String;

.field private index:I

.field private final localName:Ljava/lang/String;

.field private next:Lnu/xom/Element;

.field private final parent:Lnu/xom/ParentNode;

.field private final xomCount:I


# direct methods
.method constructor <init>(Lnu/xom/ParentNode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lnu/xom/JaxenNavigator$NamedChildIterator;->index:I

    iput-object p1, p0, Lnu/xom/JaxenNavigator$NamedChildIterator;->parent:Lnu/xom/ParentNode;

    invoke-virtual {p1}, Lnu/xom/ParentNode;->getChildCount()I

    move-result v0

    iput v0, p0, Lnu/xom/JaxenNavigator$NamedChildIterator;->xomCount:I

    iput-object p2, p0, Lnu/xom/JaxenNavigator$NamedChildIterator;->localName:Ljava/lang/String;

    if-nez p4, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lnu/xom/JaxenNavigator$NamedChildIterator;->URI:Ljava/lang/String;

    :goto_0
    invoke-direct {p0}, Lnu/xom/JaxenNavigator$NamedChildIterator;->findNext()V

    return-void

    :cond_0
    iput-object p4, p0, Lnu/xom/JaxenNavigator$NamedChildIterator;->URI:Ljava/lang/String;

    goto :goto_0
.end method

.method private findNext()V
    .locals 3

    :cond_0
    iget v0, p0, Lnu/xom/JaxenNavigator$NamedChildIterator;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnu/xom/JaxenNavigator$NamedChildIterator;->index:I

    iget v1, p0, Lnu/xom/JaxenNavigator$NamedChildIterator;->xomCount:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lnu/xom/JaxenNavigator$NamedChildIterator;->parent:Lnu/xom/ParentNode;

    iget v1, p0, Lnu/xom/JaxenNavigator$NamedChildIterator;->index:I

    invoke-virtual {v0, v1}, Lnu/xom/ParentNode;->getChild(I)Lnu/xom/Node;

    move-result-object v0

    invoke-virtual {v0}, Lnu/xom/Node;->isElement()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lnu/xom/Element;

    invoke-virtual {v0}, Lnu/xom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnu/xom/JaxenNavigator$NamedChildIterator;->URI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lnu/xom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnu/xom/JaxenNavigator$NamedChildIterator;->localName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lnu/xom/JaxenNavigator$NamedChildIterator;->next:Lnu/xom/Element;

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lnu/xom/JaxenNavigator$NamedChildIterator;->next:Lnu/xom/Element;

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lnu/xom/JaxenNavigator$NamedChildIterator;->next:Lnu/xom/Element;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnu/xom/JaxenNavigator$NamedChildIterator;->next:Lnu/xom/Element;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lnu/xom/JaxenNavigator$NamedChildIterator;->next:Lnu/xom/Element;

    invoke-direct {p0}, Lnu/xom/JaxenNavigator$NamedChildIterator;->findNext()V

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
