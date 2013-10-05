.class Lcom/android/camera/Camera$VoiceRecognizer;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceRecognizer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 7457
    iput-object p1, p0, Lcom/android/camera/Camera$VoiceRecognizer;->this$0:Lcom/android/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7457
    invoke-direct {p0, p1}, Lcom/android/camera/Camera$VoiceRecognizer;-><init>(Lcom/android/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onResults([Ljava/lang/String;)V
    .locals 7
    .parameter "strResult"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x1b

    const/4 v4, 0x1

    .line 7459
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VoiceRecognition result string : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7460
    const/4 v0, -0x1

    .line 7461
    .local v0, result:I
    iget-object v1, p0, Lcom/android/camera/Camera$VoiceRecognizer;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$2900(Lcom/android/camera/Camera;)Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7462
    iget-object v1, p0, Lcom/android/camera/Camera$VoiceRecognizer;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$2900(Lcom/android/camera/Camera;)Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->getIntBargeInResult()I

    move-result v0

    .line 7465
    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 7466
    packed-switch v0, :pswitch_data_0

    .line 7476
    iget-object v1, p0, Lcom/android/camera/Camera$VoiceRecognizer;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mGLCameraBaseIndicators:Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$000(Lcom/android/camera/Camera;)Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7477
    iget-object v1, p0, Lcom/android/camera/Camera$VoiceRecognizer;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mGLCameraBaseIndicators:Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$000(Lcom/android/camera/Camera;)Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;->setVoiceStatus(I)V

    .line 7484
    :cond_1
    :goto_0
    return-void

    .line 7471
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/Camera$VoiceRecognizer;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->restartInactivityTimer()V

    .line 7472
    iget-object v1, p0, Lcom/android/camera/Camera$VoiceRecognizer;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v1, v5, v6}, Lcom/android/camera/Camera;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 7473
    iget-object v1, p0, Lcom/android/camera/Camera$VoiceRecognizer;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v1, v5, v6}, Lcom/android/camera/Camera;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 7481
    :cond_2
    iget-object v1, p0, Lcom/android/camera/Camera$VoiceRecognizer;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mGLCameraBaseIndicators:Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$000(Lcom/android/camera/Camera;)Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7482
    iget-object v1, p0, Lcom/android/camera/Camera$VoiceRecognizer;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mGLCameraBaseIndicators:Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$000(Lcom/android/camera/Camera;)Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/glwidget/TwGLCameraBaseIndicators;->setVoiceStatus(I)V

    goto :goto_0

    .line 7466
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
