.class Lcom/android/internal/widget/SPenGestureView$SPenHandler;
.super Landroid/os/Handler;
.source "SPenGestureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SPenGestureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SPenHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SPenGestureView;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/SPenGestureView;)V
    .locals 0
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/internal/widget/SPenGestureView$SPenHandler;->this$0:Lcom/android/internal/widget/SPenGestureView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/SPenGestureView;Lcom/android/internal/widget/SPenGestureView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 364
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SPenGestureView$SPenHandler;-><init>(Lcom/android/internal/widget/SPenGestureView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 367
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 375
    const-string v0, "SPenGesture"

    const-string v1, "Nothing to do"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :goto_0
    return-void

    .line 369
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView$SPenHandler;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget-object v1, p0, Lcom/android/internal/widget/SPenGestureView$SPenHandler;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCurrentMotionEvent:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/android/internal/widget/SPenGestureView;->access$100(Lcom/android/internal/widget/SPenGestureView;)Landroid/view/MotionEvent;

    move-result-object v1

    #calls: Lcom/android/internal/widget/SPenGestureView;->enableGuide(Landroid/view/MotionEvent;)V
    invoke-static {v0, v1}, Lcom/android/internal/widget/SPenGestureView;->access$200(Lcom/android/internal/widget/SPenGestureView;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 372
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView$SPenHandler;->this$0:Lcom/android/internal/widget/SPenGestureView;

    invoke-virtual {v0}, Lcom/android/internal/widget/SPenGestureView;->disableGestureGuide()V

    goto :goto_0

    .line 367
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
