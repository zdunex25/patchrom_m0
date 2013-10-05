.class Lcom/android/camera/glwidget/TwGLNewPanoramaMenu$1;
.super Landroid/os/Handler;
.source "TwGLNewPanoramaMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/glwidget/TwGLNewPanoramaMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/glwidget/TwGLNewPanoramaMenu;


# direct methods
.method constructor <init>(Lcom/android/camera/glwidget/TwGLNewPanoramaMenu;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/camera/glwidget/TwGLNewPanoramaMenu$1;->this$0:Lcom/android/camera/glwidget/TwGLNewPanoramaMenu;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 187
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 231
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 190
    :pswitch_1
    :try_start_0
    const-string v1, "TwGLNewPanoramaMenu"

    const-string v2, "Inactivity timer is expired. finish."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLNewPanoramaMenu$1;->this$0:Lcom/android/camera/glwidget/TwGLNewPanoramaMenu;

    #getter for: Lcom/android/camera/glwidget/TwGLNewPanoramaMenu;->mListener:Lcom/android/camera/glwidget/TwGLNewPanoramaMenu$OnNewPanoramaCaptureCancelListener;
    invoke-static {v1}, Lcom/android/camera/glwidget/TwGLNewPanoramaMenu;->access$000(Lcom/android/camera/glwidget/TwGLNewPanoramaMenu;)Lcom/android/camera/glwidget/TwGLNewPanoramaMenu$OnNewPanoramaCaptureCancelListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/glwidget/TwGLNewPanoramaMenu$OnNewPanoramaCaptureCancelListener;->onPanoramaCaptureCancelled()V

    .line 192
    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLNewPanoramaMenu$1;->this$0:Lcom/android/camera/glwidget/TwGLNewPanoramaMenu;

    invoke-virtual {v1}, Lcom/android/camera/glwidget/TwGLNewPanoramaMenu;->reset()V

    .line 193
    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLNewPanoramaMenu$1;->this$0:Lcom/android/camera/glwidget/TwGLNewPanoramaMenu;

    #getter for: Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;
    invoke-static {v1}, Lcom/android/camera/glwidget/TwGLNewPanoramaMenu;->access$100(Lcom/android/camera/glwidget/TwGLNewPanoramaMenu;)Lcom/android/camera/AbstractCameraActivity;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/AbstractCameraActivity;->playCameraSound(II)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "TwGLNewPanoramaMenu"

    const-string v2, "MSG arrived after the onDestro. Ignore exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 199
    .end local v0           #e:Ljava/lang/NullPointerException;
    :pswitch_2
    const-string v1, "TwGLNewPanoramaMenu"

    const-string v2, "MESSAGE_PANORAMA_WARNING_LOW"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {p0, v4}, Lcom/android/camera/glwidget/TwGLNewPanoramaMenu$1;->removeMessages(I)V

    .line 201
    invoke-virtual {p0, v5}, Lcom/android/camera/glwidget/TwGLNewPanoramaMenu$1;->removeMessages(I)V

    .line 202
    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLNewPanoramaMenu$1;->this$0:Lcom/android/camera/glwidget/TwGLNewPanoramaMenu;

    #getter for: Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;
    invoke-static {v1}, Lcom/android/camera/glwidget/TwGLNewPanoramaMenu;->access$200(Lcom/android/camera/glwidget/TwGLNewPanoramaMenu;)Lcom/android/camera/AbstractCameraActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLNewPanoramaMenu$1;->this$0:Lcom/android/camera/glwidget/TwGLNewPanoramaMenu;

    #getter for: Lcom/android/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaWarning:Z
    invoke-static {v1}, Lcom/android/camera/glwidget/TwGLNewPanoramaMenu;->access$300(Lcom/android/camera/glwidget/TwGLNewPanoramaMenu;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLNewPanoramaMenu$1;->this$0:Lcom/android/camera/glwidget/TwGLNewPanoramaMenu;

    #getter for: Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;
    invoke-static {v1}, Lcom/android/camera/glwidget/TwGLNewPanoramaMenu;->access$400(Lcom/android/camera/glwidget/TwGLNewPanoramaMenu;)Lcom/android/camera/AbstractCameraActivity;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/AbstractCameraActivity;->playCameraSound(II)V

    .line 204
    const-wide/16 v1, 0x320

    invoke-virtual {p0, v4, v1, v2}, Lcom/android/camera/glwidget/TwGLNewPanoramaMenu$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 208
    :pswitch_3
    const-string v1, "TwGLNewPanoramaMenu"

    const-string v2, "MESSAGE_PANORAMA_WARNING_HIGH"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {p0, v5}, Lcom/android/camera/glwidget/TwGLNewPanoramaMenu$1;->removeMessages(I)V

    .line 210
    invoke-virtual {p0, v4}, Lcom/android/camera/glwidget/TwGLNewPanoramaMenu$1;->removeMessages(I)V

    .line 211
    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLNewPanoramaMenu$1;->this$0:Lcom/android/camera/glwidget/TwGLNewPanoramaMenu;

    #getter for: Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;
    invoke-static {v1}, Lcom/android/camera/glwidget/TwGLNewPanoramaMenu;->access$500(Lcom/android/camera/glwidget/TwGLNewPanoramaMenu;)Lcom/android/camera/AbstractCameraActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLNewPanoramaMenu$1;->this$0:Lcom/android/camera/glwidget/TwGLNewPanoramaMenu;

    #getter for: Lcom/android/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaWarning:Z
    invoke-static {v1}, Lcom/android/camera/glwidget/TwGLNewPanoramaMenu;->access$300(Lcom/android/camera/glwidget/TwGLNewPanoramaMenu;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLNewPanoramaMenu$1;->this$0:Lcom/android/camera/glwidget/TwGLNewPanoramaMenu;

    #getter for: Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;
    invoke-static {v1}, Lcom/android/camera/glwidget/TwGLNewPanoramaMenu;->access$600(Lcom/android/camera/glwidget/TwGLNewPanoramaMenu;)Lcom/android/camera/AbstractCameraActivity;

    move-result-object v1

    invoke-virtual {v1, v6, v3}, Lcom/android/camera/AbstractCameraActivity;->playCameraSound(II)V

    .line 213
    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v5, v1, v2}, Lcom/android/camera/glwidget/TwGLNewPanoramaMenu$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
