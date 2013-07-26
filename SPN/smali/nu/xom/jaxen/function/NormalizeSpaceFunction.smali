.class public Lnu/xom/jaxen/function/NormalizeSpaceFunction;
.super Ljava/lang/Object;

# interfaces
.implements Lnu/xom/jaxen/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static evaluate(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Ljava/lang/String;
    .locals 9

    const/4 v7, 0x0

    invoke-static {p0, p1}, Lnu/xom/jaxen/function/StringFunction;->evaluate(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    move v1, v7

    move v2, v7

    move v3, v7

    move v4, v7

    :cond_0
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_3

    aget-char v5, v0, v1

    invoke-static {v5}, Lnu/xom/jaxen/function/NormalizeSpaceFunction;->isXMLSpace(C)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v2, :cond_1

    add-int/lit8 v5, v4, 0x1

    const/16 v6, 0x20

    aput-char v6, v0, v4

    move v4, v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    array-length v5, v0

    if-ge v1, v5, :cond_0

    aget-char v5, v0, v1

    invoke-static {v5}, Lnu/xom/jaxen/function/NormalizeSpaceFunction;->isXMLSpace(C)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v4, 0x1

    add-int/lit8 v3, v1, 0x1

    aget-char v1, v0, v1

    aput-char v1, v0, v4

    const/4 v1, 0x1

    move v4, v2

    move v8, v1

    move v1, v3

    move v3, v2

    move v2, v8

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v7, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method

.method private static isXMLSpace(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public call(Lnu/xom/jaxen/Context;Ljava/util/List;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/FunctionCallException;
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lnu/xom/jaxen/Context;->getNodeSet()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lnu/xom/jaxen/Context;->getNavigator()Lnu/xom/jaxen/Navigator;

    move-result-object v1

    invoke-static {v0, v1}, Lnu/xom/jaxen/function/NormalizeSpaceFunction;->evaluate(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lnu/xom/jaxen/Context;->getNavigator()Lnu/xom/jaxen/Navigator;

    move-result-object v1

    invoke-static {v0, v1}, Lnu/xom/jaxen/function/NormalizeSpaceFunction;->evaluate(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lnu/xom/jaxen/FunctionCallException;

    const-string v1, "normalize-space() cannot have more than one argument"

    invoke-direct {v0, v1}, Lnu/xom/jaxen/FunctionCallException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
