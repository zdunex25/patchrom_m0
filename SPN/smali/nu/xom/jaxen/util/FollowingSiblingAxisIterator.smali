.class public Lnu/xom/jaxen/util/FollowingSiblingAxisIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private contextNode:Ljava/lang/Object;

.field private navigator:Lnu/xom/jaxen/Navigator;

.field private siblingIter:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/UnsupportedAxisException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnu/xom/jaxen/util/FollowingSiblingAxisIterator;->contextNode:Ljava/lang/Object;

    iput-object p2, p0, Lnu/xom/jaxen/util/FollowingSiblingAxisIterator;->navigator:Lnu/xom/jaxen/Navigator;

    invoke-direct {p0}, Lnu/xom/jaxen/util/FollowingSiblingAxisIterator;->init()V

    return-void
.end method

.method private init()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/UnsupportedAxisException;
        }
    .end annotation

    iget-object v0, p0, Lnu/xom/jaxen/util/FollowingSiblingAxisIterator;->navigator:Lnu/xom/jaxen/Navigator;

    iget-object v1, p0, Lnu/xom/jaxen/util/FollowingSiblingAxisIterator;->contextNode:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lnu/xom/jaxen/Navigator;->getParentNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lnu/xom/jaxen/util/FollowingSiblingAxisIterator;->navigator:Lnu/xom/jaxen/Navigator;

    invoke-interface {v1, v0}, Lnu/xom/jaxen/Navigator;->getChildAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lnu/xom/jaxen/util/FollowingSiblingAxisIterator;->siblingIter:Ljava/util/Iterator;

    :cond_0
    iget-object v0, p0, Lnu/xom/jaxen/util/FollowingSiblingAxisIterator;->siblingIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnu/xom/jaxen/util/FollowingSiblingAxisIterator;->siblingIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lnu/xom/jaxen/util/FollowingSiblingAxisIterator;->contextNode:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lnu/xom/jaxen/JaxenConstants;->EMPTY_ITERATOR:Ljava/util/Iterator;

    iput-object v0, p0, Lnu/xom/jaxen/util/FollowingSiblingAxisIterator;->siblingIter:Ljava/util/Iterator;

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lnu/xom/jaxen/util/FollowingSiblingAxisIterator;->siblingIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    iget-object v0, p0, Lnu/xom/jaxen/util/FollowingSiblingAxisIterator;->siblingIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
