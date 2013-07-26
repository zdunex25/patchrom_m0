.class public Lnu/xom/jaxen/expr/DefaultXPathExpr;
.super Ljava/lang/Object;

# interfaces
.implements Lnu/xom/jaxen/expr/XPathExpr;


# static fields
.field private static final serialVersionUID:J = 0x29bd302d14050c28L


# instance fields
.field private rootExpr:Lnu/xom/jaxen/expr/Expr;


# direct methods
.method public constructor <init>(Lnu/xom/jaxen/expr/Expr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnu/xom/jaxen/expr/DefaultXPathExpr;->rootExpr:Lnu/xom/jaxen/expr/Expr;

    return-void
.end method


# virtual methods
.method public asList(Lnu/xom/jaxen/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultXPathExpr;->getRootExpr()Lnu/xom/jaxen/expr/Expr;

    move-result-object v0

    invoke-interface {v0, p1}, Lnu/xom/jaxen/expr/Expr;->evaluate(Lnu/xom/jaxen/Context;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lnu/xom/jaxen/expr/DefaultExpr;->convertToList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRootExpr()Lnu/xom/jaxen/expr/Expr;
    .locals 1

    iget-object v0, p0, Lnu/xom/jaxen/expr/DefaultXPathExpr;->rootExpr:Lnu/xom/jaxen/expr/Expr;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultXPathExpr;->getRootExpr()Lnu/xom/jaxen/expr/Expr;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/expr/Expr;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setRootExpr(Lnu/xom/jaxen/expr/Expr;)V
    .locals 0

    iput-object p1, p0, Lnu/xom/jaxen/expr/DefaultXPathExpr;->rootExpr:Lnu/xom/jaxen/expr/Expr;

    return-void
.end method

.method public simplify()V
    .locals 1

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultXPathExpr;->getRootExpr()Lnu/xom/jaxen/expr/Expr;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/expr/Expr;->simplify()Lnu/xom/jaxen/expr/Expr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnu/xom/jaxen/expr/DefaultXPathExpr;->setRootExpr(Lnu/xom/jaxen/expr/Expr;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[(DefaultXPath): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultXPathExpr;->getRootExpr()Lnu/xom/jaxen/expr/Expr;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
