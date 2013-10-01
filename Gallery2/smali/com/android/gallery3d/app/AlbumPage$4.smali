.class Lcom/android/gallery3d/app/AlbumPage$4;
.super Lcom/android/gallery3d/ui/SlotView$SimpleListener;
.source "AlbumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumPage;->initializeViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumPage;)V
    .locals 0
    .parameter

    .prologue
    .line 479
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$4;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$4;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #calls: Lcom/android/gallery3d/app/AlbumPage;->onDown(I)V
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/AlbumPage;->access$1000(Lcom/android/gallery3d/app/AlbumPage;I)V

    .line 483
    return-void
.end method

.method public onLongTap(I)V
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$4;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/AlbumPage;->onLongTap(I)V

    .line 498
    return-void
.end method

.method public onSingleTapUp(I)V
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$4;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #calls: Lcom/android/gallery3d/app/AlbumPage;->onSingleTapUp(I)V
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/AlbumPage;->access$1200(Lcom/android/gallery3d/app/AlbumPage;I)V

    .line 493
    return-void
.end method

.method public onUp(Z)V
    .locals 1
    .parameter "followedByLongPress"

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$4;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #calls: Lcom/android/gallery3d/app/AlbumPage;->onUp(Z)V
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/AlbumPage;->access$1100(Lcom/android/gallery3d/app/AlbumPage;Z)V

    .line 488
    return-void
.end method
