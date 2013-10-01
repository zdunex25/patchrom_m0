.class Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageEntry"
.end annotation


# instance fields
.field public failToLoad:Z

.field public fullImage:Landroid/graphics/BitmapRegionDecoder;

.field public fullImageTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end field

.field public requestedFullImage:J

.field public requestedScreenNail:J

.field public screenNail:Lcom/android/gallery3d/ui/ScreenNail;

.field public screenNailTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Lcom/android/gallery3d/ui/ScreenNail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 897
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 902
    iput-wide v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    .line 903
    iput-wide v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    .line 904
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/PhotoDataAdapter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 897
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;-><init>()V

    return-void
.end method
