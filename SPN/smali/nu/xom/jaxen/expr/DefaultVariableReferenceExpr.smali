.class Lnu/xom/jaxen/expr/DefaultVariableReferenceExpr;
.super Lnu/xom/jaxen/expr/DefaultExpr;

# interfaces
.implements Lnu/xom/jaxen/expr/VariableReferenceExpr;


# static fields
.field private static final serialVersionUID:J = 0x7a91e80171a2ca52L


# instance fields
.field private localName:Ljava/lang/String;

.field private prefix:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lnu/xom/jaxen/expr/DefaultExpr;-><init>()V

    iput-object p1, p0, Lnu/xom/jaxen/expr/DefaultVariableReferenceExpr;->prefix:Ljava/lang/String;

    iput-object p2, p0, Lnu/xom/jaxen/expr/DefaultVariableReferenceExpr;->localName:Ljava/lang/String;

    return-void
.end method

.method private getQName()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    iget-object v1, p0, Lnu/xom/jaxen/expr/DefaultVariableReferenceExpr;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnu/xom/jaxen/expr/DefaultVariableReferenceExpr;->localName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lnu/xom/jaxen/expr/DefaultVariableReferenceExpr;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lnu/xom/jaxen/expr/DefaultVariableReferenceExpr;->localName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public evaluate(Lnu/xom/jaxen/Context;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/UnresolvableException;
        }
    .end annotation

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultVariableReferenceExpr;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnu/xom/jaxen/Context;->translateNamespacePrefixToUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnu/xom/jaxen/expr/DefaultVariableReferenceExpr;->prefix:Ljava/lang/String;

    iget-object v2, p0, Lnu/xom/jaxen/expr/DefaultVariableReferenceExpr;->localName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lnu/xom/jaxen/Context;->getVariableValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnu/xom/jaxen/expr/DefaultVariableReferenceExpr;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-direct {p0}, Lnu/xom/jaxen/expr/DefaultVariableReferenceExpr;->getQName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVariableName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnu/xom/jaxen/expr/DefaultVariableReferenceExpr;->localName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[(DefaultVariableReferenceExpr): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-direct {p0}, Lnu/xom/jaxen/expr/DefaultVariableReferenceExpr;->getQName()Ljava/lang/String;

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
