.class Lcom/android/internal/os/EncryptionManager3LM$1;
.super Ljava/lang/Thread;
.source "EncryptionManager3LM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/EncryptionManager3LM;->convertToPlaintext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/EncryptionManager3LM;


# direct methods
.method constructor <init>(Lcom/android/internal/os/EncryptionManager3LM;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/internal/os/EncryptionManager3LM$1;->this$0:Lcom/android/internal/os/EncryptionManager3LM;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 98
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    .line 99
    .local v2, ks:Landroid/security/KeyStore;
    iget-object v6, p0, Lcom/android/internal/os/EncryptionManager3LM$1;->this$0:Lcom/android/internal/os/EncryptionManager3LM;

    invoke-virtual {v6}, Lcom/android/internal/os/EncryptionManager3LM;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 101
    .local v5, pm:Landroid/content/pm/PackageManager;
    const/16 v6, 0x2000

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 103
    .local v3, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 104
    .local v4, pi:Landroid/content/pm/PackageInfo;
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 106
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/os/EncryptionManager3LM$1;->this$0:Lcom/android/internal/os/EncryptionManager3LM;

    #getter for: Lcom/android/internal/os/EncryptionManager3LM;->mService:Landroid/os/IEncryption3LM;
    invoke-static {v6}, Lcom/android/internal/os/EncryptionManager3LM;->access$000(Lcom/android/internal/os/EncryptionManager3LM;)Landroid/os/IEncryption3LM;

    move-result-object v6

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v6, v7, v8}, Landroid/os/IEncryption3LM;->convertToPlaintext(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v6

    goto :goto_0

    .line 114
    .end local v4           #pi:Landroid/content/pm/PackageInfo;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.threelm.DECRYPTION_COMPLETE"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .local v1, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/os/EncryptionManager3LM$1;->this$0:Lcom/android/internal/os/EncryptionManager3LM;

    invoke-virtual {v6, v1}, Lcom/android/internal/os/EncryptionManager3LM;->sendBroadcast(Landroid/content/Intent;)V

    .line 118
    iget-object v6, p0, Lcom/android/internal/os/EncryptionManager3LM$1;->this$0:Lcom/android/internal/os/EncryptionManager3LM;

    invoke-virtual {v6}, Lcom/android/internal/os/EncryptionManager3LM;->stopSelf()V

    .line 119
    return-void
.end method
