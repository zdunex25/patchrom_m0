.class public Lcom/coremedia/iso/IsoFile;
.super Lcom/googlecode/mp4parser/AbstractContainerBox;
.source "IsoFile.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected boxParser:Lcom/coremedia/iso/BoxParser;

.field byteChannel:Ljava/nio/channels/ReadableByteChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/coremedia/iso/IsoFile;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/coremedia/iso/IsoFile;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;-><init>(Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/coremedia/iso/PropertyBoxParserImpl;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/coremedia/iso/PropertyBoxParserImpl;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coremedia/iso/IsoFile;->boxParser:Lcom/coremedia/iso/BoxParser;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;)V
    .locals 2
    .parameter "byteChannel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;-><init>(Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/coremedia/iso/PropertyBoxParserImpl;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/coremedia/iso/PropertyBoxParserImpl;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coremedia/iso/IsoFile;->boxParser:Lcom/coremedia/iso/BoxParser;

    .line 52
    iput-object p1, p0, Lcom/coremedia/iso/IsoFile;->byteChannel:Ljava/nio/channels/ReadableByteChannel;

    .line 53
    invoke-virtual {p0}, Lcom/coremedia/iso/IsoFile;->createBoxParser()Lcom/coremedia/iso/BoxParser;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/IsoFile;->boxParser:Lcom/coremedia/iso/BoxParser;

    .line 54
    invoke-direct {p0}, Lcom/coremedia/iso/IsoFile;->parse()V

    .line 55
    return-void
.end method

.method public static bytesToFourCC([B)Ljava/lang/String;
    .locals 5
    .parameter "type"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 129
    new-array v1, v4, [B

    fill-array-data v1, :array_0

    .line 130
    .local v1, result:[B
    if-eqz p0, :cond_0

    .line 131
    array-length v2, p0

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "ISO-8859-1"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/Error;

    const-string v3, "Required character encoding is missing"

    invoke-direct {v2, v3, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 129
    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static fourCCtoBytes(Ljava/lang/String;)[B
    .locals 4
    .parameter "fourCC"

    .prologue
    const/4 v3, 0x4

    .line 118
    new-array v1, v3, [B

    .line 119
    .local v1, result:[B
    if-eqz p0, :cond_0

    .line 120
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 121
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    .end local v0           #i:I
    :cond_0
    return-object v1
.end method

.method private parse()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    const/4 v1, 0x0

    .line 83
    .local v1, done:Z
    :goto_0
    if-nez v1, :cond_1

    .line 85
    :try_start_0
    iget-object v3, p0, Lcom/coremedia/iso/IsoFile;->boxParser:Lcom/coremedia/iso/BoxParser;

    iget-object v4, p0, Lcom/coremedia/iso/IsoFile;->byteChannel:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v3, v4, p0}, Lcom/coremedia/iso/BoxParser;->parseBox(Ljava/nio/channels/ReadableByteChannel;Lcom/coremedia/iso/boxes/ContainerBox;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v0

    .line 86
    .local v0, box:Lcom/coremedia/iso/boxes/Box;
    if-eqz v0, :cond_0

    .line 88
    iget-object v3, p0, Lcom/coremedia/iso/IsoFile;->boxes:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    .end local v0           #box:Lcom/coremedia/iso/boxes/Box;
    :catch_0
    move-exception v2

    .line 93
    .local v2, e:Ljava/io/EOFException;
    const/4 v1, 0x1

    .line 94
    goto :goto_0

    .line 90
    .end local v2           #e:Ljava/io/EOFException;
    .restart local v0       #box:Lcom/coremedia/iso/boxes/Box;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 96
    .end local v0           #box:Lcom/coremedia/iso/boxes/Box;
    :cond_1
    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 74
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/coremedia/iso/IsoFile;->byteChannel:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ReadableByteChannel;->close()V

    .line 194
    return-void
.end method

.method protected createBoxParser()Lcom/coremedia/iso/BoxParser;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/coremedia/iso/PropertyBoxParserImpl;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/coremedia/iso/PropertyBoxParserImpl;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public getBox(Ljava/nio/channels/WritableByteChannel;)V
    .locals 8
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v6, p0, Lcom/coremedia/iso/IsoFile;->boxes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    .line 180
    .local v0, box:Lcom/coremedia/iso/boxes/Box;
    instance-of v6, p1, Ljava/nio/channels/FileChannel;

    if-eqz v6, :cond_1

    move-object v6, p1

    .line 181
    check-cast v6, Ljava/nio/channels/FileChannel;

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    .line 182
    .local v4, startPos:J
    invoke-interface {v0, p1}, Lcom/coremedia/iso/boxes/Box;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    move-object v6, p1

    .line 183
    check-cast v6, Ljava/nio/channels/FileChannel;

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    sub-long v2, v6, v4

    .line 184
    .local v2, size:J
    sget-boolean v6, Lcom/coremedia/iso/IsoFile;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    invoke-interface {v0}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 186
    .end local v2           #size:J
    .end local v4           #startPos:J
    :cond_1
    invoke-interface {v0, p1}, Lcom/coremedia/iso/boxes/Box;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    goto :goto_0

    .line 190
    .end local v0           #box:Lcom/coremedia/iso/boxes/Box;
    :cond_2
    return-void
.end method

.method public getIsoFile()Lcom/coremedia/iso/IsoFile;
    .locals 0

    .prologue
    .line 157
    return-object p0
.end method

.method public getMovieBox()Lcom/coremedia/iso/boxes/MovieBox;
    .locals 3

    .prologue
    .line 169
    iget-object v2, p0, Lcom/coremedia/iso/IsoFile;->boxes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    .line 170
    .local v0, box:Lcom/coremedia/iso/boxes/Box;
    instance-of v2, v0, Lcom/coremedia/iso/boxes/MovieBox;

    if-eqz v2, :cond_0

    .line 171
    check-cast v0, Lcom/coremedia/iso/boxes/MovieBox;

    .line 174
    .end local v0           #box:Lcom/coremedia/iso/boxes/Box;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSize()J
    .locals 6

    .prologue
    .line 148
    const-wide/16 v2, 0x0

    .line 149
    .local v2, size:J
    iget-object v4, p0, Lcom/coremedia/iso/IsoFile;->boxes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    .line 150
    .local v0, box:Lcom/coremedia/iso/boxes/Box;
    invoke-interface {v0}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0

    .line 152
    .end local v0           #box:Lcom/coremedia/iso/boxes/Box;
    :cond_0
    return-wide v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .local v0, buffer:Ljava/lang/StringBuilder;
    const-string v2, "IsoFile["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-object v2, p0, Lcom/coremedia/iso/IsoFile;->boxes:Ljava/util/List;

    if-nez v2, :cond_1

    .line 103
    const-string v2, "unparsed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_0
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 105
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/coremedia/iso/IsoFile;->boxes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 106
    if-lez v1, :cond_2

    .line 107
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_2
    iget-object v2, p0, Lcom/coremedia/iso/IsoFile;->boxes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/Box;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
