.class Lnu/xom/URIUtil$ParsedURI;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnu/xom/URIUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParsedURI"
.end annotation


# instance fields
.field authority:Ljava/lang/String;

.field fragment:Ljava/lang/String;

.field path:Ljava/lang/String;

.field query:Ljava/lang/String;

.field scheme:Ljava/lang/String;

.field schemeSpecificPart:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lnu/xom/URIUtil$ParsedURI;->path:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 7

    const/16 v6, 0x3f

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lnu/xom/URIUtil$ParsedURI;->path:Ljava/lang/String;

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x23

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ne v1, v4, :cond_3

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    :goto_0
    if-eq v0, v4, :cond_0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lnu/xom/URIUtil$ParsedURI;->scheme:Ljava/lang/String;

    :cond_0
    if-ne v2, v4, :cond_4

    if-ne v1, v4, :cond_4

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnu/xom/URIUtil$ParsedURI;->schemeSpecificPart:Ljava/lang/String;

    :goto_1
    if-eq v1, v4, :cond_1

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnu/xom/URIUtil$ParsedURI;->fragment:Ljava/lang/String;

    :cond_1
    if-eq v2, v4, :cond_2

    if-ne v1, v4, :cond_8

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnu/xom/URIUtil$ParsedURI;->query:Ljava/lang/String;

    :cond_2
    :goto_2
    iget-object v0, p0, Lnu/xom/URIUtil$ParsedURI;->schemeSpecificPart:Ljava/lang/String;

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lnu/xom/URIUtil$ParsedURI;->schemeSpecificPart:Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v4, :cond_9

    iget-object v0, p0, Lnu/xom/URIUtil$ParsedURI;->schemeSpecificPart:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnu/xom/URIUtil$ParsedURI;->authority:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lnu/xom/URIUtil$ParsedURI;->path:Ljava/lang/String;

    :goto_3
    return-void

    :cond_3
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    goto :goto_0

    :cond_4
    if-eq v2, v4, :cond_6

    if-ge v2, v0, :cond_5

    new-instance v0, Lnu/xom/MalformedURIException;

    const-string v1, "Unparseable URI"

    invoke-direct {v0, v1}, Lnu/xom/MalformedURIException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lnu/xom/MalformedURIException;->setData(Ljava/lang/String;)V

    throw v0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnu/xom/URIUtil$ParsedURI;->schemeSpecificPart:Ljava/lang/String;

    goto :goto_1

    :cond_6
    if-ge v1, v0, :cond_7

    new-instance v0, Lnu/xom/MalformedURIException;

    const-string v1, "Unparseable URI"

    invoke-direct {v0, v1}, Lnu/xom/MalformedURIException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lnu/xom/MalformedURIException;->setData(Ljava/lang/String;)V

    throw v0

    :cond_7
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnu/xom/URIUtil$ParsedURI;->schemeSpecificPart:Ljava/lang/String;

    goto :goto_1

    :cond_8
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnu/xom/URIUtil$ParsedURI;->query:Ljava/lang/String;

    goto :goto_2

    :cond_9
    iget-object v1, p0, Lnu/xom/URIUtil$ParsedURI;->schemeSpecificPart:Ljava/lang/String;

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnu/xom/URIUtil$ParsedURI;->authority:Ljava/lang/String;

    iget-object v1, p0, Lnu/xom/URIUtil$ParsedURI;->schemeSpecificPart:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnu/xom/URIUtil$ParsedURI;->path:Ljava/lang/String;

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lnu/xom/URIUtil$ParsedURI;->schemeSpecificPart:Ljava/lang/String;

    iput-object v0, p0, Lnu/xom/URIUtil$ParsedURI;->path:Ljava/lang/String;

    goto :goto_3
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v1, p0, Lnu/xom/URIUtil$ParsedURI;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnu/xom/URIUtil$ParsedURI;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v1, p0, Lnu/xom/URIUtil$ParsedURI;->schemeSpecificPart:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnu/xom/URIUtil$ParsedURI;->schemeSpecificPart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    iget-object v1, p0, Lnu/xom/URIUtil$ParsedURI;->query:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnu/xom/URIUtil$ParsedURI;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v1, p0, Lnu/xom/URIUtil$ParsedURI;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnu/xom/URIUtil$ParsedURI;->fragment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnu/xom/URIUtil$ParsedURI;->authority:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lnu/xom/URIUtil$ParsedURI;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    iget-object v1, p0, Lnu/xom/URIUtil$ParsedURI;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
