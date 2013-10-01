.class public abstract Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord;
.super Ljava/lang/Object;
.source "PlayReadyHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PlayReadyRecord"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord$DefaulPlayReadyRecord;,
        Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord$EmeddedLicenseStore;,
        Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord$RMHeader;
    }
.end annotation


# instance fields
.field type:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord;->type:I

    .line 111
    return-void
.end method

.method public static createFor(Ljava/nio/ByteBuffer;I)Ljava/util/List;
    .locals 6
    .parameter "byteBuffer"
    .parameter "recordCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    .local v3, records:Ljava/util/List;,"Ljava/util/List<Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 118
    invoke-static {p0}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16BE(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 119
    .local v4, type:I
    invoke-static {p0}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16BE(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 120
    .local v1, length:I
    packed-switch v4, :pswitch_data_0

    .line 131
    new-instance v2, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord$DefaulPlayReadyRecord;

    invoke-direct {v2, v4}, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord$DefaulPlayReadyRecord;-><init>(I)V

    .line 133
    .local v2, record:Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord;
    :goto_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v5}, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord;->parse(Ljava/nio/ByteBuffer;)V

    .line 134
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 135
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    .end local v2           #record:Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord;
    :pswitch_0
    new-instance v2, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord$RMHeader;

    invoke-direct {v2}, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord$RMHeader;-><init>()V

    .line 123
    .restart local v2       #record:Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord;
    goto :goto_1

    .line 125
    .end local v2           #record:Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord;
    :pswitch_1
    new-instance v2, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord$DefaulPlayReadyRecord;

    const/4 v5, 0x2

    invoke-direct {v2, v5}, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord$DefaulPlayReadyRecord;-><init>(I)V

    .line 126
    .restart local v2       #record:Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord;
    goto :goto_1

    .line 128
    .end local v2           #record:Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord;
    :pswitch_2
    new-instance v2, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord$EmeddedLicenseStore;

    invoke-direct {v2}, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord$EmeddedLicenseStore;-><init>()V

    .line 129
    .restart local v2       #record:Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord;
    goto :goto_1

    .line 138
    .end local v1           #length:I
    .end local v2           #record:Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord;
    .end local v4           #type:I
    :cond_0
    return-object v3

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public abstract getValue()Ljava/nio/ByteBuffer;
.end method

.method public abstract parse(Ljava/nio/ByteBuffer;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "PlayReadyRecord"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string v1, "{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord;->getValue()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
