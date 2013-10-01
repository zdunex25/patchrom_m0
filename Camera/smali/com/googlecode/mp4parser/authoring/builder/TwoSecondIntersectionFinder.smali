.class public Lcom/googlecode/mp4parser/authoring/builder/TwoSecondIntersectionFinder;
.super Ljava/lang/Object;
.source "TwoSecondIntersectionFinder.java"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDuration(Lcom/googlecode/mp4parser/authoring/Track;)J
    .locals 8
    .parameter "track"

    .prologue
    .line 32
    const-wide/16 v0, 0x0

    .line 33
    .local v0, duration:J
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

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

    .line 34
    .local v2, entry:Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v6

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    goto :goto_0

    .line 36
    .end local v2           #entry:Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    :cond_0
    return-wide v0
.end method

.method public sampleNumbers(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)[J
    .locals 24
    .parameter "track"
    .parameter "movie"

    .prologue
    .line 43
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v3

    .line 45
    .local v3, entries:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;>;"
    const-wide/16 v18, 0x0

    .line 46
    .local v18, trackLength:D
    invoke-virtual/range {p2 .. p2}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/googlecode/mp4parser/authoring/Track;

    .line 47
    .local v13, thisTrack:Lcom/googlecode/mp4parser/authoring/Track;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/googlecode/mp4parser/authoring/builder/TwoSecondIntersectionFinder;->getDuration(Lcom/googlecode/mp4parser/authoring/Track;)J

    move-result-wide v20

    invoke-interface {v13}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v22

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-double v14, v0

    .line 48
    .local v14, thisTracksLength:D
    cmpg-double v20, v18, v14

    if-gez v20, :cond_0

    .line 49
    move-wide/from16 v18, v14

    goto :goto_0

    .line 53
    .end local v13           #thisTrack:Lcom/googlecode/mp4parser/authoring/Track;
    .end local v14           #thisTracksLength:D
    :cond_1
    const-wide/high16 v20, 0x4000

    div-double v20, v18, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    add-int/lit8 v5, v20, -0x1

    .line 54
    .local v5, fragmentCount:I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ge v5, v0, :cond_2

    .line 55
    const/4 v5, 0x1

    .line 58
    :cond_2
    new-array v6, v5, [J

    .line 59
    .local v6, fragments:[J
    const-wide/16 v20, -0x1

    move-wide/from16 v0, v20

    invoke-static {v6, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    .line 60
    const/16 v20, 0x0

    const-wide/16 v21, 0x1

    aput-wide v21, v6, v20

    .line 62
    const-wide/16 v16, 0x0

    .line 63
    .local v16, time:J
    const/4 v11, 0x0

    .line 64
    .local v11, samples:I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .line 65
    .local v4, entry:Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    int-to-long v0, v7

    move-wide/from16 v20, v0

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v22

    cmp-long v20, v20, v22

    if-gez v20, :cond_3

    .line 66
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v20

    div-long v20, v16, v20

    const-wide/16 v22, 0x2

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    add-int/lit8 v2, v20, 0x1

    .line 67
    .local v2, currentFragment:I
    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v2, v0, :cond_3

    .line 70
    add-int/lit8 v12, v11, 0x1

    .end local v11           #samples:I
    .local v12, samples:I
    add-int/lit8 v20, v11, 0x1

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    aput-wide v20, v6, v2

    .line 71
    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v20

    add-long v16, v16, v20

    .line 65
    add-int/lit8 v7, v7, 0x1

    move v11, v12

    .end local v12           #samples:I
    .restart local v11       #samples:I
    goto :goto_1

    .line 74
    .end local v2           #currentFragment:I
    .end local v4           #entry:Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    .end local v7           #i:I
    :cond_4
    add-int/lit8 v20, v11, 0x1

    move/from16 v0, v20

    int-to-long v9, v0

    .line 76
    .local v9, last:J
    array-length v0, v6

    move/from16 v20, v0

    add-int/lit8 v7, v20, -0x1

    .restart local v7       #i:I
    :goto_2
    if-ltz v7, :cond_6

    .line 77
    aget-wide v20, v6, v7

    const-wide/16 v22, -0x1

    cmp-long v20, v20, v22

    if-nez v20, :cond_5

    .line 78
    aput-wide v9, v6, v7

    .line 80
    :cond_5
    aget-wide v9, v6, v7

    .line 76
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 82
    :cond_6
    return-object v6
.end method
