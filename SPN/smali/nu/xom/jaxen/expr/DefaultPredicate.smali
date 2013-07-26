.class Lnu/xom/jaxen/expr/DefaultPredicate;
.super Ljava/lang/Object;

# interfaces
.implements Lnu/xom/jaxen/expr/Predicate;


# static fields
.field private static final serialVersionUID:J = -0x39747a73879cee6bL


# instance fields
.field private expr:Lnu/xom/jaxen/expr/Expr;


# direct methods
.method constructor <init>(Lnu/xom/jaxen/expr/Expr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lnu/xom/jaxen/expr/DefaultPredicate;->setExpr(Lnu/xom/jaxen/expr/Expr;)V

    return-void
.end method


# virtual methods
.method public evaluate(Lnu/xom/jaxen/Context;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/JaxenException;
        }
    .end annotation

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultPredicate;->getExpr()Lnu/xom/jaxen/expr/Expr;

    move-result-object v0

    invoke-interface {v0, p1}, Lnu/xom/jaxen/expr/Expr;->evaluate(Lnu/xom/jaxen/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getExpr()Lnu/xom/jaxen/expr/Expr;
    .locals 1

    iget-object v0, p0, Lnu/xom/jaxen/expr/DefaultPredicate;->expr:Lnu/xom/jaxen/expr/Expr;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultPredicate;->getExpr()Lnu/xom/jaxen/expr/Expr;

    move-result-object v1

    invoke-interface {v1}, Lnu/xom/jaxen/expr/Expr;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setExpr(Lnu/xom/jaxen/expr/Expr;)V
    .locals 0

    iput-object p1, p0, Lnu/xom/jaxen/expr/DefaultPredicate;->expr:Lnu/xom/jaxen/expr/Expr;

    return-void
.end method

.method public simplify()V
    .locals 1

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultPredicate;->getExpr()Lnu/xom/jaxen/expr/Expr;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/expr/Expr;->simplify()Lnu/xom/jaxen/expr/Expr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnu/xom/jaxen/expr/DefaultPredicate;->setExpr(Lnu/xom/jaxen/expr/Expr;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[(DefaultPredicate): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultPredicate;->getExpr()Lnu/xom/jaxen/expr/Expr;

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
