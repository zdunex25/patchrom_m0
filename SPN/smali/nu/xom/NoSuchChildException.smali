.class public Lnu/xom/NoSuchChildException;
.super Lnu/xom/XMLException;


# static fields
.field private static final serialVersionUID:J = 0x1afcde53ce8a59e4L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lnu/xom/XMLException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lnu/xom/XMLException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lnu/xom/NoSuchChildException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method
