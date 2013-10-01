.class Lcom/android/camera/ui/RenderOverlay$RenderView;
.super Landroid/view/View;
.source "RenderOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/RenderOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderView"
.end annotation


# instance fields
.field private mTouchTarget:Lcom/android/camera/ui/RenderOverlay$Renderer;

.field final synthetic this$0:Lcom/android/camera/ui/RenderOverlay;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/RenderOverlay;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/camera/ui/RenderOverlay$RenderView;->this$0:Lcom/android/camera/ui/RenderOverlay;

    .line 115
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/RenderOverlay$RenderView;->setWillNotDraw(Z)V

    .line 117
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 150
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 151
    iget-object v3, p0, Lcom/android/camera/ui/RenderOverlay$RenderView;->this$0:Lcom/android/camera/ui/RenderOverlay;

    #getter for: Lcom/android/camera/ui/RenderOverlay;->mClients:Ljava/util/List;
    invoke-static {v3}, Lcom/android/camera/ui/RenderOverlay;->access$200(Lcom/android/camera/ui/RenderOverlay;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    const/4 v1, 0x0

    .line 153
    .local v1, redraw:Z
    iget-object v3, p0, Lcom/android/camera/ui/RenderOverlay$RenderView;->this$0:Lcom/android/camera/ui/RenderOverlay;

    #getter for: Lcom/android/camera/ui/RenderOverlay;->mClients:Ljava/util/List;
    invoke-static {v3}, Lcom/android/camera/ui/RenderOverlay;->access$200(Lcom/android/camera/ui/RenderOverlay;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/RenderOverlay$Renderer;

    .line 154
    .local v2, renderer:Lcom/android/camera/ui/RenderOverlay$Renderer;
    invoke-interface {v2, p1}, Lcom/android/camera/ui/RenderOverlay$Renderer;->draw(Landroid/graphics/Canvas;)V

    .line 155
    if-nez v1, :cond_2

    check-cast v2, Lcom/android/camera/ui/OverlayRenderer;

    .end local v2           #renderer:Lcom/android/camera/ui/RenderOverlay$Renderer;
    invoke-virtual {v2}, Lcom/android/camera/ui/OverlayRenderer;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v1, 0x1

    :goto_2
    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 157
    :cond_4
    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/android/camera/ui/RenderOverlay$RenderView;->invalidate()V

    goto :goto_0
.end method

.method public layout(IIII)V
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 140
    iget-object v2, p0, Lcom/android/camera/ui/RenderOverlay$RenderView;->this$0:Lcom/android/camera/ui/RenderOverlay;

    #calls: Lcom/android/camera/ui/RenderOverlay;->adjustPosition()V
    invoke-static {v2}, Lcom/android/camera/ui/RenderOverlay;->access$100(Lcom/android/camera/ui/RenderOverlay;)V

    .line 141
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    .line 142
    iget-object v2, p0, Lcom/android/camera/ui/RenderOverlay$RenderView;->this$0:Lcom/android/camera/ui/RenderOverlay;

    #getter for: Lcom/android/camera/ui/RenderOverlay;->mClients:Ljava/util/List;
    invoke-static {v2}, Lcom/android/camera/ui/RenderOverlay;->access$200(Lcom/android/camera/ui/RenderOverlay;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    .line 146
    :cond_0
    return-void

    .line 143
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/RenderOverlay$RenderView;->this$0:Lcom/android/camera/ui/RenderOverlay;

    #getter for: Lcom/android/camera/ui/RenderOverlay;->mClients:Ljava/util/List;
    invoke-static {v2}, Lcom/android/camera/ui/RenderOverlay;->access$200(Lcom/android/camera/ui/RenderOverlay;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RenderOverlay$Renderer;

    .line 144
    .local v1, renderer:Lcom/android/camera/ui/RenderOverlay$Renderer;
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/camera/ui/RenderOverlay$Renderer;->layout(IIII)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "evt"

    .prologue
    .line 125
    iget-object v3, p0, Lcom/android/camera/ui/RenderOverlay$RenderView;->mTouchTarget:Lcom/android/camera/ui/RenderOverlay$Renderer;

    if-eqz v3, :cond_1

    .line 126
    iget-object v3, p0, Lcom/android/camera/ui/RenderOverlay$RenderView;->mTouchTarget:Lcom/android/camera/ui/RenderOverlay$Renderer;

    invoke-interface {v3, p1}, Lcom/android/camera/ui/RenderOverlay$Renderer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 135
    :cond_0
    :goto_0
    return v2

    .line 128
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/RenderOverlay$RenderView;->this$0:Lcom/android/camera/ui/RenderOverlay;

    #getter for: Lcom/android/camera/ui/RenderOverlay;->mTouchClients:Ljava/util/List;
    invoke-static {v3}, Lcom/android/camera/ui/RenderOverlay;->access$000(Lcom/android/camera/ui/RenderOverlay;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 129
    const/4 v2, 0x0

    .line 130
    .local v2, res:Z
    iget-object v3, p0, Lcom/android/camera/ui/RenderOverlay$RenderView;->this$0:Lcom/android/camera/ui/RenderOverlay;

    #getter for: Lcom/android/camera/ui/RenderOverlay;->mTouchClients:Ljava/util/List;
    invoke-static {v3}, Lcom/android/camera/ui/RenderOverlay;->access$000(Lcom/android/camera/ui/RenderOverlay;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RenderOverlay$Renderer;

    .line 131
    .local v0, client:Lcom/android/camera/ui/RenderOverlay$Renderer;
    invoke-interface {v0, p1}, Lcom/android/camera/ui/RenderOverlay$Renderer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_1

    .line 135
    .end local v0           #client:Lcom/android/camera/ui/RenderOverlay$Renderer;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #res:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setTouchTarget(Lcom/android/camera/ui/RenderOverlay$Renderer;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/camera/ui/RenderOverlay$RenderView;->mTouchTarget:Lcom/android/camera/ui/RenderOverlay$Renderer;

    .line 121
    return-void
.end method
