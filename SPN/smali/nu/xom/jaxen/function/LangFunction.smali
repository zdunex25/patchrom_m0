.class public Lnu/xom/jaxen/function/LangFunction;
.super Ljava/lang/Object;

# interfaces
.implements Lnu/xom/jaxen/Function;


# static fields
.field private static final LANG_LOCALNAME:Ljava/lang/String; = "lang"

.field private static final XMLNS_URI:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static evaluate(Ljava/util/List;Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/UnsupportedAxisException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, p2}, Lnu/xom/jaxen/function/StringFunction;->evaluate(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lnu/xom/jaxen/function/LangFunction;->evaluate(Ljava/lang/Object;Ljava/lang/String;Lnu/xom/jaxen/Navigator;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method private static evaluate(Ljava/lang/Object;Ljava/lang/String;Lnu/xom/jaxen/Navigator;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/UnsupportedAxisException;
        }
    .end annotation

    invoke-interface {p2, p0}, Lnu/xom/jaxen/Navigator;->isElement(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p2, p0}, Lnu/xom/jaxen/Navigator;->getParentNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {p2, v0}, Lnu/xom/jaxen/Navigator;->isElement(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2, v0}, Lnu/xom/jaxen/Navigator;->getAttributeAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "lang"

    invoke-interface {p2, v2}, Lnu/xom/jaxen/Navigator;->getAttributeName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "http://www.w3.org/XML/1998/namespace"

    invoke-interface {p2, v2}, Lnu/xom/jaxen/Navigator;->getAttributeNamespaceUri(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p2, v2}, Lnu/xom/jaxen/Navigator;->getAttributeStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lnu/xom/jaxen/function/LangFunction;->isSublang(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_1
    return v0

    :cond_1
    invoke-interface {p2, v0}, Lnu/xom/jaxen/Navigator;->getParentNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move-object v0, p0

    goto :goto_0
.end method

.method private static isSublang(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method public call(Lnu/xom/jaxen/Context;Ljava/util/List;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/FunctionCallException;
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Lnu/xom/jaxen/FunctionCallException;

    const-string v1, "lang() requires exactly one argument."

    invoke-direct {v0, v1}, Lnu/xom/jaxen/FunctionCallException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Lnu/xom/jaxen/Context;->getNodeSet()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lnu/xom/jaxen/Context;->getNavigator()Lnu/xom/jaxen/Navigator;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lnu/xom/jaxen/function/LangFunction;->evaluate(Ljava/util/List;Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)Ljava/lang/Boolean;
    :try_end_0
    .catch Lnu/xom/jaxen/UnsupportedAxisException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lnu/xom/jaxen/FunctionCallException;

    const-string v2, "Can\'t evaluate lang()"

    invoke-direct {v1, v2, v0}, Lnu/xom/jaxen/FunctionCallException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
