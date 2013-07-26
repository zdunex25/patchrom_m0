.class Lnu/xom/Namespaces;
.super Ljava/lang/Object;


# instance fields
.field private namespaces:Ljava/util/HashMap;

.field private prefixes:Ljava/util/ArrayList;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnu/xom/Namespaces;->namespaces:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnu/xom/Namespaces;->prefixes:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method copy()Lnu/xom/Namespaces;
    .locals 2

    new-instance v1, Lnu/xom/Namespaces;

    invoke-direct {v1}, Lnu/xom/Namespaces;-><init>()V

    iget-object v0, p0, Lnu/xom/Namespaces;->namespaces:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, v1, Lnu/xom/Namespaces;->namespaces:Ljava/util/HashMap;

    iget-object v0, p0, Lnu/xom/Namespaces;->prefixes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    iput-object p0, v1, Lnu/xom/Namespaces;->prefixes:Ljava/util/ArrayList;

    return-object v1
.end method

.method getPrefix(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnu/xom/Namespaces;->prefixes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method getPrefixes()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lnu/xom/Namespaces;->prefixes:Ljava/util/ArrayList;

    return-object v0
.end method

.method getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnu/xom/Namespaces;->namespaces:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnu/xom/Namespaces;->namespaces:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lnu/xom/Namespaces;->prefixes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lnu/xom/Namespaces;->prefixes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method remove(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lnu/xom/Namespaces;->namespaces:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lnu/xom/Namespaces;->prefixes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method size()I
    .locals 1

    iget-object v0, p0, Lnu/xom/Namespaces;->prefixes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
