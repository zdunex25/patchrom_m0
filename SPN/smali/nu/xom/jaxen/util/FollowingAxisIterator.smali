.class public Lnu/xom/jaxen/util/FollowingAxisIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private contextNode:Ljava/lang/Object;

.field private currentSibling:Ljava/util/Iterator;

.field private navigator:Lnu/xom/jaxen/Navigator;

.field private siblings:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/UnsupportedAxisException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnu/xom/jaxen/util/FollowingAxisIterator;->contextNode:Ljava/lang/Object;

    iput-object p2, p0, Lnu/xom/jaxen/util/FollowingAxisIterator;->navigator:Lnu/xom/jaxen/Navigator;

    invoke-interface {p2, p1}, Lnu/xom/jaxen/Navigator;->getFollowingSiblingAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lnu/xom/jaxen/util/FollowingAxisIterator;->siblings:Ljava/util/Iterator;

    sget-object v0, Lnu/xom/jaxen/JaxenConstants;->EMPTY_ITERATOR:Ljava/util/Iterator;

    iput-object v0, p0, Lnu/xom/jaxen/util/FollowingAxisIterator;->currentSibling:Ljava/util/Iterator;

    return-void
.end method

.method private goForward()Z
    .locals 3

    :cond_0
    iget-object v0, p0, Lnu/xom/jaxen/util/FollowingAxisIterator;->siblings:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lnu/xom/jaxen/util/FollowingAxisIterator;->goUp()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lnu/xom/jaxen/util/FollowingAxisIterator;->siblings:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lnu/xom/jaxen/util/DescendantOrSelfAxisIterator;

    iget-object v2, p0, Lnu/xom/jaxen/util/FollowingAxisIterator;->navigator:Lnu/xom/jaxen/Navigator;

    invoke-direct {v1, v0, v2}, Lnu/xom/jaxen/util/DescendantOrSelfAxisIterator;-><init>(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)V

    iput-object v1, p0, Lnu/xom/jaxen/util/FollowingAxisIterator;->currentSibling:Ljava/util/Iterator;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private goUp()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lnu/xom/jaxen/util/FollowingAxisIterator;->contextNode:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnu/xom/jaxen/util/FollowingAxisIterator;->navigator:Lnu/xom/jaxen/Navigator;

    iget-object v1, p0, Lnu/xom/jaxen/util/FollowingAxisIterator;->contextNode:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lnu/xom/jaxen/Navigator;->isDocument(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lnu/xom/jaxen/util/FollowingAxisIterator;->navigator:Lnu/xom/jaxen/Navigator;

    iget-object v1, p0, Lnu/xom/jaxen/util/FollowingAxisIterator;->contextNode:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lnu/xom/jaxen/Navigator;->getParentNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lnu/xom/jaxen/util/FollowingAxisIterator;->contextNode:Ljava/lang/Object;

    iget-object v0, p0, Lnu/xom/jaxen/util/FollowingAxisIterator;->contextNode:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnu/xom/jaxen/util/FollowingAxisIterator;->navigator:Lnu/xom/jaxen/Navigator;

    iget-object v1, p0, Lnu/xom/jaxen/util/FollowingAxisIterator;->contextNode:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lnu/xom/jaxen/Navigator;->isDocument(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lnu/xom/jaxen/util/FollowingAxisIterator;->navigator:Lnu/xom/jaxen/Navigator;

    iget-object v1, p0, Lnu/xom/jaxen/util/FollowingAxisIterator;->contextNode:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lnu/xom/jaxen/Navigator;->getFollowingSiblingAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lnu/xom/jaxen/util/FollowingAxisIterator;->siblings:Ljava/util/Iterator;
    :try_end_0
    .catch Lnu/xom/jaxen/UnsupportedAxisException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lnu/xom/jaxen/JaxenRuntimeException;

    invoke-direct {v1, v0}, Lnu/xom/jaxen/JaxenRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    :cond_0
    iget-object v0, p0, Lnu/xom/jaxen/util/FollowingAxisIterator;->currentSibling:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lnu/xom/jaxen/util/FollowingAxisIterator;->goForward()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    invoke-virtual {p0}, Lnu/xom/jaxen/util/FollowingAxisIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lnu/xom/jaxen/util/FollowingAxisIterator;->currentSibling:Ljava/util/Iterator;

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
