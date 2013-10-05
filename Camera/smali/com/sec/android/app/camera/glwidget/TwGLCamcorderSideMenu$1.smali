.class Lcom/android/camera/glwidget/TwGLCamcorderSideMenu$1;
.super Ljava/lang/Object;
.source "TwGLCamcorderSideMenu.java"

# interfaces
.implements Lcom/android/camera/glwidget/TwGLModeSwitchButton$OnModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;->init(Lcom/sec/android/glview/TwGLViewGroup;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;


# direct methods
.method constructor <init>(Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/camera/glwidget/TwGLCamcorderSideMenu$1;->this$0:Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModeChanged(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderSideMenu$1;->this$0:Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;

    #getter for: Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;
    invoke-static {v0}, Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;->access$000(Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;)Lcom/android/camera/AbstractCameraActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderSideMenu$1;->this$0:Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;

    #getter for: Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;->mModeButton:Lcom/android/camera/glwidget/TwGLModeSwitchButton;
    invoke-static {v0}, Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;->access$100(Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;)Lcom/android/camera/glwidget/TwGLModeSwitchButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/glwidget/TwGLModeSwitchButton;->lockButton(Z)V

    .line 137
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCamcorderSideMenu$1;->this$0:Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;

    #getter for: Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;
    invoke-static {v0}, Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;->access$200(Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;)Lcom/android/camera/AbstractCameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->onModechanged()V

    goto :goto_0
.end method
