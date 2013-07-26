.class Lnu/xom/jaxen/expr/IdentitySet$IdentityWrapper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnu/xom/jaxen/expr/IdentitySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IdentityWrapper"
.end annotation


# instance fields
.field private object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnu/xom/jaxen/expr/IdentitySet$IdentityWrapper;->object:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Lnu/xom/jaxen/expr/IdentitySet$IdentityWrapper;

    iget-object v0, p0, Lnu/xom/jaxen/expr/IdentitySet$IdentityWrapper;->object:Ljava/lang/Object;

    iget-object v1, p1, Lnu/xom/jaxen/expr/IdentitySet$IdentityWrapper;->object:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lnu/xom/jaxen/expr/IdentitySet$IdentityWrapper;->object:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
