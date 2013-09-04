.class Lcom/google/a/a/a/n;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/a/a/a/q;

.field private final b:Lcom/google/a/a/a/m;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/google/a/a/a/b;


# direct methods
.method constructor <init>(Lcom/google/a/a/a/q;Lcom/google/a/a/a/b;Lcom/google/a/a/a/m;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/a/a/a/n;->a:Lcom/google/a/a/a/q;

    iput-object p2, p0, Lcom/google/a/a/a/n;->f:Lcom/google/a/a/a/b;

    iput-object p3, p0, Lcom/google/a/a/a/n;->b:Lcom/google/a/a/a/m;

    iput p4, p0, Lcom/google/a/a/a/n;->c:I

    iput-object p5, p0, Lcom/google/a/a/a/n;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/a/a/a/n;->e:Ljava/lang/String;

    return-void
.end method

.method private a(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/n;->a:Lcom/google/a/a/a/q;

    invoke-interface {v0}, Lcom/google/a/a/a/q;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/a/a/a/n;->b:Lcom/google/a/a/a/m;

    invoke-interface {v0, p1}, Lcom/google/a/a/a/m;->a(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/n;->b:Lcom/google/a/a/a/m;

    invoke-interface {v0, p1}, Lcom/google/a/a/a/m;->b(I)V

    goto :goto_0
.end method

.method private a(ILcom/google/a/a/a/s;)V
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/n;->a:Lcom/google/a/a/a/q;

    invoke-interface {v0, p1, p2}, Lcom/google/a/a/a/q;->a(ILcom/google/a/a/a/s;)V

    return-void
.end method

.method private a(ILcom/google/a/a/a/s;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/a/a/a/n;->a(ILcom/google/a/a/a/s;)V

    invoke-direct {p0, p1}, Lcom/google/a/a/a/n;->a(I)V

    return-void
.end method

.method private a(JLjava/lang/String;Lcom/google/a/a/a/s;)V
    .locals 3

    const/16 v2, 0x123

    const-wide v0, 0xd202ef8dL

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x3c0c8ea1

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/n;->f:Lcom/google/a/a/a/b;

    invoke-interface {v0, p3}, Lcom/google/a/a/a/b;->a(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/google/a/a/a/n;->c:I

    invoke-direct {p0, v0, p4, v1}, Lcom/google/a/a/a/n;->a(ILcom/google/a/a/a/s;I)V

    :goto_0
    return-void

    :cond_1
    const-wide v0, 0xa505df1bL

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    const/16 v0, 0x231

    iget v1, p0, Lcom/google/a/a/a/n;->c:I

    invoke-direct {p0, v0, p4, v1}, Lcom/google/a/a/a/n;->a(ILcom/google/a/a/a/s;I)V

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x101

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    const-string v0, "LicenseValidator"

    const-string v1, "Error contacting licensing server."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/google/a/a/a/n;->c:I

    invoke-direct {p0, v2, p4, v0}, Lcom/google/a/a/a/n;->a(ILcom/google/a/a/a/s;I)V

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x4

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    const-string v0, "LicenseValidator"

    const-string v1, "An error has occurred on the licensing server."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/google/a/a/a/n;->c:I

    invoke-direct {p0, v2, p4, v0}, Lcom/google/a/a/a/n;->a(ILcom/google/a/a/a/s;I)V

    goto :goto_0

    :cond_4
    const-wide/16 v0, 0x5

    cmp-long v0, p1, v0

    if-nez v0, :cond_5

    const-string v0, "LicenseValidator"

    const-string v1, "Licensing server is refusing to talk to this device, over quota."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/google/a/a/a/n;->c:I

    invoke-direct {p0, v2, p4, v0}, Lcom/google/a/a/a/n;->a(ILcom/google/a/a/a/s;I)V

    goto :goto_0

    :cond_5
    const-wide/16 v0, 0x102

    cmp-long v0, p1, v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/a/a/a/n;->b(I)V

    goto :goto_0

    :cond_6
    const-wide/16 v0, 0x103

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/a/a/a/n;->b(I)V

    goto :goto_0

    :cond_7
    const-wide/16 v0, 0x3

    cmp-long v0, p1, v0

    if-nez v0, :cond_8

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/a/a/a/n;->b(I)V

    goto :goto_0

    :cond_8
    const-string v0, "LicenseValidator"

    const-string v1, "Unknown response code for license check."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/google/a/a/a/n;->d()V

    goto :goto_0
.end method

.method private b(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/n;->b:Lcom/google/a/a/a/m;

    invoke-interface {v0, p1}, Lcom/google/a/a/a/m;->c(I)V

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/google/a/a/a/n;->b:Lcom/google/a/a/a/m;

    const/16 v1, 0x231

    invoke-interface {v0, v1}, Lcom/google/a/a/a/m;->b(I)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/a/a/a/m;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/n;->b:Lcom/google/a/a/a/m;

    return-object v0
.end method

.method public a(Ljava/security/PublicKey;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_6

    :cond_0
    :try_start_0
    const-string v0, "SHA1withRSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    invoke-static {p4}, Lcom/google/a/a/a/a/a;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LicenseValidator"

    const-string v1, "Signature verification failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/google/a/a/a/n;->d()V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/a/a/a/a/b; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/a/a/a/n;->b(I)V

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    const-string v0, "LicenseValidator"

    const-string v1, "Could not Base64-decode signature."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/google/a/a/a/n;->d()V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {p3}, Lcom/google/a/a/a/s;->a(Ljava/lang/String;)Lcom/google/a/a/a/s;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    iget v1, v0, Lcom/google/a/a/a/s;->a:I

    if-eq v1, p2, :cond_2

    const-string v0, "LicenseValidator"

    const-string v1, "Response codes don\'t match."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/google/a/a/a/n;->d()V

    goto :goto_0

    :catch_4
    move-exception v0

    const-string v0, "LicenseValidator"

    const-string v1, "Could not parse response."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/google/a/a/a/n;->d()V

    goto :goto_0

    :cond_2
    iget v1, v0, Lcom/google/a/a/a/s;->b:I

    iget v2, p0, Lcom/google/a/a/a/n;->c:I

    if-eq v1, v2, :cond_3

    const-string v0, "LicenseValidator"

    const-string v1, "Nonce doesn\'t match."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/google/a/a/a/n;->d()V

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/google/a/a/a/s;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/a/a/a/n;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v0, "LicenseValidator"

    const-string v1, "Package name doesn\'t match."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/google/a/a/a/n;->d()V

    goto :goto_0

    :cond_4
    iget-object v1, v0, Lcom/google/a/a/a/s;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/a/a/a/n;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v0, "LicenseValidator"

    const-string v1, "Version codes don\'t match."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/google/a/a/a/n;->d()V

    goto :goto_0

    :cond_5
    iget-object v1, v0, Lcom/google/a/a/a/s;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v0, "LicenseValidator"

    const-string v1, "User identifier is empty."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/google/a/a/a/n;->d()V

    goto/16 :goto_0

    :cond_6
    move-object v1, v0

    :cond_7
    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v2, p2}, Ljava/util/zip/CRC32;->update(I)V

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/google/a/a/a/n;->a(JLjava/lang/String;Lcom/google/a/a/a/s;)V

    goto/16 :goto_0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/a/a/a/n;->c:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/n;->d:Ljava/lang/String;

    return-object v0
.end method
