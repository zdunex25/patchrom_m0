.class final Lnu/xom/UnicodeWriter;
.super Lnu/xom/TextWriter;


# direct methods
.method constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnu/xom/TextWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    return-void
.end method

.method private static getUnicodeLengthForAttributeValue(Ljava/lang/String;)I
    .locals 6

    const/4 v1, 0x0

    const/4 v5, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    packed-switch v3, :pswitch_data_0

    const v4, 0xd800

    if-lt v3, v4, :cond_0

    const v4, 0xdbff

    if-le v3, v4, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_0
    move v0, v5

    :goto_2
    return v0

    :pswitch_1
    move v0, v5

    goto :goto_2

    :pswitch_2
    new-instance v0, Lnu/xom/XMLException;

    const-string v1, "Bad character snuck into document"

    invoke-direct {v0, v1}, Lnu/xom/XMLException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    move v0, v5

    goto :goto_2

    :pswitch_4
    new-instance v0, Lnu/xom/XMLException;

    const-string v1, "Bad character snuck into document"

    invoke-direct {v0, v1}, Lnu/xom/XMLException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    move v0, v5

    goto :goto_2

    :pswitch_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_7
    move v0, v5

    goto :goto_2

    :pswitch_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_b
    move v0, v5

    goto :goto_2

    :pswitch_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_21
    move v0, v5

    goto :goto_2

    :pswitch_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_23
    move v0, v5

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
    .end packed-switch
.end method

.method private static getUnicodeLengthForMarkup(Ljava/lang/String;)I
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-gt v3, v4, :cond_0

    const/4 v0, -0x1

    :goto_1
    return v0

    :cond_0
    const v4, 0xd800

    if-lt v3, v4, :cond_1

    const v4, 0xdbff

    if-le v3, v4, :cond_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private static getUnicodeLengthForName(Ljava/lang/String;)I
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v4, 0xd800

    if-lt v3, v4, :cond_0

    const v4, 0xdbff

    if-le v3, v4, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private static getUnicodeLengthForPCDATA(Ljava/lang/String;)I
    .locals 6

    const/4 v1, 0x0

    const/4 v5, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    packed-switch v3, :pswitch_data_0

    const v4, 0xd800

    if-lt v3, v4, :cond_0

    const v4, 0xdbff

    if-le v3, v4, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_0
    move v0, v5

    :goto_2
    return v0

    :pswitch_1
    move v0, v5

    goto :goto_2

    :pswitch_2
    new-instance v0, Lnu/xom/XMLException;

    const-string v1, "Bad character snuck into document"

    invoke-direct {v0, v1}, Lnu/xom/XMLException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    move v0, v5

    goto :goto_2

    :pswitch_4
    new-instance v0, Lnu/xom/XMLException;

    const-string v1, "Bad character snuck into document"

    invoke-direct {v0, v1}, Lnu/xom/XMLException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    move v0, v5

    goto :goto_2

    :pswitch_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_b
    move v0, v5

    goto :goto_2

    :pswitch_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_21
    move v0, v5

    goto :goto_2

    :pswitch_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_23
    move v0, v5

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
    .end packed-switch
.end method


# virtual methods
.method needsEscaping(C)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method writeAttributeValue(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-boolean v0, p0, Lnu/xom/UnicodeWriter;->normalize:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lnu/xom/UnicodeWriter;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lnu/xom/UnicodeWriter;->getUnicodeLengthForAttributeValue(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v2, p0, Lnu/xom/UnicodeWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-lez v1, :cond_0

    iget v0, p0, Lnu/xom/UnicodeWriter;->column:I

    add-int/2addr v0, v1

    iput v0, p0, Lnu/xom/UnicodeWriter;->column:I

    iput-boolean v3, p0, Lnu/xom/UnicodeWriter;->lastCharacterWasSpace:Z

    iput-boolean v3, p0, Lnu/xom/UnicodeWriter;->skipFollowingLinefeed:Z

    iput-boolean v3, p0, Lnu/xom/UnicodeWriter;->justBroke:Z

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    move v2, v3

    :goto_1
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lnu/xom/UnicodeWriter;->writeAttributeValue(C)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object v0, p1

    goto :goto_0
.end method

.method writeMarkup(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-boolean v0, p0, Lnu/xom/UnicodeWriter;->normalize:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lnu/xom/UnicodeWriter;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lnu/xom/UnicodeWriter;->getUnicodeLengthForMarkup(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v2, p0, Lnu/xom/UnicodeWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-lez v1, :cond_0

    iget v0, p0, Lnu/xom/UnicodeWriter;->column:I

    add-int/2addr v0, v1

    iput v0, p0, Lnu/xom/UnicodeWriter;->column:I

    iput-boolean v3, p0, Lnu/xom/UnicodeWriter;->lastCharacterWasSpace:Z

    iput-boolean v3, p0, Lnu/xom/UnicodeWriter;->skipFollowingLinefeed:Z

    iput-boolean v3, p0, Lnu/xom/UnicodeWriter;->justBroke:Z

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    move v2, v3

    :goto_1
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lnu/xom/UnicodeWriter;->writeMarkup(C)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object v0, p1

    goto :goto_0
.end method

.method writeName(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-boolean v0, p0, Lnu/xom/UnicodeWriter;->normalize:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lnu/xom/UnicodeWriter;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lnu/xom/UnicodeWriter;->getUnicodeLengthForName(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lnu/xom/UnicodeWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v0, p0, Lnu/xom/UnicodeWriter;->column:I

    add-int/2addr v0, v1

    iput v0, p0, Lnu/xom/UnicodeWriter;->column:I

    iput-boolean v3, p0, Lnu/xom/UnicodeWriter;->lastCharacterWasSpace:Z

    iput-boolean v3, p0, Lnu/xom/UnicodeWriter;->skipFollowingLinefeed:Z

    iput-boolean v3, p0, Lnu/xom/UnicodeWriter;->justBroke:Z

    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method writePCDATA(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-boolean v0, p0, Lnu/xom/UnicodeWriter;->normalize:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lnu/xom/UnicodeWriter;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lnu/xom/UnicodeWriter;->getUnicodeLengthForPCDATA(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v2, p0, Lnu/xom/UnicodeWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-lez v1, :cond_0

    iget v0, p0, Lnu/xom/UnicodeWriter;->column:I

    add-int/2addr v0, v1

    iput v0, p0, Lnu/xom/UnicodeWriter;->column:I

    iput-boolean v3, p0, Lnu/xom/UnicodeWriter;->lastCharacterWasSpace:Z

    iput-boolean v3, p0, Lnu/xom/UnicodeWriter;->skipFollowingLinefeed:Z

    iput-boolean v3, p0, Lnu/xom/UnicodeWriter;->justBroke:Z

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    move v2, v3

    :goto_1
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lnu/xom/UnicodeWriter;->writePCDATA(C)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object v0, p1

    goto :goto_0
.end method
