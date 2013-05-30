.class public final Lcom/android/server/DeviceManager3LMService;
.super Landroid/os/IDeviceManager3LM$Stub;
.source "DeviceManager3LMService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceManager3LMService$ClearUserDataObserver;,
        Lcom/android/server/DeviceManager3LMService$PublicKey3LM;,
        Lcom/android/server/DeviceManager3LMService$PackageDeleteObserver;,
        Lcom/android/server/DeviceManager3LMService$PackageInstallObserver;,
        Lcom/android/server/DeviceManager3LMService$RulesEngine;
    }
.end annotation


# static fields
.field private static final API_VERSION:I = 0xc

.field private static final DNS1:Ljava/lang/String; = "net.dns1"

.field private static final DNS2:Ljava/lang/String; = "net.dns2"

.field private static final DNS_DOMAIN_SUFFICES:Ljava/lang/String; = "net.dns.search"

.field private static final PROPERTY_NFC_LOCKOUT:Ljava/lang/String; = "persist.security.nfc.lockout"

.field private static final PROPERTY_WIFI_LOCKOUT:Ljava/lang/String; = "persist.security.wifi.lockout"

.field private static final TAG:Ljava/lang/String; = "DeviceManager3LM"

.field private static final TUN_DNS1:Ljava/lang/String; = "vpn.net.tun.dns1"

.field private static final TUN_DNS2:Ljava/lang/String; = "vpn.net.tun.dns2"

.field private static final is3LMAllowed:Z

.field static sService:Landroid/os/IDeviceManager3LM;


# instance fields
.field private final DEBUG:Z

.field public final MAX_WAIT_TIME:J

.field private final SCAN_3LM_RESULT_ALLOW:I

.field private final SCAN_3LM_RESULT_DENY:I

.field public final STATE_DISABLED:I

.field public final STATE_ENABLED:I

.field public final STATE_UNSUPPORTED:I

.field public final WAIT_TIME_INCR:J

.field private mAllowedPackages:Lcom/android/server/DeviceManager3LMService$RulesEngine;

.field private mAndroidIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothEnabled:Z

.field private mBluetoothPan:Landroid/bluetooth/BluetoothPan;

.field private mBootLocked:Z

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field mContext:Landroid/content/Context;

.field private mInitialized:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mNetworkManager:Landroid/os/INetworkManagementService;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationText:Ljava/lang/String;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackagePerms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/DeviceManager3LMService$RulesEngine;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageScanFailOnTimeout:Z

.field private mPackageScanTimeoutMillis:I

.field private mPackageScanner:Ljava/lang/String;

.field private mPackageScannerMutex:Ljava/lang/Object;

.field private mPermNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

.field private mPkgNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mPubKeyRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

.field private mPublicKey3LM:Lcom/android/server/DeviceManager3LMService$PublicKey3LM;

.field private mSecureClipboardRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

.field private mSecurePrimaryClip:Z

.field private mUid:I

.field private mUninstallPkgNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

.field private mVpnHasOriginalData:Z

.field private mVpnOriginalDns1:Ljava/lang/String;

.field private mVpnOriginalDns2:Ljava/lang/String;

.field private mVpnOriginalDnsSuffixes:Ljava/lang/String;

.field private mVpnSettingsMutex:Ljava/lang/String;

.field private mWifiFilter:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 148
    invoke-direct {p0}, Landroid/os/IDeviceManager3LM$Stub;-><init>()V

    .line 74
    iput-boolean v2, p0, Lcom/android/server/DeviceManager3LMService;->DEBUG:Z

    .line 76
    const-wide/16 v0, 0x61a8

    iput-wide v0, p0, Lcom/android/server/DeviceManager3LMService;->MAX_WAIT_TIME:J

    .line 77
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/server/DeviceManager3LMService;->WAIT_TIME_INCR:J

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/DeviceManager3LMService;->STATE_UNSUPPORTED:I

    .line 80
    iput v2, p0, Lcom/android/server/DeviceManager3LMService;->STATE_DISABLED:I

    .line 81
    iput v3, p0, Lcom/android/server/DeviceManager3LMService;->STATE_ENABLED:I

    .line 127
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mVpnOriginalDnsSuffixes:Ljava/lang/String;

    .line 128
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mVpnOriginalDns1:Ljava/lang/String;

    .line 129
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mVpnOriginalDns2:Ljava/lang/String;

    .line 130
    iput-boolean v2, p0, Lcom/android/server/DeviceManager3LMService;->mVpnHasOriginalData:Z

    .line 131
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mVpnSettingsMutex:Ljava/lang/String;

    .line 138
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mPackageScannerMutex:Ljava/lang/Object;

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mPackageScanner:Ljava/lang/String;

    .line 140
    iput-boolean v2, p0, Lcom/android/server/DeviceManager3LMService;->mPackageScanFailOnTimeout:Z

    .line 141
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/server/DeviceManager3LMService;->mPackageScanTimeoutMillis:I

    .line 2089
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/DeviceManager3LMService;->SCAN_3LM_RESULT_ALLOW:I

    .line 2090
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/android/server/DeviceManager3LMService;->SCAN_3LM_RESULT_DENY:I

    .line 2133
    new-instance v0, Lcom/android/server/DeviceManager3LMService$4;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceManager3LMService$4;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 149
    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->initAndroidIds()V

    .line 150
    iput-boolean v2, p0, Lcom/android/server/DeviceManager3LMService;->mInitialized:Z

    .line 151
    iput-boolean v3, p0, Lcom/android/server/DeviceManager3LMService;->mBluetoothEnabled:Z

    .line 152
    new-instance v0, Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceManager3LMService$RulesEngine;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mPkgNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    .line 153
    new-instance v0, Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceManager3LMService$RulesEngine;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mPermNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    .line 154
    new-instance v0, Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceManager3LMService$RulesEngine;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mPubKeyRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    .line 155
    new-instance v0, Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceManager3LMService$RulesEngine;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mUninstallPkgNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    .line 156
    new-instance v0, Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceManager3LMService$RulesEngine;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mAllowedPackages:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mPackagePerms:Ljava/util/Map;

    .line 158
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mKeyStore:Landroid/security/KeyStore;

    .line 159
    new-instance v0, Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceManager3LMService$RulesEngine;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mSecureClipboardRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    .line 160
    iput-boolean v2, p0, Lcom/android/server/DeviceManager3LMService;->mSecurePrimaryClip:Z

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DeviceManager3LMService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mNotificationText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/DeviceManager3LMService;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/DeviceManager3LMService;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/server/DeviceManager3LMService;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method private getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 349
    const/4 v0, 0x0

    return-object v0
.end method

.method private initAndroidIds()V
    .locals 0

    .prologue
    .line 227
    return-void
.end method

.method private isAccessPermitted()Z
    .locals 1

    .prologue
    .line 1078
    const/4 v0, 0x1

    return v0
.end method

.method private isBootLocked(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 312
    const/4 v0, 0x0

    return v0
.end method

.method private notify(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .parameter "id"
    .parameter "notificationBar"
    .parameter "title"
    .parameter "text"
    .parameter "intent"

    .prologue
    .line 389
    return-void
.end method

.method private setPackageState(Ljava/lang/String;I)V
    .locals 0
    .parameter "pkgName"
    .parameter "state"

    .prologue
    .line 691
    return-void
.end method

.method private updateNetworkRules(Lcom/android/server/DeviceManager3LMService$RulesEngine;)V
    .locals 0
    .parameter "re"

    .prologue
    .line 1898
    return-void
.end method


# virtual methods
.method public addApn(Ljava/util/Map;)V
    .locals 0
    .parameter "list"

    .prologue
    .line 2202
    return-void
.end method

.method public blockAdb(Z)V
    .locals 0
    .parameter "block"

    .prologue
    .line 1727
    return-void
.end method

.method public blockScreenshot(Z)V
    .locals 0
    .parameter "block"

    .prologue
    .line 2156
    return-void
.end method

.method public blockTethering(Z)V
    .locals 0
    .parameter "block"

    .prologue
    .line 2111
    return-void
.end method

.method public blockUsb(Z)V
    .locals 0
    .parameter "block"

    .prologue
    .line 1788
    return-void
.end method

.method public checkAppInstallPolicies(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Z
    .locals 1
    .parameter "pkgName"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 954
    .local p2, requestedPermissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, pkgSigs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public checkAppUninstallPolicies(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 1017
    const/4 v0, 0x1

    return v0
.end method

.method public checkPackagePermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "permName"
    .parameter "pkgName"

    .prologue
    .line 774
    const/4 v0, 0x1

    return v0
.end method

.method public checkPrimaryClipAccess(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 2034
    const/4 v0, 0x1

    return v0
.end method

.method public checkSignature(I)Z
    .locals 1
    .parameter "uid"

    .prologue
    .line 1921
    const/4 v0, 0x0

    return v0
.end method

.method public checkUidPermission(Ljava/lang/String;I)Z
    .locals 1
    .parameter "permName"
    .parameter "uid"

    .prologue
    .line 592
    const/4 v0, 0x1

    return v0
.end method

.method public checkVpnDns(Ljava/lang/String;)Z
    .locals 1
    .parameter "vpnSuffixes"

    .prologue
    .line 488
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 239
    return-void
.end method

.method public clearApn()V
    .locals 0

    .prologue
    .line 2243
    return-void
.end method

.method public clearApplicationUserData(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 1712
    const/4 v0, 0x0

    return v0
.end method

.method public clearPackagePermissions()V
    .locals 0

    .prologue
    .line 2050
    return-void
.end method

.method public completePackageScan(II)V
    .locals 0
    .parameter "scanId"
    .parameter "result"

    .prologue
    .line 2094
    return-void
.end method

.method public connectToVpn(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "abstractSocketName"
    .parameter "vpnSubnets"

    .prologue
    .line 417
    const/4 v0, 0x0

    return v0
.end method

.method public deletePackage(Ljava/lang/String;Z)V
    .locals 0
    .parameter "pkgName"
    .parameter "deleteData"

    .prologue
    .line 879
    return-void
.end method

.method public disablePackage(Ljava/lang/String;)V
    .locals 0
    .parameter "pkgName"

    .prologue
    .line 656
    return-void
.end method

.method public disconnectFromVpn(Z)Z
    .locals 1
    .parameter "doReset"

    .prologue
    .line 565
    const/4 v0, 0x0

    return v0
.end method

.method public enablePackage(Ljava/lang/String;)V
    .locals 0
    .parameter "pkgName"

    .prologue
    .line 674
    return-void
.end method

.method public encryptPackage(Ljava/lang/String;ZZ)V
    .locals 0
    .parameter "pkgName"
    .parameter "encrypt"
    .parameter "required"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1371
    return-void
.end method

.method public getBluetoothEnabled()Z
    .locals 1

    .prologue
    .line 836
    const/4 v0, 0x1

    return v0
.end method

.method public getNfcState()I
    .locals 1

    .prologue
    .line 1636
    const/4 v0, 0x1

    return v0
.end method

.method public getOtaDelay()I
    .locals 1

    .prologue
    .line 1836
    const/4 v0, 0x1

    return v0
.end method

.method public getOwnerInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOwnerInfoEnabled()I
    .locals 1

    .prologue
    .line 197
    const/4 v0, -0x1

    return v0
.end method

.method public getPackageGids(Ljava/lang/String;)[I
    .locals 2
    .parameter "pkgName"

    .prologue
    .line 1601
    const/4 v0, 0x0

    .line 1604
    .local v0, skip:I
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPackageScanner()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2080
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 191
    const/4 v0, -0x1

    return v0
.end method

.method public getWifiState()I
    .locals 1

    .prologue
    .line 1683
    const/4 v0, 0x1

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 165
    return-void
.end method

.method public installPackage(Ljava/lang/String;)V
    .locals 0
    .parameter "packageURIAsString"

    .prologue
    .line 843
    return-void
.end method

.method public isAdbBlocked()Z
    .locals 1

    .prologue
    .line 1745
    const/4 v0, 0x0

    return v0
.end method

.method public isAdminLocked()Z
    .locals 1

    .prologue
    .line 1774
    const/4 v0, 0x0

    return v0
.end method

.method public isApnLocked()Z
    .locals 1

    .prologue
    .line 2190
    const/4 v0, 0x0

    return v0
.end method

.method public isDataEncrypted()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1320
    const/4 v0, 0x0

    return v0
.end method

.method public isDataEncryptionRequired()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1327
    const/4 v0, 0x0

    return v0
.end method

.method public isPackage3LM(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkg"

    .prologue
    .line 1048
    const/4 v0, 0x0

    return v0
.end method

.method public isPackageDisabled(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 742
    const/4 v0, 0x0

    return v0
.end method

.method public isPackageEncrypted(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1345
    const/4 v0, 0x0

    return v0
.end method

.method public isPackageEncryptionRequired(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1357
    const/4 v0, 0x0

    return v0
.end method

.method public isScreenshotBlocked()Z
    .locals 1

    .prologue
    .line 2167
    const/4 v0, 0x0

    return v0
.end method

.method public isSdEncrypted()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1300
    const/4 v0, 0x0

    return v0
.end method

.method public isSdEncryptionRequired()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1307
    const/4 v0, 0x0

    return v0
.end method

.method public isSsidAllowed(Ljava/lang/String;)Z
    .locals 1
    .parameter "ssid"

    .prologue
    .line 1878
    const/4 v0, 0x1

    return v0
.end method

.method public isTetheringBlocked()Z
    .locals 1

    .prologue
    .line 2145
    const/4 v0, 0x0

    return v0
.end method

.method public isUsbBlocked()Z
    .locals 1

    .prologue
    .line 1805
    const/4 v0, 0x0

    return v0
.end method

.method public keyStoreChangePassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "oldPassword"
    .parameter "newPassword"

    .prologue
    .line 1256
    const/4 v0, 0x0

    return v0
.end method

.method public keyStoreContains(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 1233
    const/4 v0, 0x0

    return v0
.end method

.method public keyStoreDeleteKey(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 1172
    const/4 v0, 0x0

    return v0
.end method

.method public keyStoreGetKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 1156
    const/4 v0, 0x0

    return-object v0
.end method

.method public keyStoreGetLastError()I
    .locals 1

    .prologue
    .line 1222
    const/4 v0, 0x0

    return v0
.end method

.method public keyStoreLock()Z
    .locals 1

    .prologue
    .line 1199
    const/4 v0, 0x0

    return v0
.end method

.method public keyStorePutKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "name"
    .parameter "key"

    .prologue
    .line 1139
    const/4 v0, 0x0

    return v0
.end method

.method public keyStoreReset()Z
    .locals 1

    .prologue
    .line 1244
    const/4 v0, 0x0

    return v0
.end method

.method public keyStoreSetPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 1188
    return-void
.end method

.method public keyStoreTest()I
    .locals 1

    .prologue
    .line 1126
    const/4 v0, -0x1

    return v0
.end method

.method public keyStoreUnlock(Ljava/lang/String;)Z
    .locals 1
    .parameter "password"

    .prologue
    .line 1210
    const/4 v0, 0x0

    return v0
.end method

.method public lockAdmin(Z)V
    .locals 0
    .parameter "lock"

    .prologue
    .line 1758
    return-void
.end method

.method public lockApn(Z)V
    .locals 0
    .parameter "lock"

    .prologue
    .line 2179
    return-void
.end method

.method public notification(III)V
    .locals 0
    .parameter "barId"
    .parameter "titleId"
    .parameter "textId"

    .prologue
    .line 1961
    return-void
.end method

.method public putSettingsSecureInt(Ljava/lang/String;I)Z
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1285
    const/4 v0, 0x0

    return v0
.end method

.method public putSettingsSecureString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1270
    const/4 v0, 0x0

    return v0
.end method

.method public restoreDefaultApns()V
    .locals 0

    .prologue
    .line 2259
    return-void
.end method

.method public restoreOriginalDns(Ljava/lang/String;)Z
    .locals 1
    .parameter "vpnSuffixes"

    .prologue
    .line 529
    const/4 v0, 0x0

    return v0
.end method

.method public setAllowedPackages(Ljava/util/Map;)Z
    .locals 1
    .parameter "pkgNames"

    .prologue
    .line 726
    const/4 v0, 0x0

    return v0
.end method

.method public setAppInstallPermissionPolicies(Ljava/util/Map;)Z
    .locals 1
    .parameter "permNameRegexPermMap"

    .prologue
    .line 925
    const/4 v0, 0x0

    return v0
.end method

.method public setAppInstallPkgNamePolicies(Ljava/util/Map;)Z
    .locals 1
    .parameter "pkgNameRegexPermMap"

    .prologue
    .line 911
    const/4 v0, 0x0

    return v0
.end method

.method public setAppInstallPubkeyPolicies(Ljava/util/Map;)Z
    .locals 1
    .parameter "pubkeyRegexPermMap"

    .prologue
    .line 939
    const/4 v0, 0x0

    return v0
.end method

.method public setAppUninstallPkgNamePolicies(Ljava/util/Map;)Z
    .locals 1
    .parameter "uninstallPkgNameRegexPermMap"

    .prologue
    .line 1003
    const/4 v0, 0x0

    return v0
.end method

.method public setBluetoothEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 822
    return-void
.end method

.method public setBootLock(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 281
    return-void
.end method

.method public setDataEncryptionRequired(Z)V
    .locals 0
    .parameter "required"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1334
    return-void
.end method

.method public setLocationProviderEnabled(Ljava/lang/String;Z)V
    .locals 0
    .parameter "provider"
    .parameter "enabled"

    .prologue
    .line 213
    return-void
.end method

.method public setNfcState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1650
    return-void
.end method

.method public setNotificationText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 365
    return-void
.end method

.method public setOtaDelay(I)V
    .locals 0
    .parameter "delay"

    .prologue
    .line 1819
    return-void
.end method

.method public setPackagePermission(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "permName"
    .parameter "pkgName"
    .parameter "enable"

    .prologue
    .line 620
    const/4 v0, 0x0

    return v0
.end method

.method public setPackageScanner(Ljava/lang/String;ZI)V
    .locals 0
    .parameter "scannerComponent"
    .parameter "failOnTimeout"
    .parameter "timeoutMillis"

    .prologue
    .line 2060
    return-void
.end method

.method public setPrimaryClipOwner(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 2008
    return-void
.end method

.method public setSdEncryptionRequired(Z)V
    .locals 0
    .parameter "required"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1314
    return-void
.end method

.method public setSecureClipboard(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1984
    .local p1, packageNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public setSsidFilter(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1849
    .local p1, filter:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public setWifiState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1693
    return-void
.end method

.method public setupVpnDns(Ljava/lang/String;)Z
    .locals 1
    .parameter "vpnSuffixes"

    .prologue
    .line 451
    const/4 v0, 0x0

    return v0
.end method

.method public unlock()V
    .locals 0

    .prologue
    .line 292
    return-void
.end method
