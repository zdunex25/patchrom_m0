.class public Lcom/android/gallery3d/common/LongSparseArray;
.super Ljava/lang/Object;
.source "LongSparseArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[J

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/gallery3d/common/LongSparseArray;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    .local p0, this:Lcom/android/gallery3d/common/LongSparseArray;,"Lcom/android/gallery3d/common/LongSparseArray<TE;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/gallery3d/common/LongSparseArray;-><init>(I)V

    .line 40
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "initialCapacity"

    .prologue
    .local p0, this:Lcom/android/gallery3d/common/LongSparseArray;,"Lcom/android/gallery3d/common/LongSparseArray<TE;>;"
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v1, p0, Lcom/android/gallery3d/common/LongSparseArray;->mGarbage:Z

    .line 48
    invoke-static {p1}, Lcom/android/gallery3d/common/LongSparseArray;->idealLongArraySize(I)I

    move-result p1

    .line 50
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/android/gallery3d/common/LongSparseArray;->mKeys:[J

    .line 51
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/gallery3d/common/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 52
    iput v1, p0, Lcom/android/gallery3d/common/LongSparseArray;->mSize:I

    .line 53
    return-void
.end method

.method private static binarySearch([JIIJ)I
    .locals 5
    .parameter "a"
    .parameter "start"
    .parameter "len"
    .parameter "key"

    .prologue
    .line 338
    add-int v1, p1, p2

    .local v1, high:I
    add-int/lit8 v2, p1, -0x1

    .line 340
    .local v2, low:I
    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 341
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 343
    .local v0, guess:I
    aget-wide v3, p0, v0

    cmp-long v3, v3, p3

    if-gez v3, :cond_0

    .line 344
    move v2, v0

    goto :goto_0

    .line 346
    :cond_0
    move v1, v0

    goto :goto_0

    .line 349
    .end local v0           #guess:I
    :cond_1
    add-int v3, p1, p2

    if-ne v1, v3, :cond_3

    .line 350
    add-int v3, p1, p2

    xor-int/lit8 v1, v3, -0x1

    .line 354
    .end local v1           #high:I
    :cond_2
    :goto_1
    return v1

    .line 351
    .restart local v1       #high:I
    :cond_3
    aget-wide v3, p0, v1

    cmp-long v3, v3, p3

    if-eqz v3, :cond_2

    .line 354
    xor-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private gc()V
    .locals 8

    .prologue
    .line 126
    .local p0, this:Lcom/android/gallery3d/common/LongSparseArray;,"Lcom/android/gallery3d/common/LongSparseArray<TE;>;"
    iget v2, p0, Lcom/android/gallery3d/common/LongSparseArray;->mSize:I

    .line 127
    .local v2, n:I
    const/4 v3, 0x0

    .line 128
    .local v3, o:I
    iget-object v1, p0, Lcom/android/gallery3d/common/LongSparseArray;->mKeys:[J

    .line 129
    .local v1, keys:[J
    iget-object v5, p0, Lcom/android/gallery3d/common/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 131
    .local v5, values:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 132
    aget-object v4, v5, v0

    .line 134
    .local v4, val:Ljava/lang/Object;
    sget-object v6, Lcom/android/gallery3d/common/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v4, v6, :cond_1

    .line 135
    if-eq v0, v3, :cond_0

    .line 136
    aget-wide v6, v1, v0

    aput-wide v6, v1, v3

    .line 137
    aput-object v4, v5, v3

    .line 138
    const/4 v6, 0x0

    aput-object v6, v5, v0

    .line 141
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 131
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    .end local v4           #val:Ljava/lang/Object;
    :cond_2
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/gallery3d/common/LongSparseArray;->mGarbage:Z

    .line 146
    iput v3, p0, Lcom/android/gallery3d/common/LongSparseArray;->mSize:I

    .line 149
    return-void
.end method

.method private static idealByteArraySize(I)I
    .locals 3
    .parameter "need"

    .prologue
    const/4 v2, 0x1

    .line 358
    const/4 v0, 0x4

    .local v0, i:I
    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 359
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_1

    .line 360
    shl-int v1, v2, v0

    add-int/lit8 p0, v1, -0xc

    .line 362
    .end local p0
    :cond_0
    return p0

    .line 358
    .restart local p0
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static idealLongArraySize(I)I
    .locals 1
    .parameter "need"

    .prologue
    .line 366
    mul-int/lit8 v0, p0, 0x8

    invoke-static {v0}, Lcom/android/gallery3d/common/LongSparseArray;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    .local p0, this:Lcom/android/gallery3d/common/LongSparseArray;,"Lcom/android/gallery3d/common/LongSparseArray<TE;>;"
    const/4 v4, 0x0

    .line 292
    iget v1, p0, Lcom/android/gallery3d/common/LongSparseArray;->mSize:I

    .line 293
    .local v1, n:I
    iget-object v2, p0, Lcom/android/gallery3d/common/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 295
    .local v2, values:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 296
    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    :cond_0
    iput v4, p0, Lcom/android/gallery3d/common/LongSparseArray;->mSize:I

    .line 300
    iput-boolean v4, p0, Lcom/android/gallery3d/common/LongSparseArray;->mGarbage:Z

    .line 301
    return-void
.end method

.method public clone()Lcom/android/gallery3d/common/LongSparseArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/gallery3d/common/LongSparseArray",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, this:Lcom/android/gallery3d/common/LongSparseArray;,"Lcom/android/gallery3d/common/LongSparseArray<TE;>;"
    const/4 v1, 0x0

    .line 60
    .local v1, clone:Lcom/android/gallery3d/common/LongSparseArray;,"Lcom/android/gallery3d/common/LongSparseArray<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/gallery3d/common/LongSparseArray;

    move-object v1, v0

    .line 61
    iget-object v2, p0, Lcom/android/gallery3d/common/LongSparseArray;->mKeys:[J

    invoke-virtual {v2}, [J->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    iput-object v2, v1, Lcom/android/gallery3d/common/LongSparseArray;->mKeys:[J

    .line 62
    iget-object v2, p0, Lcom/android/gallery3d/common/LongSparseArray;->mValues:[Ljava/lang/Object;

    invoke-virtual {v2}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    iput-object v2, v1, Lcom/android/gallery3d/common/LongSparseArray;->mValues:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-object v1

    .line 63
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 27
    .local p0, this:Lcom/android/gallery3d/common/LongSparseArray;,"Lcom/android/gallery3d/common/LongSparseArray<TE;>;"
    invoke-virtual {p0}, Lcom/android/gallery3d/common/LongSparseArray;->clone()Lcom/android/gallery3d/common/LongSparseArray;

    move-result-object v0

    return-object v0
.end method

.method public get(J)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, this:Lcom/android/gallery3d/common/LongSparseArray;,"Lcom/android/gallery3d/common/LongSparseArray<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/gallery3d/common/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, this:Lcom/android/gallery3d/common/LongSparseArray;,"Lcom/android/gallery3d/common/LongSparseArray<TE;>;"
    .local p3, valueIfKeyNotFound:Ljava/lang/Object;,"TE;"
    iget-object v1, p0, Lcom/android/gallery3d/common/LongSparseArray;->mKeys:[J

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/gallery3d/common/LongSparseArray;->mSize:I

    invoke-static {v1, v2, v3, p1, p2}, Lcom/android/gallery3d/common/LongSparseArray;->binarySearch([JIIJ)I

    move-result v0

    .line 85
    .local v0, i:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/common/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/gallery3d/common/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 88
    .end local p3           #valueIfKeyNotFound:Ljava/lang/Object;,"TE;"
    :cond_0
    :goto_0
    return-object p3

    .restart local p3       #valueIfKeyNotFound:Ljava/lang/Object;,"TE;"
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/common/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object p3, v1, v0

    goto :goto_0
.end method

.method public put(JLjava/lang/Object;)V
    .locals 8
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/gallery3d/common/LongSparseArray;,"Lcom/android/gallery3d/common/LongSparseArray<TE;>;"
    .local p3, value:Ljava/lang/Object;,"TE;"
    const/4 v6, 0x0

    .line 157
    iget-object v4, p0, Lcom/android/gallery3d/common/LongSparseArray;->mKeys:[J

    iget v5, p0, Lcom/android/gallery3d/common/LongSparseArray;->mSize:I

    invoke-static {v4, v6, v5, p1, p2}, Lcom/android/gallery3d/common/LongSparseArray;->binarySearch([JIIJ)I

    move-result v0

    .line 159
    .local v0, i:I
    if-ltz v0, :cond_0

    .line 160
    iget-object v4, p0, Lcom/android/gallery3d/common/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v4, v0

    .line 201
    :goto_0
    return-void

    .line 162
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 164
    iget v4, p0, Lcom/android/gallery3d/common/LongSparseArray;->mSize:I

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/android/gallery3d/common/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v4, v4, v0

    sget-object v5, Lcom/android/gallery3d/common/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v4, v5, :cond_1

    .line 165
    iget-object v4, p0, Lcom/android/gallery3d/common/LongSparseArray;->mKeys:[J

    aput-wide p1, v4, v0

    .line 166
    iget-object v4, p0, Lcom/android/gallery3d/common/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v4, v0

    goto :goto_0

    .line 170
    :cond_1
    iget-boolean v4, p0, Lcom/android/gallery3d/common/LongSparseArray;->mGarbage:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/gallery3d/common/LongSparseArray;->mSize:I

    iget-object v5, p0, Lcom/android/gallery3d/common/LongSparseArray;->mKeys:[J

    array-length v5, v5

    if-lt v4, v5, :cond_2

    .line 171
    invoke-direct {p0}, Lcom/android/gallery3d/common/LongSparseArray;->gc()V

    .line 174
    iget-object v4, p0, Lcom/android/gallery3d/common/LongSparseArray;->mKeys:[J

    iget v5, p0, Lcom/android/gallery3d/common/LongSparseArray;->mSize:I

    invoke-static {v4, v6, v5, p1, p2}, Lcom/android/gallery3d/common/LongSparseArray;->binarySearch([JIIJ)I

    move-result v4

    xor-int/lit8 v0, v4, -0x1

    .line 177
    :cond_2
    iget v4, p0, Lcom/android/gallery3d/common/LongSparseArray;->mSize:I

    iget-object v5, p0, Lcom/android/gallery3d/common/LongSparseArray;->mKeys:[J

    array-length v5, v5

    if-lt v4, v5, :cond_3

    .line 178
    iget v4, p0, Lcom/android/gallery3d/common/LongSparseArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lcom/android/gallery3d/common/LongSparseArray;->idealLongArraySize(I)I

    move-result v1

    .line 180
    .local v1, n:I
    new-array v2, v1, [J

    .line 181
    .local v2, nkeys:[J
    new-array v3, v1, [Ljava/lang/Object;

    .line 184
    .local v3, nvalues:[Ljava/lang/Object;
    iget-object v4, p0, Lcom/android/gallery3d/common/LongSparseArray;->mKeys:[J

    iget-object v5, p0, Lcom/android/gallery3d/common/LongSparseArray;->mKeys:[J

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    iget-object v4, p0, Lcom/android/gallery3d/common/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/gallery3d/common/LongSparseArray;->mValues:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    iput-object v2, p0, Lcom/android/gallery3d/common/LongSparseArray;->mKeys:[J

    .line 188
    iput-object v3, p0, Lcom/android/gallery3d/common/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 191
    .end local v1           #n:I
    .end local v2           #nkeys:[J
    .end local v3           #nvalues:[Ljava/lang/Object;
    :cond_3
    iget v4, p0, Lcom/android/gallery3d/common/LongSparseArray;->mSize:I

    sub-int/2addr v4, v0

    if-eqz v4, :cond_4

    .line 193
    iget-object v4, p0, Lcom/android/gallery3d/common/LongSparseArray;->mKeys:[J

    iget-object v5, p0, Lcom/android/gallery3d/common/LongSparseArray;->mKeys:[J

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Lcom/android/gallery3d/common/LongSparseArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    iget-object v4, p0, Lcom/android/gallery3d/common/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/gallery3d/common/LongSparseArray;->mValues:[Ljava/lang/Object;

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Lcom/android/gallery3d/common/LongSparseArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    :cond_4
    iget-object v4, p0, Lcom/android/gallery3d/common/LongSparseArray;->mKeys:[J

    aput-wide p1, v4, v0

    .line 198
    iget-object v4, p0, Lcom/android/gallery3d/common/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v4, v0

    .line 199
    iget v4, p0, Lcom/android/gallery3d/common/LongSparseArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/gallery3d/common/LongSparseArray;->mSize:I

    goto/16 :goto_0
.end method

.method public removeAt(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 117
    .local p0, this:Lcom/android/gallery3d/common/LongSparseArray;,"Lcom/android/gallery3d/common/LongSparseArray<TE;>;"
    iget-object v0, p0, Lcom/android/gallery3d/common/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/gallery3d/common/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/gallery3d/common/LongSparseArray;->mValues:[Ljava/lang/Object;

    sget-object v1, Lcom/android/gallery3d/common/LongSparseArray;->DELETED:Ljava/lang/Object;

    aput-object v1, v0, p1

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/common/LongSparseArray;->mGarbage:Z

    .line 121
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 208
    .local p0, this:Lcom/android/gallery3d/common/LongSparseArray;,"Lcom/android/gallery3d/common/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Lcom/android/gallery3d/common/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/android/gallery3d/common/LongSparseArray;->gc()V

    .line 212
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/common/LongSparseArray;->mSize:I

    return v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 235
    .local p0, this:Lcom/android/gallery3d/common/LongSparseArray;,"Lcom/android/gallery3d/common/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Lcom/android/gallery3d/common/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/android/gallery3d/common/LongSparseArray;->gc()V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/common/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
