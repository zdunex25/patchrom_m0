.class Lcom/android/gallery3d/app/AlbumPage$2;
.super Lcom/android/gallery3d/ui/GLView;
.source "AlbumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mMatrix:[F

.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumPage;)V
    .locals 1
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 148
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$2;->mMatrix:[F

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v5, 0x0

    .line 154
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v3, v3, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/app/GalleryActionBar;->getHeight()I

    move-result v2

    .line 155
    .local v2, slotViewTop:I
    sub-int v0, p5, p3

    .line 156
    .local v0, slotViewBottom:I
    sub-int v1, p4, p2

    .line 158
    .local v1, slotViewRight:I
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mShowDetails:Z
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumPage;->access$200(Lcom/android/gallery3d/app/AlbumPage;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumPage;->access$300(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/DetailsHelper;

    move-result-object v3

    invoke-virtual {v3, p2, v2, p4, p5}, Lcom/android/gallery3d/ui/DetailsHelper;->layout(IIII)V

    .line 165
    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mOpenCenter:Lcom/android/gallery3d/ui/RelativePosition;
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumPage;->access$500(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/RelativePosition;

    move-result-object v3

    invoke-virtual {v3, v5, v2}, Lcom/android/gallery3d/ui/RelativePosition;->setReferencePosition(II)V

    .line 166
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumPage;->access$000(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/SlotView;

    move-result-object v3

    invoke-virtual {v3, v5, v2, v1, v0}, Lcom/android/gallery3d/ui/SlotView;->layout(IIII)V

    .line 167
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$2;->mMatrix:[F

    sub-int v4, p4, p2

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-int v5, p5, p3

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mUserDistance:F
    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumPage;->access$600(Lcom/android/gallery3d/app/AlbumPage;)F

    move-result v6

    neg-float v6, v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/gallery3d/util/GalleryUtils;->setViewPointMatrix([FFFF)V

    .line 169
    return-void

    .line 161
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumPage;->access$400(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setHighlightItemPath(Lcom/android/gallery3d/data/Path;)V

    goto :goto_0
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 173
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 174
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$2;->mMatrix:[F

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyMatrix([FI)V

    .line 175
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/GLView;->render(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 177
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumPage;->access$700(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 178
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumPage;->access$700(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->draw(Lcom/android/gallery3d/ui/GLCanvas;)Z

    move-result v0

    .line 179
    .local v0, more:Z
    if-nez v0, :cond_0

    .line 180
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #setter for: Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    invoke-static {v1, v3}, Lcom/android/gallery3d/app/AlbumPage;->access$702(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/ui/PhotoFallbackEffect;)Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    .line 181
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumPage;->access$400(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setSlotFilter(Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;)V

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumPage$2;->invalidate()V

    .line 188
    .end local v0           #more:Z
    :cond_1
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 189
    return-void
.end method
