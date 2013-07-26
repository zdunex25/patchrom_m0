.class public Lnu/xom/XPathException;
.super Ljava/lang/RuntimeException;


# static fields
.field private static final serialVersionUID:J = 0x584aad1afc863bdfL


# instance fields
.field private cause:Ljava/lang/Throwable;

.field private causeSet:Z

.field private expression:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnu/xom/XPathException;->causeSet:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnu/xom/XPathException;->causeSet:Z

    invoke-virtual {p0, p2}, Lnu/xom/XPathException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lnu/xom/XPathException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getXPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnu/xom/XPathException;->expression:Ljava/lang/String;

    return-object v0
.end method

.method public initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2

    iget-boolean v0, p0, Lnu/xom/XPathException;->causeSet:Z

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
    iput-object p1, p0, Lnu/xom/XPathException;->cause:Ljava/lang/Throwable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnu/xom/XPathException;->causeSet:Z

    return-object p0
.end method

.method setXPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnu/xom/XPathException;->expression:Ljava/lang/String;

    return-void
.end method
