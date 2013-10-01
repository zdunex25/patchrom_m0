.class public Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
.super Ljava/lang/Object;
.source "AlbumSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/AlbumSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumEntry"
.end annotation


# instance fields
.field public bitmapTexture:Lcom/android/gallery3d/ui/TiledTexture;

.field public content:Lcom/android/gallery3d/ui/Texture;

.field private contentLoader:Lcom/android/gallery3d/ui/BitmapLoader;

.field public isPanorama:Z

.field public isWaitDisplayed:Z

.field public item:Lcom/android/gallery3d/data/MediaItem;

.field private mPanoSupportListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;

.field public mediaType:I

.field public path:Lcom/android/gallery3d/data/Path;

.field public rotation:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/android/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->mPanoSupportListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;Lcom/android/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;)Lcom/android/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->mPanoSupportListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/android/gallery3d/ui/BitmapLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/android/gallery3d/ui/BitmapLoader;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;Lcom/android/gallery3d/ui/BitmapLoader;)Lcom/android/gallery3d/ui/BitmapLoader;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/android/gallery3d/ui/BitmapLoader;

    return-object p1
.end method
