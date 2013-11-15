.class Lcom/android/gallery3d/ui/ActionModeHandler$2;
.super Ljava/lang/Object;
.source "ActionModeHandler.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/ActionModeHandler;->updateSupportedOperation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/ActionModeHandler;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/ActionModeHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/ActionModeHandler$2;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 10
    .parameter "jc"

    .prologue
    const/4 v9, 0x0

    .line 409
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    #calls: Lcom/android/gallery3d/ui/ActionModeHandler;->getSelectedMediaObjects(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;
    invoke-static {v0, p1}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$100(Lcom/android/gallery3d/ui/ActionModeHandler;Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;

    move-result-object v7

    .line 410
    .local v7, selected:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaObject;>;"
    if-nez v7, :cond_1

    .line 456
    :cond_0
    :goto_0
    return-object v9

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    #calls: Lcom/android/gallery3d/ui/ActionModeHandler;->computeMenuOptions(Ljava/util/ArrayList;)I
    invoke-static {v0, v7}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$200(Lcom/android/gallery3d/ui/ActionModeHandler;Ljava/util/ArrayList;)I

    move-result v3

    .line 414
    .local v3, operation:I
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    new-instance v4, Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;

    invoke-direct {v4, v7, p1}, Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;-><init>(Ljava/util/ArrayList;Lcom/android/gallery3d/util/ThreadPool$JobContext;)V

    .line 421
    .local v4, supportCallback:Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    #calls: Lcom/android/gallery3d/ui/ActionModeHandler;->computePanoramaSharingIntent(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/content/Intent;
    invoke-static {v0, p1}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$300(Lcom/android/gallery3d/ui/ActionModeHandler;Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/content/Intent;

    move-result-object v5

    .line 422
    .local v5, share_panorama_intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    #calls: Lcom/android/gallery3d/ui/ActionModeHandler;->computeSharingIntent(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/content/Intent;
    invoke-static {v0, p1}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$400(Lcom/android/gallery3d/ui/ActionModeHandler;Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/content/Intent;

    move-result-object v6

    .line 424
    .local v6, share_intent:Landroid/content/Intent;
    invoke-virtual {v4}, Lcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;->waitForPanoramaSupport()V

    .line 425
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    #getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$1200(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/os/Handler;

    move-result-object v8

    new-instance v0, Lcom/android/gallery3d/ui/ActionModeHandler$2$1;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/ui/ActionModeHandler$2$1;-><init>(Lcom/android/gallery3d/ui/ActionModeHandler$2;Lcom/android/gallery3d/util/ThreadPool$JobContext;ILcom/android/gallery3d/ui/ActionModeHandler$GetAllPanoramaSupports;Landroid/content/Intent;Landroid/content/Intent;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
