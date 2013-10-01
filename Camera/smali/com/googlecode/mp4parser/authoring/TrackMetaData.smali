.class public Lcom/googlecode/mp4parser/authoring/TrackMetaData;
.super Ljava/lang/Object;
.source "TrackMetaData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private creationTime:Ljava/util/Date;

.field private group:I

.field private height:D

.field private language:Ljava/lang/String;

.field layer:I

.field private matrix:[J

.field private modificationTime:Ljava/util/Date;

.field private timescale:J

.field private trackId:J

.field private volume:F

.field private width:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->modificationTime:Ljava/util/Date;

    .line 27
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->creationTime:Ljava/util/Date;

    .line 31
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->trackId:J

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->group:I

    .line 33
    const/16 v0, 0x9

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->matrix:[J

    return-void

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x40t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 133
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 135
    :goto_0
    return-object v1

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCreationTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->creationTime:Ljava/util/Date;

    return-object v0
.end method

.method public getGroup()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->group:I

    return v0
.end method

.method public getHeight()D
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->height:D

    return-wide v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getLayer()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->layer:I

    return v0
.end method

.method public getMatrix()[J
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->matrix:[J

    return-object v0
.end method

.method public getTimescale()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->timescale:J

    return-wide v0
.end method

.method public getTrackId()J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->trackId:J

    return-wide v0
.end method

.method public getVolume()F
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->volume:F

    return v0
.end method

.method public getWidth()D
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->width:D

    return-wide v0
.end method

.method public setCreationTime(Ljava/util/Date;)V
    .locals 0
    .parameter "creationTime"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->creationTime:Ljava/util/Date;

    .line 73
    return-void
.end method

.method public setHeight(D)V
    .locals 0
    .parameter "height"

    .prologue
    .line 96
    iput-wide p1, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->height:D

    .line 97
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .parameter "language"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->language:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setLayer(I)V
    .locals 0
    .parameter "layer"

    .prologue
    .line 112
    iput p1, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->layer:I

    .line 113
    return-void
.end method

.method public setMatrix([J)V
    .locals 0
    .parameter "m"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->matrix:[J

    .line 89
    return-void
.end method

.method public setModificationTime(Ljava/util/Date;)V
    .locals 0
    .parameter "modificationTime"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->modificationTime:Ljava/util/Date;

    .line 65
    return-void
.end method

.method public setTimescale(J)V
    .locals 0
    .parameter "timescale"

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->timescale:J

    .line 57
    return-void
.end method

.method public setTrackId(J)V
    .locals 0
    .parameter "trackId"

    .prologue
    .line 104
    iput-wide p1, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->trackId:J

    .line 105
    return-void
.end method

.method public setWidth(D)V
    .locals 0
    .parameter "width"

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->width:D

    .line 81
    return-void
.end method
