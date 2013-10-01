.class public Lcom/android/gallery3d/data/MediaSource$PathId;
.super Ljava/lang/Object;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/MediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathId"
.end annotation


# instance fields
.field public id:I

.field public path:Lcom/android/gallery3d/data/Path;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;I)V
    .locals 0
    .parameter "path"
    .parameter "id"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/gallery3d/data/MediaSource$PathId;->path:Lcom/android/gallery3d/data/Path;

    .line 64
    iput p2, p0, Lcom/android/gallery3d/data/MediaSource$PathId;->id:I

    .line 65
    return-void
.end method
