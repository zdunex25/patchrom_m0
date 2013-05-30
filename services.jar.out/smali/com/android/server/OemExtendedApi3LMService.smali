.class public final Lcom/android/server/OemExtendedApi3LMService;
.super Landroid/os/IOemExtendedApi3LM$Stub;
.source "OemExtendedApi3LMService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;
    }
.end annotation


# static fields
.field private static final API_VERSION:I = 0x1

.field private static final DEBUG:Z = false

.field public static final STATE_DISABLED:I = 0x0

.field public static final STATE_ENABLED:I = 0x1

.field public static final STATE_UNKNOWN:I = -0x1

.field public static final STATE_UNSUPPORTED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "OemExtendedApi3LM"

.field private static final is3LMAllowed:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeviceManager:Landroid/os/IDeviceManager3LM;

.field private final mOem:Landroid/os/IDeviceManagerRestrictable3LM;

.field private mOwnerInfo:Ljava/lang/String;

.field private mOwnerInfoEnabled:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPublicKey3LM:Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IDeviceManagerRestrictable3LM;)V
    .locals 1
    .parameter "context"
    .parameter "oem"

    .prologue
    .line 105
    invoke-direct {p0}, Landroid/os/IOemExtendedApi3LM$Stub;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/OemExtendedApi3LMService;->mOwnerInfoEnabled:I

    .line 106
    iput-object p1, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    .line 107
    iput-object p2, p0, Lcom/android/server/OemExtendedApi3LMService;->mOem:Landroid/os/IDeviceManagerRestrictable3LM;

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OemExtendedApi3LMService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 109
    const-string v0, "DeviceManager3LM"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/os/IDeviceManager3LM;

    iput-object v0, p0, Lcom/android/server/OemExtendedApi3LMService;->mDeviceManager:Landroid/os/IDeviceManager3LM;

    .line 111
    new-instance v0, Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;

    invoke-direct {v0, p1}, Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/OemExtendedApi3LMService;->mPublicKey3LM:Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;

    .line 112
    return-void
.end method

.method private isAccessPermitted()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public getFelicaState()I
    .locals 1

    .prologue
    .line 187
    const/4 v0, -0x1

    return v0
.end method

.method public getInfraredState()I
    .locals 1

    .prologue
    .line 230
    const/4 v0, -0x1

    return v0
.end method

.method public getOneSegState()I
    .locals 1

    .prologue
    .line 209
    const/4 v0, -0x1

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 150
    const/4 v0, -0x1

    return v0
.end method

.method public setEmergencyLock(ZLjava/lang/String;Z)Z
    .locals 1
    .parameter "enable"
    .parameter "text"
    .parameter "alarm"

    .prologue
    .line 261
    const/4 v0, 0x1

    return v0
.end method

.method public setFelicaState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 198
    return-void
.end method

.method public setInfraredState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 240
    return-void
.end method

.method public setOneSegState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 219
    return-void
.end method
