.class public Landroid/security/AndroidKeyStore;
.super Ljava/security/KeyStoreSpi;
.source "AndroidKeyStore.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "AndroidKeyStore"


# instance fields
.field private mKeyStore:Landroid/security/KeyStore;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    return-void
.end method

.method private getModificationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .parameter "alias"

    .prologue
    .line 167
    iget-object v2, p0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2, p1}, Landroid/security/KeyStore;->getmtime(Ljava/lang/String;)J

    move-result-wide v0

    .line 168
    .local v0, epochMillis:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 169
    const/4 v2, 0x0

    .line 172
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method private getUniqueAliases()Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 378
    iget-object v7, p0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 379
    .local v6, rawAliases:[Ljava/lang/String;
    if-nez v6, :cond_1

    .line 380
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 394
    :cond_0
    return-object v1

    .line 383
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    array-length v7, v6

    invoke-direct {v1, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 384
    .local v1, aliases:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object v2, v6

    .local v2, arr$:[Ljava/lang/String;
    array-length v5, v2

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v2, v3

    .line 385
    .local v0, alias:Ljava/lang/String;
    const/16 v7, 0x5f

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 386
    .local v4, idx:I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v4, :cond_3

    .line 387
    :cond_2
    const-string v7, "AndroidKeyStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid alias: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 391
    :cond_3
    new-instance v7, Ljava/lang/String;

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private isCertificateEntry(Ljava/lang/String;)Z
    .locals 3
    .parameter "alias"

    .prologue
    .line 432
    if-nez p1, :cond_0

    .line 433
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_0
    iget-object v0, p0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CACERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isKeyEntry(Ljava/lang/String;)Z
    .locals 3
    .parameter "alias"

    .prologue
    .line 424
    if-nez p1, :cond_0

    .line 425
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_0
    iget-object v0, p0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRPKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;)V
    .locals 19
    .parameter "alias"
    .parameter "key"
    .parameter "chain"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 210
    const/4 v7, 0x0

    .line 213
    .local v7, keyBytes:[B
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;

    move/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v16, p2

    .line 214
    check-cast v16, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;

    invoke-virtual/range {v16 .. v16}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->getPkeyAlias()Ljava/lang/String;

    move-result-object v11

    .line 222
    .local v11, pkeyAlias:Ljava/lang/String;
    :goto_0
    if-eqz v11, :cond_4

    const-string v16, "USRPKEY_"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 223
    const-string v16, "USRPKEY_"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 224
    .local v9, keySubalias:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 225
    new-instance v16, Ljava/security/KeyStoreException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Can only replace keys with same alias: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " != "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 215
    .end local v9           #keySubalias:Ljava/lang/String;
    .end local v11           #pkeyAlias:Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;

    move/from16 v16, v0

    if-eqz v16, :cond_1

    move-object/from16 v16, p2

    .line 216
    check-cast v16, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;

    invoke-virtual/range {v16 .. v16}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;->getPkeyAlias()Ljava/lang/String;

    move-result-object v11

    .restart local v11       #pkeyAlias:Ljava/lang/String;
    goto :goto_0

    .line 218
    .end local v11           #pkeyAlias:Ljava/lang/String;
    :cond_1
    const/4 v11, 0x0

    .restart local v11       #pkeyAlias:Ljava/lang/String;
    goto :goto_0

    .line 229
    .restart local v9       #keySubalias:Ljava/lang/String;
    :cond_2
    const/4 v12, 0x0

    .line 248
    .end local v9           #keySubalias:Ljava/lang/String;
    .local v12, shouldReplacePrivateKey:Z
    :goto_1
    if-eqz p3, :cond_3

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v16, v0

    if-nez v16, :cond_8

    .line 249
    :cond_3
    new-instance v16, Ljava/security/KeyStoreException;

    const-string v17, "Must supply at least one Certificate with PrivateKey"

    invoke-direct/range {v16 .. v17}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 232
    .end local v12           #shouldReplacePrivateKey:Z
    :cond_4
    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v8

    .line 233
    .local v8, keyFormat:Ljava/lang/String;
    if-eqz v8, :cond_5

    const-string v16, "PKCS#8"

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_6

    .line 234
    :cond_5
    new-instance v16, Ljava/security/KeyStoreException;

    const-string v17, "Only PrivateKeys that can be encoded into PKCS#8 are supported"

    invoke-direct/range {v16 .. v17}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 239
    :cond_6
    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v7

    .line 240
    if-nez v7, :cond_7

    .line 241
    new-instance v16, Ljava/security/KeyStoreException;

    const-string v17, "PrivateKey has no encoding"

    invoke-direct/range {v16 .. v17}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 244
    :cond_7
    const/4 v12, 0x1

    .restart local v12       #shouldReplacePrivateKey:Z
    goto :goto_1

    .line 253
    .end local v8           #keyFormat:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v15, v0, [Ljava/security/cert/X509Certificate;

    .line 254
    .local v15, x509chain:[Ljava/security/cert/X509Certificate;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v6, v0, :cond_b

    .line 255
    const-string v16, "X.509"

    aget-object v17, p3, v6

    invoke-virtual/range {v17 .. v17}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_9

    .line 256
    new-instance v16, Ljava/security/KeyStoreException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Certificates must be in X.509 format: invalid cert #"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 260
    :cond_9
    aget-object v16, p3, v6

    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/security/cert/X509Certificate;

    move/from16 v16, v0

    if-nez v16, :cond_a

    .line 261
    new-instance v16, Ljava/security/KeyStoreException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Certificates must be in X.509 format: invalid cert #"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 265
    :cond_a
    aget-object v16, p3, v6

    check-cast v16, Ljava/security/cert/X509Certificate;

    aput-object v16, v15, v6

    .line 254
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 270
    :cond_b
    const/16 v16, 0x0

    :try_start_0
    aget-object v16, v15, v16

    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509Certificate;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 281
    .local v14, userCertBytes:[B
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_d

    .line 286
    array-length v0, v15

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    new-array v3, v0, [[B

    .line 287
    .local v3, certsBytes:[[B
    const/4 v13, 0x0

    .line 288
    .local v13, totalCertLength:I
    const/4 v6, 0x0

    :goto_3
    array-length v0, v3

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v6, v0, :cond_c

    .line 290
    add-int/lit8 v16, v6, 0x1

    :try_start_1
    aget-object v16, v15, v16

    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v16

    aput-object v16, v3, v6

    .line 291
    aget-object v16, v3, v6

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    add-int v13, v13, v16

    .line 288
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 271
    .end local v3           #certsBytes:[[B
    .end local v13           #totalCertLength:I
    .end local v14           #userCertBytes:[B
    :catch_0
    move-exception v5

    .line 272
    .local v5, e:Ljava/security/cert/CertificateEncodingException;
    new-instance v16, Ljava/security/KeyStoreException;

    const-string v17, "Couldn\'t encode certificate #1"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v16

    .line 292
    .end local v5           #e:Ljava/security/cert/CertificateEncodingException;
    .restart local v3       #certsBytes:[[B
    .restart local v13       #totalCertLength:I
    .restart local v14       #userCertBytes:[B
    :catch_1
    move-exception v5

    .line 293
    .restart local v5       #e:Ljava/security/cert/CertificateEncodingException;
    new-instance v16, Ljava/security/KeyStoreException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Can\'t encode Certificate #"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v16

    .line 301
    .end local v5           #e:Ljava/security/cert/CertificateEncodingException;
    :cond_c
    new-array v4, v13, [B

    .line 302
    .local v4, chainBytes:[B
    const/4 v10, 0x0

    .line 303
    .local v10, outputOffset:I
    const/4 v6, 0x0

    :goto_4
    array-length v0, v3

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v6, v0, :cond_e

    .line 304
    aget-object v16, v3, v6

    move-object/from16 v0, v16

    array-length v2, v0

    .line 305
    .local v2, certLength:I
    aget-object v16, v3, v6

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v1, v4, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    add-int/2addr v10, v2

    .line 307
    const/16 v16, 0x0

    aput-object v16, v3, v6

    .line 303
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 310
    .end local v2           #certLength:I
    .end local v3           #certsBytes:[[B
    .end local v4           #chainBytes:[B
    .end local v10           #outputOffset:I
    .end local v13           #totalCertLength:I
    :cond_d
    const/4 v4, 0x0

    .line 317
    .restart local v4       #chainBytes:[B
    :cond_e
    if-eqz v12, :cond_f

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    .line 323
    :goto_5
    if-eqz v12, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "USRPKEY_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v7}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[B)Z

    move-result v16

    if-nez v16, :cond_10

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    .line 326
    new-instance v16, Ljava/security/KeyStoreException;

    const-string v17, "Couldn\'t put private key in keystore"

    invoke-direct/range {v16 .. v17}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 320
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/security/Credentials;->deleteCertificateTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    goto :goto_5

    .line 327
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "USRCERT_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v14}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    move-result v16

    if-nez v16, :cond_11

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    .line 329
    new-instance v16, Ljava/security/KeyStoreException;

    const-string v17, "Couldn\'t put certificate #1 in keystore"

    invoke-direct/range {v16 .. v17}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 330
    :cond_11
    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "CACERT_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    move-result v16

    if-nez v16, :cond_12

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    .line 333
    new-instance v16, Ljava/security/KeyStoreException;

    const-string v17, "Couldn\'t put certificate chain in keystore"

    invoke-direct/range {v16 .. v17}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 335
    :cond_12
    return-void
.end method

.method private static toCertificate([B)Ljava/security/cert/X509Certificate;
    .locals 4
    .parameter "bytes"

    .prologue
    .line 145
    :try_start_0
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 146
    .local v0, certFactory:Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v0           #certFactory:Ljava/security/cert/CertificateFactory;
    :goto_0
    return-object v2

    .line 148
    :catch_0
    move-exception v1

    .line 149
    .local v1, e:Ljava/security/cert/CertificateException;
    const-string v2, "AndroidKeyStore"

    const-string v3, "Couldn\'t parse certificate in keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static toCertificates([B)Ljava/util/Collection;
    .locals 4
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    :try_start_0
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 158
    .local v0, certFactory:Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 162
    .end local v0           #certFactory:Ljava/security/cert/CertificateFactory;
    :goto_0
    return-object v2

    .line 160
    :catch_0
    move-exception v1

    .line 161
    .local v1, e:Ljava/security/cert/CertificateException;
    const-string v2, "AndroidKeyStore"

    const-string v3, "Couldn\'t parse certificates in keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public engineAliases()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 399
    invoke-direct {p0}, Landroid/security/AndroidKeyStore;->getUniqueAliases()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .locals 3
    .parameter "alias"

    .prologue
    .line 404
    if-nez p1, :cond_0

    .line 405
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_0
    iget-object v0, p0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRPKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRCERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CACERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public engineDeleteEntry(Ljava/lang/String;)V
    .locals 3
    .parameter "alias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 368
    invoke-direct {p0, p1}, Landroid/security/AndroidKeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Landroid/security/AndroidKeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 375
    :cond_0
    return-void

    .line 372
    :cond_1
    iget-object v0, p0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {v0, p1}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 4
    .parameter "alias"

    .prologue
    .line 126
    if-nez p1, :cond_0

    .line 127
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "alias == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    :cond_0
    iget-object v1, p0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USRCERT_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    .line 131
    .local v0, certificate:[B
    if-eqz v0, :cond_1

    .line 132
    invoke-static {v0}, Landroid/security/AndroidKeyStore;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 140
    :goto_0
    return-object v1

    .line 135
    :cond_1
    iget-object v1, p0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CACERT_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    .line 136
    if-eqz v0, :cond_2

    .line 137
    invoke-static {v0}, Landroid/security/AndroidKeyStore;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    goto :goto_0

    .line 140
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 13
    .parameter "cert"

    .prologue
    const/4 v9, 0x0

    .line 446
    if-nez p1, :cond_0

    move-object v0, v9

    .line 494
    :goto_0
    return-object v0

    .line 450
    :cond_0
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 458
    .local v8, nonCaEntries:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v10, p0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    const-string v11, "USRCERT_"

    invoke-virtual {v10, v11}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 459
    .local v4, certAliases:[Ljava/lang/String;
    move-object v1, v4

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v7, :cond_3

    aget-object v0, v1, v6

    .line 460
    .local v0, alias:Ljava/lang/String;
    iget-object v10, p0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "USRCERT_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v5

    .line 461
    .local v5, certBytes:[B
    if-nez v5, :cond_2

    .line 459
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 465
    :cond_2
    invoke-static {v5}, Landroid/security/AndroidKeyStore;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 466
    .local v2, c:Ljava/security/cert/Certificate;
    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 468
    invoke-virtual {p1, v2}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_0

    .line 477
    .end local v0           #alias:Ljava/lang/String;
    .end local v2           #c:Ljava/security/cert/Certificate;
    .end local v5           #certBytes:[B
    :cond_3
    iget-object v10, p0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    const-string v11, "CACERT_"

    invoke-virtual {v10, v11}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 478
    .local v3, caAliases:[Ljava/lang/String;
    move-object v1, v3

    array-length v7, v1

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v7, :cond_6

    aget-object v0, v1, v6

    .line 479
    .restart local v0       #alias:Ljava/lang/String;
    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 478
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 483
    :cond_5
    iget-object v10, p0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CACERT_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v5

    .line 484
    .restart local v5       #certBytes:[B
    if-eqz v5, :cond_4

    .line 488
    iget-object v10, p0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CACERT_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v10

    invoke-static {v10}, Landroid/security/AndroidKeyStore;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 489
    .restart local v2       #c:Ljava/security/cert/Certificate;
    invoke-virtual {p1, v2}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto/16 :goto_0

    .end local v0           #alias:Ljava/lang/String;
    .end local v2           #c:Ljava/security/cert/Certificate;
    .end local v5           #certBytes:[B
    :cond_6
    move-object v0, v9

    .line 494
    goto/16 :goto_0
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 10
    .parameter "alias"

    .prologue
    .line 93
    if-nez p1, :cond_0

    .line 94
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "alias == null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 97
    :cond_0
    invoke-virtual {p0, p1}, Landroid/security/AndroidKeyStore;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 98
    .local v6, leaf:Ljava/security/cert/X509Certificate;
    if-nez v6, :cond_1

    .line 99
    const/4 v2, 0x0

    .line 121
    :goto_0
    return-object v2

    .line 104
    :cond_1
    iget-object v7, p0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CACERT_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    .line 105
    .local v0, caBytes:[B
    if-eqz v0, :cond_2

    .line 106
    invoke-static {v0}, Landroid/security/AndroidKeyStore;->toCertificates([B)Ljava/util/Collection;

    move-result-object v1

    .line 108
    .local v1, caChain:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    new-array v2, v7, [Ljava/security/cert/Certificate;

    .line 110
    .local v2, caList:[Ljava/security/cert/Certificate;
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 111
    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/security/cert/X509Certificate;>;"
    const/4 v3, 0x1

    .line 112
    .local v3, i:I
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 113
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/Certificate;

    aput-object v7, v2, v3

    move v3, v4

    .end local v4           #i:I
    .restart local v3       #i:I
    goto :goto_1

    .line 116
    .end local v1           #caChain:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .end local v2           #caList:[Ljava/security/cert/Certificate;
    .end local v3           #i:I
    .end local v5           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/security/cert/X509Certificate;>;"
    :cond_2
    const/4 v7, 0x1

    new-array v2, v7, [Ljava/security/cert/Certificate;

    .line 119
    .restart local v2       #caList:[Ljava/security/cert/Certificate;
    :cond_3
    const/4 v7, 0x0

    aput-object v6, v2, v7

    goto :goto_0
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .parameter "alias"

    .prologue
    .line 177
    if-nez p1, :cond_0

    .line 178
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "alias == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRPKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/AndroidKeyStore;->getModificationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 182
    .local v0, d:Ljava/util/Date;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 191
    :goto_0
    return-object v1

    .line 186
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRCERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/AndroidKeyStore;->getModificationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_2

    move-object v1, v0

    .line 188
    goto :goto_0

    .line 191
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CACERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/AndroidKeyStore;->getModificationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    goto :goto_0
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 5
    .parameter "alias"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/security/AndroidKeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 78
    const/4 v3, 0x0

    .line 83
    :goto_0
    return-object v3

    .line 81
    :cond_0
    const-string v3, "keystore"

    invoke-static {v3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;->getInstance(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;

    move-result-object v1

    .line 83
    .local v1, engine:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRPKEY_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;->getPrivateKeyById(Ljava/lang/String;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Ljava/security/InvalidKeyException;
    new-instance v2, Ljava/security/UnrecoverableKeyException;

    const-string v3, "Can\'t get key"

    invoke-direct {v2, v3}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    .line 86
    .local v2, t:Ljava/security/UnrecoverableKeyException;
    invoke-virtual {v2, v0}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 87
    throw v2
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .locals 1
    .parameter "alias"

    .prologue
    .line 441
    invoke-direct {p0, p1}, Landroid/security/AndroidKeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/security/AndroidKeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .locals 1
    .parameter "alias"

    .prologue
    .line 420
    invoke-direct {p0, p1}, Landroid/security/AndroidKeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 2
    .parameter "stream"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 506
    if-eqz p1, :cond_0

    .line 507
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InputStream not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_0
    if-eqz p2, :cond_1

    .line 511
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "password not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_1
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    .line 516
    return-void
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 5
    .parameter "alias"
    .parameter "cert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 345
    invoke-direct {p0, p1}, Landroid/security/AndroidKeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 346
    new-instance v2, Ljava/security/KeyStoreException;

    const-string v3, "Entry exists and is not a trusted certificate"

    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 350
    :cond_0
    if-nez p2, :cond_1

    .line 351
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "cert == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 356
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 361
    .local v1, encoded:[B
    iget-object v2, p0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CACERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    move-result v2

    if-nez v2, :cond_2

    .line 362
    new-instance v2, Ljava/security/KeyStoreException;

    const-string v3, "Couldn\'t insert certificate; is KeyStore initialized?"

    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 357
    .end local v1           #encoded:[B
    :catch_0
    move-exception v0

    .line 358
    .local v0, e:Ljava/security/cert/CertificateEncodingException;
    new-instance v2, Ljava/security/KeyStoreException;

    invoke-direct {v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 364
    .end local v0           #e:Ljava/security/cert/CertificateEncodingException;
    .restart local v1       #encoded:[B
    :cond_2
    return-void
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 2
    .parameter "alias"
    .parameter "key"
    .parameter "password"
    .parameter "chain"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 197
    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    .line 198
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "entries cannot be protected with passwords"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_0
    instance-of v0, p2, Ljava/security/PrivateKey;

    if-eqz v0, :cond_1

    .line 202
    check-cast p2, Ljava/security/PrivateKey;

    .end local p2
    invoke-direct {p0, p1, p2, p4}, Landroid/security/AndroidKeyStore;->setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;)V

    .line 206
    return-void

    .line 204
    .restart local p2
    :cond_1
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Only PrivateKeys are supported"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 2
    .parameter "alias"
    .parameter "userKey"
    .parameter "chain"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 340
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Operation not supported because key encoding is unknown"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSize()I
    .locals 1

    .prologue
    .line 415
    invoke-direct {p0}, Landroid/security/AndroidKeyStore;->getUniqueAliases()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 2
    .parameter "stream"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 500
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can not serialize AndroidKeyStore to OutputStream"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
