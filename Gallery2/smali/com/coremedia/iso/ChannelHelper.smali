.class public Lcom/coremedia/iso/ChannelHelper;
.super Ljava/lang/Object;
.source "ChannelHelper.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/coremedia/iso/ChannelHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/coremedia/iso/ChannelHelper;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;I)I
    .locals 4
    .parameter "channel"
    .parameter "buf"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, count:I
    :cond_0
    invoke-interface {p0, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    .local v1, n:I
    if-eq v2, v1, :cond_1

    .line 57
    add-int/2addr v0, v1

    .line 58
    if-ne v0, p2, :cond_0

    .line 62
    :cond_1
    if-ne v1, v2, :cond_2

    .line 63
    new-instance v2, Ljava/io/EOFException;

    const-string v3, "End of file. No more boxes."

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :cond_2
    return v0
.end method

.method public static readFully(Ljava/nio/channels/ReadableByteChannel;J)Ljava/nio/ByteBuffer;
    .locals 8
    .parameter "channel"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    instance-of v0, p0, Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    move-object v0, p0

    .line 33
    check-cast v0, Ljava/nio/channels/FileChannel;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-object v2, p0

    check-cast v2, Ljava/nio/channels/FileChannel;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    .local v6, bb:Ljava/nio/ByteBuffer;
    move-object v0, p0

    .line 34
    check-cast v0, Ljava/nio/channels/FileChannel;

    check-cast p0, Ljava/nio/channels/FileChannel;

    .end local p0
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 42
    .end local v6           #bb:Ljava/nio/ByteBuffer;
    :goto_0
    return-object v6

    .line 37
    .restart local p0
    :cond_0
    invoke-static {p1, p2}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 38
    .local v7, buf:Ljava/nio/ByteBuffer;
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-static {p0, v7, v0}, Lcom/coremedia/iso/ChannelHelper;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;I)I

    .line 39
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 40
    sget-boolean v0, Lcom/coremedia/iso/ChannelHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    move-object v6, v7

    .line 42
    goto :goto_0
.end method
