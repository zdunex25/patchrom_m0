.class public final Lcom/android/OriginalSettings/bluetooth/BluetoothNotiBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothNotiBroadcastReceiver.java"


# static fields
.field private static mNotiManager:Landroid/app/NotificationManager;

.field private static quickPanelOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/OriginalSettings/bluetooth/BluetoothNotiBroadcastReceiver;->quickPanelOn:Z

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/android/OriginalSettings/bluetooth/BluetoothNotiBroadcastReceiver;->mNotiManager:Landroid/app/NotificationManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private destroyNotification(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 106
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/android/OriginalSettings/bluetooth/BluetoothNotiBroadcastReceiver;->mNotiManager:Landroid/app/NotificationManager;

    .line 107
    sget-object v0, Lcom/android/OriginalSettings/bluetooth/BluetoothNotiBroadcastReceiver;->mNotiManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 108
    sget-object v0, Lcom/android/OriginalSettings/bluetooth/BluetoothNotiBroadcastReceiver;->mNotiManager:Landroid/app/NotificationManager;

    const v1, 0x1080080

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 109
    const/4 v0, 0x0

    sput-object v0, Lcom/android/OriginalSettings/bluetooth/BluetoothNotiBroadcastReceiver;->mNotiManager:Landroid/app/NotificationManager;

    .line 111
    :cond_0
    return-void
.end method

.method private displayNotification(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const v7, 0x7f0900be

    .line 85
    new-instance v0, Landroid/app/Notification;

    const v3, 0x7f020313

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 88
    .local v0, notification:Landroid/app/Notification;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 89
    .local v2, settingIntent:Landroid/content/Intent;
    const-string v3, "android.settings.BLUETOOTH_SETTINGS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 91
    const/4 v3, 0x0

    const/high16 v4, 0x4000

    invoke-static {p1, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 94
    .local v1, pending:Landroid/app/PendingIntent;
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0900bf

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p1, v3, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 96
    iget v3, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 97
    iget v3, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v0, Landroid/app/Notification;->defaults:I

    .line 99
    const-string v3, "notification"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    sput-object v3, Lcom/android/OriginalSettings/bluetooth/BluetoothNotiBroadcastReceiver;->mNotiManager:Landroid/app/NotificationManager;

    .line 100
    sget-object v3, Lcom/android/OriginalSettings/bluetooth/BluetoothNotiBroadcastReceiver;->mNotiManager:Landroid/app/NotificationManager;

    if-eqz v3, :cond_0

    .line 101
    sget-object v3, Lcom/android/OriginalSettings/bluetooth/BluetoothNotiBroadcastReceiver;->mNotiManager:Landroid/app/NotificationManager;

    const v4, 0x1080080

    invoke-virtual {v3, v4, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 103
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0xc

    const/high16 v2, -0x8000

    .line 46
    const-string v0, "BluetoothNotiBroadcastReceiver"

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 50
    const-string v1, "android.systemui.statusbar.action.BLUETOOTH_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/OriginalSettings/bluetooth/BluetoothNotiBroadcastReceiver;->quickPanelOn:Z

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 53
    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 55
    if-ne v3, v0, :cond_0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/bluetooth/BluetoothNotiBroadcastReceiver;->destroyNotification(Landroid/content/Context;)V

    goto :goto_0

    .line 58
    :cond_2
    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 59
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/bluetooth/BluetoothNotiBroadcastReceiver;->destroyNotification(Landroid/content/Context;)V

    goto :goto_0

    .line 60
    :cond_3
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 63
    const/16 v1, 0xd

    if-ne v1, v0, :cond_4

    .line 64
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/bluetooth/BluetoothNotiBroadcastReceiver;->destroyNotification(Landroid/content/Context;)V

    goto :goto_0

    .line 65
    :cond_4
    if-ne v3, v0, :cond_0

    .line 66
    sget-boolean v0, Lcom/android/OriginalSettings/bluetooth/BluetoothNotiBroadcastReceiver;->quickPanelOn:Z

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/OriginalSettings/bluetooth/BluetoothNotiBroadcastReceiver;->quickPanelOn:Z

    .line 69
    invoke-static {p1}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 70
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/bluetooth/BluetoothNotiBroadcastReceiver;->displayNotification(Landroid/content/Context;)V

    goto :goto_0

    .line 72
    :cond_5
    sget-boolean v0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mIsForegroundBtSettings:Z

    if-nez v0, :cond_0

    .line 73
    const-string v0, "BluetoothNotiBroadcastReceiver"

    const-string v1, "Call list dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 75
    const-class v1, Lcom/android/OriginalSettings/bluetooth/BluetoothScanDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 77
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
