.class public Lcom/google/a/a/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final a:Ljava/security/SecureRandom;


# instance fields
.field private b:Lcom/google/a/a/a/f;

.field private c:Ljava/security/PublicKey;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/google/a/a/a/q;

.field private f:Landroid/os/Handler;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/util/Set;

.field private final j:Ljava/util/Queue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/google/a/a/a/i;->a:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/a/a/a/q;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/i;->i:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/i;->j:Ljava/util/Queue;

    iput-object p1, p0, Lcom/google/a/a/a/i;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/a/a/a/i;->e:Lcom/google/a/a/a/q;

    invoke-static {p3}, Lcom/google/a/a/a/i;->a(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/i;->c:Ljava/security/PublicKey;

    iget-object v0, p0, Lcom/google/a/a/a/i;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/i;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/a/a/a/i;->g:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/a/a/a/i;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/i;->h:Ljava/lang/String;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "background thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/a/a/a/i;->f:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/google/a/a/a/i;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/i;->f:Landroid/os/Handler;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "LicenseChecker"

    const-string v1, "Package not found. could not get version code."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 3

    :try_start_0
    invoke-static {p0}, Lcom/google/a/a/a/a/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/a/a/a/a/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    const-string v1, "LicenseChecker"

    const-string v2, "Could not decode from Base64."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    const-string v1, "LicenseChecker"

    const-string v2, "Invalid key specification."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a(Lcom/google/a/a/a/i;Lcom/google/a/a/a/n;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/a/a/a/i;->b(Lcom/google/a/a/a/n;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/google/a/a/a/n;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/a/a/a/i;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/a/a/a/i;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/a/a/a/i;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/google/a/a/a/i;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/i;->i:Ljava/util/Set;

    return-object v0
.end method

.method private b()V
    .locals 6

    :goto_0
    iget-object v0, p0, Lcom/google/a/a/a/i;->j:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/a/n;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "LicenseChecker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Calling checkLicense on service for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/a/a/a/n;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/a/a/a/i;->b:Lcom/google/a/a/a/f;

    invoke-virtual {v0}, Lcom/google/a/a/a/n;->b()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Lcom/google/a/a/a/n;->c()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/google/a/a/a/j;

    invoke-direct {v5, p0, v0}, Lcom/google/a/a/a/j;-><init>(Lcom/google/a/a/a/i;Lcom/google/a/a/a/n;)V

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/google/a/a/a/f;->a(JLjava/lang/String;Lcom/google/a/a/a/c;)V

    iget-object v1, p0, Lcom/google/a/a/a/i;->i:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "LicenseChecker"

    const-string v3, "RemoteException in checkLicense call."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, v0}, Lcom/google/a/a/a/i;->b(Lcom/google/a/a/a/n;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/a/a/a/i;Lcom/google/a/a/a/n;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/a/a/a/i;->a(Lcom/google/a/a/a/n;)V

    return-void
.end method

.method private declared-synchronized b(Lcom/google/a/a/a/n;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/a/a/a/i;->e:Lcom/google/a/a/a/q;

    const/16 v1, 0x123

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/a/a/a/q;->a(ILcom/google/a/a/a/s;)V

    iget-object v0, p0, Lcom/google/a/a/a/i;->e:Lcom/google/a/a/a/q;

    invoke-interface {v0}, Lcom/google/a/a/a/q;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/a/a/a/n;->a()Lcom/google/a/a/a/m;

    move-result-object v0

    const/16 v1, 0x123

    invoke-interface {v0, v1}, Lcom/google/a/a/a/m;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/google/a/a/a/n;->a()Lcom/google/a/a/a/m;

    move-result-object v0

    const/16 v1, 0x123

    invoke-interface {v0, v1}, Lcom/google/a/a/a/m;->b(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/google/a/a/a/i;)Ljava/security/PublicKey;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/i;->c:Ljava/security/PublicKey;

    return-object v0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/google/a/a/a/i;->b:Lcom/google/a/a/a/f;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/a/a/a/i;->d:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/a/a/a/i;->b:Lcom/google/a/a/a/f;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "LicenseChecker"

    const-string v1, "Unable to unbind from licensing service (already unbound)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private d()I
    .locals 1

    sget-object v0, Lcom/google/a/a/a/i;->a:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    return v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/a/a/a/i;->c()V

    iget-object v0, p0, Lcom/google/a/a/a/i;->f:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/a/a/a/m;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/a/a/a/i;->e:Lcom/google/a/a/a/q;

    invoke-interface {v0}, Lcom/google/a/a/a/q;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LicenseChecker"

    const-string v1, "Using cached license response"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x100

    invoke-interface {p1, v0}, Lcom/google/a/a/a/m;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/a/a/a/n;

    iget-object v1, p0, Lcom/google/a/a/a/i;->e:Lcom/google/a/a/a/q;

    new-instance v2, Lcom/google/a/a/a/o;

    invoke-direct {v2}, Lcom/google/a/a/a/o;-><init>()V

    invoke-direct {p0}, Lcom/google/a/a/a/i;->d()I

    move-result v4

    iget-object v5, p0, Lcom/google/a/a/a/i;->g:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/a/a/a/i;->h:Ljava/lang/String;

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/a/a/a/n;-><init>(Lcom/google/a/a/a/q;Lcom/google/a/a/a/b;Lcom/google/a/a/a/m;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/a/a/a/i;->b:Lcom/google/a/a/a/f;

    if-nez v1, :cond_2

    const-string v1, "LicenseChecker"

    const-string v2, "Binding to licensing service."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/google/a/a/a/i;->d:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    new-instance v3, Ljava/lang/String;

    const-string v4, "Y29tLmFuZHJvaWQudmVuZGluZy5saWNlbnNpbmcuSUxpY2Vuc2luZ1NlcnZpY2U="

    invoke-static {v4}, Lcom/google/a/a/a/a/a;->a(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/a/a/a/i;->j:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/a/a/a/a/b; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x6

    :try_start_3
    invoke-interface {p1, v0}, Lcom/google/a/a/a/m;->c(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_4
    const-string v1, "LicenseChecker"

    const-string v2, "Could not bind to service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/google/a/a/a/i;->b(Lcom/google/a/a/a/n;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/a/a/a/a/b; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Lcom/google/a/a/a/a/b;->printStackTrace()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/a/a/a/i;->j:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/a/a/a/i;->b()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lcom/google/a/a/a/g;->a(Landroid/os/IBinder;)Lcom/google/a/a/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/i;->b:Lcom/google/a/a/a/f;

    invoke-direct {p0}, Lcom/google/a/a/a/i;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "LicenseChecker"

    const-string v1, "Service unexpectedly disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/a/a/a/i;->b:Lcom/google/a/a/a/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
