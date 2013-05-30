.class public Lcom/android/OriginalSettings/wifi/AccessPoint;
.super Landroid/preference/Preference;
.source "AccessPoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/wifi/AccessPoint$1;,
        Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;
    }
.end annotation


# static fields
.field static final DBG:Z

.field private static final STATE_NONE:[I

.field private static final STATE_SECURED:[I


# instance fields
.field bssid:Ljava/lang/String;

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mInfo:Landroid/net/wifi/WifiInfo;

.field private mRssi:I

.field mScanResult:Landroid/net/wifi/ScanResult;

.field private mState:Landroid/net/NetworkInfo$DetailedState;

.field networkId:I

.field pskType:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

.field security:I

.field ssid:Ljava/lang/String;

.field wpsAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 45
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->DBG:Z

    .line 52
    new-array v0, v2, [I

    const/high16 v2, 0x7f01

    aput v2, v0, v1

    sput-object v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->STATE_SECURED:[I

    .line 55
    new-array v0, v1, [I

    sput-object v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->STATE_NONE:[I

    return-void

    :cond_0
    move v0, v2

    .line 45
    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
    .locals 1
    .parameter "context"
    .parameter "result"

    .prologue
    .line 198
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->wpsAvailable:Z

    .line 79
    sget-object v0, Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->pskType:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    .line 199
    const v0, 0x7f0400b8

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    .line 200
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/wifi/AccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    .line 201
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->refresh()V

    .line 202
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .parameter "context"
    .parameter "config"

    .prologue
    .line 191
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->wpsAvailable:Z

    .line 79
    sget-object v0, Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->pskType:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    .line 192
    const v0, 0x7f0400b8

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    .line 193
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 194
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->refresh()V

    .line 195
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2
    .parameter "context"
    .parameter "savedState"

    .prologue
    .line 205
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->wpsAvailable:Z

    .line 79
    sget-object v0, Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->pskType:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    .line 206
    const v0, 0x7f0400b8

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    .line 208
    const-string v0, "key_config"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 209
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 212
    :cond_0
    const-string v0, "key_scanresult"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 213
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    .line 216
    :cond_1
    const-string v0, "key_wifiinfo"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 217
    const-string v0, "key_detailedstate"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    const-string v0, "key_detailedstate"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkInfo$DetailedState;->valueOf(Ljava/lang/String;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 221
    return-void
.end method

.method static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "string"

    .prologue
    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;
    .locals 5
    .parameter "result"

    .prologue
    .line 176
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 177
    .local v0, wpa:Z
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA2-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 178
    .local v1, wpa2:Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 179
    sget-object v2, Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;->WPA_WPA2:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    .line 186
    :goto_0
    return-object v2

    .line 180
    :cond_0
    if-eqz v1, :cond_1

    .line 181
    sget-object v2, Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;->WPA2:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 182
    :cond_1
    if-eqz v0, :cond_2

    .line 183
    sget-object v2, Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;->WPA:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 185
    :cond_2
    const-string v2, "Settings.AccessPoint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received abnormal flag string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    sget-object v2, Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    goto :goto_0
.end method

.method private static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .parameter "result"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const/4 v0, 0x1

    .line 124
    :goto_0
    return v0

    .line 117
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    const/4 v0, 0x2

    goto :goto_0

    .line 119
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    const/4 v0, 0x3

    goto :goto_0

    .line 121
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "CCKM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 122
    const/4 v0, 0x6

    goto :goto_0

    .line 124
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 5
    .parameter "config"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 89
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 92
    :cond_1
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v3

    .line 94
    goto :goto_0

    .line 104
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private getSecurity(Ljava/lang/String;)I
    .locals 4
    .parameter "securityType"

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 128
    sget-object v3, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v0

    .line 130
    :cond_1
    sget-object v3, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v0, v2

    .line 132
    goto :goto_0

    .line 133
    :cond_3
    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    .line 135
    goto :goto_0
.end method

.method private loadConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 233
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 234
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 235
    invoke-static {p1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    .line 236
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    .line 237
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    .line 238
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 239
    return-void

    .line 233
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private loadResult(Landroid/net/wifi/ScanResult;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 242
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 243
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 244
    invoke-static {p1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    .line 245
    iget v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->wpsAvailable:Z

    .line 246
    iget v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 247
    invoke-static {p1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->pskType:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    .line 248
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    .line 249
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    .line 250
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 251
    return-void

    .line 245
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refresh()V
    .locals 6

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 397
    .local v1, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_1

    .line 399
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "#ff"

    const-string v5, "#"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, color:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<font color="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</font>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setTitle(Ljava/lang/CharSequence;)V

    .line 408
    .end local v0           #color:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v3, :cond_3

    .line 409
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v1, v3}, Lcom/android/OriginalSettings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    .line 466
    :goto_1
    return-void

    .line 401
    :cond_1
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_2

    .line 402
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "#ff"

    const-string v5, "#"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 403
    .restart local v0       #color:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<font color="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</font>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 405
    .end local v0           #color:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 410
    :cond_3
    iget v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_4

    .line 411
    const v3, 0x7f090274

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 412
    :cond_4
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 413
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 422
    :pswitch_0
    const v3, 0x7f09026e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 415
    :pswitch_1
    const v3, 0x7f090273

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 419
    :pswitch_2
    const v3, 0x7f090270

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 425
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 426
    .local v2, summary:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_6

    .line 427
    const v3, 0x7f09026d

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    :cond_6
    iget v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    if-eqz v3, :cond_b

    .line 432
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 433
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    :cond_7
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 436
    const v3, 0x7f090279

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    :cond_8
    :goto_2
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v3, :cond_9

    iget-boolean v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->wpsAvailable:Z

    if-eqz v3, :cond_9

    .line 455
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f09027c

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 438
    :cond_a
    const v3, 0x7f09027b

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 449
    :cond_b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_8

    .line 450
    const v3, 0x7f09027a

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 413
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "string"

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 381
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 382
    .local v0, length:I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 384
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 386
    .end local p0
    :cond_0
    return-object p0
.end method


# virtual methods
.method checkIfSame(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .parameter "config"

    .prologue
    .line 322
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    invoke-static {p1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 324
    const/4 v0, 0x1

    .line 326
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public compareTo(Landroid/preference/Preference;)I
    .locals 6
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 274
    instance-of v4, p1, Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-nez v4, :cond_1

    move v2, v3

    .line 298
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v1, p1

    .line 277
    check-cast v1, Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 279
    .local v1, other:Lcom/android/OriginalSettings/wifi/AccessPoint;
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eq v4, v5, :cond_2

    .line 280
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 283
    :cond_2
    iget v4, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    iget v5, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    xor-int/2addr v4, v5

    if-gez v4, :cond_3

    .line 284
    iget v4, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_0

    move v2, v3

    goto :goto_0

    .line 287
    :cond_3
    iget v4, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    iget v5, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    xor-int/2addr v4, v5

    if-gez v4, :cond_4

    .line 288
    iget v4, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    if-ne v4, v2, :cond_0

    move v2, v3

    goto :goto_0

    .line 291
    :cond_4
    const-string v2, "rssi"

    const-string v3, "ssid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 292
    iget v2, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    iget v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    invoke-static {v2, v3}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    .line 293
    .local v0, difference:I
    if-eqz v0, :cond_5

    move v2, v0

    .line 294
    goto :goto_0

    .line 298
    .end local v0           #difference:I
    :cond_5
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method protected generateOpenNetworkConfig()V
    .locals 2

    .prologue
    .line 474
    iget v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    if-eqz v0, :cond_0

    .line 475
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 481
    :goto_0
    return-void

    .line 478
    :cond_1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 479
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 480
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method getInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method getLevel()I
    .locals 2

    .prologue
    .line 356
    iget v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 357
    const/4 v0, -0x1

    .line 359
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    goto :goto_0
.end method

.method public getSecurityString(Z)Ljava/lang/String;
    .locals 3
    .parameter "concise"

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 141
    .local v0, context:Landroid/content/Context;
    iget v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    packed-switch v1, :pswitch_data_0

    .line 171
    if-eqz p1, :cond_6

    const-string v1, ""

    :goto_0
    return-object v1

    .line 143
    :pswitch_0
    if-eqz p1, :cond_0

    const v1, 0x7f09028d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const v1, 0x7f090294

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 146
    :pswitch_1
    sget-object v1, Lcom/android/OriginalSettings/wifi/AccessPoint$1;->$SwitchMap$com$android$settings$wifi$AccessPoint$PskType:[I

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->pskType:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 158
    if-eqz p1, :cond_4

    const v1, 0x7f09028c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 148
    :pswitch_2
    if-eqz p1, :cond_1

    const v1, 0x7f090289

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const v1, 0x7f090290

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 151
    :pswitch_3
    if-eqz p1, :cond_2

    const v1, 0x7f09028a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const v1, 0x7f090291

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 154
    :pswitch_4
    if-eqz p1, :cond_3

    const v1, 0x7f09028b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const v1, 0x7f090292

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 158
    :cond_4
    const v1, 0x7f090293

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 162
    :pswitch_5
    if-eqz p1, :cond_5

    const v1, 0x7f090288

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    const v1, 0x7f09028f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 166
    :pswitch_6
    const v1, 0x7f090295

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 168
    :pswitch_7
    const v1, 0x7f090296

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 171
    :cond_6
    const v1, 0x7f09028e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 146
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method getState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method public isSupportedSecurityType()Z
    .locals 2

    .prologue
    .line 485
    iget v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 489
    const/4 v0, 0x0

    .line 492
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isVendorAccessPoint()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 497
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 500
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->getVendorApInfo()[Lcom/android/OriginalSettings/Utils$ApInfo;

    move-result-object v0

    .line 501
    .local v0, aps:[Lcom/android/OriginalSettings/Utils$ApInfo;
    if-nez v0, :cond_1

    .line 502
    const-string v3, "Settings.AccessPoint"

    const-string v4, "Do not exist vendor specific aps"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    .end local v0           #aps:[Lcom/android/OriginalSettings/Utils$ApInfo;
    :cond_0
    :goto_0
    return v2

    .line 506
    .restart local v0       #aps:[Lcom/android/OriginalSettings/Utils$ApInfo;
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 507
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    aget-object v4, v0, v1

    invoke-virtual {v4}, Lcom/android/OriginalSettings/Utils$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    aget-object v4, v0, v1

    invoke-virtual {v4}, Lcom/android/OriginalSettings/Utils$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getSecurity(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 508
    const-string v2, "Settings.AccessPoint"

    const-string v3, "Select Default AP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/4 v2, 0x1

    goto :goto_0

    .line 506
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 255
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 256
    const v1, 0x7f0b01fa

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 257
    .local v0, signal:Landroid/widget/ImageView;
    iget v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    .line 258
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 270
    :goto_0
    return-void

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 265
    const v1, 0x7f020354

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 267
    iget v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->STATE_SECURED:[I

    :goto_1
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->STATE_NONE:[I

    goto :goto_1
.end method

.method public saveWifiState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 224
    const-string v0, "key_config"

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 225
    const-string v0, "key_scanresult"

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 226
    const-string v0, "key_wifiinfo"

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 227
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v0, :cond_0

    .line 228
    const-string v0, "key_detailedstate"

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_0
    return-void
.end method

.method update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 5
    .parameter "info"
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    .line 331
    const/4 v1, 0x0

    .line 332
    .local v1, reorder:Z
    if-eqz p1, :cond_5

    iget v2, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    iget v2, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 334
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v2, :cond_4

    const/4 v1, 0x1

    .line 337
    :goto_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    .line 338
    .local v0, newRssi:I
    iget v2, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_0

    const/16 v2, -0xc8

    if-eq v0, v2, :cond_1

    .line 339
    :cond_0
    iput v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    .line 341
    :cond_1
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 342
    iput-object p2, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 343
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->refresh()V

    .line 350
    .end local v0           #newRssi:I
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 351
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->notifyHierarchyChanged()V

    .line 353
    :cond_3
    return-void

    .line 334
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 344
    :cond_5
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_2

    .line 345
    const/4 v1, 0x1

    .line 346
    iput-object v4, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 347
    iput-object v4, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 348
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->refresh()V

    goto :goto_1
.end method

.method update(Landroid/net/wifi/ScanResult;)Z
    .locals 3
    .parameter "result"

    .prologue
    .line 302
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    invoke-static {p1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 303
    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iget v2, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    invoke-static {v1, v2}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v1

    if-lez v1, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 305
    .local v0, oldLevel:I
    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    .line 306
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getLevel()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->notifyChanged()V

    .line 311
    .end local v0           #oldLevel:I
    :cond_0
    iget v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 312
    invoke-static {p1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->pskType:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    .line 314
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->refresh()V

    .line 315
    const/4 v1, 0x1

    .line 317
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
