.class public Lcom/coremedia/iso/boxes/KeywordsBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "KeywordsBox.java"


# instance fields
.field private keywords:[Ljava/lang/String;

.field private language:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "kywd"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 4
    .parameter "content"

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/KeywordsBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 66
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readIso639(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coremedia/iso/boxes/KeywordsBox;->language:Ljava/lang/String;

    .line 67
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 68
    .local v1, keywordCount:I
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/coremedia/iso/boxes/KeywordsBox;->keywords:[Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 70
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    .line 71
    iget-object v2, p0, Lcom/coremedia/iso/boxes/KeywordsBox;->keywords:[Ljava/lang/String;

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 5
    .parameter "byteBuffer"

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/KeywordsBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 78
    iget-object v4, p0, Lcom/coremedia/iso/boxes/KeywordsBox;->language:Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeIso639(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 79
    iget-object v4, p0, Lcom/coremedia/iso/boxes/KeywordsBox;->keywords:[Ljava/lang/String;

    array-length v4, v4

    invoke-static {p1, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 80
    iget-object v0, p0, Lcom/coremedia/iso/boxes/KeywordsBox;->keywords:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 81
    .local v2, keyword:Ljava/lang/String;
    invoke-static {v2}, Lcom/coremedia/iso/Utf8;->utf8StringLengthInBytes(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {p1, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 82
    invoke-static {v2}, Lcom/coremedia/iso/Utf8;->convert(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    .end local v2           #keyword:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected getContentSize()J
    .locals 8

    .prologue
    .line 56
    const-wide/16 v1, 0x7

    .line 57
    .local v1, contentSize:J
    iget-object v0, p0, Lcom/coremedia/iso/boxes/KeywordsBox;->keywords:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v4, v0, v3

    .line 58
    .local v4, keyword:Ljava/lang/String;
    invoke-static {v4}, Lcom/coremedia/iso/Utf8;->utf8StringLengthInBytes(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    add-long/2addr v1, v6

    .line 57
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60
    .end local v4           #keyword:Ljava/lang/String;
    :cond_0
    return-wide v1
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/coremedia/iso/boxes/KeywordsBox;->language:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 88
    .local v0, buffer:Ljava/lang/StringBuffer;
    const-string v2, "KeywordsBox[language="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/KeywordsBox;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/coremedia/iso/boxes/KeywordsBox;->keywords:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 90
    const-string v2, ";keyword"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/coremedia/iso/boxes/KeywordsBox;->keywords:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    :cond_0
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
