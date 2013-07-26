.class Lnu/xom/UCSWriter;
.super Lnu/xom/TextWriter;


# direct methods
.method constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnu/xom/TextWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method needsEscaping(C)Z
    .locals 2

    const/4 v1, 0x0

    const v0, 0xd800

    if-ge p1, v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const v0, 0xdfff

    if-gt p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
