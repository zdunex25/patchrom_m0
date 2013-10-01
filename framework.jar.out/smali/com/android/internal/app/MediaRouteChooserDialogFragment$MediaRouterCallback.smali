.class Lcom/android/internal/app/MediaRouteChooserDialogFragment$MediaRouterCallback;
.super Landroid/media/MediaRouter$Callback;
.source "MediaRouteChooserDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MediaRouteChooserDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaRouterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 584
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    invoke-direct {p0}, Landroid/media/MediaRouter$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .parameter "router"
    .parameter "info"

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mAdapter:Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;
    invoke-static {v0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->access$700(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->update()V

    .line 599
    return-void
.end method

.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .parameter "router"
    .parameter "info"

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mAdapter:Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;
    invoke-static {v0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->access$700(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->notifyDataSetChanged()V

    .line 612
    return-void
.end method

.method public onRouteGrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V
    .locals 1
    .parameter "router"
    .parameter "info"
    .parameter "group"
    .parameter "index"

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mAdapter:Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;
    invoke-static {v0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->access$700(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->update()V

    .line 618
    return-void
.end method

.method public onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .parameter "router"
    .parameter "info"

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mAdapter:Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;
    invoke-static {v0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->access$700(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;

    move-result-object v0

    #getter for: Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mEditingGroup:Landroid/media/MediaRouter$RouteGroup;
    invoke-static {v0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->access$500(Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;)Landroid/media/MediaRouter$RouteGroup;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mAdapter:Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;
    invoke-static {v0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->access$700(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->finishGrouping()V

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mAdapter:Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;
    invoke-static {v0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->access$700(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->update()V

    .line 607
    return-void
.end method

.method public onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .parameter "router"
    .parameter "type"
    .parameter "info"

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mAdapter:Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;
    invoke-static {v0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->access$700(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->update()V

    .line 588
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->updateVolume()V

    .line 589
    return-void
.end method

.method public onRouteUngrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V
    .locals 1
    .parameter "router"
    .parameter "info"
    .parameter "group"

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mAdapter:Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;
    invoke-static {v0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->access$700(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->update()V

    .line 623
    return-void
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .parameter "router"
    .parameter "type"
    .parameter "info"

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mAdapter:Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;
    invoke-static {v0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->access$700(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->update()V

    .line 594
    return-void
.end method

.method public onRouteVolumeChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .parameter "router"
    .parameter "info"

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mIgnoreCallbackVolumeChanges:Z
    invoke-static {v0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->access$800(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->updateVolume()V

    .line 630
    :cond_0
    return-void
.end method
