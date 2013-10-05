.class Lcom/android/camera/Camcorder$16;
.super Ljava/lang/Object;
.source "Camcorder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camcorder;->handlePluggedLowBattery(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camcorder;


# direct methods
.method constructor <init>(Lcom/android/camera/Camcorder;)V
    .locals 0
    .parameter

    .prologue
    .line 4504
    iput-object p1, p0, Lcom/android/camera/Camcorder$16;->this$0:Lcom/android/camera/Camcorder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 4506
    const/16 v1, 0x1b

    if-ne p2, v1, :cond_0

    .line 4515
    :goto_0
    return v0

    .line 4510
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x4

    if-eq p2, v1, :cond_1

    const/16 v1, 0x52

    if-ne p2, v1, :cond_2

    .line 4512
    :cond_1
    iget-object v1, p0, Lcom/android/camera/Camcorder$16;->this$0:Lcom/android/camera/Camcorder;

    iput-boolean v0, v1, Lcom/android/camera/Camcorder;->mLowBatteryDisableFlashPopupDisplayed:Z

    goto :goto_0

    .line 4515
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camcorder$16;->this$0:Lcom/android/camera/Camcorder;

    invoke-virtual {v0}, Lcom/android/camera/Camcorder;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
