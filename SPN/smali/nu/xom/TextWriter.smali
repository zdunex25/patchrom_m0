.class abstract Lnu/xom/TextWriter;
.super Ljava/lang/Object;


# static fields
.field private static final _128:I = 0x80

.field private static final _128_SPACES:Ljava/lang/String; = "                                                                                                                                "


# instance fields
.field protected column:I

.field protected final encoding:Ljava/lang/String;

.field private fakeIndents:I

.field private highSurrogate:C

.field private inDocType:Z

.field private indent:I

.field private indentString:Ljava/lang/String;

.field protected justBroke:Z

.field protected lastCharacterWasSpace:Z

.field private lineSeparator:Ljava/lang/String;

.field lineSeparatorSet:Z

.field private maxLength:I

.field protected normalize:Z

.field protected final out:Ljava/io/Writer;

.field private preserveSpace:Z

.field protected skipFollowingLinefeed:Z


# direct methods
.method protected constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\r\n"

    iput-object v0, p0, Lnu/xom/TextWriter;->lineSeparator:Ljava/lang/String;

    iput-boolean v1, p0, Lnu/xom/TextWriter;->lineSeparatorSet:Z

    iput-boolean v1, p0, Lnu/xom/TextWriter;->inDocType:Z

    iput v1, p0, Lnu/xom/TextWriter;->maxLength:I

    iput v1, p0, Lnu/xom/TextWriter;->indent:I

    const-string v0, ""

    iput-object v0, p0, Lnu/xom/TextWriter;->indentString:Ljava/lang/String;

    iput v1, p0, Lnu/xom/TextWriter;->column:I

    iput-boolean v1, p0, Lnu/xom/TextWriter;->preserveSpace:Z

    iput-boolean v1, p0, Lnu/xom/TextWriter;->normalize:Z

    iput-boolean v1, p0, Lnu/xom/TextWriter;->lastCharacterWasSpace:Z

    iput-boolean v1, p0, Lnu/xom/TextWriter;->skipFollowingLinefeed:Z

    iput-boolean v1, p0, Lnu/xom/TextWriter;->justBroke:Z

    iput v1, p0, Lnu/xom/TextWriter;->fakeIndents:I

    iput-object p1, p0, Lnu/xom/TextWriter;->out:Ljava/io/Writer;

    iput-object p2, p0, Lnu/xom/TextWriter;->encoding:Ljava/lang/String;

    return-void
.end method

.method private adjustingWhiteSpace()Z
    .locals 1

    iget v0, p0, Lnu/xom/TextWriter;->maxLength:I

    if-gtz v0, :cond_0

    iget v0, p0, Lnu/xom/TextWriter;->indent:I

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final escapeBreakLine()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "\n"

    iget-object v1, p0, Lnu/xom/TextWriter;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnu/xom/TextWriter;->out:Ljava/io/Writer;

    const-string v1, "&#x0A;"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v0, p0, Lnu/xom/TextWriter;->column:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lnu/xom/TextWriter;->column:I

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnu/xom/TextWriter;->lastCharacterWasSpace:Z

    return-void

    :cond_0
    const-string v0, "\r\n"

    iget-object v1, p0, Lnu/xom/TextWriter;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnu/xom/TextWriter;->out:Ljava/io/Writer;

    const-string v1, "&#x0D;&#x0A;"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v0, p0, Lnu/xom/TextWriter;->column:I

    add-int/lit8 v0, v0, 0xc

    iput v0, p0, Lnu/xom/TextWriter;->column:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnu/xom/TextWriter;->out:Ljava/io/Writer;

    const-string v1, "&#x0D;"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v0, p0, Lnu/xom/TextWriter;->column:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lnu/xom/TextWriter;->column:I

    goto :goto_0
.end method

.method private isHighSurrogate(I)Z
    .locals 1

    const v0, 0xd800

    if-lt p1, v0, :cond_0

    const v0, 0xdbff

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLowSurrogate(I)Z
    .locals 1

    const v0, 0xdc00

    if-lt p1, v0, :cond_0

    const v0, 0xdfff

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needsBreak()Z
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lnu/xom/TextWriter;->maxLength:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lnu/xom/TextWriter;->preserveSpace:Z

    if-eqz v0, :cond_1

    :cond_0
    move v0, v3

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lnu/xom/TextWriter;->column:I

    iget v1, p0, Lnu/xom/TextWriter;->maxLength:I

    const/16 v2, 0xa

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method private writeEscapedChar(C)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x3b

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lnu/xom/TextWriter;->isHighSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-char p1, p0, Lnu/xom/TextWriter;->highSurrogate:C

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lnu/xom/TextWriter;->isLowSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-char v0, p0, Lnu/xom/TextWriter;->highSurrogate:C

    invoke-static {v0, p1}, Lnu/xom/UnicodeUtil;->combineSurrogatePair(CC)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "&#x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnu/xom/TextWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v1, p0, Lnu/xom/TextWriter;->column:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lnu/xom/TextWriter;->column:I

    iput-boolean v3, p0, Lnu/xom/TextWriter;->lastCharacterWasSpace:Z

    iput-boolean v3, p0, Lnu/xom/TextWriter;->skipFollowingLinefeed:Z

    iput-boolean v3, p0, Lnu/xom/TextWriter;->justBroke:Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "&#x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnu/xom/TextWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v1, p0, Lnu/xom/TextWriter;->column:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lnu/xom/TextWriter;->column:I

    iput-boolean v3, p0, Lnu/xom/TextWriter;->lastCharacterWasSpace:Z

    iput-boolean v3, p0, Lnu/xom/TextWriter;->skipFollowingLinefeed:Z

    iput-boolean v3, p0, Lnu/xom/TextWriter;->justBroke:Z

    goto :goto_0
.end method

.method private writeLineSeparator(C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lnu/xom/TextWriter;->inDocType:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lnu/xom/TextWriter;->lineSeparatorSet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnu/xom/TextWriter;->preserveSpace:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lnu/xom/TextWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lnu/xom/TextWriter;->lineSeparator:Ljava/lang/String;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnu/xom/TextWriter;->out:Ljava/io/Writer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnu/xom/TextWriter;->lineSeparator:Ljava/lang/String;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnu/xom/TextWriter;->out:Ljava/io/Writer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lnu/xom/TextWriter;->out:Ljava/io/Writer;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_0
.end method


# virtual methods
.method final breakLine()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    iget-object v0, p0, Lnu/xom/TextWriter;->out:Ljava/io/Writer;

    iget-object v1, p0, Lnu/xom/TextWriter;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lnu/xom/TextWriter;->out:Ljava/io/Writer;

    iget-object v1, p0, Lnu/xom/TextWriter;->indentString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lnu/xom/TextWriter;->indentString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lnu/xom/TextWriter;->column:I

    iput-boolean v2, p0, Lnu/xom/TextWriter;->lastCharacterWasSpace:Z

    iput-boolean v2, p0, Lnu/xom/TextWriter;->justBroke:Z

    return-void
.end method

.method decrementIndent()V
    .locals 4

    iget v0, p0, Lnu/xom/TextWriter;->indent:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lnu/xom/TextWriter;->fakeIndents:I

    if-lez v0, :cond_1

    iget v0, p0, Lnu/xom/TextWriter;->fakeIndents:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lnu/xom/TextWriter;->fakeIndents:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnu/xom/TextWriter;->indentString:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lnu/xom/TextWriter;->indentString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lnu/xom/TextWriter;->indent:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnu/xom/TextWriter;->indentString:Ljava/lang/String;

    goto :goto_0
.end method

.method flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnu/xom/TextWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method getColumnNumber()I
    .locals 1

    iget v0, p0, Lnu/xom/TextWriter;->column:I

    return v0
.end method

.method getEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnu/xom/TextWriter;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method getIndent()I
    .locals 1

    iget v0, p0, Lnu/xom/TextWriter;->indent:I

    return v0
.end method

.method getLineSeparator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnu/xom/TextWriter;->lineSeparator:Ljava/lang/String;

    return-object v0
.end method

.method getMaxLength()I
    .locals 1

    iget v0, p0, Lnu/xom/TextWriter;->maxLength:I

    return v0
.end method

.method getNFC()Z
    .locals 1

    iget-boolean v0, p0, Lnu/xom/TextWriter;->normalize:Z

    return v0
.end method

.method incrementIndent()V
    .locals 4

    const/16 v3, 0x80

    iget v0, p0, Lnu/xom/TextWriter;->indent:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnu/xom/TextWriter;->indentString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lnu/xom/TextWriter;->indent:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lnu/xom/TextWriter;->indentString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lnu/xom/TextWriter;->indent:I

    add-int/2addr v1, v2

    if-ge v1, v3, :cond_1

    const-string v1, "                                                                                                                                "

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget v1, p0, Lnu/xom/TextWriter;->maxLength:I

    if-lez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lnu/xom/TextWriter;->maxLength:I

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_3

    iget v0, p0, Lnu/xom/TextWriter;->fakeIndents:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnu/xom/TextWriter;->fakeIndents:I

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v2, "                                                                                                                                "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v3

    :goto_2
    if-ge v2, v0, :cond_2

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    iput-object v0, p0, Lnu/xom/TextWriter;->indentString:Ljava/lang/String;

    goto :goto_0
.end method

.method isIndenting()Z
    .locals 1

    iget-object v0, p0, Lnu/xom/TextWriter;->indentString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPreserveSpace()Z
    .locals 1

    iget-boolean v0, p0, Lnu/xom/TextWriter;->preserveSpace:Z

    return v0
.end method

.method justBroke()Z
    .locals 1

    iget-boolean v0, p0, Lnu/xom/TextWriter;->justBroke:Z

    return v0
.end method

.method abstract needsEscaping(C)Z
.end method

.method protected normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lnu/xom/TextWriter;->normalize:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lnu/xom/UnicodeUtil;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lnu/xom/TextWriter;->column:I

    iput v0, p0, Lnu/xom/TextWriter;->fakeIndents:I

    iput-boolean v0, p0, Lnu/xom/TextWriter;->lastCharacterWasSpace:Z

    iput-boolean v0, p0, Lnu/xom/TextWriter;->skipFollowingLinefeed:Z

    return-void
.end method

.method setInDocType(Z)V
    .locals 0

    iput-boolean p1, p0, Lnu/xom/TextWriter;->inDocType:Z

    return-void
.end method

.method setIndent(I)V
    .locals 0

    iput p1, p0, Lnu/xom/TextWriter;->indent:I

    return-void
.end method

.method setLineSeparator(Ljava/lang/String;)V
    .locals 2

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\r"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput-object p1, p0, Lnu/xom/TextWriter;->lineSeparator:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnu/xom/TextWriter;->lineSeparatorSet:Z

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal Line Separator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setMaxLength(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lnu/xom/TextWriter;->maxLength:I

    return-void

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method setNFC(Z)V
    .locals 0

    iput-boolean p1, p0, Lnu/xom/TextWriter;->normalize:Z

    return-void
.end method

.method setPreserveSpace(Z)V
    .locals 0

    iput-boolean p1, p0, Lnu/xom/TextWriter;->preserveSpace:Z

    return-void
.end method

.method write(C)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x9

    const/16 v2, 0x20

    const/4 v1, 0x0

    if-eq p1, v2, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    if-ne p1, v3, :cond_9

    :cond_0
    invoke-direct {p0}, Lnu/xom/TextWriter;->needsBreak()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnu/xom/TextWriter;->breakLine()V

    iput-boolean v1, p0, Lnu/xom/TextWriter;->skipFollowingLinefeed:Z

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnu/xom/TextWriter;->lastCharacterWasSpace:Z

    :goto_1
    return-void

    :cond_2
    iget-boolean v0, p0, Lnu/xom/TextWriter;->preserveSpace:Z

    if-nez v0, :cond_3

    iget v0, p0, Lnu/xom/TextWriter;->indent:I

    if-gtz v0, :cond_8

    iget v0, p0, Lnu/xom/TextWriter;->maxLength:I

    if-gtz v0, :cond_8

    :cond_3
    if-eq p1, v2, :cond_4

    if-ne p1, v3, :cond_5

    :cond_4
    iget-object v0, p0, Lnu/xom/TextWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    iput-boolean v1, p0, Lnu/xom/TextWriter;->skipFollowingLinefeed:Z

    iget v0, p0, Lnu/xom/TextWriter;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnu/xom/TextWriter;->column:I

    iput-boolean v1, p0, Lnu/xom/TextWriter;->justBroke:Z

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lnu/xom/TextWriter;->lineSeparatorSet:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lnu/xom/TextWriter;->skipFollowingLinefeed:Z

    if-nez v0, :cond_7

    :cond_6
    invoke-direct {p0, p1}, Lnu/xom/TextWriter;->writeLineSeparator(C)V

    :cond_7
    iput-boolean v1, p0, Lnu/xom/TextWriter;->skipFollowingLinefeed:Z

    iput v1, p0, Lnu/xom/TextWriter;->column:I

    goto :goto_0

    :cond_8
    iget-boolean v0, p0, Lnu/xom/TextWriter;->lastCharacterWasSpace:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lnu/xom/TextWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V

    iget v0, p0, Lnu/xom/TextWriter;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnu/xom/TextWriter;->column:I

    iput-boolean v1, p0, Lnu/xom/TextWriter;->skipFollowingLinefeed:Z

    iput-boolean v1, p0, Lnu/xom/TextWriter;->justBroke:Z

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lnu/xom/TextWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    const v0, 0xd800

    if-lt p1, v0, :cond_a

    const v0, 0xdbff

    if-le p1, v0, :cond_b

    :cond_a
    iget v0, p0, Lnu/xom/TextWriter;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnu/xom/TextWriter;->column:I

    :cond_b
    iput-boolean v1, p0, Lnu/xom/TextWriter;->lastCharacterWasSpace:Z

    iput-boolean v1, p0, Lnu/xom/TextWriter;->skipFollowingLinefeed:Z

    iput-boolean v1, p0, Lnu/xom/TextWriter;->justBroke:Z

    goto :goto_1
.end method

.method final writeAttributeValue(C)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->needsEscaping(C)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lnu/xom/TextWriter;->writeEscapedChar(C)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lnu/xom/TextWriter;->adjustingWhiteSpace()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnu/xom/TextWriter;->out:Ljava/io/Writer;

    const-string v1, "&#x09;"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v0, p0, Lnu/xom/TextWriter;->column:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lnu/xom/TextWriter;->column:I

    iput-boolean v3, p0, Lnu/xom/TextWriter;->lastCharacterWasSpace:Z

    iput-boolean v2, p0, Lnu/xom/TextWriter;->skipFollowingLinefeed:Z

    iput-boolean v2, p0, Lnu/xom/TextWriter;->justBroke:Z

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lnu/xom/TextWriter;->write(C)V

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lnu/xom/TextWriter;->skipFollowingLinefeed:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lnu/xom/TextWriter;->skipFollowingLinefeed:Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lnu/xom/TextWriter;->adjustingWhiteSpace()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnu/xom/TextWriter;->out:Ljava/io/Writer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iput-boolean v3, p0, Lnu/xom/TextWriter;->lastCharacterWasSpace:Z

    iput-boolean v2, p0, Lnu/xom/TextWriter;->justBroke:Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lnu/xom/TextWriter;->lineSeparatorSet:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lnu/xom/TextWriter;->escapeBreakLine()V

    :goto_1
    iput-boolean v3, p0, Lnu/xom/TextWriter;->lastCharacterWasSpace:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lnu/xom/TextWriter;->out:Ljava/io/Writer;

    const-string v1, "&#x0A;"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v0, p0, Lnu/xom/TextWriter;->column:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lnu/xom/TextWriter;->column:I

    iput-boolean v2, p0, Lnu/xom/TextWriter;->justBroke:Z

    goto :goto_1

    :pswitch_2
    new-instance v0, Lnu/xom/XMLException;

    const-string v1, "Bad character snuck into document"

    invoke-direct {v0, v1}, Lnu/xom/XMLException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    invoke-direct {p0}, Lnu/xom/TextWriter;->adjustingWhiteSpace()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnu/xom/TextWriter;->out:Ljava/io/Writer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iput-boolean v3, p0, Lnu/xom/TextWriter;->lastCharacterWasSpace:Z

    iput-boolean v3, p0, Lnu/xom/TextWriter;->skipFollowingLinefeed:Z

    iput-boolean v2, p0, Lnu/xom/TextWriter;->justBroke:Z

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lnu/xom/TextWriter;->lineSeparatorSet:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lnu/xom/TextWriter;->escapeBreakLine()V

    iput-boolean v3, p0, Lnu/xom/TextWriter;->skipFollowingLinefeed:Z

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lnu/xom/TextWriter;->out:Ljava/io/Writer;

    const-string v1, "&#x0D;"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v0, p0, Lnu/xom/TextWriter;->column:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lnu/xom/TextWriter;->column:I

    iput-boolean v2, p0, Lnu/xom/TextWriter;->justBroke:Z

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Lnu/xom/XMLException;

    const-string v1, "Bad character snuck into document"

    invoke-direct {v0, v1}, Lnu/xom/XMLException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lnu/xom/TextWriter;->out:Ljava/io/Writer;

    const-string v1, "&quot;"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v0, p0, Lnu/xom/TextWriter;->column:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lnu/xom/TextWriter;->column:I

    iput-boolean v2, p0, Lnu/xom/TextWriter;->lastCharacterWasSpace:Z

    iput-boolean v2, p0, Lnu/xom/TextWriter;->skipFollowingLinefeed:Z

    iput-boolean v2, p0, Lnu/xom/TextWriter;->justBroke:Z

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p0, Lnu/xom/TextWriter;->out:Ljava/io/Writer;

    const-string v1, "&amp;"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v0, p0, Lnu/xom/TextWriter;->column:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lnu/xom/TextWriter;->column:I

    iput-boolean v2, p0, Lnu/xom/TextWriter;->lastCharacterWasSpace:Z

    iput-boolean v2, p0, Lnu/xom/TextWriter;->skipFollowingLinefeed:Z

    iput-boolean v2, p0, Lnu/xom/TextWriter;->justBroke:Z

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto/16 :goto_0

    :pswitch_15
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto/16 :goto_0

    :pswitch_16
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto/16 :goto_0

    :pswitch_17
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto/16 :goto_0

    :pswitch_18
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto/16 :goto_0

    :pswitch_19
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto/16 :goto_0

    :pswitch_1a
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto/16 :goto_0

    :pswitch_1b
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto/16 :goto_0

    :pswitch_1c
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto/16 :goto_0

    :pswitch_1d
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto/16 :goto_0

    :pswitch_1e
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto/16 :goto_0

    :pswitch_1f
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto/16 :goto_0

    :pswitch_20
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto/16 :goto_0

    :pswitch_21
    iget-object v0, p0, Lnu/xom/TextWriter;->out:Ljava/io/Writer;

    const-string v1, "&lt;"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v0, p0, Lnu/xom/TextWriter;->column:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lnu/xom/TextWriter;->column:I

    iput-boolean v2, p0, Lnu/xom/TextWriter;->lastCharacterWasSpace:Z

    iput-boolean v2, p0, Lnu/xom/TextWriter;->skipFollowingLinefeed:Z

    iput-boolean v2, p0, Lnu/xom/TextWriter;->justBroke:Z

    goto/16 :goto_0

    :pswitch_22
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto/16 :goto_0

    :pswitch_23
    iget-object v0, p0, Lnu/xom/TextWriter;->out:Ljava/io/Writer;

    const-string v1, "&gt;"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v0, p0, Lnu/xom/TextWriter;->column:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lnu/xom/TextWriter;->column:I

    iput-boolean v2, p0, Lnu/xom/TextWriter;->lastCharacterWasSpace:Z

    iput-boolean v2, p0, Lnu/xom/TextWriter;->skipFollowingLinefeed:Z

    iput-boolean v2, p0, Lnu/xom/TextWriter;->justBroke:Z

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto/16 :goto_0

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

.method writeAttributeValue(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lnu/xom/TextWriter;->writeAttributeValue(C)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final writeMarkup(C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->needsEscaping(C)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnu/xom/UnavailableCharacterException;

    iget-object v1, p0, Lnu/xom/TextWriter;->encoding:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lnu/xom/UnavailableCharacterException;-><init>(CLjava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    return-void
.end method

.method writeMarkup(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lnu/xom/TextWriter;->writeMarkup(C)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method writeName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->writeMarkup(Ljava/lang/String;)V

    return-void
.end method

.method final writePCDATA(C)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->needsEscaping(C)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lnu/xom/TextWriter;->writeEscapedChar(C)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lnu/xom/TextWriter;->adjustingWhiteSpace()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lnu/xom/TextWriter;->lineSeparatorSet:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnu/xom/TextWriter;->out:Ljava/io/Writer;

    const-string v1, "&#x0D;"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v0, p0, Lnu/xom/TextWriter;->column:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lnu/xom/TextWriter;->column:I

    iput-boolean v2, p0, Lnu/xom/TextWriter;->justBroke:Z

    :goto_1
    iput-boolean v3, p0, Lnu/xom/TextWriter;->skipFollowingLinefeed:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnu/xom/TextWriter;->breakLine()V

    iput-boolean v3, p0, Lnu/xom/TextWriter;->lastCharacterWasSpace:Z

    goto :goto_1

    :pswitch_1
    new-instance v0, Lnu/xom/XMLException;

    const-string v1, "Bad character snuck into document"

    invoke-direct {v0, v1}, Lnu/xom/XMLException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lnu/xom/TextWriter;->out:Ljava/io/Writer;

    const-string v1, "&amp;"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v0, p0, Lnu/xom/TextWriter;->column:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lnu/xom/TextWriter;->column:I

    iput-boolean v2, p0, Lnu/xom/TextWriter;->lastCharacterWasSpace:Z

    iput-boolean v2, p0, Lnu/xom/TextWriter;->skipFollowingLinefeed:Z

    iput-boolean v2, p0, Lnu/xom/TextWriter;->justBroke:Z

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto :goto_0

    :pswitch_a
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto :goto_0

    :pswitch_b
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto :goto_0

    :pswitch_c
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto :goto_0

    :pswitch_d
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto :goto_0

    :pswitch_e
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto :goto_0

    :pswitch_f
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto :goto_0

    :pswitch_10
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto :goto_0

    :pswitch_11
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto :goto_0

    :pswitch_12
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto :goto_0

    :pswitch_13
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto/16 :goto_0

    :pswitch_15
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto/16 :goto_0

    :pswitch_16
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto/16 :goto_0

    :pswitch_17
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto/16 :goto_0

    :pswitch_18
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto/16 :goto_0

    :pswitch_19
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto/16 :goto_0

    :pswitch_1a
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto/16 :goto_0

    :pswitch_1b
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto/16 :goto_0

    :pswitch_1c
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto/16 :goto_0

    :pswitch_1d
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto/16 :goto_0

    :pswitch_1e
    iget-object v0, p0, Lnu/xom/TextWriter;->out:Ljava/io/Writer;

    const-string v1, "&lt;"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v0, p0, Lnu/xom/TextWriter;->column:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lnu/xom/TextWriter;->column:I

    iput-boolean v2, p0, Lnu/xom/TextWriter;->lastCharacterWasSpace:Z

    iput-boolean v2, p0, Lnu/xom/TextWriter;->skipFollowingLinefeed:Z

    iput-boolean v2, p0, Lnu/xom/TextWriter;->justBroke:Z

    goto/16 :goto_0

    :pswitch_1f
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto/16 :goto_0

    :pswitch_20
    iget-object v0, p0, Lnu/xom/TextWriter;->out:Ljava/io/Writer;

    const-string v1, "&gt;"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v0, p0, Lnu/xom/TextWriter;->column:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lnu/xom/TextWriter;->column:I

    iput-boolean v2, p0, Lnu/xom/TextWriter;->lastCharacterWasSpace:Z

    iput-boolean v2, p0, Lnu/xom/TextWriter;->skipFollowingLinefeed:Z

    iput-boolean v2, p0, Lnu/xom/TextWriter;->justBroke:Z

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->write(C)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
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
    .end packed-switch
.end method

.method writePCDATA(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnu/xom/TextWriter;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lnu/xom/TextWriter;->writePCDATA(C)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method writeUncheckedMarkup(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lnu/xom/TextWriter;->write(C)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
