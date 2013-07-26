.class public Lnu/xom/jaxen/expr/iter/IterableSelfAxis;
.super Lnu/xom/jaxen/expr/iter/IterableAxis;


# static fields
.field private static final serialVersionUID:J = 0x7313e471e2cd55c6L


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

    invoke-interface {v0, p1}, Lnu/xom/jaxen/Navigator;->getSelfAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
