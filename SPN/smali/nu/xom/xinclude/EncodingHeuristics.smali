.class Lnu/xom/xinclude/EncodingHeuristics;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findEncodingDeclaration(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x20

    const/16 v5, 0xd

    const/16 v4, 0xa

    const/16 v3, 0x9

    const-string v0, "encoding"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    :goto_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v6, :cond_3

    if-eq v0, v3, :cond_3

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_3

    const/16 v2, 0x3d

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Couldn\'t determine encoding"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v6, :cond_0

    if-eq v0, v3, :cond_0

    if-eq v0, v5, :cond_0

    if-eq v0, v4, :cond_0

    const/16 v2, 0x27

    if-eq v0, v2, :cond_1

    const/16 v2, 0x22

    if-eq v0, v2, :cond_1

    const-string v0, "UTF-8"

    :goto_1
    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_2
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v0, :cond_2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v3

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static readEncodingFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v8, 0x3f

    const/4 v7, 0x0

    const/16 v6, 0xff

    const/16 v5, 0xfe

    const/16 v4, 0x3c

    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ne v0, v5, :cond_0

    if-ne v1, v6, :cond_0

    const-string v0, "UnicodeBig"

    :goto_0
    return-object v0

    :cond_0
    if-ne v0, v6, :cond_1

    if-ne v1, v5, :cond_1

    const-string v0, "UnicodeLittle"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/16 v3, 0xef

    if-ne v0, v3, :cond_2

    const/16 v3, 0xbb

    if-ne v1, v3, :cond_2

    const/16 v3, 0xbf

    if-ne v2, v3, :cond_2

    const-string v0, "UTF-8"

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    if-nez v0, :cond_3

    if-nez v1, :cond_3

    if-ne v2, v5, :cond_3

    if-ne v3, v6, :cond_3

    const-string v0, "UTF32BE"

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    if-ne v2, v6, :cond_4

    if-ne v3, v5, :cond_4

    const-string v0, "UTF32LE"

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    if-nez v1, :cond_5

    if-nez v2, :cond_5

    if-ne v3, v4, :cond_5

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    const-string v0, "UTF32BE"

    goto :goto_0

    :cond_5
    if-ne v0, v4, :cond_6

    if-nez v1, :cond_6

    if-nez v2, :cond_6

    if-nez v3, :cond_6

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    const-string v0, "UTF32LE"

    goto :goto_0

    :cond_6
    if-nez v0, :cond_7

    if-ne v1, v4, :cond_7

    if-nez v2, :cond_7

    if-ne v3, v8, :cond_7

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    const-string v0, "UnicodeBigUnmarked"

    goto :goto_0

    :cond_7
    if-ne v0, v4, :cond_8

    if-nez v1, :cond_8

    if-ne v2, v8, :cond_8

    if-nez v3, :cond_8

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    const-string v0, "UnicodeLittleUnmarked"

    goto :goto_0

    :cond_8
    if-ne v0, v4, :cond_9

    if-ne v1, v8, :cond_9

    const/16 v4, 0x78

    if-ne v2, v4, :cond_9

    const/16 v4, 0x6d

    if-ne v3, v4, :cond_9

    const/16 v4, 0x400

    new-array v4, v4, [B

    const/4 v5, 0x0

    int-to-byte v0, v0

    aput-byte v0, v4, v5

    const/4 v0, 0x1

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    const/4 v0, 0x2

    int-to-byte v1, v2

    aput-byte v1, v4, v0

    const/4 v0, 0x3

    int-to-byte v1, v3

    aput-byte v1, v4, v0

    const/4 v0, 0x4

    const/16 v1, 0x3fc

    invoke-virtual {p0, v4, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "8859_1"

    invoke-direct {v1, v4, v2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v1}, Lnu/xom/xinclude/EncodingHeuristics;->findEncodingDeclaration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    const-string v0, "UTF-8"

    goto/16 :goto_0

    :cond_9
    const/16 v4, 0x4c

    if-ne v0, v4, :cond_c

    const/16 v0, 0x6f

    if-ne v1, v0, :cond_c

    const/16 v0, 0xa7

    if-ne v2, v0, :cond_c

    const/16 v0, 0x94

    if-ne v3, v0, :cond_c

    const/16 v0, 0x3f8

    :try_start_1
    new-array v0, v0, [B

    move v1, v7

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_a

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_b

    :cond_a
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    new-instance v1, Ljava/lang/String;

    const-string v2, "Cp037"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v1}, Lnu/xom/xinclude/EncodingHeuristics;->findEncodingDeclaration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    const-string v0, "UTF-8"

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    const-string v0, "UTF-8"

    goto/16 :goto_0
.end method
