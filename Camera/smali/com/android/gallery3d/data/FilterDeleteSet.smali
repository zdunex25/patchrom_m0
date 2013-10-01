.class public Lcom/android/gallery3d/data/FilterDeleteSet;
.super Lcom/android/gallery3d/data/MediaSet;
.source "FilterDeleteSet.java"

# interfaces
.implements Lcom/android/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/FilterDeleteSet$Deletion;,
        Lcom/android/gallery3d/data/FilterDeleteSet$Request;
    }
.end annotation


# instance fields
.field private final mBaseSet:Lcom/android/gallery3d/data/MediaSet;

.field private mCurrent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/FilterDeleteSet$Deletion;",
            ">;"
        }
    .end annotation
.end field

.field private mRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/FilterDeleteSet$Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/MediaSet;)V
    .locals 2
    .parameter "path"
    .parameter "baseSet"

    .prologue
    .line 68
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/FilterDeleteSet;->mRequests:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    .line 69
    iput-object p2, p0, Lcom/android/gallery3d/data/FilterDeleteSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/data/FilterDeleteSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/data/MediaSet;->addContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 71
    return-void
.end method

.method private sendRequest(ILcom/android/gallery3d/data/Path;I)V
    .locals 3
    .parameter "type"
    .parameter "path"
    .parameter "indexHint"

    .prologue
    .line 227
    new-instance v0, Lcom/android/gallery3d/data/FilterDeleteSet$Request;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/gallery3d/data/FilterDeleteSet$Request;-><init>(ILcom/android/gallery3d/data/Path;I)V

    .line 228
    .local v0, r:Lcom/android/gallery3d/data/FilterDeleteSet$Request;
    iget-object v2, p0, Lcom/android/gallery3d/data/FilterDeleteSet;->mRequests:Ljava/util/ArrayList;

    monitor-enter v2

    .line 229
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/data/FilterDeleteSet;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    invoke-virtual {p0}, Lcom/android/gallery3d/data/FilterDeleteSet;->notifyContentChanged()V

    .line 232
    return-void

    .line 230
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public addDeletion(Lcom/android/gallery3d/data/Path;I)V
    .locals 1
    .parameter "path"
    .parameter "indexHint"

    .prologue
    .line 240
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/gallery3d/data/FilterDeleteSet;->sendRequest(ILcom/android/gallery3d/data/Path;I)V

    .line 241
    return-void
.end method

.method public clearDeletion()V
    .locals 3

    .prologue
    .line 248
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/gallery3d/data/FilterDeleteSet;->sendRequest(ILcom/android/gallery3d/data/Path;I)V

    .line 249
    return-void
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 11
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    if-gtz p2, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    :cond_0
    return-object v0

    .line 116
    :cond_1
    add-int v8, p1, p2

    add-int/lit8 v2, v8, -0x1

    .line 117
    .local v2, end:I
    iget-object v8, p0, Lcom/android/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 120
    .local v7, n:I
    const/4 v3, 0x0

    .line 121
    .local v3, i:I
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v7, :cond_2

    .line 122
    iget-object v8, p0, Lcom/android/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/FilterDeleteSet$Deletion;

    .line 123
    .local v1, d:Lcom/android/gallery3d/data/FilterDeleteSet$Deletion;
    iget v8, v1, Lcom/android/gallery3d/data/FilterDeleteSet$Deletion;->index:I

    sub-int/2addr v8, v3

    if-le v8, p1, :cond_4

    .line 126
    .end local v1           #d:Lcom/android/gallery3d/data/FilterDeleteSet$Deletion;
    :cond_2
    move v4, v3

    .line 127
    .local v4, j:I
    :goto_1
    if-ge v4, v7, :cond_3

    .line 128
    iget-object v8, p0, Lcom/android/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/FilterDeleteSet$Deletion;

    .line 129
    .restart local v1       #d:Lcom/android/gallery3d/data/FilterDeleteSet$Deletion;
    iget v8, v1, Lcom/android/gallery3d/data/FilterDeleteSet$Deletion;->index:I

    sub-int/2addr v8, v4

    if-le v8, v2, :cond_5

    .line 133
    .end local v1           #d:Lcom/android/gallery3d/data/FilterDeleteSet$Deletion;
    :cond_3
    iget-object v8, p0, Lcom/android/gallery3d/data/FilterDeleteSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    add-int v9, p1, v3

    sub-int v10, v4, v3

    add-int/2addr v10, p2

    invoke-virtual {v8, v9, v10}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 136
    .local v0, base:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    add-int/lit8 v6, v4, -0x1

    .local v6, m:I
    :goto_2
    if-lt v6, v3, :cond_0

    .line 137
    iget-object v8, p0, Lcom/android/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/FilterDeleteSet$Deletion;

    .line 138
    .restart local v1       #d:Lcom/android/gallery3d/data/FilterDeleteSet$Deletion;
    iget v8, v1, Lcom/android/gallery3d/data/FilterDeleteSet$Deletion;->index:I

    add-int v9, p1, v3

    sub-int v5, v8, v9

    .line 139
    .local v5, k:I
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 136
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 121
    .end local v0           #base:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    .end local v4           #j:I
    .end local v5           #k:I
    .end local v6           #m:I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 127
    .restart local v4       #j:I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public getMediaItemCount()I
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/data/FilterDeleteSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/gallery3d/data/FilterDeleteSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumberOfDeletions()I
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isCameraRoll()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/data/FilterDeleteSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->isCameraRoll()Z

    move-result v0

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/android/gallery3d/data/FilterDeleteSet;->notifyContentChanged()V

    .line 237
    return-void
.end method

.method public reload()J
    .locals 22

    .prologue
    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/FilterDeleteSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/gallery3d/data/FilterDeleteSet;->mDataVersion:J

    move-wide/from16 v19, v0

    cmp-long v17, v17, v19

    if-lez v17, :cond_0

    const/4 v12, 0x1

    .line 148
    .local v12, newData:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/FilterDeleteSet;->mRequests:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 149
    if-nez v12, :cond_1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/FilterDeleteSet;->mRequests:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 150
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/gallery3d/data/FilterDeleteSet;->mDataVersion:J

    move-wide/from16 v17, v0

    monitor-exit v19

    .line 223
    :goto_1
    return-wide v17

    .line 147
    .end local v12           #newData:Z
    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    .line 152
    .restart local v12       #newData:Z
    :cond_1
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/FilterDeleteSet;->mRequests:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v5, v0, :cond_6

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/FilterDeleteSet;->mRequests:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/gallery3d/data/FilterDeleteSet$Request;

    .line 154
    .local v14, r:Lcom/android/gallery3d/data/FilterDeleteSet$Request;
    iget v0, v14, Lcom/android/gallery3d/data/FilterDeleteSet$Request;->type:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 152
    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 157
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 159
    .local v11, n:I
    const/4 v8, 0x0

    .local v8, j:I
    :goto_4
    if-ge v8, v11, :cond_3

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/gallery3d/data/FilterDeleteSet$Deletion;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/gallery3d/data/FilterDeleteSet$Deletion;->path:Lcom/android/gallery3d/data/Path;

    move-object/from16 v17, v0

    iget-object v0, v14, Lcom/android/gallery3d/data/FilterDeleteSet$Request;->path:Lcom/android/gallery3d/data/Path;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 162
    :cond_3
    if-ne v8, v11, :cond_2

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/gallery3d/data/FilterDeleteSet$Deletion;

    iget-object v0, v14, Lcom/android/gallery3d/data/FilterDeleteSet$Request;->path:Lcom/android/gallery3d/data/Path;

    move-object/from16 v20, v0

    iget v0, v14, Lcom/android/gallery3d/data/FilterDeleteSet$Request;->indexHint:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/data/FilterDeleteSet$Deletion;-><init>(Lcom/android/gallery3d/data/Path;I)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 185
    .end local v5           #i:I
    .end local v8           #j:I
    .end local v11           #n:I
    .end local v14           #r:Lcom/android/gallery3d/data/FilterDeleteSet$Request;
    :catchall_0
    move-exception v17

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    .line 159
    .restart local v5       #i:I
    .restart local v8       #j:I
    .restart local v11       #n:I
    .restart local v14       #r:Lcom/android/gallery3d/data/FilterDeleteSet$Request;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 169
    .end local v8           #j:I
    .end local v11           #n:I
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 170
    .restart local v11       #n:I
    const/4 v8, 0x0

    .restart local v8       #j:I
    :goto_5
    if-ge v8, v11, :cond_2

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/gallery3d/data/FilterDeleteSet$Deletion;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/gallery3d/data/FilterDeleteSet$Deletion;->path:Lcom/android/gallery3d/data/Path;

    move-object/from16 v17, v0

    iget-object v0, v14, Lcom/android/gallery3d/data/FilterDeleteSet$Request;->path:Lcom/android/gallery3d/data/Path;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 170
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 179
    .end local v8           #j:I
    .end local v11           #n:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_3

    .line 184
    .end local v14           #r:Lcom/android/gallery3d/data/FilterDeleteSet$Request;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/FilterDeleteSet;->mRequests:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 185
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_c

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/gallery3d/data/FilterDeleteSet$Deletion;

    move-object/from16 v0, v17

    iget v10, v0, Lcom/android/gallery3d/data/FilterDeleteSet$Deletion;->index:I

    .line 192
    .local v10, minIndex:I
    move v9, v10

    .line 193
    .local v9, maxIndex:I
    const/4 v5, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v5, v0, :cond_7

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/FilterDeleteSet$Deletion;

    .line 195
    .local v3, d:Lcom/android/gallery3d/data/FilterDeleteSet$Deletion;
    iget v0, v3, Lcom/android/gallery3d/data/FilterDeleteSet$Deletion;->index:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 196
    iget v0, v3, Lcom/android/gallery3d/data/FilterDeleteSet$Deletion;->index:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 193
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 199
    .end local v3           #d:Lcom/android/gallery3d/data/FilterDeleteSet$Deletion;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/FilterDeleteSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v11

    .line 200
    .restart local v11       #n:I
    add-int/lit8 v17, v10, -0x5

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 201
    .local v4, from:I
    add-int/lit8 v17, v9, 0x5

    move/from16 v0, v17

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 202
    .local v16, to:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/FilterDeleteSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    move-object/from16 v17, v0

    sub-int v18, v16, v4

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v7

    .line 203
    .local v7, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v15, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/FilterDeleteSet$Deletion;>;"
    const/4 v5, 0x0

    :goto_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v5, v0, :cond_b

    .line 205
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/data/MediaItem;

    .line 206
    .local v6, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v6, :cond_9

    .line 204
    :cond_8
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 207
    :cond_9
    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v13

    .line 209
    .local v13, p:Lcom/android/gallery3d/data/Path;
    const/4 v8, 0x0

    .restart local v8       #j:I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_8

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/FilterDeleteSet$Deletion;

    .line 211
    .restart local v3       #d:Lcom/android/gallery3d/data/FilterDeleteSet$Deletion;
    iget-object v0, v3, Lcom/android/gallery3d/data/FilterDeleteSet$Deletion;->path:Lcom/android/gallery3d/data/Path;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-ne v0, v13, :cond_a

    .line 212
    add-int v17, v4, v5

    move/from16 v0, v17

    iput v0, v3, Lcom/android/gallery3d/data/FilterDeleteSet$Deletion;->index:I

    .line 213
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_8

    .line 209
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 219
    .end local v3           #d:Lcom/android/gallery3d/data/FilterDeleteSet$Deletion;
    .end local v6           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v8           #j:I
    .end local v13           #p:Lcom/android/gallery3d/data/Path;
    :cond_b
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    .line 222
    .end local v4           #from:I
    .end local v7           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    .end local v9           #maxIndex:I
    .end local v10           #minIndex:I
    .end local v11           #n:I
    .end local v15           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/FilterDeleteSet$Deletion;>;"
    .end local v16           #to:I
    :cond_c
    invoke-static {}, Lcom/android/gallery3d/data/FilterDeleteSet;->nextVersionNumber()J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/gallery3d/data/FilterDeleteSet;->mDataVersion:J

    .line 223
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/gallery3d/data/FilterDeleteSet;->mDataVersion:J

    move-wide/from16 v17, v0

    goto/16 :goto_1

    .line 154
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public removeDeletion(Lcom/android/gallery3d/data/Path;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 244
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/gallery3d/data/FilterDeleteSet;->sendRequest(ILcom/android/gallery3d/data/Path;I)V

    .line 245
    return-void
.end method
