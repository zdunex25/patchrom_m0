.class Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;
.super Ljava/lang/Object;
.source "HeadsetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vipercn/viper4android/service/HeadsetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "V4ADSPModule"
.end annotation


# instance fields
.field private final EFFECT_TYPE_NULL:Ljava/util/UUID;

.field public mInstance:Landroid/media/audiofx/AudioEffect;

.field final synthetic this$0:Lcom/vipercn/viper4android/service/HeadsetService;


# direct methods
.method public constructor <init>(Lcom/vipercn/viper4android/service/HeadsetService;Ljava/util/UUID;II)V
    .locals 5
    .parameter
    .parameter "uModuleID"
    .parameter "nPriority"
    .parameter "nAudioSession"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->this$0:Lcom/vipercn/viper4android/service/HeadsetService;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-string v1, "ec7178ec-e5e1-4432-a3f4-4657e6795210"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    .line 65
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    .line 71
    :try_start_0
    const-class v1, Landroid/media/audiofx/AudioEffect;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/util/UUID;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/util/UUID;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiofx/AudioEffect;

    iput-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    .line 72
    const-string v1, "ViPER4Android"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Creating viper4android module, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ViPER4Android"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    goto :goto_0
.end method

.method private byteArrayToInt([BI)I
    .locals 2
    .parameter "valueBuf"
    .parameter "offset"

    .prologue
    .line 99
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 100
    .local v0, converter:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 101
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    return v1
.end method

.method private varargs concatArrays([[B)[B
    .locals 8
    .parameter "arrays"

    .prologue
    const/4 v5, 0x0

    .line 106
    const/4 v2, 0x0

    .line 107
    .local v2, len:I
    array-length v6, p1

    move v4, v5

    :goto_0
    if-lt v4, v6, :cond_0

    .line 111
    new-array v1, v2, [B

    .line 112
    .local v1, b:[B
    const/4 v3, 0x0

    .line 113
    .local v3, offs:I
    array-length v6, p1

    move v4, v5

    :goto_1
    if-lt v4, v6, :cond_1

    .line 118
    return-object v1

    .line 107
    .end local v1           #b:[B
    .end local v3           #offs:I
    :cond_0
    aget-object v0, p1, v4

    .line 109
    .local v0, a:[B
    array-length v7, v0

    add-int/2addr v2, v7

    .line 107
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 113
    .end local v0           #a:[B
    .restart local v1       #b:[B
    .restart local v3       #offs:I
    :cond_1
    aget-object v0, p1, v4

    .line 115
    .restart local v0       #a:[B
    array-length v7, v0

    invoke-static {v0, v5, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    array-length v7, v0

    add-int/2addr v3, v7

    .line 113
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private intToByteArray(I)[B
    .locals 2
    .parameter "value"

    .prologue
    .line 91
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 92
    .local v0, converter:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 93
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 94
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getParameter_Native([B[B)V
    .locals 7
    .parameter "parameter"
    .parameter "value"

    .prologue
    .line 247
    iget-object v2, p0, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    if-nez v2, :cond_0

    .line 257
    :goto_0
    return-void

    .line 250
    :cond_0
    :try_start_0
    const-class v2, Landroid/media/audiofx/AudioEffect;

    const-string v3, "getParameter"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, [B

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, [B

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 251
    .local v1, getParameter:Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    .end local v1           #getParameter:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 255
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ViPER4Android"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getParameter_Native: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getParameter_px4_vx4x1(I)I
    .locals 7
    .parameter "param"

    .prologue
    .line 232
    :try_start_0
    invoke-direct {p0, p1}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v1

    .line 233
    .local v1, p:[B
    const/4 v4, 0x4

    new-array v2, v4, [B

    .line 234
    .local v2, v:[B
    invoke-virtual {p0, v1, v2}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->getParameter_Native([B[B)V

    .line 235
    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->byteArrayToInt([BI)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 241
    .end local v1           #p:[B
    .end local v2           #v:[B
    :goto_0
    return v3

    .line 238
    :catch_0
    move-exception v0

    .line 240
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "ViPER4Android"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getParameter_px4_vx4x1: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 83
    const-string v0, "ViPER4Android"

    const-string v1, "Free viper4android module."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v0}, Landroid/media/audiofx/AudioEffect;->release()V

    .line 86
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    .line 87
    return-void
.end method

.method public setParameter_Native([B[B)V
    .locals 7
    .parameter "parameter"
    .parameter "value"

    .prologue
    .line 216
    iget-object v2, p0, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    if-nez v2, :cond_0

    .line 226
    :goto_0
    return-void

    .line 219
    :cond_0
    :try_start_0
    const-class v2, Landroid/media/audiofx/AudioEffect;

    const-string v3, "setParameter"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, [B

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, [B

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 220
    .local v1, setParameter:Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 222
    .end local v1           #setParameter:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 224
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ViPER4Android"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setParameter_Native: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setParameter_px4_vx1x256(II[B)V
    .locals 9
    .parameter "param"
    .parameter "dataLength"
    .parameter "byteData"

    .prologue
    .line 190
    :try_start_0
    invoke-direct {p0, p1}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v1

    .line 191
    .local v1, p:[B
    invoke-direct {p0, p2}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v3

    .line 192
    .local v3, vL:[B
    const/4 v6, 0x2

    new-array v6, v6, [[B

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    aput-object p3, v6, v7

    invoke-direct {p0, v6}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->concatArrays([[B)[B

    move-result-object v2

    .line 193
    .local v2, v:[B
    array-length v6, v2

    const/16 v7, 0x100

    if-ge v6, v7, :cond_0

    .line 195
    array-length v6, v2

    rsub-int v5, v6, 0x100

    .line 196
    .local v5, zeroPad:I
    new-array v4, v5, [B

    .line 197
    .local v4, zeroArray:[B
    const/4 v6, 0x2

    new-array v6, v6, [[B

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-direct {p0, v6}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->concatArrays([[B)[B

    move-result-object v2

    .line 199
    .end local v4           #zeroArray:[B
    .end local v5           #zeroPad:I
    :cond_0
    invoke-virtual {p0, v1, v2}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_Native([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v1           #p:[B
    .end local v2           #v:[B
    .end local v3           #vL:[B
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 203
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "ViPER4Android"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "setParameter_px4_vx1x256: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setParameter_px4_vx4x1(II)V
    .locals 6
    .parameter "param"
    .parameter "valueL"

    .prologue
    .line 125
    :try_start_0
    invoke-direct {p0, p1}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v1

    .line 126
    .local v1, p:[B
    invoke-direct {p0, p2}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v2

    .line 127
    .local v2, v:[B
    invoke-virtual {p0, v1, v2}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_Native([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v1           #p:[B
    .end local v2           #v:[B
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 131
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "ViPER4Android"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setParameter_px4_vx4x1: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setParameter_px4_vx4x2(III)V
    .locals 8
    .parameter "param"
    .parameter "valueL"
    .parameter "valueH"

    .prologue
    .line 139
    :try_start_0
    invoke-direct {p0, p1}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v1

    .line 140
    .local v1, p:[B
    invoke-direct {p0, p2}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v4

    .line 141
    .local v4, vL:[B
    invoke-direct {p0, p3}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v3

    .line 142
    .local v3, vH:[B
    const/4 v5, 0x2

    new-array v5, v5, [[B

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-direct {p0, v5}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->concatArrays([[B)[B

    move-result-object v2

    .line 143
    .local v2, v:[B
    invoke-virtual {p0, v1, v2}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_Native([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v1           #p:[B
    .end local v2           #v:[B
    .end local v3           #vH:[B
    .end local v4           #vL:[B
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "ViPER4Android"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "setParameter_px4_vx4x2: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setParameter_px4_vx4x3(IIII)V
    .locals 9
    .parameter "param"
    .parameter "valueL"
    .parameter "valueH"
    .parameter "valueE"

    .prologue
    .line 155
    :try_start_0
    invoke-direct {p0, p1}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v1

    .line 156
    .local v1, p:[B
    invoke-direct {p0, p2}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v5

    .line 157
    .local v5, vL:[B
    invoke-direct {p0, p3}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v4

    .line 158
    .local v4, vH:[B
    invoke-direct {p0, p4}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v3

    .line 159
    .local v3, vE:[B
    const/4 v6, 0x3

    new-array v6, v6, [[B

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    const/4 v7, 0x2

    aput-object v3, v6, v7

    invoke-direct {p0, v6}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->concatArrays([[B)[B

    move-result-object v2

    .line 160
    .local v2, v:[B
    invoke-virtual {p0, v1, v2}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_Native([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v1           #p:[B
    .end local v2           #v:[B
    .end local v3           #vE:[B
    .end local v4           #vH:[B
    .end local v5           #vL:[B
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 164
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "ViPER4Android"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "setParameter_px4_vx4x3: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setParameter_px4_vx4x4(IIIII)V
    .locals 10
    .parameter "param"
    .parameter "valueL"
    .parameter "valueH"
    .parameter "valueE"
    .parameter "valueR"

    .prologue
    .line 172
    :try_start_0
    invoke-direct {p0, p1}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v1

    .line 173
    .local v1, p:[B
    invoke-direct {p0, p2}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v5

    .line 174
    .local v5, vL:[B
    invoke-direct {p0, p3}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v4

    .line 175
    .local v4, vH:[B
    invoke-direct {p0, p4}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v3

    .line 176
    .local v3, vE:[B
    invoke-direct {p0, p5}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v6

    .line 177
    .local v6, vR:[B
    const/4 v7, 0x4

    new-array v7, v7, [[B

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    const/4 v8, 0x2

    aput-object v3, v7, v8

    const/4 v8, 0x3

    aput-object v6, v7, v8

    invoke-direct {p0, v7}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->concatArrays([[B)[B

    move-result-object v2

    .line 178
    .local v2, v:[B
    invoke-virtual {p0, v1, v2}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_Native([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v1           #p:[B
    .end local v2           #v:[B
    .end local v3           #vE:[B
    .end local v4           #vH:[B
    .end local v5           #vL:[B
    .end local v6           #vR:[B
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 182
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "ViPER4Android"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "setParameter_px4_vx4x4: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setParameter_px4_vxString(ILjava/lang/String;)V
    .locals 3
    .parameter "param"
    .parameter "szData"

    .prologue
    .line 209
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 210
    .local v1, stringLen:I
    const-string v2, "US-ASCII"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 211
    .local v0, stringBytes:[B
    invoke-virtual {p0, p1, v1, v0}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->setParameter_px4_vx1x256(II[B)V

    .line 212
    return-void
.end method
