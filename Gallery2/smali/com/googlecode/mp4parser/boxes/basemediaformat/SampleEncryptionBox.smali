.class public Lcom/googlecode/mp4parser/boxes/basemediaformat/SampleEncryptionBox;
.super Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;
.source "SampleEncryptionBox.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "senc"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;-><init>(Ljava/lang/String;)V

    .line 23
    return-void
.end method
