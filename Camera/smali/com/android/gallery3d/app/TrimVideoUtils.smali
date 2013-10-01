.class public Lcom/android/gallery3d/app/TrimVideoUtils;
.super Ljava/lang/Object;
.source "TrimVideoUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static correctTimeToSyncSample(Lcom/googlecode/mp4parser/authoring/Track;DZ)D
    .locals 21
    .parameter "track"
    .parameter "cutHere"
    .parameter "next"

    .prologue
    .line 127
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [D

    move-object/from16 v16, v0

    .line 128
    .local v16, timeOfSyncSamples:[D
    const-wide/16 v3, 0x0

    .line 129
    .local v3, currentSample:J
    const-wide/16 v5, 0x0

    .line 130
    .local v5, currentTime:D
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_2

    .line 131
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .line 132
    .local v7, entry:Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    const/4 v10, 0x0

    .local v10, j:I
    :goto_1
    int-to-long v0, v10

    move-wide/from16 v17, v0

    invoke-virtual {v7}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v19

    cmp-long v17, v17, v19

    if-gez v17, :cond_1

    .line 133
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v17

    const-wide/16 v18, 0x1

    add-long v18, v18, v3

    invoke-static/range {v17 .. v19}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v17

    if-ltz v17, :cond_0

    .line 135
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v17

    const-wide/16 v18, 0x1

    add-long v18, v18, v3

    invoke-static/range {v17 .. v19}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v17

    aput-wide v5, v16, v17

    .line 137
    :cond_0
    invoke-virtual {v7}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-double v0, v0

    move-wide/from16 v19, v0

    div-double v17, v17, v19

    add-double v5, v5, v17

    .line 138
    const-wide/16 v17, 0x1

    add-long v3, v3, v17

    .line 132
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 130
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 141
    .end local v7           #entry:Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    .end local v10           #j:I
    :cond_2
    const-wide/16 v12, 0x0

    .line 142
    .local v12, previous:D
    move-object/from16 v2, v16

    .local v2, arr$:[D
    array-length v11, v2

    .local v11, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_2
    if-ge v9, v11, :cond_5

    aget-wide v14, v2, v9

    .line 143
    .local v14, timeOfSyncSample:D
    cmpl-double v17, v14, p1

    if-lez v17, :cond_4

    .line 144
    if-eqz p3, :cond_3

    .line 152
    .end local v14           #timeOfSyncSample:D
    :goto_3
    return-wide v14

    .restart local v14       #timeOfSyncSample:D
    :cond_3
    move-wide v14, v12

    .line 147
    goto :goto_3

    .line 150
    :cond_4
    move-wide v12, v14

    .line 142
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 152
    .end local v14           #timeOfSyncSample:D
    :cond_5
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    aget-wide v14, v16, v17

    goto :goto_3
.end method

.method public static startTrim(Ljava/io/File;Ljava/io/File;II)V
    .locals 31
    .parameter "src"
    .parameter "dst"
    .parameter "startMs"
    .parameter "endMs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v22, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    .local v22, randomAccessFile:Ljava/io/RandomAccessFile;
    invoke-virtual/range {v22 .. v22}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-static {v2}, Lcom/googlecode/mp4parser/authoring/container/mp4/MovieCreator;->build(Ljava/nio/channels/ReadableByteChannel;)Lcom/googlecode/mp4parser/authoring/Movie;

    move-result-object v20

    .line 49
    .local v20, movie:Lcom/googlecode/mp4parser/authoring/Movie;
    invoke-virtual/range {v20 .. v20}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v26

    .line 50
    .local v26, tracks:Ljava/util/List;,"Ljava/util/List<Lcom/googlecode/mp4parser/authoring/Track;>;"
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/authoring/Movie;->setTracks(Ljava/util/List;)V

    .line 52
    move/from16 v0, p2

    div-int/lit16 v2, v0, 0x3e8

    int-to-double v0, v2

    move-wide/from16 v23, v0

    .line 53
    .local v23, startTime:D
    move/from16 v0, p3

    div-int/lit16 v2, v0, 0x3e8

    int-to-double v12, v2

    .line 55
    .local v12, endTime:D
    const/16 v25, 0x0

    .line 60
    .local v25, timeCorrected:Z
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/googlecode/mp4parser/authoring/Track;

    .line 61
    .local v3, track:Lcom/googlecode/mp4parser/authoring/Track;
    invoke-interface {v3}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_0

    .line 62
    if-eqz v25, :cond_1

    .line 67
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v27, "The startTime has already been corrected by another track with SyncSample. Not Supported."

    move-object/from16 v0, v27

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :cond_1
    const/4 v2, 0x0

    move-wide/from16 v0, v23

    invoke-static {v3, v0, v1, v2}, Lcom/android/gallery3d/app/TrimVideoUtils;->correctTimeToSyncSample(Lcom/googlecode/mp4parser/authoring/Track;DZ)D

    move-result-wide v23

    .line 70
    const/4 v2, 0x1

    invoke-static {v3, v12, v13, v2}, Lcom/android/gallery3d/app/TrimVideoUtils;->correctTimeToSyncSample(Lcom/googlecode/mp4parser/authoring/Track;DZ)D

    move-result-wide v12

    .line 71
    const/16 v25, 0x1

    goto :goto_0

    .line 75
    .end local v3           #track:Lcom/googlecode/mp4parser/authoring/Track;
    :cond_2
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/googlecode/mp4parser/authoring/Track;

    .line 76
    .restart local v3       #track:Lcom/googlecode/mp4parser/authoring/Track;
    const-wide/16 v8, 0x0

    .line 77
    .local v8, currentSample:J
    const-wide/16 v10, 0x0

    .line 78
    .local v10, currentTime:D
    const-wide/16 v4, -0x1

    .line 79
    .local v4, startSample:J
    const-wide/16 v6, -0x1

    .line 81
    .local v6, endSample:J
    const/16 v17, 0x0

    .local v17, i:I
    :goto_2
    invoke-interface {v3}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_5

    .line 82
    invoke-interface {v3}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v2

    move/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .line 83
    .local v14, entry:Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    const/16 v19, 0x0

    .local v19, j:I
    :goto_3
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v27, v0

    invoke-virtual {v14}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v29

    cmp-long v2, v27, v29

    if-gez v2, :cond_4

    .line 86
    cmpg-double v2, v10, v23

    if-gtz v2, :cond_3

    .line 88
    move-wide v4, v8

    .line 90
    :cond_3
    cmpg-double v2, v10, v12

    if-gtz v2, :cond_4

    .line 92
    move-wide v6, v8

    .line 97
    invoke-virtual {v14}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v27

    move-wide/from16 v0, v27

    long-to-double v0, v0

    move-wide/from16 v27, v0

    invoke-interface {v3}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v29

    move-wide/from16 v0, v29

    long-to-double v0, v0

    move-wide/from16 v29, v0

    div-double v27, v27, v29

    add-double v10, v10, v27

    .line 98
    const-wide/16 v27, 0x1

    add-long v8, v8, v27

    .line 83
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 81
    :cond_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 101
    .end local v14           #entry:Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    .end local v19           #j:I
    :cond_5
    new-instance v2, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;

    invoke-direct/range {v2 .. v7}, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;-><init>(Lcom/googlecode/mp4parser/authoring/Track;JJ)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/authoring/Movie;->addTrack(Lcom/googlecode/mp4parser/authoring/Track;)V

    goto :goto_1

    .line 103
    .end local v3           #track:Lcom/googlecode/mp4parser/authoring/Track;
    .end local v4           #startSample:J
    .end local v6           #endSample:J
    .end local v8           #currentSample:J
    .end local v10           #currentTime:D
    .end local v17           #i:I
    :cond_6
    new-instance v2, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;

    invoke-direct {v2}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->build(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/IsoFile;

    move-result-object v21

    .line 105
    .local v21, out:Lcom/coremedia/iso/IsoFile;
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_7

    .line 106
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->createNewFile()Z

    .line 109
    :cond_7
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 110
    .local v16, fos:Ljava/io/FileOutputStream;
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v15

    .line 111
    .local v15, fc:Ljava/nio/channels/FileChannel;
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Lcom/coremedia/iso/IsoFile;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 113
    invoke-virtual {v15}, Ljava/nio/channels/FileChannel;->close()V

    .line 114
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V

    .line 115
    invoke-virtual/range {v22 .. v22}, Ljava/io/RandomAccessFile;->close()V

    .line 116
    return-void
.end method
