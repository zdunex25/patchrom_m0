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
    .line 200
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/Camcorder;Lcom/sec/android/app/camera/Camcorder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camcorder$MainHandler;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 202
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

    .line 203
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/sec/android/app/camera/Camcorder;->access$000()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->resumeOrientationListener()V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$100(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/Camcorder$MainHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 209
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

    .line 238
    :cond_2
    :goto_0
    return-void

    .line 210
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/sec/android/app/camera/Camcorder;->access$200()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$404(Lcom/sec/android/app/camera/Camcorder;)I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/camera/Camcorder;->access$500()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 214
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$100(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/Camcorder$MainHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 215
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

    .line 217
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #setter for: Lcom/sec/android/app/camera/Camcorder;->mDirtyCount:I
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/Camcorder;->access$402(Lcom/sec/android/app/camera/Camcorder;I)I

    goto :goto_0

    .line 219
    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_8

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->clearRequest()V

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    .line 225
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartEngine()V

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleSetAllParams()V

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iput-boolean v3, v0, Lcom/sec/android/app/camera/Camcorder;->mbNeedToStartEngineSync:Z

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleWait(I)V

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #setter for: Lcom/sec/android/app/camera/Camcorder;->mwLostWinFocus:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/Camcorder;->access$702(Lcom/sec/android/app/camera/Camcorder;Z)Z

    goto/16 :goto_0

    .line 233
    :cond_8
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/sec/android/app/camera/Camcorder;->access$800()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderFastMotionEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0
.end method
