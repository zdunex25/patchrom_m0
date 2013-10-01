.class public Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;
.super Ljava/lang/Object;
.source "AbstractSampleEncryptionBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;
    }
.end annotation


# instance fields
.field public iv:[B

.field public pairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;)V
    .locals 1
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->this$0:Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->pairs:Ljava/util/List;

    .line 221
    return-void
.end method


# virtual methods
.method public createPair(IJ)Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;
    .locals 1
    .parameter "clear"
    .parameter "encrypted"

    .prologue
    .line 217
    new-instance v0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;-><init>(Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;IJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 267
    if-ne p0, p1, :cond_1

    .line 283
    :cond_0
    :goto_0
    return v1

    .line 270
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 271
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 274
    check-cast v0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;

    .line 276
    .local v0, entry:Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;
    new-instance v3, Ljava/math/BigInteger;

    iget-object v4, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->iv:[B

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v4, Ljava/math/BigInteger;

    iget-object v5, v0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->iv:[B

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 277
    goto :goto_0

    .line 279
    :cond_4
    iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->pairs:Ljava/util/List;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->pairs:Ljava/util/List;

    iget-object v4, v0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->pairs:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 280
    goto :goto_0

    .line 279
    :cond_5
    iget-object v3, v0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->pairs:Ljava/util/List;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getSize()I
    .locals 4

    .prologue
    .line 199
    const/4 v2, 0x0

    .line 200
    .local v2, size:I
    iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->this$0:Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->isOverrideTrackEncryptionBoxParameters()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 201
    iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->this$0:Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;

    iget v2, v3, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->ivSize:I

    .line 207
    :goto_0
    iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->this$0:Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->isSubSampleEncryption()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 208
    add-int/lit8 v2, v2, 0x2

    .line 209
    iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->pairs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;

    .line 210
    .local v1, pair:Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;
    add-int/lit8 v2, v2, 0x6

    goto :goto_1

    .line 203
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #pair:Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;
    :cond_0
    iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->iv:[B

    array-length v2, v3

    goto :goto_0

    .line 213
    :cond_1
    return v2
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 288
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->iv:[B

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->iv:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    .line 289
    .local v0, result:I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->pairs:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->pairs:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 290
    return v0

    .end local v0           #result:I
    :cond_1
    move v0, v1

    .line 288
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Entry{iv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->iv:[B

    invoke-static {v1}, Lcom/coremedia/iso/Hex;->encodeHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pairs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;->pairs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
