.class public Lnu/xom/jaxen/util/PrecedingAxisIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private ancestorOrSelf:Ljava/util/Iterator;

.field private childrenOrSelf:Ljava/util/ListIterator;

.field private navigator:Lnu/xom/jaxen/Navigator;

.field private precedingSibling:Ljava/util/Iterator;

.field private stack:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/UnsupportedAxisException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnu/xom/jaxen/util/PrecedingAxisIterator;->navigator:Lnu/xom/jaxen/Navigator;

    invoke-interface {p2, p1}, Lnu/xom/jaxen/Navigator;->getAncestorOrSelfAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lnu/xom/jaxen/util/PrecedingAxisIterator;->ancestorOrSelf:Ljava/util/Iterator;

    sget-object v0, Lnu/xom/jaxen/JaxenConstants;->EMPTY_ITERATOR:Ljava/util/Iterator;

    iput-object v0, p0, Lnu/xom/jaxen/util/PrecedingAxisIterator;->precedingSibling:Ljava/util/Iterator;

    sget-object v0, Lnu/xom/jaxen/JaxenConstants;->EMPTY_LIST_ITERATOR:Ljava/util/ListIterator;

    iput-object v0, p0, Lnu/xom/jaxen/util/PrecedingAxisIterator;->childrenOrSelf:Ljava/util/ListIterator;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnu/xom/jaxen/util/PrecedingAxisIterator;->stack:Ljava/util/ArrayList;

    return-void
.end method

.method private childrenOrSelf(Ljava/lang/Object;)Ljava/util/ListIterator;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lnu/xom/jaxen/util/PrecedingAxisIterator;->navigator:Lnu/xom/jaxen/Navigator;

    invoke-interface {v1, p1}, Lnu/xom/jaxen/Navigator;->getChildAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lnu/xom/jaxen/UnsupportedAxisException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lnu/xom/jaxen/JaxenRuntimeException;

    invoke-direct {v1, v0}, Lnu/xom/jaxen/JaxenRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;
    :try_end_1
    .catch Lnu/xom/jaxen/UnsupportedAxisException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    const/4 v3, 0x1

    :goto_0
    :try_start_0
    iget-object v0, p0, Lnu/xom/jaxen/util/PrecedingAxisIterator;->childrenOrSelf:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lnu/xom/jaxen/util/PrecedingAxisIterator;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    iget-object v0, p0, Lnu/xom/jaxen/util/PrecedingAxisIterator;->precedingSibling:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnu/xom/jaxen/util/PrecedingAxisIterator;->ancestorOrSelf:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_0
    iget-object v0, p0, Lnu/xom/jaxen/util/PrecedingAxisIterator;->ancestorOrSelf:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lnu/xom/jaxen/util/PrecedingSiblingAxisIterator;

    iget-object v2, p0, Lnu/xom/jaxen/util/PrecedingAxisIterator;->navigator:Lnu/xom/jaxen/Navigator;

    invoke-direct {v1, v0, v2}, Lnu/xom/jaxen/util/PrecedingSiblingAxisIterator;-><init>(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)V

    iput-object v1, p0, Lnu/xom/jaxen/util/PrecedingAxisIterator;->precedingSibling:Ljava/util/Iterator;
    :try_end_0
    .catch Lnu/xom/jaxen/UnsupportedAxisException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lnu/xom/jaxen/JaxenRuntimeException;

    invoke-direct {v1, v0}, Lnu/xom/jaxen/JaxenRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :try_start_1
    iget-object v0, p0, Lnu/xom/jaxen/util/PrecedingAxisIterator;->precedingSibling:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lnu/xom/jaxen/util/PrecedingAxisIterator;->childrenOrSelf(Ljava/lang/Object;)Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lnu/xom/jaxen/util/PrecedingAxisIterator;->childrenOrSelf:Ljava/util/ListIterator;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnu/xom/jaxen/util/PrecedingAxisIterator;->stack:Ljava/util/ArrayList;

    iget-object v1, p0, Lnu/xom/jaxen/util/PrecedingAxisIterator;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ListIterator;

    iput-object v0, p0, Lnu/xom/jaxen/util/PrecedingAxisIterator;->childrenOrSelf:Ljava/util/ListIterator;
    :try_end_1
    .catch Lnu/xom/jaxen/UnsupportedAxisException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_2
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    invoke-virtual {p0}, Lnu/xom/jaxen/util/PrecedingAxisIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lnu/xom/jaxen/util/PrecedingAxisIterator;->childrenOrSelf:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lnu/xom/jaxen/util/PrecedingAxisIterator;->childrenOrSelf:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnu/xom/jaxen/util/PrecedingAxisIterator;->stack:Ljava/util/ArrayList;

    iget-object v2, p0, Lnu/xom/jaxen/util/PrecedingAxisIterator;->childrenOrSelf:Ljava/util/ListIterator;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lnu/xom/jaxen/util/PrecedingAxisIterator;->childrenOrSelf(Ljava/lang/Object;)Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lnu/xom/jaxen/util/PrecedingAxisIterator;->childrenOrSelf:Ljava/util/ListIterator;

    goto :goto_0

    :cond_1
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
