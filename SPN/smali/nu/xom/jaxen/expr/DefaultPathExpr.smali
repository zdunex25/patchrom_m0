.class Lnu/xom/jaxen/expr/DefaultPathExpr;
.super Lnu/xom/jaxen/expr/DefaultExpr;

# interfaces
.implements Lnu/xom/jaxen/expr/PathExpr;


# static fields
.field private static final serialVersionUID:J = -0x5b825ca6873be879L


# instance fields
.field private filterExpr:Lnu/xom/jaxen/expr/Expr;

.field private locationPath:Lnu/xom/jaxen/expr/LocationPath;


# direct methods
.method constructor <init>(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/LocationPath;)V
    .locals 0

    invoke-direct {p0}, Lnu/xom/jaxen/expr/DefaultExpr;-><init>()V

    iput-object p1, p0, Lnu/xom/jaxen/expr/DefaultPathExpr;->filterExpr:Lnu/xom/jaxen/expr/Expr;

    iput-object p2, p0, Lnu/xom/jaxen/expr/DefaultPathExpr;->locationPath:Lnu/xom/jaxen/expr/LocationPath;

    return-void
.end method


# virtual methods
.method public evaluate(Lnu/xom/jaxen/Context;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultPathExpr;->getFilterExpr()Lnu/xom/jaxen/expr/Expr;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultPathExpr;->getFilterExpr()Lnu/xom/jaxen/expr/Expr;

    move-result-object v0

    invoke-interface {v0, p1}, Lnu/xom/jaxen/expr/Expr;->evaluate(Lnu/xom/jaxen/Context;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lnu/xom/jaxen/Context;

    invoke-virtual {p1}, Lnu/xom/jaxen/Context;->getContextSupport()Lnu/xom/jaxen/ContextSupport;

    move-result-object v2

    invoke-direct {v1, v2}, Lnu/xom/jaxen/Context;-><init>(Lnu/xom/jaxen/ContextSupport;)V

    invoke-static {v0}, Lnu/xom/jaxen/expr/DefaultPathExpr;->convertToList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnu/xom/jaxen/Context;->setNodeSet(Ljava/util/List;)V

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultPathExpr;->getLocationPath()Lnu/xom/jaxen/expr/LocationPath;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultPathExpr;->getLocationPath()Lnu/xom/jaxen/expr/LocationPath;

    move-result-object v1

    invoke-interface {v1, v0}, Lnu/xom/jaxen/expr/LocationPath;->evaluate(Lnu/xom/jaxen/Context;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getFilterExpr()Lnu/xom/jaxen/expr/Expr;
    .locals 1

    iget-object v0, p0, Lnu/xom/jaxen/expr/DefaultPathExpr;->filterExpr:Lnu/xom/jaxen/expr/Expr;

    return-object v0
.end method

.method public getLocationPath()Lnu/xom/jaxen/expr/LocationPath;
    .locals 1

    iget-object v0, p0, Lnu/xom/jaxen/expr/DefaultPathExpr;->locationPath:Lnu/xom/jaxen/expr/LocationPath;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultPathExpr;->getFilterExpr()Lnu/xom/jaxen/expr/Expr;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultPathExpr;->getFilterExpr()Lnu/xom/jaxen/expr/Expr;

    move-result-object v1

    invoke-interface {v1}, Lnu/xom/jaxen/expr/Expr;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultPathExpr;->getLocationPath()Lnu/xom/jaxen/expr/LocationPath;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultPathExpr;->getLocationPath()Lnu/xom/jaxen/expr/LocationPath;

    move-result-object v1

    invoke-interface {v1}, Lnu/xom/jaxen/expr/LocationPath;->getSteps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultPathExpr;->getLocationPath()Lnu/xom/jaxen/expr/LocationPath;

    move-result-object v1

    invoke-interface {v1}, Lnu/xom/jaxen/expr/LocationPath;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setFilterExpr(Lnu/xom/jaxen/expr/Expr;)V
    .locals 0

    iput-object p1, p0, Lnu/xom/jaxen/expr/DefaultPathExpr;->filterExpr:Lnu/xom/jaxen/expr/Expr;

    return-void
.end method

.method public simplify()Lnu/xom/jaxen/expr/Expr;
    .locals 1

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultPathExpr;->getFilterExpr()Lnu/xom/jaxen/expr/Expr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultPathExpr;->getFilterExpr()Lnu/xom/jaxen/expr/Expr;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/expr/Expr;->simplify()Lnu/xom/jaxen/expr/Expr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnu/xom/jaxen/expr/DefaultPathExpr;->setFilterExpr(Lnu/xom/jaxen/expr/Expr;)V

    :cond_0
    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultPathExpr;->getLocationPath()Lnu/xom/jaxen/expr/LocationPath;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultPathExpr;->getLocationPath()Lnu/xom/jaxen/expr/LocationPath;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/expr/LocationPath;->simplify()Lnu/xom/jaxen/expr/Expr;

    :cond_1
    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultPathExpr;->getFilterExpr()Lnu/xom/jaxen/expr/Expr;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultPathExpr;->getLocationPath()Lnu/xom/jaxen/expr/LocationPath;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultPathExpr;->getLocationPath()Lnu/xom/jaxen/expr/LocationPath;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultPathExpr;->getFilterExpr()Lnu/xom/jaxen/expr/Expr;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultPathExpr;->getFilterExpr()Lnu/xom/jaxen/expr/Expr;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultPathExpr;->getLocationPath()Lnu/xom/jaxen/expr/LocationPath;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, p0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultPathExpr;->getLocationPath()Lnu/xom/jaxen/expr/LocationPath;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[(DefaultPathExpr): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultPathExpr;->getFilterExpr()Lnu/xom/jaxen/expr/Expr;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultPathExpr;->getLocationPath()Lnu/xom/jaxen/expr/LocationPath;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[(DefaultPathExpr): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultPathExpr;->getFilterExpr()Lnu/xom/jaxen/expr/Expr;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
