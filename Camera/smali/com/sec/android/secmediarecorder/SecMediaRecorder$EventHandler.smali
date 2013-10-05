.class Lcom/sec/android/secmediarecorder/SecMediaRecorder$EventHandler;
.super Landroid/os/Handler;
.source "SecMediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/secmediarecorder/SecMediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# static fields
.field private static final MEDIA_RECORDER_EVENT_ERROR:I = 0x1

.field private static final MEDIA_RECORDER_EVENT_INFO:I = 0x2

.field private static final MEDIA_RECORDER_EVENT_LIST_END:I = 0x63

.field private static final MEDIA_RECORDER_EVENT_LIST_START:I = 0x1

.field private static final MEDIA_RECORDER_TRACK_EVENT_ERROR:I = 0x64

.field private static final MEDIA_RECORDER_TRACK_EVENT_INFO:I = 0x65

.field private static final MEDIA_RECORDER_TRACK_EVENT_LIST_END:I = 0x3e8

.field private static final MEDIA_RECORDER_TRACK_EVENT_LIST_START:I = 0x64


# instance fields
.field private mSecMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

.field final synthetic this$0:Lcom/sec/android/secmediarecorder/SecMediaRecorder;


# direct methods
.method public constructor <init>(Lcom/sec/android/secmediarecorder/SecMediaRecorder;Lcom/sec/android/secmediarecorder/SecMediaRecorder;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "mr"
    .parameter "looper"

    .prologue
    .line 1102
    iput-object p1, p0, Lcom/sec/android/secmediarecorder/SecMediaRecorder$EventHandler;->this$0:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    .line 1103
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1104
    iput-object p2, p0, Lcom/sec/android/secmediarecorder/SecMediaRecorder$EventHandler;->mSecMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    .line 1105
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/sec/android/secmediarecorder/SecMediaRecorder$EventHandler;->mSecMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    #getter for: Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mNativeContext:I
    invoke-static {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->access$000(Lcom/sec/android/secmediarecorder/SecMediaRecorder;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1125
    const-string v0, "SecMediaRecorder"

    const-string v1, "SecMediaRecorder went away with unhandled events"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    :cond_0
    :goto_0
    return-void

    .line 1128
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1144
    const-string v0, "SecMediaRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1131
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/secmediarecorder/SecMediaRecorder$EventHandler;->this$0:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    #getter for: Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mOnErrorListener:Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;
    invoke-static {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->access$100(Lcom/sec/android/secmediarecorder/SecMediaRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1132
    iget-object v0, p0, Lcom/sec/android/secmediarecorder/SecMediaRecorder$EventHandler;->this$0:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    #getter for: Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mOnErrorListener:Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;
    invoke-static {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->access$100(Lcom/sec/android/secmediarecorder/SecMediaRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/secmediarecorder/SecMediaRecorder$EventHandler;->mSecMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;->onError(Lcom/sec/android/secmediarecorder/SecMediaRecorder;II)V

    goto :goto_0

    .line 1138
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/secmediarecorder/SecMediaRecorder$EventHandler;->this$0:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    #getter for: Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mOnInfoListener:Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;
    invoke-static {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->access$200(Lcom/sec/android/secmediarecorder/SecMediaRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1139
    iget-object v0, p0, Lcom/sec/android/secmediarecorder/SecMediaRecorder$EventHandler;->this$0:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    #getter for: Lcom/sec/android/secmediarecorder/SecMediaRecorder;->mOnInfoListener:Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;
    invoke-static {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->access$200(Lcom/sec/android/secmediarecorder/SecMediaRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/secmediarecorder/SecMediaRecorder$EventHandler;->mSecMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;->onInfo(Lcom/sec/android/secmediarecorder/SecMediaRecorder;II)V

    goto :goto_0

    .line 1128
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
    .end sparse-switch
.end method
