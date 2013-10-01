.class public Lcom/android/gallery3d/util/RangeIntArray;
.super Ljava/lang/Object;
.source "RangeIntArray.java"


# instance fields
.field private mData:[I

.field private mOffset:I


# direct methods
.method public constructor <init>([III)V
    .locals 0
    .parameter "src"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/gallery3d/util/RangeIntArray;->mData:[I

    .line 32
    iput p2, p0, Lcom/android/gallery3d/util/RangeIntArray;->mOffset:I

    .line 33
    return-void
.end method


# virtual methods
.method public get(I)I
    .locals 2
    .parameter "i"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/gallery3d/util/RangeIntArray;->mData:[I

    iget v1, p0, Lcom/android/gallery3d/util/RangeIntArray;->mOffset:I

    sub-int v1, p1, v1

    aget v0, v0, v1

    return v0
.end method
