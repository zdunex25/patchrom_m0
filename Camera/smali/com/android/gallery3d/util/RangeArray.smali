.class public Lcom/android/gallery3d/util/RangeArray;
.super Ljava/lang/Object;
.source "RangeArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private mOffset:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "min"
    .parameter "max"

    .prologue
    .line 24
    .local p0, this:Lcom/android/gallery3d/util/RangeArray;,"Lcom/android/gallery3d/util/RangeArray<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/gallery3d/util/RangeArray;->mData:[Ljava/lang/Object;

    .line 26
    iput p1, p0, Lcom/android/gallery3d/util/RangeArray;->mOffset:I

    .line 27
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2
    .parameter "i"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, this:Lcom/android/gallery3d/util/RangeArray;,"Lcom/android/gallery3d/util/RangeArray<TT;>;"
    iget-object v0, p0, Lcom/android/gallery3d/util/RangeArray;->mData:[Ljava/lang/Object;

    iget v1, p0, Lcom/android/gallery3d/util/RangeArray;->mOffset:I

    sub-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 2
    .parameter "i"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, this:Lcom/android/gallery3d/util/RangeArray;,"Lcom/android/gallery3d/util/RangeArray<TT;>;"
    .local p2, object:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/android/gallery3d/util/RangeArray;->mData:[Ljava/lang/Object;

    iget v1, p0, Lcom/android/gallery3d/util/RangeArray;->mOffset:I

    sub-int v1, p1, v1

    aput-object p2, v0, v1

    .line 40
    return-void
.end method
