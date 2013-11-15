.class Lcom/android/gallery3d/app/ManageCachePage$1;
.super Lcom/android/gallery3d/ui/GLView;
.source "ManageCachePage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/ManageCachePage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mMatrix:[F

.field final synthetic this$0:Lcom/android/gallery3d/app/ManageCachePage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/ManageCachePage;)V
    .locals 1
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/gallery3d/app/ManageCachePage$1;->this$0:Lcom/android/gallery3d/app/ManageCachePage;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 95
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage$1;->mMatrix:[F

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 108
    iget-object v4, p0, Lcom/android/gallery3d/app/ManageCachePage$1;->this$0:Lcom/android/gallery3d/app/ManageCachePage;

    #getter for: Lcom/android/gallery3d/app/ManageCachePage;->mLayoutReady:Z
    invoke-static {v4}, Lcom/android/gallery3d/app/ManageCachePage;->access$000(Lcom/android/gallery3d/app/ManageCachePage;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 109
    iget-object v4, p0, Lcom/android/gallery3d/app/ManageCachePage$1;->this$0:Lcom/android/gallery3d/app/ManageCachePage;

    #getter for: Lcom/android/gallery3d/app/ManageCachePage;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/gallery3d/app/ManageCachePage;->access$100(Lcom/android/gallery3d/app/ManageCachePage;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 126
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/app/ManageCachePage$1;->this$0:Lcom/android/gallery3d/app/ManageCachePage;

    #setter for: Lcom/android/gallery3d/app/ManageCachePage;->mLayoutReady:Z
    invoke-static {v4, v6}, Lcom/android/gallery3d/app/ManageCachePage;->access$002(Lcom/android/gallery3d/app/ManageCachePage;Z)Z

    .line 114
    iget-object v4, p0, Lcom/android/gallery3d/app/ManageCachePage$1;->this$0:Lcom/android/gallery3d/app/ManageCachePage;

    #getter for: Lcom/android/gallery3d/app/ManageCachePage;->mEyePosition:Lcom/android/gallery3d/app/EyePosition;
    invoke-static {v4}, Lcom/android/gallery3d/app/ManageCachePage;->access$200(Lcom/android/gallery3d/app/ManageCachePage;)Lcom/android/gallery3d/app/EyePosition;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/app/EyePosition;->resetPosition()V

    .line 115
    iget-object v4, p0, Lcom/android/gallery3d/app/ManageCachePage$1;->this$0:Lcom/android/gallery3d/app/ManageCachePage;

    iget-object v4, v4, Lcom/android/gallery3d/app/ManageCachePage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/app/GalleryActionBar;->getHeight()I

    move-result v3

    .line 116
    .local v3, slotViewTop:I
    sub-int v2, p5, p3

    .line 118
    .local v2, slotViewBottom:I
    iget-object v4, p0, Lcom/android/gallery3d/app/ManageCachePage$1;->this$0:Lcom/android/gallery3d/app/ManageCachePage;

    iget-object v4, v4, Lcom/android/gallery3d/app/ManageCachePage;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v5, 0x7f100063

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 119
    .local v0, footer:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 120
    new-array v1, v7, [I

    fill-array-data v1, :array_0

    .line 121
    .local v1, location:[I
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 122
    const/4 v4, 0x1

    aget v2, v1, v4

    .line 125
    .end local v1           #location:[I
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/app/ManageCachePage$1;->this$0:Lcom/android/gallery3d/app/ManageCachePage;

    #getter for: Lcom/android/gallery3d/app/ManageCachePage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;
    invoke-static {v4}, Lcom/android/gallery3d/app/ManageCachePage;->access$300(Lcom/android/gallery3d/app/ManageCachePage;)Lcom/android/gallery3d/ui/SlotView;

    move-result-object v4

    sub-int v5, p4, p2

    invoke-virtual {v4, v6, v3, v5, v2}, Lcom/android/gallery3d/ui/SlotView;->layout(IIII)V

    goto :goto_0

    .line 120
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 130
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 131
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage$1;->mMatrix:[F

    invoke-virtual {p0}, Lcom/android/gallery3d/app/ManageCachePage$1;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/app/ManageCachePage$1;->this$0:Lcom/android/gallery3d/app/ManageCachePage;

    #getter for: Lcom/android/gallery3d/app/ManageCachePage;->mX:F
    invoke-static {v2}, Lcom/android/gallery3d/app/ManageCachePage;->access$400(Lcom/android/gallery3d/app/ManageCachePage;)F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/gallery3d/app/ManageCachePage$1;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/gallery3d/app/ManageCachePage$1;->this$0:Lcom/android/gallery3d/app/ManageCachePage;

    #getter for: Lcom/android/gallery3d/app/ManageCachePage;->mY:F
    invoke-static {v3}, Lcom/android/gallery3d/app/ManageCachePage;->access$500(Lcom/android/gallery3d/app/ManageCachePage;)F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/gallery3d/app/ManageCachePage$1;->this$0:Lcom/android/gallery3d/app/ManageCachePage;

    #getter for: Lcom/android/gallery3d/app/ManageCachePage;->mZ:F
    invoke-static {v3}, Lcom/android/gallery3d/app/ManageCachePage;->access$600(Lcom/android/gallery3d/app/ManageCachePage;)F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/util/GalleryUtils;->setViewPointMatrix([FFFF)V

    .line 133
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage$1;->mMatrix:[F

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyMatrix([FI)V

    .line 134
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/GLView;->render(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 135
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 136
    return-void
.end method

.method protected renderBackground(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ManageCachePage$1;->getBackgroundColor()[F

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->clearBuffer([F)V

    .line 100
    return-void
.end method
