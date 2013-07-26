.class abstract Lnu/xom/jaxen/expr/DefaultMultiplicativeExpr;
.super Lnu/xom/jaxen/expr/DefaultArithExpr;

# interfaces
.implements Lnu/xom/jaxen/expr/MultiplicativeExpr;


# direct methods
.method constructor <init>(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/Expr;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnu/xom/jaxen/expr/DefaultArithExpr;-><init>(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/Expr;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[(DefaultMultiplicativeExpr): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultMultiplicativeExpr;->getLHS()Lnu/xom/jaxen/expr/Expr;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultMultiplicativeExpr;->getRHS()Lnu/xom/jaxen/expr/Expr;

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
