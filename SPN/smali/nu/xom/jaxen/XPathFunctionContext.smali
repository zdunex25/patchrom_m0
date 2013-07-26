.class public Lnu/xom/jaxen/XPathFunctionContext;
.super Lnu/xom/jaxen/SimpleFunctionContext;


# static fields
.field private static instance:Lnu/xom/jaxen/XPathFunctionContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnu/xom/jaxen/XPathFunctionContext;

    invoke-direct {v0}, Lnu/xom/jaxen/XPathFunctionContext;-><init>()V

    sput-object v0, Lnu/xom/jaxen/XPathFunctionContext;->instance:Lnu/xom/jaxen/XPathFunctionContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnu/xom/jaxen/XPathFunctionContext;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lnu/xom/jaxen/SimpleFunctionContext;-><init>()V

    invoke-direct {p0}, Lnu/xom/jaxen/XPathFunctionContext;->registerXPathFunctions()V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lnu/xom/jaxen/XPathFunctionContext;->registerXSLTFunctions()V

    invoke-direct {p0}, Lnu/xom/jaxen/XPathFunctionContext;->registerExtensionFunctions()V

    :cond_0
    return-void
.end method

.method public static getInstance()Lnu/xom/jaxen/FunctionContext;
    .locals 1

    sget-object v0, Lnu/xom/jaxen/XPathFunctionContext;->instance:Lnu/xom/jaxen/XPathFunctionContext;

    return-object v0
.end method

.method private registerExtensionFunctions()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "evaluate"

    new-instance v1, Lnu/xom/jaxen/function/ext/EvaluateFunction;

    invoke-direct {v1}, Lnu/xom/jaxen/function/ext/EvaluateFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lnu/xom/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lnu/xom/jaxen/Function;)V

    const-string v0, "lower-case"

    new-instance v1, Lnu/xom/jaxen/function/ext/LowerFunction;

    invoke-direct {v1}, Lnu/xom/jaxen/function/ext/LowerFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lnu/xom/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lnu/xom/jaxen/Function;)V

    const-string v0, "upper-case"

    new-instance v1, Lnu/xom/jaxen/function/ext/UpperFunction;

    invoke-direct {v1}, Lnu/xom/jaxen/function/ext/UpperFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lnu/xom/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lnu/xom/jaxen/Function;)V

    const-string v0, "ends-with"

    new-instance v1, Lnu/xom/jaxen/function/ext/EndsWithFunction;

    invoke-direct {v1}, Lnu/xom/jaxen/function/ext/EndsWithFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lnu/xom/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lnu/xom/jaxen/Function;)V

    return-void
.end method

.method private registerXPathFunctions()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "boolean"

    new-instance v1, Lnu/xom/jaxen/function/BooleanFunction;

    invoke-direct {v1}, Lnu/xom/jaxen/function/BooleanFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lnu/xom/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lnu/xom/jaxen/Function;)V

    const-string v0, "ceiling"

    new-instance v1, Lnu/xom/jaxen/function/CeilingFunction;

    invoke-direct {v1}, Lnu/xom/jaxen/function/CeilingFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lnu/xom/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lnu/xom/jaxen/Function;)V

    const-string v0, "concat"

    new-instance v1, Lnu/xom/jaxen/function/ConcatFunction;

    invoke-direct {v1}, Lnu/xom/jaxen/function/ConcatFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lnu/xom/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lnu/xom/jaxen/Function;)V

    const-string v0, "contains"

    new-instance v1, Lnu/xom/jaxen/function/ContainsFunction;

    invoke-direct {v1}, Lnu/xom/jaxen/function/ContainsFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lnu/xom/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lnu/xom/jaxen/Function;)V

    const-string v0, "count"

    new-instance v1, Lnu/xom/jaxen/function/CountFunction;

    invoke-direct {v1}, Lnu/xom/jaxen/function/CountFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lnu/xom/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lnu/xom/jaxen/Function;)V

    const-string v0, "false"

    new-instance v1, Lnu/xom/jaxen/function/FalseFunction;

    invoke-direct {v1}, Lnu/xom/jaxen/function/FalseFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lnu/xom/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lnu/xom/jaxen/Function;)V

    const-string v0, "floor"

    new-instance v1, Lnu/xom/jaxen/function/FloorFunction;

    invoke-direct {v1}, Lnu/xom/jaxen/function/FloorFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lnu/xom/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lnu/xom/jaxen/Function;)V

    const-string v0, "id"

    new-instance v1, Lnu/xom/jaxen/function/IdFunction;

    invoke-direct {v1}, Lnu/xom/jaxen/function/IdFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lnu/xom/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lnu/xom/jaxen/Function;)V

    const-string v0, "lang"

    new-instance v1, Lnu/xom/jaxen/function/LangFunction;

    invoke-direct {v1}, Lnu/xom/jaxen/function/LangFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lnu/xom/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lnu/xom/jaxen/Function;)V

    const-string v0, "last"

    new-instance v1, Lnu/xom/jaxen/function/LastFunction;

    invoke-direct {v1}, Lnu/xom/jaxen/function/LastFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lnu/xom/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lnu/xom/jaxen/Function;)V

    const-string v0, "local-name"

    new-instance v1, Lnu/xom/jaxen/function/LocalNameFunction;

    invoke-direct {v1}, Lnu/xom/jaxen/function/LocalNameFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lnu/xom/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lnu/xom/jaxen/Function;)V

    const-string v0, "name"

    new-instance v1, Lnu/xom/jaxen/function/NameFunction;

    invoke-direct {v1}, Lnu/xom/jaxen/function/NameFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lnu/xom/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lnu/xom/jaxen/Function;)V

    const-string v0, "namespace-uri"

    new-instance v1, Lnu/xom/jaxen/function/NamespaceUriFunction;

    invoke-direct {v1}, Lnu/xom/jaxen/function/NamespaceUriFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lnu/xom/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lnu/xom/jaxen/Function;)V

    const-string v0, "normalize-space"

    new-instance v1, Lnu/xom/jaxen/function/NormalizeSpaceFunction;

    invoke-direct {v1}, Lnu/xom/jaxen/function/NormalizeSpaceFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lnu/xom/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lnu/xom/jaxen/Function;)V

    const-string v0, "not"

    new-instance v1, Lnu/xom/jaxen/function/NotFunction;

    invoke-direct {v1}, Lnu/xom/jaxen/function/NotFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lnu/xom/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lnu/xom/jaxen/Function;)V

    const-string v0, "number"

    new-instance v1, Lnu/xom/jaxen/function/NumberFunction;

    invoke-direct {v1}, Lnu/xom/jaxen/function/NumberFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lnu/xom/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lnu/xom/jaxen/Function;)V

    const-string v0, "position"

    new-instance v1, Lnu/xom/jaxen/function/PositionFunction;

    invoke-direct {v1}, Lnu/xom/jaxen/function/PositionFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lnu/xom/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lnu/xom/jaxen/Function;)V

    const-string v0, "round"

    new-instance v1, Lnu/xom/jaxen/function/RoundFunction;

    invoke-direct {v1}, Lnu/xom/jaxen/function/RoundFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lnu/xom/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lnu/xom/jaxen/Function;)V

    const-string v0, "starts-with"

    new-instance v1, Lnu/xom/jaxen/function/StartsWithFunction;

    invoke-direct {v1}, Lnu/xom/jaxen/function/StartsWithFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lnu/xom/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lnu/xom/jaxen/Function;)V

    const-string v0, "string"

    new-instance v1, Lnu/xom/jaxen/function/StringFunction;

    invoke-direct {v1}, Lnu/xom/jaxen/function/StringFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lnu/xom/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lnu/xom/jaxen/Function;)V

    const-string v0, "string-length"

    new-instance v1, Lnu/xom/jaxen/function/StringLengthFunction;

    invoke-direct {v1}, Lnu/xom/jaxen/function/StringLengthFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lnu/xom/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lnu/xom/jaxen/Function;)V

    const-string v0, "substring-after"

    new-instance v1, Lnu/xom/jaxen/function/SubstringAfterFunction;

    invoke-direct {v1}, Lnu/xom/jaxen/function/SubstringAfterFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lnu/xom/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lnu/xom/jaxen/Function;)V

    const-string v0, "substring-before"

    new-instance v1, Lnu/xom/jaxen/function/SubstringBeforeFunction;

    invoke-direct {v1}, Lnu/xom/jaxen/function/SubstringBeforeFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lnu/xom/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lnu/xom/jaxen/Function;)V

    const-string v0, "substring"

    new-instance v1, Lnu/xom/jaxen/function/SubstringFunction;

    invoke-direct {v1}, Lnu/xom/jaxen/function/SubstringFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lnu/xom/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lnu/xom/jaxen/Function;)V

    const-string v0, "sum"

    new-instance v1, Lnu/xom/jaxen/function/SumFunction;

    invoke-direct {v1}, Lnu/xom/jaxen/function/SumFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lnu/xom/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lnu/xom/jaxen/Function;)V

    const-string v0, "true"

    new-instance v1, Lnu/xom/jaxen/function/TrueFunction;

    invoke-direct {v1}, Lnu/xom/jaxen/function/TrueFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lnu/xom/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lnu/xom/jaxen/Function;)V

    const-string v0, "translate"

    new-instance v1, Lnu/xom/jaxen/function/TranslateFunction;

    invoke-direct {v1}, Lnu/xom/jaxen/function/TranslateFunction;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lnu/xom/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lnu/xom/jaxen/Function;)V

    return-void
.end method

.method private registerXSLTFunctions()V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "document"

    new-instance v2, Lnu/xom/jaxen/function/xslt/DocumentFunction;

    invoke-direct {v2}, Lnu/xom/jaxen/function/xslt/DocumentFunction;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lnu/xom/jaxen/XPathFunctionContext;->registerFunction(Ljava/lang/String;Ljava/lang/String;Lnu/xom/jaxen/Function;)V

    return-void
.end method
