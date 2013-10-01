.class public Landroid/os/WorkSource;
.super Ljava/lang/Object;
.source "WorkSource.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/WorkSource;",
            ">;"
        }
    .end annotation
.end field

.field static sGoneWork:Landroid/os/WorkSource;

.field static sNewbWork:Landroid/os/WorkSource;

.field static final sTmpWorkSource:Landroid/os/WorkSource;


# instance fields
.field mNum:I

.field mUids:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Landroid/os/WorkSource;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/WorkSource;-><init>(I)V

    sput-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    .line 334
    new-instance v0, Landroid/os/WorkSource$1;

    invoke-direct {v0}, Landroid/os/WorkSource$1;-><init>()V

    sput-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter "uid"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput v2, p0, Landroid/os/WorkSource;->mNum:I

    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput p1, v0, v1

    aput v1, v0, v2

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 59
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/os/WorkSource;)V
    .locals 1
    .parameter "orig"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-nez p1, :cond_0

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 53
    :goto_0
    return-void

    .line 47
    :cond_0
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 48
    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    goto :goto_0

    .line 51
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    goto :goto_0
.end method

.method private addLocked(I)V
    .locals 4
    .parameter "uid"

    .prologue
    const/4 v3, 0x0

    .line 293
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    if-nez v1, :cond_0

    .line 294
    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 295
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    aput p1, v1, v3

    .line 296
    const/4 v1, 0x1

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    .line 307
    :goto_0
    return-void

    .line 299
    :cond_0
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 300
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    .line 301
    .local v0, newuids:[I
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 305
    .end local v0           #newuids:[I
    :cond_1
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    aput p1, v1, v2

    .line 306
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    goto :goto_0
.end method

.method private updateLocked(Landroid/os/WorkSource;ZZ)Z
    .locals 12
    .parameter "other"
    .parameter "set"
    .parameter "returnNewbs"

    .prologue
    const/4 v11, 0x0

    .line 224
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 225
    .local v0, N1:I
    iget-object v7, p0, Landroid/os/WorkSource;->mUids:[I

    .line 226
    .local v7, uids1:[I
    iget v1, p1, Landroid/os/WorkSource;->mNum:I

    .line 227
    .local v1, N2:I
    iget-object v8, p1, Landroid/os/WorkSource;->mUids:[I

    .line 228
    .local v8, uids2:[I
    const/4 v2, 0x0

    .line 229
    .local v2, changed:Z
    const/4 v3, 0x0

    .line 230
    .local v3, i1:I
    const/4 v4, 0x0

    .local v4, i2:I
    :goto_0
    if-ge v4, v1, :cond_f

    .line 231
    if-ge v3, v0, :cond_0

    aget v9, v8, v4

    aget v10, v7, v3

    if-ge v9, v10, :cond_9

    .line 233
    :cond_0
    const/4 v2, 0x1

    .line 234
    if-nez v7, :cond_3

    .line 235
    const/4 v9, 0x4

    new-array v7, v9, [I

    .line 236
    aget v9, v8, v4

    aput v9, v7, v11

    .line 247
    :goto_1
    if-eqz p3, :cond_1

    .line 248
    sget-object v9, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    if-nez v9, :cond_8

    .line 249
    new-instance v9, Landroid/os/WorkSource;

    aget v10, v8, v4

    invoke-direct {v9, v10}, Landroid/os/WorkSource;-><init>(I)V

    sput-object v9, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 254
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 255
    add-int/lit8 v3, v3, 0x1

    .line 230
    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 237
    :cond_3
    array-length v9, v7

    if-lt v3, v9, :cond_6

    .line 238
    array-length v9, v7

    mul-int/lit8 v9, v9, 0x3

    div-int/lit8 v9, v9, 0x2

    new-array v5, v9, [I

    .line 239
    .local v5, newuids:[I
    if-lez v3, :cond_4

    invoke-static {v7, v11, v5, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    :cond_4
    if-ge v3, v0, :cond_5

    add-int/lit8 v9, v3, 0x1

    sub-int v10, v0, v3

    invoke-static {v7, v3, v5, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    :cond_5
    move-object v7, v5

    .line 242
    aget v9, v8, v4

    aput v9, v7, v3

    goto :goto_1

    .line 244
    .end local v5           #newuids:[I
    :cond_6
    if-ge v3, v0, :cond_7

    add-int/lit8 v9, v3, 0x1

    sub-int v10, v0, v3

    invoke-static {v7, v3, v7, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    :cond_7
    aget v9, v8, v4

    aput v9, v7, v3

    goto :goto_1

    .line 251
    :cond_8
    sget-object v9, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    aget v10, v8, v4

    invoke-direct {v9, v10}, Landroid/os/WorkSource;->addLocked(I)V

    goto :goto_2

    .line 257
    :cond_9
    if-nez p2, :cond_b

    .line 260
    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 261
    if-ge v3, v0, :cond_2

    aget v9, v8, v4

    aget v10, v7, v3

    if-ge v9, v10, :cond_a

    goto :goto_3

    .line 264
    :cond_b
    move v6, v3

    .line 265
    .local v6, start:I
    :goto_4
    if-ge v3, v0, :cond_d

    aget v9, v8, v4

    aget v10, v7, v3

    if-le v9, v10, :cond_d

    .line 266
    sget-object v9, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    if-nez v9, :cond_c

    .line 267
    new-instance v9, Landroid/os/WorkSource;

    aget v10, v7, v3

    invoke-direct {v9, v10}, Landroid/os/WorkSource;-><init>(I)V

    sput-object v9, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    .line 271
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 269
    :cond_c
    sget-object v9, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    aget v10, v7, v3

    invoke-direct {v9, v10}, Landroid/os/WorkSource;->addLocked(I)V

    goto :goto_5

    .line 273
    :cond_d
    if-ge v6, v3, :cond_e

    .line 274
    sub-int v9, v3, v6

    invoke-static {v7, v3, v7, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 275
    sub-int v9, v3, v6

    sub-int/2addr v0, v9

    .line 276
    move v3, v6

    .line 279
    :cond_e
    if-ge v3, v0, :cond_2

    aget v9, v8, v3

    aget v10, v7, v3

    if-ne v9, v10, :cond_2

    .line 280
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 286
    .end local v6           #start:I
    :cond_f
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 287
    iput-object v7, p0, Landroid/os/WorkSource;->mUids:[I

    .line 289
    return v2
.end method


# virtual methods
.method public add(I)Z
    .locals 4
    .parameter "uid"

    .prologue
    .line 185
    sget-object v1, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v1

    .line 186
    :try_start_0
    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    iget-object v0, v0, Landroid/os/WorkSource;->mUids:[I

    const/4 v2, 0x0

    aput p1, v0, v2

    .line 187
    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public add(Landroid/os/WorkSource;)Z
    .locals 3
    .parameter "other"

    .prologue
    .line 169
    sget-object v1, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v1

    .line 170
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0, v2}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addReturningNewbs(I)Landroid/os/WorkSource;
    .locals 4
    .parameter "uid"

    .prologue
    .line 193
    sget-object v1, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v1

    .line 194
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 195
    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    iget-object v0, v0, Landroid/os/WorkSource;->mUids:[I

    const/4 v2, 0x0

    aput p1, v0, v2

    .line 196
    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    .line 197
    sget-object v0, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    monitor-exit v1

    return-object v0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addReturningNewbs(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 3
    .parameter "other"

    .prologue
    .line 176
    sget-object v1, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v1

    .line 177
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 178
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v2}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    .line 179
    sget-object v0, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    monitor-exit v1

    return-object v0

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 81
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method public diff(Landroid/os/WorkSource;)Z
    .locals 7
    .parameter "other"

    .prologue
    const/4 v4, 0x1

    .line 103
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 104
    .local v0, N:I
    iget v5, p1, Landroid/os/WorkSource;->mNum:I

    if-eq v0, v5, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v4

    .line 107
    :cond_1
    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    .line 108
    .local v2, uids1:[I
    iget-object v3, p1, Landroid/os/WorkSource;->mUids:[I

    .line 109
    .local v3, uids2:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 110
    aget v5, v2, v1

    aget v6, v3, v1

    if-ne v5, v6, :cond_0

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 114
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 85
    instance-of v0, p1, Landroid/os/WorkSource;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/os/WorkSource;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 73
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aget v0, v0, p1

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 90
    const/4 v1, 0x0

    .line 91
    .local v1, result:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v0, v2, :cond_0

    .line 92
    shl-int/lit8 v2, v1, 0x4

    ushr-int/lit8 v3, v1, 0x1c

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    aget v3, v3, v0

    xor-int v1, v2, v3

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    return v1
.end method

.method public remove(Landroid/os/WorkSource;)Z
    .locals 9
    .parameter "other"

    .prologue
    .line 202
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 203
    .local v0, N1:I
    iget-object v5, p0, Landroid/os/WorkSource;->mUids:[I

    .line 204
    .local v5, uids1:[I
    iget v1, p1, Landroid/os/WorkSource;->mNum:I

    .line 205
    .local v1, N2:I
    iget-object v6, p1, Landroid/os/WorkSource;->mUids:[I

    .line 206
    .local v6, uids2:[I
    const/4 v2, 0x0

    .line 207
    .local v2, changed:Z
    const/4 v3, 0x0

    .line 208
    .local v3, i1:I
    const/4 v4, 0x0

    .local v4, i2:I
    :goto_0
    if-ge v4, v1, :cond_2

    if-ge v3, v0, :cond_2

    .line 209
    aget v7, v6, v4

    aget v8, v5, v3

    if-ne v7, v8, :cond_0

    .line 210
    add-int/lit8 v0, v0, -0x1

    .line 211
    if-ge v3, v0, :cond_0

    add-int/lit8 v7, v3, 0x1

    sub-int v8, v0, v3

    invoke-static {v5, v7, v5, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    :cond_0
    :goto_1
    if-ge v3, v0, :cond_1

    aget v7, v6, v4

    aget v8, v5, v3

    if-le v7, v8, :cond_1

    .line 214
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 208
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 218
    :cond_2
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 220
    return v2
.end method

.method public set(I)V
    .locals 2
    .parameter "uid"

    .prologue
    .line 141
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 142
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 143
    :cond_0
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 144
    return-void
.end method

.method public set(Landroid/os/WorkSource;)V
    .locals 4
    .parameter "other"

    .prologue
    const/4 v3, 0x0

    .line 123
    if-nez p1, :cond_0

    .line 124
    iput v3, p0, Landroid/os/WorkSource;->mNum:I

    .line 137
    :goto_0
    return-void

    .line 127
    :cond_0
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 128
    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    array-length v0, v0

    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    if-lt v0, v1, :cond_1

    .line 130
    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 132
    :cond_1
    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    goto :goto_0

    .line 135
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    goto :goto_0
.end method

.method public setReturningDiffs(Landroid/os/WorkSource;)[Landroid/os/WorkSource;
    .locals 4
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 148
    sget-object v2, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v2

    .line 149
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 150
    const/4 v1, 0x0

    sput-object v1, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    .line 151
    const/4 v1, 0x1

    const/4 v3, 0x1

    invoke-direct {p0, p1, v1, v3}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    .line 152
    sget-object v1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    if-eqz v1, :cond_1

    .line 153
    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/os/WorkSource;

    .line 154
    .local v0, diffs:[Landroid/os/WorkSource;
    const/4 v1, 0x0

    sget-object v3, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    aput-object v3, v0, v1

    .line 155
    const/4 v1, 0x1

    sget-object v3, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    aput-object v3, v0, v1

    .line 156
    monitor-exit v2

    .line 158
    .end local v0           #diffs:[Landroid/os/WorkSource;
    :goto_0
    return-object v0

    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    .local v1, result:Ljava/lang/StringBuilder;
    const-string/jumbo v2, "{WorkSource: uids=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v0, v2, :cond_1

    .line 325
    if-eqz v0, :cond_0

    .line 326
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    :cond_0
    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 324
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    :cond_1
    const-string v2, "]}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 316
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 318
    return-void
.end method
