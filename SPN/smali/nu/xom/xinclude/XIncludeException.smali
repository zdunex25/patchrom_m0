.class public Lnu/xom/xinclude/XIncludeException;
.super Ljava/lang/Exception;


# static fields
.field private static final serialVersionUID:J = 0xd75df375b6d9825L


# instance fields
.field private cause:Ljava/lang/Throwable;

.field private causeSet:Z

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnu/xom/xinclude/XIncludeException;->causeSet:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnu/xom/xinclude/XIncludeException;->causeSet:Z

    iput-object p2, p0, Lnu/xom/xinclude/XIncludeException;->uri:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnu/xom/xinclude/XIncludeException;->causeSet:Z

    invoke-virtual {p0, p2}, Lnu/xom/xinclude/XIncludeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lnu/xom/xinclude/XIncludeException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnu/xom/xinclude/XIncludeException;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2

    iget-boolean v0, p0, Lnu/xom/xinclude/XIncludeException;->causeSet:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t overwrite cause"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ne p1, p0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Self-causation not permitted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lnu/xom/xinclude/XIncludeException;->cause:Ljava/lang/Throwable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnu/xom/xinclude/XIncludeException;->causeSet:Z

    return-object p0
.end method