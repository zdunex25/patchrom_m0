.class Lcom/android/gallery3d/filtershow/cache/ImageLoader$2;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/cache/ImageLoader;->saveImage(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Lcom/android/gallery3d/filtershow/FilterShowActivity;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

.field final synthetic val$filterShowActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/cache/ImageLoader;Lcom/android/gallery3d/filtershow/FilterShowActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader$2;->this$0:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader$2;->val$filterShowActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/net/Uri;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader$2;->val$filterShowActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->completeSaveImage(Landroid/net/Uri;)V

    .line 413
    return-void
.end method
