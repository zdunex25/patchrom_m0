.class public Lcom/android/gallery3d/app/FilterUtils;
.super Ljava/lang/Object;
.source "FilterUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAppliedFilters(Lcom/android/gallery3d/data/Path;[I)V
    .locals 1
    .parameter "path"
    .parameter "result"

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/gallery3d/app/FilterUtils;->getAppliedFilters(Lcom/android/gallery3d/data/Path;[IZ)V

    .line 120
    return-void
.end method

.method private static getAppliedFilters(Lcom/android/gallery3d/data/Path;[IZ)V
    .locals 11
    .parameter "path"
    .parameter "result"
    .parameter "underCluster"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 123
    invoke-virtual {p0}, Lcom/android/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, segments:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, v3

    if-ge v1, v6, :cond_1

    .line 126
    aget-object v6, v3, v1

    const-string v7, "{"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 127
    aget-object v6, v3, v1

    invoke-static {v6}, Lcom/android/gallery3d/data/Path;->splitSequence(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, sets:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    array-length v6, v4

    if-ge v2, v6, :cond_0

    .line 129
    aget-object v6, v4, v2

    invoke-static {v6}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v5

    .line 130
    .local v5, sub:Lcom/android/gallery3d/data/Path;
    invoke-static {v5, p1, p2}, Lcom/android/gallery3d/app/FilterUtils;->getAppliedFilters(Lcom/android/gallery3d/data/Path;[IZ)V

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 125
    .end local v2           #j:I
    .end local v4           #sets:[Ljava/lang/String;
    .end local v5           #sub:Lcom/android/gallery3d/data/Path;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    :cond_1
    aget-object v6, v3, v8

    const-string v7, "cluster"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 138
    array-length v6, v3

    if-ne v6, v10, :cond_2

    .line 139
    const/4 p2, 0x1

    .line 142
    :cond_2
    aget-object v6, v3, v9

    invoke-static {v6}, Lcom/android/gallery3d/app/FilterUtils;->toClusterType(Ljava/lang/String;)I

    move-result v0

    .line 143
    .local v0, ctype:I
    aget v6, p1, v8

    or-int/2addr v6, v0

    aput v6, p1, v8

    .line 144
    aput v0, p1, v10

    .line 145
    if-eqz p2, :cond_3

    .line 146
    aget v6, p1, v9

    or-int/2addr v6, v0

    aput v6, p1, v9

    .line 149
    .end local v0           #ctype:I
    :cond_3
    return-void
.end method

.method public static newClusterPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "base"
    .parameter "clusterType"

    .prologue
    .line 195
    sparse-switch p1, :sswitch_data_0

    .line 215
    .end local p0
    :goto_0
    return-object p0

    .line 197
    .restart local p0
    :sswitch_0
    const-string v0, "time"

    .line 215
    .local v0, kind:Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/cluster/{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 200
    .end local v0           #kind:Ljava/lang/String;
    :sswitch_1
    const-string v0, "location"

    .line 201
    .restart local v0       #kind:Ljava/lang/String;
    goto :goto_1

    .line 203
    .end local v0           #kind:Ljava/lang/String;
    :sswitch_2
    const-string v0, "tag"

    .line 204
    .restart local v0       #kind:Ljava/lang/String;
    goto :goto_1

    .line 206
    .end local v0           #kind:Ljava/lang/String;
    :sswitch_3
    const-string v0, "size"

    .line 207
    .restart local v0       #kind:Ljava/lang/String;
    goto :goto_1

    .line 209
    .end local v0           #kind:Ljava/lang/String;
    :sswitch_4
    const-string v0, "face"

    .line 210
    .restart local v0       #kind:Ljava/lang/String;
    goto :goto_1

    .line 195
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public static newFilterPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "base"
    .parameter "filterType"

    .prologue
    .line 178
    packed-switch p1, :pswitch_data_0

    .line 189
    .end local p0
    :goto_0
    return-object p0

    .line 180
    .restart local p0
    :pswitch_0
    const/4 v0, 0x2

    .line 189
    .local v0, mediaType:I
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/filter/mediatype/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 183
    .end local v0           #mediaType:I
    :pswitch_1
    const/4 v0, 0x4

    .line 184
    .restart local v0       #mediaType:I
    goto :goto_1

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static removeOneClusterFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "base"

    .prologue
    .line 225
    const/4 v1, 0x1

    new-array v0, v1, [Z

    .line 226
    .local v0, done:[Z
    invoke-static {p0, v0}, Lcom/android/gallery3d/app/FilterUtils;->removeOneClusterFromPath(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static removeOneClusterFromPath(Ljava/lang/String;[Z)Ljava/lang/String;
    .locals 9
    .parameter "base"
    .parameter "done"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 230
    aget-boolean v5, p1, v7

    if-eqz v5, :cond_0

    .line 255
    .end local p0
    :goto_0
    return-object p0

    .line 232
    .restart local p0
    :cond_0
    invoke-static {p0}, Lcom/android/gallery3d/data/Path;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, segments:[Ljava/lang/String;
    aget-object v5, v3, v7

    const-string v6, "cluster"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 234
    aput-boolean v8, p1, v7

    .line 235
    aget-object v5, v3, v8

    invoke-static {v5}, Lcom/android/gallery3d/data/Path;->splitSequence(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object p0, v5, v7

    goto :goto_0

    .line 238
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_5

    .line 240
    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    aget-object v5, v3, v0

    const-string v6, "{"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 242
    const-string v5, "{"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    aget-object v5, v3, v0

    invoke-static {v5}, Lcom/android/gallery3d/data/Path;->splitSequence(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 244
    .local v4, sets:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    array-length v5, v4

    if-ge v1, v5, :cond_3

    .line 245
    if-lez v1, :cond_2

    .line 246
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    :cond_2
    aget-object v5, v4, v1

    invoke-static {v5, p1}, Lcom/android/gallery3d/app/FilterUtils;->removeOneClusterFromPath(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 250
    :cond_3
    const-string v5, "}"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .end local v1           #j:I
    .end local v4           #sets:[Ljava/lang/String;
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 252
    :cond_4
    aget-object v5, v3, v0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 255
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static setMenuItemApplied(Lcom/android/gallery3d/app/GalleryActionBar;IZZ)V
    .locals 1
    .parameter "model"
    .parameter "id"
    .parameter "applied"
    .parameter "updateTitle"

    .prologue
    .line 168
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/app/GalleryActionBar;->setClusterItemEnabled(IZ)V

    .line 169
    return-void

    .line 168
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static setMenuItemAppliedEnabled(Lcom/android/gallery3d/app/GalleryActionBar;IZZZ)V
    .locals 0
    .parameter "model"
    .parameter "id"
    .parameter "applied"
    .parameter "enabled"
    .parameter "updateTitle"

    .prologue
    .line 172
    invoke-virtual {p0, p1, p3}, Lcom/android/gallery3d/app/GalleryActionBar;->setClusterItemEnabled(IZ)V

    .line 173
    return-void
.end method

.method public static setupMenuItems(Lcom/android/gallery3d/app/GalleryActionBar;Lcom/android/gallery3d/data/Path;Z)V
    .locals 12
    .parameter "actionBar"
    .parameter "path"
    .parameter "inAlbum"

    .prologue
    const/4 v11, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 81
    const/4 v6, 0x6

    new-array v5, v6, [I

    .line 82
    .local v5, result:[I
    invoke-static {p1, v5}, Lcom/android/gallery3d/app/FilterUtils;->getAppliedFilters(Lcom/android/gallery3d/data/Path;[I)V

    .line 83
    aget v1, v5, v8

    .line 84
    .local v1, ctype:I
    aget v3, v5, v7

    .line 85
    .local v3, ftype:I
    const/4 v6, 0x3

    aget v4, v5, v6

    .line 86
    .local v4, ftypef:I
    aget v0, v5, v11

    .line 87
    .local v0, ccurrent:I
    const/4 v6, 0x5

    aget v2, v5, v6

    .line 89
    .local v2, fcurrent:I
    const/4 v10, 0x2

    and-int/lit8 v6, v1, 0x2

    if-eqz v6, :cond_1

    move v9, v7

    :goto_0
    and-int/lit8 v6, v0, 0x2

    if-eqz v6, :cond_2

    move v6, v7

    :goto_1
    invoke-static {p0, v10, v9, v6}, Lcom/android/gallery3d/app/FilterUtils;->setMenuItemApplied(Lcom/android/gallery3d/app/GalleryActionBar;IZZ)V

    .line 91
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_3

    move v9, v7

    :goto_2
    and-int/lit8 v6, v0, 0x4

    if-eqz v6, :cond_4

    move v6, v7

    :goto_3
    invoke-static {p0, v11, v9, v6}, Lcom/android/gallery3d/app/FilterUtils;->setMenuItemApplied(Lcom/android/gallery3d/app/GalleryActionBar;IZZ)V

    .line 93
    const/16 v10, 0x8

    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_5

    move v9, v7

    :goto_4
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_6

    move v6, v7

    :goto_5
    invoke-static {p0, v10, v9, v6}, Lcom/android/gallery3d/app/FilterUtils;->setMenuItemApplied(Lcom/android/gallery3d/app/GalleryActionBar;IZZ)V

    .line 95
    const/16 v10, 0x20

    and-int/lit8 v6, v1, 0x20

    if-eqz v6, :cond_7

    move v9, v7

    :goto_6
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_8

    move v6, v7

    :goto_7
    invoke-static {p0, v10, v9, v6}, Lcom/android/gallery3d/app/FilterUtils;->setMenuItemApplied(Lcom/android/gallery3d/app/GalleryActionBar;IZZ)V

    .line 98
    if-eqz p2, :cond_0

    if-nez v1, :cond_9

    :cond_0
    move v6, v7

    :goto_8
    invoke-virtual {p0, v7, v6}, Lcom/android/gallery3d/app/GalleryActionBar;->setClusterItemVisibility(IZ)V

    .line 100
    const v10, 0x7f1000e3

    if-nez v1, :cond_a

    move v9, v7

    :goto_9
    if-nez v0, :cond_b

    move v6, v7

    :goto_a
    invoke-static {p0, v10, v9, v6}, Lcom/android/gallery3d/app/FilterUtils;->setMenuItemApplied(Lcom/android/gallery3d/app/GalleryActionBar;IZZ)V

    .line 105
    const v11, 0x7f0a01cb

    and-int/lit8 v6, v3, 0x1

    if-eqz v6, :cond_c

    move v10, v7

    :goto_b
    and-int/lit8 v6, v3, 0x1

    if-nez v6, :cond_d

    if-nez v4, :cond_d

    move v9, v7

    :goto_c
    and-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_e

    move v6, v7

    :goto_d
    invoke-static {p0, v11, v10, v9, v6}, Lcom/android/gallery3d/app/FilterUtils;->setMenuItemAppliedEnabled(Lcom/android/gallery3d/app/GalleryActionBar;IZZZ)V

    .line 109
    const v11, 0x7f0a01cc

    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_f

    move v10, v7

    :goto_e
    and-int/lit8 v6, v3, 0x2

    if-nez v6, :cond_10

    if-nez v4, :cond_10

    move v9, v7

    :goto_f
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_11

    move v6, v7

    :goto_10
    invoke-static {p0, v11, v10, v9, v6}, Lcom/android/gallery3d/app/FilterUtils;->setMenuItemAppliedEnabled(Lcom/android/gallery3d/app/GalleryActionBar;IZZZ)V

    .line 113
    const v10, 0x7f0a01cd

    if-nez v3, :cond_12

    move v9, v7

    :goto_11
    if-eqz v3, :cond_13

    if-nez v4, :cond_13

    move v6, v7

    :goto_12
    if-nez v2, :cond_14

    :goto_13
    invoke-static {p0, v10, v9, v6, v7}, Lcom/android/gallery3d/app/FilterUtils;->setMenuItemAppliedEnabled(Lcom/android/gallery3d/app/GalleryActionBar;IZZZ)V

    .line 115
    return-void

    :cond_1
    move v9, v8

    .line 89
    goto/16 :goto_0

    :cond_2
    move v6, v8

    goto/16 :goto_1

    :cond_3
    move v9, v8

    .line 91
    goto :goto_2

    :cond_4
    move v6, v8

    goto :goto_3

    :cond_5
    move v9, v8

    .line 93
    goto :goto_4

    :cond_6
    move v6, v8

    goto :goto_5

    :cond_7
    move v9, v8

    .line 95
    goto :goto_6

    :cond_8
    move v6, v8

    goto :goto_7

    :cond_9
    move v6, v8

    .line 98
    goto :goto_8

    :cond_a
    move v9, v8

    .line 100
    goto :goto_9

    :cond_b
    move v6, v8

    goto :goto_a

    :cond_c
    move v10, v8

    .line 105
    goto :goto_b

    :cond_d
    move v9, v8

    goto :goto_c

    :cond_e
    move v6, v8

    goto :goto_d

    :cond_f
    move v10, v8

    .line 109
    goto :goto_e

    :cond_10
    move v9, v8

    goto :goto_f

    :cond_11
    move v6, v8

    goto :goto_10

    :cond_12
    move v9, v8

    .line 113
    goto :goto_11

    :cond_13
    move v6, v8

    goto :goto_12

    :cond_14
    move v7, v8

    goto :goto_13
.end method

.method public static switchClusterPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "base"
    .parameter "clusterType"

    .prologue
    .line 220
    invoke-static {p0}, Lcom/android/gallery3d/app/FilterUtils;->removeOneClusterFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/gallery3d/app/FilterUtils;->newClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toClusterType(Ljava/lang/String;)I
    .locals 1
    .parameter "s"

    .prologue
    .line 152
    const-string v0, "time"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const/4 v0, 0x2

    .line 163
    :goto_0
    return v0

    .line 154
    :cond_0
    const-string v0, "location"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    const/4 v0, 0x4

    goto :goto_0

    .line 156
    :cond_1
    const-string v0, "tag"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    const/16 v0, 0x8

    goto :goto_0

    .line 158
    :cond_2
    const-string v0, "size"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 159
    const/16 v0, 0x10

    goto :goto_0

    .line 160
    :cond_3
    const-string v0, "face"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 161
    const/16 v0, 0x20

    goto :goto_0

    .line 163
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
