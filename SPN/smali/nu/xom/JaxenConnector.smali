.class Lnu/xom/JaxenConnector;
.super Lnu/xom/jaxen/BaseXPath;


# static fields
.field private static functionContext:Lnu/xom/jaxen/FunctionContext; = null

.field private static final serialVersionUID:J = 0x7d41d97f678c6eecL


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnu/xom/jaxen/XPathFunctionContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnu/xom/jaxen/XPathFunctionContext;-><init>(Z)V

    sput-object v0, Lnu/xom/JaxenConnector;->functionContext:Lnu/xom/jaxen/FunctionContext;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    new-instance v0, Lnu/xom/JaxenNavigator;

    invoke-direct {v0}, Lnu/xom/JaxenNavigator;-><init>()V

    invoke-direct {p0, p1, v0}, Lnu/xom/jaxen/BaseXPath;-><init>(Ljava/lang/String;Lnu/xom/jaxen/Navigator;)V

    sget-object v0, Lnu/xom/JaxenConnector;->functionContext:Lnu/xom/jaxen/FunctionContext;

    invoke-virtual {p0, v0}, Lnu/xom/JaxenConnector;->setFunctionContext(Lnu/xom/jaxen/FunctionContext;)V

    return-void
.end method


# virtual methods
.method public selectNodes(Ljava/lang/Object;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lnu/xom/jaxen/BaseXPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p0

    instance-of v2, p0, Ljava/util/List;

    if-eqz v2, :cond_1

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v5, :cond_0

    invoke-interface {p0, v5}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :try_start_0
    check-cast p0, Lnu/xom/Node;

    invoke-virtual {p0}, Lnu/xom/Node;->isDocumentFragment()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Lnu/xom/XPathException;

    const-string v2, "Tried to get document node of disconnected subtree"

    invoke-direct {v1, v2}, Lnu/xom/XPathException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v1, Lnu/xom/XPathTypeException;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v0}, Lnu/xom/XPathTypeException;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_2
    return-object v0
.end method
