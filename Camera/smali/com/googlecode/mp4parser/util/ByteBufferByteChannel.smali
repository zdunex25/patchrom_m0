.class public Lcom/googlecode/mp4parser/util/ByteBufferByteChannel;
.super Ljava/lang/Object;
.source "ByteBufferByteChannel.java"

# interfaces
.implements Ljava/nio/channels/ByteChannel;


# instance fields
.field byteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0
    .parameter "byteBuffer"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/googlecode/mp4parser/util/ByteBufferByteChannel;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 31
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    return-void
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 4
    .parameter "dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 35
    .local v0, b:[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 36
    .local v1, r:I
    iget-object v2, p0, Lcom/googlecode/mp4parser/util/ByteBufferByteChannel;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v2, v1, :cond_0

    .line 37
    iget-object v2, p0, Lcom/googlecode/mp4parser/util/ByteBufferByteChannel;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v2, v0, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 38
    return v1

    .line 40
    :cond_0
    new-instance v2, Ljava/io/EOFException;

    const-string v3, "Reading beyond end of stream"

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 2
    .parameter "src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 53
    .local v0, r:I
    iget-object v1, p0, Lcom/googlecode/mp4parser/util/ByteBufferByteChannel;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 54
    return v0
.end method
