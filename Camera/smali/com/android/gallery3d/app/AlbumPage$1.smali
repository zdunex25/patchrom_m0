.class Lcom/android/gallery3d/app/AlbumPage$1;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumPage;
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
    .line 120
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$1;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemIndex(Lcom/android/gallery3d/data/Path;)I
    .locals 5
    .parameter "path"

    .prologue
    .line 132
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage$1;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumPage;->access$000(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/SlotView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView;->getVisibleStart()I

    move-result v3

    .line 133
    .local v3, start:I
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage$1;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumPage;->access$000(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/SlotView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView;->getVisibleEnd()I

    move-result v0

    .line 134
    .local v0, end:I
    move v1, v3

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 135
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage$1;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumPage;->access$100(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/app/AlbumDataLoader;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/gallery3d/app/AlbumDataLoader;->get(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v2

    .line 136
    .local v2, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 138
    .end local v1           #i:I
    .end local v2           #item:Lcom/android/gallery3d/data/MediaItem;
    :goto_1
    return v1

    .line 134
    .restart local v1       #i:I
    .restart local v2       #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    .end local v2           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getPosition(I)Landroid/graphics/Rect;
    .locals 5
    .parameter "index"

    .prologue
    .line 123
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$1;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumPage;->access$000(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/SlotView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/ui/SlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 124
    .local v1, rect:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$1;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumPage;->access$000(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/SlotView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SlotView;->bounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 125
    .local v0, bounds:Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$1;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumPage;->access$000(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/SlotView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/SlotView;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage$1;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumPage;->access$000(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/SlotView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 127
    return-object v1
.end method
