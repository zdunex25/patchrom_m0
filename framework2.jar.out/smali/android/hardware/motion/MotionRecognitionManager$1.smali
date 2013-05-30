.class Landroid/hardware/motion/MotionRecognitionManager$1;
.super Ljava/lang/Object;
.source "MotionRecognitionManager.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionManager;


# direct methods
.method constructor <init>(Landroid/hardware/motion/MotionRecognitionManager;)V
    .locals 0
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionManager$1;->this$0:Landroid/hardware/motion/MotionRecognitionManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    .line 364
    iget-object v4, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 365
    .local v4, scontext:Landroid/hardware/scontext/SContext;
    new-instance v3, Landroid/hardware/motion/MREvent;

    invoke-direct {v3}, Landroid/hardware/motion/MREvent;-><init>()V

    .line 367
    .local v3, mrevent:Landroid/hardware/motion/MREvent;
    invoke-virtual {v4}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 369
    :pswitch_0
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getMovementContext()Landroid/hardware/scontext/SContextMovement;

    move-result-object v0

    .line 370
    .local v0, context:Landroid/hardware/scontext/SContextMovement;
    invoke-virtual {v0}, Landroid/hardware/scontext/SContextMovement;->getAction()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 371
    const/16 v6, 0x43

    invoke-virtual {v3, v6}, Landroid/hardware/motion/MREvent;->setMotion(I)V

    .line 372
    const-string v6, "MotionRecognitionManager"

    const-string v7, "mySContextMotionListener : Send Smart alert event"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionManager$1;->this$0:Landroid/hardware/motion/MotionRecognitionManager;

    #getter for: Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;
    invoke-static {v6}, Landroid/hardware/motion/MotionRecognitionManager;->access$000(Landroid/hardware/motion/MotionRecognitionManager;)Ljava/util/ArrayList;

    move-result-object v7

    monitor-enter v7

    .line 375
    :try_start_0
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionManager$1;->this$0:Landroid/hardware/motion/MotionRecognitionManager;

    #getter for: Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;
    invoke-static {v6}, Landroid/hardware/motion/MotionRecognitionManager;->access$000(Landroid/hardware/motion/MotionRecognitionManager;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 376
    .local v5, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_1

    .line 377
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionManager$1;->this$0:Landroid/hardware/motion/MotionRecognitionManager;

    #getter for: Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;
    invoke-static {v6}, Landroid/hardware/motion/MotionRecognitionManager;->access$000(Landroid/hardware/motion/MotionRecognitionManager;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    .line 378
    .local v2, l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v2, v3}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->motionCallback(Landroid/hardware/motion/MREvent;)V

    .line 376
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 380
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :cond_1
    monitor-exit v7

    goto :goto_0

    .end local v1           #i:I
    .end local v5           #size:I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 367
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
