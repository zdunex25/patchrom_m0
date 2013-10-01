.class public Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RollRecoveryEntry;
.super Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;
.source "RollRecoveryEntry.java"


# instance fields
.field private rollDistance:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 57
    if-ne p0, p1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v1

    .line 60
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 61
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 64
    check-cast v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RollRecoveryEntry;

    .line 66
    .local v0, entry:Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RollRecoveryEntry;
    iget-short v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RollRecoveryEntry;->rollDistance:S

    iget-short v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RollRecoveryEntry;->rollDistance:S

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 67
    goto :goto_0
.end method

.method public get()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 49
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 50
    .local v0, content:Ljava/nio/ByteBuffer;
    iget-short v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RollRecoveryEntry;->rollDistance:S

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 51
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 52
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 75
    iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RollRecoveryEntry;->rollDistance:S

    return v0
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "byteBuffer"

    .prologue
    .line 44
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/RollRecoveryEntry;->rollDistance:S

    .line 45
    return-void
.end method
