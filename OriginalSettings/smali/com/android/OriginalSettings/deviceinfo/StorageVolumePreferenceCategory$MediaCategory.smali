.class Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;
.super Ljava/lang/Object;
.source "StorageVolumePreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaCategory"
.end annotation


# instance fields
.field final mCategory:I

.field final mDirPaths:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(I[Ljava/lang/String;)V
    .locals 5
    .parameter "category"
    .parameter "directories"

    .prologue
    .line 116
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput p1, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;->mCategory:I

    .line 118
    array-length v1, p2

    .line 119
    .local v1, length:I
    new-array v4, v1, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;->mDirPaths:[Ljava/lang/String;

    .line 120
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 121
    aget-object v2, p2, v0

    .line 122
    .local v2, name:Ljava/lang/String;
    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, path:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;->mDirPaths:[Ljava/lang/String;

    aput-object v3, v4, v0

    .line 125
    sget-object v4, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->sPathsExcludedForMisc:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #path:Ljava/lang/String;
    :cond_0
    return-void
.end method
