.class Landroid/widget/AbsListView$HoverScrollHandler;
.super Landroid/os/Handler;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HoverScrollHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0
    .parameter

    .prologue
    .line 7142
    iput-object p1, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7142
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$HoverScrollHandler;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x4

    const v10, 0x3ecccccd

    const/4 v9, 0x2

    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 7144
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 7215
    :cond_0
    :goto_0
    return-void

    .line 7146
    :pswitch_0
    const/4 v1, 0x0

    .line 7148
    .local v1, offset:I
    iget-object v4, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v5, v5

    #setter for: Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:I
    invoke-static {v4, v5}, Landroid/widget/AbsListView;->access$4702(Landroid/widget/AbsListView;I)I

    .line 7149
    iget-object v4, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget-object v5, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:I
    invoke-static {v5}, Landroid/widget/AbsListView;->access$4700(Landroid/widget/AbsListView;)I

    move-result v5

    iget-object v6, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoverRecognitionStartTime:I
    invoke-static {v6}, Landroid/widget/AbsListView;->access$4900(Landroid/widget/AbsListView;)I

    move-result v6

    sub-int/2addr v5, v6

    #setter for: Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:I
    invoke-static {v4, v5}, Landroid/widget/AbsListView;->access$4802(Landroid/widget/AbsListView;I)I

    .line 7151
    iget-object v4, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:I
    invoke-static {v4}, Landroid/widget/AbsListView;->access$4800(Landroid/widget/AbsListView;)I

    move-result v4

    if-le v4, v9, :cond_2

    iget-object v4, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:I
    invoke-static {v4}, Landroid/widget/AbsListView;->access$4800(Landroid/widget/AbsListView;)I

    move-result v4

    if-ge v4, v11, :cond_2

    .line 7152
    iget-object v4, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget-object v5, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->HOVERSCROLL_SPEED:I
    invoke-static {v5}, Landroid/widget/AbsListView;->access$5100(Landroid/widget/AbsListView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    #setter for: Landroid/widget/AbsListView;->mHoverScrollSpeed:I
    invoke-static {v4, v5}, Landroid/widget/AbsListView;->access$5002(Landroid/widget/AbsListView;I)I

    .line 7160
    :goto_1
    iget-object v4, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoverScrollDirection:I
    invoke-static {v4}, Landroid/widget/AbsListView;->access$5200(Landroid/widget/AbsListView;)I

    move-result v4

    if-ne v4, v9, :cond_5

    .line 7161
    iget-object v4, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoverScrollSpeed:I
    invoke-static {v4}, Landroid/widget/AbsListView;->access$5000(Landroid/widget/AbsListView;)I

    move-result v4

    mul-int/lit8 v1, v4, -0x1

    .line 7166
    :goto_2
    iget-object v4, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget-object v5, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 7170
    if-gez v1, :cond_6

    iget-object v4, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget v4, v4, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    if-eq v4, v5, :cond_6

    .line 7173
    :cond_1
    iget-object v4, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4, v1, v0}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 7174
    iget-object v4, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;
    invoke-static {v4}, Landroid/widget/AbsListView;->access$5400(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$HoverScrollHandler;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->HOVERSCROLL_DELAY:I
    invoke-static {v5}, Landroid/widget/AbsListView;->access$5300(Landroid/widget/AbsListView;)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 7153
    :cond_2
    iget-object v4, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:I
    invoke-static {v4}, Landroid/widget/AbsListView;->access$4800(Landroid/widget/AbsListView;)I

    move-result v4

    if-lt v4, v11, :cond_3

    iget-object v4, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:I
    invoke-static {v4}, Landroid/widget/AbsListView;->access$4800(Landroid/widget/AbsListView;)I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_3

    .line 7154
    iget-object v4, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget-object v5, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->HOVERSCROLL_SPEED:I
    invoke-static {v5}, Landroid/widget/AbsListView;->access$5100(Landroid/widget/AbsListView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    #setter for: Landroid/widget/AbsListView;->mHoverScrollSpeed:I
    invoke-static {v4, v5}, Landroid/widget/AbsListView;->access$5002(Landroid/widget/AbsListView;I)I

    goto :goto_1

    .line 7155
    :cond_3
    iget-object v4, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:I
    invoke-static {v4}, Landroid/widget/AbsListView;->access$4800(Landroid/widget/AbsListView;)I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_4

    .line 7156
    iget-object v4, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget-object v5, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->HOVERSCROLL_SPEED:I
    invoke-static {v5}, Landroid/widget/AbsListView;->access$5100(Landroid/widget/AbsListView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x6

    #setter for: Landroid/widget/AbsListView;->mHoverScrollSpeed:I
    invoke-static {v4, v5}, Landroid/widget/AbsListView;->access$5002(Landroid/widget/AbsListView;I)I

    goto/16 :goto_1

    .line 7158
    :cond_4
    iget-object v4, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget-object v5, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->HOVERSCROLL_SPEED:I
    invoke-static {v5}, Landroid/widget/AbsListView;->access$5100(Landroid/widget/AbsListView;)I

    move-result v5

    #setter for: Landroid/widget/AbsListView;->mHoverScrollSpeed:I
    invoke-static {v4, v5}, Landroid/widget/AbsListView;->access$5002(Landroid/widget/AbsListView;I)I

    goto/16 :goto_1

    .line 7163
    :cond_5
    iget-object v4, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoverScrollSpeed:I
    invoke-static {v4}, Landroid/widget/AbsListView;->access$5000(Landroid/widget/AbsListView;)I

    move-result v4

    mul-int/lit8 v1, v4, 0x1

    goto/16 :goto_2

    .line 7176
    :cond_6
    if-lez v1, :cond_8

    iget-object v4, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget v4, v4, Landroid/widget/AdapterView;->mFirstPosition:I

    iget-object v5, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getCount()I

    move-result v5

    if-ne v4, v5, :cond_7

    iget-object v4, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget-object v6, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    if-eq v4, v5, :cond_8

    .line 7180
    :cond_7
    iget-object v4, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4, v1, v0}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 7181
    iget-object v4, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;
    invoke-static {v4}, Landroid/widget/AbsListView;->access$5400(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$HoverScrollHandler;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->HOVERSCROLL_DELAY:I
    invoke-static {v5}, Landroid/widget/AbsListView;->access$5300(Landroid/widget/AbsListView;)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 7184
    :cond_8
    iget-object v4, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v2

    .line 7185
    .local v2, overscrollMode:I
    if-eqz v2, :cond_9

    if-ne v2, v3, :cond_a

    iget-object v4, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #calls: Landroid/widget/AbsListView;->contentFits()Z
    invoke-static {v4}, Landroid/widget/AbsListView;->access$2000(Landroid/widget/AbsListView;)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_9
    move v0, v3

    .line 7188
    .local v0, canOverscroll:Z
    :cond_a
    if-eqz v0, :cond_0

    iget-object v4, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z
    invoke-static {v4}, Landroid/widget/AbsListView;->access$5500(Landroid/widget/AbsListView;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 7189
    iget-object v4, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoverScrollDirection:I
    invoke-static {v4}, Landroid/widget/AbsListView;->access$5200(Landroid/widget/AbsListView;)I

    move-result v4

    if-ne v4, v9, :cond_e

    .line 7190
    iget-object v4, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v4}, Landroid/widget/AbsListView;->access$2100(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 7191
    iget-object v4, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v4}, Landroid/widget/AbsListView;->access$2200(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_b

    .line 7192
    iget-object v4, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v4}, Landroid/widget/AbsListView;->access$2200(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 7201
    :cond_b
    :goto_3
    iget-object v4, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v4}, Landroid/widget/AbsListView;->access$2100(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v4}, Landroid/widget/AbsListView;->access$2100(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v4}, Landroid/widget/AbsListView;->access$2200(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_d

    .line 7203
    :cond_c
    iget-object v4, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->invalidate()V

    .line 7206
    :cond_d
    iget-object v4, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #setter for: Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z
    invoke-static {v4, v3}, Landroid/widget/AbsListView;->access$5502(Landroid/widget/AbsListView;Z)Z

    goto/16 :goto_0

    .line 7194
    :cond_e
    iget-object v4, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHoverScrollDirection:I
    invoke-static {v4}, Landroid/widget/AbsListView;->access$5200(Landroid/widget/AbsListView;)I

    move-result v4

    if-ne v4, v3, :cond_b

    .line 7195
    iget-object v4, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v4}, Landroid/widget/AbsListView;->access$2200(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 7196
    iget-object v4, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v4}, Landroid/widget/AbsListView;->access$2100(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_b

    .line 7197
    iget-object v4, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v4}, Landroid/widget/AbsListView;->access$2100(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_3

    .line 7144
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
