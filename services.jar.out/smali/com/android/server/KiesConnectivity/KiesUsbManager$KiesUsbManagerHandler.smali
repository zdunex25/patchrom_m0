.class Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;
.super Landroid/os/Handler;
.source "KiesUsbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/KiesConnectivity/KiesUsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KiesUsbManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;


# direct methods
.method constructor <init>(Lcom/android/server/KiesConnectivity/KiesUsbManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "l"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    .line 191
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 192
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 196
    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 273
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 199
    :sswitch_1
    iget-object v3, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    #calls: Lcom/android/server/KiesConnectivity/KiesUsbManager;->setCDFSInsert()V
    invoke-static {v3}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$100(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V

    .line 200
    const-string v3, "KiesUsbManager"

    const-string v4, "KiesUsbManagerHandler -> UsbMode.online"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 270
    :catch_0
    move-exception v2

    .line 271
    .local v2, e:Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 222
    .end local v2           #e:Ljava/lang/Exception;
    :sswitch_2
    :try_start_1
    const-string v3, "KiesUsbManager"

    const-string v4, "KiesUsbManagerHandler -> UsbMode.cdfs_eject"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :sswitch_3
    const-string v3, "KiesUsbManager"

    const-string v4, "KiesUsbManagerHandler -> UsbMode.autorun"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 232
    :sswitch_4
    iget-object v3, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    #getter for: Lcom/android/server/KiesConnectivity/KiesUsbManager;->usbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v3}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$200(Lcom/android/server/KiesConnectivity/KiesUsbManager;)Landroid/hardware/usb/UsbManager;

    move-result-object v3

    const-string v4, "acm"

    invoke-virtual {v3, v4}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 233
    .local v0, bEnabled_ACM:Z
    const-string v3, "persist.sys.usb.config"

    const-string v4, "none"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, config:Ljava/lang/String;
    const-string v3, "KiesUsbManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load_at -> persist.sys.usb.config: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-string v3, "KiesUsbManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load_at -> bEnabled_ACM: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    if-nez v0, :cond_0

    .line 237
    iget-object v3, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    #getter for: Lcom/android/server/KiesConnectivity/KiesUsbManager;->usbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v3}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$200(Lcom/android/server/KiesConnectivity/KiesUsbManager;)Landroid/hardware/usb/UsbManager;

    move-result-object v3

    const-string v4, "mass_storage,acm"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 238
    const-string v3, "KiesUsbManager"

    const-string v4, "Enabled_ACM -> mass_storage,acm"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 196
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x1388 -> :sswitch_2
        0x1770 -> :sswitch_3
        0x1b58 -> :sswitch_4
    .end sparse-switch
.end method
