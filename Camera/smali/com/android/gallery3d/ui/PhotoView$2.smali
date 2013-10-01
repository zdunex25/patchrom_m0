.class Lcom/android/gallery3d/ui/PhotoView$2;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/android/gallery3d/ui/PositionController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/PhotoView;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/PhotoView;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/PhotoView;)V
    .locals 0
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView$2;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$2;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->invalidate()V

    .line 272
    return-void
.end method

.method public isHoldingDelete()Z
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$2;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mHolding:I
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$300(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHoldingDown()Z
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$2;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mHolding:I
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$300(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAbsorb(II)V
    .locals 1
    .parameter "velocity"
    .parameter "direction"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$2;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mEdgeView:Lcom/android/gallery3d/ui/EdgeView;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$400(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/EdgeView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/EdgeView;->onAbsorb(II)V

    .line 297
    return-void
.end method

.method public onPull(II)V
    .locals 1
    .parameter "offset"
    .parameter "direction"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$2;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mEdgeView:Lcom/android/gallery3d/ui/EdgeView;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$400(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/EdgeView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/EdgeView;->onPull(II)V

    .line 287
    return-void
.end method
