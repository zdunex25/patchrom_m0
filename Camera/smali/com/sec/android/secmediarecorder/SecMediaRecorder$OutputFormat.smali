.class public final Lcom/sec/android/secmediarecorder/SecMediaRecorder$OutputFormat;
.super Ljava/lang/Object;
.source "SecMediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/secmediarecorder/SecMediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OutputFormat"
.end annotation


# static fields
.field public static final AAC_ADIF:I = 0x5

.field public static final AAC_ADTS:I = 0x6

.field public static final AMR_NB:I = 0x3

.field public static final AMR_WB:I = 0x4

.field public static final DEFAULT:I = 0x0

.field public static final MPEG_4:I = 0x2

.field public static final OUTPUT_FORMAT_MPEG2TS:I = 0x8

.field public static final OUTPUT_FORMAT_RTP_AVP:I = 0x7

.field public static final QCP:I = 0x9

.field public static final RAW_AMR:I = 0x3

.field public static final THREE_GPP:I = 0x1

.field public static final THREE_GPP2:I = 0xa


# instance fields
.field final synthetic this$0:Lcom/sec/android/secmediarecorder/SecMediaRecorder;


# direct methods
.method private constructor <init>(Lcom/sec/android/secmediarecorder/SecMediaRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/sec/android/secmediarecorder/SecMediaRecorder$OutputFormat;->this$0:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
