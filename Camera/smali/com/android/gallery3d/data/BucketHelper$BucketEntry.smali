.class public Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
.super Ljava/lang/Object;
.source "BucketHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/BucketHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BucketEntry"
.end annotation


# instance fields
.field public bucketId:I

.field public bucketName:Ljava/lang/String;

.field public dateTaken:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "name"

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput p1, p0, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;->bucketId:I

    .line 226
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    .line 227
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"

    .prologue
    const/4 v1, 0x0

    .line 236
    instance-of v2, p1, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    if-nez v2, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 237
    check-cast v0, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    .line 238
    .local v0, entry:Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    iget v2, p0, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;->bucketId:I

    iget v3, v0, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;->bucketId:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;->bucketId:I

    return v0
.end method
