.class public Lnu/xom/Serializer;
.super Ljava/lang/Object;


# instance fields
.field private escaper:Lnu/xom/TextWriter;

.field private namespaces:Lorg/xml/sax/helpers/NamespaceSupport;

.field private preserveBaseURI:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnu/xom/Serializer;->preserveBaseURI:Z

    new-instance v0, Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-direct {v0}, Lorg/xml/sax/helpers/NamespaceSupport;-><init>()V

    iput-object v0, p0, Lnu/xom/Serializer;->namespaces:Lorg/xml/sax/helpers/NamespaceSupport;

    :try_start_0
    const-string v0, "UTF-8"

    invoke-direct {p0, p1, v0}, Lnu/xom/Serializer;->setOutputStream(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The VM is broken. It does not understand UTF-8."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnu/xom/Serializer;->preserveBaseURI:Z

    new-instance v0, Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-direct {v0}, Lorg/xml/sax/helpers/NamespaceSupport;-><init>()V

    iput-object v0, p0, Lnu/xom/Serializer;->namespaces:Lorg/xml/sax/helpers/NamespaceSupport;

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null encoding"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lnu/xom/Serializer;->setOutputStream(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method

.method private hasNonTextChildren(Lnu/xom/Element;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lnu/xom/Element;->getChildCount()I

    move-result v0

    move v1, v3

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Lnu/xom/Element;->getChild(I)Lnu/xom/Node;

    move-result-object v2

    invoke-virtual {v2}, Lnu/xom/Node;->isText()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1
.end method

.method private isBoundaryWhitespace(Lnu/xom/Text;Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lnu/xom/Serializer;->getIndent()I

    move-result v0

    if-gtz v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lnu/xom/Text;->getParent()Lnu/xom/ParentNode;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lnu/xom/ParentNode;->getChildCount()I

    move-result v1

    if-ne v1, v5, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    const-string v2, ""

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p1}, Lnu/xom/ParentNode;->indexOf(Lnu/xom/Node;)I

    move-result v2

    if-eqz v2, :cond_8

    sub-int v3, v2, v5

    invoke-virtual {v0, v3}, Lnu/xom/ParentNode;->getChild(I)Lnu/xom/Node;

    move-result-object v3

    :goto_1
    sub-int/2addr v1, v5

    if-eq v2, v1, :cond_7

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v1}, Lnu/xom/ParentNode;->getChild(I)Lnu/xom/Node;

    move-result-object v0

    :goto_2
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lnu/xom/Node;->isText()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lnu/xom/Node;->isText()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    move v0, v5

    goto :goto_0

    :cond_6
    move v0, v4

    goto :goto_0

    :cond_7
    move-object v0, v6

    goto :goto_2

    :cond_8
    move-object v3, v6

    goto :goto_1
.end method

.method private setOutputStream(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null OutputStream"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/io/OutputStreamWriter;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    :goto_0
    new-instance v1, Lnu/xom/UnsynchronizedBufferedWriter;

    invoke-direct {v1, v0}, Lnu/xom/UnsynchronizedBufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-static {v1, p2}, Lnu/xom/TextWriterFactory;->getTextWriter(Ljava/io/Writer;Ljava/lang/String;)Lnu/xom/TextWriter;

    move-result-object v0

    iput-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    return-void

    :cond_1
    const-string v1, "UTF-16"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ISO-10646-UCS-2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    new-instance v0, Ljava/io/OutputStreamWriter;

    const-string v1, "UnicodeBig"

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "IBM037"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "CP037"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "EBCDIC-CP-US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "EBCDIC-CP-CA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "EBCDIC-CP-WA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "EBCDIC-CP-NL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "CSIBM037"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    new-instance v0, Lnu/xom/EBCDICWriter;

    invoke-direct {v0, p1}, Lnu/xom/EBCDICWriter;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_5
    const-string v1, "ISO-8859-11"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "TIS-620"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    new-instance v0, Ljava/io/OutputStreamWriter;

    const-string v1, "TIS620"

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private writeNamespaceDeclarationIfNecessary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnu/xom/Serializer;->namespaces:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v0, p1}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lnu/xom/TextWriter;->write(C)V

    invoke-virtual {p0, p1, p2}, Lnu/xom/Serializer;->writeNamespaceDeclaration(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private writeTagBeginning(Lnu/xom/Element;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnu/xom/Serializer;->namespaces:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport;->pushContext()V

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v0}, Lnu/xom/TextWriter;->isIndenting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v0}, Lnu/xom/TextWriter;->isPreserveSpace()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v0}, Lnu/xom/TextWriter;->justBroke()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v0}, Lnu/xom/TextWriter;->breakLine()V

    :cond_0
    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lnu/xom/TextWriter;->write(C)V

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {p1}, Lnu/xom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnu/xom/TextWriter;->writeName(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnu/xom/Serializer;->writeAttributes(Lnu/xom/Element;)V

    invoke-virtual {p0, p1}, Lnu/xom/Serializer;->writeNamespaceDeclarations(Lnu/xom/Element;)V

    return-void
.end method


# virtual methods
.method protected final breakLine()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v0}, Lnu/xom/TextWriter;->breakLine()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v0}, Lnu/xom/TextWriter;->flush()V

    return-void
.end method

.method protected final getColumnNumber()I
    .locals 1

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v0}, Lnu/xom/TextWriter;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v0}, Lnu/xom/TextWriter;->getEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndent()I
    .locals 1

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v0}, Lnu/xom/TextWriter;->getIndent()I

    move-result v0

    return v0
.end method

.method public getLineSeparator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v0}, Lnu/xom/TextWriter;->getLineSeparator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxLength()I
    .locals 1

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v0}, Lnu/xom/TextWriter;->getMaxLength()I

    move-result v0

    return v0
.end method

.method public getPreserveBaseURI()Z
    .locals 1

    iget-boolean v0, p0, Lnu/xom/Serializer;->preserveBaseURI:Z

    return v0
.end method

.method public getUnicodeNormalizationFormC()Z
    .locals 1

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v0}, Lnu/xom/TextWriter;->getNFC()Z

    move-result v0

    return v0
.end method

.method public setIndent(I)V
    .locals 2

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Indent cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v0, p1}, Lnu/xom/TextWriter;->setIndent(I)V

    return-void
.end method

.method public setLineSeparator(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v0, p1}, Lnu/xom/TextWriter;->setLineSeparator(Ljava/lang/String;)V

    return-void
.end method

.method public setMaxLength(I)V
    .locals 1

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v0, p1}, Lnu/xom/TextWriter;->setMaxLength(I)V

    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lnu/xom/Serializer;->flush()V

    invoke-virtual {p0}, Lnu/xom/Serializer;->getMaxLength()I

    move-result v0

    invoke-virtual {p0}, Lnu/xom/Serializer;->getIndent()I

    move-result v1

    invoke-virtual {p0}, Lnu/xom/Serializer;->getLineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lnu/xom/Serializer;->getUnicodeNormalizationFormC()Z

    move-result v3

    iget-object v4, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v4}, Lnu/xom/TextWriter;->getEncoding()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    iget-boolean v5, v5, Lnu/xom/TextWriter;->lineSeparatorSet:Z

    invoke-direct {p0, p1, v4}, Lnu/xom/Serializer;->setOutputStream(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lnu/xom/Serializer;->setIndent(I)V

    invoke-virtual {p0, v0}, Lnu/xom/Serializer;->setMaxLength(I)V

    invoke-virtual {p0, v3}, Lnu/xom/Serializer;->setUnicodeNormalizationFormC(Z)V

    if-eqz v5, :cond_0

    invoke-virtual {p0, v2}, Lnu/xom/Serializer;->setLineSeparator(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setPreserveBaseURI(Z)V
    .locals 0

    iput-boolean p1, p0, Lnu/xom/Serializer;->preserveBaseURI:Z

    return-void
.end method

.method public setUnicodeNormalizationFormC(Z)V
    .locals 1

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v0, p1}, Lnu/xom/TextWriter;->setNFC(Z)V

    return-void
.end method

.method protected write(Lnu/xom/Attribute;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x22

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {p1}, Lnu/xom/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnu/xom/TextWriter;->writeName(Ljava/lang/String;)V

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Lnu/xom/TextWriter;->write(C)V

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v0, v2}, Lnu/xom/TextWriter;->write(C)V

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {p1}, Lnu/xom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnu/xom/TextWriter;->writeAttributeValue(Ljava/lang/String;)V

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v0, v2}, Lnu/xom/TextWriter;->write(C)V

    return-void
.end method

.method protected write(Lnu/xom/Comment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v0}, Lnu/xom/TextWriter;->isIndenting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v0}, Lnu/xom/TextWriter;->breakLine()V

    :cond_0
    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    const-string v1, "<!--"

    invoke-virtual {v0, v1}, Lnu/xom/TextWriter;->writeUncheckedMarkup(Ljava/lang/String;)V

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {p1}, Lnu/xom/Comment;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnu/xom/TextWriter;->writeMarkup(Ljava/lang/String;)V

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    const-string v1, "-->"

    invoke-virtual {v0, v1}, Lnu/xom/TextWriter;->writeUncheckedMarkup(Ljava/lang/String;)V

    return-void
.end method

.method protected write(Lnu/xom/DocType;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    const-string v1, "<!DOCTYPE "

    invoke-virtual {v0, v1}, Lnu/xom/TextWriter;->writeUncheckedMarkup(Ljava/lang/String;)V

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {p1}, Lnu/xom/DocType;->getRootElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnu/xom/TextWriter;->writeName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnu/xom/DocType;->getPublicID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, " PUBLIC \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lnu/xom/DocType;->getPublicID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\" \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lnu/xom/DocType;->getSystemID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnu/xom/TextWriter;->writeMarkup(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lnu/xom/DocType;->getInternalDTDSubset()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    const-string v2, " ["

    invoke-virtual {v1, v2}, Lnu/xom/TextWriter;->writeUncheckedMarkup(Ljava/lang/String;)V

    iget-object v1, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v1}, Lnu/xom/TextWriter;->breakLine()V

    iget-object v1, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lnu/xom/TextWriter;->setInDocType(Z)V

    iget-object v1, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v1, v0}, Lnu/xom/TextWriter;->writeMarkup(Ljava/lang/String;)V

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnu/xom/TextWriter;->setInDocType(Z)V

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lnu/xom/TextWriter;->write(C)V

    :cond_1
    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lnu/xom/TextWriter;->write(C)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lnu/xom/DocType;->getSystemID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, " SYSTEM \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lnu/xom/DocType;->getSystemID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnu/xom/TextWriter;->writeMarkup(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public write(Lnu/xom/Document;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v0}, Lnu/xom/TextWriter;->reset()V

    iget-object v0, p0, Lnu/xom/Serializer;->namespaces:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport;->reset()V

    iget-object v0, p0, Lnu/xom/Serializer;->namespaces:Lorg/xml/sax/helpers/NamespaceSupport;

    const-string v1, ""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/xml/sax/helpers/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lnu/xom/Serializer;->writeXMLDeclaration()V

    invoke-virtual {p1}, Lnu/xom/Document;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Lnu/xom/Document;->getChild(I)Lnu/xom/Node;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnu/xom/Serializer;->writeChild(Lnu/xom/Node;)V

    iget-object v2, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v2}, Lnu/xom/TextWriter;->breakLine()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v0}, Lnu/xom/TextWriter;->flush()V

    return-void
.end method

.method protected write(Lnu/xom/Element;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lnu/xom/Element;->getChildCount()I

    move-result v1

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_5

    invoke-virtual {p1, v2}, Lnu/xom/Element;->getChild(I)Lnu/xom/Node;

    move-result-object v0

    invoke-virtual {v0}, Lnu/xom/Node;->isText()Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast v0, Lnu/xom/Text;

    invoke-virtual {v0}, Lnu/xom/Text;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v7

    :goto_1
    if-eqz v0, :cond_4

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v0}, Lnu/xom/TextWriter;->isPreserveSpace()Z

    move-result v2

    invoke-virtual {p0, p1}, Lnu/xom/Serializer;->writeStartTag(Lnu/xom/Element;)V

    move v3, v4

    :goto_2
    if-ge v3, v1, :cond_3

    invoke-virtual {p1, v3}, Lnu/xom/Element;->getChild(I)Lnu/xom/Node;

    move-result-object v0

    iget-object v4, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v4}, Lnu/xom/TextWriter;->getNFC()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lnu/xom/Node;->isText()Z

    move-result v4

    if-eqz v4, :cond_2

    check-cast v0, Lnu/xom/Text;

    :goto_3
    sub-int v4, v1, v7

    if-ge v3, v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v4}, Lnu/xom/Element;->getChild(I)Lnu/xom/Node;

    move-result-object v4

    invoke-virtual {v4}, Lnu/xom/Node;->isText()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Lnu/xom/Text;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Lnu/xom/Text;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v4}, Lnu/xom/Node;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lnu/xom/Text;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move-object v0, v5

    goto :goto_3

    :cond_1
    invoke-virtual {p0, v0}, Lnu/xom/Serializer;->writeChild(Lnu/xom/Node;)V

    move v0, v3

    :goto_4
    add-int/lit8 v0, v0, 0x1

    move v3, v0

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v0}, Lnu/xom/Serializer;->writeChild(Lnu/xom/Node;)V

    move v0, v3

    goto :goto_4

    :cond_3
    invoke-virtual {p0, p1}, Lnu/xom/Serializer;->writeEndTag(Lnu/xom/Element;)V

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v0, v2}, Lnu/xom/TextWriter;->setPreserveSpace(Z)V

    :goto_5
    return-void

    :cond_4
    invoke-virtual {p0, p1}, Lnu/xom/Serializer;->writeEmptyElementTag(Lnu/xom/Element;)V

    goto :goto_5

    :cond_5
    move v0, v4

    goto :goto_1
.end method

.method protected write(Lnu/xom/ProcessingInstruction;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v0}, Lnu/xom/TextWriter;->isIndenting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v0}, Lnu/xom/TextWriter;->breakLine()V

    :cond_0
    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    const-string v1, "<?"

    invoke-virtual {v0, v1}, Lnu/xom/TextWriter;->writeUncheckedMarkup(Ljava/lang/String;)V

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {p1}, Lnu/xom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnu/xom/TextWriter;->writeName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnu/xom/ProcessingInstruction;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lnu/xom/TextWriter;->write(C)V

    iget-object v1, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v1, v0}, Lnu/xom/TextWriter;->writeMarkup(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    const-string v1, "?>"

    invoke-virtual {v0, v1}, Lnu/xom/TextWriter;->writeUncheckedMarkup(Ljava/lang/String;)V

    return-void
.end method

.method protected write(Lnu/xom/Text;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lnu/xom/Text;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnu/xom/Text;->isCDATASection()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "]]>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    instance-of v1, v1, Lnu/xom/UnicodeWriter;

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lnu/xom/TextWriter;->needsEscaping(C)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v1, v0}, Lnu/xom/TextWriter;->writePCDATA(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    const-string v2, "<![CDATA["

    invoke-virtual {v1, v2}, Lnu/xom/TextWriter;->writeUncheckedMarkup(Ljava/lang/String;)V

    iget-object v1, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v1, v0}, Lnu/xom/TextWriter;->writeMarkup(Ljava/lang/String;)V

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    const-string v1, "]]>"

    invoke-virtual {v0, v1}, Lnu/xom/TextWriter;->writeUncheckedMarkup(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, v0}, Lnu/xom/Serializer;->isBoundaryWhitespace(Lnu/xom/Text;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v1, v0}, Lnu/xom/TextWriter;->writePCDATA(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected final writeAttributeValue(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v0, p1}, Lnu/xom/TextWriter;->writeAttributeValue(Ljava/lang/String;)V

    return-void
.end method

.method protected writeAttributes(Lnu/xom/Element;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x20

    iget-boolean v0, p0, Lnu/xom/Serializer;->preserveBaseURI:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lnu/xom/Element;->getParent()Lnu/xom/ParentNode;

    move-result-object v0

    const-string v1, "base"

    const-string v2, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p1, v1, v2}, Lnu/xom/Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Lnu/xom/Attribute;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lnu/xom/Element;->getBaseURI()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnu/xom/ParentNode;->isDocument()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lnu/xom/Element;->getBaseURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lnu/xom/ParentNode;->getBaseURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v0, v4}, Lnu/xom/TextWriter;->write(C)V

    new-instance v0, Lnu/xom/Attribute;

    const-string v2, "xml:base"

    const-string v3, "http://www.w3.org/XML/1998/namespace"

    invoke-direct {v0, v2, v3, v1}, Lnu/xom/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnu/xom/Serializer;->write(Lnu/xom/Attribute;)V

    :cond_1
    invoke-virtual {p1}, Lnu/xom/Element;->getAttributeCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Lnu/xom/Element;->getAttribute(I)Lnu/xom/Attribute;

    move-result-object v2

    iget-object v3, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v3, v4}, Lnu/xom/TextWriter;->write(C)V

    invoke-virtual {p0, v2}, Lnu/xom/Serializer;->write(Lnu/xom/Attribute;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected writeChild(Lnu/xom/Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lnu/xom/Node;->isElement()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lnu/xom/Element;

    invoke-virtual {p0, p1}, Lnu/xom/Serializer;->write(Lnu/xom/Element;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lnu/xom/Node;->isText()Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Lnu/xom/Text;

    invoke-virtual {p0, p1}, Lnu/xom/Serializer;->write(Lnu/xom/Text;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lnu/xom/Node;->isComment()Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p1, Lnu/xom/Comment;

    invoke-virtual {p0, p1}, Lnu/xom/Serializer;->write(Lnu/xom/Comment;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lnu/xom/Node;->isProcessingInstruction()Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p1, Lnu/xom/ProcessingInstruction;

    invoke-virtual {p0, p1}, Lnu/xom/Serializer;->write(Lnu/xom/ProcessingInstruction;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lnu/xom/Node;->isDocType()Z

    move-result v0

    if-eqz v0, :cond_4

    check-cast p1, Lnu/xom/DocType;

    invoke-virtual {p0, p1}, Lnu/xom/Serializer;->write(Lnu/xom/DocType;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lnu/xom/XMLException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Cannot write a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " from the writeChild() method"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnu/xom/XMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected writeEmptyElementTag(Lnu/xom/Element;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lnu/xom/Serializer;->writeTagBeginning(Lnu/xom/Element;)V

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Lnu/xom/TextWriter;->write(C)V

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lnu/xom/TextWriter;->write(C)V

    iget-object v0, p0, Lnu/xom/Serializer;->namespaces:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport;->popContext()V

    return-void
.end method

.method protected writeEndTag(Lnu/xom/Element;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v0}, Lnu/xom/TextWriter;->decrementIndent()V

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v0}, Lnu/xom/TextWriter;->getIndent()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v0}, Lnu/xom/TextWriter;->isPreserveSpace()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lnu/xom/Serializer;->hasNonTextChildren(Lnu/xom/Element;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v0}, Lnu/xom/TextWriter;->breakLine()V

    :cond_0
    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lnu/xom/TextWriter;->write(C)V

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Lnu/xom/TextWriter;->write(C)V

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {p1}, Lnu/xom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnu/xom/TextWriter;->writeName(Ljava/lang/String;)V

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lnu/xom/TextWriter;->write(C)V

    iget-object v0, p0, Lnu/xom/Serializer;->namespaces:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport;->popContext()V

    return-void
.end method

.method protected final writeEscaped(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v0, p1}, Lnu/xom/TextWriter;->writePCDATA(Ljava/lang/String;)V

    return-void
.end method

.method protected writeNamespaceDeclaration(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x22

    iget-object v0, p0, Lnu/xom/Serializer;->namespaces:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v0, p1, p2}, Lorg/xml/sax/helpers/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    const-string v1, "xmlns"

    invoke-virtual {v0, v1}, Lnu/xom/TextWriter;->writeUncheckedMarkup(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Lnu/xom/TextWriter;->write(C)V

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v0, v2}, Lnu/xom/TextWriter;->write(C)V

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v0, p2}, Lnu/xom/TextWriter;->writePCDATA(Ljava/lang/String;)V

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v0, v2}, Lnu/xom/TextWriter;->write(C)V

    return-void

    :cond_0
    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    const-string v1, "xmlns:"

    invoke-virtual {v0, v1}, Lnu/xom/TextWriter;->writeUncheckedMarkup(Ljava/lang/String;)V

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v0, p1}, Lnu/xom/TextWriter;->writeName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected writeNamespaceDeclarations(Lnu/xom/Element;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p1}, Lnu/xom/Element;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xml"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lnu/xom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnu/xom/Serializer;->writeNamespaceDeclarationIfNecessary(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lnu/xom/Element;->getAttributeCount()I

    move-result v0

    move v1, v5

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Lnu/xom/Element;->getAttribute(I)Lnu/xom/Attribute;

    move-result-object v2

    invoke-virtual {v2}, Lnu/xom/Attribute;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "xml"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lnu/xom/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lnu/xom/Serializer;->writeNamespaceDeclarationIfNecessary(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lnu/xom/Element;->namespaces:Lnu/xom/Namespaces;

    if-nez v0, :cond_4

    :cond_3
    return-void

    :cond_4
    invoke-virtual {v0}, Lnu/xom/Namespaces;->size()I

    move-result v1

    move v2, v5

    :goto_1
    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Lnu/xom/Namespaces;->getPrefix(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnu/xom/Namespaces;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lnu/xom/Serializer;->writeNamespaceDeclarationIfNecessary(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected final writeRaw(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v0, p1}, Lnu/xom/TextWriter;->writeMarkup(Ljava/lang/String;)V

    return-void
.end method

.method protected writeStartTag(Lnu/xom/Element;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lnu/xom/Serializer;->writeTagBeginning(Lnu/xom/Element;)V

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lnu/xom/TextWriter;->write(C)V

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v0}, Lnu/xom/TextWriter;->incrementIndent()V

    const-string v0, "space"

    const-string v1, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p1, v0, v1}, Lnu/xom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "preserve"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnu/xom/TextWriter;->setPreserveSpace(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnu/xom/TextWriter;->setPreserveSpace(Z)V

    goto :goto_0
.end method

.method protected writeXMLDeclaration()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    const-string v1, "<?xml version=\"1.0\" encoding=\""

    invoke-virtual {v0, v1}, Lnu/xom/TextWriter;->writeUncheckedMarkup(Ljava/lang/String;)V

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    iget-object v1, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v1}, Lnu/xom/TextWriter;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnu/xom/TextWriter;->writeUncheckedMarkup(Ljava/lang/String;)V

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    const-string v1, "\"?>"

    invoke-virtual {v0, v1}, Lnu/xom/TextWriter;->writeUncheckedMarkup(Ljava/lang/String;)V

    iget-object v0, p0, Lnu/xom/Serializer;->escaper:Lnu/xom/TextWriter;

    invoke-virtual {v0}, Lnu/xom/TextWriter;->breakLine()V

    return-void
.end method
