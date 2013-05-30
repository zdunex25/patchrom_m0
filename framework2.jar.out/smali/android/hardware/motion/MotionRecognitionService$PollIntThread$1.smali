.class Landroid/hardware/motion/MotionRecognitionService$PollIntThread$1;
.super Landroid/os/Handler;
.source "MotionRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/motion/MotionRecognitionService$PollIntThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/motion/MotionRecognitionService$PollIntThread;


# direct methods
.method constructor <init>(Landroid/hardware/motion/MotionRecognitionService$PollIntThread;)V
    .locals 0
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionService$PollIntThread$1;->this$1:Landroid/hardware/motion/MotionRecognitionService$PollIntThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/16 v7, 0x31

    const/16 v6, 0x30

    const/16 v5, 0x1e

    const/4 v4, 0x1

    .line 278
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v5, :cond_0

    .line 279
    const/4 v0, 0x0

    .line 282
    .local v0, ret_accint:I
    const-string v1, "MotionRecognitionService"

    const-string v2, "mReactiveAlert_Wakelock++  "

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$PollIntThread$1;->this$1:Landroid/hardware/motion/MotionRecognitionService$PollIntThread;

    iget-object v1, v1, Landroid/hardware/motion/MotionRecognitionService$PollIntThread;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mReactiveAlert_Wakelock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionService;->access$400(Landroid/hardware/motion/MotionRecognitionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 285
    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :goto_0
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$PollIntThread$1;->this$1:Landroid/hardware/motion/MotionRecognitionService$PollIntThread;

    iget-object v1, v1, Landroid/hardware/motion/MotionRecognitionService$PollIntThread;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v2, v1, Landroid/hardware/motion/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    monitor-enter v2

    .line 289
    :try_start_1
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$PollIntThread$1;->this$1:Landroid/hardware/motion/MotionRecognitionService$PollIntThread;

    iget-object v1, v1, Landroid/hardware/motion/MotionRecognitionService$PollIntThread;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    const/4 v3, 0x0

    #calls: Landroid/hardware/motion/MotionRecognitionService;->native_motionengine_poll_accint(I)I
    invoke-static {v1, v3}, Landroid/hardware/motion/MotionRecognitionService;->access$500(Landroid/hardware/motion/MotionRecognitionService;I)I

    move-result v0

    .line 290
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    const-string v1, "MotionRecognitionService"

    const-string v2, "mReactiveAlert_Wakelock--  "

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$PollIntThread$1;->this$1:Landroid/hardware/motion/MotionRecognitionService$PollIntThread;

    iget-object v1, v1, Landroid/hardware/motion/MotionRecognitionService$PollIntThread;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mReactiveAlert_Wakelock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionService;->access$400(Landroid/hardware/motion/MotionRecognitionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 293
    if-ne v0, v7, :cond_1

    .line 295
    const-string v1, "MotionRecognitionService"

    const-string v2, "skip poll motion_int  "

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    .end local v0           #ret_accint:I
    :cond_0
    :goto_1
    return-void

    .line 290
    .restart local v0       #ret_accint:I
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 299
    :cond_1
    const-string v1, "MotionRecognitionService"

    const-string v2, "native_motionengine_poll_accint++  "

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_2
    const-wide/16 v1, 0x64

    :try_start_3
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 305
    :goto_2
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$PollIntThread$1;->this$1:Landroid/hardware/motion/MotionRecognitionService$PollIntThread;

    iget-object v1, v1, Landroid/hardware/motion/MotionRecognitionService$PollIntThread;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v2, v1, Landroid/hardware/motion/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    monitor-enter v2

    .line 306
    :try_start_4
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$PollIntThread$1;->this$1:Landroid/hardware/motion/MotionRecognitionService$PollIntThread;

    iget-object v1, v1, Landroid/hardware/motion/MotionRecognitionService$PollIntThread;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    const/4 v3, 0x0

    #calls: Landroid/hardware/motion/MotionRecognitionService;->native_motionengine_poll_accint(I)I
    invoke-static {v1, v3}, Landroid/hardware/motion/MotionRecognitionService;->access$500(Landroid/hardware/motion/MotionRecognitionService;I)I

    move-result v0

    .line 307
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 312
    if-ne v0, v6, :cond_3

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$PollIntThread$1;->this$1:Landroid/hardware/motion/MotionRecognitionService$PollIntThread;

    iget-object v1, v1, Landroid/hardware/motion/MotionRecognitionService$PollIntThread;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-boolean v1, v1, Landroid/hardware/motion/MotionRecognitionService;->mEnableAccINT:Z

    if-eq v1, v4, :cond_2

    .line 314
    :cond_3
    const-string v1, "MotionRecognitionService"

    const-string v2, "native_motionengine_poll_accint--  "

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string v1, "MotionRecognitionService"

    const-string v2, "mReactiveAlert_Wakelock++  "

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$PollIntThread$1;->this$1:Landroid/hardware/motion/MotionRecognitionService$PollIntThread;

    iget-object v1, v1, Landroid/hardware/motion/MotionRecognitionService$PollIntThread;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mReactiveAlert_Wakelock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionService;->access$400(Landroid/hardware/motion/MotionRecognitionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 317
    if-ne v0, v7, :cond_5

    .line 320
    const-string v1, "MotionRecognitionService"

    const-string v2, " send reactive alert "

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$PollIntThread$1;->this$1:Landroid/hardware/motion/MotionRecognitionService$PollIntThread;

    iget-object v1, v1, Landroid/hardware/motion/MotionRecognitionService$PollIntThread;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 322
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$PollIntThread$1;->this$1:Landroid/hardware/motion/MotionRecognitionService$PollIntThread;

    iget-object v1, v1, Landroid/hardware/motion/MotionRecognitionService$PollIntThread;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    invoke-virtual {v1}, Landroid/hardware/motion/MotionRecognitionService;->disableAccINT()V

    .line 324
    const-wide/16 v1, 0x3e8

    :try_start_5
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 332
    :cond_4
    :goto_3
    const-string v1, "MotionRecognitionService"

    const-string v2, "mReactiveAlert_Wakelock--  "

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$PollIntThread$1;->this$1:Landroid/hardware/motion/MotionRecognitionService$PollIntThread;

    iget-object v1, v1, Landroid/hardware/motion/MotionRecognitionService$PollIntThread;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mReactiveAlert_Wakelock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionService;->access$400(Landroid/hardware/motion/MotionRecognitionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1

    .line 307
    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    .line 328
    :cond_5
    if-eq v0, v6, :cond_4

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$PollIntThread$1;->this$1:Landroid/hardware/motion/MotionRecognitionService$PollIntThread;

    iget-object v1, v1, Landroid/hardware/motion/MotionRecognitionService$PollIntThread;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-boolean v1, v1, Landroid/hardware/motion/MotionRecognitionService;->mEnableAccINT:Z

    if-ne v1, v4, :cond_4

    .line 330
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$PollIntThread$1;->this$1:Landroid/hardware/motion/MotionRecognitionService$PollIntThread;

    iget-object v1, v1, Landroid/hardware/motion/MotionRecognitionService$PollIntThread;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    invoke-virtual {v1}, Landroid/hardware/motion/MotionRecognitionService;->disableAccINT()V

    goto :goto_3

    .line 286
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 303
    :catch_1
    move-exception v1

    goto :goto_2

    .line 325
    :catch_2
    move-exception v1

    goto :goto_3
.end method
