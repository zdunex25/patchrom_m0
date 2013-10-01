.class Lcom/android/gallery3d/data/LocationClustering$SmallItem;
.super Ljava/lang/Object;
.source "LocationClustering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/LocationClustering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmallItem"
.end annotation


# instance fields
.field lat:D

.field lng:D

.field path:Lcom/android/gallery3d/data/Path;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/data/LocationClustering$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/gallery3d/data/LocationClustering$SmallItem;-><init>()V

    return-void
.end method
