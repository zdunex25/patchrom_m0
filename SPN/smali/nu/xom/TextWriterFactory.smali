.class Lnu/xom/TextWriterFactory;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTextWriter(Ljava/io/Writer;Ljava/lang/String;)Lnu/xom/TextWriter;
    .locals 2

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "UNICODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Lnu/xom/UnicodeWriter;

    invoke-direct {v0, p0, p1}, Lnu/xom/UnicodeWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_1
    const-string v1, "ISO-10646-UCS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "UCS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "GB18030"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    new-instance v0, Lnu/xom/UCSWriter;

    invoke-direct {v0, p0, p1}, Lnu/xom/UCSWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "ISO-8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Lnu/xom/Latin1Writer;

    invoke-direct {v0, p0, p1}, Lnu/xom/Latin1Writer;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v1, "ISO-8859-2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lnu/xom/Latin2Writer;

    invoke-direct {v1, p0, v0}, Lnu/xom/Latin2Writer;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_5
    const-string v1, "ISO-8859-3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lnu/xom/Latin3Writer;

    invoke-direct {v1, p0, v0}, Lnu/xom/Latin3Writer;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_6
    const-string v1, "ISO-8859-4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Lnu/xom/Latin4Writer;

    invoke-direct {v1, p0, v0}, Lnu/xom/Latin4Writer;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_7
    const-string v1, "ISO-8859-5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Lnu/xom/ISOCyrillicWriter;

    invoke-direct {v1, p0, v0}, Lnu/xom/ISOCyrillicWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_8
    const-string v1, "ISO-8859-6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Lnu/xom/ISOArabicWriter;

    invoke-direct {v1, p0, v0}, Lnu/xom/ISOArabicWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_9
    const-string v1, "ISO-8859-7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Lnu/xom/ISOGreekWriter;

    invoke-direct {v1, p0, v0}, Lnu/xom/ISOGreekWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_a
    const-string v1, "ISO-8859-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Lnu/xom/ISOHebrewWriter;

    invoke-direct {v1, p0, v0}, Lnu/xom/ISOHebrewWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_b
    const-string v1, "ISO-8859-9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "EBCDIC-CP-TR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "CP1037"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    new-instance v1, Lnu/xom/Latin5Writer;

    invoke-direct {v1, p0, v0}, Lnu/xom/Latin5Writer;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_d
    const-string v1, "ISO-8859-10"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v0, Lnu/xom/Latin6Writer;

    invoke-direct {v0, p0, p1}, Lnu/xom/Latin6Writer;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    const-string v1, "ISO-8859-11"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "TIS-620"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "TIS620"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    new-instance v1, Lnu/xom/ISOThaiWriter;

    invoke-direct {v1, p0, v0}, Lnu/xom/ISOThaiWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_10
    const-string v1, "ISO-8859-13"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v1, Lnu/xom/Latin7Writer;

    invoke-direct {v1, p0, v0}, Lnu/xom/Latin7Writer;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_11
    const-string v1, "ISO-8859-14"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    new-instance v0, Lnu/xom/Latin8Writer;

    invoke-direct {v0, p0, p1}, Lnu/xom/Latin8Writer;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    const-string v1, "ISO-8859-15"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    new-instance v1, Lnu/xom/Latin9Writer;

    invoke-direct {v1, p0, v0}, Lnu/xom/Latin9Writer;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_13
    const-string v1, "ISO-8859-16"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    new-instance v0, Lnu/xom/Latin10Writer;

    invoke-direct {v0, p0, p1}, Lnu/xom/Latin10Writer;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    const-string v1, "ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    new-instance v1, Lnu/xom/ASCIIWriter;

    invoke-direct {v1, p0, v0}, Lnu/xom/ASCIIWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_15
    const-string v1, "IBM037"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "CP037"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "EBCDIC-CP-US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "EBCDIC-CP-CA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "EBCDIC-CP-WA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "EBCDIC-CP-NL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "CSIBM037"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_16
    new-instance v1, Lnu/xom/Latin1Writer;

    invoke-direct {v1, p0, v0}, Lnu/xom/Latin1Writer;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_17
    :try_start_0
    new-instance v0, Lnu/xom/GenericWriter;

    invoke-direct {v0, p0, p1}, Lnu/xom/GenericWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lnu/xom/ASCIIWriter;

    invoke-direct {v0, p0, p1}, Lnu/xom/ASCIIWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
