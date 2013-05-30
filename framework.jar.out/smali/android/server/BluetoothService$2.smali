.class Landroid/server/BluetoothService$2;
.super Ljava/lang/Thread;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/server/BluetoothService;->createLEBondLowSec(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothService;

.field final synthetic val$secaddress:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/server/BluetoothService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1628
    iput-object p1, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    iput-object p2, p0, Landroid/server/BluetoothService$2;->val$secaddress:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1631
    const-wide/16 v1, 0x2710

    :try_start_0
    invoke-static {v1, v2}, Landroid/server/BluetoothService$2;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1635
    :goto_0
    iget-object v1, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    iget-object v2, p0, Landroid/server/BluetoothService$2;->val$secaddress:Ljava/lang/String;

    #calls: Landroid/server/BluetoothService;->createBondLE(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Landroid/server/BluetoothService;->access$500(Landroid/server/BluetoothService;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1636
    iget-object v1, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    iget-object v2, p0, Landroid/server/BluetoothService$2;->val$secaddress:Ljava/lang/String;

    const-string/jumbo v3, "trylowsec"

    const-string v4, "false"

    invoke-virtual {v1, v2, v3, v4}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    :goto_1
    return-void

    .line 1632
    :catch_0
    move-exception v0

    .line 1633
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothService"

    const-string v2, "Thread exception in onCreatePairedDeviceResult"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1639
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    iget-object v2, p0, Landroid/server/BluetoothService$2;->val$secaddress:Ljava/lang/String;

    const-string/jumbo v3, "trylowsec"

    const-string v4, "false"

    invoke-virtual {v1, v2, v3, v4}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
