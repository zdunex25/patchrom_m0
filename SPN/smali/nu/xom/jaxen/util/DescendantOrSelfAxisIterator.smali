.class public Lnu/xom/jaxen/util/DescendantOrSelfAxisIterator;
.super Lnu/xom/jaxen/util/DescendantAxisIterator;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lnu/xom/jaxen/Navigator;)V
    .locals 1

    new-instance v0, Lnu/xom/jaxen/util/SingleObjectIterator;

    invoke-direct {v0, p1}, Lnu/xom/jaxen/util/SingleObjectIterator;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p2, v0}, Lnu/xom/jaxen/util/DescendantAxisIterator;-><init>(Lnu/xom/jaxen/Navigator;Ljava/util/Iterator;)V

    return-void
.end method
