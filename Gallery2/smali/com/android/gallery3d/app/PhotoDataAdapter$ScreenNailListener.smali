.class Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailListener;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcom/android/gallery3d/util/FutureListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenNailListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Lcom/android/gallery3d/util/FutureListener",
        "<",
        "Lcom/android/gallery3d/ui/ScreenNail;",
        ">;"
    }
.end annotation


# instance fields
.field private mFuture:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Lcom/android/gallery3d/ui/ScreenNail;",
            ">;"
        }
    .end annotation
.end field

.field private final mPath:Lcom/android/gallery3d/data/Path;

.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)V
    .locals 1
    .parameter
    .parameter "item"

    .prologue
    .line 880
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailListener;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 881
    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailListener;->mPath:Lcom/android/gallery3d/data/Path;

    .line 882
    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/android/gallery3d/util/Future;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Lcom/android/gallery3d/ui/ScreenNail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 886
    .local p1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Lcom/android/gallery3d/ui/ScreenNail;>;"
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailListener;->mFuture:Lcom/android/gallery3d/util/Future;

    .line 887
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailListener;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$700(Lcom/android/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailListener;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$700(Lcom/android/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 889
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 893
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailListener;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailListener;->mPath:Lcom/android/gallery3d/data/Path;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailListener;->mFuture:Lcom/android/gallery3d/util/Future;

    #calls: Lcom/android/gallery3d/app/PhotoDataAdapter;->updateScreenNail(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V
    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$900(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V

    .line 894
    return-void
.end method
