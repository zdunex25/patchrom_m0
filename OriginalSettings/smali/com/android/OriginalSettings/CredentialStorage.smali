.class public final Lcom/android/OriginalSettings/CredentialStorage;
.super Lcom/android/OriginalSettings/BaseActivity;
.source "CredentialStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/CredentialStorage$1;,
        Lcom/android/OriginalSettings/CredentialStorage$UnlockDialog;,
        Lcom/android/OriginalSettings/CredentialStorage$ConfigureKeyGuardDialog;,
        Lcom/android/OriginalSettings/CredentialStorage$ResetKeyStoreAndKeyChain;,
        Lcom/android/OriginalSettings/CredentialStorage$ResetDialog;
    }
.end annotation


# instance fields
.field private mInstallBundle:Landroid/os/Bundle;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mRetriesRemaining:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/OriginalSettings/BaseActivity;-><init>()V

    .line 93
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/OriginalSettings/CredentialStorage;->mRetriesRemaining:I

    .line 399
    return-void
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/CredentialStorage;)Landroid/security/KeyStore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/OriginalSettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/CredentialStorage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/OriginalSettings/CredentialStorage;->mRetriesRemaining:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/OriginalSettings/CredentialStorage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/OriginalSettings/CredentialStorage;->mRetriesRemaining:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/CredentialStorage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/OriginalSettings/CredentialStorage;->ensureKeyGuard()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/OriginalSettings/CredentialStorage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/OriginalSettings/CredentialStorage;->handleUnlockOrInstall()V

    return-void
.end method

.method private checkKeyGuardQuality()Z
    .locals 2

    .prologue
    .line 181
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v0

    .line 182
    .local v0, quality:I
    const/high16 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private confirmKeyGuard()Z
    .locals 6

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/android/OriginalSettings/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 364
    .local v1, res:Landroid/content/res/Resources;
    new-instance v2, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;-><init>(Lcom/android/OriginalSettings/BaseActivity;)V

    const/4 v3, 0x1

    const v4, 0x7f090717

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const v5, 0x7f090718

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 368
    .local v0, launched:Z
    return v0
.end method

.method private ensureKeyGuard()V
    .locals 2

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/OriginalSettings/CredentialStorage;->checkKeyGuardQuality()Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    new-instance v0, Lcom/android/OriginalSettings/CredentialStorage$ConfigureKeyGuardDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/OriginalSettings/CredentialStorage$ConfigureKeyGuardDialog;-><init>(Lcom/android/OriginalSettings/CredentialStorage;Lcom/android/OriginalSettings/CredentialStorage$1;)V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/CredentialStorage;->confirmKeyGuard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/android/OriginalSettings/CredentialStorage;->finish()V

    goto :goto_0
.end method

.method private handleUnlockOrInstall()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 132
    invoke-virtual {p0}, Lcom/android/OriginalSettings/CredentialStorage;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 135
    :cond_0
    sget-object v0, Lcom/android/OriginalSettings/CredentialStorage$1;->$SwitchMap$android$security$KeyStore$State:[I

    iget-object v1, p0, Lcom/android/OriginalSettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/KeyStore$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 137
    :pswitch_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/CredentialStorage;->ensureKeyGuard()V

    goto :goto_0

    .line 141
    :pswitch_1
    new-instance v0, Lcom/android/OriginalSettings/CredentialStorage$UnlockDialog;

    invoke-direct {v0, p0, v2}, Lcom/android/OriginalSettings/CredentialStorage$UnlockDialog;-><init>(Lcom/android/OriginalSettings/CredentialStorage;Lcom/android/OriginalSettings/CredentialStorage$1;)V

    goto :goto_0

    .line 145
    :pswitch_2
    invoke-direct {p0}, Lcom/android/OriginalSettings/CredentialStorage;->checkKeyGuardQuality()Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    new-instance v0, Lcom/android/OriginalSettings/CredentialStorage$ConfigureKeyGuardDialog;

    invoke-direct {v0, p0, v2}, Lcom/android/OriginalSettings/CredentialStorage$ConfigureKeyGuardDialog;-><init>(Lcom/android/OriginalSettings/CredentialStorage;Lcom/android/OriginalSettings/CredentialStorage$1;)V

    goto :goto_0

    .line 149
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/CredentialStorage;->installIfAvailable()V

    .line 150
    invoke-virtual {p0}, Lcom/android/OriginalSettings/CredentialStorage;->finish()V

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private installIfAvailable()V
    .locals 10

    .prologue
    .line 189
    iget-object v7, p0, Lcom/android/OriginalSettings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/OriginalSettings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    invoke-virtual {v7}, Landroid/os/Bundle;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/OriginalSettings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    .line 191
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/OriginalSettings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    .line 193
    const-string v7, "user_private_key_name"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 194
    const-string v7, "user_private_key_name"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 195
    .local v5, key:Ljava/lang/String;
    const-string v7, "user_private_key_data"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 197
    .local v6, value:[B
    iget-object v7, p0, Lcom/android/OriginalSettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v7, v5, v6}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[B)Z

    move-result v7

    if-nez v7, :cond_1

    .line 198
    const-string v7, "CredentialStorage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to install "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v5           #key:Ljava/lang/String;
    .end local v6           #value:[B
    :cond_0
    :goto_0
    return-void

    .line 203
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_1
    const-string v7, "user_certificate_name"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 204
    const-string v7, "user_certificate_name"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 205
    .local v4, certName:Ljava/lang/String;
    const-string v7, "user_certificate_data"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 207
    .local v3, certData:[B
    iget-object v7, p0, Lcom/android/OriginalSettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v7, v4, v3}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    move-result v7

    if-nez v7, :cond_2

    .line 208
    const-string v7, "CredentialStorage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to install "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 213
    .end local v3           #certData:[B
    .end local v4           #certName:Ljava/lang/String;
    :cond_2
    const-string v7, "ca_certificates_name"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 214
    const-string v7, "ca_certificates_name"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, caListName:Ljava/lang/String;
    const-string v7, "ca_certificates_data"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 217
    .local v1, caListData:[B
    iget-object v7, p0, Lcom/android/OriginalSettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v7, v2, v1}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    move-result v7

    if-nez v7, :cond_3

    .line 218
    const-string v7, "CredentialStorage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to install "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 248
    .end local v1           #caListData:[B
    .end local v2           #caListName:Ljava/lang/String;
    :cond_3
    const/4 v7, -0x1

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/CredentialStorage;->setResult(I)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 373
    invoke-super {p0, p1, p2, p3}, Lcom/android/OriginalSettings/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 378
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 379
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 380
    const-string v1, "password"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, password:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 383
    iget-object v1, p0, Lcom/android/OriginalSettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .line 391
    .end local v0           #password:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/CredentialStorage;->finish()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 109
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onResume()V

    .line 111
    invoke-virtual {p0}, Lcom/android/OriginalSettings/CredentialStorage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 112
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.android.credentials.RESET"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    new-instance v2, Lcom/android/OriginalSettings/CredentialStorage$ResetDialog;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/OriginalSettings/CredentialStorage$ResetDialog;-><init>(Lcom/android/OriginalSettings/CredentialStorage;Lcom/android/OriginalSettings/CredentialStorage$1;)V

    .line 124
    :goto_0
    return-void

    .line 117
    :cond_0
    const-string v2, "com.android.credentials.INSTALL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "com.android.certinstaller"

    invoke-virtual {p0}, Lcom/android/OriginalSettings/CredentialStorage;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    .line 122
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/CredentialStorage;->handleUnlockOrInstall()V

    goto :goto_0
.end method
