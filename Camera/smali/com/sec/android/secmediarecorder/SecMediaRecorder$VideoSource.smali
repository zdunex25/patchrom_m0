.class public final Lcom/sec/android/secmediarecorder/SecMediaRecorder$VideoSource;
.super Ljava/lang/Object;
.source "SecMediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/secmediarecorder/SecMediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VideoSource"
.end annotation


# static fields
.field public static final CAMERA:I = 0x1

.field public static final DEFAULT:I = 0x0

.field public static final GL_EFFECT:I = 0x4

.field public static final GRALLOC_BUFFER:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/sec/android/secmediarecorder/SecMediaRecorder;


# direct methods
.method private constructor <init>(Lcom/sec/android/secmediarecorder/SecMediaRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/sec/android/secmediarecorder/SecMediaRecorder$VideoSource;->this$0:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
