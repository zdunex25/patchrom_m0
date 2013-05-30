.class Lcom/android/OriginalSettings/deviceinfo/UsbSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/deviceinfo/UsbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/deviceinfo/UsbSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/deviceinfo/UsbSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/OriginalSettings/deviceinfo/UsbSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "content"
    .parameter "intent"

    .prologue
    .line 58
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableSUA"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 59
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/OriginalSettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v0}, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->access$000(Lcom/android/OriginalSettings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    const-string v1, "mtp"

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/OriginalSettings/deviceinfo/UsbSettings;

    const-string v1, "mtp"

    #calls: Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->access$100(Lcom/android/OriginalSettings/deviceinfo/UsbSettings;Ljava/lang/String;)V

    .line 67
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/OriginalSettings/deviceinfo/UsbSettings;

    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/OriginalSettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v1}, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->access$000(Lcom/android/OriginalSettings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->access$100(Lcom/android/OriginalSettings/deviceinfo/UsbSettings;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/OriginalSettings/deviceinfo/UsbSettings;

    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/OriginalSettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v1}, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->access$000(Lcom/android/OriginalSettings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->access$100(Lcom/android/OriginalSettings/deviceinfo/UsbSettings;Ljava/lang/String;)V

    goto :goto_0
.end method
