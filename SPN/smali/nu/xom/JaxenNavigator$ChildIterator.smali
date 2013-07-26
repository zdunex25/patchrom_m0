.class Lnu/xom/JaxenNavigator$ChildIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnu/xom/JaxenNavigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChildIterator"
.end annotation


# instance fields
.field private final parent:Lnu/xom/ParentNode;

.field private final xomCount:I

.field private xomIndex:I


# direct methods
.method constructor <init>(Lnu/xom/ParentNode;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnu/xom/JaxenNavigator$ChildIterator;->xomIndex:I

    iput-object p1, p0, Lnu/xom/JaxenNavigator$ChildIterator;->parent:Lnu/xom/ParentNode;

    invoke-virtual {p1}, Lnu/xom/ParentNode;->getChildCount()I

    move-result v0

    iput v0, p0, Lnu/xom/JaxenNavigator$ChildIterator;->xomCount:I

    return-void
.end method

.method constructor <init>(Lnu/xom/ParentNode;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnu/xom/JaxenNavigator$ChildIterator;->xomIndex:I

    iput-object p1, p0, Lnu/xom/JaxenNavigator$ChildIterator;->parent:Lnu/xom/ParentNode;

    iput p2, p0, Lnu/xom/JaxenNavigator$ChildIterator;->xomIndex:I

    invoke-virtual {p1}, Lnu/xom/ParentNode;->getChildCount()I

    move-result v0

    iput v0, p0, Lnu/xom/JaxenNavigator$ChildIterator;->xomCount:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    const/4 v3, 0x1

    iget v0, p0, Lnu/xom/JaxenNavigator$ChildIterator;->xomIndex:I

    move v1, v0

    :goto_0
    iget v0, p0, Lnu/xom/JaxenNavigator$ChildIterator;->xomCount:I

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lnu/xom/JaxenNavigator$ChildIterator;->parent:Lnu/xom/ParentNode;

    invoke-virtual {v0, v1}, Lnu/xom/ParentNode;->getChild(I)Lnu/xom/Node;

    move-result-object v0

    invoke-virtual {v0}, Lnu/xom/Node;->isText()Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v0, Lnu/xom/Text;

    invoke-virtual {v0}, Lnu/xom/Text;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    :goto_1
    return v0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public next()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lnu/xom/JaxenNavigator$ChildIterator;->parent:Lnu/xom/ParentNode;

    iget v1, p0, Lnu/xom/JaxenNavigator$ChildIterator;->xomIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnu/xom/JaxenNavigator$ChildIterator;->xomIndex:I

    invoke-virtual {v0, v1}, Lnu/xom/ParentNode;->getChild(I)Lnu/xom/Node;

    move-result-object v0

    invoke-virtual {v0}, Lnu/xom/Node;->isText()Z

    move-result v1

    if-eqz v1, :cond_4

    check-cast v0, Lnu/xom/Text;

    invoke-virtual {v0}, Lnu/xom/Text;->isEmpty()Z

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget v0, p0, Lnu/xom/JaxenNavigator$ChildIterator;->xomIndex:I

    iget v3, p0, Lnu/xom/JaxenNavigator$ChildIterator;->xomCount:I

    if-ge v0, v3, :cond_0

    iget-object v0, p0, Lnu/xom/JaxenNavigator$ChildIterator;->parent:Lnu/xom/ParentNode;

    iget v3, p0, Lnu/xom/JaxenNavigator$ChildIterator;->xomIndex:I

    invoke-virtual {v0, v3}, Lnu/xom/ParentNode;->getChild(I)Lnu/xom/Node;

    move-result-object v0

    invoke-virtual {v0}, Lnu/xom/Node;->isText()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lnu/xom/JaxenNavigator$ChildIterator;->next()Ljava/lang/Object;

    move-result-object v0

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    iget v3, p0, Lnu/xom/JaxenNavigator$ChildIterator;->xomIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lnu/xom/JaxenNavigator$ChildIterator;->xomIndex:I

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_5

    check-cast v0, Lnu/xom/Text;

    invoke-virtual {v0}, Lnu/xom/Text;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lnu/xom/Node;->isDocType()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lnu/xom/JaxenNavigator$ChildIterator;->next()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
