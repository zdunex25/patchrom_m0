.class Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;
.super Ljava/lang/Object;
.source "ViPER4AndroidService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "V4ADSPModule"
.end annotation


# instance fields
.field private final EFFECT_TYPE_NULL:Ljava/util/UUID;

.field public mInstance:Landroid/media/audiofx/AudioEffect;

.field final synthetic this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;


# direct methods
.method public constructor <init>(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;Ljava/util/UUID;I)V
    .locals 6
    .parameter
    .parameter "uModuleID"
    .parameter "nAudioSession"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string v2, "ec7178ec-e5e1-4432-a3f4-4657e6795210"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    iput-object v2, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    .line 71
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    .line 77
    :try_start_0
    const-string v2, "ViPER4Android"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Creating viper4android module, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-class v2, Landroid/media/audiofx/AudioEffect;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/util/UUID;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/util/UUID;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 79
    iget-object v5, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audiofx/AudioEffect;

    .line 78
    iput-object v2, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    .line 81
    iget-object v2, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    if-eqz v2, :cond_0

    .line 83
    iget-object v2, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v2}, Landroid/media/audiofx/AudioEffect;->getDescriptor()Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v0

    .line 84
    .local v0, adModuleDescriptor:Landroid/media/audiofx/AudioEffect$Descriptor;
    const-string v2, "ViPER4Android"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Effect name : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Landroid/media/audiofx/AudioEffect$Descriptor;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v2, "ViPER4Android"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Type id : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-string v2, "ViPER4Android"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unique id : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v2, "ViPER4Android"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Implementor : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Landroid/media/audiofx/AudioEffect$Descriptor;->implementor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v2, "ViPER4Android"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Connect mode : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Landroid/media/audiofx/AudioEffect$Descriptor;->connectMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v2, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    new-instance v3, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule$1;

    invoke-direct {v3, p0}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule$1;-><init>(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;)V

    invoke-virtual {v2, v3}, Landroid/media/audiofx/AudioEffect;->setControlStatusListener(Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;)V

    .line 110
    iget-object v2, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    new-instance v3, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule$2;

    invoke-direct {v3, p0}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule$2;-><init>(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;)V

    invoke-virtual {v2, v3}, Landroid/media/audiofx/AudioEffect;->setEnableStatusListener(Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v0           #adModuleDescriptor:Landroid/media/audiofx/AudioEffect$Descriptor;
    :cond_0
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v1

    .line 136
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "ViPER4Android"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    goto :goto_0
.end method

.method private ProceedIRBuffer_Headphone(Lcom/vipercn/viper4android_v2/activity/IRSUtils;)V
    .locals 22
    .parameter "irs"

    .prologue
    .line 520
    new-instance v17, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-direct/range {v17 .. v19}, Ljava/util/Random;-><init>(J)V

    .line 521
    .local v17, rndMachine:Ljava/util/Random;
    invoke-virtual/range {v17 .. v17}, Ljava/util/Random;->nextInt()I

    move-result v10

    .line 522
    .local v10, nKernelBufferID:I
    const v18, 0x10004

    invoke-virtual/range {p1 .. p1}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->GetChannels()I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v10, v2, v3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    .line 525
    invoke-virtual/range {p1 .. p1}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->ReadEntireData()[B

    move-result-object v5

    .line 526
    .local v5, baKernelData:[B
    if-nez v5, :cond_0

    .line 529
    const v18, 0x10004

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    .line 562
    :goto_0
    return-void

    .line 532
    :cond_0
    array-length v0, v5

    move/from16 v18, v0

    if-gtz v18, :cond_1

    .line 535
    const v18, 0x10004

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    goto :goto_0

    .line 538
    :cond_1
    array-length v0, v5

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v5, v0}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->HashIRS([BI)J

    move-result-wide v15

    .line 539
    .local v15, nlHashCode:J
    const-wide/16 v18, -0x1

    and-long v18, v18, v15

    move-wide/from16 v0, v18

    long-to-int v9, v0

    .line 541
    .local v9, nHashCode:I
    const-string v18, "ViPER4Android"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "[Kernel] Channels = "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->GetChannels()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", Frames = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->GetSampleCount()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", Bytes = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    array-length v0, v5

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", Hash = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const/16 v7, 0x1ff8

    .line 545
    .local v7, nBlockSize:I
    array-length v13, v5

    .local v13, nRestBytes:I
    const/4 v14, 0x0

    .local v14, nSendOffset:I
    const/4 v12, 0x0

    .line 546
    .local v12, nPacketIndex:I
    :goto_1
    if-gtz v13, :cond_2

    .line 561
    const v18, 0x10006

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v10, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x2(III)V

    goto :goto_0

    .line 548
    :cond_2
    invoke-static {v7, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 549
    .local v11, nMinBlockSize:I
    new-array v6, v11, [B

    .line 550
    .local v6, baSendData:[B
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v5, v14, v6, v0, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 551
    add-int/2addr v14, v11

    .line 552
    sub-int/2addr v13, v11

    .line 553
    const-string v18, "ViPER4Android"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Setting kernel buffer, index = "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", length = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    add-int/lit8 v12, v12, 0x1

    .line 556
    div-int/lit8 v8, v11, 0x4

    .line 557
    .local v8, nFramesCount:I
    const v18, 0x10005

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v10, v8, v6}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx2x8192(III[B)V

    goto :goto_1
.end method

.method private ProceedIRBuffer_Headphone(Ljava/lang/String;III)V
    .locals 21
    .parameter "szConvIRFile"
    .parameter "nChannels"
    .parameter "nFrames"
    .parameter "nBytes"

    .prologue
    .line 411
    new-instance v16, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-direct/range {v16 .. v18}, Ljava/util/Random;-><init>(J)V

    .line 412
    .local v16, rndMachine:Ljava/util/Random;
    invoke-virtual/range {v16 .. v16}, Ljava/util/Random;->nextInt()I

    move-result v11

    .line 413
    .local v11, nKernelBufferID:I
    const v17, 0x10004

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p2

    move/from16 v3, v18

    invoke-virtual {v0, v1, v11, v2, v3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    .line 416
    invoke-static/range {p1 .. p1}, Lcom/vipercn/viper4android_v2/activity/V4AJniInterface;->ReadImpulseResponseToArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 417
    .local v6, baKernelData:[B
    if-nez v6, :cond_0

    .line 420
    const v17, 0x10004

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    .line 471
    :goto_0
    return-void

    .line 423
    :cond_0
    array-length v0, v6

    move/from16 v17, v0

    if-gtz v17, :cond_1

    .line 426
    const v17, 0x10004

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    goto :goto_0

    .line 429
    :cond_1
    invoke-static {v6}, Lcom/vipercn/viper4android_v2/activity/V4AJniInterface;->GetHashImpulseResponseArray([B)[I

    move-result-object v5

    .line 430
    .local v5, baHashCode:[I
    if-nez v5, :cond_2

    .line 433
    const v17, 0x10004

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    goto :goto_0

    .line 436
    :cond_2
    array-length v0, v5

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    .line 439
    const v17, 0x10004

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    goto :goto_0

    .line 442
    :cond_3
    const/16 v17, 0x0

    aget v17, v5, v17

    if-nez v17, :cond_4

    .line 445
    const v17, 0x10004

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    goto :goto_0

    .line 448
    :cond_4
    const/16 v17, 0x1

    aget v10, v5, v17

    .line 450
    .local v10, nHashCode:I
    const-string v17, "ViPER4Android"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "[Kernel] Channels = "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", Frames = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", Bytes = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    array-length v0, v6

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", Hash = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const/16 v8, 0x1ff8

    .line 454
    .local v8, nBlockSize:I
    array-length v14, v6

    .local v14, nRestBytes:I
    const/4 v15, 0x0

    .local v15, nSendOffset:I
    const/4 v13, 0x0

    .line 455
    .local v13, nPacketIndex:I
    :goto_1
    if-gtz v14, :cond_5

    .line 470
    const v17, 0x10006

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v11, v10}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x2(III)V

    goto/16 :goto_0

    .line 457
    :cond_5
    invoke-static {v8, v14}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 458
    .local v12, nMinBlockSize:I
    new-array v7, v12, [B

    .line 459
    .local v7, baSendData:[B
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v6, v15, v7, v0, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 460
    add-int/2addr v15, v12

    .line 461
    sub-int/2addr v14, v12

    .line 462
    const-string v17, "ViPER4Android"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Setting kernel buffer, index = "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", length = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    add-int/lit8 v13, v13, 0x1

    .line 465
    div-int/lit8 v9, v12, 0x4

    .line 466
    .local v9, nFramesCount:I
    const v17, 0x10005

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v11, v9, v7}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx2x8192(III[B)V

    goto :goto_1
.end method

.method private ProceedIRBuffer_Speaker(Lcom/vipercn/viper4android_v2/activity/IRSUtils;)V
    .locals 21
    .parameter "irs"

    .prologue
    .line 476
    new-instance v16, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-direct/range {v16 .. v18}, Ljava/util/Random;-><init>(J)V

    .line 477
    .local v16, rndMachine:Ljava/util/Random;
    invoke-virtual/range {v16 .. v16}, Ljava/util/Random;->nextInt()I

    move-result v10

    .line 478
    .local v10, nKernelBufferID:I
    const v17, 0x10030

    invoke-virtual/range {p1 .. p1}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->GetChannels()I

    move-result v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v10, v2, v3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    .line 481
    invoke-virtual/range {p1 .. p1}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->ReadEntireData()[B

    move-result-object v5

    .line 482
    .local v5, baKernelData:[B
    if-nez v5, :cond_0

    .line 485
    const v17, 0x10030

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    .line 516
    :goto_0
    return-void

    .line 488
    :cond_0
    array-length v0, v5

    move/from16 v17, v0

    if-gtz v17, :cond_1

    .line 491
    const v17, 0x10030

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    goto :goto_0

    .line 494
    :cond_1
    array-length v0, v5

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v5, v0}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->HashIRS([BI)J

    move-result-wide v14

    .line 495
    .local v14, nlHashCode:J
    const-wide/16 v17, -0x1

    and-long v17, v17, v14

    move-wide/from16 v0, v17

    long-to-int v9, v0

    .line 497
    .local v9, nHashCode:I
    const-string v17, "ViPER4Android"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "[Kernel] Channels = "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->GetChannels()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", Frames = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->GetSampleCount()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", Bytes = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    array-length v0, v5

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", Hash = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const/16 v7, 0x1ff8

    .line 501
    .local v7, nBlockSize:I
    array-length v12, v5

    .local v12, nRestBytes:I
    const/4 v13, 0x0

    .line 502
    .local v13, nSendOffset:I
    :goto_1
    if-gtz v12, :cond_2

    .line 515
    const v17, 0x10032

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v10, v9}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x2(III)V

    goto :goto_0

    .line 504
    :cond_2
    invoke-static {v7, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 505
    .local v11, nMinBlockSize:I
    new-array v6, v11, [B

    .line 506
    .local v6, baSendData:[B
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v5, v13, v6, v0, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 507
    add-int/2addr v13, v11

    .line 508
    sub-int/2addr v12, v11

    .line 510
    div-int/lit8 v8, v11, 0x4

    .line 511
    .local v8, nFramesCount:I
    const v17, 0x10031

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v10, v8, v6}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx2x8192(III[B)V

    goto :goto_1
.end method

.method private ProceedIRBuffer_Speaker(Ljava/lang/String;III)V
    .locals 17
    .parameter "szConvIRFile"
    .parameter "nChannels"
    .parameter "nFrames"
    .parameter "nBytes"

    .prologue
    .line 349
    new-instance v12, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-direct {v12, v13, v14}, Ljava/util/Random;-><init>(J)V

    .line 350
    .local v12, rndMachine:Ljava/util/Random;
    invoke-virtual {v12}, Ljava/util/Random;->nextInt()I

    move-result v8

    .line 351
    .local v8, nKernelBufferID:I
    const v13, 0x10030

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v13, v8, v1, v14}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    .line 354
    invoke-static/range {p1 .. p1}, Lcom/vipercn/viper4android_v2/activity/V4AJniInterface;->ReadImpulseResponseToArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 355
    .local v3, baKernelData:[B
    if-nez v3, :cond_0

    .line 358
    const v13, 0x10030

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    .line 407
    :goto_0
    return-void

    .line 361
    :cond_0
    array-length v13, v3

    if-gtz v13, :cond_1

    .line 364
    const v13, 0x10030

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    goto :goto_0

    .line 367
    :cond_1
    invoke-static {v3}, Lcom/vipercn/viper4android_v2/activity/V4AJniInterface;->GetHashImpulseResponseArray([B)[I

    move-result-object v2

    .line 368
    .local v2, baHashCode:[I
    if-nez v2, :cond_2

    .line 371
    const v13, 0x10030

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    goto :goto_0

    .line 374
    :cond_2
    array-length v13, v2

    const/4 v14, 0x2

    if-eq v13, v14, :cond_3

    .line 377
    const v13, 0x10030

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    goto :goto_0

    .line 380
    :cond_3
    const/4 v13, 0x0

    aget v13, v2, v13

    if-nez v13, :cond_4

    .line 383
    const v13, 0x10030

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    goto :goto_0

    .line 386
    :cond_4
    const/4 v13, 0x1

    aget v7, v2, v13

    .line 388
    .local v7, nHashCode:I
    const-string v13, "ViPER4Android"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "[Kernel] Channels = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", Frames = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", Bytes = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    array-length v15, v3

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", Hash = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/16 v5, 0x1ff8

    .line 392
    .local v5, nBlockSize:I
    array-length v10, v3

    .local v10, nRestBytes:I
    const/4 v11, 0x0

    .line 393
    .local v11, nSendOffset:I
    :goto_1
    if-gtz v10, :cond_5

    .line 406
    const v13, 0x10032

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v8, v7}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x2(III)V

    goto/16 :goto_0

    .line 395
    :cond_5
    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 396
    .local v9, nMinBlockSize:I
    new-array v4, v9, [B

    .line 397
    .local v4, baSendData:[B
    const/4 v13, 0x0

    invoke-static {v3, v11, v4, v13, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 398
    add-int/2addr v11, v9

    .line 399
    sub-int/2addr v10, v9

    .line 401
    div-int/lit8 v6, v9, 0x4

    .line 402
    .local v6, nFramesCount:I
    const v13, 0x10031

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v8, v6, v4}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx2x8192(III[B)V

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;)Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    return-object v0
.end method

.method private byteArrayToInt([BI)I
    .locals 2
    .parameter "valueBuf"
    .parameter "offset"

    .prologue
    .line 162
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 163
    .local v0, converter:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 164
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    return v1
.end method

.method private varargs concatArrays([[B)[B
    .locals 8
    .parameter "arrays"

    .prologue
    const/4 v5, 0x0

    .line 169
    const/4 v2, 0x0

    .line 170
    .local v2, len:I
    array-length v6, p1

    move v4, v5

    :goto_0
    if-lt v4, v6, :cond_0

    .line 174
    new-array v1, v2, [B

    .line 175
    .local v1, b:[B
    const/4 v3, 0x0

    .line 176
    .local v3, offs:I
    array-length v6, p1

    move v4, v5

    :goto_1
    if-lt v4, v6, :cond_1

    .line 181
    return-object v1

    .line 170
    .end local v1           #b:[B
    .end local v3           #offs:I
    :cond_0
    aget-object v0, p1, v4

    .line 172
    .local v0, a:[B
    array-length v7, v0

    add-int/2addr v2, v7

    .line 170
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 176
    .end local v0           #a:[B
    .restart local v1       #b:[B
    .restart local v3       #offs:I
    :cond_1
    aget-object v0, p1, v4

    .line 178
    .restart local v0       #a:[B
    array-length v7, v0

    invoke-static {v0, v5, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    array-length v7, v0

    add-int/2addr v3, v7

    .line 176
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private intToByteArray(I)[B
    .locals 2
    .parameter "value"

    .prologue
    .line 154
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 155
    .local v0, converter:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 156
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 157
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public SetConvIRFile(Ljava/lang/String;Z)V
    .locals 11
    .parameter "szConvIRFile"
    .parameter "bSpeakerParam"

    .prologue
    const v10, 0x10004

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 571
    if-nez p1, :cond_1

    .line 573
    const-string v3, "ViPER4Android"

    const-string v4, "Clear convolver kernel"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    if-eqz p2, :cond_0

    const v3, 0x10030

    invoke-virtual {p0, v3, v6, v6, v7}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    .line 631
    :goto_0
    return-void

    .line 576
    :cond_0
    invoke-virtual {p0, v10, v6, v6, v7}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    goto :goto_0

    .line 580
    :cond_1
    const-string v3, "ViPER4Android"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Convolver kernel = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 585
    const-string v3, "ViPER4Android"

    const-string v4, "Clear convolver kernel"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    if-eqz p2, :cond_2

    const v3, 0x10030

    invoke-virtual {p0, v3, v6, v6, v7}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    goto :goto_0

    .line 588
    :cond_2
    invoke-virtual {p0, v10, v6, v6, v7}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    goto :goto_0

    .line 592
    :cond_3
    const v2, 0x10004

    .line 593
    .local v2, nCommand:I
    if-eqz p2, :cond_4

    const v2, 0x10030

    .line 595
    :cond_4
    const-string v3, "ViPER4Android"

    const-string v4, "We are going to load irs through internal method"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    new-instance v1, Lcom/vipercn/viper4android_v2/activity/IRSUtils;

    invoke-direct {v1}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;-><init>()V

    .line 597
    .local v1, irs:Lcom/vipercn/viper4android_v2/activity/IRSUtils;
    invoke-virtual {v1, p1}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->LoadIRS(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 600
    if-eqz p2, :cond_5

    invoke-direct {p0, v1}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->ProceedIRBuffer_Speaker(Lcom/vipercn/viper4android_v2/activity/IRSUtils;)V

    .line 602
    :goto_1
    invoke-virtual {v1}, Lcom/vipercn/viper4android_v2/activity/IRSUtils;->Release()V

    goto :goto_0

    .line 601
    :cond_5
    invoke-direct {p0, v1}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->ProceedIRBuffer_Headphone(Lcom/vipercn/viper4android_v2/activity/IRSUtils;)V

    goto :goto_1

    .line 606
    :cond_6
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/V4AJniInterface;->IsLibraryUsable()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 608
    const-string v3, "ViPER4Android"

    const-string v4, "We are going to load irs through jni"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    invoke-static {p1}, Lcom/vipercn/viper4android_v2/activity/V4AJniInterface;->GetImpulseResponseInfoArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 611
    .local v0, iaIRInfo:[I
    if-nez v0, :cond_7

    invoke-virtual {p0, v2, v6, v6, v7}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    goto :goto_0

    .line 614
    :cond_7
    array-length v3, v0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_8

    invoke-virtual {p0, v2, v6, v6, v7}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    goto :goto_0

    .line 617
    :cond_8
    aget v3, v0, v6

    if-nez v3, :cond_9

    invoke-virtual {p0, v2, v6, v6, v7}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx4x3(IIII)V

    goto/16 :goto_0

    .line 621
    :cond_9
    if-eqz p2, :cond_a

    aget v3, v0, v7

    aget v4, v0, v8

    aget v5, v0, v9

    invoke-direct {p0, p1, v3, v4, v5}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->ProceedIRBuffer_Speaker(Ljava/lang/String;III)V

    goto/16 :goto_0

    .line 622
    :cond_a
    aget v3, v0, v7

    aget v4, v0, v8

    aget v5, v0, v9

    invoke-direct {p0, p1, v3, v4, v5}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->ProceedIRBuffer_Headphone(Ljava/lang/String;III)V

    goto/16 :goto_0

    .line 627
    .end local v0           #iaIRInfo:[I
    :cond_b
    const-string v3, "ViPER4Android"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to load "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getParameter_Native([B[B)V
    .locals 7
    .parameter "parameter"
    .parameter "value"

    .prologue
    .line 334
    iget-object v2, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    if-nez v2, :cond_0

    .line 344
    :goto_0
    return-void

    .line 337
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

    .line 338
    .local v1, getParameter:Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

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

    .line 340
    .end local v1           #getParameter:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 342
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
    .line 319
    :try_start_0
    invoke-direct {p0, p1}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v1

    .line 320
    .local v1, p:[B
    const/4 v4, 0x4

    new-array v2, v4, [B

    .line 321
    .local v2, v:[B
    invoke-virtual {p0, v1, v2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->getParameter_Native([B[B)V

    .line 322
    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->byteArrayToInt([BI)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 328
    .end local v1           #p:[B
    .end local v2           #v:[B
    :goto_0
    return v3

    .line 325
    :catch_0
    move-exception v0

    .line 327
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

    .line 328
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 143
    const-string v0, "ViPER4Android"

    const-string v1, "Free viper4android module."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    if-eqz v0, :cond_0

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v0}, Landroid/media/audiofx/AudioEffect;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    .line 150
    return-void

    .line 147
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setParameter_Native([B[B)V
    .locals 7
    .parameter "parameter"
    .parameter "value"

    .prologue
    .line 303
    iget-object v2, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

    if-nez v2, :cond_0

    .line 313
    :goto_0
    return-void

    .line 306
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

    .line 307
    .local v1, setParameter:Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->mInstance:Landroid/media/audiofx/AudioEffect;

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

    .line 309
    .end local v1           #setParameter:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 311
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
    .line 254
    :try_start_0
    invoke-direct {p0, p1}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v1

    .line 255
    .local v1, p:[B
    invoke-direct {p0, p2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v3

    .line 256
    .local v3, vL:[B
    const/4 v6, 0x2

    new-array v6, v6, [[B

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    aput-object p3, v6, v7

    invoke-direct {p0, v6}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->concatArrays([[B)[B

    move-result-object v2

    .line 257
    .local v2, v:[B
    array-length v6, v2

    const/16 v7, 0x100

    if-ge v6, v7, :cond_0

    .line 259
    array-length v6, v2

    rsub-int v5, v6, 0x100

    .line 260
    .local v5, zeroPad:I
    new-array v4, v5, [B

    .line 261
    .local v4, zeroArray:[B
    const/4 v6, 0x2

    new-array v6, v6, [[B

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-direct {p0, v6}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->concatArrays([[B)[B

    move-result-object v2

    .line 263
    .end local v4           #zeroArray:[B
    .end local v5           #zeroPad:I
    :cond_0
    invoke-virtual {p0, v1, v2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_Native([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v1           #p:[B
    .end local v2           #v:[B
    .end local v3           #vL:[B
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 267
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

.method public setParameter_px4_vx2x8192(III[B)V
    .locals 10
    .parameter "param"
    .parameter "valueL"
    .parameter "dataLength"
    .parameter "byteData"

    .prologue
    .line 275
    :try_start_0
    invoke-direct {p0, p1}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v1

    .line 276
    .local v1, p:[B
    invoke-direct {p0, p2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v4

    .line 277
    .local v4, vL:[B
    invoke-direct {p0, p3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v3

    .line 278
    .local v3, vH:[B
    const/4 v7, 0x3

    new-array v7, v7, [[B

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    const/4 v8, 0x2

    aput-object p4, v7, v8

    invoke-direct {p0, v7}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->concatArrays([[B)[B

    move-result-object v2

    .line 279
    .local v2, v:[B
    array-length v7, v2

    const/16 v8, 0x2000

    if-ge v7, v8, :cond_0

    .line 281
    array-length v7, v2

    rsub-int v6, v7, 0x2000

    .line 282
    .local v6, zeroPad:I
    new-array v5, v6, [B

    .line 283
    .local v5, zeroArray:[B
    const/4 v7, 0x2

    new-array v7, v7, [[B

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    aput-object v5, v7, v8

    invoke-direct {p0, v7}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->concatArrays([[B)[B

    move-result-object v2

    .line 285
    .end local v5           #zeroArray:[B
    .end local v6           #zeroPad:I
    :cond_0
    invoke-virtual {p0, v1, v2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_Native([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .end local v1           #p:[B
    .end local v2           #v:[B
    .end local v3           #vH:[B
    .end local v4           #vL:[B
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 289
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "ViPER4Android"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "setParameter_px4_vx2x8192: "

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

.method public setParameter_px4_vx4x1(II)V
    .locals 6
    .parameter "param"
    .parameter "valueL"

    .prologue
    .line 188
    :try_start_0
    invoke-direct {p0, p1}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v1

    .line 189
    .local v1, p:[B
    invoke-direct {p0, p2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v2

    .line 190
    .local v2, v:[B
    invoke-virtual {p0, v1, v2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_Native([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v1           #p:[B
    .end local v2           #v:[B
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 194
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
    .line 202
    :try_start_0
    invoke-direct {p0, p1}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v1

    .line 203
    .local v1, p:[B
    invoke-direct {p0, p2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v4

    .line 204
    .local v4, vL:[B
    invoke-direct {p0, p3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v3

    .line 205
    .local v3, vH:[B
    const/4 v5, 0x2

    new-array v5, v5, [[B

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-direct {p0, v5}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->concatArrays([[B)[B

    move-result-object v2

    .line 206
    .local v2, v:[B
    invoke-virtual {p0, v1, v2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_Native([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .end local v1           #p:[B
    .end local v2           #v:[B
    .end local v3           #vH:[B
    .end local v4           #vL:[B
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 210
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
    .line 218
    :try_start_0
    invoke-direct {p0, p1}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v1

    .line 219
    .local v1, p:[B
    invoke-direct {p0, p2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v5

    .line 220
    .local v5, vL:[B
    invoke-direct {p0, p3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v4

    .line 221
    .local v4, vH:[B
    invoke-direct {p0, p4}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v3

    .line 222
    .local v3, vE:[B
    const/4 v6, 0x3

    new-array v6, v6, [[B

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    const/4 v7, 0x2

    aput-object v3, v6, v7

    invoke-direct {p0, v6}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->concatArrays([[B)[B

    move-result-object v2

    .line 223
    .local v2, v:[B
    invoke-virtual {p0, v1, v2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_Native([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .end local v1           #p:[B
    .end local v2           #v:[B
    .end local v3           #vE:[B
    .end local v4           #vH:[B
    .end local v5           #vL:[B
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 227
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
    .line 236
    :try_start_0
    invoke-direct {p0, p1}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v1

    .line 237
    .local v1, p:[B
    invoke-direct {p0, p2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v5

    .line 238
    .local v5, vL:[B
    invoke-direct {p0, p3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v4

    .line 239
    .local v4, vH:[B
    invoke-direct {p0, p4}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v3

    .line 240
    .local v3, vE:[B
    invoke-direct {p0, p5}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->intToByteArray(I)[B

    move-result-object v6

    .line 241
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

    invoke-direct {p0, v7}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->concatArrays([[B)[B

    move-result-object v2

    .line 242
    .local v2, v:[B
    invoke-virtual {p0, v1, v2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_Native([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .end local v1           #p:[B
    .end local v2           #v:[B
    .end local v3           #vE:[B
    .end local v4           #vH:[B
    .end local v5           #vL:[B
    .end local v6           #vR:[B
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 246
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
    .line 296
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 297
    .local v1, stringLen:I
    const-string v2, "US-ASCII"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 298
    .local v0, stringBytes:[B
    invoke-virtual {p0, p1, v1, v0}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->setParameter_px4_vx1x256(II[B)V

    .line 299
    return-void
.end method
