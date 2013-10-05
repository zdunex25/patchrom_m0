.class Lcom/android/camera/glwidget/TwGLSliderMenu$8;
.super Ljava/lang/Object;
.source "TwGLSliderMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/glwidget/TwGLSliderMenu;->onShow()V
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
    .line 454
    iput-object p1, p0, Lcom/android/camera/glwidget/TwGLSliderMenu$8;->this$0:Lcom/android/camera/glwidget/TwGLSliderMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStepChanged(I)V
    .locals 1
    .parameter "step"

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSliderMenu$8;->this$0:Lcom/android/camera/glwidget/TwGLSliderMenu;

    invoke-virtual {v0}, Lcom/android/camera/glwidget/TwGLSliderMenu;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSliderMenu$8;->this$0:Lcom/android/camera/glwidget/TwGLSliderMenu;

    invoke-virtual {v0}, Lcom/android/camera/glwidget/TwGLSliderMenu;->restartSliderMenuTimer()V

    .line 459
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSliderMenu$8;->this$0:Lcom/android/camera/glwidget/TwGLSliderMenu;

    iget-object v0, v0, Lcom/android/camera/glwidget/TwGLSliderMenu;->mOnAdjustSaturationChangedListener:Lcom/android/camera/glwidget/TwGLSliderMenu$OnAdjustSaturationMenuSelectListener;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSliderMenu$8;->this$0:Lcom/android/camera/glwidget/TwGLSliderMenu;

    iget-object v0, v0, Lcom/android/camera/glwidget/TwGLSliderMenu;->mOnAdjustSaturationChangedListener:Lcom/android/camera/glwidget/TwGLSliderMenu$OnAdjustSaturationMenuSelectListener;

    invoke-interface {v0, p1}, Lcom/android/camera/glwidget/TwGLSliderMenu$OnAdjustSaturationMenuSelectListener;->onAdjustSaturationMenuSelect(I)V

    goto :goto_0
.end method
