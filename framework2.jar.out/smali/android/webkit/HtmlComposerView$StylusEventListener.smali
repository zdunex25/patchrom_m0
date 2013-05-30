.class Landroid/webkit/HtmlComposerView$StylusEventListener;
.super Ljava/lang/Object;
.source "HtmlComposerView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HtmlComposerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StylusEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HtmlComposerView;


# direct methods
.method private constructor <init>(Landroid/webkit/HtmlComposerView;)V
    .locals 0
    .parameter

    .prologue
    .line 1797
    iput-object p1, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/HtmlComposerView;Landroid/webkit/HtmlComposerView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1797
    invoke-direct {p0, p1}, Landroid/webkit/HtmlComposerView$StylusEventListener;-><init>(Landroid/webkit/HtmlComposerView;)V

    return-void
.end method


# virtual methods
.method public onStylusButtonEvent(Landroid/view/MotionEvent;I)V
    .locals 9
    .parameter "event"
    .parameter "clipboardId"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v8, 0x0

    .line 1799
    iget-object v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1800
    iget-object v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    iget-boolean v3, v3, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "HtmlComposerView"

    const-string v4, "onStylusButtonEvent HtmlComposerView has no focus"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    :cond_0
    :goto_0
    return-void

    .line 1804
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1805
    .local v0, action:I
    iget-object v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    iget-boolean v3, v3, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStylusButtonEvent action = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    :cond_2
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 1811
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1813
    :pswitch_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1814
    .local v1, rect:Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3, v1}, Landroid/webkit/HtmlComposerView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1815
    new-array v2, v6, [I

    .line 1816
    .local v2, rectInWindow:[I
    iget-object v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3, v2}, Landroid/webkit/HtmlComposerView;->getLocationInWindow([I)V

    .line 1818
    iget-object v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    aget v5, v2, v8

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/webkit/HtmlComposerView;->mStartX:I

    .line 1819
    iget-object v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    aget v5, v2, v7

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/webkit/HtmlComposerView;->mStartY:I

    goto :goto_0

    .line 1823
    .end local v1           #rect:Landroid/graphics/Rect;
    .end local v2           #rectInWindow:[I
    :pswitch_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1824
    .restart local v1       #rect:Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3, v1}, Landroid/webkit/HtmlComposerView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1825
    new-array v2, v6, [I

    .line 1826
    .restart local v2       #rectInWindow:[I
    iget-object v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3, v2}, Landroid/webkit/HtmlComposerView;->getLocationInWindow([I)V

    .line 1828
    iget-object v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    aget v5, v2, v8

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/webkit/HtmlComposerView;->mEndX:I

    .line 1829
    iget-object v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    aget v5, v2, v7

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/webkit/HtmlComposerView;->mEndY:I

    .line 1831
    iget-object v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    iget-object v4, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    iget v4, v4, Landroid/webkit/HtmlComposerView;->mStartX:I

    iget-object v5, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    iget v5, v5, Landroid/webkit/HtmlComposerView;->mStartY:I

    iget-object v6, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    iget v6, v6, Landroid/webkit/HtmlComposerView;->mEndX:I

    iget-object v7, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    iget v7, v7, Landroid/webkit/HtmlComposerView;->mEndY:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/webkit/HtmlComposerView;->selectBWStartAndEnd(IIII)V

    .line 1832
    iget-object v3, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3, v8}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    goto/16 :goto_0

    .line 1811
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
