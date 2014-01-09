.class Lcom/sec/android/app/camera/Camcorder$MainHandler;
.super Landroid/os/Handler;
.source "Camcorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camcorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camcorder;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/Camcorder;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/Camcorder;Lcom/sec/android/app/camera/Camcorder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camcorder$MainHandler;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 174
    const-string v0, "Camcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage :: msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/sec/android/app/camera/Camcorder;->access$000()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->resumeOrientationListener()V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$100(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/Camcorder$MainHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$100(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/Camcorder$MainHandler;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/camera/Camcorder;->access$200()I

    move-result v1

    invoke-static {}, Lcom/sec/android/app/camera/Camcorder;->access$300()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 192
    :cond_2
    :goto_0
    return-void

    .line 182
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/sec/android/app/camera/Camcorder;->access$200()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$404(Lcom/sec/android/app/camera/Camcorder;)I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/camera/Camcorder;->access$500()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 186
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$100(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/Camcorder$MainHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$100(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/Camcorder$MainHandler;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/camera/Camcorder;->access$200()I

    move-result v1

    invoke-static {}, Lcom/sec/android/app/camera/Camcorder;->access$300()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 189
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/camera/Camcorder;->mDirtyCount:I
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Camcorder;->access$402(Lcom/sec/android/app/camera/Camcorder;I)I

    goto :goto_0
.end method
