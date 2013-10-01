.class Lcom/android/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;
.super Ljava/lang/Object;
.source "AlbumSlidingWindow.java"

# interfaces
.implements Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/AlbumSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanoSupportListener"
.end annotation


# instance fields
.field public final mEntry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

.field final synthetic this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/AlbumSlidingWindow;Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)V
    .locals 0
    .parameter
    .parameter "entry"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;->mEntry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    .line 82
    return-void
.end method


# virtual methods
.method public panoramaInfoAvailable(Lcom/android/gallery3d/data/MediaObject;ZZ)V
    .locals 1
    .parameter "mediaObject"
    .parameter "isPanorama"
    .parameter "isPanorama360"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;->mEntry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;->mEntry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iput-boolean p2, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isPanorama:Z

    .line 87
    :cond_0
    return-void
.end method
