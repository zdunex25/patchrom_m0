.class public Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/UnknownEntry;
.super Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;
.source "UnknownEntry.java"


# instance fields
.field private content:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 63
    if-ne p0, p1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v1

    .line 66
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 67
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 70
    check-cast v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/UnknownEntry;

    .line 72
    .local v0, that:Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/UnknownEntry;
    iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/UnknownEntry;->content:Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/UnknownEntry;->content:Ljava/nio/ByteBuffer;

    iget-object v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/UnknownEntry;->content:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 73
    goto :goto_0

    .line 72
    :cond_4
    iget-object v3, v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/UnknownEntry;->content:Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public get()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/UnknownEntry;->content:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/UnknownEntry;->content:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/UnknownEntry;->content:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "byteBuffer"

    .prologue
    .line 42
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/UnknownEntry;->content:Ljava/nio/ByteBuffer;

    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 52
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/UnknownEntry;->content:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 53
    .local v1, bb:Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 54
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    new-array v0, v2, [B

    .line 55
    .local v0, b:[B
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnknownEntry{content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/coremedia/iso/Hex;->encodeHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
