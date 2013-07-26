.class public Lnu/xom/jaxen/function/SubstringFunction;
.super Ljava/lang/Object;

# interfaces
.implements Lnu/xom/jaxen/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static unicodeSubstring(Ljava/lang/String;II)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    move v1, v2

    :goto_0
    if-ge v1, p2, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v1, p1, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    const v4, 0xd800

    if-lt v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    if-lt v1, p1, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public call(Lnu/xom/jaxen/Context;Ljava/util/List;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/FunctionCallException;
        }
    .end annotation

    const/4 v9, 0x3

    const/4 v6, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v8, :cond_0

    if-le v0, v9, :cond_1

    :cond_0
    new-instance v0, Lnu/xom/jaxen/FunctionCallException;

    const-string v1, "substring() requires two or three arguments."

    invoke-direct {v0, v1}, Lnu/xom/jaxen/FunctionCallException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lnu/xom/jaxen/Context;->getNavigator()Lnu/xom/jaxen/Navigator;

    move-result-object v1

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1}, Lnu/xom/jaxen/function/StringFunction;->evaluate(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_2
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Lnu/xom/jaxen/function/StringLengthFunction;->evaluate(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I

    move-result v3

    if-nez v3, :cond_3

    const-string v0, ""

    goto :goto_0

    :cond_3
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v1}, Lnu/xom/jaxen/function/NumberFunction;->evaluate(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->isNaN()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v0, ""

    goto :goto_0

    :cond_4
    invoke-static {v4, v1}, Lnu/xom/jaxen/function/RoundFunction;->evaluate(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v4

    sub-int/2addr v4, v6

    if-ne v0, v9, :cond_d

    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v1}, Lnu/xom/jaxen/function/NumberFunction;->evaluate(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->isNaN()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {v5, v1}, Lnu/xom/jaxen/function/RoundFunction;->evaluate(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    :goto_1
    if-gez v1, :cond_6

    const-string v0, ""

    goto :goto_0

    :cond_5
    move v1, v7

    goto :goto_1

    :cond_6
    add-int/2addr v1, v4

    if-ne v0, v8, :cond_c

    move v0, v3

    :goto_2
    if-gez v4, :cond_8

    move v1, v7

    :goto_3
    if-le v0, v3, :cond_9

    move v0, v3

    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_a

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_8
    if-le v4, v3, :cond_b

    const-string v0, ""

    goto :goto_0

    :cond_9
    if-ge v0, v1, :cond_7

    const-string v0, ""

    goto :goto_0

    :cond_a
    invoke-static {v2, v1, v0}, Lnu/xom/jaxen/function/SubstringFunction;->unicodeSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_b
    move v1, v4

    goto :goto_3

    :cond_c
    move v0, v1

    goto :goto_2

    :cond_d
    move v1, v3

    goto :goto_1
.end method
