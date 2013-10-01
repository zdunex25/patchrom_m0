.class public Landroid/net/SSLCertificateSocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "SSLCertificateSocketFactory.java"


# static fields
.field private static final HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier; = null

.field private static final INSECURE_TRUST_MANAGER:[Ljavax/net/ssl/TrustManager; = null

.field private static final TAG:Ljava/lang/String; = "SSLCertificateSocketFactory"


# instance fields
.field private final mHandshakeTimeoutMillis:I

.field private mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private mKeyManagers:[Ljavax/net/ssl/KeyManager;

.field private mNpnProtocols:[B

.field private final mSecure:Z

.field private mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final mSessionCache:Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;

.field private mTrustManagers:[Ljavax/net/ssl/TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 75
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    new-instance v2, Landroid/net/SSLCertificateSocketFactory$1;

    invoke-direct {v2}, Landroid/net/SSLCertificateSocketFactory$1;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/SSLCertificateSocketFactory;->INSECURE_TRUST_MANAGER:[Ljavax/net/ssl/TrustManager;

    .line 83
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    sput-object v0, Landroid/net/SSLCertificateSocketFactory;->HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "handshakeTimeoutMillis"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 99
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/net/SSLCertificateSocketFactory;-><init>(ILandroid/net/SSLSessionCache;Z)V

    .line 100
    return-void
.end method

.method private constructor <init>(ILandroid/net/SSLSessionCache;Z)V
    .locals 1
    .parameter "handshakeTimeoutMillis"
    .parameter "cache"
    .parameter "secure"

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 86
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 87
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 88
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mTrustManagers:[Ljavax/net/ssl/TrustManager;

    .line 89
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mKeyManagers:[Ljavax/net/ssl/KeyManager;

    .line 90
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    .line 104
    iput p1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    .line 105
    if-nez p2, :cond_0

    :goto_0
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSessionCache:Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;

    .line 106
    iput-boolean p3, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    .line 107
    return-void

    .line 105
    :cond_0
    iget-object v0, p2, Landroid/net/SSLSessionCache;->mSessionCache:Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;

    goto :goto_0
.end method

.method private static castToOpenSSLSocket(Ljava/net/Socket;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;
    .locals 3
    .parameter "socket"

    .prologue
    .line 362
    instance-of v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    if-nez v0, :cond_0

    .line 363
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Socket not created by this factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_0
    check-cast p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    .end local p0
    return-object p0
.end method

.method public static getDefault(I)Ljavax/net/SocketFactory;
    .locals 3
    .parameter "handshakeTimeoutMillis"

    .prologue
    .line 117
    new-instance v0, Landroid/net/SSLCertificateSocketFactory;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/net/SSLCertificateSocketFactory;-><init>(ILandroid/net/SSLSessionCache;Z)V

    return-object v0
.end method

.method public static getDefault(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 2
    .parameter "handshakeTimeoutMillis"
    .parameter "cache"

    .prologue
    .line 130
    new-instance v0, Landroid/net/SSLCertificateSocketFactory;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroid/net/SSLCertificateSocketFactory;-><init>(ILandroid/net/SSLSessionCache;Z)V

    return-object v0
.end method

.method private declared-synchronized getDelegate()Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    .prologue
    .line 222
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/net/SSLCertificateSocketFactory;->isSslCheckRelaxed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 223
    :cond_0
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_1

    .line 224
    iget-boolean v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    if-eqz v0, :cond_2

    .line 225
    const-string v0, "SSLCertificateSocketFactory"

    const-string v1, "*** BYPASSING SSL SECURITY CHECKS (socket.relaxsslcheck=yes) ***"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_0
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mKeyManagers:[Ljavax/net/ssl/KeyManager;

    sget-object v1, Landroid/net/SSLCertificateSocketFactory;->INSECURE_TRUST_MANAGER:[Ljavax/net/ssl/TrustManager;

    invoke-direct {p0, v0, v1}, Landroid/net/SSLCertificateSocketFactory;->makeSocketFactory([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 231
    :cond_1
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :goto_1
    monitor-exit p0

    return-object v0

    .line 227
    :cond_2
    :try_start_1
    const-string v0, "SSLCertificateSocketFactory"

    const-string v1, "Bypassing SSL security checks at caller\'s request"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 233
    :cond_3
    :try_start_2
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_4

    .line 234
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mKeyManagers:[Ljavax/net/ssl/KeyManager;

    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mTrustManagers:[Ljavax/net/ssl/TrustManager;

    invoke-direct {p0, v0, v1}, Landroid/net/SSLCertificateSocketFactory;->makeSocketFactory([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 236
    :cond_4
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static getHttpSocketFactory(ILandroid/net/SSLSessionCache;)Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .locals 3
    .parameter "handshakeTimeoutMillis"
    .parameter "cache"

    .prologue
    .line 160
    new-instance v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    new-instance v1, Landroid/net/SSLCertificateSocketFactory;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Landroid/net/SSLCertificateSocketFactory;-><init>(ILandroid/net/SSLSessionCache;Z)V

    invoke-direct {v0, v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    return-object v0
.end method

.method public static getInsecure(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 2
    .parameter "handshakeTimeoutMillis"
    .parameter "cache"

    .prologue
    .line 146
    new-instance v0, Landroid/net/SSLCertificateSocketFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/net/SSLCertificateSocketFactory;-><init>(ILandroid/net/SSLSessionCache;Z)V

    return-object v0
.end method

.method private static isSslCheckRelaxed()Z
    .locals 2

    .prologue
    .line 216
    const-string v0, "1"

    const-string/jumbo v1, "ro.debuggable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "yes"

    const-string/jumbo v1, "socket.relaxsslcheck"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeSocketFactory([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 4
    .parameter "keyManagers"
    .parameter "trustManagers"

    .prologue
    .line 205
    :try_start_0
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;

    invoke-direct {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;-><init>()V

    .line 206
    .local v1, sslContext:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;->engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 207
    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;->engineGetClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    move-result-object v2

    iget-object v3, p0, Landroid/net/SSLCertificateSocketFactory;->mSessionCache:Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;

    invoke-virtual {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->setPersistentCache(Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;)V

    .line 208
    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;->engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 211
    .end local v1           #sslContext:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;
    :goto_0
    return-object v2

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, e:Ljava/security/KeyManagementException;
    const-string v2, "SSLCertificateSocketFactory"

    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_0
.end method

.method static varargs toNpnProtocolsList([[B)[B
    .locals 15
    .parameter "npnProtocols"

    .prologue
    .line 277
    array-length v12, p0

    if-nez v12, :cond_0

    .line 278
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v13, "npnProtocols.length == 0"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 280
    :cond_0
    const/4 v11, 0x0

    .line 281
    .local v11, totalLength:I
    move-object v0, p0

    .local v0, arr$:[[B
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v10, v0, v3

    .line 282
    .local v10, s:[B
    array-length v12, v10

    if-eqz v12, :cond_1

    array-length v12, v10

    const/16 v13, 0xff

    if-le v12, v13, :cond_2

    .line 283
    :cond_1
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "s.length == 0 || s.length > 255: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v14, v10

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 285
    :cond_2
    array-length v12, v10

    add-int/lit8 v12, v12, 0x1

    add-int/2addr v11, v12

    .line 281
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 287
    .end local v10           #s:[B
    :cond_3
    new-array v9, v11, [B

    .line 288
    .local v9, result:[B
    const/4 v7, 0x0

    .line 289
    .local v7, pos:I
    move-object v0, p0

    array-length v5, v0

    const/4 v3, 0x0

    move v4, v3

    .end local v3           #i$:I
    .local v4, i$:I
    move v8, v7

    .end local v0           #arr$:[[B
    .end local v5           #len$:I
    .end local v7           #pos:I
    .local v8, pos:I
    :goto_1
    if-ge v4, v5, :cond_5

    aget-object v10, v0, v4

    .line 290
    .restart local v10       #s:[B
    add-int/lit8 v7, v8, 0x1

    .end local v8           #pos:I
    .restart local v7       #pos:I
    array-length v12, v10

    int-to-byte v12, v12

    aput-byte v12, v9, v8

    .line 291
    move-object v1, v10

    .local v1, arr$:[B
    array-length v6, v1

    .local v6, len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    move v8, v7

    .end local v7           #pos:I
    .restart local v8       #pos:I
    :goto_2
    if-ge v3, v6, :cond_4

    aget-byte v2, v1, v3

    .line 292
    .local v2, b:B
    add-int/lit8 v7, v8, 0x1

    .end local v8           #pos:I
    .restart local v7       #pos:I
    aput-byte v2, v9, v8

    .line 291
    add-int/lit8 v3, v3, 0x1

    move v8, v7

    .end local v7           #pos:I
    .restart local v8       #pos:I
    goto :goto_2

    .line 289
    .end local v2           #b:B
    :cond_4
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_1

    .line 295
    .end local v1           #arr$:[B
    .end local v6           #len$:I
    .end local v10           #s:[B
    :cond_5
    return-object v9
.end method

.method public static verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V
    .locals 5
    .parameter "socket"
    .parameter "hostname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    instance-of v2, p0, Ljavax/net/ssl/SSLSocket;

    if-nez v2, :cond_0

    .line 183
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Attempt to verify non-SSL socket"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 186
    :cond_0
    invoke-static {}, Landroid/net/SSLCertificateSocketFactory;->isSslCheckRelaxed()Z

    move-result v2

    if-nez v2, :cond_2

    move-object v1, p0

    .line 189
    check-cast v1, Ljavax/net/ssl/SSLSocket;

    .line 190
    .local v1, ssl:Ljavax/net/ssl/SSLSocket;
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 192
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 193
    .local v0, session:Ljavax/net/ssl/SSLSession;
    if-nez v0, :cond_1

    .line 194
    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string v3, "Cannot verify SSL socket without session"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 196
    :cond_1
    sget-object v2, Landroid/net/SSLCertificateSocketFactory;->HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    invoke-interface {v2, p1, v0}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 197
    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot verify hostname: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 200
    .end local v0           #session:Ljavax/net/ssl/SSLSession;
    .end local v1           #ssl:Ljavax/net/ssl/SSLSocket;
    :cond_2
    return-void
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 397
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    .line 398
    .local v0, s:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setNpnProtocols([B)V

    .line 399
    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    .line 400
    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 2
    .parameter "host"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 462
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    .line 463
    .local v0, s:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setNpnProtocols([B)V

    .line 464
    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    .line 465
    iget-boolean v1, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    if-eqz v1, :cond_0

    .line 466
    invoke-static {v0, p1}, Landroid/net/SSLCertificateSocketFactory;->verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V

    .line 468
    :cond_0
    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .parameter "host"
    .parameter "port"
    .parameter "localAddr"
    .parameter "localPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 444
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    .line 446
    .local v0, s:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setNpnProtocols([B)V

    .line 447
    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    .line 448
    iget-boolean v1, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    if-eqz v1, :cond_0

    .line 449
    invoke-static {v0, p1}, Landroid/net/SSLCertificateSocketFactory;->verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V

    .line 451
    :cond_0
    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .parameter "addr"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 429
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    .line 430
    .local v0, s:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setNpnProtocols([B)V

    .line 431
    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    .line 432
    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .parameter "addr"
    .parameter "port"
    .parameter "localAddr"
    .parameter "localPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    .line 415
    .local v0, s:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setNpnProtocols([B)V

    .line 416
    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    .line 417
    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 2
    .parameter "k"
    .parameter "host"
    .parameter "port"
    .parameter "close"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    .line 379
    .local v0, s:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setNpnProtocols([B)V

    .line 380
    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    .line 381
    iget-boolean v1, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    if-eqz v1, :cond_0

    .line 382
    invoke-static {v0, p2}, Landroid/net/SSLCertificateSocketFactory;->verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V

    .line 384
    :cond_0
    return-object v0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 473
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNpnSelectedProtocol(Ljava/net/Socket;)[B
    .locals 1
    .parameter "socket"

    .prologue
    .line 307
    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->castToOpenSSLSocket(Ljava/net/Socket;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->getNpnSelectedProtocol()[B

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 478
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setHostname(Ljava/net/Socket;Ljava/lang/String;)V
    .locals 1
    .parameter "socket"
    .parameter "hostName"

    .prologue
    .line 342
    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->castToOpenSSLSocket(Ljava/net/Socket;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setHostname(Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method public setKeyManagers([Ljavax/net/ssl/KeyManager;)V
    .locals 1
    .parameter "keyManagers"

    .prologue
    const/4 v0, 0x0

    .line 314
    iput-object p1, p0, Landroid/net/SSLCertificateSocketFactory;->mKeyManagers:[Ljavax/net/ssl/KeyManager;

    .line 317
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 318
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 319
    return-void
.end method

.method public setNpnProtocols([[B)V
    .locals 1
    .parameter "npnProtocols"

    .prologue
    .line 269
    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->toNpnProtocolsList([[B)[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    .line 270
    return-void
.end method

.method public setSoWriteTimeout(Ljava/net/Socket;I)V
    .locals 1
    .parameter "socket"
    .parameter "writeTimeoutMilliseconds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 358
    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->castToOpenSSLSocket(Ljava/net/Socket;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setSoWriteTimeout(I)V

    .line 359
    return-void
.end method

.method public setTrustManagers([Ljavax/net/ssl/TrustManager;)V
    .locals 1
    .parameter "trustManager"

    .prologue
    .line 244
    iput-object p1, p0, Landroid/net/SSLCertificateSocketFactory;->mTrustManagers:[Ljavax/net/ssl/TrustManager;

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 250
    return-void
.end method

.method public setUseSessionTickets(Ljava/net/Socket;Z)V
    .locals 1
    .parameter "socket"
    .parameter "useSessionTickets"

    .prologue
    .line 330
    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->castToOpenSSLSocket(Ljava/net/Socket;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setUseSessionTickets(Z)V

    .line 331
    return-void
.end method
