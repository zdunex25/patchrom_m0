.class Lcom/android/camera/glwidget/TwGLCameraSideMenu$1;
.super Ljava/lang/Object;
.source "TwGLCameraSideMenu.java"

# interfaces
.implements Lcom/android/camera/glwidget/TwGLModeSwitchButton$OnModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/glwidget/TwGLCameraSideMenu;->init(Lcom/sec/android/glview/TwGLViewGroup;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/glwidget/TwGLCameraSideMenu;


# direct methods
.method constructor <init>(Lcom/android/camera/glwidget/TwGLCameraSideMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu$1;->this$0:Lcom/android/camera/glwidget/TwGLCameraSideMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModeChanged(I)V
    .locals 2
    .parameter "mode"

    .prologue
    const/4 v1, 0x1

    .line 140
    if-ne p1, v1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu$1;->this$0:Lcom/android/camera/glwidget/TwGLCameraSideMenu;

    #getter for: Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;
    invoke-static {v0}, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->access$000(Lcom/android/camera/glwidget/TwGLCameraSideMenu;)Lcom/android/camera/AbstractCameraActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu$1;->this$0:Lcom/android/camera/glwidget/TwGLCameraSideMenu;

    #getter for: Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mModeButton:Lcom/android/camera/glwidget/TwGLModeSwitchButton;
    invoke-static {v0}, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->access$100(Lcom/android/camera/glwidget/TwGLCameraSideMenu;)Lcom/android/camera/glwidget/TwGLModeSwitchButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/glwidget/TwGLModeSwitchButton;->lockButton(Z)V

    .line 145
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu$1;->this$0:Lcom/android/camera/glwidget/TwGLCameraSideMenu;

    #getter for: Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;
    invoke-static {v0}, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->access$200(Lcom/android/camera/glwidget/TwGLCameraSideMenu;)Lcom/android/camera/AbstractCameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->onModechanged()V

    goto :goto_0
.end method
