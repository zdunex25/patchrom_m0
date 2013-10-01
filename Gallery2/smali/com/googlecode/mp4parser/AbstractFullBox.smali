.class public abstract Lcom/googlecode/mp4parser/AbstractFullBox;
.super Lcom/googlecode/mp4parser/AbstractBox;
.source "AbstractFullBox.java"

# interfaces
.implements Lcom/coremedia/iso/boxes/FullBox;


# instance fields
.field private flags:I

.field private version:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/AbstractBox;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .parameter "type"
    .parameter "userType"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/googlecode/mp4parser/AbstractBox;-><init>(Ljava/lang/String;[B)V

    .line 39
    return-void
.end method


# virtual methods
.method public getFlags()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/googlecode/mp4parser/AbstractFullBox;->flags:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/googlecode/mp4parser/AbstractFullBox;->version:I

    return v0
.end method

.method protected final parseVersionAndFlags(Ljava/nio/ByteBuffer;)J
    .locals 2
    .parameter "content"

    .prologue
    .line 65
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/AbstractFullBox;->version:I

    .line 66
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt24(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/AbstractFullBox;->flags:I

    .line 67
    const-wide/16 v0, 0x4

    return-wide v0
.end method

.method public setFlags(I)V
    .locals 0
    .parameter "flags"

    .prologue
    .line 54
    iput p1, p0, Lcom/googlecode/mp4parser/AbstractFullBox;->flags:I

    .line 55
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .parameter "version"

    .prologue
    .line 46
    iput p1, p0, Lcom/googlecode/mp4parser/AbstractFullBox;->version:I

    .line 47
    return-void
.end method

.method protected final writeVersionAndFlags(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "bb"

    .prologue
    .line 71
    iget v0, p0, Lcom/googlecode/mp4parser/AbstractFullBox;->version:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 72
    iget v0, p0, Lcom/googlecode/mp4parser/AbstractFullBox;->flags:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt24(Ljava/nio/ByteBuffer;I)V

    .line 73
    return-void
.end method
