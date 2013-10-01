.class Lcom/android/gallery3d/exif/IfdData;
.super Ljava/lang/Object;
.source "IfdData.java"


# instance fields
.field private final mExifTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Short;",
            "Lcom/android/gallery3d/exif/ExifTag;",
            ">;"
        }
    .end annotation
.end field

.field private final mIfdId:I

.field private mOffsetToNextIfd:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "ifdId"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/exif/IfdData;->mExifTags:Ljava/util/Map;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/exif/IfdData;->mOffsetToNextIfd:I

    .line 44
    iput p1, p0, Lcom/android/gallery3d/exif/IfdData;->mIfdId:I

    .line 45
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .parameter "obj"

    .prologue
    const/4 v7, 0x0

    .line 108
    instance-of v8, p1, Lcom/android/gallery3d/exif/IfdData;

    if-eqz v8, :cond_2

    move-object v1, p1

    .line 109
    check-cast v1, Lcom/android/gallery3d/exif/IfdData;

    .line 110
    .local v1, data:Lcom/android/gallery3d/exif/IfdData;
    invoke-virtual {v1}, Lcom/android/gallery3d/exif/IfdData;->getId()I

    move-result v8

    iget v9, p0, Lcom/android/gallery3d/exif/IfdData;->mIfdId:I

    if-ne v8, v9, :cond_2

    invoke-virtual {v1}, Lcom/android/gallery3d/exif/IfdData;->getTagCount()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/gallery3d/exif/IfdData;->getTagCount()I

    move-result v9

    if-ne v8, v9, :cond_2

    .line 111
    invoke-virtual {v1}, Lcom/android/gallery3d/exif/IfdData;->getAllTags()[Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v6

    .line 112
    .local v6, tags:[Lcom/android/gallery3d/exif/ExifTag;
    move-object v0, v6

    .local v0, arr$:[Lcom/android/gallery3d/exif/ExifTag;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 113
    .local v4, tag:Lcom/android/gallery3d/exif/ExifTag;
    invoke-virtual {v4}, Lcom/android/gallery3d/exif/ExifTag;->getTagId()S

    move-result v8

    invoke-static {v8}, Lcom/android/gallery3d/exif/ExifTag;->isOffsetTag(S)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 112
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    :cond_1
    iget-object v8, p0, Lcom/android/gallery3d/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/android/gallery3d/exif/ExifTag;->getTagId()S

    move-result v9

    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/exif/ExifTag;

    .line 115
    .local v5, tag2:Lcom/android/gallery3d/exif/ExifTag;
    invoke-virtual {v4, v5}, Lcom/android/gallery3d/exif/ExifTag;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 120
    .end local v0           #arr$:[Lcom/android/gallery3d/exif/ExifTag;
    .end local v1           #data:Lcom/android/gallery3d/exif/IfdData;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #tag:Lcom/android/gallery3d/exif/ExifTag;
    .end local v5           #tag2:Lcom/android/gallery3d/exif/ExifTag;
    .end local v6           #tags:[Lcom/android/gallery3d/exif/ExifTag;
    :cond_2
    :goto_1
    return v7

    .line 117
    .restart local v0       #arr$:[Lcom/android/gallery3d/exif/ExifTag;
    .restart local v1       #data:Lcom/android/gallery3d/exif/IfdData;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v6       #tags:[Lcom/android/gallery3d/exif/ExifTag;
    :cond_3
    const/4 v7, 0x1

    goto :goto_1
.end method

.method public getAllTags()[Lcom/android/gallery3d/exif/ExifTag;
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/gallery3d/exif/ExifTag;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/gallery3d/exif/ExifTag;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/android/gallery3d/exif/IfdData;->mIfdId:I

    return v0
.end method

.method getOffsetToNextIfd()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/android/gallery3d/exif/IfdData;->mOffsetToNextIfd:I

    return v0
.end method

.method public getTag(S)Lcom/android/gallery3d/exif/ExifTag;
    .locals 2
    .parameter "tagId"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/gallery3d/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/exif/ExifTag;

    return-object v0
.end method

.method public getTagCount()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method setOffsetToNextIfd(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 92
    iput p1, p0, Lcom/android/gallery3d/exif/IfdData;->mOffsetToNextIfd:I

    .line 93
    return-void
.end method

.method public setTag(Lcom/android/gallery3d/exif/ExifTag;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/gallery3d/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getTagId()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method
