.class Lcom/android/camera/glwidget/TwGLModeSwitchButton$3;
.super Ljava/lang/Object;
.source "TwGLModeSwitchButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/glwidget/TwGLModeSwitchButton;->onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/glwidget/TwGLModeSwitchButton;


# direct methods
.method constructor <init>(Lcom/android/camera/glwidget/TwGLModeSwitchButton;)V
    .locals 0
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/camera/glwidget/TwGLModeSwitchButton$3;->this$0:Lcom/android/camera/glwidget/TwGLModeSwitchButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f80

    const/4 v2, 0x0

    .line 326
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_DisableCompensationTouchAreaInScrollBar"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLModeSwitchButton$3;->this$0:Lcom/android/camera/glwidget/TwGLModeSwitchButton;

    invoke-static {v0}, Lcom/android/camera/glwidget/TwGLModeSwitchButton;->access$108(Lcom/android/camera/glwidget/TwGLModeSwitchButton;)I

    .line 329
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLModeSwitchButton$3;->this$0:Lcom/android/camera/glwidget/TwGLModeSwitchButton;

    #getter for: Lcom/android/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/android/camera/glwidget/TwGLModeSwitchButton;->access$200(Lcom/android/camera/glwidget/TwGLModeSwitchButton;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v2, v5}, Lcom/sec/android/glview/TwGLImage;->translate(FF)V

    .line 333
    :goto_0
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLModeSwitchButton$3;->this$0:Lcom/android/camera/glwidget/TwGLModeSwitchButton;

    #getter for: Lcom/android/camera/glwidget/TwGLModeSwitchButton;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;
    invoke-static {v0}, Lcom/android/camera/glwidget/TwGLModeSwitchButton;->access$400(Lcom/android/camera/glwidget/TwGLModeSwitchButton;)Lcom/android/camera/AbstractCameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLModeSwitchButton$3;->this$0:Lcom/android/camera/glwidget/TwGLModeSwitchButton;

    invoke-virtual {v0}, Lcom/android/camera/glwidget/TwGLModeSwitchButton;->setCamcorderSelected()V

    .line 342
    :goto_1
    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLModeSwitchButton$3;->this$0:Lcom/android/camera/glwidget/TwGLModeSwitchButton;

    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLModeSwitchButton$3;->this$0:Lcom/android/camera/glwidget/TwGLModeSwitchButton;

    #getter for: Lcom/sec/android/glview/TwGLView;->mThis:Lcom/sec/android/glview/TwGLView;
    invoke-static {v1}, Lcom/android/camera/glwidget/TwGLModeSwitchButton;->access$300(Lcom/android/camera/glwidget/TwGLModeSwitchButton;)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    move v3, v2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/glwidget/TwGLModeSwitchButton;->onDrag(Lcom/sec/android/glview/TwGLView;FFFF)V

    goto :goto_0

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLModeSwitchButton$3;->this$0:Lcom/android/camera/glwidget/TwGLModeSwitchButton;

    #getter for: Lcom/android/camera/glwidget/TwGLModeSwitchButton;->mSwitchBall:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/android/camera/glwidget/TwGLModeSwitchButton;->access$200(Lcom/android/camera/glwidget/TwGLModeSwitchButton;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/glwidget/TwGLModeSwitchButton;->access$500()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    goto :goto_1
.end method
