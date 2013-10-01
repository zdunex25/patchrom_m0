.class public Lcom/android/gallery3d/data/PanoramaMetadataJob;
.super Ljava/lang/Object;
.source "PanoramaMetadataJob.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Lcom/android/gallery3d/util/LightCycleHelper$PanoramaMetadata;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/gallery3d/data/PanoramaMetadataJob;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/android/gallery3d/data/PanoramaMetadataJob;->mUri:Landroid/net/Uri;

    .line 34
    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Lcom/android/gallery3d/util/LightCycleHelper$PanoramaMetadata;
    .locals 2
    .parameter "jc"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/data/PanoramaMetadataJob;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/data/PanoramaMetadataJob;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/LightCycleHelper;->getPanoramaMetadata(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/gallery3d/util/LightCycleHelper$PanoramaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/PanoramaMetadataJob;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Lcom/android/gallery3d/util/LightCycleHelper$PanoramaMetadata;

    move-result-object v0

    return-object v0
.end method
