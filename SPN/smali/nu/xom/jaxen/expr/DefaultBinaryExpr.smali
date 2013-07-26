.class abstract Lnu/xom/jaxen/expr/DefaultBinaryExpr;
.super Lnu/xom/jaxen/expr/DefaultExpr;

# interfaces
.implements Lnu/xom/jaxen/expr/BinaryExpr;


# instance fields
.field private lhs:Lnu/xom/jaxen/expr/Expr;

.field private rhs:Lnu/xom/jaxen/expr/Expr;


# direct methods
.method constructor <init>(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/Expr;)V
    .locals 0

    invoke-direct {p0}, Lnu/xom/jaxen/expr/DefaultExpr;-><init>()V

    iput-object p1, p0, Lnu/xom/jaxen/expr/DefaultBinaryExpr;->lhs:Lnu/xom/jaxen/expr/Expr;

    iput-object p2, p0, Lnu/xom/jaxen/expr/DefaultBinaryExpr;->rhs:Lnu/xom/jaxen/expr/Expr;

    return-void
.end method


# virtual methods
.method public getLHS()Lnu/xom/jaxen/expr/Expr;
    .locals 1

    iget-object v0, p0, Lnu/xom/jaxen/expr/DefaultBinaryExpr;->lhs:Lnu/xom/jaxen/expr/Expr;

    return-object v0
.end method

.method public abstract getOperator()Ljava/lang/String;
.end method

.method public getRHS()Lnu/xom/jaxen/expr/Expr;
    .locals 1

    iget-object v0, p0, Lnu/xom/jaxen/expr/DefaultBinaryExpr;->rhs:Lnu/xom/jaxen/expr/Expr;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultBinaryExpr;->getLHS()Lnu/xom/jaxen/expr/Expr;

    move-result-object v1

    invoke-interface {v1}, Lnu/xom/jaxen/expr/Expr;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultBinaryExpr;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultBinaryExpr;->getRHS()Lnu/xom/jaxen/expr/Expr;

    move-result-object v1

    invoke-interface {v1}, Lnu/xom/jaxen/expr/Expr;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setLHS(Lnu/xom/jaxen/expr/Expr;)V
    .locals 0

    iput-object p1, p0, Lnu/xom/jaxen/expr/DefaultBinaryExpr;->lhs:Lnu/xom/jaxen/expr/Expr;

    return-void
.end method

.method public setRHS(Lnu/xom/jaxen/expr/Expr;)V
    .locals 0

    iput-object p1, p0, Lnu/xom/jaxen/expr/DefaultBinaryExpr;->rhs:Lnu/xom/jaxen/expr/Expr;

    return-void
.end method

.method public simplify()Lnu/xom/jaxen/expr/Expr;
    .locals 1

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultBinaryExpr;->getLHS()Lnu/xom/jaxen/expr/Expr;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/expr/Expr;->simplify()Lnu/xom/jaxen/expr/Expr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnu/xom/jaxen/expr/DefaultBinaryExpr;->setLHS(Lnu/xom/jaxen/expr/Expr;)V

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultBinaryExpr;->getRHS()Lnu/xom/jaxen/expr/Expr;

    move-result-object v0

    invoke-interface {v0}, Lnu/xom/jaxen/expr/Expr;->simplify()Lnu/xom/jaxen/expr/Expr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnu/xom/jaxen/expr/DefaultBinaryExpr;->setRHS(Lnu/xom/jaxen/expr/Expr;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultBinaryExpr;->getLHS()Lnu/xom/jaxen/expr/Expr;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultBinaryExpr;->getRHS()Lnu/xom/jaxen/expr/Expr;

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
