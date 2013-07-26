.class public Lnu/xom/jaxen/expr/iter/IterableAttributeAxis;
.super Lnu/xom/jaxen/expr/iter/IterableAxis;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lnu/xom/jaxen/expr/iter/IterableAxis;-><init>(I)V

    return-void
.end method


# virtual methods
.method public iterator(Ljava/lang/Object;Lnu/xom/jaxen/ContextSupport;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/UnsupportedAxisException;
        }
    .end annotation

    invoke-virtual {p2}, Lnu/xom/jaxen/ContextSupport;->getNavigator()Lnu/xom/jaxen/Navigator;

    move-result-object v0

    invoke-interface {v0, p1}, Lnu/xom/jaxen/Navigator;->getAttributeAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public namedAccessIterator(Ljava/lang/Object;Lnu/xom/jaxen/ContextSupport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/UnsupportedAxisException;
        }
    .end annotation

    invoke-virtual {p2}, Lnu/xom/jaxen/ContextSupport;->getNavigator()Lnu/xom/jaxen/Navigator;

    move-result-object p0

    check-cast p0, Lnu/xom/jaxen/NamedAccessNavigator;

    invoke-interface {p0, p1, p3, p4, p5}, Lnu/xom/jaxen/NamedAccessNavigator;->getAttributeAxisIterator(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public supportsNamedAccess(Lnu/xom/jaxen/ContextSupport;)Z
    .locals 1

    invoke-virtual {p1}, Lnu/xom/jaxen/ContextSupport;->getNavigator()Lnu/xom/jaxen/Navigator;

    move-result-object v0

    instance-of v0, v0, Lnu/xom/jaxen/NamedAccessNavigator;

    return v0
.end method
