.class public Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;
.super Ljava/lang/Object;
.source "AvcConfigurationBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVCDecoderConfigurationRecord"
.end annotation


# instance fields
.field public avcLevelIndication:I

.field public avcProfileIndication:I

.field public bitDepthChromaMinus8:I

.field public bitDepthChromaMinus8PaddingBits:I

.field public bitDepthLumaMinus8:I

.field public bitDepthLumaMinus8PaddingBits:I

.field public chromaFormat:I

.field public chromaFormatPaddingBits:I

.field public configurationVersion:I

.field public hasExts:Z

.field public lengthSizeMinusOne:I

.field public lengthSizeMinusOnePaddingBits:I

.field public numberOfSequenceParameterSetsPaddingBits:I

.field public pictureParameterSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field public profileCompatibility:I

.field public sequenceParameterSetExts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field public sequenceParameterSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x1f

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSets:Ljava/util/List;

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    .line 196
    iput-boolean v3, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->hasExts:Z

    .line 197
    iput v3, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->chromaFormat:I

    .line 198
    iput v2, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthLumaMinus8:I

    .line 199
    iput v2, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthChromaMinus8:I

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSetExts:Ljava/util/List;

    .line 205
    const/16 v0, 0x3c

    iput v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->lengthSizeMinusOnePaddingBits:I

    .line 206
    const/4 v0, 0x7

    iput v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->numberOfSequenceParameterSetsPaddingBits:I

    .line 207
    iput v1, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->chromaFormatPaddingBits:I

    .line 208
    iput v1, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthLumaMinus8PaddingBits:I

    .line 209
    iput v1, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthChromaMinus8PaddingBits:I

    .line 212
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 16
    .parameter "content"

    .prologue
    .line 214
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 193
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSets:Ljava/util/List;

    .line 194
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    .line 196
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->hasExts:Z

    .line 197
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->chromaFormat:I

    .line 198
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthLumaMinus8:I

    .line 199
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthChromaMinus8:I

    .line 200
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSetExts:Ljava/util/List;

    .line 205
    const/16 v14, 0x3c

    move-object/from16 v0, p0

    iput v14, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->lengthSizeMinusOnePaddingBits:I

    .line 206
    const/4 v14, 0x7

    move-object/from16 v0, p0

    iput v14, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->numberOfSequenceParameterSetsPaddingBits:I

    .line 207
    const/16 v14, 0x1f

    move-object/from16 v0, p0

    iput v14, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->chromaFormatPaddingBits:I

    .line 208
    const/16 v14, 0x1f

    move-object/from16 v0, p0

    iput v14, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthLumaMinus8PaddingBits:I

    .line 209
    const/16 v14, 0x1f

    move-object/from16 v0, p0

    iput v14, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthChromaMinus8PaddingBits:I

    .line 215
    invoke-static/range {p1 .. p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->configurationVersion:I

    .line 216
    invoke-static/range {p1 .. p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcProfileIndication:I

    .line 217
    invoke-static/range {p1 .. p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->profileCompatibility:I

    .line 218
    invoke-static/range {p1 .. p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcLevelIndication:I

    .line 219
    new-instance v1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 220
    .local v1, brb:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;
    const/4 v14, 0x6

    invoke-virtual {v1, v14}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->lengthSizeMinusOnePaddingBits:I

    .line 221
    const/4 v14, 0x2

    invoke-virtual {v1, v14}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->lengthSizeMinusOne:I

    .line 222
    const/4 v14, 0x3

    invoke-virtual {v1, v14}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->numberOfSequenceParameterSetsPaddingBits:I

    .line 223
    const/4 v14, 0x5

    invoke-virtual {v1, v14}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v7

    .line 224
    .local v7, numberOfSeuqenceParameterSets:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v7, :cond_0

    .line 225
    invoke-static/range {p1 .. p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v12

    .line 227
    .local v12, sequenceParameterSetLength:I
    new-array v13, v12, [B

    .line 228
    .local v13, sequenceParameterSetNALUnit:[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 229
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSets:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 231
    .end local v12           #sequenceParameterSetLength:I
    .end local v13           #sequenceParameterSetNALUnit:[B
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v14

    int-to-long v5, v14

    .line 232
    .local v5, numberOfPictureParameterSets:J
    const/4 v2, 0x0

    :goto_1
    int-to-long v14, v2

    cmp-long v14, v14, v5

    if-gez v14, :cond_1

    .line 233
    invoke-static/range {p1 .. p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 234
    .local v8, pictureParameterSetLength:I
    new-array v9, v8, [B

    .line 235
    .local v9, pictureParameterSetNALUnit:[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 236
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 238
    .end local v8           #pictureParameterSetLength:I
    .end local v9           #pictureParameterSetNALUnit:[B
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    const/4 v15, 0x4

    if-ge v14, v15, :cond_2

    .line 239
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->hasExts:Z

    .line 241
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->hasExts:Z

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget v14, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcProfileIndication:I

    const/16 v15, 0x64

    if-eq v14, v15, :cond_3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcProfileIndication:I

    const/16 v15, 0x6e

    if-eq v14, v15, :cond_3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcProfileIndication:I

    const/16 v15, 0x7a

    if-eq v14, v15, :cond_3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcProfileIndication:I

    const/16 v15, 0x90

    if-ne v14, v15, :cond_4

    .line 244
    :cond_3
    new-instance v1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;

    .end local v1           #brb:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;
    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 245
    .restart local v1       #brb:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;
    const/4 v14, 0x6

    invoke-virtual {v1, v14}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->chromaFormatPaddingBits:I

    .line 246
    const/4 v14, 0x2

    invoke-virtual {v1, v14}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->chromaFormat:I

    .line 247
    const/4 v14, 0x5

    invoke-virtual {v1, v14}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthLumaMinus8PaddingBits:I

    .line 248
    const/4 v14, 0x3

    invoke-virtual {v1, v14}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthLumaMinus8:I

    .line 249
    const/4 v14, 0x5

    invoke-virtual {v1, v14}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthChromaMinus8PaddingBits:I

    .line 250
    const/4 v14, 0x3

    invoke-virtual {v1, v14}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthChromaMinus8:I

    .line 251
    invoke-static/range {p1 .. p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v14

    int-to-long v3, v14

    .line 252
    .local v3, numOfSequenceParameterSetExt:J
    const/4 v2, 0x0

    :goto_2
    int-to-long v14, v2

    cmp-long v14, v14, v3

    if-gez v14, :cond_5

    .line 253
    invoke-static/range {p1 .. p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v10

    .line 254
    .local v10, sequenceParameterSetExtLength:I
    new-array v11, v10, [B

    .line 255
    .local v11, sequenceParameterSetExtNALUnit:[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 256
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSetExts:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 259
    .end local v3           #numOfSequenceParameterSetExt:J
    .end local v10           #sequenceParameterSetExtLength:I
    .end local v11           #sequenceParameterSetExtNALUnit:[B
    :cond_4
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->chromaFormat:I

    .line 260
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthLumaMinus8:I

    .line 261
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthChromaMinus8:I

    .line 263
    :cond_5
    return-void
.end method


# virtual methods
.method public getContent(Ljava/nio/ByteBuffer;)V
    .locals 11
    .parameter "byteBuffer"

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x2

    const/4 v8, 0x5

    const/4 v7, 0x3

    .line 266
    iget v5, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->configurationVersion:I

    invoke-static {p1, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 267
    iget v5, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcProfileIndication:I

    invoke-static {p1, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 268
    iget v5, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->profileCompatibility:I

    invoke-static {p1, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 269
    iget v5, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcLevelIndication:I

    invoke-static {p1, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 270
    new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;

    invoke-direct {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 271
    .local v0, bwb:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;
    iget v5, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->lengthSizeMinusOnePaddingBits:I

    invoke-virtual {v0, v5, v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 272
    iget v5, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->lengthSizeMinusOne:I

    invoke-virtual {v0, v5, v9}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 273
    iget v5, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->numberOfSequenceParameterSetsPaddingBits:I

    invoke-virtual {v0, v5, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 274
    iget-object v5, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v0, v5, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 275
    iget-object v5, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 276
    .local v4, sequenceParameterSetNALUnit:[B
    array-length v5, v4

    invoke-static {p1, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 277
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 279
    .end local v4           #sequenceParameterSetNALUnit:[B
    :cond_0
    iget-object v5, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {p1, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 280
    iget-object v5, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 281
    .local v2, pictureParameterSetNALUnit:[B
    array-length v5, v2

    invoke-static {p1, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 282
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 284
    .end local v2           #pictureParameterSetNALUnit:[B
    :cond_1
    iget-boolean v5, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->hasExts:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcProfileIndication:I

    const/16 v6, 0x64

    if-eq v5, v6, :cond_2

    iget v5, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcProfileIndication:I

    const/16 v6, 0x6e

    if-eq v5, v6, :cond_2

    iget v5, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcProfileIndication:I

    const/16 v6, 0x7a

    if-eq v5, v6, :cond_2

    iget v5, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcProfileIndication:I

    const/16 v6, 0x90

    if-ne v5, v6, :cond_3

    .line 286
    :cond_2
    new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;

    .end local v0           #bwb:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;
    invoke-direct {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 287
    .restart local v0       #bwb:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;
    iget v5, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->chromaFormatPaddingBits:I

    invoke-virtual {v0, v5, v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 288
    iget v5, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->chromaFormat:I

    invoke-virtual {v0, v5, v9}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 289
    iget v5, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthLumaMinus8PaddingBits:I

    invoke-virtual {v0, v5, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 290
    iget v5, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthLumaMinus8:I

    invoke-virtual {v0, v5, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 291
    iget v5, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthChromaMinus8PaddingBits:I

    invoke-virtual {v0, v5, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 292
    iget v5, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthChromaMinus8:I

    invoke-virtual {v0, v5, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 293
    iget-object v5, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSetExts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 294
    .local v3, sequenceParameterSetExtNALUnit:[B
    array-length v5, v3

    invoke-static {p1, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 295
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 298
    .end local v3           #sequenceParameterSetExtNALUnit:[B
    :cond_3
    return-void
.end method

.method public getContentSize()J
    .locals 12

    .prologue
    const-wide/16 v10, 0x1

    const-wide/16 v8, 0x2

    .line 301
    const-wide/16 v4, 0x5

    .line 302
    .local v4, size:J
    add-long/2addr v4, v10

    .line 303
    iget-object v6, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSets:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 304
    .local v3, sequenceParameterSetNALUnit:[B
    add-long/2addr v4, v8

    .line 305
    array-length v6, v3

    int-to-long v6, v6

    add-long/2addr v4, v6

    goto :goto_0

    .line 307
    .end local v3           #sequenceParameterSetNALUnit:[B
    :cond_0
    add-long/2addr v4, v10

    .line 308
    iget-object v6, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 309
    .local v1, pictureParameterSetNALUnit:[B
    add-long/2addr v4, v8

    .line 310
    array-length v6, v1

    int-to-long v6, v6

    add-long/2addr v4, v6

    goto :goto_1

    .line 312
    .end local v1           #pictureParameterSetNALUnit:[B
    :cond_1
    iget-boolean v6, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->hasExts:Z

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcProfileIndication:I

    const/16 v7, 0x64

    if-eq v6, v7, :cond_2

    iget v6, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcProfileIndication:I

    const/16 v7, 0x6e

    if-eq v6, v7, :cond_2

    iget v6, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcProfileIndication:I

    const/16 v7, 0x7a

    if-eq v6, v7, :cond_2

    iget v6, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcProfileIndication:I

    const/16 v7, 0x90

    if-ne v6, v7, :cond_3

    .line 313
    :cond_2
    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    .line 314
    iget-object v6, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSetExts:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 315
    .local v2, sequenceParameterSetExtNALUnit:[B
    add-long/2addr v4, v8

    .line 316
    array-length v6, v2

    int-to-long v6, v6

    add-long/2addr v4, v6

    goto :goto_2

    .line 320
    .end local v2           #sequenceParameterSetExtNALUnit:[B
    :cond_3
    return-wide v4
.end method

.method public getPictureParameterSetsAsStrings()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 370
    .local v2, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 371
    .local v1, parameterSet:[B
    invoke-static {v1}, Lcom/coremedia/iso/Hex;->encodeHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 373
    .end local v1           #parameterSet:[B
    :cond_0
    return-object v2
.end method

.method public getSequenceParameterSetsAsStrings()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 354
    .local v2, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 355
    .local v1, parameterSet:[B
    invoke-static {v1}, Lcom/coremedia/iso/Hex;->encodeHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 357
    .end local v1           #parameterSet:[B
    :cond_0
    return-object v2
.end method
