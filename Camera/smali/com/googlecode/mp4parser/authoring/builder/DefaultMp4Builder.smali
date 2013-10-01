.class public Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;
.super Ljava/lang/Object;
.source "DefaultMp4Builder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$1;,
        Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static LOG:Ljava/util/logging/Logger;


# instance fields
.field public STEPSIZE:I

.field chunkOffsetBoxes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;",
            ">;"
        }
    .end annotation
.end field

.field private intersectionFinder:Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;

.field track2Sample:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Track;",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;>;"
        }
    .end annotation
.end field

.field track2SampleSizes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Track;",
            "[J>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->$assertionsDisabled:Z

    .line 73
    const-class v0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->LOG:Ljava/util/logging/Logger;

    return-void

    .line 69
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/16 v0, 0x40

    iput v0, p0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->STEPSIZE:I

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->chunkOffsetBoxes:Ljava/util/Set;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->track2Sample:Ljava/util/HashMap;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->track2SampleSizes:Ljava/util/HashMap;

    .line 77
    new-instance v0, Lcom/googlecode/mp4parser/authoring/builder/TwoSecondIntersectionFinder;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/builder/TwoSecondIntersectionFinder;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->intersectionFinder:Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;

    .line 375
    return-void
.end method

.method private createMovieBox(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/MovieBox;
    .locals 19
    .parameter "movie"

    .prologue
    .line 140
    new-instance v5, Lcom/coremedia/iso/boxes/MovieBox;

    invoke-direct {v5}, Lcom/coremedia/iso/boxes/MovieBox;-><init>()V

    .line 141
    .local v5, movieBox:Lcom/coremedia/iso/boxes/MovieBox;
    new-instance v8, Lcom/coremedia/iso/boxes/MovieHeaderBox;

    invoke-direct {v8}, Lcom/coremedia/iso/boxes/MovieHeaderBox;-><init>()V

    .line 143
    .local v8, mvhd:Lcom/coremedia/iso/boxes/MovieHeaderBox;
    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    invoke-static {v15}, Lcom/googlecode/mp4parser/authoring/DateHelper;->convert(Ljava/util/Date;)J

    move-result-wide v15

    move-wide v0, v15

    invoke-virtual {v8, v0, v1}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setCreationTime(J)V

    .line 144
    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    invoke-static {v15}, Lcom/googlecode/mp4parser/authoring/DateHelper;->convert(Ljava/util/Date;)J

    move-result-wide v15

    move-wide v0, v15

    invoke-virtual {v8, v0, v1}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setModificationTime(J)V

    .line 146
    invoke-virtual/range {p0 .. p1}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->getTimescale(Lcom/googlecode/mp4parser/authoring/Movie;)J

    move-result-wide v6

    .line 147
    .local v6, movieTimeScale:J
    const-wide/16 v2, 0x0

    .line 149
    .local v2, duration:J
    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/googlecode/mp4parser/authoring/Track;

    .line 150
    .local v11, track:Lcom/googlecode/mp4parser/authoring/Track;
    invoke-static {v11}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->getDuration(Lcom/googlecode/mp4parser/authoring/Track;)J

    move-result-wide v15

    mul-long/2addr v15, v6

    invoke-interface {v11}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v17

    div-long v12, v15, v17

    .line 151
    .local v12, tracksDuration:J
    cmp-long v15, v12, v2

    if-lez v15, :cond_0

    .line 152
    move-wide v2, v12

    goto :goto_0

    .line 158
    .end local v11           #track:Lcom/googlecode/mp4parser/authoring/Track;
    .end local v12           #tracksDuration:J
    :cond_1
    invoke-virtual {v8, v2, v3}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setDuration(J)V

    .line 159
    invoke-virtual {v8, v6, v7}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setTimescale(J)V

    .line 161
    const-wide/16 v9, 0x0

    .line 162
    .local v9, nextTrackId:J
    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/googlecode/mp4parser/authoring/Track;

    .line 163
    .restart local v11       #track:Lcom/googlecode/mp4parser/authoring/Track;
    invoke-interface {v11}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v15

    invoke-virtual {v15}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTrackId()J

    move-result-wide v15

    cmp-long v15, v9, v15

    if-gez v15, :cond_2

    invoke-interface {v11}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v15

    invoke-virtual {v15}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTrackId()J

    move-result-wide v9

    :cond_2
    goto :goto_1

    .line 165
    .end local v11           #track:Lcom/googlecode/mp4parser/authoring/Track;
    :cond_3
    const-wide/16 v15, 0x1

    add-long/2addr v9, v15

    invoke-virtual {v8, v9, v10}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setNextTrackId(J)V

    .line 166
    invoke-virtual {v8}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->getCreationTime()J

    move-result-wide v15

    const-wide v17, 0x100000000L

    cmp-long v15, v15, v17

    if-gez v15, :cond_4

    invoke-virtual {v8}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->getModificationTime()J

    move-result-wide v15

    const-wide v17, 0x100000000L

    cmp-long v15, v15, v17

    if-gez v15, :cond_4

    invoke-virtual {v8}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->getDuration()J

    move-result-wide v15

    const-wide v17, 0x100000000L

    cmp-long v15, v15, v17

    if-ltz v15, :cond_5

    .line 169
    :cond_4
    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setVersion(I)V

    .line 172
    :cond_5
    invoke-virtual {v5, v8}, Lcom/coremedia/iso/boxes/MovieBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 173
    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/googlecode/mp4parser/authoring/Track;

    .line 174
    .restart local v11       #track:Lcom/googlecode/mp4parser/authoring/Track;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v11, v1}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->createTrackBox(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/TrackBox;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/coremedia/iso/boxes/MovieBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto :goto_2

    .line 177
    .end local v11           #track:Lcom/googlecode/mp4parser/authoring/Track;
    :cond_6
    invoke-virtual/range {p0 .. p1}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->createUdta(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v14

    .line 178
    .local v14, udta:Lcom/coremedia/iso/boxes/Box;
    if-eqz v14, :cond_7

    .line 179
    invoke-virtual {v5, v14}, Lcom/coremedia/iso/boxes/MovieBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 181
    :cond_7
    return-object v5
.end method

.method private createTrackBox(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/TrackBox;
    .locals 45
    .parameter "track"
    .parameter "movie"

    .prologue
    .line 196
    sget-object v2, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->LOG:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating Mp4TrackImpl "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 197
    new-instance v41, Lcom/coremedia/iso/boxes/TrackBox;

    invoke-direct/range {v41 .. v41}, Lcom/coremedia/iso/boxes/TrackBox;-><init>()V

    .line 198
    .local v41, trackBox:Lcom/coremedia/iso/boxes/TrackBox;
    new-instance v39, Lcom/coremedia/iso/boxes/TrackHeaderBox;

    invoke-direct/range {v39 .. v39}, Lcom/coremedia/iso/boxes/TrackHeaderBox;-><init>()V

    .line 199
    .local v39, tkhd:Lcom/coremedia/iso/boxes/TrackHeaderBox;
    const/16 v19, 0x0

    .line 200
    .local v19, flags:I
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    add-int/lit8 v19, v19, 0x1

    .line 204
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->isInMovie()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    add-int/lit8 v19, v19, 0x2

    .line 208
    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->isInPreview()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 209
    add-int/lit8 v19, v19, 0x4

    .line 212
    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->isInPoster()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 213
    add-int/lit8 v19, v19, 0x8

    .line 215
    :cond_3
    move-object/from16 v0, v39

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setFlags(I)V

    .line 217
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getGroup()I

    move-result v2

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setAlternateGroup(I)V

    .line 218
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getCreationTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/googlecode/mp4parser/authoring/DateHelper;->convert(Ljava/util/Date;)J

    move-result-wide v2

    move-object/from16 v0, v39

    invoke-virtual {v0, v2, v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setCreationTime(J)V

    .line 222
    invoke-static/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->getDuration(Lcom/googlecode/mp4parser/authoring/Track;)J

    move-result-wide v2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->getTimescale(Lcom/googlecode/mp4parser/authoring/Movie;)J

    move-result-wide v4

    mul-long/2addr v2, v4

    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v4

    div-long/2addr v2, v4

    move-object/from16 v0, v39

    invoke-virtual {v0, v2, v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setDuration(J)V

    .line 223
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getHeight()D

    move-result-wide v2

    move-object/from16 v0, v39

    invoke-virtual {v0, v2, v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setHeight(D)V

    .line 224
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getWidth()D

    move-result-wide v2

    move-object/from16 v0, v39

    invoke-virtual {v0, v2, v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setWidth(D)V

    .line 225
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getLayer()I

    move-result v2

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setLayer(I)V

    .line 226
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/googlecode/mp4parser/authoring/DateHelper;->convert(Ljava/util/Date;)J

    move-result-wide v2

    move-object/from16 v0, v39

    invoke-virtual {v0, v2, v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setModificationTime(J)V

    .line 227
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTrackId()J

    move-result-wide v2

    move-object/from16 v0, v39

    invoke-virtual {v0, v2, v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setTrackId(J)V

    .line 228
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getVolume()F

    move-result v2

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setVolume(F)V

    .line 229
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getMatrix()[J

    move-result-object v2

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setMatrix([J)V

    .line 230
    invoke-virtual/range {v39 .. v39}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getCreationTime()J

    move-result-wide v2

    const-wide v4, 0x100000000L

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    invoke-virtual/range {v39 .. v39}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getModificationTime()J

    move-result-wide v2

    const-wide v4, 0x100000000L

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    invoke-virtual/range {v39 .. v39}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getDuration()J

    move-result-wide v2

    const-wide v4, 0x100000000L

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    .line 233
    :cond_4
    const/4 v2, 0x1

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setVersion(I)V

    .line 236
    :cond_5
    move-object/from16 v0, v41

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/TrackBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 247
    new-instance v27, Lcom/coremedia/iso/boxes/MediaBox;

    invoke-direct/range {v27 .. v27}, Lcom/coremedia/iso/boxes/MediaBox;-><init>()V

    .line 248
    .local v27, mdia:Lcom/coremedia/iso/boxes/MediaBox;
    move-object/from16 v0, v41

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/TrackBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 249
    new-instance v26, Lcom/coremedia/iso/boxes/MediaHeaderBox;

    invoke-direct/range {v26 .. v26}, Lcom/coremedia/iso/boxes/MediaHeaderBox;-><init>()V

    .line 250
    .local v26, mdhd:Lcom/coremedia/iso/boxes/MediaHeaderBox;
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getCreationTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/googlecode/mp4parser/authoring/DateHelper;->convert(Ljava/util/Date;)J

    move-result-wide v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setCreationTime(J)V

    .line 251
    invoke-static/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->getDuration(Lcom/googlecode/mp4parser/authoring/Track;)J

    move-result-wide v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setDuration(J)V

    .line 252
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setTimescale(J)V

    .line 253
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getLanguage()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setLanguage(Ljava/lang/String;)V

    .line 254
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 255
    new-instance v20, Lcom/coremedia/iso/boxes/HandlerBox;

    invoke-direct/range {v20 .. v20}, Lcom/coremedia/iso/boxes/HandlerBox;-><init>()V

    .line 256
    .local v20, hdlr:Lcom/coremedia/iso/boxes/HandlerBox;
    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 258
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/HandlerBox;->setHandlerType(Ljava/lang/String;)V

    .line 260
    new-instance v28, Lcom/coremedia/iso/boxes/MediaInformationBox;

    invoke-direct/range {v28 .. v28}, Lcom/coremedia/iso/boxes/MediaInformationBox;-><init>()V

    .line 261
    .local v28, minf:Lcom/coremedia/iso/boxes/MediaInformationBox;
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 265
    new-instance v15, Lcom/coremedia/iso/boxes/DataInformationBox;

    invoke-direct {v15}, Lcom/coremedia/iso/boxes/DataInformationBox;-><init>()V

    .line 266
    .local v15, dinf:Lcom/coremedia/iso/boxes/DataInformationBox;
    new-instance v16, Lcom/coremedia/iso/boxes/DataReferenceBox;

    invoke-direct/range {v16 .. v16}, Lcom/coremedia/iso/boxes/DataReferenceBox;-><init>()V

    .line 267
    .local v16, dref:Lcom/coremedia/iso/boxes/DataReferenceBox;
    invoke-virtual/range {v15 .. v16}, Lcom/coremedia/iso/boxes/DataInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 268
    new-instance v43, Lcom/coremedia/iso/boxes/DataEntryUrlBox;

    invoke-direct/range {v43 .. v43}, Lcom/coremedia/iso/boxes/DataEntryUrlBox;-><init>()V

    .line 269
    .local v43, url:Lcom/coremedia/iso/boxes/DataEntryUrlBox;
    const/4 v2, 0x1

    move-object/from16 v0, v43

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/DataEntryUrlBox;->setFlags(I)V

    .line 270
    move-object/from16 v0, v16

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/DataReferenceBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 271
    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 274
    new-instance v32, Lcom/coremedia/iso/boxes/SampleTableBox;

    invoke-direct/range {v32 .. v32}, Lcom/coremedia/iso/boxes/SampleTableBox;-><init>()V

    .line 276
    .local v32, stbl:Lcom/coremedia/iso/boxes/SampleTableBox;
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 278
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v14

    .line 279
    .local v14, decodingTimeToSampleEntries:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;>;"
    if-eqz v14, :cond_6

    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 280
    new-instance v37, Lcom/coremedia/iso/boxes/TimeToSampleBox;

    invoke-direct/range {v37 .. v37}, Lcom/coremedia/iso/boxes/TimeToSampleBox;-><init>()V

    .line 281
    .local v37, stts:Lcom/coremedia/iso/boxes/TimeToSampleBox;
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/TimeToSampleBox;->setEntries(Ljava/util/List;)V

    .line 282
    move-object/from16 v0, v32

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 285
    .end local v37           #stts:Lcom/coremedia/iso/boxes/TimeToSampleBox;
    :cond_6
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getCompositionTimeEntries()Ljava/util/List;

    move-result-object v11

    .line 286
    .local v11, compositionTimeToSampleEntries:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;>;"
    if-eqz v11, :cond_7

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 287
    new-instance v12, Lcom/coremedia/iso/boxes/CompositionTimeToSample;

    invoke-direct {v12}, Lcom/coremedia/iso/boxes/CompositionTimeToSample;-><init>()V

    .line 288
    .local v12, ctts:Lcom/coremedia/iso/boxes/CompositionTimeToSample;
    invoke-virtual {v12, v11}, Lcom/coremedia/iso/boxes/CompositionTimeToSample;->setEntries(Ljava/util/List;)V

    .line 289
    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 292
    .end local v12           #ctts:Lcom/coremedia/iso/boxes/CompositionTimeToSample;
    :cond_7
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v38

    .line 293
    .local v38, syncSamples:[J
    if-eqz v38, :cond_8

    move-object/from16 v0, v38

    array-length v2, v0

    if-lez v2, :cond_8

    .line 294
    new-instance v35, Lcom/coremedia/iso/boxes/SyncSampleBox;

    invoke-direct/range {v35 .. v35}, Lcom/coremedia/iso/boxes/SyncSampleBox;-><init>()V

    .line 295
    .local v35, stss:Lcom/coremedia/iso/boxes/SyncSampleBox;
    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/SyncSampleBox;->setSampleNumber([J)V

    .line 296
    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 299
    .end local v35           #stss:Lcom/coremedia/iso/boxes/SyncSampleBox;
    :cond_8
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDependencies()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDependencies()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 300
    new-instance v31, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;

    invoke-direct/range {v31 .. v31}, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;-><init>()V

    .line 301
    .local v31, sdtp:Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDependencies()Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;->setEntries(Ljava/util/List;)V

    .line 302
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 304
    .end local v31           #sdtp:Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;
    :cond_9
    new-instance v40, Ljava/util/HashMap;

    invoke-direct/range {v40 .. v40}, Ljava/util/HashMap;-><init>()V

    .line 305
    .local v40, track2ChunkSizes:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/googlecode/mp4parser/authoring/Track;[I>;"
    invoke-virtual/range {p2 .. p2}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/googlecode/mp4parser/authoring/Track;

    .line 306
    .local v13, current:Lcom/googlecode/mp4parser/authoring/Track;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v13, v1}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->getChunkSizes(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)[I

    move-result-object v2

    move-object/from16 v0, v40

    invoke-virtual {v0, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 308
    .end local v13           #current:Lcom/googlecode/mp4parser/authoring/Track;
    :cond_a
    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, [I

    .line 310
    .local v42, tracksChunkSizes:[I
    new-instance v34, Lcom/coremedia/iso/boxes/SampleToChunkBox;

    invoke-direct/range {v34 .. v34}, Lcom/coremedia/iso/boxes/SampleToChunkBox;-><init>()V

    .line 311
    .local v34, stsc:Lcom/coremedia/iso/boxes/SampleToChunkBox;
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/SampleToChunkBox;->setEntries(Ljava/util/List;)V

    .line 312
    const-wide/32 v24, -0x80000000

    .line 313
    .local v24, lastChunkSize:J
    const/16 v21, 0x0

    .local v21, i:I
    :goto_1
    move-object/from16 v0, v42

    array-length v2, v0

    move/from16 v0, v21

    if-ge v0, v2, :cond_c

    .line 318
    aget v2, v42, v21

    int-to-long v2, v2

    cmp-long v2, v24, v2

    if-eqz v2, :cond_b

    .line 319
    invoke-virtual/range {v34 .. v34}, Lcom/coremedia/iso/boxes/SampleToChunkBox;->getEntries()Ljava/util/List;

    move-result-object v44

    new-instance v2, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;

    add-int/lit8 v3, v21, 0x1

    int-to-long v3, v3

    aget v5, v42, v21

    int-to-long v5, v5

    const-wide/16 v7, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;-><init>(JJJ)V

    move-object/from16 v0, v44

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    aget v2, v42, v21

    int-to-long v0, v2

    move-wide/from16 v24, v0

    .line 313
    :cond_b
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 323
    :cond_c
    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 325
    new-instance v36, Lcom/coremedia/iso/boxes/SampleSizeBox;

    invoke-direct/range {v36 .. v36}, Lcom/coremedia/iso/boxes/SampleSizeBox;-><init>()V

    .line 326
    .local v36, stsz:Lcom/coremedia/iso/boxes/SampleSizeBox;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->track2SampleSizes:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/SampleSizeBox;->setSampleSizes([J)V

    .line 328
    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 333
    new-instance v33, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;

    invoke-direct/range {v33 .. v33}, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;-><init>()V

    .line 334
    .local v33, stco:Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->chunkOffsetBoxes:Ljava/util/Set;

    move-object/from16 v0, v33

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 335
    const-wide/16 v29, 0x0

    .line 336
    .local v29, offset:J
    move-object/from16 v0, v42

    array-length v2, v0

    new-array v9, v2, [J

    .line 338
    .local v9, chunkOffset:[J
    sget-object v2, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 339
    sget-object v2, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->LOG:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calculating chunk offsets for track_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTrackId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 343
    :cond_d
    const/16 v21, 0x0

    :goto_2
    move-object/from16 v0, v42

    array-length v2, v0

    move/from16 v0, v21

    if-ge v0, v2, :cond_14

    .line 347
    sget-object v2, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 348
    sget-object v2, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->LOG:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calculating chunk offsets for track_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTrackId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " chunk "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 350
    :cond_e
    invoke-virtual/range {p2 .. p2}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_f
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/googlecode/mp4parser/authoring/Track;

    .line 351
    .restart local v13       #current:Lcom/googlecode/mp4parser/authoring/Track;
    sget-object v2, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 352
    sget-object v2, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->LOG:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding offsets of track_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v13}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTrackId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 354
    :cond_10
    move-object/from16 v0, v40

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    .line 355
    .local v10, chunkSizes:[I
    const-wide/16 v17, 0x0

    .line 356
    .local v17, firstSampleOfChunk:J
    const/16 v23, 0x0

    .local v23, j:I
    :goto_3
    move/from16 v0, v23

    move/from16 v1, v21

    if-ge v0, v1, :cond_11

    .line 357
    aget v2, v10, v23

    int-to-long v2, v2

    add-long v17, v17, v2

    .line 356
    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    .line 359
    :cond_11
    move-object/from16 v0, p1

    if-ne v13, v0, :cond_12

    .line 360
    aput-wide v29, v9, v21

    .line 362
    :cond_12
    invoke-static/range {v17 .. v18}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v23

    :goto_4
    move/from16 v0, v23

    int-to-long v2, v0

    aget v4, v10, v21

    int-to-long v4, v4

    add-long v4, v4, v17

    cmp-long v2, v2, v4

    if-gez v2, :cond_f

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->track2SampleSizes:Ljava/util/HashMap;

    invoke-virtual {v2, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    aget-wide v2, v2, v23

    add-long v29, v29, v2

    .line 362
    add-int/lit8 v23, v23, 0x1

    goto :goto_4

    .line 343
    .end local v10           #chunkSizes:[I
    .end local v13           #current:Lcom/googlecode/mp4parser/authoring/Track;
    .end local v17           #firstSampleOfChunk:J
    .end local v23           #j:I
    :cond_13
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_2

    .line 367
    :cond_14
    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;->setChunkOffsets([J)V

    .line 368
    invoke-virtual/range {v32 .. v33}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 369
    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 370
    invoke-virtual/range {v27 .. v28}, Lcom/coremedia/iso/boxes/MediaBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 372
    return-object v41
.end method

.method public static gcd(JJ)J
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 549
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 552
    .end local p0
    :goto_0
    return-wide p0

    .restart local p0
    :cond_0
    rem-long v0, p0, p2

    invoke-static {p2, p3, v0, v1}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->gcd(JJ)J

    move-result-wide p0

    goto :goto_0
.end method

.method protected static getDuration(Lcom/googlecode/mp4parser/authoring/Track;)J
    .locals 8
    .parameter "track"

    .prologue
    .line 533
    const-wide/16 v0, 0x0

    .line 534
    .local v0, duration:J
    invoke-interface {p0}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .line 535
    .local v2, entry:Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v6

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    goto :goto_0

    .line 537
    .end local v2           #entry:Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    :cond_0
    return-wide v0
.end method

.method private static sum([I)J
    .locals 8
    .parameter "ls"

    .prologue
    .line 525
    const-wide/16 v5, 0x0

    .line 526
    .local v5, rc:J
    move-object v0, p0

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_0

    aget v7, v0, v1

    int-to-long v2, v7

    .line 527
    .local v2, l:J
    add-long/2addr v5, v2

    .line 526
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 529
    .end local v2           #l:J
    :cond_0
    return-wide v5
.end method


# virtual methods
.method public build(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/IsoFile;
    .locals 18
    .parameter "movie"

    .prologue
    .line 87
    sget-object v14, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->LOG:Ljava/util/logging/Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Creating movie "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/googlecode/mp4parser/authoring/Track;

    .line 90
    .local v13, track:Lcom/googlecode/mp4parser/authoring/Track;
    invoke-interface {v13}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v11

    .line 91
    .local v11, samples:Ljava/util/List;,"Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v11}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->putSamples(Lcom/googlecode/mp4parser/authoring/Track;Ljava/util/List;)Ljava/util/List;

    .line 92
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    new-array v12, v14, [J

    .line 93
    .local v12, sizes:[J
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v14, v12

    if-ge v5, v14, :cond_0

    .line 94
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->limit()I

    move-result v14

    int-to-long v14, v14

    aput-wide v14, v12, v5

    .line 93
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 96
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->putSampleSizes(Lcom/googlecode/mp4parser/authoring/Track;[J)[J

    goto :goto_0

    .line 99
    .end local v5           #i:I
    .end local v11           #samples:Ljava/util/List;,"Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    .end local v12           #sizes:[J
    .end local v13           #track:Lcom/googlecode/mp4parser/authoring/Track;
    :cond_1
    new-instance v7, Lcom/coremedia/iso/IsoFile;

    invoke-direct {v7}, Lcom/coremedia/iso/IsoFile;-><init>()V

    .line 101
    .local v7, isoFile:Lcom/coremedia/iso/IsoFile;
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 102
    .local v9, minorBrands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v14, "isom"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    const-string v14, "iso2"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    const-string v14, "avc1"

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v14, Lcom/coremedia/iso/boxes/FileTypeBox;

    const-string v15, "isom"

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-direct {v14, v15, v0, v1, v9}, Lcom/coremedia/iso/boxes/FileTypeBox;-><init>(Ljava/lang/String;JLjava/util/List;)V

    invoke-virtual {v7, v14}, Lcom/coremedia/iso/IsoFile;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 107
    invoke-direct/range {p0 .. p1}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->createMovieBox(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/MovieBox;

    move-result-object v14

    invoke-virtual {v7, v14}, Lcom/coremedia/iso/IsoFile;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 108
    new-instance v8, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v8, v0, v1, v14}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;-><init>(Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$1;)V

    .line 109
    .local v8, mdat:Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;
    invoke-virtual {v7, v8}, Lcom/coremedia/iso/IsoFile;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 115
    invoke-virtual {v8}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->getDataOffset()J

    move-result-wide v3

    .line 116
    .local v3, dataOffset:J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->chunkOffsetBoxes:Ljava/util/Set;

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;

    .line 117
    .local v2, chunkOffsetBox:Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;->getChunkOffsets()[J

    move-result-object v10

    .line 118
    .local v10, offsets:[J
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_2
    array-length v14, v10

    if-ge v5, v14, :cond_2

    .line 119
    aget-wide v14, v10, v5

    add-long/2addr v14, v3

    aput-wide v14, v10, v5

    .line 118
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 124
    .end local v2           #chunkOffsetBox:Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;
    .end local v5           #i:I
    .end local v10           #offsets:[J
    :cond_3
    return-object v7
.end method

.method protected createUdta(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;
    .locals 1
    .parameter "movie"

    .prologue
    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method getChunkSizes(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)[I
    .locals 11
    .parameter "track"
    .parameter "movie"

    .prologue
    const-wide/16 v9, 0x1

    .line 501
    iget-object v7, p0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->intersectionFinder:Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;

    invoke-interface {v7, p1, p2}, Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;->sampleNumbers(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)[J

    move-result-object v4

    .line 502
    .local v4, referenceChunkStarts:[J
    array-length v7, v4

    new-array v0, v7, [I

    .line 505
    .local v0, chunkSizes:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v7, v4

    if-ge v3, v7, :cond_1

    .line 506
    aget-wide v7, v4, v3

    sub-long v5, v7, v9

    .line 508
    .local v5, start:J
    array-length v7, v4

    add-int/lit8 v8, v3, 0x1

    if-ne v7, v8, :cond_0

    .line 509
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    int-to-long v1, v7

    .line 514
    .local v1, end:J
    :goto_1
    sub-long v7, v1, v5

    invoke-static {v7, v8}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v7

    aput v7, v0, v3

    .line 505
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 511
    .end local v1           #end:J
    :cond_0
    add-int/lit8 v7, v3, 0x1

    aget-wide v7, v4, v7

    sub-long v1, v7, v9

    .restart local v1       #end:J
    goto :goto_1

    .line 517
    .end local v1           #end:J
    .end local v5           #start:J
    :cond_1
    sget-boolean v7, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->$assertionsDisabled:Z

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->track2Sample:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v0}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->sum([I)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/AssertionError;

    const-string v8, "The number of samples and the sum of all chunk lengths must be equal"

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 518
    :cond_2
    return-object v0
.end method

.method public getTimescale(Lcom/googlecode/mp4parser/authoring/Movie;)J
    .locals 6
    .parameter "movie"

    .prologue
    .line 541
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v4}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v1

    .line 542
    .local v1, timescale:J
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/googlecode/mp4parser/authoring/Track;

    .line 543
    .local v3, track:Lcom/googlecode/mp4parser/authoring/Track;
    invoke-interface {v3}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v4

    invoke-static {v4, v5, v1, v2}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->gcd(JJ)J

    move-result-wide v1

    goto :goto_0

    .line 545
    .end local v3           #track:Lcom/googlecode/mp4parser/authoring/Track;
    :cond_0
    return-wide v1
.end method

.method protected putSampleSizes(Lcom/googlecode/mp4parser/authoring/Track;[J)[J
    .locals 1
    .parameter "track"
    .parameter "sizes"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->track2SampleSizes:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method protected putSamples(Lcom/googlecode/mp4parser/authoring/Track;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "track"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/googlecode/mp4parser/authoring/Track;",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    .local p2, samples:Ljava/util/List;,"Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->track2Sample:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public unifyAdjacentBuffers(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 556
    .local p1, samples:Ljava/util/List;,"Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 557
    .local v4, nuSamples:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/nio/ByteBuffer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 558
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .line 559
    .local v2, lastIndex:I
    if-ltz v2, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    if-ne v7, v6, :cond_0

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    add-int/2addr v6, v7

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 561
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 562
    .local v5, oldBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v6, v7, v8}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 564
    .local v3, nu:Ljava/nio/ByteBuffer;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 565
    .end local v3           #nu:Ljava/nio/ByteBuffer;
    .end local v5           #oldBuffer:Ljava/nio/ByteBuffer;
    :cond_0
    if-ltz v2, :cond_1

    instance-of v6, v0, Ljava/nio/MappedByteBuffer;

    if-eqz v6, :cond_1

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/nio/MappedByteBuffer;

    if-eqz v6, :cond_1

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    sub-int/2addr v6, v8

    if-ne v7, v6, :cond_1

    .line 569
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 570
    .restart local v5       #oldBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 572
    .end local v5           #oldBuffer:Ljava/nio/ByteBuffer;
    :cond_1
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 575
    .end local v0           #buffer:Ljava/nio/ByteBuffer;
    .end local v2           #lastIndex:I
    :cond_2
    return-object v4
.end method
