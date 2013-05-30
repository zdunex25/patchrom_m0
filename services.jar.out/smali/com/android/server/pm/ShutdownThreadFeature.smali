.class public Lcom/android/server/pm/ShutdownThreadFeature;
.super Ljava/lang/Thread;
.source "ShutdownThreadFeature.java"


# static fields
.field protected static LedOffValue:I = 0x0

.field protected static LedOnValue:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static WiFiOff:Z

.field private static bluetoothOff:Z

.field private static nfcOff:Z

.field private static radioOff:Z

.field private static radioOff2:Z


# instance fields
.field private final bluetooth:Landroid/bluetooth/IBluetooth;

.field mContext:Landroid/content/Context;

.field private final nfc:Landroid/nfc/INfcAdapter;

.field private final phone:Lcom/android/internal/telephony/ITelephony;

.field private final phone2:Lcom/android/internal/telephony/ITelephony;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x6

    .line 47
    sput v0, Lcom/android/server/pm/ShutdownThreadFeature;->LedOnValue:I

    .line 48
    sput v0, Lcom/android/server/pm/ShutdownThreadFeature;->LedOffValue:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "TAG"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 65
    const-string v0, "nfc"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/ShutdownThreadFeature;->nfc:Landroid/nfc/INfcAdapter;

    .line 66
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/ShutdownThreadFeature;->phone:Lcom/android/internal/telephony/ITelephony;

    .line 67
    const-string v0, "bluetooth"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/ShutdownThreadFeature;->bluetooth:Landroid/bluetooth/IBluetooth;

    .line 68
    const-string v0, "phone2"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/ShutdownThreadFeature;->phone2:Lcom/android/internal/telephony/ITelephony;

    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/pm/ShutdownThreadFeature;->radioOff2:Z

    sput-boolean v0, Lcom/android/server/pm/ShutdownThreadFeature;->bluetoothOff:Z

    sput-boolean v0, Lcom/android/server/pm/ShutdownThreadFeature;->radioOff:Z

    sput-boolean v0, Lcom/android/server/pm/ShutdownThreadFeature;->nfcOff:Z

    .line 71
    return-void
.end method

.method public static SituationVolume(Landroid/media/AudioManager;Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "audioManager"
    .parameter "mp"

    .prologue
    .line 74
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const-string v1, "ShutdownThread"

    const-string v2, "set situation volume"

    invoke-static {v1, v2}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v1, "situation=8;device=0"

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 80
    .local v0, situationVol:F
    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/android/server/pm/ShutdownThreadFeature;->bluetoothOff:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    sput-boolean p0, Lcom/android/server/pm/ShutdownThreadFeature;->bluetoothOff:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/server/pm/ShutdownThreadFeature;)Landroid/bluetooth/IBluetooth;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/pm/ShutdownThreadFeature;->bluetooth:Landroid/bluetooth/IBluetooth;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/android/server/pm/ShutdownThreadFeature;->nfcOff:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    sput-boolean p0, Lcom/android/server/pm/ShutdownThreadFeature;->nfcOff:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/pm/ShutdownThreadFeature;)Landroid/nfc/INfcAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/pm/ShutdownThreadFeature;->nfc:Landroid/nfc/INfcAdapter;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/android/server/pm/ShutdownThreadFeature;->radioOff:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    sput-boolean p0, Lcom/android/server/pm/ShutdownThreadFeature;->radioOff:Z

    return p0
.end method


# virtual methods
.method protected preShutdownRadios(I)V
    .locals 5
    .parameter "timeout"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 85
    const-string v3, "ShutdownThread"

    const-string v4, "!@sys.deviceOffReq = 1"

    invoke-static {v3, v4}, Lcom/android/server/pm/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-string v3, "sys.deviceOffReq"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v3, "sys.radio.shutdown"

    const-string v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/ShutdownThreadFeature;->nfc:Landroid/nfc/INfcAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/pm/ShutdownThreadFeature;->nfc:Landroid/nfc/INfcAdapter;

    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v3

    if-ne v3, v2, :cond_5

    :cond_0
    move v3, v2

    :goto_0
    sput-boolean v3, Lcom/android/server/pm/ShutdownThreadFeature;->nfcOff:Z

    .line 95
    sget-boolean v3, Lcom/android/server/pm/ShutdownThreadFeature;->nfcOff:Z

    if-nez v3, :cond_1

    .line 96
    const-string v3, "ShutdownThread"

    const-string v4, "Turning off NFC..."

    invoke-static {v3, v4}, Lcom/android/server/pm/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v3, p0, Lcom/android/server/pm/ShutdownThreadFeature;->nfc:Landroid/nfc/INfcAdapter;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_1
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/ShutdownThreadFeature;->phone:Lcom/android/internal/telephony/ITelephony;

    if-nez v3, :cond_6

    move v3, v2

    :goto_2
    sput-boolean v3, Lcom/android/server/pm/ShutdownThreadFeature;->radioOff:Z

    .line 109
    sget-boolean v3, Lcom/android/server/pm/ShutdownThreadFeature;->radioOff:Z

    if-nez v3, :cond_2

    .line 110
    const-string v3, "ShutdownThread"

    const-string v4, "!@Turning off radio..."

    invoke-static {v3, v4}, Lcom/android/server/pm/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v3, p0, Lcom/android/server/pm/ShutdownThreadFeature;->phone:Lcom/android/internal/telephony/ITelephony;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 132
    :cond_2
    :goto_3
    :try_start_2
    iget-object v3, p0, Lcom/android/server/pm/ShutdownThreadFeature;->phone2:Lcom/android/internal/telephony/ITelephony;

    if-nez v3, :cond_3

    move v1, v2

    :cond_3
    sput-boolean v1, Lcom/android/server/pm/ShutdownThreadFeature;->radioOff2:Z

    .line 133
    sget-boolean v1, Lcom/android/server/pm/ShutdownThreadFeature;->radioOff2:Z

    if-nez v1, :cond_4

    .line 134
    const-string v1, "ShutdownThread"

    const-string v3, "Turning off radio2..."

    invoke-static {v1, v3}, Lcom/android/server/pm/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v1, p0, Lcom/android/server/pm/ShutdownThreadFeature;->phone2:Lcom/android/internal/telephony/ITelephony;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 142
    :cond_4
    :goto_4
    return-void

    :cond_5
    move v3, v1

    .line 93
    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "ShutdownThread"

    const-string v4, "RemoteException during NFC shutdown"

    invoke-static {v3, v4, v0}, Lcom/android/server/pm/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 101
    sput-boolean v2, Lcom/android/server/pm/ShutdownThreadFeature;->nfcOff:Z

    goto :goto_1

    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_6
    move v3, v1

    .line 108
    goto :goto_2

    .line 113
    :catch_1
    move-exception v0

    .line 114
    .restart local v0       #ex:Landroid/os/RemoteException;
    const-string v3, "ShutdownThread"

    const-string v4, "!@RemoteException during radio shutdown"

    invoke-static {v3, v4, v0}, Lcom/android/server/pm/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 115
    sput-boolean v2, Lcom/android/server/pm/ShutdownThreadFeature;->radioOff:Z

    goto :goto_3

    .line 137
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    .line 138
    .restart local v0       #ex:Landroid/os/RemoteException;
    const-string v1, "ShutdownThread"

    const-string v3, "RemoteException during radio shutdown"

    invoke-static {v1, v3, v0}, Lcom/android/server/pm/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 139
    sput-boolean v2, Lcom/android/server/pm/ShutdownThreadFeature;->radioOff2:Z

    goto :goto_4
.end method

.method public run()V
    .locals 0

    .prologue
    .line 272
    return-void
.end method

.method protected shutdownRadios(ILandroid/content/Context;)V
    .locals 10
    .parameter "timeout"
    .parameter "con"

    .prologue
    .line 147
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    int-to-long v8, p1

    add-long v3, v6, v8

    .line 148
    .local v3, endTime:J
    const/4 v1, 0x1

    new-array v5, v1, [Z

    .line 149
    .local v5, done:[Z
    iput-object p2, p0, Lcom/android/server/pm/ShutdownThreadFeature;->mContext:Landroid/content/Context;

    .line 150
    iget-object v1, p0, Lcom/android/server/pm/ShutdownThreadFeature;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 151
    .local v2, mWifiManager:Landroid/net/wifi/WifiManager;
    new-instance v0, Lcom/android/server/pm/ShutdownThreadFeature$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/ShutdownThreadFeature$1;-><init>(Lcom/android/server/pm/ShutdownThreadFeature;Landroid/net/wifi/WifiManager;J[Z)V

    .line 260
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 262
    int-to-long v6, p1

    :try_start_0
    invoke-virtual {v0, v6, v7}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :goto_0
    const/4 v1, 0x0

    aget-boolean v1, v5, v1

    if-nez v1, :cond_0

    .line 266
    const-string v1, "ShutdownThread"

    const-string v6, "Timed out waiting for NFC, Radio and Bluetooth shutdown."

    invoke-static {v1, v6}, Lcom/android/server/pm/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    return-void

    .line 263
    :catch_0
    move-exception v1

    goto :goto_0
.end method
