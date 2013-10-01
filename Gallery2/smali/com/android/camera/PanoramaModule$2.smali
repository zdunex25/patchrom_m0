.class Lcom/android/camera/PanoramaModule$2;
.super Landroid/os/Handler;
.source "PanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoramaModule;->init(Lcom/android/camera/CameraActivity;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoramaModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoramaModule;)V
    .locals 0
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 286
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 318
    :goto_0
    return-void

    .line 288
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #calls: Lcom/android/camera/PanoramaModule;->onBackgroundThreadFinished()V
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$800(Lcom/android/camera/PanoramaModule;)V

    .line 289
    iget-object v1, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    #calls: Lcom/android/camera/PanoramaModule;->showFinalMosaic(Landroid/graphics/Bitmap;)V
    invoke-static {v1, v0}, Lcom/android/camera/PanoramaModule;->access$900(Lcom/android/camera/PanoramaModule;Landroid/graphics/Bitmap;)V

    .line 290
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-virtual {v0}, Lcom/android/camera/PanoramaModule;->saveHighResMosaic()V

    goto :goto_0

    .line 293
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #calls: Lcom/android/camera/PanoramaModule;->onBackgroundThreadFinished()V
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$800(Lcom/android/camera/PanoramaModule;)V

    .line 294
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mPaused:Z
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$300(Lcom/android/camera/PanoramaModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #calls: Lcom/android/camera/PanoramaModule;->resetToPreview()V
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$1000(Lcom/android/camera/PanoramaModule;)V

    .line 306
    :goto_1
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #calls: Lcom/android/camera/PanoramaModule;->clearMosaicFrameProcessorIfNeeded()V
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$1500(Lcom/android/camera/PanoramaModule;)V

    goto :goto_0

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$1400(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/RotateDialogController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mDialogTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/PanoramaModule;->access$1100(Lcom/android/camera/PanoramaModule;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mDialogPanoramaFailedString:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/PanoramaModule;->access$1200(Lcom/android/camera/PanoramaModule;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mDialogOkString:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/PanoramaModule;->access$1300(Lcom/android/camera/PanoramaModule;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/camera/PanoramaModule$2$1;

    invoke-direct {v4, p0}, Lcom/android/camera/PanoramaModule$2$1;-><init>(Lcom/android/camera/PanoramaModule$2;)V

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/RotateDialogController;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 309
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #calls: Lcom/android/camera/PanoramaModule;->onBackgroundThreadFinished()V
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$800(Lcom/android/camera/PanoramaModule;)V

    .line 310
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #calls: Lcom/android/camera/PanoramaModule;->resetToPreview()V
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$1000(Lcom/android/camera/PanoramaModule;)V

    .line 311
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #calls: Lcom/android/camera/PanoramaModule;->clearMosaicFrameProcessorIfNeeded()V
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$1500(Lcom/android/camera/PanoramaModule;)V

    goto :goto_0

    .line 314
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$100(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
