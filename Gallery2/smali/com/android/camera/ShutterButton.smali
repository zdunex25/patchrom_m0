.class public Lcom/android/camera/ShutterButton;
.super Landroid/widget/ImageView;
.source "ShutterButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ShutterButton$OnShutterButtonListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

.field private mOldPressed:Z

.field private mTouchEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ShutterButton;->mTouchEnabled:Z

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ShutterButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/camera/ShutterButton;->callShutterButtonFocus(Z)V

    return-void
.end method

.method private callShutterButtonFocus(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    invoke-interface {v0, p1}, Lcom/android/camera/ShutterButton$OnShutterButtonListener;->onShutterButtonFocus(Z)V

    .line 119
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/camera/ShutterButton;->mTouchEnabled:Z

    if-eqz v0, :cond_0

    .line 60
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 62
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 78
    invoke-virtual {p0}, Lcom/android/camera/ShutterButton;->isPressed()Z

    move-result v0

    .line 79
    .local v0, pressed:Z
    iget-boolean v1, p0, Lcom/android/camera/ShutterButton;->mOldPressed:Z

    if-eq v0, v1, :cond_0

    .line 80
    if-nez v0, :cond_1

    .line 102
    new-instance v1, Lcom/android/camera/ShutterButton$1;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/ShutterButton$1;-><init>(Lcom/android/camera/ShutterButton;Z)V

    invoke-virtual {p0, v1}, Lcom/android/camera/ShutterButton;->post(Ljava/lang/Runnable;)Z

    .line 111
    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/ShutterButton;->mOldPressed:Z

    .line 113
    :cond_0
    return-void

    .line 109
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/camera/ShutterButton;->callShutterButtonFocus(Z)V

    goto :goto_0
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result v0

    .line 124
    .local v0, result:Z
    iget-object v1, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    invoke-interface {v1}, Lcom/android/camera/ShutterButton$OnShutterButtonListener;->onShutterButtonClick()V

    .line 127
    :cond_0
    return v0
.end method

.method public setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    .line 55
    return-void
.end method
