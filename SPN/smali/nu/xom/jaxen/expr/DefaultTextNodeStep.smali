.class public Lnu/xom/jaxen/expr/DefaultTextNodeStep;
.super Lnu/xom/jaxen/expr/DefaultStep;

# interfaces
.implements Lnu/xom/jaxen/expr/TextNodeStep;


# static fields
.field private static final serialVersionUID:J = -0x350a554426a8d4a4L


# direct methods
.method public constructor <init>(Lnu/xom/jaxen/expr/iter/IterableAxis;Lnu/xom/jaxen/expr/PredicateSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnu/xom/jaxen/expr/DefaultStep;-><init>(Lnu/xom/jaxen/expr/iter/IterableAxis;Lnu/xom/jaxen/expr/PredicateSet;)V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultTextNodeStep;->getAxisName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "::text()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-super {p0}, Lnu/xom/jaxen/expr/DefaultStep;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public matches(Ljava/lang/Object;Lnu/xom/jaxen/ContextSupport;)Z
    .locals 1

    invoke-virtual {p2}, Lnu/xom/jaxen/ContextSupport;->getNavigator()Lnu/xom/jaxen/Navigator;

    move-result-object v0

    invoke-interface {v0, p1}, Lnu/xom/jaxen/Navigator;->isText(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
