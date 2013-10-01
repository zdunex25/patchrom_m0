.class public Landroid/net/http/CertificateChainValidator;
.super Ljava/lang/Object;
.source "CertificateChainValidator.java"


# static fields
.field private static final sInstance:Landroid/net/http/CertificateChainValidator;

.field private static final sVerifier:Ljavax/net/ssl/DefaultHostnameVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Landroid/net/http/CertificateChainValidator;

    invoke-direct {v0}, Landroid/net/http/CertificateChainValidator;-><init>()V

    sput-object v0, Landroid/net/http/CertificateChainValidator;->sInstance:Landroid/net/http/CertificateChainValidator;

    .line 48
    new-instance v0, Ljavax/net/ssl/DefaultHostnameVerifier;

    invoke-direct {v0}, Ljavax/net/ssl/DefaultHostnameVerifier;-><init>()V

    sput-object v0, Landroid/net/http/CertificateChainValidator;->sVerifier:Ljavax/net/ssl/DefaultHostnameVerifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .locals 2
    .parameter "socket"
    .parameter "errorMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    if-eqz p1, :cond_1

    .line 203
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 204
    .local v0, session:Ljavax/net/ssl/SSLSession;
    if-eqz v0, :cond_0

    .line 205
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->invalidate()V

    .line 208
    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 211
    .end local v0           #session:Ljavax/net/ssl/SSLSession;
    :cond_1
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    invoke-direct {v1, p2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "socket"
    .parameter "errorMessage"
    .parameter "defaultErrorMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    if-eqz p2, :cond_0

    .end local p2
    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 194
    return-void

    .restart local p2
    :cond_0
    move-object p2, p3

    .line 192
    goto :goto_0
.end method

.method public static getInstance()Landroid/net/http/CertificateChainValidator;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Landroid/net/http/CertificateChainValidator;->sInstance:Landroid/net/http/CertificateChainValidator;

    return-object v0
.end method

.method public static handleTrustStorageUpdate()V
    .locals 4

    .prologue
    .line 134
    :try_start_0
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    .line 135
    .local v2, x509TrustManager:Ljavax/net/ssl/X509TrustManager;
    instance-of v3, v2, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;

    if-eqz v3, :cond_0

    .line 136
    move-object v0, v2

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;

    move-object v1, v0

    .line 137
    .local v1, trustManager:Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;
    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->handleTrustStorageUpdate()V
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v1           #trustManager:Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;
    :cond_0
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static verifyServerCertificates([[BLjava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;
    .locals 4
    .parameter "certChain"
    .parameter "domain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 116
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "bad certificate chain"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 119
    :cond_1
    array-length v2, p0

    new-array v1, v2, [Ljava/security/cert/X509Certificate;

    .line 121
    .local v1, serverCertificates:[Ljava/security/cert/X509Certificate;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 122
    new-instance v2, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    aget-object v3, p0, v0

    invoke-direct {v2, v3}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>([B)V

    aput-object v2, v1, v0

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_2
    invoke-static {v1, p1, p2}, Landroid/net/http/CertificateChainValidator;->verifyServerDomainAndCertificates([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;

    move-result-object v2

    return-object v2
.end method

.method private static verifyServerDomainAndCertificates([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;
    .locals 8
    .parameter "chain"
    .parameter "domain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 155
    aget-object v1, p0, v4

    .line 156
    .local v1, currCertificate:Ljava/security/cert/X509Certificate;
    if-nez v1, :cond_0

    .line 157
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "certificate for this site is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 160
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Landroid/net/http/CertificateChainValidator;->sVerifier:Ljavax/net/ssl/DefaultHostnameVerifier;

    invoke-virtual {v6, p1, v1}, Ljavax/net/ssl/DefaultHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v4, 0x1

    .line 163
    .local v4, valid:Z
    :cond_1
    if-nez v4, :cond_2

    .line 167
    new-instance v6, Landroid/net/http/SslError;

    const/4 v7, 0x2

    invoke-direct {v6, v7, v1}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    .line 184
    :goto_0
    return-object v6

    .line 171
    :cond_2
    :try_start_0
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v5

    .line 172
    .local v5, x509TrustManager:Ljavax/net/ssl/X509TrustManager;
    instance-of v6, v5, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;

    if-eqz v6, :cond_3

    .line 173
    move-object v0, v5

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;

    move-object v3, v0

    .line 174
    .local v3, trustManager:Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;
    invoke-virtual {v3, p0, p2, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 178
    .end local v3           #trustManager:Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 176
    :cond_3
    invoke-interface {v5, p0, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 179
    .end local v5           #x509TrustManager:Ljavax/net/ssl/X509TrustManager;
    :catch_0
    move-exception v2

    .line 184
    .local v2, e:Ljava/security/GeneralSecurityException;
    new-instance v6, Landroid/net/http/SslError;

    const/4 v7, 0x3

    invoke-direct {v6, v7, v1}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    goto :goto_0
.end method


# virtual methods
.method public doHandshakeAndValidateServerCertificates(Landroid/net/http/HttpsConnection;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)Landroid/net/http/SslError;
    .locals 5
    .parameter "connection"
    .parameter "sslSocket"
    .parameter "domain"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 78
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    .line 79
    .local v1, sslSession:Ljavax/net/ssl/SSLSession;
    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    const-string v2, "failed to perform SSL handshake"

    invoke-direct {p0, p2, v2}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 84
    :cond_0
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 87
    .local v0, peerCertificates:[Ljava/security/cert/Certificate;
    if-eqz v0, :cond_1

    array-length v2, v0

    if-nez v2, :cond_3

    .line 88
    :cond_1
    const-string v2, "failed to retrieve peer certificates"

    invoke-direct {p0, p2, v2}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 100
    :cond_2
    :goto_0
    check-cast v0, [Ljava/security/cert/X509Certificate;

    .end local v0           #peerCertificates:[Ljava/security/cert/Certificate;
    check-cast v0, [Ljava/security/cert/X509Certificate;

    const-string v2, "RSA"

    invoke-static {v0, p3, v2}, Landroid/net/http/CertificateChainValidator;->verifyServerDomainAndCertificates([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;

    move-result-object v2

    return-object v2

    .line 92
    .restart local v0       #peerCertificates:[Ljava/security/cert/Certificate;
    :cond_3
    if-eqz p1, :cond_2

    .line 93
    aget-object v2, v0, v4

    if-eqz v2, :cond_2

    .line 94
    new-instance v3, Landroid/net/http/SslCertificate;

    aget-object v2, v0, v4

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-direct {v3, v2}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {p1, v3}, Landroid/net/http/HttpsConnection;->setCertificate(Landroid/net/http/SslCertificate;)V

    goto :goto_0
.end method
