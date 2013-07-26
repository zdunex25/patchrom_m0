.class public abstract Lnu/xom/jaxen/expr/DefaultExpr;
.super Ljava/lang/Object;

# interfaces
.implements Lnu/xom/jaxen/expr/Expr;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1

    instance-of v0, p0, Ljava/util/Iterator;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Iterator;

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lnu/xom/jaxen/util/SingleObjectIterator;

    invoke-direct {v0, p0}, Lnu/xom/jaxen/util/SingleObjectIterator;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static convertToList(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/List;

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lnu/xom/jaxen/util/SingletonList;

    invoke-direct {v0, p0}, Lnu/xom/jaxen/util/SingletonList;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public simplify()Lnu/xom/jaxen/expr/Expr;
    .locals 0

    return-object p0
.end method
