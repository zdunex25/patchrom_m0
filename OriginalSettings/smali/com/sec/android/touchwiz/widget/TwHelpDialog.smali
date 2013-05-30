.class public Lcom/sec/android/touchwiz/widget/TwHelpDialog;
.super Landroid/app/Dialog;
.source "TwHelpDialog.java"


# instance fields
.field private fPunchEvent:Z

.field private mShowWrongInputToast:Z

.field private mTouchTransparencyMode:I

.field private mWrongInputToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    const v0, 0x7f11002b

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 23
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->mTouchTransparencyMode:I

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    .line 26
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->mShowWrongInputToast:Z

    .line 27
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->fPunchEvent:Z

    .line 43
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 46
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->mTouchTransparencyMode:I

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090d01

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    .line 51
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->mShowWrongInputToast:Z

    .line 52
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->fPunchEvent:Z

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .parameter "context"
    .parameter "cancelable"
    .parameter "cancelListener"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {p0, p2}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->setCancelable(Z)V

    .line 33
    invoke-virtual {p0, p3}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 34
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    .line 74
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->fPunchEvent:Z

    .line 78
    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->mTouchTransparencyMode:I

    packed-switch v0, :pswitch_data_0

    .line 90
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 93
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 99
    :cond_2
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->fPunchEvent:Z

    .line 101
    :cond_3
    return v2

    .line 80
    :pswitch_0
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->fPunchEvent:Z

    if-eqz v0, :cond_4

    .line 81
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 83
    :cond_4
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->mShowWrongInputToast:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method public setShowWrongInputToast(Z)V
    .locals 0
    .parameter "pShowWrongInputToast"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->mShowWrongInputToast:Z

    .line 65
    return-void
.end method

.method public setTouchTransparencyMode(I)V
    .locals 0
    .parameter "touchTransparencyMode"

    .prologue
    .line 56
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->mTouchTransparencyMode:I

    .line 57
    return-void
.end method
