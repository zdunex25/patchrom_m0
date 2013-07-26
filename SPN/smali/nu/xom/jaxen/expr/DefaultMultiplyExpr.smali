.class Lnu/xom/jaxen/expr/DefaultMultiplyExpr;
.super Lnu/xom/jaxen/expr/DefaultMultiplicativeExpr;


# static fields
.field private static final serialVersionUID:J = 0x264dae60f5397a8dL


# direct methods
.method constructor <init>(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/Expr;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnu/xom/jaxen/expr/DefaultMultiplicativeExpr;-><init>(Lnu/xom/jaxen/expr/Expr;Lnu/xom/jaxen/expr/Expr;)V

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

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultMultiplyExpr;->getLHS()Lnu/xom/jaxen/expr/Expr;

    move-result-object v0

    invoke-interface {v0, p1}, Lnu/xom/jaxen/expr/Expr;->evaluate(Lnu/xom/jaxen/Context;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lnu/xom/jaxen/Context;->getNavigator()Lnu/xom/jaxen/Navigator;

    move-result-object v1

    invoke-static {v0, v1}, Lnu/xom/jaxen/function/NumberFunction;->evaluate(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultMultiplyExpr;->getRHS()Lnu/xom/jaxen/expr/Expr;

    move-result-object v1

    invoke-interface {v1, p1}, Lnu/xom/jaxen/expr/Expr;->evaluate(Lnu/xom/jaxen/Context;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lnu/xom/jaxen/Context;->getNavigator()Lnu/xom/jaxen/Navigator;

    move-result-object v2

    invoke-static {v1, v2}, Lnu/xom/jaxen/function/NumberFunction;->evaluate(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    mul-double/2addr v0, v2

    new-instance v2, Ljava/lang/Double;

    invoke-direct {v2, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object v2
.end method

.method public getOperator()Ljava/lang/String;
    .locals 1

    const-string v0, "*"

    return-object v0
.end method
