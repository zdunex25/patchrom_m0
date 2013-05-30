.class Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu$1;
.super Ljava/lang/Object;
.source "TwGLCamcorderSideMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$OnModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->init(Lcom/sec/android/glview/TwGLViewGroup;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModeChanged(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 126
    if-nez p1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;)Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->lockButton(Z)V

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    #getter for: Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onModechanged()V

    .line 130
    :cond_0
    return-void
.end method
