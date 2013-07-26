.class Lnu/xom/GenericWriter;
.super Lnu/xom/TextWriter;


# instance fields
.field private final bout:Ljava/io/ByteArrayOutputStream;

.field private final isJapanese:Z

.field private final wout:Ljava/io/OutputStreamWriter;


# direct methods
.method constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lnu/xom/TextWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lnu/xom/GenericWriter;->bout:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lnu/xom/GenericWriter;->bout:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v0, p0, Lnu/xom/GenericWriter;->wout:Ljava/io/OutputStreamWriter;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EUC-JP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-gt v1, v2, :cond_0

    const-string v1, "EUC_JP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SHIFT_JIS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SJIS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ISO-2022-JP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnu/xom/GenericWriter;->isJapanese:Z

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnu/xom/GenericWriter;->isJapanese:Z

    goto :goto_0
.end method


# virtual methods
.method needsEscaping(C)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lnu/xom/GenericWriter;->isJapanese:Z

    if-eqz v0, :cond_2

    const/16 v0, 0xa5

    if-ne p1, v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    const/16 v0, 0x203e

    if-ne p1, v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lnu/xom/GenericWriter;->wout:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(I)V

    iget-object v0, p0, Lnu/xom/GenericWriter;->wout:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    iget-object v0, p0, Lnu/xom/GenericWriter;->bout:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_3

    move v0, v3

    :goto_1
    iget-object v1, p0, Lnu/xom/GenericWriter;->bout:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :try_start_1
    aget-byte v1, v0, v1

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_4

    move v0, v3

    goto :goto_1

    :cond_4
    iget-boolean v1, p0, Lnu/xom/GenericWriter;->isJapanese:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    aget-byte v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v1, 0x21

    if-ne v0, v1, :cond_5

    move v0, v3

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v0, p0, Lnu/xom/GenericWriter;->bout:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    move v0, v3

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lnu/xom/GenericWriter;->bout:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    move v0, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lnu/xom/GenericWriter;->bout:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    throw v0

    :cond_5
    move v0, v4

    goto :goto_1
.end method
