.class public Lnu/xom/jaxen/function/TranslateFunction;
.super Ljava/lang/Object;

# interfaces
.implements Lnu/xom/jaxen/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static evaluate(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/FunctionCallException;
        }
    .end annotation

    const/4 v9, 0x0

    invoke-static {p0, p3}, Lnu/xom/jaxen/function/StringFunction;->evaluate(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3}, Lnu/xom/jaxen/function/StringFunction;->evaluate(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Lnu/xom/jaxen/function/StringFunction;->evaluate(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Lnu/xom/jaxen/function/TranslateFunction;->toUnicodeCharacters(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lnu/xom/jaxen/function/TranslateFunction;->toUnicodeCharacters(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v1

    array-length v5, v2

    move v6, v9

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, v1, v6

    invoke-interface {v3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    if-ge v6, v5, :cond_1

    aget-object v8, v2, v6

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-static {v0}, Lnu/xom/jaxen/function/TranslateFunction;->toUnicodeCharacters(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    move v4, v9

    :goto_2
    if-ge v4, v2, :cond_5

    aget-object v5, v0, v4

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_3

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isHighSurrogate(C)Z
    .locals 1

    const v0, 0xd800

    if-lt p0, v0, :cond_0

    const v0, 0xdbff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isLowSurrogate(C)Z
    .locals 1

    const v0, 0xdc00

    if-lt p0, v0, :cond_0

    const v0, 0xdfff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static toUnicodeCharacters(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/FunctionCallException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    move v1, v6

    move v2, v6

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lnu/xom/jaxen/function/TranslateFunction;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v4, v1, 0x1

    :try_start_0
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lnu/xom/jaxen/function/TranslateFunction;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lnu/xom/jaxen/FunctionCallException;

    const-string v1, "Mismatched surrogate pair in translate function"

    invoke-direct {v0, v1}, Lnu/xom/jaxen/FunctionCallException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Lnu/xom/jaxen/FunctionCallException;

    const-string v1, "High surrogate without low surrogate at end of string passed to translate function"

    invoke-direct {v0, v1}, Lnu/xom/jaxen/FunctionCallException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    goto :goto_1

    :cond_2
    array-length v1, v0

    if-ne v2, v1, :cond_3

    :goto_2
    return-object v0

    :cond_3
    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v6, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public call(Lnu/xom/jaxen/Context;Ljava/util/List;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/FunctionCallException;
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lnu/xom/jaxen/Context;->getNavigator()Lnu/xom/jaxen/Navigator;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lnu/xom/jaxen/function/TranslateFunction;->evaluate(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lnu/xom/jaxen/FunctionCallException;

    const-string v1, "translate() requires three arguments."

    invoke-direct {v0, v1}, Lnu/xom/jaxen/FunctionCallException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
