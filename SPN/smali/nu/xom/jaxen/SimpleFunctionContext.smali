.class public Lnu/xom/jaxen/SimpleFunctionContext;
.super Ljava/lang/Object;

# interfaces
.implements Lnu/xom/jaxen/FunctionContext;


# instance fields
.field private functions:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnu/xom/jaxen/SimpleFunctionContext;->functions:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnu/xom/jaxen/Function;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/UnresolvableException;
        }
    .end annotation

    new-instance v0, Lnu/xom/jaxen/QualifiedName;

    invoke-direct {v0, p1, p3}, Lnu/xom/jaxen/QualifiedName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lnu/xom/jaxen/SimpleFunctionContext;->functions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnu/xom/jaxen/SimpleFunctionContext;->functions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnu/xom/jaxen/Function;

    return-object p0

    :cond_0
    new-instance v1, Lnu/xom/jaxen/UnresolvableException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "No Such Function "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lnu/xom/jaxen/QualifiedName;->getClarkForm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnu/xom/jaxen/UnresolvableException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public registerFunction(Ljava/lang/String;Ljava/lang/String;Lnu/xom/jaxen/Function;)V
    .locals 2

    iget-object v0, p0, Lnu/xom/jaxen/SimpleFunctionContext;->functions:Ljava/util/HashMap;

    new-instance v1, Lnu/xom/jaxen/QualifiedName;

    invoke-direct {v1, p1, p2}, Lnu/xom/jaxen/QualifiedName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
