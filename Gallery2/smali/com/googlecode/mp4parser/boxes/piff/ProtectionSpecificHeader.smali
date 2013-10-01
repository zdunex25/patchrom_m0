.class public Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;
.super Ljava/lang/Object;
.source "ProtectionSpecificHeader.java"


# static fields
.field protected static uuidRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field data:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;->uuidRegistry:Ljava/util/Map;

    .line 25
    sget-object v0, Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;->uuidRegistry:Ljava/util/Map;

    const-string v1, "9A04F079-9840-4286-AB92-E65BE0885F95"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    const-class v2, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFor(Ljava/util/UUID;Ljava/nio/ByteBuffer;)Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;
    .locals 4
    .parameter "systemId"
    .parameter "bufferWrapper"

    .prologue
    .line 39
    sget-object v3, Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;->uuidRegistry:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 41
    .local v0, aClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;>;"
    new-instance v2, Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;

    invoke-direct {v2}, Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;-><init>()V

    .line 42
    .local v2, protectionSpecificHeader:Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;
    if-eqz v0, :cond_0

    .line 44
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #protectionSpecificHeader:Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;
    check-cast v2, Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 52
    .restart local v2       #protectionSpecificHeader:Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;
    :cond_0
    invoke-virtual {v2, p1}, Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;->parse(Ljava/nio/ByteBuffer;)V

    .line 53
    return-object v2

    .line 46
    .end local v2           #protectionSpecificHeader:Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;
    :catch_0
    move-exception v1

    .line 47
    .local v1, e:Ljava/lang/InstantiationException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 48
    .end local v1           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v1

    .line 49
    .local v1, e:Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 30
    instance-of v0, p1, Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;->data:Ljava/nio/ByteBuffer;

    check-cast p1, Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;

    .end local p1
    iget-object v1, p1, Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 35
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;->data:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 0
    .parameter "buffer"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;->data:Ljava/nio/ByteBuffer;

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v3, "ProtectionSpecificHeader"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v3, "{data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 72
    .local v1, data:Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 73
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    new-array v0, v3, [B

    .line 74
    .local v0, bytes:[B
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 75
    invoke-static {v0}, Lcom/coremedia/iso/Hex;->encodeHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
