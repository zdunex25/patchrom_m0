.class final Lnu/xom/UnsynchronizedBufferedWriter;
.super Ljava/io/Writer;


# static fields
.field private static final CAPACITY:I = 0x2000


# instance fields
.field private buffer:[C

.field private out:Ljava/io/Writer;

.field private position:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [C

    iput-object v0, p0, Lnu/xom/UnsynchronizedBufferedWriter;->buffer:[C

    const/4 v0, 0x0

    iput v0, p0, Lnu/xom/UnsynchronizedBufferedWriter;->position:I

    iput-object p1, p0, Lnu/xom/UnsynchronizedBufferedWriter;->out:Ljava/io/Writer;

    return-void
.end method

.method private flushInternal()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget v0, p0, Lnu/xom/UnsynchronizedBufferedWriter;->position:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnu/xom/UnsynchronizedBufferedWriter;->out:Ljava/io/Writer;

    iget-object v1, p0, Lnu/xom/UnsynchronizedBufferedWriter;->buffer:[C

    iget v2, p0, Lnu/xom/UnsynchronizedBufferedWriter;->position:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    iput v3, p0, Lnu/xom/UnsynchronizedBufferedWriter;->position:I

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "How\'d we get here?"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lnu/xom/UnsynchronizedBufferedWriter;->flushInternal()V

    iget-object v0, p0, Lnu/xom/UnsynchronizedBufferedWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lnu/xom/UnsynchronizedBufferedWriter;->position:I

    const/16 v1, 0x2000

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lnu/xom/UnsynchronizedBufferedWriter;->flushInternal()V

    :cond_0
    iget-object v0, p0, Lnu/xom/UnsynchronizedBufferedWriter;->buffer:[C

    iget v1, p0, Lnu/xom/UnsynchronizedBufferedWriter;->position:I

    int-to-char v2, p1

    aput-char v2, v0, v1

    iget v0, p0, Lnu/xom/UnsynchronizedBufferedWriter;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnu/xom/UnsynchronizedBufferedWriter;->position:I

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lnu/xom/UnsynchronizedBufferedWriter;->write(Ljava/lang/String;II)V

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x2000

    move v0, p3

    move v1, p2

    :cond_0
    :goto_0
    if-lez v0, :cond_2

    iget v2, p0, Lnu/xom/UnsynchronizedBufferedWriter;->position:I

    sub-int v2, v6, v2

    if-ge v0, v2, :cond_1

    move v2, v0

    :cond_1
    add-int v3, v1, v2

    iget-object v4, p0, Lnu/xom/UnsynchronizedBufferedWriter;->buffer:[C

    iget v5, p0, Lnu/xom/UnsynchronizedBufferedWriter;->position:I

    invoke-virtual {p1, v1, v3, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    iget v3, p0, Lnu/xom/UnsynchronizedBufferedWriter;->position:I

    add-int/2addr v3, v2

    iput v3, p0, Lnu/xom/UnsynchronizedBufferedWriter;->position:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v2

    iget v2, p0, Lnu/xom/UnsynchronizedBufferedWriter;->position:I

    if-lt v2, v6, :cond_0

    invoke-direct {p0}, Lnu/xom/UnsynchronizedBufferedWriter;->flushInternal()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public write([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "XOM bug: this statement shouldn\'t be reachable."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
