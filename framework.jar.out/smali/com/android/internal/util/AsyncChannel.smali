.class public Lcom/android/internal/util/AsyncChannel;
.super Ljava/lang/Object;
.source "AsyncChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/AsyncChannel$1;,
        Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;,
        Lcom/android/internal/util/AsyncChannel$SyncMessenger;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x11000

.field public static final CMD_CHANNEL_DISCONNECT:I = 0x11003

.field public static final CMD_CHANNEL_DISCONNECTED:I = 0x11004

.field public static final CMD_CHANNEL_FULLY_CONNECTED:I = 0x11002

.field public static final CMD_CHANNEL_FULL_CONNECTION:I = 0x11001

.field public static final CMD_CHANNEL_HALF_CONNECTED:I = 0x11000

.field private static final CMD_TO_STRING_COUNT:I = 0x5

.field private static final DBG:Z = false

.field public static final STATUS_BINDING_UNSUCCESSFUL:I = 0x1

.field public static final STATUS_FULL_CONNECTION_REFUSED_ALREADY_CONNECTED:I = 0x3

.field public static final STATUS_SEND_UNSUCCESSFUL:I = 0x2

.field public static final STATUS_SUCCESSFUL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AsyncChannel"

.field private static sCmdToString:[Ljava/lang/String;


# instance fields
.field private mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

.field private mDstMessenger:Landroid/os/Messenger;

.field private mSrcContext:Landroid/content/Context;

.field private mSrcHandler:Landroid/os/Handler;

.field private mSrcMessenger:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 154
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/internal/util/AsyncChannel;->sCmdToString:[Ljava/lang/String;

    .line 156
    sget-object v0, Lcom/android/internal/util/AsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CMD_CHANNEL_HALF_CONNECTED"

    aput-object v2, v0, v1

    .line 157
    sget-object v0, Lcom/android/internal/util/AsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "CMD_CHANNEL_FULL_CONNECTION"

    aput-object v2, v0, v1

    .line 158
    sget-object v0, Lcom/android/internal/util/AsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "CMD_CHANNEL_FULLY_CONNECTED"

    aput-object v2, v0, v1

    .line 159
    sget-object v0, Lcom/android/internal/util/AsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "CMD_CHANNEL_DISCONNECT"

    aput-object v2, v0, v1

    .line 160
    sget-object v0, Lcom/android/internal/util/AsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "CMD_CHANNEL_DISCONNECTED"

    aput-object v2, v0, v1

    .line 161
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/util/AsyncChannel;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/internal/util/AsyncChannel;->replyHalfConnected(I)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/util/AsyncChannel;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/internal/util/AsyncChannel;->replyDisconnected(I)V

    return-void
.end method

.method protected static cmdToString(I)Ljava/lang/String;
    .locals 1
    .parameter "cmd"

    .prologue
    .line 163
    const v0, 0x11000

    sub-int/2addr p0, v0

    .line 164
    if-ltz p0, :cond_0

    sget-object v0, Lcom/android/internal/util/AsyncChannel;->sCmdToString:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 165
    sget-object v0, Lcom/android/internal/util/AsyncChannel;->sCmdToString:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 167
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 878
    const-string v0, "AsyncChannel"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    return-void
.end method

.method private replyDisconnected(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 845
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    const v2, 0x11004

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 846
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 847
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 848
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 849
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 850
    return-void
.end method

.method private replyHalfConnected(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 831
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    const v2, 0x11000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 832
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 833
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 834
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 835
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 836
    return-void
.end method


# virtual methods
.method public connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 1
    .parameter "srcContext"
    .parameter "srcHandler"
    .parameter "dstHandler"

    .prologue
    .line 412
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 413
    return-void
.end method

.method public connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V
    .locals 1
    .parameter "srcContext"
    .parameter "srcHandler"
    .parameter "dstMessenger"

    .prologue
    .line 371
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/AsyncChannel;->connected(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 374
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/util/AsyncChannel;->replyHalfConnected(I)V

    .line 377
    return-void
.end method

.method public connect(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Class;)V
    .locals 2
    .parameter "srcContext"
    .parameter "srcHandler"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 353
    .local p3, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method public connect(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "srcContext"
    .parameter "srcHandler"
    .parameter "dstPackageName"
    .parameter "dstClassName"

    .prologue
    .line 335
    new-instance v0, Lcom/android/internal/util/AsyncChannel$1ConnectAsync;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/util/AsyncChannel$1ConnectAsync;-><init>(Lcom/android/internal/util/AsyncChannel;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .local v0, ca:Lcom/android/internal/util/AsyncChannel$1ConnectAsync;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 339
    return-void
.end method

.method public connect(Lcom/android/internal/util/AsyncService;Landroid/os/Messenger;)V
    .locals 1
    .parameter "srcAsyncService"
    .parameter "dstMessenger"

    .prologue
    .line 426
    invoke-virtual {p1}, Lcom/android/internal/util/AsyncService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 427
    return-void
.end method

.method public connectSrcHandlerToPackageSync(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "srcContext"
    .parameter "srcHandler"
    .parameter "dstPackageName"
    .parameter "dstClassName"

    .prologue
    const/4 v2, 0x1

    .line 220
    new-instance v3, Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    invoke-direct {v3, p0}, Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;-><init>(Lcom/android/internal/util/AsyncChannel;)V

    iput-object v3, p0, Lcom/android/internal/util/AsyncChannel;->mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    .line 223
    iput-object p1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcContext:Landroid/content/Context;

    .line 224
    iput-object p2, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    .line 225
    new-instance v3, Landroid/os/Messenger;

    invoke-direct {v3, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/internal/util/AsyncChannel;->mSrcMessenger:Landroid/os/Messenger;

    .line 232
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    .line 235
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p3, p4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    iget-object v3, p0, Lcom/android/internal/util/AsyncChannel;->mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    invoke-virtual {p1, v0, v3, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 239
    .local v1, result:Z
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :cond_0
    return v2
.end method

.method public connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I
    .locals 1
    .parameter "srcContext"
    .parameter "srcHandler"
    .parameter "dstHandler"

    .prologue
    .line 273
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    move-result v0

    return v0
.end method

.method public connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I
    .locals 1
    .parameter "srcContext"
    .parameter "srcHandler"
    .parameter "dstMessenger"

    .prologue
    .line 256
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/AsyncChannel;->connected(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public connected(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V
    .locals 2
    .parameter "srcContext"
    .parameter "srcHandler"
    .parameter "dstMessenger"

    .prologue
    .line 393
    iput-object p1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcContext:Landroid/content/Context;

    .line 394
    iput-object p2, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    .line 395
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mSrcMessenger:Landroid/os/Messenger;

    .line 398
    iput-object p3, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    .line 401
    return-void
.end method

.method public disconnect()V
    .locals 3

    .prologue
    .line 444
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/util/AsyncChannel;->mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 450
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 451
    .local v0, msg:Landroid/os/Message;
    const v1, 0x11004

    iput v1, v0, Landroid/os/Message;->what:I

    .line 452
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 453
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 458
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/util/AsyncChannel;->replyDisconnected(I)V

    .line 460
    :cond_1
    return-void

    .line 454
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public disconnected()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 433
    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mSrcContext:Landroid/content/Context;

    .line 434
    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    .line 435
    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mSrcMessenger:Landroid/os/Messenger;

    .line 436
    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    .line 437
    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    .line 438
    return-void
.end method

.method public fullyConnectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I
    .locals 3
    .parameter "srcContext"
    .parameter "srcHandler"
    .parameter "dstHandler"

    .prologue
    .line 287
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I

    move-result v1

    .line 288
    .local v1, status:I
    if-nez v1, :cond_0

    .line 289
    const v2, 0x11001

    invoke-virtual {p0, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 290
    .local v0, response:Landroid/os/Message;
    iget v1, v0, Landroid/os/Message;->arg1:I

    .line 292
    .end local v0           #response:Landroid/os/Message;
    :cond_0
    return v1
.end method

.method public replyToMessage(Landroid/os/Message;I)V
    .locals 1
    .parameter "srcMsg"
    .parameter "what"

    .prologue
    .line 568
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 569
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 570
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 571
    return-void
.end method

.method public replyToMessage(Landroid/os/Message;II)V
    .locals 1
    .parameter "srcMsg"
    .parameter "what"
    .parameter "arg1"

    .prologue
    .line 581
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 582
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 583
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 584
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 585
    return-void
.end method

.method public replyToMessage(Landroid/os/Message;III)V
    .locals 1
    .parameter "srcMsg"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 596
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 597
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 598
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 599
    iput p4, v0, Landroid/os/Message;->arg2:I

    .line 600
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 601
    return-void
.end method

.method public replyToMessage(Landroid/os/Message;IIILjava/lang/Object;)V
    .locals 1
    .parameter "srcMsg"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 613
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 614
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 615
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 616
    iput p4, v0, Landroid/os/Message;->arg2:I

    .line 617
    iput-object p5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 618
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 619
    return-void
.end method

.method public replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    .locals 1
    .parameter "srcMsg"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 629
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 630
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 631
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 632
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 633
    return-void
.end method

.method public replyToMessage(Landroid/os/Message;Landroid/os/Message;)V
    .locals 3
    .parameter "srcMsg"
    .parameter "dstMsg"

    .prologue
    .line 553
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcMessenger:Landroid/os/Messenger;

    iput-object v1, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 554
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    :goto_0
    return-void

    .line 555
    :catch_0
    move-exception v0

    .line 556
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TODO: handle replyToMessage RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/AsyncChannel;->log(Ljava/lang/String;)V

    .line 557
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendMessage(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 482
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 483
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 484
    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 485
    return-void
.end method

.method public sendMessage(II)V
    .locals 1
    .parameter "what"
    .parameter "arg1"

    .prologue
    .line 494
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 495
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 496
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 497
    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 498
    return-void
.end method

.method public sendMessage(III)V
    .locals 1
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 508
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 509
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 510
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 511
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 512
    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 513
    return-void
.end method

.method public sendMessage(IIILjava/lang/Object;)V
    .locals 1
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 524
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 525
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 526
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 527
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 528
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 529
    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 530
    return-void
.end method

.method public sendMessage(ILjava/lang/Object;)V
    .locals 1
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 539
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 540
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 541
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 542
    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 543
    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 468
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcMessenger:Landroid/os/Messenger;

    iput-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 470
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :goto_0
    return-void

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/internal/util/AsyncChannel;->replyDisconnected(I)V

    goto :goto_0
.end method

.method public sendMessageSynchronously(I)Landroid/os/Message;
    .locals 2
    .parameter "what"

    .prologue
    .line 653
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 654
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 655
    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    .line 656
    .local v1, resultMsg:Landroid/os/Message;
    return-object v1
.end method

.method public sendMessageSynchronously(II)Landroid/os/Message;
    .locals 2
    .parameter "what"
    .parameter "arg1"

    .prologue
    .line 667
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 668
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 669
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 670
    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    .line 671
    .local v1, resultMsg:Landroid/os/Message;
    return-object v1
.end method

.method public sendMessageSynchronously(III)Landroid/os/Message;
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 683
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 684
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 685
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 686
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 687
    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    .line 688
    .local v1, resultMsg:Landroid/os/Message;
    return-object v1
.end method

.method public sendMessageSynchronously(IIILjava/lang/Object;)Landroid/os/Message;
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 701
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 702
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 703
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 704
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 705
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 706
    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    .line 707
    .local v1, resultMsg:Landroid/os/Message;
    return-object v1
.end method

.method public sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;
    .locals 2
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 718
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 719
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 720
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 721
    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    .line 722
    .local v1, resultMsg:Landroid/os/Message;
    return-object v1
.end method

.method public sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;
    .locals 2
    .parameter "msg"

    .prologue
    .line 642
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    #calls: Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sendMessageSynchronously(Landroid/os/Messenger;Landroid/os/Message;)Landroid/os/Message;
    invoke-static {v1, p1}, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->access$100(Landroid/os/Messenger;Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 643
    .local v0, resultMsg:Landroid/os/Message;
    return-object v0
.end method
