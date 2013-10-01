.class public Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;
.super Ljava/lang/Object;
.source "BitReaderBuffer.java"


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field initialPos:I

.field position:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "buffer"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->buffer:Ljava/nio/ByteBuffer;

    .line 13
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->initialPos:I

    .line 14
    return-void
.end method


# virtual methods
.method public readBits(I)I
    .locals 12
    .parameter "i"

    .prologue
    .line 17
    iget-object v6, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget v7, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->initialPos:I

    iget v8, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->position:I

    div-int/lit8 v8, v8, 0x8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    .line 18
    .local v0, b:B
    if-gez v0, :cond_0

    add-int/lit16 v5, v0, 0x100

    .line 19
    .local v5, v:I
    :goto_0
    iget v6, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->position:I

    rem-int/lit8 v6, v6, 0x8

    rsub-int/lit8 v1, v6, 0x8

    .line 21
    .local v1, left:I
    if-gt p1, v1, :cond_1

    .line 22
    iget v6, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->position:I

    rem-int/lit8 v6, v6, 0x8

    shl-int v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    iget v7, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->position:I

    rem-int/lit8 v7, v7, 0x8

    sub-int v8, v1, p1

    add-int/2addr v7, v8

    shr-int v3, v6, v7

    .line 23
    .local v3, rc:I
    iget v6, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->position:I

    add-int/2addr v6, p1

    iput v6, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->position:I

    .line 31
    :goto_1
    iget-object v6, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget v7, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->initialPos:I

    iget v8, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->position:I

    int-to-double v8, v8

    const-wide/high16 v10, 0x4020

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 32
    return v3

    .end local v1           #left:I
    .end local v3           #rc:I
    .end local v5           #v:I
    :cond_0
    move v5, v0

    .line 18
    goto :goto_0

    .line 25
    .restart local v1       #left:I
    .restart local v5       #v:I
    :cond_1
    move v2, v1

    .line 26
    .local v2, now:I
    sub-int v4, p1, v1

    .line 27
    .local v4, then:I
    invoke-virtual {p0, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v3

    .line 28
    .restart local v3       #rc:I
    shl-int/2addr v3, v4

    .line 29
    invoke-virtual {p0, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v6

    add-int/2addr v3, v6

    goto :goto_1
.end method

.method public remainingBits()I
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->position:I

    sub-int/2addr v0, v1

    return v0
.end method
