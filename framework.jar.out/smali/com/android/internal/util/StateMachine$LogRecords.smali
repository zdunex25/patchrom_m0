.class Lcom/android/internal/util/StateMachine$LogRecords;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogRecords"
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I = 0x14


# instance fields
.field private mCount:I

.field private mLogRecords:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/internal/util/StateMachine$LogRec;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxSize:I

.field private mOldestIndex:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 563
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecords:Ljava/util/Vector;

    .line 564
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mMaxSize:I

    .line 565
    iput v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mOldestIndex:I

    .line 566
    iput v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mCount:I

    .line 572
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/util/StateMachine$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 559
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$LogRecords;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized add(Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V
    .locals 3
    .parameter "msg"
    .parameter "messageInfo"
    .parameter "state"
    .parameter "orgState"

    .prologue
    .line 633
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mCount:I

    .line 634
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecords:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget v2, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mMaxSize:I

    if-ge v1, v2, :cond_0

    .line 635
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecords:Ljava/util/Vector;

    new-instance v2, Lcom/android/internal/util/StateMachine$LogRec;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/android/internal/util/StateMachine$LogRec;-><init>(Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    :goto_0
    monitor-exit p0

    return-void

    .line 637
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecords:Ljava/util/Vector;

    iget v2, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mOldestIndex:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/StateMachine$LogRec;

    .line 638
    .local v0, pmi:Lcom/android/internal/util/StateMachine$LogRec;
    iget v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mOldestIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mOldestIndex:I

    .line 639
    iget v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mOldestIndex:I

    iget v2, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mMaxSize:I

    if-lt v1, v2, :cond_1

    .line 640
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mOldestIndex:I

    .line 642
    :cond_1
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/util/StateMachine$LogRec;->update(Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 633
    .end local v0           #pmi:Lcom/android/internal/util/StateMachine$LogRec;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized cleanup()V
    .locals 1

    .prologue
    .line 603
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecords:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    monitor-exit p0

    return-void

    .line 603
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized count()I
    .locals 1

    .prologue
    .line 596
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized get(I)Lcom/android/internal/util/StateMachine$LogRec;
    .locals 2
    .parameter "index"

    .prologue
    .line 612
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mOldestIndex:I

    add-int v0, v1, p1

    .line 613
    .local v0, nextIndex:I
    iget v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mMaxSize:I

    if-lt v0, v1, :cond_0

    .line 614
    iget v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mMaxSize:I

    sub-int/2addr v0, v1

    .line 616
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine$LogRecords;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lt v0, v1, :cond_1

    .line 617
    const/4 v1, 0x0

    .line 619
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecords:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/StateMachine$LogRec;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 612
    .end local v0           #nextIndex:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized setSize(I)V
    .locals 1
    .parameter "maxSize"

    .prologue
    .line 580
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mMaxSize:I

    .line 581
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mCount:I

    .line 582
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecords:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    monitor-exit p0

    return-void

    .line 580
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized size()I
    .locals 1

    .prologue
    .line 589
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecords:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
