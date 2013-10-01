.class Lcom/android/gallery3d/ui/PhotoView$MyHandler;
.super Lcom/android/gallery3d/ui/SynchronizedHandler;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/PhotoView;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "root"

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    .line 320
    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    .line 321
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "message"

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 325
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 384
    new-instance v2, Ljava/lang/AssertionError;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(I)V

    throw v2

    .line 327
    :pswitch_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mGestureRecognizer:Lcom/android/gallery3d/ui/GestureRecognizer;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$500(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/GestureRecognizer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/GestureRecognizer;->cancelScale()V

    .line 328
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/ui/PositionController;->setExtraScalingRange(Z)V

    .line 329
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #setter for: Lcom/android/gallery3d/ui/PhotoView;->mCancelExtraScalingPending:Z
    invoke-static {v2, v4}, Lcom/android/gallery3d/ui/PhotoView;->access$702(Lcom/android/gallery3d/ui/PhotoView;Z)Z

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 333
    :pswitch_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #calls: Lcom/android/gallery3d/ui/PhotoView;->switchFocus()V
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$800(Lcom/android/gallery3d/ui/PhotoView;)V

    goto :goto_0

    .line 339
    :pswitch_2
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    iget v3, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/gallery3d/ui/PhotoView;->captureAnimationDone(I)V
    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/PhotoView;->access$900(Lcom/android/gallery3d/ui/PhotoView;I)V

    goto :goto_0

    .line 345
    :pswitch_3
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v5

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/gallery3d/data/Path;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v5, v2, v6}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onDeleteImage(Lcom/android/gallery3d/data/Path;I)V

    .line 355
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$1000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/SynchronizedHandler;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/android/gallery3d/ui/SynchronizedHandler;->removeMessages(I)V

    .line 356
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$1000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/SynchronizedHandler;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/android/gallery3d/ui/SynchronizedHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 357
    .local v0, m:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$1000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/SynchronizedHandler;

    move-result-object v2

    const-wide/16 v5, 0x7d0

    invoke-virtual {v2, v0, v5, v6}, Lcom/android/gallery3d/ui/SynchronizedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 359
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$1100(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v2

    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I
    invoke-static {v5}, Lcom/android/gallery3d/ui/PhotoView;->access$1200(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v5

    sub-int/2addr v2, v5

    add-int/lit8 v1, v2, 0x1

    .line 360
    .local v1, numberOfPictures:I
    if-ne v1, v7, :cond_2

    .line 361
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v2

    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I
    invoke-static {v5}, Lcom/android/gallery3d/ui/PhotoView;->access$1100(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/gallery3d/ui/PhotoView$Model;->isCamera(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v2

    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I
    invoke-static {v5}, Lcom/android/gallery3d/ui/PhotoView;->access$1200(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/gallery3d/ui/PhotoView$Model;->isCamera(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 363
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 366
    :cond_2
    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    if-gt v1, v3, :cond_3

    move v2, v3

    :goto_1
    #calls: Lcom/android/gallery3d/ui/PhotoView;->showUndoBar(Z)V
    invoke-static {v5, v2}, Lcom/android/gallery3d/ui/PhotoView;->access$1400(Lcom/android/gallery3d/ui/PhotoView;Z)V

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    .line 370
    .end local v0           #m:Landroid/os/Message;
    .end local v1           #numberOfPictures:I
    :pswitch_4
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$1000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/SynchronizedHandler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/SynchronizedHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 371
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v3, -0x5

    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/PhotoView;->access$372(Lcom/android/gallery3d/ui/PhotoView;I)I

    .line 372
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #calls: Lcom/android/gallery3d/ui/PhotoView;->snapback()V
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$1500(Lcom/android/gallery3d/ui/PhotoView;)V

    goto/16 :goto_0

    .line 377
    :pswitch_5
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #calls: Lcom/android/gallery3d/ui/PhotoView;->checkHideUndoBar(I)V
    invoke-static {v2, v7}, Lcom/android/gallery3d/ui/PhotoView;->access$1600(Lcom/android/gallery3d/ui/PhotoView;I)V

    goto/16 :goto_0

    .line 381
    :pswitch_6
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    const/16 v3, 0x8

    #calls: Lcom/android/gallery3d/ui/PhotoView;->checkHideUndoBar(I)V
    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/PhotoView;->access$1600(Lcom/android/gallery3d/ui/PhotoView;I)V

    goto/16 :goto_0

    .line 325
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
