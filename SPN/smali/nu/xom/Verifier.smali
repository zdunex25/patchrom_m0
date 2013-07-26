.class final Lnu/xom/Verifier;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnu/xom/Verifier$EmptyReader;,
        Lnu/xom/Verifier$URICache;
    }
.end annotation


# static fields
.field private static C0Table:[Z = null

.field private static final NAME_CHARACTER:B = 0x2t

.field private static final NAME_START_CHARACTER:B = 0x4t

.field private static final NCNAME_CHARACTER:B = 0x8t

.field private static final XML_CHARACTER:B = 0x1t

.field private static cache:Lnu/xom/Verifier$URICache;

.field static synthetic class$nu$xom$Verifier:Ljava/lang/Class;

.field private static flags:[B

.field private static parser:Lorg/xml/sax/XMLReader;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    sput-object v3, Lnu/xom/Verifier;->flags:[B

    sget-object v0, Lnu/xom/Verifier;->class$nu$xom$Verifier:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "nu.xom.Verifier"

    invoke-static {v0}, Lnu/xom/Verifier;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnu/xom/Verifier;->class$nu$xom$Verifier:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lnu/xom/Verifier;->loadFlags(Ljava/lang/ClassLoader;)V

    :cond_0
    sget-object v0, Lnu/xom/Verifier;->flags:[B

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lnu/xom/Verifier;->loadFlags(Ljava/lang/ClassLoader;)V

    :cond_1
    const/16 v0, 0x21

    new-array v0, v0, [Z

    sput-object v0, Lnu/xom/Verifier;->C0Table:[Z

    sget-object v0, Lnu/xom/Verifier;->C0Table:[Z

    const/16 v1, 0xa

    aput-boolean v2, v0, v1

    sget-object v0, Lnu/xom/Verifier;->C0Table:[Z

    const/16 v1, 0xd

    aput-boolean v2, v0, v1

    sget-object v0, Lnu/xom/Verifier;->C0Table:[Z

    const/16 v1, 0x9

    aput-boolean v2, v0, v1

    sget-object v0, Lnu/xom/Verifier;->C0Table:[Z

    const/16 v1, 0x20

    aput-boolean v2, v0, v1

    new-instance v0, Lnu/xom/Verifier$URICache;

    invoke-direct {v0, v3}, Lnu/xom/Verifier$URICache;-><init>(Lnu/xom/Verifier$1;)V

    sput-object v0, Lnu/xom/Verifier;->cache:Lnu/xom/Verifier$URICache;

    return-void

    :cond_2
    sget-object v0, Lnu/xom/Verifier;->class$nu$xom$Verifier:Ljava/lang/Class;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkAbsoluteURI(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lnu/xom/URIUtil$ParsedURI;

    invoke-direct {v0, p0}, Lnu/xom/URIUtil$ParsedURI;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, v0, Lnu/xom/URIUtil$ParsedURI;->scheme:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "Missing scheme in absolute URI"

    invoke-static {p0, v1}, Lnu/xom/Verifier;->throwMalformedURIException(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, v0, Lnu/xom/URIUtil$ParsedURI;->scheme:Ljava/lang/String;

    invoke-static {v1}, Lnu/xom/Verifier;->checkScheme(Ljava/lang/String;)V

    iget-object v1, v0, Lnu/xom/URIUtil$ParsedURI;->authority:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lnu/xom/URIUtil$ParsedURI;->authority:Ljava/lang/String;

    invoke-static {v1}, Lnu/xom/Verifier;->checkAuthority(Ljava/lang/String;)V

    :cond_1
    iget-object v1, v0, Lnu/xom/URIUtil$ParsedURI;->path:Ljava/lang/String;

    invoke-static {v1}, Lnu/xom/Verifier;->checkPath(Ljava/lang/String;)V

    iget-object v1, v0, Lnu/xom/URIUtil$ParsedURI;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "URIs cannot have fragment identifiers"

    invoke-static {p0, v1}, Lnu/xom/Verifier;->throwMalformedURIException(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, v0, Lnu/xom/URIUtil$ParsedURI;->query:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v0, v0, Lnu/xom/URIUtil$ParsedURI;->query:Ljava/lang/String;

    invoke-static {v0}, Lnu/xom/Verifier;->checkQuery(Ljava/lang/String;)V
    :try_end_0
    .catch Lnu/xom/MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0, p0}, Lnu/xom/MalformedURIException;->setData(Ljava/lang/String;)V

    throw v0
.end method

.method static checkAbsoluteURIReference(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lnu/xom/Verifier;->cache:Lnu/xom/Verifier$URICache;

    invoke-virtual {v0, p0}, Lnu/xom/Verifier$URICache;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lnu/xom/URIUtil$ParsedURI;

    invoke-direct {v0, p0}, Lnu/xom/URIUtil$ParsedURI;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, v0, Lnu/xom/URIUtil$ParsedURI;->scheme:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "Missing scheme in absolute URI reference"

    invoke-static {p0, v1}, Lnu/xom/Verifier;->throwMalformedURIException(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, v0, Lnu/xom/URIUtil$ParsedURI;->scheme:Ljava/lang/String;

    invoke-static {v1}, Lnu/xom/Verifier;->checkScheme(Ljava/lang/String;)V

    iget-object v1, v0, Lnu/xom/URIUtil$ParsedURI;->authority:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lnu/xom/URIUtil$ParsedURI;->authority:Ljava/lang/String;

    invoke-static {v1}, Lnu/xom/Verifier;->checkAuthority(Ljava/lang/String;)V

    :cond_2
    iget-object v1, v0, Lnu/xom/URIUtil$ParsedURI;->path:Ljava/lang/String;

    invoke-static {v1}, Lnu/xom/Verifier;->checkPath(Ljava/lang/String;)V

    iget-object v1, v0, Lnu/xom/URIUtil$ParsedURI;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lnu/xom/URIUtil$ParsedURI;->fragment:Ljava/lang/String;

    invoke-static {v1}, Lnu/xom/Verifier;->checkFragment(Ljava/lang/String;)V

    :cond_3
    iget-object v1, v0, Lnu/xom/URIUtil$ParsedURI;->query:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v0, v0, Lnu/xom/URIUtil$ParsedURI;->query:Ljava/lang/String;

    invoke-static {v0}, Lnu/xom/Verifier;->checkQuery(Ljava/lang/String;)V

    :cond_4
    sget-object v0, Lnu/xom/Verifier;->cache:Lnu/xom/Verifier$URICache;

    invoke-virtual {v0, p0}, Lnu/xom/Verifier$URICache;->put(Ljava/lang/String;)V
    :try_end_0
    .catch Lnu/xom/MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0, p0}, Lnu/xom/MalformedURIException;->setData(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkAuthority(Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v3, :cond_5

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_0
    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    :goto_1
    if-eq v2, v3, :cond_4

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v3

    :goto_2
    if-eqz v0, :cond_1

    invoke-static {v0}, Lnu/xom/Verifier;->checkUserInfo(Ljava/lang/String;)V

    :cond_1
    if-eqz v1, :cond_2

    invoke-static {v1}, Lnu/xom/Verifier;->checkPort(Ljava/lang/String;)V

    :cond_2
    invoke-static {v2}, Lnu/xom/Verifier;->checkHost(Ljava/lang/String;)V

    return-void

    :cond_3
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    goto :goto_1

    :cond_4
    move-object v2, v1

    move-object v1, v5

    goto :goto_2

    :cond_5
    move-object v0, v5

    move-object v1, p0

    goto :goto_0
.end method

.method private static checkFragment(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lnu/xom/Verifier;->checkQuery(Ljava/lang/String;)V

    return-void
.end method

.method private static checkHost(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    aget-char v2, v1, v5

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_3

    sub-int v2, v0, v4

    aget-char v1, v1, v2

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_2

    new-instance v0, Lnu/xom/MalformedURIException;

    const-string v1, "Missing closing ]"

    invoke-direct {v0, v1}, Lnu/xom/MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sub-int/2addr v0, v4

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnu/xom/Verifier;->checkIP6Address(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 v2, 0xff

    if-le v0, v2, :cond_4

    new-instance v0, Lnu/xom/MalformedURIException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Host name too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v2, v5

    :goto_1
    if-ge v2, v0, :cond_0

    aget-char v3, v1, v2

    const/16 v4, 0x25

    if-ne v3, v4, :cond_8

    add-int/lit8 v3, v2, 0x1

    :try_start_0
    aget-char v3, v1, v3

    invoke-static {v3}, Lnu/xom/Verifier;->isHexDigit(C)Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v3, v2, 0x2

    aget-char v3, v1, v3

    invoke-static {v3}, Lnu/xom/Verifier;->isHexDigit(C)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    const-string v3, "Bad percent escape sequence"

    invoke-static {p0, v3}, Lnu/xom/Verifier;->throwMalformedURIException(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x2

    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v3, "Bad percent escape sequence"

    invoke-static {p0, v3}, Lnu/xom/Verifier;->throwMalformedURIException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    invoke-static {v3}, Lnu/xom/Verifier;->isRegNameCharacter(C)Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Illegal host character "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lnu/xom/Verifier;->throwMalformedURIException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private static checkIP4Address(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x4

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "."

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    if-eq v1, v4, :cond_0

    new-instance v0, Lnu/xom/MalformedURIException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Illegal IP6 host address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_3

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xff

    if-gt v2, v3, :cond_1

    if-gez v2, :cond_2

    :cond_1
    new-instance v0, Lnu/xom/MalformedURIException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Illegal IP6 host address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Lnu/xom/MalformedURIException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Illegal IP6 host address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static checkIP6Address(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x1

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ":"

    invoke-direct {v0, p0, v1, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    const/16 v2, 0xf

    if-gt v1, v2, :cond_0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    :cond_0
    new-instance v0, Lnu/xom/MalformedURIException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Illegal IP6 host address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/16 v4, 0x10

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    if-gez v4, :cond_2

    new-instance v4, Lnu/xom/MalformedURIException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Illegal IP6 host address: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lnu/xom/MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v4

    sub-int v4, v1, v7

    if-ne v2, v4, :cond_4

    invoke-static {v3, p0}, Lnu/xom/Verifier;->checkIP4Address(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Illegal IP6 host address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lnu/xom/Verifier;->throwMalformedURIException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v0, "::"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "::"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_6

    new-instance v0, Lnu/xom/MalformedURIException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Illegal IP6 host address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    return-void
.end method

.method static declared-synchronized checkInternalDTDSubset(Ljava/lang/String;)V
    .locals 5

    const-class v0, Lnu/xom/Verifier;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lnu/xom/Verifier;->parser:Lorg/xml/sax/XMLReader;

    if-nez v1, :cond_0

    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Lnu/xom/Verifier$EmptyReader;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lnu/xom/Verifier$EmptyReader;-><init>(Lnu/xom/Verifier$1;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    const/4 v2, 0x0

    invoke-static {v2}, Lnu/xom/Builder;->findParser(Z)Lorg/xml/sax/XMLReader;

    move-result-object v2

    sput-object v2, Lnu/xom/Verifier;->parser:Lorg/xml/sax/XMLReader;

    sget-object v2, Lnu/xom/Verifier;->parser:Lorg/xml/sax/XMLReader;

    new-instance v3, Lnu/xom/Verifier$1;

    invoke-direct {v3, v1}, Lnu/xom/Verifier$1;-><init>(Lorg/xml/sax/InputSource;)V

    invoke-interface {v2, v3}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "<!DOCTYPE a ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]><a/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    const-string v1, "http://www.example.org/"

    invoke-virtual {v2, v1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    sget-object v1, Lnu/xom/Verifier;->parser:Lorg/xml/sax/XMLReader;

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    monitor-exit v0

    return-void

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, Lnu/xom/IllegalDataException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Malformed internal DTD subset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lnu/xom/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2, p0}, Lnu/xom/IllegalDataException;->setData(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :catch_1
    move-exception v1

    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "BUG: I don\'t think this can happen"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method static checkNCName(Ljava/lang/String;)V
    .locals 5

    if-nez p0, :cond_0

    const-string v0, "NCNames cannot be null"

    invoke-static {p0, v0}, Lnu/xom/Verifier;->throwIllegalNameException(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string v1, "NCNames cannot be empty"

    invoke-static {p0, v1}, Lnu/xom/Verifier;->throwIllegalNameException(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-object v2, Lnu/xom/Verifier;->flags:[B

    aget-byte v2, v2, v1

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "NCNames cannot start with the character "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lnu/xom/Verifier;->throwIllegalNameException(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sget-object v3, Lnu/xom/Verifier;->flags:[B

    aget-byte v3, v3, v2

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_3

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_4

    const-string v2, "NCNames cannot contain colons"

    invoke-static {p0, v2}, Lnu/xom/Verifier;->throwIllegalNameException(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " is not a legal NCName character"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lnu/xom/Verifier;->throwIllegalNameException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method static checkPCDATA(Ljava/lang/String;)V
    .locals 6

    if-nez p0, :cond_0

    new-instance v0, Lnu/xom/IllegalCharacterDataException;

    const-string v1, "Null text"

    invoke-direct {v0, v1}, Lnu/xom/IllegalCharacterDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_5

    aget-char v3, v0, v1

    const v4, 0xd800

    if-lt v3, v4, :cond_4

    const v4, 0xdbff

    if-gt v3, v4, :cond_4

    add-int/lit8 v3, v1, 0x1

    :try_start_0
    aget-char v3, v0, v3

    const v4, 0xdc00

    if-lt v3, v4, :cond_1

    const v4, 0xdfff

    if-le v3, v4, :cond_2

    :cond_1
    new-instance v0, Lnu/xom/IllegalCharacterDataException;

    const-string v1, "Bad surrogate pair"

    invoke-direct {v0, v1}, Lnu/xom/IllegalCharacterDataException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lnu/xom/IllegalCharacterDataException;->setData(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lnu/xom/IllegalCharacterDataException;

    const-string v2, "Bad Surrogate Pair"

    invoke-direct {v1, v2, v0}, Lnu/xom/IllegalCharacterDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, p0}, Lnu/xom/IllegalCharacterDataException;->setData(Ljava/lang/String;)V

    throw v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    sget-object v4, Lnu/xom/Verifier;->flags:[B

    aget-byte v4, v4, v3

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " is not allowed in XML content"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lnu/xom/Verifier;->throwIllegalCharacterDataException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method private static checkPath(Ljava/lang/String;)V
    .locals 7

    const/16 v6, 0x2f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    aget-char v3, v1, v2

    if-ne v3, v6, :cond_1

    const/4 v3, 0x1

    sub-int v3, v0, v3

    if-ge v2, v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    aget-char v3, v1, v3

    if-ne v3, v6, :cond_0

    const-string v3, "Double slash (//) in path"

    invoke-static {p0, v3}, Lnu/xom/Verifier;->throwMalformedURIException(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v4, 0x25

    if-ne v3, v4, :cond_4

    add-int/lit8 v3, v2, 0x1

    :try_start_0
    aget-char v3, v1, v3

    invoke-static {v3}, Lnu/xom/Verifier;->isHexDigit(C)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v3, v2, 0x2

    aget-char v3, v1, v3

    invoke-static {v3}, Lnu/xom/Verifier;->isHexDigit(C)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const-string v3, "Bad percent escape sequence"

    invoke-static {p0, v3}, Lnu/xom/Verifier;->throwMalformedURIException(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v3, "Bad percent escape sequence"

    invoke-static {p0, v3}, Lnu/xom/Verifier;->throwMalformedURIException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-static {v3}, Lnu/xom/Verifier;->isPathCharacter(C)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Illegal path character "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lnu/xom/Verifier;->throwMalformedURIException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method private static checkPort(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x39

    if-le v1, v2, :cond_1

    :cond_0
    new-instance v0, Lnu/xom/MalformedURIException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Bad port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static checkQuery(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x25

    if-ne v2, v3, :cond_3

    add-int/lit8 v2, v1, 0x1

    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lnu/xom/Verifier;->isHexDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lnu/xom/Verifier;->isHexDigit(C)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "Bad percent escape sequence"

    invoke-static {p0, v2}, Lnu/xom/Verifier;->throwMalformedURIException(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v2, "Bad percent escape sequence"

    invoke-static {p0, v2}, Lnu/xom/Verifier;->throwMalformedURIException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lnu/xom/Verifier;->isQueryCharacter(C)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v0, Lnu/xom/MalformedURIException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Illegal query character "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-void
.end method

.method private static checkScheme(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "http"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lnu/xom/MalformedURIException;

    const-string v1, "URIs cannot begin with a colon"

    invoke-direct {v0, v1}, Lnu/xom/MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lnu/xom/Verifier;->isAlpha(C)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lnu/xom/MalformedURIException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Illegal initial scheme character "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnu/xom/MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_0
    if-lt v0, v3, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lnu/xom/Verifier;->isSchemeCharacter(C)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v0, Lnu/xom/MalformedURIException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Illegal scheme character "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method static checkURIReference(Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lnu/xom/URIUtil$ParsedURI;

    invoke-direct {v0, p0}, Lnu/xom/URIUtil$ParsedURI;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, v0, Lnu/xom/URIUtil$ParsedURI;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lnu/xom/URIUtil$ParsedURI;->scheme:Ljava/lang/String;

    invoke-static {v1}, Lnu/xom/Verifier;->checkScheme(Ljava/lang/String;)V

    :cond_2
    iget-object v1, v0, Lnu/xom/URIUtil$ParsedURI;->authority:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lnu/xom/URIUtil$ParsedURI;->authority:Ljava/lang/String;

    invoke-static {v1}, Lnu/xom/Verifier;->checkAuthority(Ljava/lang/String;)V

    :cond_3
    iget-object v1, v0, Lnu/xom/URIUtil$ParsedURI;->path:Ljava/lang/String;

    invoke-static {v1}, Lnu/xom/Verifier;->checkPath(Ljava/lang/String;)V

    iget-object v1, v0, Lnu/xom/URIUtil$ParsedURI;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lnu/xom/URIUtil$ParsedURI;->fragment:Ljava/lang/String;

    invoke-static {v1}, Lnu/xom/Verifier;->checkFragment(Ljava/lang/String;)V

    :cond_4
    iget-object v1, v0, Lnu/xom/URIUtil$ParsedURI;->query:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lnu/xom/URIUtil$ParsedURI;->query:Ljava/lang/String;

    invoke-static {v0}, Lnu/xom/Verifier;->checkQuery(Ljava/lang/String;)V
    :try_end_0
    .catch Lnu/xom/MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0, p0}, Lnu/xom/MalformedURIException;->setData(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkUserInfo(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x25

    if-ne v2, v3, :cond_3

    add-int/lit8 v2, v1, 0x1

    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lnu/xom/Verifier;->isHexDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lnu/xom/Verifier;->isHexDigit(C)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "Bad percent escape sequence"

    invoke-static {p0, v2}, Lnu/xom/Verifier;->throwMalformedURIException(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v2, "Bad percent escape sequence"

    invoke-static {p0, v2}, Lnu/xom/Verifier;->throwMalformedURIException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lnu/xom/Verifier;->isUserInfoCharacter(C)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v0, Lnu/xom/MalformedURIException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Bad user info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-void
.end method

.method static checkXMLName(Ljava/lang/String;)V
    .locals 5

    if-nez p0, :cond_0

    const-string v0, "XML names cannot be null"

    invoke-static {p0, v0}, Lnu/xom/Verifier;->throwIllegalNameException(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string v1, "XML names cannot be empty"

    invoke-static {p0, v1}, Lnu/xom/Verifier;->throwIllegalNameException(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-object v2, Lnu/xom/Verifier;->flags:[B

    aget-byte v2, v2, v1

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "XML names cannot start with the character "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lnu/xom/Verifier;->throwIllegalNameException(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sget-object v3, Lnu/xom/Verifier;->flags:[B

    aget-byte v3, v3, v2

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " is not a legal name character"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lnu/xom/Verifier;->throwIllegalNameException(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static isAlpha(C)Z
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    move v0, v1

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_3
    move v0, v1

    goto :goto_0

    :pswitch_4
    move v0, v1

    goto :goto_0

    :pswitch_5
    move v0, v1

    goto :goto_0

    :pswitch_6
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isHexDigit(C)Z
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_3
    move v0, v1

    goto :goto_0

    :pswitch_4
    move v0, v1

    goto :goto_0

    :pswitch_5
    move v0, v1

    goto :goto_0

    :pswitch_6
    move v0, v1

    goto :goto_0

    :pswitch_7
    move v0, v1

    goto :goto_0

    :pswitch_8
    move v0, v1

    goto :goto_0

    :pswitch_9
    move v0, v1

    goto :goto_0

    :pswitch_a
    move v0, v1

    goto :goto_0

    :pswitch_b
    move v0, v1

    goto :goto_0

    :pswitch_c
    move v0, v1

    goto :goto_0

    :pswitch_d
    move v0, v1

    goto :goto_0

    :pswitch_e
    move v0, v1

    goto :goto_0

    :pswitch_f
    move v0, v1

    goto :goto_0

    :pswitch_10
    move v0, v1

    goto :goto_0

    :pswitch_11
    move v0, v1

    goto :goto_0

    :pswitch_12
    move v0, v1

    goto :goto_0

    :pswitch_13
    move v0, v1

    goto :goto_0

    :pswitch_14
    move v0, v1

    goto :goto_0

    :pswitch_15
    move v0, v1

    goto :goto_0

    :pswitch_16
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method private static isPathCharacter(C)Z
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    move v0, v1

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_3
    move v0, v1

    goto :goto_0

    :pswitch_4
    move v0, v1

    goto :goto_0

    :pswitch_5
    move v0, v1

    goto :goto_0

    :pswitch_6
    move v0, v1

    goto :goto_0

    :pswitch_7
    move v0, v1

    goto :goto_0

    :pswitch_8
    move v0, v1

    goto :goto_0

    :pswitch_9
    move v0, v1

    goto :goto_0

    :pswitch_a
    move v0, v1

    goto :goto_0

    :pswitch_b
    move v0, v1

    goto :goto_0

    :pswitch_c
    move v0, v1

    goto :goto_0

    :pswitch_d
    move v0, v1

    goto :goto_0

    :pswitch_e
    move v0, v1

    goto :goto_0

    :pswitch_f
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
    .end packed-switch
.end method

.method private static isQueryCharacter(C)Z
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    move v0, v1

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_3
    move v0, v1

    goto :goto_0

    :pswitch_4
    move v0, v1

    goto :goto_0

    :pswitch_5
    move v0, v1

    goto :goto_0

    :pswitch_6
    move v0, v1

    goto :goto_0

    :pswitch_7
    move v0, v1

    goto :goto_0

    :pswitch_8
    move v0, v1

    goto :goto_0

    :pswitch_9
    move v0, v1

    goto :goto_0

    :pswitch_a
    move v0, v1

    goto :goto_0

    :pswitch_b
    move v0, v1

    goto :goto_0

    :pswitch_c
    move v0, v1

    goto :goto_0

    :pswitch_d
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
    .end packed-switch
.end method

.method private static isRegNameCharacter(C)Z
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    move v0, v1

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_3
    move v0, v1

    goto :goto_0

    :pswitch_4
    move v0, v1

    goto :goto_0

    :pswitch_5
    move v0, v1

    goto :goto_0

    :pswitch_6
    move v0, v1

    goto :goto_0

    :pswitch_7
    move v0, v1

    goto :goto_0

    :pswitch_8
    move v0, v1

    goto :goto_0

    :pswitch_9
    move v0, v1

    goto :goto_0

    :pswitch_a
    move v0, v1

    goto :goto_0

    :pswitch_b
    move v0, v1

    goto :goto_0

    :pswitch_c
    move v0, v1

    goto :goto_0

    :pswitch_d
    move v0, v1

    goto :goto_0

    :pswitch_e
    move v0, v1

    goto :goto_0

    :pswitch_f
    move v0, v1

    goto :goto_0

    :pswitch_10
    move v0, v1

    goto :goto_0

    :pswitch_11
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_0
    .end packed-switch
.end method

.method static isSchemeCharacter(C)Z
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    move v0, v1

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_3
    move v0, v1

    goto :goto_0

    :pswitch_4
    move v0, v1

    goto :goto_0

    :pswitch_5
    move v0, v1

    goto :goto_0

    :pswitch_6
    move v0, v1

    goto :goto_0

    :pswitch_7
    move v0, v1

    goto :goto_0

    :pswitch_8
    move v0, v1

    goto :goto_0

    :pswitch_9
    move v0, v1

    goto :goto_0

    :pswitch_a
    move v0, v1

    goto :goto_0

    :pswitch_b
    move v0, v1

    goto :goto_0

    :pswitch_c
    move v0, v1

    goto :goto_0

    :pswitch_d
    move v0, v1

    goto :goto_0

    :pswitch_e
    move v0, v1

    goto :goto_0

    :pswitch_f
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isUserInfoCharacter(C)Z
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    move v0, v1

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_3
    move v0, v1

    goto :goto_0

    :pswitch_4
    move v0, v1

    goto :goto_0

    :pswitch_5
    move v0, v1

    goto :goto_0

    :pswitch_6
    move v0, v1

    goto :goto_0

    :pswitch_7
    move v0, v1

    goto :goto_0

    :pswitch_8
    move v0, v1

    goto :goto_0

    :pswitch_9
    move v0, v1

    goto :goto_0

    :pswitch_a
    move v0, v1

    goto :goto_0

    :pswitch_b
    move v0, v1

    goto :goto_0

    :pswitch_c
    move v0, v1

    goto :goto_0

    :pswitch_d
    move v0, v1

    goto :goto_0

    :pswitch_e
    move v0, v1

    goto :goto_0

    :pswitch_f
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
    .end packed-switch
.end method

.method static isXMLSpaceCharacter(C)Z
    .locals 1

    const/16 v0, 0x20

    if-le p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lnu/xom/Verifier;->C0Table:[Z

    aget-boolean v0, v0, p0

    goto :goto_0
.end method

.method private static loadFlags(Ljava/lang/ClassLoader;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "nu/xom/characters.dat"

    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Broken XOM installation: could not load nu/xom/characters.dat"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    :goto_0
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Broken XOM installation: could not load nu/xom/characters.dat"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_1
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_2
    throw v0

    :cond_1
    :try_start_3
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    const/high16 v0, 0x1

    :try_start_4
    new-array v0, v0, [B

    sput-object v0, Lnu/xom/Verifier;->flags:[B

    sget-object v0, Lnu/xom/Verifier;->flags:[B

    invoke-virtual {v2, v0}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_2
    :goto_3
    return-void

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v0, v2

    goto :goto_0
.end method

.method private static throwIllegalCharacterDataException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lnu/xom/IllegalCharacterDataException;

    invoke-direct {v0, p1}, Lnu/xom/IllegalCharacterDataException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lnu/xom/IllegalDataException;->setData(Ljava/lang/String;)V

    throw v0
.end method

.method private static throwIllegalNameException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lnu/xom/IllegalNameException;

    invoke-direct {v0, p1}, Lnu/xom/IllegalNameException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lnu/xom/IllegalNameException;->setData(Ljava/lang/String;)V

    throw v0
.end method

.method private static throwMalformedURIException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lnu/xom/MalformedURIException;

    invoke-direct {v0, p1}, Lnu/xom/MalformedURIException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lnu/xom/MalformedURIException;->setData(Ljava/lang/String;)V

    throw v0
.end method
