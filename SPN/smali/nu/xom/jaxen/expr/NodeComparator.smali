.class Lnu/xom/jaxen/expr/NodeComparator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private navigator:Lnu/xom/jaxen/Navigator;


# direct methods
.method constructor <init>(Lnu/xom/jaxen/Navigator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnu/xom/jaxen/expr/NodeComparator;->navigator:Lnu/xom/jaxen/Navigator;

    return-void
.end method

.method private compareSiblings(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/UnsupportedAxisException;
        }
    .end annotation

    iget-object v0, p0, Lnu/xom/jaxen/expr/NodeComparator;->navigator:Lnu/xom/jaxen/Navigator;

    invoke-interface {v0, p1}, Lnu/xom/jaxen/Navigator;->getFollowingSiblingAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getDepth(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/UnsupportedAxisException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move-object v0, p1

    :goto_0
    iget-object v2, p0, Lnu/xom/jaxen/expr/NodeComparator;->navigator:Lnu/xom/jaxen/Navigator;

    invoke-interface {v2, v0}, Lnu/xom/jaxen/Navigator;->getParentNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private isNonChild(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lnu/xom/jaxen/expr/NodeComparator;->navigator:Lnu/xom/jaxen/Navigator;

    invoke-interface {v0, p1}, Lnu/xom/jaxen/Navigator;->isAttribute(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnu/xom/jaxen/expr/NodeComparator;->navigator:Lnu/xom/jaxen/Navigator;

    invoke-interface {v0, p1}, Lnu/xom/jaxen/Navigator;->isNamespace(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 8

    const/4 v4, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lnu/xom/jaxen/expr/NodeComparator;->navigator:Lnu/xom/jaxen/Navigator;

    if-nez v0, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lnu/xom/jaxen/expr/NodeComparator;->isNonChild(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p2}, Lnu/xom/jaxen/expr/NodeComparator;->isNonChild(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lnu/xom/jaxen/expr/NodeComparator;->navigator:Lnu/xom/jaxen/Navigator;

    invoke-interface {v0, p1}, Lnu/xom/jaxen/Navigator;->getParentNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lnu/xom/jaxen/expr/NodeComparator;->navigator:Lnu/xom/jaxen/Navigator;

    invoke-interface {v1, p2}, Lnu/xom/jaxen/Navigator;->getParentNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_2

    iget-object v2, p0, Lnu/xom/jaxen/expr/NodeComparator;->navigator:Lnu/xom/jaxen/Navigator;

    invoke-interface {v2, p1}, Lnu/xom/jaxen/Navigator;->isNamespace(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnu/xom/jaxen/expr/NodeComparator;->navigator:Lnu/xom/jaxen/Navigator;

    invoke-interface {v2, p2}, Lnu/xom/jaxen/Navigator;->isAttribute(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v6

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lnu/xom/jaxen/expr/NodeComparator;->navigator:Lnu/xom/jaxen/Navigator;

    invoke-interface {v2, p2}, Lnu/xom/jaxen/Navigator;->isNamespace(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnu/xom/jaxen/expr/NodeComparator;->navigator:Lnu/xom/jaxen/Navigator;

    invoke-interface {v2, p1}, Lnu/xom/jaxen/Navigator;->isAttribute(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, v1}, Lnu/xom/jaxen/expr/NodeComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I
    :try_end_0
    .catch Lnu/xom/jaxen/UnsupportedAxisException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v5

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-direct {p0, p1}, Lnu/xom/jaxen/expr/NodeComparator;->getDepth(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p2}, Lnu/xom/jaxen/expr/NodeComparator;->getDepth(Ljava/lang/Object;)I

    move-result v1

    move v2, v0

    move-object v0, p1

    :goto_1
    if-le v2, v1, :cond_4

    iget-object v3, p0, Lnu/xom/jaxen/expr/NodeComparator;->navigator:Lnu/xom/jaxen/Navigator;

    invoke-interface {v3, v0}, Lnu/xom/jaxen/Navigator;->getParentNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    if-ne v0, p2, :cond_8

    move v0, v4

    goto :goto_0

    :goto_2
    if-le v3, v2, :cond_5

    iget-object v4, p0, Lnu/xom/jaxen/expr/NodeComparator;->navigator:Lnu/xom/jaxen/Navigator;

    invoke-interface {v4, v1}, Lnu/xom/jaxen/Navigator;->getParentNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_5
    if-ne v1, p1, :cond_7

    move v0, v6

    goto :goto_0

    :cond_6
    move-object v0, v3

    move-object v1, v2

    :goto_3
    iget-object v2, p0, Lnu/xom/jaxen/expr/NodeComparator;->navigator:Lnu/xom/jaxen/Navigator;

    invoke-interface {v2, v1}, Lnu/xom/jaxen/Navigator;->getParentNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lnu/xom/jaxen/expr/NodeComparator;->navigator:Lnu/xom/jaxen/Navigator;

    invoke-interface {v3, v0}, Lnu/xom/jaxen/Navigator;->getParentNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_6

    invoke-direct {p0, v1, v0}, Lnu/xom/jaxen/expr/NodeComparator;->compareSiblings(Ljava/lang/Object;Ljava/lang/Object;)I
    :try_end_1
    .catch Lnu/xom/jaxen/UnsupportedAxisException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move v0, v5

    goto/16 :goto_0

    :cond_7
    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_3

    :cond_8
    move v3, v1

    move-object v1, p2

    goto :goto_2
.end method
