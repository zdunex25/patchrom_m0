.class Lcom/android/gallery3d/app/GalleryActionBar$1;
.super Ljava/lang/Object;
.source "GalleryActionBar.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/GalleryActionBar;->showClusterDialog(Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/GalleryActionBar;

.field final synthetic val$actions:Ljava/util/ArrayList;

.field final synthetic val$clusterRunner:Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/GalleryActionBar;Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/gallery3d/app/GalleryActionBar$1;->this$0:Lcom/android/gallery3d/app/GalleryActionBar;

    iput-object p2, p0, Lcom/android/gallery3d/app/GalleryActionBar$1;->val$clusterRunner:Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;

    iput-object p3, p0, Lcom/android/gallery3d/app/GalleryActionBar$1;->val$actions:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar$1;->this$0:Lcom/android/gallery3d/app/GalleryActionBar;

    #getter for: Lcom/android/gallery3d/app/GalleryActionBar;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/android/gallery3d/app/GalleryActionBar;->access$600(Lcom/android/gallery3d/app/GalleryActionBar;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 304
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar$1;->val$clusterRunner:Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar$1;->val$actions:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;->doCluster(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar$1;->this$0:Lcom/android/gallery3d/app/GalleryActionBar;

    #getter for: Lcom/android/gallery3d/app/GalleryActionBar;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/android/gallery3d/app/GalleryActionBar;->access$600(Lcom/android/gallery3d/app/GalleryActionBar;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 308
    return-void

    .line 306
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar$1;->this$0:Lcom/android/gallery3d/app/GalleryActionBar;

    #getter for: Lcom/android/gallery3d/app/GalleryActionBar;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/android/gallery3d/app/GalleryActionBar;->access$600(Lcom/android/gallery3d/app/GalleryActionBar;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v0
.end method
