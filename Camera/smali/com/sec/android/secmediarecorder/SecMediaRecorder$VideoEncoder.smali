.class public final Lcom/sec/android/secmediarecorder/SecMediaRecorder$VideoEncoder;
.super Ljava/lang/Object;
.source "SecMediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/secmediarecorder/SecMediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VideoEncoder"
.end annotation


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final H263:I = 0x1

.field public static final H264:I = 0x2

.field public static final MPEG_4_SP:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/sec/android/secmediarecorder/SecMediaRecorder;


# direct methods
.method private constructor <init>(Lcom/sec/android/secmediarecorder/SecMediaRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/sec/android/secmediarecorder/SecMediaRecorder$VideoEncoder;->this$0:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
