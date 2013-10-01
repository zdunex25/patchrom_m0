.class final Lcom/android/gallery3d/data/BucketHelper$1;
.super Ljava/lang/Object;
.source "BucketHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/data/BucketHelper;->loadBucketEntriesFromImagesAndVideoTable(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/ContentResolver;I)[Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/gallery3d/data/BucketHelper$BucketEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/gallery3d/data/BucketHelper$BucketEntry;Lcom/android/gallery3d/data/BucketHelper$BucketEntry;)I
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 139
    iget v0, p2, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;->dateTaken:I

    iget v1, p1, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;->dateTaken:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    check-cast p1, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    .end local p1
    check-cast p2, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/data/BucketHelper$1;->compare(Lcom/android/gallery3d/data/BucketHelper$BucketEntry;Lcom/android/gallery3d/data/BucketHelper$BucketEntry;)I

    move-result v0

    return v0
.end method
