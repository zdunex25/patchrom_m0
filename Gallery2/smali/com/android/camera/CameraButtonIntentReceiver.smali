.class public Lcom/android/camera/CameraButtonIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CameraButtonIntentReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    .line 39
    new-instance v1, Lcom/android/camera/ComboPreferences;

    invoke-direct {v1, p1}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v1

    .line 41
    invoke-virtual {v0, v1}, Lcom/android/camera/CameraHolder;->tryOpen(I)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    if-nez v1, :cond_0

    .line 52
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->keep()V

    .line 45
    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 46
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    const-class v1, Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 48
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 51
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
