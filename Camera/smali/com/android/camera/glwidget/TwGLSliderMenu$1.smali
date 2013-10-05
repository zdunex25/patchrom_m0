.class Lcom/android/camera/glwidget/TwGLSliderMenu$1;
.super Ljava/lang/Object;
.source "TwGLSliderMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/glwidget/TwGLSliderMenu;-><init>(Lcom/android/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/android/camera/resourcedata/MenuResourceBase;Lcom/android/camera/MenuResourceDepot;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/glwidget/TwGLSliderMenu;


# direct methods
.method constructor <init>(Lcom/android/camera/glwidget/TwGLSliderMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/camera/glwidget/TwGLSliderMenu$1;->this$0:Lcom/android/camera/glwidget/TwGLSliderMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStepChanged(I)V
    .locals 2
    .parameter "step"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSliderMenu$1;->this$0:Lcom/android/camera/glwidget/TwGLSliderMenu;

    invoke-virtual {v0}, Lcom/android/camera/glwidget/TwGLSliderMenu;->restartSliderMenuTimer()V

    .line 208
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSliderMenu$1;->this$0:Lcom/android/camera/glwidget/TwGLSliderMenu;

    iget-object v0, v0, Lcom/android/camera/glwidget/TwGLSliderMenu;->mOnExposureValueChangedListener:Lcom/android/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSliderMenu$1;->this$0:Lcom/android/camera/glwidget/TwGLSliderMenu;

    iget-object v0, v0, Lcom/android/camera/glwidget/TwGLSliderMenu;->mOnExposureValueChangedListener:Lcom/android/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;

    invoke-static {}, Lcom/android/camera/glwidget/TwGLSliderMenu;->access$300()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Lcom/android/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;->onExposureValueMenuSelect(I)V

    .line 211
    :cond_0
    return-void
.end method
