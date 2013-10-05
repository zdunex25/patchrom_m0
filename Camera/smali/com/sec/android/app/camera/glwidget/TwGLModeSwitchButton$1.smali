.class Lcom/android/camera/glwidget/TwGLModeSwitchButton$1;
.super Ljava/lang/Object;
.source "TwGLModeSwitchButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/glwidget/TwGLModeSwitchButton;->setCameraSelected()V
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
    .line 172
    iput-object p1, p0, Lcom/android/camera/glwidget/TwGLModeSwitchButton$1;->this$0:Lcom/android/camera/glwidget/TwGLModeSwitchButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLModeSwitchButton$1;->this$0:Lcom/android/camera/glwidget/TwGLModeSwitchButton;

    #getter for: Lcom/android/camera/glwidget/TwGLModeSwitchButton;->mOnModeChangedListener:Lcom/android/camera/glwidget/TwGLModeSwitchButton$OnModeChangedListener;
    invoke-static {v0}, Lcom/android/camera/glwidget/TwGLModeSwitchButton;->access$000(Lcom/android/camera/glwidget/TwGLModeSwitchButton;)Lcom/android/camera/glwidget/TwGLModeSwitchButton$OnModeChangedListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/glwidget/TwGLModeSwitchButton$OnModeChangedListener;->onModeChanged(I)V

    .line 175
    return-void
.end method
