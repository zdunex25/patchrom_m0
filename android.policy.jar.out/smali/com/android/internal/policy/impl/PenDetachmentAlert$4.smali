.class Lcom/android/internal/policy/impl/PenDetachmentAlert$4;
.super Landroid/content/BroadcastReceiver;
.source "PenDetachmentAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PenDetachmentAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PenDetachmentAlert;)V
    .locals 0
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$4;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 408
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, action:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$4;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_detachment_alert"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 428
    const-string v2, "com.samsung.pen.INSERT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 429
    const-string v2, "penInsert"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 430
    .local v1, penInsert:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$4;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #setter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenInserted:Z
    invoke-static {v2, v1}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$602(Lcom/android/internal/policy/impl/PenDetachmentAlert;Z)Z

    .line 431
    const-string v2, "PenDetachmentAlert"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "received broadcast "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    if-eqz v1, :cond_1

    .line 434
    iget-object v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$4;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #setter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mDialogShowed:Z
    invoke-static {v2, v5}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$502(Lcom/android/internal/policy/impl/PenDetachmentAlert;Z)Z

    .line 435
    iget-object v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$4;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->stopPedometer()V

    .line 436
    iget-object v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$4;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenDetachmentAlertDialog:Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;

    if-eqz v2, :cond_0

    .line 437
    iget-object v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$4;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenDetachmentAlertDialog:Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->dismiss()V

    .line 438
    iget-object v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$4;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenDetachmentAlertDialog:Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;

    .line 440
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$4;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #calls: Lcom/android/internal/policy/impl/PenDetachmentAlert;->dismissTimer()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$800(Lcom/android/internal/policy/impl/PenDetachmentAlert;)V

    .line 441
    iget-object v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$4;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #setter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mIsDialogShowing:Z
    invoke-static {v2, v5}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$102(Lcom/android/internal/policy/impl/PenDetachmentAlert;Z)Z

    .line 442
    iget-object v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$4;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #setter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mAlertCount:I
    invoke-static {v2, v5}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$202(Lcom/android/internal/policy/impl/PenDetachmentAlert;I)I

    .line 463
    .end local v1           #penInsert:Z
    :cond_1
    :goto_0
    const-string v2, "com.android.PenMissingAlertDialog.DISMISSED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 464
    const-string v2, "PenDetachmentAlert"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "received broadcast "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$4;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #calls: Lcom/android/internal/policy/impl/PenDetachmentAlert;->dismissTimer()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$800(Lcom/android/internal/policy/impl/PenDetachmentAlert;)V

    .line 466
    iget-object v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$4;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #setter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mIsDialogShowing:Z
    invoke-static {v2, v5}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$102(Lcom/android/internal/policy/impl/PenDetachmentAlert;Z)Z

    .line 467
    iget-object v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$4;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #setter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mAlertCount:I
    invoke-static {v2, v5}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$202(Lcom/android/internal/policy/impl/PenDetachmentAlert;I)I

    .line 469
    :cond_2
    return-void

    .line 445
    :cond_3
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 446
    iget-object v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$4;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #setter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mIsScreenOn:Z
    invoke-static {v2, v5}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$902(Lcom/android/internal/policy/impl/PenDetachmentAlert;Z)Z

    .line 447
    const-string v2, "PenDetachmentAlert"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "received broadcast "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$4;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #getter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mIsDialogShowing:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$100(Lcom/android/internal/policy/impl/PenDetachmentAlert;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$4;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #getter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenInserted:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$600(Lcom/android/internal/policy/impl/PenDetachmentAlert;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 450
    iget-object v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$4;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #getter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$1000(Lcom/android/internal/policy/impl/PenDetachmentAlert;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$4;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #getter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$1000(Lcom/android/internal/policy/impl/PenDetachmentAlert;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x65

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 451
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$4;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #getter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mDialogShowed:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$500(Lcom/android/internal/policy/impl/PenDetachmentAlert;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$4;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #getter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenInserted:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$600(Lcom/android/internal/policy/impl/PenDetachmentAlert;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 452
    iget-object v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$4;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->startPedometer()V

    goto/16 :goto_0

    .line 455
    :cond_5
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 456
    iget-object v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$4;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #setter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mIsScreenOn:Z
    invoke-static {v2, v4}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$902(Lcom/android/internal/policy/impl/PenDetachmentAlert;Z)Z

    .line 457
    const-string v2, "PenDetachmentAlert"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "received broadcast "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$4;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->stopPedometer()V

    .line 459
    iget-object v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$4;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #calls: Lcom/android/internal/policy/impl/PenDetachmentAlert;->dismissTimer()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$800(Lcom/android/internal/policy/impl/PenDetachmentAlert;)V

    goto/16 :goto_0
.end method
