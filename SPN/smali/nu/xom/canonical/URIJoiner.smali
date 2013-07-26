.class Lnu/xom/canonical/URIJoiner;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnu/xom/canonical/URIJoiner$ParsedURI;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static absolutize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lnu/xom/canonical/URIJoiner$ParsedURI;

    invoke-direct {v0, p0}, Lnu/xom/canonical/URIJoiner$ParsedURI;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lnu/xom/canonical/URIJoiner$ParsedURI;->path:Ljava/lang/String;

    const-string v2, "/.."

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, v0, Lnu/xom/canonical/URIJoiner$ParsedURI;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnu/xom/canonical/URIJoiner$ParsedURI;->path:Ljava/lang/String;

    :cond_2
    new-instance v1, Lnu/xom/canonical/URIJoiner$ParsedURI;

    invoke-direct {v1, p1}, Lnu/xom/canonical/URIJoiner$ParsedURI;-><init>(Ljava/lang/String;)V

    new-instance v2, Lnu/xom/canonical/URIJoiner$ParsedURI;

    invoke-direct {v2}, Lnu/xom/canonical/URIJoiner$ParsedURI;-><init>()V

    iget-object v3, v1, Lnu/xom/canonical/URIJoiner$ParsedURI;->scheme:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v0, v1, Lnu/xom/canonical/URIJoiner$ParsedURI;->scheme:Ljava/lang/String;

    iput-object v0, v2, Lnu/xom/canonical/URIJoiner$ParsedURI;->scheme:Ljava/lang/String;

    iget-object v0, v1, Lnu/xom/canonical/URIJoiner$ParsedURI;->authority:Ljava/lang/String;

    iput-object v0, v2, Lnu/xom/canonical/URIJoiner$ParsedURI;->authority:Ljava/lang/String;

    iget-object v0, v1, Lnu/xom/canonical/URIJoiner$ParsedURI;->query:Ljava/lang/String;

    iput-object v0, v2, Lnu/xom/canonical/URIJoiner$ParsedURI;->query:Ljava/lang/String;

    iget-object v0, v1, Lnu/xom/canonical/URIJoiner$ParsedURI;->path:Ljava/lang/String;

    invoke-static {v0}, Lnu/xom/canonical/URIJoiner;->removeDotSegments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lnu/xom/canonical/URIJoiner$ParsedURI;->path:Ljava/lang/String;

    :goto_1
    iget-object v0, v1, Lnu/xom/canonical/URIJoiner$ParsedURI;->fragment:Ljava/lang/String;

    iput-object v0, v2, Lnu/xom/canonical/URIJoiner$ParsedURI;->fragment:Ljava/lang/String;

    invoke-virtual {v2}, Lnu/xom/canonical/URIJoiner$ParsedURI;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v3, v1, Lnu/xom/canonical/URIJoiner$ParsedURI;->authority:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v1, Lnu/xom/canonical/URIJoiner$ParsedURI;->authority:Ljava/lang/String;

    iput-object v3, v2, Lnu/xom/canonical/URIJoiner$ParsedURI;->authority:Ljava/lang/String;

    iget-object v3, v1, Lnu/xom/canonical/URIJoiner$ParsedURI;->query:Ljava/lang/String;

    iput-object v3, v2, Lnu/xom/canonical/URIJoiner$ParsedURI;->query:Ljava/lang/String;

    iget-object v3, v1, Lnu/xom/canonical/URIJoiner$ParsedURI;->path:Ljava/lang/String;

    invoke-static {v3}, Lnu/xom/canonical/URIJoiner;->removeDotSegments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lnu/xom/canonical/URIJoiner$ParsedURI;->path:Ljava/lang/String;

    :goto_2
    iget-object v0, v0, Lnu/xom/canonical/URIJoiner$ParsedURI;->scheme:Ljava/lang/String;

    iput-object v0, v2, Lnu/xom/canonical/URIJoiner$ParsedURI;->scheme:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v3, ""

    iget-object v4, v1, Lnu/xom/canonical/URIJoiner$ParsedURI;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v0, Lnu/xom/canonical/URIJoiner$ParsedURI;->path:Ljava/lang/String;

    iput-object v3, v2, Lnu/xom/canonical/URIJoiner$ParsedURI;->path:Ljava/lang/String;

    iget-object v3, v1, Lnu/xom/canonical/URIJoiner$ParsedURI;->query:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, v1, Lnu/xom/canonical/URIJoiner$ParsedURI;->query:Ljava/lang/String;

    iput-object v3, v2, Lnu/xom/canonical/URIJoiner$ParsedURI;->query:Ljava/lang/String;

    :goto_3
    iget-object v3, v0, Lnu/xom/canonical/URIJoiner$ParsedURI;->authority:Ljava/lang/String;

    iput-object v3, v2, Lnu/xom/canonical/URIJoiner$ParsedURI;->authority:Ljava/lang/String;

    goto :goto_2

    :cond_5
    iget-object v3, v0, Lnu/xom/canonical/URIJoiner$ParsedURI;->query:Ljava/lang/String;

    iput-object v3, v2, Lnu/xom/canonical/URIJoiner$ParsedURI;->query:Ljava/lang/String;

    goto :goto_3

    :cond_6
    iget-object v3, v1, Lnu/xom/canonical/URIJoiner$ParsedURI;->path:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v1, Lnu/xom/canonical/URIJoiner$ParsedURI;->path:Ljava/lang/String;

    invoke-static {v3}, Lnu/xom/canonical/URIJoiner;->removeDotSegments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lnu/xom/canonical/URIJoiner$ParsedURI;->path:Ljava/lang/String;

    :goto_4
    iget-object v3, v1, Lnu/xom/canonical/URIJoiner$ParsedURI;->query:Ljava/lang/String;

    iput-object v3, v2, Lnu/xom/canonical/URIJoiner$ParsedURI;->query:Ljava/lang/String;

    goto :goto_3

    :cond_7
    iget-object v3, v1, Lnu/xom/canonical/URIJoiner$ParsedURI;->path:Ljava/lang/String;

    invoke-static {v0, v3}, Lnu/xom/canonical/URIJoiner;->merge(Lnu/xom/canonical/URIJoiner$ParsedURI;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lnu/xom/canonical/URIJoiner$ParsedURI;->path:Ljava/lang/String;

    iget-object v3, v2, Lnu/xom/canonical/URIJoiner$ParsedURI;->path:Ljava/lang/String;

    invoke-static {v3}, Lnu/xom/canonical/URIJoiner;->removeDotSegments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lnu/xom/canonical/URIJoiner$ParsedURI;->path:Ljava/lang/String;

    goto :goto_4
.end method

.method static merge(Lnu/xom/canonical/URIJoiner$ParsedURI;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnu/xom/canonical/URIJoiner$ParsedURI;->authority:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lnu/xom/canonical/URIJoiner$ParsedURI;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lnu/xom/canonical/URIJoiner$ParsedURI;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnu/xom/canonical/URIJoiner$ParsedURI;->path:Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnu/xom/canonical/URIJoiner$ParsedURI;->path:Ljava/lang/String;

    const/4 v2, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static removeDotSegments(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v5, -0x1

    const/16 v4, 0x2f

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, p0

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    const-string v2, "/./"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v2, "/."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "/"

    goto :goto_0

    :cond_2
    const-string v2, "/.."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "/"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-eq v2, v5, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_0

    :cond_3
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v1, ""

    goto :goto_0

    :cond_4
    const-string v2, "./"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    :cond_6
    if-ne v2, v5, :cond_7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ""

    goto :goto_0

    :cond_7
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
