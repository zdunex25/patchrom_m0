.class Lcom/android/gallery3d/data/FilterDeleteSet$Request;
.super Ljava/lang/Object;
.source "FilterDeleteSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/FilterDeleteSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Request"
.end annotation


# instance fields
.field indexHint:I

.field path:Lcom/android/gallery3d/data/Path;

.field type:I


# direct methods
.method public constructor <init>(ILcom/android/gallery3d/data/Path;I)V
    .locals 0
    .parameter "type"
    .parameter "path"
    .parameter "indexHint"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/android/gallery3d/data/FilterDeleteSet$Request;->type:I

    .line 44
    iput-object p2, p0, Lcom/android/gallery3d/data/FilterDeleteSet$Request;->path:Lcom/android/gallery3d/data/Path;

    .line 45
    iput p3, p0, Lcom/android/gallery3d/data/FilterDeleteSet$Request;->indexHint:I

    .line 46
    return-void
.end method
