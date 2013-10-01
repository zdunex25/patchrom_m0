.class public Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;
.super Ljava/lang/Object;
.source "AbstractSampleEncryptionBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Pair"
.end annotation


# instance fields
.field public clear:I

.field public encrypted:J

.field final synthetic this$1:Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;IJ)V
    .locals 0
    .parameter
    .parameter "clear"
    .parameter "encrypted"

    .prologue
    .line 225
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;->this$1:Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput p2, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;->clear:I

    .line 227
    iput-wide p3, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;->encrypted:J

    .line 228
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 232
    if-ne p0, p1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return v1

    .line 235
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 236
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 239
    check-cast v0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;

    .line 241
    .local v0, pair:Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;
    iget v3, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;->clear:I

    iget v4, v0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;->clear:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 242
    goto :goto_0

    .line 244
    :cond_4
    iget-wide v3, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;->encrypted:J

    iget-wide v5, v0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;->encrypted:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    move v1, v2

    .line 245
    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 253
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;->clear:I

    .line 254
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;->encrypted:J

    iget-wide v4, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;->encrypted:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 255
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;->clear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " enc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox$Entry$Pair;->encrypted:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
