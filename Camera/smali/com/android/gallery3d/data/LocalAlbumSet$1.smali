.class Lcom/android/gallery3d/data/LocalAlbumSet$1;
.super Ljava/lang/Object;
.source "LocalAlbumSet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/data/LocalAlbumSet;->onFutureDone(Lcom/android/gallery3d/util/Future;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/data/LocalAlbumSet;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/data/LocalAlbumSet;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/gallery3d/data/LocalAlbumSet$1;->this$0:Lcom/android/gallery3d/data/LocalAlbumSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet$1;->this$0:Lcom/android/gallery3d/data/LocalAlbumSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/LocalAlbumSet;->notifyContentChanged()V

    .line 193
    return-void
.end method
