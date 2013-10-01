.class public Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;
.super Ljava/lang/Object;
.source "BytesBufferPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/BytesBufferPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BytesBuffer"
.end annotation


# instance fields
.field public data:[B

.field public length:I

.field public offset:I


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .parameter "capacity"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    .line 37
    return-void
.end method

.method synthetic constructor <init>(ILcom/android/gallery3d/data/BytesBufferPool$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;-><init>(I)V

    return-void
.end method
