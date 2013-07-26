.class public interface abstract Lnu/xom/jaxen/NamedAccessNavigator;
.super Ljava/lang/Object;

# interfaces
.implements Lnu/xom/jaxen/Navigator;


# virtual methods
.method public abstract getAttributeAxisIterator(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/UnsupportedAxisException;
        }
    .end annotation
.end method

.method public abstract getChildAxisIterator(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnu/xom/jaxen/UnsupportedAxisException;
        }
    .end annotation
.end method
