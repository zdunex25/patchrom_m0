.class Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$3;
.super Ljava/lang/Object;
.source "TwGLSliderMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStepChanged(I)V
    .locals 1
    .parameter "step"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->restartSliderMenuTimer()V

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnAdjustContrastChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnAdjustContrastMenuSelectListener;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnAdjustContrastChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnAdjustContrastMenuSelectListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnAdjustContrastMenuSelectListener;->onAdjustContrastMenuSelect(I)V

    .line 297
    :cond_0
    return-void
.end method
