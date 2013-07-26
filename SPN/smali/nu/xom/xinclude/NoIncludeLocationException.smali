.class public Lnu/xom/xinclude/NoIncludeLocationException;
.super Lnu/xom/xinclude/XIncludeException;


# static fields
.field private static final serialVersionUID:J = -0x27695379232d8dd4L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lnu/xom/xinclude/XIncludeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnu/xom/xinclude/XIncludeException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lnu/xom/xinclude/XIncludeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lnu/xom/xinclude/NoIncludeLocationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method
