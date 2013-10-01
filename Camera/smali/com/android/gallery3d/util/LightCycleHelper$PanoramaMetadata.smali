.class public Lcom/android/gallery3d/util/LightCycleHelper$PanoramaMetadata;
.super Ljava/lang/Object;
.source "LightCycleHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/util/LightCycleHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PanoramaMetadata"
.end annotation


# instance fields
.field public final mIsPanorama360:Z

.field public final mUsePanoramaViewer:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0
    .parameter "usePanoramaViewer"
    .parameter "isPanorama360"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean p1, p0, Lcom/android/gallery3d/util/LightCycleHelper$PanoramaMetadata;->mUsePanoramaViewer:Z

    .line 37
    iput-boolean p2, p0, Lcom/android/gallery3d/util/LightCycleHelper$PanoramaMetadata;->mIsPanorama360:Z

    .line 38
    return-void
.end method
