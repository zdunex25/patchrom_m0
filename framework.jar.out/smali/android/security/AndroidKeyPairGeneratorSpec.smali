.class public Landroid/security/AndroidKeyPairGeneratorSpec;
.super Ljava/lang/Object;
.source "AndroidKeyPairGeneratorSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEndDate:Ljava/util/Date;

.field private final mKeystoreAlias:Ljava/lang/String;

.field private final mSerialNumber:Ljava/math/BigInteger;

.field private final mStartDate:Ljava/util/Date;

.field private final mSubjectDN:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;)V
    .locals 2
    .parameter "context"
    .parameter "keyStoreAlias"
    .parameter "subjectDN"
    .parameter "serialNumber"
    .parameter "startDate"
    .parameter "endDate"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    if-nez p1, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyStoreAlias must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    if-nez p3, :cond_2

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "subjectDN == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_2
    if-nez p4, :cond_3

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "serialNumber == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_3
    if-nez p5, :cond_4

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "startDate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_4
    if-nez p6, :cond_5

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endDate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_5
    invoke-virtual {p6, p5}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endDate < startDate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_6
    iput-object p1, p0, Landroid/security/AndroidKeyPairGeneratorSpec;->mContext:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Landroid/security/AndroidKeyPairGeneratorSpec;->mKeystoreAlias:Ljava/lang/String;

    .line 98
    iput-object p3, p0, Landroid/security/AndroidKeyPairGeneratorSpec;->mSubjectDN:Ljavax/security/auth/x500/X500Principal;

    .line 99
    iput-object p4, p0, Landroid/security/AndroidKeyPairGeneratorSpec;->mSerialNumber:Ljava/math/BigInteger;

    .line 100
    iput-object p5, p0, Landroid/security/AndroidKeyPairGeneratorSpec;->mStartDate:Ljava/util/Date;

    .line 101
    iput-object p6, p0, Landroid/security/AndroidKeyPairGeneratorSpec;->mEndDate:Ljava/util/Date;

    .line 102
    return-void
.end method


# virtual methods
.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Landroid/security/AndroidKeyPairGeneratorSpec;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getEndDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Landroid/security/AndroidKeyPairGeneratorSpec;->mEndDate:Ljava/util/Date;

    return-object v0
.end method

.method getKeystoreAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Landroid/security/AndroidKeyPairGeneratorSpec;->mKeystoreAlias:Ljava/lang/String;

    return-object v0
.end method

.method getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Landroid/security/AndroidKeyPairGeneratorSpec;->mSerialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method getStartDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Landroid/security/AndroidKeyPairGeneratorSpec;->mStartDate:Ljava/util/Date;

    return-object v0
.end method

.method getSubjectDN()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Landroid/security/AndroidKeyPairGeneratorSpec;->mSubjectDN:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method
