.class Lcom/sec/android/app/camera/Camera$10;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->handlePluggedLowBattery(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 5086
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$10;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 5088
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$10;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/camera/Camera;->mLowBatteryDisableFlashPopupDisplayed:Z

    .line 5089
    return-void
.end method
