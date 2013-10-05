.class Lcom/android/camera/CeRequestQueue$MainHandler;
.super Landroid/os/Handler;
.source "CeRequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CeRequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CeRequestQueue;


# direct methods
.method private constructor <init>(Lcom/android/camera/CeRequestQueue;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/camera/CeRequestQueue$MainHandler;->this$0:Lcom/android/camera/CeRequestQueue;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/CeRequestQueue;Lcom/android/camera/CeRequestQueue$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/camera/CeRequestQueue$MainHandler;-><init>(Lcom/android/camera/CeRequestQueue;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 45
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_0

    .line 46
    invoke-virtual {p0, v3}, Lcom/android/camera/CeRequestQueue$MainHandler;->removeMessages(I)V

    .line 47
    iget-object v0, p0, Lcom/android/camera/CeRequestQueue$MainHandler;->this$0:Lcom/android/camera/CeRequestQueue;

    #getter for: Lcom/android/camera/CeRequestQueue;->mCameraEngine:Lcom/android/camera/CameraEngine;
    invoke-static {v0}, Lcom/android/camera/CeRequestQueue;->access$000(Lcom/android/camera/CeRequestQueue;)Lcom/android/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraEngine;->getLandscapeActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/android/camera/CeRequestQueue$MainHandler;->this$0:Lcom/android/camera/CeRequestQueue;

    #getter for: Lcom/android/camera/CeRequestQueue;->mMainHandler:Lcom/android/camera/CeRequestQueue$MainHandler;
    invoke-static {v0}, Lcom/android/camera/CeRequestQueue;->access$100(Lcom/android/camera/CeRequestQueue;)Lcom/android/camera/CeRequestQueue$MainHandler;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/camera/CeRequestQueue$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CeRequestQueue$MainHandler;->this$0:Lcom/android/camera/CeRequestQueue;

    #calls: Lcom/android/camera/CeRequestQueue;->startFirstRequest()V
    invoke-static {v0}, Lcom/android/camera/CeRequestQueue;->access$200(Lcom/android/camera/CeRequestQueue;)V

    goto :goto_0
.end method
