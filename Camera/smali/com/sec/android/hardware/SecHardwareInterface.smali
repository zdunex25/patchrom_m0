.class public Lcom/sec/android/hardware/SecHardwareInterface;
.super Ljava/lang/Object;
.source "SecHardwareInterface.java"


# static fields
.field public static final BROWSER:I = 0x4

.field public static final CALL:I = 0x1

.field public static final CAMERA:I = 0x6

.field private static final DAEMON_SOCKET:Ljava/lang/String; = "pps"

.field private static EPEN_SAVINGMODE_PATH:Ljava/lang/String; = null

.field private static EPEN_TYPE_PATH:Ljava/lang/String; = null

.field public static final HOTSPOT:I = 0x5

.field private static final MAX_CMD_LEN:I = 0x64

.field public static final MDNIE_BROSWER_MODE:I = 0x8

.field public static final MDNIE_CAMERA_MODE:I = 0x4

.field public static final MDNIE_EBOOK_MODE:I = 0x9

.field public static final MDNIE_GALLERY_MODE:I = 0x6

.field public static final MDNIE_UI_MODE:I = 0x0

.field public static final MDNIE_VIDEO_MODE:I = 0x1

.field public static final MDNIE_VT_MODE:I = 0x7

.field public static final MUSIC:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SecHardwareInterface"

.field public static final TORCH_BRIGHTNESS_MAX:I = 0x1

.field public static final TORCH_BRIGHTNESS_MIN:I = 0xe

.field public static final TORCH_BRIGHTNESS_OFF:I = 0x0

.field public static final TORCH_BRIGHTNESS_STANDARD:I = 0x1

.field public static final VIDEO:I = 0x2

.field private static daemonSock:Landroid/net/LocalSocket;

.field private static in:Ljava/io/InputStream;

.field private static isCabcDaemonConnected:Z

.field private static out:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 179
    sput-object v0, Lcom/sec/android/hardware/SecHardwareInterface;->in:Ljava/io/InputStream;

    .line 180
    sput-object v0, Lcom/sec/android/hardware/SecHardwareInterface;->out:Ljava/io/OutputStream;

    .line 181
    sput-object v0, Lcom/sec/android/hardware/SecHardwareInterface;->daemonSock:Landroid/net/LocalSocket;

    .line 182
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/hardware/SecHardwareInterface;->isCabcDaemonConnected:Z

    .line 519
    const-string v0, "/sys/class/sec/sec_epen/epen_type"

    sput-object v0, Lcom/sec/android/hardware/SecHardwareInterface;->EPEN_TYPE_PATH:Ljava/lang/String;

    .line 559
    const-string v0, "/sys/class/sec/sec_epen/epen_saving_mode"

    sput-object v0, Lcom/sec/android/hardware/SecHardwareInterface;->EPEN_SAVINGMODE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method private static CabcDaemonConnect()V
    .locals 4

    .prologue
    .line 190
    const-string v2, "SecHardwareInterface"

    const-string v3, "CabcDaemonConnect ()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :try_start_0
    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    sput-object v2, Lcom/sec/android/hardware/SecHardwareInterface;->daemonSock:Landroid/net/LocalSocket;

    .line 194
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v2, "pps"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 196
    .local v0, address:Landroid/net/LocalSocketAddress;
    sget-object v2, Lcom/sec/android/hardware/SecHardwareInterface;->daemonSock:Landroid/net/LocalSocket;

    invoke-virtual {v2, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 197
    sget-object v2, Lcom/sec/android/hardware/SecHardwareInterface;->daemonSock:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    sput-object v2, Lcom/sec/android/hardware/SecHardwareInterface;->in:Ljava/io/InputStream;

    .line 198
    sget-object v2, Lcom/sec/android/hardware/SecHardwareInterface;->daemonSock:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    sput-object v2, Lcom/sec/android/hardware/SecHardwareInterface;->out:Ljava/io/OutputStream;

    .line 199
    sget-object v2, Lcom/sec/android/hardware/SecHardwareInterface;->in:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/android/hardware/SecHardwareInterface;->out:Ljava/io/OutputStream;

    if-eqz v2, :cond_0

    .line 200
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sec/android/hardware/SecHardwareInterface;->isCabcDaemonConnected:Z

    .line 207
    :goto_0
    return-void

    .line 203
    :cond_0
    const-string v2, "SecHardwareInterface"

    const-string v3, "CabcDaemonConnect () - error getting streams"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v1

    .line 205
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static CablDaemonControl(Ljava/lang/String;)V
    .locals 8
    .parameter "cmd"

    .prologue
    const/4 v7, 0x0

    .line 211
    sget-object v5, Lcom/sec/android/hardware/SecHardwareInterface;->out:Ljava/io/OutputStream;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/sec/android/hardware/SecHardwareInterface;->in:Ljava/io/InputStream;

    if-eqz v5, :cond_0

    .line 213
    :try_start_0
    const-string v5, "SecHardwareInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CablDaemonControl ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 217
    .local v4, send_buf:[B
    sget-object v5, Lcom/sec/android/hardware/SecHardwareInterface;->out:Ljava/io/OutputStream;

    invoke-virtual {v5, v4}, Ljava/io/OutputStream;->write([B)V

    .line 218
    sget-object v5, Lcom/sec/android/hardware/SecHardwareInterface;->out:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 221
    const/16 v5, 0x64

    new-array v2, v5, [B

    .line 222
    .local v2, recv_buf:[B
    sget-object v5, Lcom/sec/android/hardware/SecHardwareInterface;->in:Ljava/io/InputStream;

    const/4 v6, 0x0

    array-length v7, v2

    invoke-virtual {v5, v2, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 223
    .local v1, len:I
    new-instance v3, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v3, v2, v5, v1}, Ljava/lang/String;-><init>([BII)V

    .line 225
    .local v3, response:Ljava/lang/String;
    const-string v5, "SecHardwareInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CablDaemonControl ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): response = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v1           #len:I
    .end local v2           #recv_buf:[B
    .end local v3           #response:Ljava/lang/String;
    .end local v4           #send_buf:[B
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 231
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const-string v5, "SecHardwareInterface"

    const-string v6, "CablDaemonControl: streams null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    sput-boolean v7, Lcom/sec/android/hardware/SecHardwareInterface;->isCabcDaemonConnected:Z

    goto :goto_0
.end method

.method private static IsCabcDaemonConnected()Z
    .locals 3

    .prologue
    .line 185
    const-string v0, "SecHardwareInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsCabcDaemonConnected() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/android/hardware/SecHardwareInterface;->isCabcDaemonConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    sget-boolean v0, Lcom/sec/android/hardware/SecHardwareInterface;->isCabcDaemonConnected:Z

    return v0
.end method

.method public static enableFastGloveMode(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    .line 596
    const-string v1, "SecHardwareInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableFastGloveMode ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const/4 v0, 0x1

    .line 609
    .local v0, ret:Z
    return v0
.end method

.method public static enableGloveMode(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    .line 577
    const-string v1, "SecHardwareInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableGloveMode ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const/4 v0, 0x1

    .line 592
    .local v0, ret:Z
    return v0
.end method

.method public static enableHoverEvent(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 569
    const-string v0, "SecHardwareInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableHoverEvent ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    const/4 v0, 0x0

    return v0
.end method

.method public static enableISPFirmwareUpdate(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 613
    const-string v0, "SecHardwareInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableISPFirmwareUpdate to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const-string v1, "/sys/class/camera/rear/rear_checkApp"

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEPenType()I
    .locals 10

    .prologue
    const/4 v6, -0x1

    .line 528
    const/4 v0, 0x0

    .line 529
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v5, -0x1

    .line 533
    .local v5, type:I
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/FileInputStream;

    sget-object v9, Lcom/sec/android/hardware/SecHardwareInterface;->EPEN_TYPE_PATH:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 540
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v5

    .line 548
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :goto_0
    move v6, v5

    .line 553
    .end local v0           #br:Ljava/io/BufferedReader;
    :cond_0
    :goto_1
    return v6

    .line 535
    .restart local v0       #br:Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 536
    .local v2, e:Ljava/io/FileNotFoundException;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 549
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 550
    .local v3, ee:Ljava/io/IOException;
    :goto_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 541
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #ee:Ljava/io/IOException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_2
    move-exception v4

    .line 542
    .local v4, ne:Ljava/lang/NumberFormatException;
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 543
    if-eqz v1, :cond_0

    .line 544
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 549
    .end local v4           #ne:Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v3

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static setAmoledACL(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 245
    const-string v0, "SecHardwareInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAmoledACL ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string v1, "/sys/class/lcd/panel/power_reduce"

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setAmoledVideoGamma(Z)Z
    .locals 3
    .parameter "videomode"

    .prologue
    .line 237
    const-string v0, "SecHardwareInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAmoledACL ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public static setBatteryADC(Ljava/lang/String;Z)V
    .locals 9
    .parameter "app"
    .parameter "enable"

    .prologue
    .line 339
    const/4 v5, 0x0

    .line 344
    .local v5, path:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/sys/class/power_supply/battery/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 346
    const-string v7, "SecHardwareInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setBatteryADC path = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", ("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p1, :cond_0

    const-string v6, "true"

    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/4 v3, 0x0

    .line 350
    .local v3, out:Ljava/io/OutputStream;
    const/16 v6, 0x64

    :try_start_0
    new-array v0, v6, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 353
    .local v0, buffer:[B
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 359
    .end local v3           #out:Ljava/io/OutputStream;
    .local v4, out:Ljava/io/OutputStream;
    if-eqz p1, :cond_1

    .line 360
    const/4 v6, 0x0

    const/16 v7, 0x31

    :try_start_2
    aput-byte v7, v0, v6

    .line 364
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 365
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v3, v4

    .line 374
    .end local v0           #buffer:[B
    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :goto_2
    return-void

    .line 346
    .end local v3           #out:Ljava/io/OutputStream;
    :cond_0
    const-string v6, "false"

    goto :goto_0

    .line 354
    .restart local v0       #buffer:[B
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 355
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 366
    .end local v0           #buffer:[B
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 367
    .local v1, e:Ljava/io/IOException;
    :goto_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 369
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 370
    :catch_2
    move-exception v2

    .line 371
    .local v2, err:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 362
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #err:Ljava/lang/Exception;
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v0       #buffer:[B
    .restart local v4       #out:Ljava/io/OutputStream;
    :cond_1
    const/4 v6, 0x0

    const/16 v7, 0x30

    :try_start_5
    aput-byte v7, v0, v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 366
    :catch_3
    move-exception v1

    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    goto :goto_3
.end method

.method public static setBatteryUse(IZ)V
    .locals 2
    .parameter "module"
    .parameter "enable"

    .prologue
    .line 59
    packed-switch p0, :pswitch_data_0

    .line 84
    :goto_0
    return-void

    .line 61
    :pswitch_0
    :try_start_0
    const-string v1, "call"

    invoke-static {v1, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 64
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    const-string v1, "video"

    invoke-static {v1, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    goto :goto_0

    .line 67
    :pswitch_2
    const-string v1, "music"

    invoke-static {v1, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    goto :goto_0

    .line 70
    :pswitch_3
    const-string v1, "browser"

    invoke-static {v1, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    goto :goto_0

    .line 73
    :pswitch_4
    const-string v1, "hotspot"

    invoke-static {v1, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    goto :goto_0

    .line 76
    :pswitch_5
    const-string v1, "camera"

    invoke-static {v1, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static setEPenSavingmode(I)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 562
    const-string v0, "SecHardwareInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEPenSavingmode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    sget-object v0, Lcom/sec/android/hardware/SecHardwareInterface;->EPEN_SAVINGMODE_PATH:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static setEPenType(I)Z
    .locals 3
    .parameter "type"

    .prologue
    .line 522
    const-string v0, "SecHardwareInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEPentype to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    sget-object v0, Lcom/sec/android/hardware/SecHardwareInterface;->EPEN_TYPE_PATH:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static setEpenHandType(I)V
    .locals 8
    .parameter "handtype"

    .prologue
    .line 491
    const-string v4, "/sys/class/sec/sec_epen/epen_hand"

    .line 492
    .local v4, path:Ljava/lang/String;
    const/4 v2, 0x0

    .line 494
    .local v2, out:Ljava/io/OutputStream;
    const-string v5, "SecHardwareInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setHandType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 503
    .end local v2           #out:Ljava/io/OutputStream;
    .local v3, out:Ljava/io/OutputStream;
    if-nez p0, :cond_1

    .line 504
    const/16 v5, 0x30

    :try_start_1
    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write(I)V

    .line 507
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    .line 516
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :goto_1
    return-void

    .line 499
    :catch_0
    move-exception v0

    .line 500
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 508
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 509
    .local v0, e:Ljava/io/IOException;
    :goto_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 511
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 512
    :catch_2
    move-exception v1

    .line 513
    .local v1, err:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 505
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #err:Ljava/lang/Exception;
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :cond_1
    const/4 v5, 0x1

    if-ne p0, v5, :cond_0

    .line 506
    const/16 v5, 0x31

    :try_start_4
    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 508
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_2
.end method

.method public static setMaxCPUFreq(Ljava/lang/String;)V
    .locals 8
    .parameter "max_freq"

    .prologue
    .line 383
    const-string v4, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    .line 384
    .local v4, path:Ljava/lang/String;
    const/4 v2, 0x0

    .line 386
    .local v2, out:Ljava/io/OutputStream;
    const-string v5, "SecHardwareInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setMaxCPUFreq: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 395
    .end local v2           #out:Ljava/io/OutputStream;
    .local v3, out:Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 396
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    .line 405
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 397
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 398
    .local v0, e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 400
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 401
    :catch_2
    move-exception v1

    .line 402
    .local v1, err:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 397
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #err:Ljava/lang/Exception;
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public static setPlayVideoSpeed(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 321
    const-string v0, "SecHardwareInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlayVideoSpeed ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method public static setPowerSaveFPS(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 377
    const-string v1, "SecHardwareInterface"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPowerSaveFPS ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const-string v1, "pwr.powersave_fps"

    if-eqz p0, :cond_1

    const-string v0, "1"

    :goto_1
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    return-void

    .line 377
    :cond_0
    const-string v0, "false"

    goto :goto_0

    .line 379
    :cond_1
    const-string v0, "0"

    goto :goto_1
.end method

.method public static setTconUIMode(I)Z
    .locals 3
    .parameter "mode"

    .prologue
    .line 306
    const-string v0, "SecHardwareInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTconUIMode ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const-string v0, "/sys/class/tcon/tcon/mode"

    invoke-static {v0, p0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static setTorchLight(I)V
    .locals 10
    .parameter "level"

    .prologue
    .line 437
    const-string v7, "SecHardwareInterface"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setTorchLight (level = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const/4 v2, 0x0

    .line 440
    .local v2, fw:Ljava/io/FileWriter;
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 444
    .local v5, modelname:Ljava/lang/String;
    const-string v7, "GT-N7000"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "GT-I9220"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 445
    :cond_0
    const-string v7, "SecHardwareInterface"

    const-string v8, "Torch path is sys/class/leds/leds-sec/brightness"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const-string v6, "sys/class/leds/leds-sec/brightness"

    .line 458
    .local v6, path:Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 459
    .local v1, fl:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 460
    const-string v6, "sys/class/camera/rear/rear_flash"

    .line 462
    :cond_1
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    .line 464
    .end local v2           #fw:Ljava/io/FileWriter;
    .local v3, fw:Ljava/io/FileWriter;
    if-lez p0, :cond_6

    const/16 v7, 0xf

    if-ge p0, v7, :cond_6

    .line 465
    :try_start_1
    const-string v7, "SecHardwareInterface"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "torch on level = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 467
    .local v4, lLevel:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 480
    .end local v4           #lLevel:Ljava/lang/String;
    :goto_1
    if-eqz v3, :cond_9

    .line 482
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v2, v3

    .line 488
    .end local v1           #fl:Ljava/io/File;
    .end local v3           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    :cond_2
    :goto_2
    return-void

    .line 447
    .end local v6           #path:Ljava/lang/String;
    :cond_3
    const-string v7, "SHV-E160S"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "SHV-E160K"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "SHV-E160L"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 450
    :cond_4
    const-string v7, "SecHardwareInterface"

    const-string v8, "Torch path is /sys/class/ledflash/sec_ledflash/torch"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const-string v6, "/sys/class/ledflash/sec_ledflash/torch"

    .restart local v6       #path:Ljava/lang/String;
    goto :goto_0

    .line 453
    .end local v6           #path:Ljava/lang/String;
    :cond_5
    const-string v7, "SecHardwareInterface"

    const-string v8, "Torch path is sys/class/camera/flash/rear_flash"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const-string v6, "sys/class/camera/flash/rear_flash"

    .restart local v6       #path:Ljava/lang/String;
    goto :goto_0

    .line 468
    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v1       #fl:Ljava/io/File;
    .restart local v3       #fw:Ljava/io/FileWriter;
    :cond_6
    if-nez p0, :cond_7

    .line 469
    :try_start_3
    const-string v7, "SecHardwareInterface"

    const-string v8, "torch off"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const-string v7, "0"

    invoke-virtual {v3, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 475
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 476
    .end local v1           #fl:Ljava/io/File;
    .end local v3           #fw:Ljava/io/FileWriter;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v2       #fw:Ljava/io/FileWriter;
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 480
    if-eqz v2, :cond_2

    .line 482
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 483
    :catch_1
    move-exception v0

    .line 484
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 472
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v1       #fl:Ljava/io/File;
    .restart local v3       #fw:Ljava/io/FileWriter;
    :cond_7
    :try_start_6
    const-string v7, "SecHardwareInterface"

    const-string v8, "This brightness level does not support. the torch off is set"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const-string v7, "0"

    invoke-virtual {v3, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 477
    :catch_2
    move-exception v0

    move-object v2, v3

    .line 478
    .end local v1           #fl:Ljava/io/File;
    .end local v3           #fw:Ljava/io/FileWriter;
    .restart local v0       #e:Ljava/io/IOException;
    .restart local v2       #fw:Ljava/io/FileWriter;
    :goto_4
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 480
    if-eqz v2, :cond_2

    .line 482
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_2

    .line 483
    :catch_3
    move-exception v0

    .line 484
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 483
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v1       #fl:Ljava/io/File;
    .restart local v3       #fw:Ljava/io/FileWriter;
    :catch_4
    move-exception v0

    .line 484
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 485
    .end local v3           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    goto :goto_2

    .line 480
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fl:Ljava/io/File;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v2, :cond_8

    .line 482
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 485
    :cond_8
    :goto_6
    throw v7

    .line 483
    :catch_5
    move-exception v0

    .line 484
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 480
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v1       #fl:Ljava/io/File;
    .restart local v3       #fw:Ljava/io/FileWriter;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    goto :goto_5

    .line 477
    .end local v1           #fl:Ljava/io/File;
    :catch_6
    move-exception v0

    goto :goto_4

    .line 475
    :catch_7
    move-exception v0

    goto :goto_3

    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v1       #fl:Ljava/io/File;
    .restart local v3       #fw:Ljava/io/FileWriter;
    :cond_9
    move-object v2, v3

    .end local v3           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    goto/16 :goto_2
.end method

.method public static setTorchLight(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 415
    if-eqz p0, :cond_0

    .line 416
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 420
    :goto_0
    return-void

    .line 418
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    goto :goto_0
.end method

.method public static setTouchJitterFilter(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 329
    const-string v0, "SecHardwareInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTouchJitterFilter ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v0, 0x0

    return v0
.end method

.method public static setmDNIeColorBlind(Z[I)Z
    .locals 3
    .parameter "enable"
    .parameter "result"

    .prologue
    .line 312
    const-string v0, "SecHardwareInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setmDNIeColorBlind ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-string v1, "/sys/class/mdnie/mdnie/accessibility"

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {v1, v0, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite_CB(Ljava/lang/String;I[I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setmDNIeNegative(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 294
    const-string v0, "SecHardwareInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setmDNIeNegative ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-string v1, "/sys/class/mdnie/mdnie/negative"

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setmDNIeOutDoor(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 286
    const-string v0, "SecHardwareInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setmDNIeOutDoor ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const-string v1, "/sys/class/mdnie/mdnie/outdoor"

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setmDNIeUIMode(I)Z
    .locals 3
    .parameter "mode"

    .prologue
    .line 270
    const-string v0, "SecHardwareInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setmDNIeUIMode ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-string v0, "/sys/class/mdnie/mdnie/scenario"

    const/4 v0, 0x1

    return v0
.end method

.method public static setmDNIeUserMode(I)Z
    .locals 3
    .parameter "mode"

    .prologue
    .line 278
    const-string v0, "SecHardwareInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setmDNIeUserMode ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const-string v0, "/sys/class/mdnie/mdnie/mode"

    invoke-static {v0, p0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static sysfsWrite(Ljava/lang/String;I)Z
    .locals 6
    .parameter "sysfs"
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    .line 95
    const/4 v2, 0x0

    .line 99
    .local v2, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 105
    .end local v2           #out:Ljava/io/FileOutputStream;
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 106
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 117
    const/4 v4, 0x1

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :goto_0
    return v4

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 107
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 108
    .local v0, e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 110
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 111
    :catch_2
    move-exception v1

    .line 112
    .local v1, err:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 107
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #err:Ljava/lang/Exception;
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private static sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "sysfs"
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    .line 121
    const/4 v2, 0x0

    .line 125
    .local v2, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    .end local v2           #out:Ljava/io/FileOutputStream;
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 132
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 143
    const/4 v4, 0x1

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :goto_0
    return v4

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 133
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 134
    .local v0, e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 136
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 137
    :catch_2
    move-exception v1

    .line 138
    .local v1, err:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 133
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #err:Ljava/lang/Exception;
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private static sysfsWrite_CB(Ljava/lang/String;I[I)Z
    .locals 9
    .parameter "sysfs"
    .parameter "value"
    .parameter "result"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 148
    const/4 v3, 0x0

    .line 149
    .local v3, out:Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 151
    .local v2, mParameter:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, p2, v6

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, p2, v5

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x4

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x5

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x6

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x7

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x8

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 157
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 163
    .end local v3           #out:Ljava/io/FileOutputStream;
    .local v4, out:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 164
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v3, v4

    .line 174
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :goto_0
    return v5

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move v5, v6

    .line 160
    goto :goto_0

    .line 165
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 166
    .local v0, e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 168
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    move v5, v6

    .line 172
    goto :goto_0

    .line 169
    :catch_2
    move-exception v1

    .line 170
    .local v1, err:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 165
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #err:Ljava/lang/Exception;
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v3, v4

    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    goto :goto_1
.end method
