.class Lcom/android/gallery3d/app/AlbumSetPage$1;
.super Lcom/android/gallery3d/ui/GLView;
.source "AlbumSetPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumSetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mMatrix:[F

.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumSetPage;)V
    .locals 1
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 129
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->mMatrix:[F

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 134
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mEyePosition:Lcom/android/gallery3d/app/EyePosition;
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumSetPage;->access$000(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/EyePosition;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/app/EyePosition;->resetPosition()V

    .line 136
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumSetPage;->access$100(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/app/GalleryActionBar;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mConfig:Lcom/android/gallery3d/app/Config$AlbumSetPage;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumSetPage;->access$200(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/Config$AlbumSetPage;

    move-result-object v4

    iget v4, v4, Lcom/android/gallery3d/app/Config$AlbumSetPage;->paddingTop:I

    add-int v2, v3, v4

    .line 137
    .local v2, slotViewTop:I
    sub-int v3, p5, p3

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mConfig:Lcom/android/gallery3d/app/Config$AlbumSetPage;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumSetPage;->access$200(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/Config$AlbumSetPage;

    move-result-object v4

    iget v4, v4, Lcom/android/gallery3d/app/Config$AlbumSetPage;->paddingBottom:I

    sub-int v0, v3, v4

    .line 138
    .local v0, slotViewBottom:I
    sub-int v1, p4, p2

    .line 140
    .local v1, slotViewRight:I
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mShowDetails:Z
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumSetPage;->access$300(Lcom/android/gallery3d/app/AlbumSetPage;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumSetPage;->access$400(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/DetailsHelper;

    move-result-object v3

    invoke-virtual {v3, p2, v2, p4, p5}, Lcom/android/gallery3d/ui/DetailsHelper;->layout(IIII)V

    .line 146
    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumSetPage;->access$600(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/SlotView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2, v1, v0}, Lcom/android/gallery3d/ui/SlotView;->layout(IIII)V

    .line 147
    return-void

    .line 143
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumSetPage;->access$500(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setHighlightItemPath(Lcom/android/gallery3d/data/Path;)V

    goto :goto_0
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 151
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 152
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->mMatrix:[F

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumSetPage$1;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mX:F
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumSetPage;->access$700(Lcom/android/gallery3d/app/AlbumSetPage;)F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumSetPage$1;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mY:F
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumSetPage;->access$800(Lcom/android/gallery3d/app/AlbumSetPage;)F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mZ:F
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumSetPage;->access$900(Lcom/android/gallery3d/app/AlbumSetPage;)F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/util/GalleryUtils;->setViewPointMatrix([FFFF)V

    .line 154
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->mMatrix:[F

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyMatrix([FI)V

    .line 155
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/GLView;->render(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 156
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 157
    return-void
.end method
