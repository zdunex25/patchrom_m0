.class Lcom/android/camera/Camera$16;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->handlePluggedLowBattery(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 6466
    iput-object p1, p0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 6468
    iget-object v0, p0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/Camera;->mLowBatteryDisableFlashPopupDisplayed:Z

    .line 6469
    return-void
.end method
