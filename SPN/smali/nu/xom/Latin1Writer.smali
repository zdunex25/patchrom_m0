.class Lnu/xom/Latin1Writer;
.super Lnu/xom/TextWriter;


# direct methods
.method constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnu/xom/TextWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method needsEscaping(C)Z
    .locals 1

    const/16 v0, 0xff

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
