.class public final Lcom/android/server/Encryption3LMService;
.super Landroid/os/IEncryption3LM$Stub;
.source "Encryption3LMService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/Encryption3LMService$1;,
        Lcom/android/server/Encryption3LMService$BootCompletedReceiver;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "Encryption3LMService"

.field private static final is3LMAllowed:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mInstaller:Lcom/android/server/pm/Installer;

.field private mKeyStore:Landroid/security/KeyStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Landroid/os/IEncryption3LM$Stub;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/server/Encryption3LMService;->mContext:Landroid/content/Context;

    .line 52
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/Encryption3LMService;->mKeyStore:Landroid/security/KeyStore;

    .line 53
    invoke-static {}, Lcom/android/server/pm/Installer;->getInstance()Lcom/android/server/pm/Installer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/Encryption3LMService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 54
    iget-object v2, p0, Lcom/android/server/Encryption3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sd_encryption"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 56
    .local v0, sdEncrypted:Z
    :goto_0
    invoke-direct {p0}, Lcom/android/server/Encryption3LMService;->encryptedAppsDetected()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 57
    :cond_0
    new-instance v1, Lcom/android/server/Encryption3LMService$BootCompletedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/Encryption3LMService$BootCompletedReceiver;-><init>(Lcom/android/server/Encryption3LMService;Lcom/android/server/Encryption3LMService$1;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 60
    :cond_1
    return-void

    .end local v0           #sdEncrypted:Z
    :cond_2
    move v0, v1

    .line 54
    goto :goto_0
.end method

.method private encryptedAppsDetected()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public convertToPlaintext(Ljava/lang/String;I)Z
    .locals 1
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method
