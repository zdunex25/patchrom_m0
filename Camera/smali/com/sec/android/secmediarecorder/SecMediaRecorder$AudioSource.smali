.class public final Lcom/sec/android/secmediarecorder/SecMediaRecorder$AudioSource;
.super Ljava/lang/Object;
.source "SecMediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/secmediarecorder/SecMediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AudioSource"
.end annotation


# static fields
.field public static final CAMCORDER:I = 0x5

.field public static final DEFAULT:I = 0x0

.field public static final FM_RX:I = 0x9

.field public static final FM_RX_A2DP:I = 0xa

.field public static final MIC:I = 0x1

.field public static final REMOTE_SUBMIX_SOURCE:I = 0x8

.field public static final SEC_2MIC_SVOICE_DRIVING:I = 0x11

.field public static final SEC_2MIC_SVOICE_NORMAL:I = 0x12

.field public static final SEC_AUDIOSOURCE_MAX:I = 0x14

.field public static final SEC_BARGEIN_DRIVING:I = 0x13

.field public static final SEC_CAMCORDER:I = 0x14

.field public static final SEC_HIGH_GAIN_MIC:I = 0xd

.field public static final SEC_LOW_GAIN_MIC:I = 0xe

.field public static final SEC_MULTI_RECORD_FRONT:I = 0xf

.field public static final SEC_MULTI_RECORD_REAR:I = 0x10

.field public static final SEC_VOICE_COMMUNICATION:I = 0xc

.field public static final SEC_VOICE_RECOGNITION:I = 0xb

.field public static final VOICE_CALL:I = 0x4

.field public static final VOICE_COMMUNICATION:I = 0x7

.field public static final VOICE_DOWNLINK:I = 0x3

.field public static final VOICE_RECOGNITION:I = 0x6

.field public static final VOICE_UPLINK:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/sec/android/secmediarecorder/SecMediaRecorder;


# direct methods
.method private constructor <init>(Lcom/sec/android/secmediarecorder/SecMediaRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/sec/android/secmediarecorder/SecMediaRecorder$AudioSource;->this$0:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
