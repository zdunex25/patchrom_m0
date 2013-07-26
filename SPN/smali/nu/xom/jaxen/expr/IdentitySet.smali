.class final Lnu/xom/jaxen/expr/IdentitySet;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnu/xom/jaxen/expr/IdentitySet$IdentityWrapper;
    }
.end annotation


# instance fields
.field private contents:Ljava/util/HashSet;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lnu/xom/jaxen/expr/IdentitySet;->contents:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method add(Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Lnu/xom/jaxen/expr/IdentitySet$IdentityWrapper;

    invoke-direct {v0, p1}, Lnu/xom/jaxen/expr/IdentitySet$IdentityWrapper;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lnu/xom/jaxen/expr/IdentitySet;->contents:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    new-instance v0, Lnu/xom/jaxen/expr/IdentitySet$IdentityWrapper;

    invoke-direct {v0, p1}, Lnu/xom/jaxen/expr/IdentitySet$IdentityWrapper;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lnu/xom/jaxen/expr/IdentitySet;->contents:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
