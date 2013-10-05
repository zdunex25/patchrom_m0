.class Lcom/android/camera/AbstractCameraActivity$35;
.super Ljava/lang/Object;
.source "AbstractCameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/AbstractCameraActivity;->handleBatteryOverheat()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/AbstractCameraActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/AbstractCameraActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2162
    iput-object p1, p0, Lcom/android/camera/AbstractCameraActivity$35;->this$0:Lcom/android/camera/AbstractCameraActivity;

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

    .line 2164
    const/16 v1, 0x1b

    if-ne p2, v1, :cond_0

    .line 2172
    :goto_0
    return v0

    .line 2168
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 2169
    iget-object v1, p0, Lcom/android/camera/AbstractCameraActivity$35;->this$0:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->finish()V

    goto :goto_0

    .line 2172
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
