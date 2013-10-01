.class public final Lcom/android/gallery3d/data/DataSourceType;
.super Ljava/lang/Object;
.source "DataSourceType.java"


# static fields
.field private static final LOCAL_ROOT:Lcom/android/gallery3d/data/Path;

.field private static final MTP_ROOT:Lcom/android/gallery3d/data/Path;

.field private static final PICASA_ROOT:Lcom/android/gallery3d/data/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "/picasa"

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/DataSourceType;->PICASA_ROOT:Lcom/android/gallery3d/data/Path;

    .line 29
    const-string v0, "/local"

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/DataSourceType;->LOCAL_ROOT:Lcom/android/gallery3d/data/Path;

    .line 30
    const-string v0, "/mtp"

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/DataSourceType;->MTP_ROOT:Lcom/android/gallery3d/data/Path;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static identifySourceType(Lcom/android/gallery3d/data/MediaSet;)I
    .locals 4
    .parameter "set"

    .prologue
    const/4 v2, 0x0

    .line 33
    if-nez p0, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v2

    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 38
    .local v0, path:Lcom/android/gallery3d/data/Path;
    invoke-static {v0}, Lcom/android/gallery3d/util/MediaSetUtils;->isCameraSource(Lcom/android/gallery3d/data/Path;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x4

    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {v0}, Lcom/android/gallery3d/data/Path;->getPrefixPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    .line 42
    .local v1, prefix:Lcom/android/gallery3d/data/Path;
    sget-object v3, Lcom/android/gallery3d/data/DataSourceType;->PICASA_ROOT:Lcom/android/gallery3d/data/Path;

    if-ne v1, v3, :cond_3

    const/4 v2, 0x2

    goto :goto_0

    .line 43
    :cond_3
    sget-object v3, Lcom/android/gallery3d/data/DataSourceType;->MTP_ROOT:Lcom/android/gallery3d/data/Path;

    if-ne v1, v3, :cond_4

    const/4 v2, 0x3

    goto :goto_0

    .line 44
    :cond_4
    sget-object v3, Lcom/android/gallery3d/data/DataSourceType;->LOCAL_ROOT:Lcom/android/gallery3d/data/Path;

    if-ne v1, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method
