.class Lcom/android/gallery3d/app/AlbumDataLoader$MySourceListener;
.super Ljava/lang/Object;
.source "AlbumDataLoader.java"

# interfaces
.implements Lcom/android/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySourceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumDataLoader;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/AlbumDataLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumDataLoader$MySourceListener;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/AlbumDataLoader;Lcom/android/gallery3d/app/AlbumDataLoader$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumDataLoader$MySourceListener;-><init>(Lcom/android/gallery3d/app/AlbumDataLoader;)V

    return-void
.end method


# virtual methods
.method public onContentDirty()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader$MySourceListener;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mReloadTask:Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$400(Lcom/android/gallery3d/app/AlbumDataLoader;)Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader$MySourceListener;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mReloadTask:Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$400(Lcom/android/gallery3d/app/AlbumDataLoader;)Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->notifyDirty()V

    .line 212
    :cond_0
    return-void
.end method
