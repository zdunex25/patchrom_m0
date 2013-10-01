.class Lcom/android/camera/PreviewGestures$1;
.super Landroid/os/Handler;
.source "PreviewGestures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PreviewGestures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PreviewGestures;


# direct methods
.method constructor <init>(Lcom/android/camera/PreviewGestures;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/camera/PreviewGestures$1;->this$0:Lcom/android/camera/PreviewGestures;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 66
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/camera/PreviewGestures$1;->this$0:Lcom/android/camera/PreviewGestures;

    #setter for: Lcom/android/camera/PreviewGestures;->mMode:I
    invoke-static {v0, v1}, Lcom/android/camera/PreviewGestures;->access$002(Lcom/android/camera/PreviewGestures;I)I

    .line 68
    iget-object v0, p0, Lcom/android/camera/PreviewGestures$1;->this$0:Lcom/android/camera/PreviewGestures;

    #calls: Lcom/android/camera/PreviewGestures;->openPie()V
    invoke-static {v0}, Lcom/android/camera/PreviewGestures;->access$100(Lcom/android/camera/PreviewGestures;)V

    .line 69
    iget-object v0, p0, Lcom/android/camera/PreviewGestures$1;->this$0:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/PreviewGestures$1;->this$0:Lcom/android/camera/PreviewGestures;

    #getter for: Lcom/android/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/android/camera/PreviewGestures;->access$200(Lcom/android/camera/PreviewGestures;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->cancelActivityTouchHandling(Landroid/view/MotionEvent;)V

    .line 71
    :cond_0
    return-void
.end method
