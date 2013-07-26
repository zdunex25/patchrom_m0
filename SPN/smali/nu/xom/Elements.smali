.class public final Lnu/xom/Elements;
.super Ljava/lang/Object;


# instance fields
.field private elements:Ljava/util/List;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnu/xom/Elements;->elements:Ljava/util/List;

    return-void
.end method


# virtual methods
.method add(Lnu/xom/Element;)V
    .locals 1

    iget-object v0, p0, Lnu/xom/Elements;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public get(I)Lnu/xom/Element;
    .locals 1

    iget-object v0, p0, Lnu/xom/Elements;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnu/xom/Element;

    return-object p0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lnu/xom/Elements;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
