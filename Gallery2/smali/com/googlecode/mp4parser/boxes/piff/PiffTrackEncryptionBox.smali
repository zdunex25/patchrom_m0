.class public Lcom/googlecode/mp4parser/boxes/piff/PiffTrackEncryptionBox;
.super Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;
.source "PiffTrackEncryptionBox.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "uuid"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;-><init>(Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method public getFlags()I
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public getUserType()[B
    .locals 1

    .prologue
    .line 24
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 0x1
        0x89t
        0x74t
        0xdbt
        0xcet
        0x7bt
        0xe7t
        0x4ct
        0x51t
        0x84t
        0xf9t
        0x71t
        0x48t
        0xf9t
        0x88t
        0x25t
        0x54t
    .end array-data
.end method
