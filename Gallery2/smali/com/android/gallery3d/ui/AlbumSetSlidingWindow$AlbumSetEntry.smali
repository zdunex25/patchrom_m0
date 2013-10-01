.class public Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
.super Ljava/lang/Object;
.source "AlbumSetSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumSetEntry"
.end annotation


# instance fields
.field public album:Lcom/android/gallery3d/data/MediaSet;

.field public bitmapTexture:Lcom/android/gallery3d/ui/TiledTexture;

.field public cacheFlag:I

.field public cacheStatus:I

.field public content:Lcom/android/gallery3d/ui/Texture;

.field public coverDataVersion:J

.field public coverItem:Lcom/android/gallery3d/data/MediaItem;

.field private coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;

.field public isWaitLoadingDisplayed:Z

.field private labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;

.field public labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

.field public rotation:I

.field public setDataVersion:J

.field public setPath:Lcom/android/gallery3d/data/Path;

.field public sourceType:I

.field public title:Ljava/lang/String;

.field public totalCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/android/gallery3d/ui/BitmapLoader;)Lcom/android/gallery3d/ui/BitmapLoader;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/android/gallery3d/ui/BitmapLoader;)Lcom/android/gallery3d/ui/BitmapLoader;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;

    return-object p1
.end method
