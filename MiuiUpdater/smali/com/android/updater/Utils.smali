.class public Lcom/android/updater/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final HEX_DIGITS:[C

.field private static cachedNoflash:Ljava/lang/String;

.field private static cachedOSSdPath:Ljava/lang/String;

.field private static cachedOtaDate:Ljava/util/Date;

.field private static cachedOtaVer:Ljava/lang/String;

.field private static cachedRcvrySdPath:Ljava/lang/String;

.field private static cachedRebootCmd:Ljava/lang/String;

.field private static cachedRomID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    sput-object v0, Lcom/android/updater/Utils;->cachedRomID:Ljava/lang/String;

    .line 40
    sput-object v0, Lcom/android/updater/Utils;->cachedOtaDate:Ljava/util/Date;

    .line 41
    sput-object v0, Lcom/android/updater/Utils;->cachedOtaVer:Ljava/lang/String;

    .line 42
    sput-object v0, Lcom/android/updater/Utils;->cachedOSSdPath:Ljava/lang/String;

    .line 43
    sput-object v0, Lcom/android/updater/Utils;->cachedRcvrySdPath:Ljava/lang/String;

    .line 44
    sput-object v0, Lcom/android/updater/Utils;->cachedRebootCmd:Ljava/lang/String;

    .line 45
    sput-object v0, Lcom/android/updater/Utils;->cachedNoflash:Ljava/lang/String;

    .line 211
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/updater/Utils;->HEX_DIGITS:[C

    return-void

    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrToStr([B)Ljava/lang/String;
    .locals 4
    .parameter "bytes"

    .prologue
    .line 213
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 214
    .local v1, str:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, q:I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 218
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 215
    :cond_0
    sget-object v2, Lcom/android/updater/Utils;->HEX_DIGITS:[C

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 216
    sget-object v2, Lcom/android/updater/Utils;->HEX_DIGITS:[C

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static dataAvailable(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    .line 153
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 154
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 155
    .local v1, ni:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .parameter "date"

    .prologue
    .line 169
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 170
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd-kkmm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNoflash()Z
    .locals 2

    .prologue
    .line 100
    sget-object v0, Lcom/android/updater/Utils;->cachedNoflash:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 101
    const-string v0, "otaupdater.noflash"

    invoke-static {v0}, Lcom/android/updater/Utils;->getprop(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/updater/Utils;->cachedNoflash:Ljava/lang/String;

    .line 102
    sget-object v0, Lcom/android/updater/Utils;->cachedNoflash:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 103
    const-string v0, "0"

    sput-object v0, Lcom/android/updater/Utils;->cachedNoflash:Ljava/lang/String;

    .line 106
    :cond_0
    sget-object v0, Lcom/android/updater/Utils;->cachedNoflash:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/updater/Utils;->cachedNoflash:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getOSSdPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/updater/Utils;->cachedOSSdPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 71
    const-string v0, "otaupdater.sdcard.os"

    invoke-static {v0}, Lcom/android/updater/Utils;->getprop(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/updater/Utils;->cachedOSSdPath:Ljava/lang/String;

    .line 72
    sget-object v0, Lcom/android/updater/Utils;->cachedOSSdPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 73
    const-string v0, "sdcard"

    sput-object v0, Lcom/android/updater/Utils;->cachedOSSdPath:Ljava/lang/String;

    .line 76
    :cond_0
    sget-object v0, Lcom/android/updater/Utils;->cachedOSSdPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getOtaDate()Ljava/util/Date;
    .locals 2

    .prologue
    .line 110
    sget-object v1, Lcom/android/updater/Utils;->cachedOtaDate:Ljava/util/Date;

    if-nez v1, :cond_1

    .line 111
    const-string v1, "updater.time"

    invoke-static {v1}, Lcom/android/updater/Utils;->getprop(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, otaDateStr:Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 115
    :goto_0
    return-object v1

    .line 113
    :cond_0
    invoke-static {v0}, Lcom/android/updater/Utils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    sput-object v1, Lcom/android/updater/Utils;->cachedOtaDate:Ljava/util/Date;

    .line 115
    :cond_1
    sget-object v1, Lcom/android/updater/Utils;->cachedOtaDate:Ljava/util/Date;

    goto :goto_0
.end method

.method public static getOtaVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/android/updater/Utils;->cachedOtaVer:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 120
    const-string v0, "updater.ver"

    invoke-static {v0}, Lcom/android/updater/Utils;->getprop(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/updater/Utils;->cachedOtaVer:Ljava/lang/String;

    .line 122
    :cond_0
    sget-object v0, Lcom/android/updater/Utils;->cachedOtaVer:Ljava/lang/String;

    return-object v0
.end method

.method public static getRcvrySdPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/android/updater/Utils;->cachedRcvrySdPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 81
    const-string v0, "otaupdater.sdcard.recovery"

    invoke-static {v0}, Lcom/android/updater/Utils;->getprop(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/updater/Utils;->cachedRcvrySdPath:Ljava/lang/String;

    .line 82
    sget-object v0, Lcom/android/updater/Utils;->cachedRcvrySdPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 83
    const-string v0, "sdcard"

    sput-object v0, Lcom/android/updater/Utils;->cachedRcvrySdPath:Ljava/lang/String;

    .line 86
    :cond_0
    sget-object v0, Lcom/android/updater/Utils;->cachedRcvrySdPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getRebootCmd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/android/updater/Utils;->cachedRebootCmd:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 91
    const-string v0, "otaupdater.rebootcmd"

    invoke-static {v0}, Lcom/android/updater/Utils;->getprop(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/updater/Utils;->cachedRebootCmd:Ljava/lang/String;

    .line 92
    sget-object v0, Lcom/android/updater/Utils;->cachedRebootCmd:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 93
    const-string v0, "reboot recovery"

    sput-object v0, Lcom/android/updater/Utils;->cachedRebootCmd:Ljava/lang/String;

    .line 96
    :cond_0
    sget-object v0, Lcom/android/updater/Utils;->cachedRebootCmd:Ljava/lang/String;

    return-object v0
.end method

.method public static getRomID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/updater/Utils;->cachedRomID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 64
    const-string v0, "updater.id"

    invoke-static {v0}, Lcom/android/updater/Utils;->getprop(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/updater/Utils;->cachedRomID:Ljava/lang/String;

    .line 66
    :cond_0
    sget-object v0, Lcom/android/updater/Utils;->cachedRomID:Ljava/lang/String;

    return-object v0
.end method

.method private static getprop(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "name"

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 126
    new-instance v3, Ljava/lang/ProcessBuilder;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "/system/bin/getprop"

    aput-object v9, v7, v8

    aput-object p0, v7, v10

    invoke-direct {v3, v7}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 127
    .local v3, pb:Ljava/lang/ProcessBuilder;
    invoke-virtual {v3, v10}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 129
    const/4 v2, 0x0

    .line 130
    .local v2, p:Ljava/lang/Process;
    const/4 v1, 0x0

    .line 132
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2

    .line 133
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 134
    new-instance v5, Ljava/util/Scanner;

    invoke-direct {v5, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 135
    .local v5, scan:Ljava/util/Scanner;
    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 136
    invoke-virtual {v5}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, prop:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v7

    if-nez v7, :cond_2

    .line 144
    if-eqz v1, :cond_0

    .line 145
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :cond_0
    :goto_0
    move-object v4, v6

    .line 149
    .end local v4           #prop:Ljava/lang/String;
    .end local v5           #scan:Ljava/util/Scanner;
    :cond_1
    :goto_1
    return-object v4

    .line 144
    .restart local v4       #prop:Ljava/lang/String;
    .restart local v5       #scan:Ljava/util/Scanner;
    :cond_2
    if-eqz v1, :cond_1

    .line 145
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 146
    :catch_0
    move-exception v6

    goto :goto_1

    .line 139
    .end local v4           #prop:Ljava/lang/String;
    .end local v5           #scan:Ljava/util/Scanner;
    :catch_1
    move-exception v0

    .line 144
    .local v0, e:Ljava/util/NoSuchElementException;
    if-eqz v1, :cond_3

    .line 145
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :cond_3
    :goto_2
    move-object v4, v6

    .line 140
    goto :goto_1

    .line 141
    .end local v0           #e:Ljava/util/NoSuchElementException;
    :catch_2
    move-exception v0

    .line 142
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 144
    if-eqz v1, :cond_4

    .line 145
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :cond_4
    :goto_3
    move-object v4, v6

    .line 149
    goto :goto_1

    .line 143
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 144
    if-eqz v1, :cond_5

    .line 145
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 148
    :cond_5
    :goto_4
    throw v6

    .line 146
    .restart local v4       #prop:Ljava/lang/String;
    .restart local v5       #scan:Ljava/util/Scanner;
    :catch_3
    move-exception v7

    goto :goto_0

    .end local v4           #prop:Ljava/lang/String;
    .end local v5           #scan:Ljava/util/Scanner;
    .local v0, e:Ljava/util/NoSuchElementException;
    :catch_4
    move-exception v7

    goto :goto_2

    .local v0, e:Ljava/lang/Exception;
    :catch_5
    move-exception v7

    goto :goto_3

    .end local v0           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v7

    goto :goto_4
.end method

.method public static isROMSupported()Z
    .locals 2

    .prologue
    .line 58
    invoke-static {}, Lcom/android/updater/Utils;->getRomID()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, romID:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isUpdate(Lcom/android/updater/RomInfo;)Z
    .locals 4
    .parameter "info"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 174
    if-nez p0, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v0

    .line 175
    :cond_1
    iget-object v2, p0, Lcom/android/updater/RomInfo;->version:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 176
    invoke-static {}, Lcom/android/updater/Utils;->getOtaVersion()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/updater/RomInfo;->version:Ljava/lang/String;

    invoke-static {}, Lcom/android/updater/Utils;->getOtaVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 178
    :cond_3
    iget-object v2, p0, Lcom/android/updater/RomInfo;->date:Ljava/util/Date;

    if-eqz v2, :cond_0

    .line 179
    invoke-static {}, Lcom/android/updater/Utils;->getOtaDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/updater/RomInfo;->date:Ljava/util/Date;

    invoke-static {}, Lcom/android/updater/Utils;->getOtaDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static marketAvailable(Landroid/content/Context;)Z
    .locals 5
    .parameter "ctx"

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 50
    .local v1, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v3, "com.android.vending"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .parameter "date"

    .prologue
    const/4 v1, 0x0

    .line 159
    if-nez p0, :cond_0

    .line 165
    :goto_0
    return-object v1

    .line 161
    :cond_0
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd-kkmm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public static showUpdateNotif(Landroid/content/Context;Lcom/android/updater/RomInfo;)V
    .locals 11
    .parameter "ctx"
    .parameter "info"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const v10, 0x7f060002

    const v9, 0x7f020005

    const v8, 0x7f060001

    .line 187
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/android/updater/OTAUpdaterActivity;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    .local v2, i:Landroid/content/Intent;
    const-string v5, "com.android.updater.action.NOTIF_ACTION"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    invoke-virtual {p1, v2}, Lcom/android/updater/RomInfo;->addToIntent(Landroid/content/Intent;)V

    .line 191
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 192
    .local v3, nm:Landroid/app/NotificationManager;
    const/4 v5, 0x0

    const/high16 v6, 0x1000

    invoke-static {p0, v5, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 194
    .local v1, contentIntent:Landroid/app/PendingIntent;
    const/4 v4, 0x0

    .line 195
    .local v4, notif:Landroid/app/Notification;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_0

    .line 196
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 197
    .local v0, builder:Landroid/app/Notification$Builder;
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 198
    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 199
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 200
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 202
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 203
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v4

    .line 208
    .end local v0           #builder:Landroid/app/Notification$Builder;
    :goto_0
    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 209
    return-void

    .line 205
    :cond_0
    new-instance v4, Landroid/app/Notification;

    .end local v4           #notif:Landroid/app/Notification;
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v9, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 206
    .restart local v4       #notif:Landroid/app/Notification;
    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, p0, v5, v6, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method
