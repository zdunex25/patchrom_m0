.class Lcom/android/gallery3d/gadget/LocalPhotoSource$1;
.super Landroid/database/ContentObserver;
.source "LocalPhotoSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/gadget/LocalPhotoSource;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/gadget/LocalPhotoSource;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/gadget/LocalPhotoSource;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/gallery3d/gadget/LocalPhotoSource$1;->this$0:Lcom/android/gallery3d/gadget/LocalPhotoSource;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/gadget/LocalPhotoSource$1;->this$0:Lcom/android/gallery3d/gadget/LocalPhotoSource;

    const/4 v1, 0x1

    #setter for: Lcom/android/gallery3d/gadget/LocalPhotoSource;->mContentDirty:Z
    invoke-static {v0, v1}, Lcom/android/gallery3d/gadget/LocalPhotoSource;->access$002(Lcom/android/gallery3d/gadget/LocalPhotoSource;Z)Z

    .line 74
    iget-object v0, p0, Lcom/android/gallery3d/gadget/LocalPhotoSource$1;->this$0:Lcom/android/gallery3d/gadget/LocalPhotoSource;

    #getter for: Lcom/android/gallery3d/gadget/LocalPhotoSource;->mContentListener:Lcom/android/gallery3d/data/ContentListener;
    invoke-static {v0}, Lcom/android/gallery3d/gadget/LocalPhotoSource;->access$100(Lcom/android/gallery3d/gadget/LocalPhotoSource;)Lcom/android/gallery3d/data/ContentListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/gadget/LocalPhotoSource$1;->this$0:Lcom/android/gallery3d/gadget/LocalPhotoSource;

    #getter for: Lcom/android/gallery3d/gadget/LocalPhotoSource;->mContentListener:Lcom/android/gallery3d/data/ContentListener;
    invoke-static {v0}, Lcom/android/gallery3d/gadget/LocalPhotoSource;->access$100(Lcom/android/gallery3d/gadget/LocalPhotoSource;)Lcom/android/gallery3d/data/ContentListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/data/ContentListener;->onContentDirty()V

    .line 75
    :cond_0
    return-void
.end method
