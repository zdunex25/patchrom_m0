.class public Lnu/xom/NoSuchAttributeException;
.super Lnu/xom/XMLException;


# static fields
.field private static final serialVersionUID:J = -0x67b3b74744ec8e3cL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lnu/xom/XMLException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lnu/xom/XMLException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lnu/xom/NoSuchAttributeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method
