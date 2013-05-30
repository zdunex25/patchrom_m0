.class Lcom/android/server/pm/ShutdownThreadFeature$1;
.super Ljava/lang/Thread;
.source "ShutdownThreadFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/ShutdownThreadFeature;->shutdownRadios(ILandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/ShutdownThreadFeature;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J

.field final synthetic val$mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/android/server/pm/ShutdownThreadFeature;Landroid/net/wifi/WifiManager;J[Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->this$0:Lcom/android/server/pm/ShutdownThreadFeature;

    iput-object p2, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    iput-wide p3, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$endTime:J

    iput-object p5, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/16 v10, 0xa

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 153
    const/16 v0, 0x1f4

    .line 155
    .local v0, PHONE_STATE_POLL_SLEEP_MSEC:I
    const-string v3, "ShutdownThread"

    const-string v6, "!@before Bluetooth"

    invoke-static {v3, v6}, Lcom/android/server/pm/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->this$0:Lcom/android/server/pm/ShutdownThreadFeature;

    #getter for: Lcom/android/server/pm/ShutdownThreadFeature;->bluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v3}, Lcom/android/server/pm/ShutdownThreadFeature;->access$100(Lcom/android/server/pm/ShutdownThreadFeature;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->this$0:Lcom/android/server/pm/ShutdownThreadFeature;

    #getter for: Lcom/android/server/pm/ShutdownThreadFeature;->bluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v3}, Lcom/android/server/pm/ShutdownThreadFeature;->access$100(Lcom/android/server/pm/ShutdownThreadFeature;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I

    move-result v3

    if-ne v3, v10, :cond_6

    :cond_0
    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/android/server/pm/ShutdownThreadFeature;->access$002(Z)Z

    .line 159
    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$000()Z

    move-result v3

    if-nez v3, :cond_1

    .line 160
    const-string v3, "ShutdownThread"

    const-string v6, "!@Disabling Bluetooth..."

    invoke-static {v3, v6}, Lcom/android/server/pm/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v3, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->this$0:Lcom/android/server/pm/ShutdownThreadFeature;

    #getter for: Lcom/android/server/pm/ShutdownThreadFeature;->bluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v3}, Lcom/android/server/pm/ShutdownThreadFeature;->access$100(Lcom/android/server/pm/ShutdownThreadFeature;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Landroid/bluetooth/IBluetooth;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :cond_1
    :goto_1
    const-string v3, "ShutdownThread"

    const-string v6, "!@Waiting for NFC, Bluetooth and Radio..."

    invoke-static {v3, v6}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$endTime:J

    cmp-long v3, v6, v8

    if-gez v3, :cond_5

    .line 181
    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$000()Z

    move-result v3

    if-nez v3, :cond_2

    .line 183
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->this$0:Lcom/android/server/pm/ShutdownThreadFeature;

    #getter for: Lcom/android/server/pm/ShutdownThreadFeature;->bluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v3}, Lcom/android/server/pm/ShutdownThreadFeature;->access$100(Lcom/android/server/pm/ShutdownThreadFeature;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I

    move-result v3

    if-ne v3, v10, :cond_7

    move v3, v4

    :goto_3
    invoke-static {v3}, Lcom/android/server/pm/ShutdownThreadFeature;->access$002(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 198
    :cond_2
    :goto_4
    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$200()Z

    move-result v3

    if-nez v3, :cond_3

    .line 200
    :try_start_2
    iget-object v3, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->this$0:Lcom/android/server/pm/ShutdownThreadFeature;

    #getter for: Lcom/android/server/pm/ShutdownThreadFeature;->nfc:Landroid/nfc/INfcAdapter;
    invoke-static {v3}, Lcom/android/server/pm/ShutdownThreadFeature;->access$300(Lcom/android/server/pm/ShutdownThreadFeature;)Landroid/nfc/INfcAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v3

    if-ne v3, v4, :cond_8

    move v3, v4

    :goto_5
    invoke-static {v3}, Lcom/android/server/pm/ShutdownThreadFeature;->access$202(Z)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 211
    :cond_3
    :goto_6
    const-string v2, ""

    .line 212
    .local v2, repPhoneOff:Ljava/lang/String;
    const-string v3, "ril.deviceOffRes"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 214
    if-eqz v2, :cond_4

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 216
    const-string v3, "ShutdownThread"

    const-string v6, "!@PhoneOff req resp"

    invoke-static {v3, v6}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-static {v4}, Lcom/android/server/pm/ShutdownThreadFeature;->access$402(Z)Z

    .line 246
    :cond_4
    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$400()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$000()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$200()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 247
    const-string v3, "ShutdownThread"

    const-string v6, "!@NFC, Radio and Bluetooth shutdown complete."

    invoke-static {v3, v6}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v3, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$done:[Z

    aput-boolean v4, v3, v5

    .line 257
    .end local v2           #repPhoneOff:Ljava/lang/String;
    :cond_5
    return-void

    :cond_6
    move v3, v5

    .line 157
    goto/16 :goto_0

    .line 163
    :catch_0
    move-exception v1

    .line 164
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "ShutdownThread"

    const-string v6, "!@RemoteException during bluetooth shutdown"

    invoke-static {v3, v6, v1}, Lcom/android/server/pm/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 165
    invoke-static {v4}, Lcom/android/server/pm/ShutdownThreadFeature;->access$002(Z)Z

    goto/16 :goto_1

    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_7
    move v3, v5

    .line 183
    goto :goto_3

    .line 185
    :catch_1
    move-exception v1

    .line 186
    .restart local v1       #ex:Landroid/os/RemoteException;
    const-string v3, "ShutdownThread"

    const-string v6, "!@RemoteException during bluetooth shutdown"

    invoke-static {v3, v6, v1}, Lcom/android/server/pm/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 187
    invoke-static {v4}, Lcom/android/server/pm/ShutdownThreadFeature;->access$002(Z)Z

    goto :goto_4

    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_8
    move v3, v5

    .line 200
    goto :goto_5

    .line 201
    :catch_2
    move-exception v1

    .line 202
    .restart local v1       #ex:Landroid/os/RemoteException;
    const-string v3, "ShutdownThread"

    const-string v6, "RemoteException during NFC shutdown"

    invoke-static {v3, v6, v1}, Lcom/android/server/pm/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 203
    invoke-static {v4}, Lcom/android/server/pm/ShutdownThreadFeature;->access$202(Z)Z

    goto :goto_6

    .line 252
    .end local v1           #ex:Landroid/os/RemoteException;
    .restart local v2       #repPhoneOff:Ljava/lang/String;
    :cond_9
    const-string v3, "ShutdownThread"

    const-string v6, "!@before SystemClock.sleep(PHONE_STATE_POLL_SLEEP_MSEC)"

    invoke-static {v3, v6}, Lcom/android/server/pm/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 254
    const-string v3, "ShutdownThread"

    const-string v6, "!@after SystemClock.sleep(PHONE_STATE_POLL_SLEEP_MSEC)"

    invoke-static {v3, v6}, Lcom/android/server/pm/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-string v3, "ShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!@[Phone off retry:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$endTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " radioOff="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$400()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bluetoothOff="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$000()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/pm/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method
