.class public Lcom/android/updater/UpdateCheckReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpdateCheckReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method protected static setAlarm(Landroid/content/Context;)V
    .locals 8
    .parameter "ctx"

    .prologue
    .line 113
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 114
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v7, Landroid/content/Intent;

    const-class v1, Lcom/android/updater/UpdateCheckReceiver;

    invoke-direct {v7, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    .local v7, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    const/high16 v2, 0x1000

    invoke-static {p0, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 117
    .local v6, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 118
    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 119
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/updater/Config;->getInstance(Landroid/content/Context;)Lcom/android/updater/Config;

    move-result-object v0

    .line 36
    .local v0, cfg:Lcom/android/updater/Config;
    invoke-virtual {v0}, Lcom/android/updater/Config;->hasStoredUpdate()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 37
    invoke-virtual {v0}, Lcom/android/updater/Config;->getStoredUpdate()Lcom/android/updater/RomInfo;

    move-result-object v1

    .line 38
    .local v1, info:Lcom/android/updater/RomInfo;
    invoke-static {v1}, Lcom/android/updater/Utils;->isUpdate(Lcom/android/updater/RomInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 39
    invoke-virtual {v0}, Lcom/android/updater/Config;->getShowNotif()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 40
    invoke-static {p1, v1}, Lcom/android/updater/Utils;->showUpdateNotif(Landroid/content/Context;Lcom/android/updater/RomInfo;)V

    .line 41
    const-string v5, "OTA::Receiver"

    const-string v6, "Found stored update"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .end local v1           #info:Lcom/android/updater/RomInfo;
    :goto_0
    invoke-static {}, Lcom/android/updater/Utils;->isROMSupported()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 54
    invoke-static {p1}, Lcom/android/updater/Utils;->marketAvailable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 55
    const-string v5, "OTA::Receiver"

    const-string v6, "Found market, trying GCM"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gcm/GCMRegistrar;->checkDevice(Landroid/content/Context;)V

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gcm/GCMRegistrar;->checkManifest(Landroid/content/Context;)V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gcm/GCMRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, regId:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    .line 60
    invoke-virtual {v0}, Lcom/android/updater/Config;->upToDate()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 61
    const-string v5, "OTA::GCMRegister"

    const-string v6, "Already registered"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .end local v3           #regId:Ljava/lang/String;
    :goto_1
    return-void

    .line 43
    .restart local v1       #info:Lcom/android/updater/RomInfo;
    :cond_0
    const-string v5, "OTA::Receiver"

    const-string v6, "Found stored update, notif not shown"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 46
    :cond_1
    const-string v5, "OTA::Receiver"

    const-string v6, "Found invalid stored update"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {v0}, Lcom/android/updater/Config;->clearStoredUpdate()V

    goto :goto_0

    .line 50
    .end local v1           #info:Lcom/android/updater/RomInfo;
    :cond_2
    const-string v5, "OTA::Receiver"

    const-string v6, "No stored update"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 63
    .restart local v3       #regId:Ljava/lang/String;
    :cond_3
    const-string v5, "OTA::GCMRegister"

    const-string v6, "Already registered, out-of-date, reregistering"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gcm/GCMRegistrar;->unregister(Landroid/content/Context;)V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/String;

    const-string v7, "1068482628480"

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/google/android/gcm/GCMRegistrar;->register(Landroid/content/Context;[Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Lcom/android/updater/Config;->setValuesToCurrent()V

    .line 67
    const-string v5, "OTA::GCMRegister"

    const-string v6, "GCM registered"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 70
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/String;

    const-string v7, "1068482628480"

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/google/android/gcm/GCMRegistrar;->register(Landroid/content/Context;[Ljava/lang/String;)V

    .line 71
    const-string v5, "OTA::GCMRegister"

    const-string v6, "GCM registered"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 74
    .end local v3           #regId:Ljava/lang/String;
    :cond_5
    const-string v5, "OTA::Receiver"

    const-string v6, "No market, using pull method"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 76
    invoke-static {p1}, Lcom/android/updater/UpdateCheckReceiver;->setAlarm(Landroid/content/Context;)V

    .line 79
    :cond_6
    const-string v5, "power"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 80
    .local v2, pm:Landroid/os/PowerManager;
    const-class v5, Lcom/android/updater/UpdateCheckReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v7, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    .line 81
    .local v4, wl:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 83
    new-instance v5, Lcom/android/updater/FetchRomInfoTask;

    new-instance v6, Lcom/android/updater/UpdateCheckReceiver$1;

    invoke-direct {v6, p0, v0, p1, v4}, Lcom/android/updater/UpdateCheckReceiver$1;-><init>(Lcom/android/updater/UpdateCheckReceiver;Lcom/android/updater/Config;Landroid/content/Context;Landroid/os/PowerManager$WakeLock;)V

    invoke-direct {v5, p1, v6}, Lcom/android/updater/FetchRomInfoTask;-><init>(Landroid/content/Context;Lcom/android/updater/FetchRomInfoTask$RomInfoListener;)V

    new-array v6, v8, [Ljava/lang/Void;

    .line 105
    invoke-virtual {v5, v6}, Lcom/android/updater/FetchRomInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 108
    .end local v2           #pm:Landroid/os/PowerManager;
    .end local v4           #wl:Landroid/os/PowerManager$WakeLock;
    :cond_7
    const-string v5, "OTA::Receiver"

    const-string v6, "Unsupported ROM"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
