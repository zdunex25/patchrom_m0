.class Lcom/android/camera/Camera$25;
.super Ljava/util/TimerTask;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->wakeupToSnSMod()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 6941
    iput-object p1, p0, Lcom/android/camera/Camera$25;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 6945
    iget-object v0, p0, Lcom/android/camera/Camera$25;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 6946
    iget-object v0, p0, Lcom/android/camera/Camera$25;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraSideMenu:Lcom/android/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/glwidget/TwGLCameraSideMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->updateThumbnailButton()V

    .line 6947
    :cond_0
    return-void
.end method
